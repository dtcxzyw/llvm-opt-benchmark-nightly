Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example_middleware?download=true
inline.NumInlined: 11596
inline.NumDeleted: 4423
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN4crow6Router14handle_initialERNS_7requestERNS_8responseE:_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i356: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i354, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i355
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i352, i64 noundef 80) #41
  %.not.i.i.i357 = icmp eq ptr %i.sb, null
  br i1 %.not.i.i.i357, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i358, label %.lr.ph.i.i.i351, !llvm.loop !3

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i358: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i356, %_ZNSt14_Function_baseD2Ev.exit2.i252
  %i.so = load ptr, ptr %i.ra, align 8, !tbaa !448
  %i.sp = load i64, ptr %i.rc, align 8, !tbaa !449
  %i.sq = shl i64 %i.sp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.so, i8 0, i64 %i.sq, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rd, i8 0, i64 16, i1 false)
  %i.sr = load ptr, ptr %i.ra, align 8, !tbaa !448 ; 2 uses
  %i.ss = icmp eq ptr %i.sr, %i.rb
  br i1 %i.ss, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit361, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i358
  %i.st = load i64, ptr %i.rc, align 8, !tbaa !449
  %i.su = shl i64 %i.st, 3
  call void @_ZdlPvm(ptr noundef %i.sr, i64 noundef %i.su) #41
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit361

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit361: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i358, %bb.cc
  %i.sv = load ptr, ptr %i.qx, align 8, !tbaa !92 ; 2 uses
  %i.sw = icmp eq ptr %i.sv, %i.qy
  br i1 %i.sw, label %_ZN4crow8responseD2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i253: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit361
  %i.sx = load i64, ptr %i.qy, align 8, !tbaa !93
  %i.sy = add i64 %i.sx, 1
  call void @_ZdlPvm(ptr noundef %i.sv, i64 noundef %i.sy) #41
  br label %_ZN4crow8responseD2Ev.exit256

_ZN4crow8responseD2Ev.exit256:                    ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit361, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i253
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #40
  invoke void @_ZN4crow8response3endEv(ptr noundef nonnull align 8 dereferenceable(352) %3)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.invoke
  store i8 %i.f, ptr %i.r, align 8, !tbaa !953
  br label %bb.cd

bb.cd:                                            ; preds = %.sink.split, %_ZN4crow8responseD2Ev.exit256
  %i.sz = load ptr, ptr %10, align 8, !tbaa !92   ; 2 uses
  %i.ta = icmp eq ptr %i.sz, %i.fd
  br i1 %i.ta, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257: ; preds = %bb.cd
  %i.tb = load i64, ptr %i.fd, align 8, !tbaa !93
  %i.tc = add i64 %i.tb, 1
  call void @_ZdlPvm(ptr noundef %i.sz, i64 noundef %i.tc) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %.critedge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159
  %.pn124.pn.pn = phi { ptr, i32 } [ %.pn124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ], [ %.pn121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185 ], [ %.pn117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ], [ %.pn113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237 ], [ %.pn111, %bb.bw ], [ %i.ly, %bb.ax ], [ %.pn121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186 ], [ %.pn113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236 ], [ %lpad.loopexit.split-lp610, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.td = load ptr, ptr %10, align 8, !tbaa !92   ; 2 uses
  %i.te = icmp eq ptr %i.td, %i.fd
  br i1 %i.te, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188
  %i.tf = load i64, ptr %i.fd, align 8, !tbaa !93
  %i.tg = add i64 %i.tf, 1
  call void @_ZdlPvm(ptr noundef %i.td, i64 noundef %i.tg) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.dy

bb.ce:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #40
  %i.th = sext i8 %i.f to i64                     ; 2 uses
  %i.ti = getelementptr inbounds nuw [104 x i8], ptr %1, i64 %i.th
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 64 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  invoke void @_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"struct.crow::routing_handle_result") align 8 %22, ptr noundef nonnull align 8 dereferenceable(80) %i.tj, ptr noundef nonnull align 8 dereferenceable(32) %i.tk, ptr noundef nonnull align 8 dereferenceable(80) %i.tj, i64 noundef 0, ptr noundef null, ptr noundef null)
          to label %_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit264 unwind label %bb.ch

_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit264: ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(137) %i.g, ptr noundef nonnull align 8 dereferenceable(137) %22, i64 16, i1 false)
  %i.tl = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.tm = load ptr, ptr %i.i, align 8, !tbaa !880 ; 3 uses
  %i.tn = load ptr, ptr %i.j, align 8, !tbaa !881
  %i.to = load <2 x ptr>, ptr %i.tl, align 8, !tbaa !955
  store <2 x ptr> %i.to, ptr %i.i, align 8, !tbaa !955
  %i.tp = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !881
  store ptr %i.tq, ptr %i.j, align 8, !tbaa !881
  %.not.i.i.i.i.i.i265 = icmp eq ptr %i.tm, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tl, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i265, label %_ZN4crow21routing_handle_resultaSEOS0_.exit266, label %bb.cf

bb.cf:                                            ; preds = %_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit264
  %i.tr = ptrtoint ptr %i.tn to i64
  %i.ts = ptrtoint ptr %i.tm to i64
  %i.tt = sub i64 %i.tr, %i.ts
  call void @_ZdlPvm(ptr noundef nonnull %i.tm, i64 noundef %i.tt) #41
  br label %_ZN4crow21routing_handle_resultaSEOS0_.exit266

_ZN4crow21routing_handle_resultaSEOS0_.exit266:   ; preds = %_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit264, %bb.cf
  %i.tu = getelementptr inbounds nuw i8, ptr %22, i64 40
  %i.tv = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4crow14routing_paramsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.k, ptr noundef nonnull align 8 dereferenceable(96) %i.tu) #40 ; 0 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %22, i64 136
  %i.tx = load i8, ptr %i.tw, align 8, !tbaa !953
  store i8 %i.tx, ptr %i.r, align 8, !tbaa !953
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %22) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  %i.ty = load i64, ptr %i.h, align 8, !tbaa !951
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
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  br label %bb.dy

bb.ci:                                            ; preds = %.preheader, %bb.cg
  %.0.idx398 = phi i64 [ 40, %.preheader ], [ %.0.add, %bb.cg ] ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.0.idx398
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #40
  %i.ub = getelementptr inbounds nuw i8, ptr %.0.ptr, i64 24 ; 2 uses
  invoke void @_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"struct.crow::routing_handle_result") align 8 %23, ptr noundef nonnull align 8 dereferenceable(80) %i.ub, ptr noundef nonnull align 8 dereferenceable(32) %i.tk, ptr noundef nonnull align 8 dereferenceable(80) %i.ub, i64 noundef 0, ptr noundef null, ptr noundef null)
          to label %_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit268 unwind label %bb.cy

_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit268: ; preds = %bb.ci
  %i.uc = load i64, ptr %i.tz, align 8, !tbaa !951
  %.not100 = icmp eq i64 %i.uc, 0
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %23) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40
  br i1 %.not100, label %bb.cg, label %bb.cj

bb.cj:                                            ; preds = %_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit268
  store i32 405, ptr %3, align 8, !tbaa !447
  store i8 1, ptr %i.g, align 8, !tbaa !952
  %i.ud = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.ue = icmp slt i32 %i.ud, 1
  br i1 %i.ue, label %bb.ck, label %.critedge

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #40
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %24)
          to label %bb.cl unwind label %bb.da

bb.cl:                                            ; preds = %bb.ck
  %i.uf = getelementptr inbounds nuw i8, ptr %24, i64 376 ; 6 uses
  store i32 0, ptr %i.uf, align 8, !tbaa !214
  %i.ug = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %.not.i271 = icmp sgt i32 %i.ug, 0
  br i1 %.not.i271, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.uh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef nonnull @.str.360, i64 noundef 20)
          to label %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit unwind label %bb.db ; 0 uses

_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit:           ; preds = %bb.cm
  %.pre451 = load i32, ptr %i.uf, align 8, !tbaa !214
  %.pre452 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.ui = icmp slt i32 %.pre451, %.pre452
  br i1 %i.ui, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.cn

bb.cn:                                            ; preds = %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit
  %i.uj = load ptr, ptr %i.tk, align 8, !tbaa !92
  %i.uk = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !94
  %i.um = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef %i.uj, i64 noundef %i.ul)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit275 unwind label %bb.db ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit275: ; preds = %bb.cn
  %.pre453 = load i32, ptr %i.uf, align 8, !tbaa !214
  %.pre454 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.un = icmp slt i32 %.pre453, %.pre454
  br i1 %i.un, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.co

bb.co:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit275
  %i.uo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef nonnull @.str.361, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.db ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.cl, %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit275, %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !2000)
  %i.up = icmp slt i8 %i.f, 34
  br i1 %i.up, label %bb.cp, label %bb.ct, !prof !470

bb.cp:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.uq = and i64 %i.th, 4294967295
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.uq
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !461, !noalias !2000 ; 4 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  store ptr %i.ut, ptr %25, align 8, !tbaa !88, !alias.scope !2000
  %29 = icmp eq ptr %i.us, null
  br i1 %29, label %.noexc.i284, label %30

.noexc.i284:                                      ; preds = %bb.cp
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.236) #39
          to label %.noexc285 unwind label %bb.dc

.noexc285:                                        ; preds = %.noexc.i284
  unreachable

30:                                               ; preds = %bb.cp
  %31 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.us) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2000
  store i64 %31, ptr %i.a, align 8, !tbaa !90, !noalias !2000
  %32 = icmp ugt i64 %31, 15
  br i1 %32, label %.noexc.i.i279, label %._crit_edge.i.i.i278

.noexc.i.i279:                                    ; preds = %30
  %i.uu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc280 unwind label %bb.dc ; 2 uses

.noexc280:                                        ; preds = %.noexc.i.i279
  store ptr %i.uu, ptr %25, align 8, !tbaa !92, !alias.scope !2000
  %i.uv = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !2000
  store i64 %i.uv, ptr %i.ut, align 8, !tbaa !93, !alias.scope !2000
  br label %._crit_edge.i.i.i278

._crit_edge.i.i.i278:                             ; preds = %.noexc280, %30
  %i.uw = phi ptr [ %i.uu, %.noexc280 ], [ %i.ut, %30 ] ; 2 uses
  switch i64 %31, label %bb.cr [
    i64 1, label %bb.cq
    i64 0, label %bb.cs
  ]

bb.cq:                                            ; preds = %._crit_edge.i.i.i278
  %i.ux = load i8, ptr %i.us, align 1, !tbaa !93
  store i8 %i.ux, ptr %i.uw, align 1, !tbaa !93
  br label %bb.cs

bb.cr:                                            ; preds = %._crit_edge.i.i.i278
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uw, ptr nonnull align 1 %i.us, i64 %31, i1 false)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %._crit_edge.i.i.i278
  %i.uy = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !2000 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.uy, ptr %i.uz, align 8, !tbaa !94, !alias.scope !2000
  %i.va = load ptr, ptr %25, align 8, !tbaa !92, !alias.scope !2000
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 %i.uy
  store i8 0, ptr %i.vb, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2000
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit282

bb.ct:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !2000
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.363, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc281 unwind label %bb.dc

.noexc281:                                        ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !2000
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit282

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit282: ; preds = %.noexc281, %bb.cs
  %i.vc = load i32, ptr %i.uf, align 8, !tbaa !214
  %i.vd = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %.not.i283 = icmp slt i32 %i.vc, %i.vd
  br i1 %.not.i283, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit282
  %i.ve = load ptr, ptr %25, align 8, !tbaa !92
  %i.vf = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !94
  %i.vh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef %i.ve, i64 noundef %i.vg)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit285 unwind label %bb.dd ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit285: ; preds = %bb.cu
  %.pre455 = load i32, ptr %i.uf, align 8, !tbaa !214
  %.pre456 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.vi = icmp slt i32 %.pre455, %.pre456
  br i1 %i.vi, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit, label %bb.cv

bb.cv:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit285
  %i.vj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef nonnull @.str.362, i64 noundef 2)
          to label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit unwind label %bb.dd ; 0 uses

_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit:            ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit282, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit285, %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #40
  invoke void @_ZN4crow6Router9get_errorB5cxx11ERKNS_21routing_handle_resultE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(3656) %1, ptr noundef nonnull align 8 dereferenceable(137) %i.g)
          to label %bb.cw unwind label %bb.de

bb.cw:                                            ; preds = %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit
  %i.vk = load i32, ptr %i.uf, align 8, !tbaa !214
  %i.vl = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %.not.i288 = icmp slt i32 %i.vk, %i.vl
  br i1 %.not.i288, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit290, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.vm = load ptr, ptr %26, align 8, !tbaa !92
  %i.vn = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.vo = load i64, ptr %i.vn, align 8, !tbaa !94
  %i.vp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %24, ptr noundef %i.vm, i64 noundef %i.vo)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit290 unwind label %bb.df ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit290: ; preds = %bb.cw, %bb.cx
  %i.vq = load ptr, ptr %26, align 8, !tbaa !92   ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.vs = icmp eq ptr %i.vq, %i.vr
  br i1 %i.vs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit290
  %i.vt = load i64, ptr %i.vr, align 8, !tbaa !93
  %i.vu = add i64 %i.vt, 1
  call void @_ZdlPvm(ptr noundef %i.vq, i64 noundef %i.vu) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit290, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #40
  %i.vv = load ptr, ptr %25, align 8, !tbaa !92   ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.vx = icmp eq ptr %i.vv, %i.vw
  br i1 %i.vx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293
  %i.vy = load i64, ptr %i.vw, align 8, !tbaa !93
  %i.vz = add i64 %i.vy, 1
  call void @_ZdlPvm(ptr noundef %i.vv, i64 noundef %i.vz) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294
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
  %i.wi = load ptr, ptr %26, align 8, !tbaa !92   ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.wk = icmp eq ptr %i.wi, %i.wj
  br i1 %i.wk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297: ; preds = %bb.df
  %i.wl = load i64, ptr %i.wj, align 8, !tbaa !93
  %i.wm = add i64 %i.wl, 1
  call void @_ZdlPvm(ptr noundef %i.wi, i64 noundef %i.wm) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297, %bb.de
  %.pn = phi { ptr, i32 } [ %i.wg, %bb.de ], [ %i.wh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297 ], [ %i.wh, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #40
  br label %bb.dg

bb.dg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, %bb.dd
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299 ], [ %i.wf, %bb.dd ] ; 2 uses
  %i.wn = load ptr, ptr %25, align 8, !tbaa !92   ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.wp = icmp eq ptr %i.wn, %i.wo
  br i1 %i.wp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300: ; preds = %bb.dg
  %i.wq = load i64, ptr %i.wo, align 8, !tbaa !93
  %i.wr = add i64 %i.wq, 1
  call void @_ZdlPvm(ptr noundef %i.wn, i64 noundef %i.wr) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300, %bb.dc
  %.pn.pn.pn = phi { ptr, i32 } [ %i.we, %bb.dc ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300 ], [ %.pn.pn, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #40
  br label %bb.dh

bb.dh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, %bb.db
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302 ], [ %i.wd, %bb.db ]
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %24) #40
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.da
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.dh ], [ %i.wc, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #40
  br label %bb.dy

bb.dj:                                            ; preds = %bb.cg
  store i32 404, ptr %3, align 8, !tbaa !447
  store i8 1, ptr %i.g, align 8, !tbaa !952
  %i.ws = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.wt = icmp slt i32 %i.ws, 1
  br i1 %i.wt, label %bb.dk, label %.critedge

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #40
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %27)
          to label %bb.dl unwind label %bb.dr

bb.dl:                                            ; preds = %bb.dk
  %i.wu = getelementptr inbounds nuw i8, ptr %27, i64 376 ; 4 uses
  store i32 0, ptr %i.wu, align 8, !tbaa !214
  %i.wv = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %.not.i305 = icmp sgt i32 %i.wv, 0
  br i1 %.not.i305, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit313, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ww = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %27, ptr noundef nonnull @.str.355, i64 noundef 19)
          to label %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit307 unwind label %bb.ds ; 0 uses

_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit307:        ; preds = %bb.dm
  %.pre457 = load i32, ptr %i.wu, align 8, !tbaa !214
  %.pre458 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.wx = icmp slt i32 %.pre457, %.pre458
  br i1 %i.wx, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit313, label %bb.dn

bb.dn:                                            ; preds = %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit307
  %i.wy = load ptr, ptr %i.tk, align 8, !tbaa !92
  %i.wz = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !94
  %i.xb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %27, ptr noundef %i.wy, i64 noundef %i.xa)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit310 unwind label %bb.ds ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit310: ; preds = %bb.dn
  %.pre459 = load i32, ptr %i.wu, align 8, !tbaa !214
  %.pre460 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.xc = icmp slt i32 %.pre459, %.pre460
  br i1 %i.xc, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit313, label %bb.do

bb.do:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit310
  %i.xd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %27, ptr noundef nonnull @.str.362, i64 noundef 2)
          to label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit313 unwind label %bb.ds ; 0 uses

_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit313:         ; preds = %bb.dl, %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit307, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit310, %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #40
  invoke void @_ZN4crow6Router9get_errorB5cxx11ERKNS_21routing_handle_resultE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(3656) %1, ptr noundef nonnull align 8 dereferenceable(137) %i.g)
          to label %bb.dp unwind label %bb.dt

bb.dp:                                            ; preds = %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit313
  %i.xe = load i32, ptr %i.wu, align 8, !tbaa !214
  %i.xf = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %.not.i314 = icmp slt i32 %i.xe, %i.xf
  br i1 %.not.i314, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.xg = load ptr, ptr %28, align 8, !tbaa !92
  %i.xh = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.xi = load i64, ptr %i.xh, align 8, !tbaa !94
  %i.xj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %27, ptr noundef %i.xg, i64 noundef %i.xi)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316 unwind label %bb.du ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316: ; preds = %bb.dp, %bb.dq
  %i.xk = load ptr, ptr %28, align 8, !tbaa !92   ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.xm = icmp eq ptr %i.xk, %i.xl
  br i1 %i.xm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316
  %i.xn = load i64, ptr %i.xl, align 8, !tbaa !93
  %i.xo = add i64 %i.xn, 1
  call void @_ZdlPvm(ptr noundef %i.xk, i64 noundef %i.xo) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317
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

bb.dt:                                            ; preds = %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit313
  %i.xr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322

bb.du:                                            ; preds = %bb.dq
  %i.xs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xt = load ptr, ptr %28, align 8, !tbaa !92   ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.xv = icmp eq ptr %i.xt, %i.xu
  br i1 %i.xv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320: ; preds = %bb.du
  %i.xw = load i64, ptr %i.xu, align 8, !tbaa !93
  %i.xx = add i64 %i.xw, 1
  call void @_ZdlPvm(ptr noundef %i.xt, i64 noundef %i.xx) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320, %bb.dt
  %.pn107 = phi { ptr, i32 } [ %i.xr, %bb.dt ], [ %i.xs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320 ], [ %i.xs, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #40
  br label %bb.dv

bb.dv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, %bb.ds
  %.pn107.pn = phi { ptr, i32 } [ %.pn107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322 ], [ %i.xq, %bb.ds ]
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %27) #40
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.dr
  %.pn107.pn.pn = phi { ptr, i32 } [ %.pn107.pn, %bb.dv ], [ %i.xp, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #40
  br label %bb.dy

bb.dx:                                            ; preds = %_ZN4crow21routing_handle_resultaSEOS0_.exit266
  store i8 %i.f, ptr %i.r, align 8, !tbaa !953
  br label %.critedge

.critedge:                                        ; preds = %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, %bb.ac, %_ZNSt6vectorImSaImEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, %bb.dx, %_ZN4crow8responseD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, %bb.dj
  ret void

bb.dy:                                            ; preds = %bb.cy, %bb.cz, %bb.di, %bb.dw, %bb.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, %bb.v, %bb.s, %bb.r
  %.pn133 = phi { ptr, i32 } [ %i.wa, %bb.cy ], [ %i.wb, %bb.cz ], [ %.pn131, %bb.v ], [ %i.cx, %bb.s ], [ %i.cw, %bb.r ], [ %.pn124.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262 ], [ %.pn107.pn.pn, %bb.dw ], [ %i.ua, %bb.ch ], [ %.pn.pn.pn.pn.pn, %bb.di ]
  call void @_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #40
  br label %bb.dz

bb.dz:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit142, %bb.dy
end_hunk_0
begin_hunk_1_@_ZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS3_S4_S5_EE6handleEv:_ZN4crow6detail7contextIJ13RequestLogger18SecretContentGuard13RequestAppendEEaSEOS5_.exit
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !2160
  br label %.body

bb.y:                                             ; preds = %bb.w
  %i.gv = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !2160 ; 2 uses
  store ptr %i.gv, ptr %4, align 8, !tbaa !176, !noalias !2160
  %i.gw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8, !noalias !2160
  %i.gx = getelementptr i8, ptr %i.gv, i64 -24
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = getelementptr inbounds i8, ptr %4, i64 %i.gy
  store ptr %i.gw, ptr %i.gz, align 8, !tbaa !176, !noalias !2160
  %i.ha = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8, !noalias !2160
  store ptr %i.ha, ptr %i.gn, align 8, !tbaa !176, !noalias !2160
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.hb, align 8, !tbaa !176, !noalias !2160
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !92, !noalias !2160 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.hf = icmp eq ptr %i.hd, %i.he
  br i1 %i.hf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.y
  %i.hg = load i64, ptr %i.he, align 8, !tbaa !93, !noalias !2160
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hh) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.hb, align 8, !tbaa !176, !noalias !2160
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hi) #40
  %i.hj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !2160 ; 2 uses
  store ptr %i.hj, ptr %4, align 8, !tbaa !176, !noalias !2160
  %i.hk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !2160
  %i.hl = getelementptr i8, ptr %i.hj, i64 -24
  %i.hm = load i64, ptr %i.hl, align 8
  %i.hn = getelementptr inbounds i8, ptr %4, i64 %i.hm
  store ptr %i.hk, ptr %i.hn, align 8, !tbaa !176, !noalias !2160
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ho, align 8, !tbaa !966, !noalias !2160
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.hp) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !2160
  %i.hq = load i32, ptr %i.gi, align 8, !tbaa !214
  %i.hr = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %.not.i68 = icmp slt i32 %i.hq, %i.hr
  br i1 %.not.i68, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit94, label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.hs = load ptr, ptr %13, align 8, !tbaa !92
  %i.ht = load i64, ptr %i.gm, align 8, !tbaa !94
  %i.hu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef %i.hs, i64 noundef %i.ht)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.ax ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.z
  %.pre = load i32, ptr %i.gi, align 8, !tbaa !214
  %.pre172 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.hv = icmp slt i32 %.pre, %.pre172
  br i1 %i.hv, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit94, label %bb.aa

bb.aa:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.hw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull @.str.361, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.ax ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.aa
  %.pre173 = load i32, ptr %i.gi, align 8, !tbaa !214
  %.pre174 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.hx = icmp slt i32 %.pre173, %.pre174
  br i1 %i.hx, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit94, label %bb.ab

bb.ab:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.hy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull %0)
          to label %_ZN4crow6loggerlsIPNS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS5_S6_S7_EEEEERS0_RKT_.exit unwind label %bb.ax ; 0 uses

_ZN4crow6loggerlsIPNS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS5_S6_S7_EEEEERS0_RKT_.exit: ; preds = %bb.ab
  %.pre175 = load i32, ptr %i.gi, align 8, !tbaa !214
  %.pre176 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.hz = icmp slt i32 %.pre175, %.pre176
  br i1 %i.hz, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit94, label %bb.ac

bb.ac:                                            ; preds = %_ZN4crow6loggerlsIPNS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS5_S6_S7_EEEEERS0_RKT_.exit
  %i.ia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull @.str.470, i64 noundef 6)
          to label %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit unwind label %bb.ax ; 0 uses

_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit:            ; preds = %bb.ac
  %.pre177 = load i32, ptr %i.gi, align 8, !tbaa !214
  %.pre178 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.ib = icmp slt i32 %.pre177, %.pre178
  %i.ic = load ptr, ptr %i.q, align 8, !tbaa !936, !nonnull !185, !align !320
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 248
  %i.ie = load i8, ptr %i.id, align 8, !tbaa !994
  %i.if = add i8 %i.ie, 48                        ; 2 uses
  br i1 %i.ib, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit94, label %bb.ad

bb.ad:                                            ; preds = %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.if, ptr %i.d, align 1, !tbaa !93
  %i.ig = load ptr, ptr %12, align 8, !tbaa !176
  %i.ih = getelementptr i8, ptr %i.ig, i64 -24
  %i.ii = load i64, ptr %i.ih, align 8
  %i.ij = getelementptr inbounds i8, ptr %12, i64 %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !792
  %.not.i.i77 = icmp eq i64 %i.il, 0
  br i1 %.not.i.i77, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.im = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit unwind label %bb.ax ; 0 uses

bb.af:                                            ; preds = %bb.ad
  %i.in = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %12, i8 noundef signext %i.if)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit unwind label %bb.ax ; 0 uses

_ZN4crow6loggerlsIcEERS0_RKT_.exit:               ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre179 = load i32, ptr %i.gi, align 8, !tbaa !214
  %.pre180 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.io = icmp slt i32 %.pre179, %.pre180
  br i1 %i.io, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit94, label %bb.ag

bb.ag:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit
  %i.ip = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull @.str.471, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit82 unwind label %bb.ax ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit82:          ; preds = %bb.ag
  %.pre181 = load i32, ptr %i.gi, align 8, !tbaa !214
  %.pre182 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.iq = icmp slt i32 %.pre181, %.pre182
  %i.ir = load ptr, ptr %i.q, align 8, !tbaa !936, !nonnull !185, !align !320
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 249
  %i.it = load i8, ptr %i.is, align 1, !tbaa !995
  %i.iu = add i8 %i.it, 48                        ; 2 uses
  br i1 %i.iq, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit94, label %bb.ah

bb.ah:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.iu, ptr %i.c, align 1, !tbaa !93
  %i.iv = load ptr, ptr %12, align 8, !tbaa !176
  %i.iw = getelementptr i8, ptr %i.iv, i64 -24
  %i.ix = load i64, ptr %i.iw, align 8
  %i.iy = getelementptr inbounds i8, ptr %12, i64 %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !792
  %.not.i.i84 = icmp eq i64 %i.ja, 0
  br i1 %.not.i.i84, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit88 unwind label %bb.ax ; 0 uses

bb.aj:                                            ; preds = %bb.ah
  %i.jc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %12, i8 noundef signext %i.iu)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit88 unwind label %bb.ax ; 0 uses

_ZN4crow6loggerlsIcEERS0_RKT_.exit88:             ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.pre183 = load i32, ptr %i.gi, align 8, !tbaa !214
  %.pre184 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.jd = icmp slt i32 %.pre183, %.pre184
  br i1 %i.jd, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit94, label %bb.ak

bb.ak:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !93
  %i.je = load ptr, ptr %12, align 8, !tbaa !176
  %i.jf = getelementptr i8, ptr %i.je, i64 -24
  %i.jg = load i64, ptr %i.jf, align 8
  %i.jh = getelementptr inbounds i8, ptr %12, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !792
  %.not.i.i90 = icmp eq i64 %i.jj, 0
  br i1 %.not.i.i90, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i91 unwind label %bb.ax ; 0 uses

bb.am:                                            ; preds = %bb.ak
  %i.jl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %12, i8 noundef signext 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i91 unwind label %bb.ax ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i91: ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4crow6loggerlsIcEERS0_RKT_.exit94

_ZN4crow6loggerlsIcEERS0_RKT_.exit94:             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, %_ZN4crow6loggerlsIPNS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS5_S6_S7_EEEEERS0_RKT_.exit, %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit, %_ZN4crow6loggerlsIcEERS0_RKT_.exit, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit82, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i91, %_ZN4crow6loggerlsIcEERS0_RKT_.exit88
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  %i.jm = load ptr, ptr %i.q, align 8, !tbaa !936, !nonnull !185, !align !320
  %i.jn = load i8, ptr %i.jm, align 8, !tbaa !861 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2161)
  %i.jo = icmp slt i8 %i.jn, 34
  br i1 %i.jo, label %bb.an, label %bb.ar, !prof !470

bb.an:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit94
  %i.jp = sext i8 %i.jn to i64
  %i.jq = and i64 %i.jp, 4294967295
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.jq
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !461, !noalias !2161 ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.jt, ptr %15, align 8, !tbaa !88, !alias.scope !2161
  %21 = icmp eq ptr %i.js, null
  br i1 %21, label %.noexc.i95, label %22

.noexc.i95:                                       ; preds = %bb.an
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.236) #39
          to label %.noexc96 unwind label %bb.ay

.noexc96:                                         ; preds = %.noexc.i95
  unreachable

22:                                               ; preds = %bb.an
  %23 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.js) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2161
  store i64 %23, ptr %i.a, align 8, !tbaa !90, !noalias !2161
  %24 = icmp ugt i64 %23, 15
  br i1 %24, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %22
  %i.ju = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc95 unwind label %bb.ay  ; 2 uses

.noexc95:                                         ; preds = %.noexc.i.i
  store ptr %i.ju, ptr %15, align 8, !tbaa !92, !alias.scope !2161
  %i.jv = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !2161
  store i64 %i.jv, ptr %i.jt, align 8, !tbaa !93, !alias.scope !2161
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc95, %22
  %i.jw = phi ptr [ %i.ju, %.noexc95 ], [ %i.jt, %22 ] ; 2 uses
  switch i64 %23, label %bb.ap [
    i64 1, label %bb.ao
    i64 0, label %bb.aq
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i.i
  %i.jx = load i8, ptr %i.js, align 1, !tbaa !93
  store i8 %i.jx, ptr %i.jw, align 1, !tbaa !93
  br label %bb.aq

bb.ap:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jw, ptr nonnull align 1 %i.js, i64 %23, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %._crit_edge.i.i.i
  %i.jy = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !2161 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.jy, ptr %i.jz, align 8, !tbaa !94, !alias.scope !2161
  %i.ka = load ptr, ptr %15, align 8, !tbaa !92, !alias.scope !2161
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.jy
  store i8 0, ptr %i.kb, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2161
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

bb.ar:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit94
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !2161
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.363, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc96.a unwind label %bb.ay

.noexc96.a:                                       ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !2161
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit: ; preds = %.noexc96.a, %bb.aq
  %i.kc = load i32, ptr %i.gi, align 8, !tbaa !214
  %i.kd = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %.not.i97 = icmp slt i32 %i.kc, %i.kd
  br i1 %.not.i97, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit105, label %bb.as

bb.as:                                            ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit
  %i.ke = load ptr, ptr %15, align 8, !tbaa !92
  %i.kf = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !94
  %i.kh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef %i.ke, i64 noundef %i.kg)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit99 unwind label %bb.az ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit99: ; preds = %bb.as
  %.pre185 = load i32, ptr %i.gi, align 8, !tbaa !214
  %.pre186 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.ki = icmp slt i32 %.pre185, %.pre186
  br i1 %i.ki, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit105, label %bb.at

bb.at:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit99
  %i.kj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef nonnull @.str.361, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit102 unwind label %bb.az ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit102:         ; preds = %bb.at
  %.pre187 = load i32, ptr %i.gi, align 8, !tbaa !214
  %.pre188 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.kk = icmp slt i32 %.pre187, %.pre188
  br i1 %i.kk, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit105, label %bb.au

bb.au:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit102
  %i.kl = load ptr, ptr %i.q, align 8, !tbaa !936, !nonnull !185, !align !320 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 40
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !92
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 48
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !94
  %i.kq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %12, ptr noundef %i.kn, i64 noundef %i.kp)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit105 unwind label %bb.az ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit105: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit99, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit102, %bb.au
  %i.kr = load ptr, ptr %15, align 8, !tbaa !92   ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.kt = icmp eq ptr %i.kr, %i.ks
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit105
  %i.ku = load i64, ptr %i.ks, align 8, !tbaa !93
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.kv) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  %i.kw = load ptr, ptr %13, align 8, !tbaa !92   ; 2 uses
  %i.kx = icmp eq ptr %i.kw, %i.gl
  br i1 %i.kx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.ky = load i64, ptr %i.gl, align 8, !tbaa !93
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.kz) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %bb.bc

bb.av:                                            ; preds = %bb.v
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.aw:                                            ; preds = %_ZN4crow17UnixSocketAdaptor15remote_endpointEv.exit, %_ZN4crow6loggerlsIA10_cEERS0_RKT_.exit
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ax:                                            ; preds = %bb.ai, %bb.aj, %bb.z, %bb.aa, %bb.ac, %bb.ab, %bb.ag, %bb.af, %bb.ae, %bb.am, %bb.al
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ay:                                            ; preds = %bb.ar, %.noexc.i.i, %.noexc.i95
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

bb.az:                                            ; preds = %bb.au, %bb.at, %bb.as
  %i.le = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lf = load ptr, ptr %15, align 8, !tbaa !92   ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.az
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !93
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.lj) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112, %bb.ay
  %.pn22 = phi { ptr, i32 } [ %i.ld, %bb.ay ], [ %i.le, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ], [ %i.le, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %bb.ax
  %.pn22.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.lc, %bb.ax ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ] ; 2 uses
  %i.lk = load ptr, ptr %13, align 8, !tbaa !92   ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.gl
  br i1 %i.ll, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.ba
  %i.lm = load i64, ptr %i.gl, align 8, !tbaa !93
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.ln) #41
  br label %.body

.body:                                            ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn22.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.lb, %bb.aw ], [ %.pn22.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ], [ %.pn22.pn.pn.pn.pn.pn, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br label %bb.bb

bb.bb:                                            ; preds = %.body, %bb.av
  %.pn22.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn.pn.pn.pn.pn, %.body ], [ %i.la, %bb.av ]
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %common.resume

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %bb.t
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 5121 ; 2 uses
  store i8 0, ptr %i.lo, align 1, !tbaa !931
  br i1 %.017, label %bb.cj, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 4624 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 4728 ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 4744 ; 5 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !163 ; 2 uses
  %.not.i118 = icmp eq ptr %i.ls, null
  br i1 %.not.i118, label %_ZNSt8functionIFvvEEaSEDn.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lt = invoke noundef zeroext i1 %i.ls(ptr noundef nonnull align 8 dereferenceable(32) %i.lq, ptr noundef nonnull align 8 dereferenceable(32) %i.lq, i32 noundef 3)
          to label %bb.bf unwind label %bb.bg     ; 0 uses

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lr, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEaSEDn.exit

bb.bg:                                            ; preds = %bb.be
  %i.lu = landingpad { ptr, i32 }
          catch ptr null
  %i.lv = extractvalue { ptr, i32 } %i.lu, 0
  call void @__clang_call_terminate(ptr %i.lv) #42
  unreachable

_ZNSt8functionIFvvEEaSEDn.exit:                   ; preds = %bb.bd, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !2162)
  %i.lw = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !833, !noalias !2162 ; 3 uses
  store ptr %i.ly, ptr %i.lw, align 8, !tbaa !221, !alias.scope !2162
  %i.lz = icmp eq ptr %i.ly, null
  br i1 %i.lz, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt8functionIFvvEEaSEDn.exit
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 2 uses
  %i.mb = load atomic i32, ptr %i.ma monotonic, align 8, !noalias !2162
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bj, %bb.bh
  %.06.i.i.i.i.i = phi i32 [ %i.mb, %bb.bh ], [ %i.mf, %bb.bj ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mc = add nsw i32 %.06.i.i.i.i.i, 1
  %i.md = cmpxchg weak ptr %i.ma, i32 %.06.i.i.i.i.i, i32 %i.mc acq_rel monotonic, align 8, !noalias !2162 ; 2 uses
  %i.me = extractvalue { i32, i1 } %i.md, 1
  %i.mf = extractvalue { i32, i1 } %i.md, 0
  br i1 %i.me, label %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS4_S5_S6_EEEE16shared_from_thisEv.exit, label %bb.bi, !llvm.loop !56

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.bi, %_ZNSt8functionIFvvEEaSEDn.exit
  %i.mg = call ptr @__cxa_allocate_exception(i64 8) #40, !noalias !2162 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.mg, align 8, !tbaa !176, !noalias !2162
  call void @__cxa_throw(ptr nonnull %i.mg, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #39, !noalias !2162
  unreachable

_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS4_S5_S6_EEEE16shared_from_thisEv.exit: ; preds = %bb.bj
  %i.mh = load ptr, ptr %0, align 8, !tbaa !835, !noalias !2162 ; 2 uses
  store ptr %i.mh, ptr %16, align 16, !tbaa !687, !alias.scope !2162
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #40
  store ptr %i.mh, ptr %17, align 16, !tbaa !687
  %i.mi = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.mj = load ptr, ptr %i.lw, align 8, !tbaa !221 ; 3 uses
  store ptr %i.mj, ptr %i.mi, align 8, !tbaa !221
  %.not.i.i.i119 = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i119, label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS4_S5_S6_EEEEC2ERKS9_.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS4_S5_S6_EEEE16shared_from_thisEv.exit
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8 ; 3 uses
  %i.ml = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i120 = icmp eq i8 %i.ml, 0
  br i1 %.not.i.i.i.i120, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mm = load i32, ptr %i.mk, align 4, !tbaa !102
  %i.mn = add nsw i32 %i.mm, 1
  store i32 %i.mn, ptr %i.mk, align 4, !tbaa !102
  br label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS4_S5_S6_EEEEC2ERKS9_.exit

bb.bm:                                            ; preds = %bb.bk
  %i.mo = atomicrmw volatile add ptr %i.mk, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS4_S5_S6_EEEEC2ERKS9_.exit

_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS4_S5_S6_EEEEC2ERKS9_.exit: ; preds = %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS4_S5_S6_EEEE16shared_from_thisEv.exit, %bb.bl, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.mp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.mp, align 8
  %i.mq = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #43
          to label %.noexc123 unwind label %bb.by ; 2 uses

.noexc123:                                        ; preds = %_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS4_S5_S6_EEEEC2ERKS9_.exit
  %i.mr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 4760 ; 2 uses
  %i.mt = load <2 x ptr>, ptr %17, align 16, !tbaa !97
  store ptr null, ptr %i.mi, align 8, !tbaa !221
  store <2 x ptr> %i.mt, ptr %i.mq, align 8, !tbaa !97
  store ptr %i.mq, ptr %2, align 16, !tbaa !97
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ms, i64 16, i1 false), !tbaa.struct !96
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.ms, align 8, !tbaa !93
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 4776 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 4784
  %i.mw = load <2 x ptr>, ptr %i.mu, align 8, !tbaa !97
  %i.mx = load ptr, ptr %i.mu, align 8, !tbaa !97 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbvEZN4crow10ConnectionINS1_17UnixSocketAdaptorENS1_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS5_S6_S7_EE6handleEvEUlvE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.mu, align 8, !tbaa !97
  store <2 x ptr> %i.mw, ptr %i.mr, align 16, !tbaa !97
  store ptr @_ZNSt17_Function_handlerIFbvEZN4crow10ConnectionINS1_17UnixSocketAdaptorENS1_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS5_S6_S7_EE6handleEvEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.mv, align 8, !tbaa !97
  %.not.i.i121 = icmp eq ptr %i.mx, null
  br i1 %.not.i.i121, label %_ZZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS3_S4_S5_EE6handleEvENUlvE_D2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %.noexc123
  %i.my = invoke noundef zeroext i1 %i.mx(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS3_S4_S5_EE6handleEvENUlvE_D2Ev.exit unwind label %bb.bo ; 0 uses

bb.bo:                                            ; preds = %bb.bn
  %i.mz = landingpad { ptr, i32 }
          catch ptr null
  %i.na = extractvalue { ptr, i32 } %i.mz, 0
  call void @__clang_call_terminate(ptr %i.na) #42
  unreachable

_ZZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS3_S4_S5_EE6handleEvENUlvE_D2Ev.exit: ; preds = %bb.bn, %.noexc123
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %.pre190 = load ptr, ptr %i.q, align 8, !tbaa !936
  %.pre189 = load ptr, ptr %i.t, align 8, !tbaa !866
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #40
  invoke void @_ZN13RequestLogger13before_handleERN4crow7requestERNS0_8responseERNS_7contextE(ptr noundef nonnull align 1 dereferenceable(2) %.pre189, ptr noundef nonnull align 8 dereferenceable(280) %.pre190, ptr noundef nonnull align 8 dereferenceable(352) %i.lp, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.bp unwind label %bb.ca

bb.bp:                                            ; preds = %_ZZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS3_S4_S5_EE6handleEvENUlvE_D2Ev.exit
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 4722
  %i.nc = load i8, ptr %i.nb, align 2, !tbaa !2163, !range !184, !noundef !185
  %i.nd = trunc nuw i8 %i.nc to i1
  br i1 %i.nd, label %bb.cc, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #40
  %i.ne = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.nf = load ptr, ptr %i.lw, align 8, !tbaa !221 ; 2 uses
  %i.ng = load <2 x ptr>, ptr %16, align 16, !tbaa !97
  store <2 x ptr> %i.ng, ptr %18, align 16, !tbaa !97
  %.not.i.i.i127 = icmp eq ptr %i.nf, null
  br i1 %.not.i.i.i127, label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS4_S5_S6_EEEEC2ERKS9_.exit129, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 8 ; 3 uses
  %i.ni = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i128 = icmp eq i8 %i.ni, 0
end_hunk_1
begin_hunk_2_@_ZN13RequestLogger13before_handleERN4crow7requestERNS0_8responseERNS_7contextE:bb.a
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8, !tbaa !94, !alias.scope !2169
  %i.l = add i64 %i.k, -4611686018427387893
  %i.m = icmp ult i64 %i.l, 11
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.c
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.475, i64 noundef 11)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.o = load i64, ptr %i.i, align 8, !tbaa !94, !alias.scope !2169
  %i.p = sub i64 4611686018427387903, %i.o
  %i.q = icmp ult i64 %i.p, %i.g
  br i1 %i.q, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.239) #39
          to label %.cont.i.i unwind label %bb.d

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.e, i64 noundef %i.g)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %5, align 8, !tbaa !92, !alias.scope !2169 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.h
  br i1 %i.u, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.v = load i32, ptr %i.c, align 8, !tbaa !214
  %i.w = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %.not.i = icmp slt i32 %i.v, %i.w
  br i1 %.not.i, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.x = load ptr, ptr %5, align 8, !tbaa !92
  %i.y = load i64, ptr %i.i, align 8, !tbaa !94
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %4, ptr noundef %i.x, i64 noundef %i.y)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.f ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit, %bb.e
  %i.aa = load ptr, ptr %5, align 8, !tbaa !92    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.h
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.ac = load i64, ptr %i.h, align 8, !tbaa !93
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %5, align 8, !tbaa !92    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.h
  br i1 %i.ag, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.f, %bb.d
  %.sink = phi ptr [ %i.t, %bb.d ], [ %i.af, %bb.f ]
  %.pn.ph = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.ae, %bb.f ]
  %i.ah = load i64, ptr %i.h, align 8, !tbaa !93
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ai) #41
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.f, %bb.d
  %.pn = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.ae, %bb.f ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  resume { ptr, i32 } %.pn

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
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
  %i.b = load i8, ptr %1, align 8, !tbaa !861     ; 2 uses
  %i.c = icmp sgt i8 %i.b, 33
  br i1 %i.c, label %bb.br, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.ptr173 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = sext i8 %i.b to i64
  %i.e = getelementptr inbounds nuw [104 x i8], ptr %.ptr173, i64 %i.d ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  call void @_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"struct.crow::routing_handle_result") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 noundef 0, ptr noundef null, ptr noundef null)
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !951  ; 6 uses
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.k = getelementptr inbounds nuw i8, ptr %.056.ptr, i64 24 ; 2 uses
  call void @_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"struct.crow::routing_handle_result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.k, i64 noundef 0, ptr noundef null, ptr noundef null)
  %i.l = load i64, ptr %i.j, align 8, !tbaa !951
  %.not60 = icmp eq i64 %i.l, 0
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br i1 %.not60, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.m = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %7)
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 376 ; 4 uses
  store i32 0, ptr %i.o, align 8, !tbaa !214
  %i.p = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %.not.i = icmp sgt i32 %i.p, 0
  br i1 %.not.i, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef nonnull @.str.360, i64 noundef 20)
          to label %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit:           ; preds = %bb.f
  %.pre187.a = load i32, ptr %i.o, align 8, !tbaa !214
  %.pre188.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.r = icmp slt i32 %.pre187.a, %.pre188.a
  br i1 %i.r, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !92
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !94
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef %i.s, i64 noundef %i.u)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.g
  %.pre189 = load i32, ptr %i.o, align 8, !tbaa !214
  %.pre190 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.w = icmp slt i32 %.pre189, %.pre190
  br i1 %i.w, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef nonnull @.str.361, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.e, %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  %i.y = load i8, ptr %1, align 8, !tbaa !861     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2176)
  %i.z = icmp slt i8 %i.y, 34
  br i1 %i.z, label %bb.i, label %bb.m, !prof !470

bb.i:                                             ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.aa = sext i8 %i.y to i64
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !461, !noalias !2176 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ae, ptr %8, align 8, !tbaa !88, !alias.scope !2176
  %17 = icmp eq ptr %i.ad, null
  br i1 %17, label %.noexc.i, label %18

.noexc.i:                                         ; preds = %bb.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.236) #39
          to label %.noexc78 unwind label %bb.p

.noexc78:                                         ; preds = %.noexc.i
  unreachable

18:                                               ; preds = %bb.i
  %19 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2176
  store i64 %19, ptr %i.a, align 8, !tbaa !90, !noalias !2176
  %20 = icmp ugt i64 %19, 15
  br i1 %20, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %18
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc78.a unwind label %bb.p ; 2 uses

.noexc78.a:                                       ; preds = %.noexc.i.i
  store ptr %i.af, ptr %8, align 8, !tbaa !92, !alias.scope !2176
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !2176
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !93, !alias.scope !2176
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc78.a, %18
  %i.ah = phi ptr [ %i.af, %.noexc78.a ], [ %i.ae, %18 ] ; 2 uses
  switch i64 %19, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ai = load i8, ptr %i.ad, align 1, !tbaa !93
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !93
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %i.ad, i64 %19, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !2176 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !94, !alias.scope !2176
  %i.al = load ptr, ptr %8, align 8, !tbaa !92, !alias.scope !2176
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2176
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

bb.m:                                             ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !2176
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.363, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc79 unwind label %bb.p

.noexc79:                                         ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !2176
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit: ; preds = %.noexc79, %bb.l
  %i.an = load i32, ptr %i.o, align 8, !tbaa !214
  %i.ao = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %.not.i80 = icmp slt i32 %i.an, %i.ao
  br i1 %.not.i80, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit82, label %bb.n

bb.n:                                             ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit
  %i.ap = load ptr, ptr %8, align 8, !tbaa !92
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !94
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit82 unwind label %bb.q ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit82: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit, %bb.n
  %i.at = load ptr, ptr %8, align 8, !tbaa !92    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit82
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !93
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
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
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

bb.q:                                             ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %8, align 8, !tbaa !92    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.q
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !93
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.p
  %.pn = phi { ptr, i32 } [ %i.az, %bb.p ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %i.ba, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.ay, %bb.o ]
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  store i32 405, ptr %9, align 8, !tbaa !447
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !88
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.bi, align 8, !tbaa !94
  store i8 0, ptr %i.bh, align 8, !tbaa !93
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !448
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  store i64 1, ptr %i.bl, align 8, !tbaa !449
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bn, align 8, !tbaa !419
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
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !163 ; 2 uses
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
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !163 ; 2 uses
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
  %i.cj = load ptr, ptr %i.bm, align 8, !tbaa !450 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.ck, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.cj, %_ZNSt14_Function_baseD2Ev.exit2.i ] ; 6 uses
  %i.ck = load ptr, ptr %.06.i.i.i, align 8, !tbaa !233 ; 2 uses
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
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.cx = load ptr, ptr %i.bj, align 8, !tbaa !448
  %i.cy = load i64, ptr %i.bl, align 8, !tbaa !449
  %i.cz = shl i64 %i.cy, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cx, i8 0, i64 %i.cz, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.da = load ptr, ptr %i.bj, align 8, !tbaa !448 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.bk
  br i1 %i.db, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i
  %i.dc = load i64, ptr %i.bl, align 8, !tbaa !449
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
  %i.di = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.dj = icmp slt i32 %i.di, 2
  br i1 %i.dj, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %.critedge73
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %10)
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 376 ; 2 uses
  store i32 1, ptr %i.dk, align 8, !tbaa !214
  %i.dl = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %.not.i86 = icmp sgt i32 %i.dl, 1
  br i1 %.not.i86, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit90, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %10, ptr noundef nonnull @.str.355, i64 noundef 19)
          to label %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit unwind label %bb.ab ; 0 uses

_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit:           ; preds = %bb.z
  %.pre191 = load i32, ptr %i.dk, align 8, !tbaa !214
  %.pre192 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.dn = icmp slt i32 %.pre191, %.pre192
  br i1 %i.dn, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit90, label %bb.aa

bb.aa:                                            ; preds = %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit
  %i.do = load ptr, ptr %i.g, align 8, !tbaa !92
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 48
end_hunk_2
begin_hunk_3_@_ZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS3_S4_S5_EE6handleEv:_ZN4crow6detail7contextIJ13RequestLogger18SecretContentGuard13RequestAppendEEaSEOS5_.exit
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i65
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !2380
  br label %.body

bb.ag:                                            ; preds = %bb.ae
  %i.ib = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !2380 ; 2 uses
  store ptr %i.ib, ptr %4, align 8, !tbaa !176, !noalias !2380
  %i.ic = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8, !noalias !2380
  %i.id = getelementptr i8, ptr %i.ib, i64 -24
  %i.ie = load i64, ptr %i.id, align 8
  %i.if = getelementptr inbounds i8, ptr %4, i64 %i.ie
  store ptr %i.ic, ptr %i.if, align 8, !tbaa !176, !noalias !2380
  %i.ig = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8, !noalias !2380
  store ptr %i.ig, ptr %i.ht, align 8, !tbaa !176, !noalias !2380
  %i.ih = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ih, align 8, !tbaa !176, !noalias !2380
  %i.ii = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !92, !noalias !2380 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.il = icmp eq ptr %i.ij, %i.ik
  br i1 %i.il, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.ag
  %i.im = load i64, ptr %i.ik, align 8, !tbaa !93, !noalias !2380
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.in) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ih, align 8, !tbaa !176, !noalias !2380
  %i.io = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.io) #40
  %i.ip = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !2380 ; 2 uses
  store ptr %i.ip, ptr %4, align 8, !tbaa !176, !noalias !2380
  %i.iq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !2380
  %i.ir = getelementptr i8, ptr %i.ip, i64 -24
  %i.is = load i64, ptr %i.ir, align 8
  %i.it = getelementptr inbounds i8, ptr %4, i64 %i.is
  store ptr %i.iq, ptr %i.it, align 8, !tbaa !176, !noalias !2380
  %i.iu = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.iu, align 8, !tbaa !966, !noalias !2380
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.iv) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !2380
  %i.iw = load i32, ptr %i.ho, align 8, !tbaa !214
  %i.ix = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %.not.i68 = icmp slt i32 %i.iw, %i.ix
  br i1 %.not.i68, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit94, label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.iy = load ptr, ptr %15, align 8, !tbaa !92
  %i.iz = load i64, ptr %i.hs, align 8, !tbaa !94
  %i.ja = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef %i.iy, i64 noundef %i.iz)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.bf ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.ah
  %.pre = load i32, ptr %i.ho, align 8, !tbaa !214
  %.pre172 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.jb = icmp slt i32 %.pre, %.pre172
  br i1 %i.jb, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit94, label %bb.ai

bb.ai:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.jc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull @.str.361, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.bf ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.ai
  %.pre173 = load i32, ptr %i.ho, align 8, !tbaa !214
  %.pre174 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.jd = icmp slt i32 %.pre173, %.pre174
  br i1 %i.jd, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit94, label %bb.aj

bb.aj:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.je = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull %0)
          to label %_ZN4crow6loggerlsIPNS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS5_S6_S7_EEEEERS0_RKT_.exit unwind label %bb.bf ; 0 uses

_ZN4crow6loggerlsIPNS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS5_S6_S7_EEEEERS0_RKT_.exit: ; preds = %bb.aj
  %.pre175 = load i32, ptr %i.ho, align 8, !tbaa !214
  %.pre176 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.jf = icmp slt i32 %.pre175, %.pre176
  br i1 %i.jf, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit94, label %bb.ak

bb.ak:                                            ; preds = %_ZN4crow6loggerlsIPNS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS5_S6_S7_EEEEERS0_RKT_.exit
  %i.jg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull @.str.470, i64 noundef 6)
          to label %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit unwind label %bb.bf ; 0 uses

_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit:            ; preds = %bb.ak
  %.pre177 = load i32, ptr %i.ho, align 8, !tbaa !214
  %.pre178 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.jh = icmp slt i32 %.pre177, %.pre178
  %i.ji = load ptr, ptr %i.q, align 8, !tbaa !1107, !nonnull !185, !align !320
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 248
  %i.jk = load i8, ptr %i.jj, align 8, !tbaa !994
  %i.jl = add i8 %i.jk, 48                        ; 2 uses
  br i1 %i.jh, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit94, label %bb.al

bb.al:                                            ; preds = %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.jl, ptr %i.d, align 1, !tbaa !93
  %i.jm = load ptr, ptr %14, align 8, !tbaa !176
  %i.jn = getelementptr i8, ptr %i.jm, i64 -24
  %i.jo = load i64, ptr %i.jn, align 8
  %i.jp = getelementptr inbounds i8, ptr %14, i64 %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !792
  %.not.i.i77 = icmp eq i64 %i.jr, 0
  br i1 %.not.i.i77, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.js = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit unwind label %bb.bf ; 0 uses

bb.an:                                            ; preds = %bb.al
  %i.jt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %14, i8 noundef signext %i.jl)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit unwind label %bb.bf ; 0 uses

_ZN4crow6loggerlsIcEERS0_RKT_.exit:               ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre179 = load i32, ptr %i.ho, align 8, !tbaa !214
  %.pre180 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.ju = icmp slt i32 %.pre179, %.pre180
  br i1 %i.ju, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit94, label %bb.ao

bb.ao:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit
  %i.jv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull @.str.471, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit82 unwind label %bb.bf ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit82:          ; preds = %bb.ao
  %.pre181 = load i32, ptr %i.ho, align 8, !tbaa !214
  %.pre182 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.jw = icmp slt i32 %.pre181, %.pre182
  %i.jx = load ptr, ptr %i.q, align 8, !tbaa !1107, !nonnull !185, !align !320
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 249
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !995
  %i.ka = add i8 %i.jz, 48                        ; 2 uses
  br i1 %i.jw, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit94, label %bb.ap

bb.ap:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.ka, ptr %i.c, align 1, !tbaa !93
  %i.kb = load ptr, ptr %14, align 8, !tbaa !176
  %i.kc = getelementptr i8, ptr %i.kb, i64 -24
  %i.kd = load i64, ptr %i.kc, align 8
  %i.ke = getelementptr inbounds i8, ptr %14, i64 %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !792
  %.not.i.i84 = icmp eq i64 %i.kg, 0
  br i1 %.not.i.i84, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit88 unwind label %bb.bf ; 0 uses

bb.ar:                                            ; preds = %bb.ap
  %i.ki = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %14, i8 noundef signext %i.ka)
          to label %_ZN4crow6loggerlsIcEERS0_RKT_.exit88 unwind label %bb.bf ; 0 uses

_ZN4crow6loggerlsIcEERS0_RKT_.exit88:             ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.pre183 = load i32, ptr %i.ho, align 8, !tbaa !214
  %.pre184 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.kj = icmp slt i32 %.pre183, %.pre184
  br i1 %i.kj, label %_ZN4crow6loggerlsIcEERS0_RKT_.exit94, label %bb.as

bb.as:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !93
  %i.kk = load ptr, ptr %14, align 8, !tbaa !176
  %i.kl = getelementptr i8, ptr %i.kk, i64 -24
  %i.km = load i64, ptr %i.kl, align 8
  %i.kn = getelementptr inbounds i8, ptr %14, i64 %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !792
  %.not.i.i90 = icmp eq i64 %i.kp, 0
  br i1 %.not.i.i90, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i91 unwind label %bb.bf ; 0 uses

bb.au:                                            ; preds = %bb.as
  %i.kr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(380) %14, i8 noundef signext 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i91 unwind label %bb.bf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i91: ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4crow6loggerlsIcEERS0_RKT_.exit94

_ZN4crow6loggerlsIcEERS0_RKT_.exit94:             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, %_ZN4crow6loggerlsIPNS_10ConnectionINS_13SocketAdaptorENS_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS5_S6_S7_EEEEERS0_RKT_.exit, %_ZN4crow6loggerlsIA7_cEERS0_RKT_.exit, %_ZN4crow6loggerlsIcEERS0_RKT_.exit, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit82, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i91, %_ZN4crow6loggerlsIcEERS0_RKT_.exit88
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #40
  %i.ks = load ptr, ptr %i.q, align 8, !tbaa !1107, !nonnull !185, !align !320
  %i.kt = load i8, ptr %i.ks, align 8, !tbaa !861 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2381)
  %i.ku = icmp slt i8 %i.kt, 34
  br i1 %i.ku, label %bb.av, label %bb.az, !prof !470

bb.av:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit94
  %i.kv = sext i8 %i.kt to i64
  %i.kw = and i64 %i.kv, 4294967295
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.kw
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !461, !noalias !2381 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store ptr %i.kz, ptr %17, align 8, !tbaa !88, !alias.scope !2381
  %23 = icmp eq ptr %i.ky, null
  br i1 %23, label %.noexc.i95, label %24

.noexc.i95:                                       ; preds = %bb.av
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.236) #39
          to label %.noexc96 unwind label %bb.bg

.noexc96:                                         ; preds = %.noexc.i95
  unreachable

24:                                               ; preds = %bb.av
  %25 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ky) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2381
  store i64 %25, ptr %i.a, align 8, !tbaa !90, !noalias !2381
  %26 = icmp ugt i64 %25, 15
  br i1 %26, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %24
  %i.la = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc95 unwind label %bb.bg  ; 2 uses

.noexc95:                                         ; preds = %.noexc.i.i
  store ptr %i.la, ptr %17, align 8, !tbaa !92, !alias.scope !2381
  %i.lb = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !2381
  store i64 %i.lb, ptr %i.kz, align 8, !tbaa !93, !alias.scope !2381
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc95, %24
  %i.lc = phi ptr [ %i.la, %.noexc95 ], [ %i.kz, %24 ] ; 2 uses
  switch i64 %25, label %bb.ax [
    i64 1, label %bb.aw
    i64 0, label %bb.ay
  ]

bb.aw:                                            ; preds = %._crit_edge.i.i.i
  %i.ld = load i8, ptr %i.ky, align 1, !tbaa !93
  store i8 %i.ld, ptr %i.lc, align 1, !tbaa !93
  br label %bb.ay

bb.ax:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lc, ptr nonnull align 1 %i.ky, i64 %25, i1 false)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %._crit_edge.i.i.i
  %i.le = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !2381 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.le, ptr %i.lf, align 8, !tbaa !94, !alias.scope !2381
  %i.lg = load ptr, ptr %17, align 8, !tbaa !92, !alias.scope !2381
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.le
  store i8 0, ptr %i.lh, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2381
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

bb.az:                                            ; preds = %_ZN4crow6loggerlsIcEERS0_RKT_.exit94
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !2381
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.363, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc96.a unwind label %bb.bg

.noexc96.a:                                       ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !2381
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit: ; preds = %.noexc96.a, %bb.ay
  %i.li = load i32, ptr %i.ho, align 8, !tbaa !214
  %i.lj = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %.not.i97 = icmp slt i32 %i.li, %i.lj
  br i1 %.not.i97, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit105, label %bb.ba

bb.ba:                                            ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit
  %i.lk = load ptr, ptr %17, align 8, !tbaa !92
  %i.ll = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !94
  %i.ln = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef %i.lk, i64 noundef %i.lm)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit99 unwind label %bb.bh ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit99: ; preds = %bb.ba
  %.pre185 = load i32, ptr %i.ho, align 8, !tbaa !214
  %.pre186 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.lo = icmp slt i32 %.pre185, %.pre186
  br i1 %i.lo, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit105, label %bb.bb

bb.bb:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit99
  %i.lp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef nonnull @.str.361, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit102 unwind label %bb.bh ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit102:         ; preds = %bb.bb
  %.pre187 = load i32, ptr %i.ho, align 8, !tbaa !214
  %.pre188 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.lq = icmp slt i32 %.pre187, %.pre188
  br i1 %i.lq, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit105, label %bb.bc

bb.bc:                                            ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit102
  %i.lr = load ptr, ptr %i.q, align 8, !tbaa !1107, !nonnull !185, !align !320 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 40
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !92
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 48
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !94
  %i.lw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %14, ptr noundef %i.lt, i64 noundef %i.lv)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit105 unwind label %bb.bh ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit105: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit99, %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit102, %bb.bc
  %i.lx = load ptr, ptr %17, align 8, !tbaa !92   ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.lz = icmp eq ptr %i.lx, %i.ly
  br i1 %i.lz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit105
  %i.ma = load i64, ptr %i.ly, align 8, !tbaa !93
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.mb) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #40
  %i.mc = load ptr, ptr %15, align 8, !tbaa !92   ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.hr
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.me = load i64, ptr %i.hr, align 8, !tbaa !93
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mf) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  br label %bb.bk

bb.bd:                                            ; preds = %bb.ad
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.be:                                            ; preds = %_ZNK4crow13SocketAdaptor15remote_endpointEv.exit, %_ZN4crow6loggerlsIA10_cEERS0_RKT_.exit
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bf:                                            ; preds = %bb.aq, %bb.ar, %bb.ah, %bb.ai, %bb.ak, %bb.aj, %bb.ao, %bb.an, %bb.am, %bb.au, %bb.at
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bg:                                            ; preds = %bb.az, %.noexc.i.i, %.noexc.i95
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

bb.bh:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.mk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ml = load ptr, ptr %17, align 8, !tbaa !92   ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.mn = icmp eq ptr %i.ml, %i.mm
  br i1 %i.mn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.bh
  %i.mo = load i64, ptr %i.mm, align 8, !tbaa !93
  %i.mp = add i64 %i.mo, 1
  call void @_ZdlPvm(ptr noundef %i.ml, i64 noundef %i.mp) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112, %bb.bg
  %.pn22 = phi { ptr, i32 } [ %i.mj, %bb.bg ], [ %i.mk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ], [ %i.mk, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #40
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %bb.bf
  %.pn22.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mi, %bb.bf ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ] ; 2 uses
  %i.mq = load ptr, ptr %15, align 8, !tbaa !92   ; 2 uses
  %i.mr = icmp eq ptr %i.mq, %i.hr
  br i1 %i.mr, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.bi
  %i.ms = load i64, ptr %i.hr, align 8, !tbaa !93
  %i.mt = add i64 %i.ms, 1
  call void @_ZdlPvm(ptr noundef %i.mq, i64 noundef %i.mt) #41
  br label %.body

.body:                                            ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn22.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.mh, %bb.be ], [ %.pn22.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ], [ %.pn22.pn.pn.pn.pn.pn, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %bb.bj

bb.bj:                                            ; preds = %.body, %bb.bd
  %.pn22.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn.pn.pn.pn.pn, %.body ], [ %i.mg, %bb.bd ]
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  br label %common.resume

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %bb.ab
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 5121 ; 2 uses
  store i8 0, ptr %i.mu, align 1, !tbaa !1105
  br i1 %.017, label %bb.cr, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 4624 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 4728 ; 4 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 4744 ; 5 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !163 ; 2 uses
  %.not.i118 = icmp eq ptr %i.my, null
  br i1 %.not.i118, label %_ZNSt8functionIFvvEEaSEDn.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.mz = invoke noundef zeroext i1 %i.my(ptr noundef nonnull align 8 dereferenceable(32) %i.mw, ptr noundef nonnull align 8 dereferenceable(32) %i.mw, i32 noundef 3)
          to label %bb.bn unwind label %bb.bo     ; 0 uses

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mx, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEaSEDn.exit

bb.bo:                                            ; preds = %bb.bm
  %i.na = landingpad { ptr, i32 }
          catch ptr null
  %i.nb = extractvalue { ptr, i32 } %i.na, 0
  call void @__clang_call_terminate(ptr %i.nb) #42
  unreachable

_ZNSt8functionIFvvEEaSEDn.exit:                   ; preds = %bb.bl, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !2382)
  %i.nc = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !833, !noalias !2382 ; 3 uses
  store ptr %i.ne, ptr %i.nc, align 8, !tbaa !221, !alias.scope !2382
  %i.nf = icmp eq ptr %i.ne, null
  br i1 %i.nf, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt8functionIFvvEEaSEDn.exit
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 8 ; 2 uses
  %i.nh = load atomic i32, ptr %i.ng monotonic, align 8, !noalias !2382
  br label %bb.bq

bb.bq:                                            ; preds = %bb.br, %bb.bp
  %.06.i.i.i.i.i = phi i32 [ %i.nh, %bb.bp ], [ %i.nl, %bb.br ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ni = add nsw i32 %.06.i.i.i.i.i, 1
  %i.nj = cmpxchg weak ptr %i.ng, i32 %.06.i.i.i.i.i, i32 %i.ni acq_rel monotonic, align 8, !noalias !2382 ; 2 uses
  %i.nk = extractvalue { i32, i1 } %i.nj, 1
  %i.nl = extractvalue { i32, i1 } %i.nj, 0
  br i1 %i.nk, label %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS4_S5_S6_EEEE16shared_from_thisEv.exit, label %bb.bq, !llvm.loop !56

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.bq, %_ZNSt8functionIFvvEEaSEDn.exit
  %i.nm = call ptr @__cxa_allocate_exception(i64 8) #40, !noalias !2382 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.nm, align 8, !tbaa !176, !noalias !2382
  call void @__cxa_throw(ptr nonnull %i.nm, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #39, !noalias !2382
  unreachable

_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS4_S5_S6_EEEE16shared_from_thisEv.exit: ; preds = %bb.br
  %i.nn = load ptr, ptr %0, align 8, !tbaa !1063, !noalias !2382 ; 2 uses
  store ptr %i.nn, ptr %18, align 16, !tbaa !1019, !alias.scope !2382
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #40
  store ptr %i.nn, ptr %19, align 16, !tbaa !1019
  %i.no = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.np = load ptr, ptr %i.nc, align 8, !tbaa !221 ; 3 uses
  store ptr %i.np, ptr %i.no, align 8, !tbaa !221
  %.not.i.i.i119 = icmp eq ptr %i.np, null
  br i1 %.not.i.i.i119, label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS4_S5_S6_EEEEC2ERKS9_.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS4_S5_S6_EEEE16shared_from_thisEv.exit
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8 ; 3 uses
  %i.nr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i120 = icmp eq i8 %i.nr, 0
  br i1 %.not.i.i.i.i120, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ns = load i32, ptr %i.nq, align 4, !tbaa !102
  %i.nt = add nsw i32 %i.ns, 1
  store i32 %i.nt, ptr %i.nq, align 4, !tbaa !102
  br label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS4_S5_S6_EEEEC2ERKS9_.exit

bb.bu:                                            ; preds = %bb.bs
  %i.nu = atomicrmw volatile add ptr %i.nq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS4_S5_S6_EEEEC2ERKS9_.exit

_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS4_S5_S6_EEEEC2ERKS9_.exit: ; preds = %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS4_S5_S6_EEEE16shared_from_thisEv.exit, %bb.bt, %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.nv = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.nv, align 8
  %i.nw = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #43
          to label %.noexc123 unwind label %bb.cg ; 2 uses

.noexc123:                                        ; preds = %_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS4_S5_S6_EEEEC2ERKS9_.exit
  %i.nx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 4760 ; 2 uses
  %i.nz = load <2 x ptr>, ptr %19, align 16, !tbaa !97
  store ptr null, ptr %i.no, align 8, !tbaa !221
  store <2 x ptr> %i.nz, ptr %i.nw, align 8, !tbaa !97
  store ptr %i.nw, ptr %2, align 16, !tbaa !97
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ny, i64 16, i1 false), !tbaa.struct !96
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.ny, align 8, !tbaa !93
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 4776 ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 4784
  %i.oc = load <2 x ptr>, ptr %i.oa, align 8, !tbaa !97
  %i.od = load ptr, ptr %i.oa, align 8, !tbaa !97 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbvEZN4crow10ConnectionINS1_13SocketAdaptorENS1_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS5_S6_S7_EE6handleEvEUlvE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.oa, align 8, !tbaa !97
  store <2 x ptr> %i.oc, ptr %i.nx, align 16, !tbaa !97
  store ptr @_ZNSt17_Function_handlerIFbvEZN4crow10ConnectionINS1_13SocketAdaptorENS1_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS5_S6_S7_EE6handleEvEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.ob, align 8, !tbaa !97
  %.not.i.i121 = icmp eq ptr %i.od, null
  br i1 %.not.i.i121, label %_ZZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS3_S4_S5_EE6handleEvENUlvE_D2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %.noexc123
  %i.oe = invoke noundef zeroext i1 %i.od(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS3_S4_S5_EE6handleEvENUlvE_D2Ev.exit unwind label %bb.bw ; 0 uses

bb.bw:                                            ; preds = %bb.bv
  %i.of = landingpad { ptr, i32 }
          catch ptr null
  %i.og = extractvalue { ptr, i32 } %i.of, 0
  call void @__clang_call_terminate(ptr %i.og) #42
  unreachable

_ZZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS3_S4_S5_EE6handleEvENUlvE_D2Ev.exit: ; preds = %bb.bv, %.noexc123
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %.pre190 = load ptr, ptr %i.q, align 8, !tbaa !1107
  %.pre189 = load ptr, ptr %i.t, align 8, !tbaa !1074
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #40
  invoke void @_ZN13RequestLogger13before_handleERN4crow7requestERNS0_8responseERNS_7contextE(ptr noundef nonnull align 1 dereferenceable(2) %.pre189, ptr noundef nonnull align 8 dereferenceable(280) %.pre190, ptr noundef nonnull align 8 dereferenceable(352) %i.mv, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.bx unwind label %bb.ci

bb.bx:                                            ; preds = %_ZZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS3_S4_S5_EE6handleEvENUlvE_D2Ev.exit
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 4722
  %i.oi = load i8, ptr %i.oh, align 2, !tbaa !2383, !range !184, !noundef !185
  %i.oj = trunc nuw i8 %i.oi to i1
  br i1 %i.oj, label %bb.ck, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #40
  %i.ok = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ol = load ptr, ptr %i.nc, align 8, !tbaa !221 ; 2 uses
  %i.om = load <2 x ptr>, ptr %18, align 16, !tbaa !97
  store <2 x ptr> %i.om, ptr %20, align 16, !tbaa !97
  %.not.i.i.i127 = icmp eq ptr %i.ol, null
  br i1 %.not.i.i.i127, label %_ZNSt10shared_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJ13RequestLogger18SecretContentGuard13RequestAppendEEEJS4_S5_S6_EEEEC2ERKS9_.exit129, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 8 ; 3 uses
  %i.oo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i128 = icmp eq i8 %i.oo, 0
end_hunk_3
begin_hunk_4_@_ZNK4asio6detail23reactive_socket_serviceINS_2ip3tcpEE15remote_endpointERKNS4_19implementation_typeERSt10error_code:bb.a
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.41.0..sroa_idx.i.i.i, align 8, !tbaa !187
  call void @_ZN4asio6detail14do_throw_errorERKSt10error_code(ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %_ZN4asio2ip14basic_endpointINS0_3tcpEE6resizeEm.exit

_ZN4asio2ip14basic_endpointINS0_3tcpEE6resizeEm.exit: ; preds = %bb.c, %_ZN4asio6detail11throw_errorERKSt10error_code.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) %5, i64 28, i1 false), !tbaa.struct !215
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
  store i32 9, ptr %4, align 8, !tbaa !102
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.49.0..sroa_idx, align 8, !tbaa !187
  br label %_ZN4asio6detail10socket_ops14get_last_errorERSt10error_codeb.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.g = load i64, ptr %2, align 8, !tbaa !90
  %i.h = trunc i64 %i.g to i32
  store i32 %i.h, ptr %i.a, align 4, !tbaa !102
  %i.i = call noundef i32 @getpeername(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %i.a) #40 ; 2 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !102
  %i.k = zext i32 %i.j to i64
  store i64 %i.k, ptr %2, align 8, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %4, align 8, !tbaa !194
  br label %_ZN4asio6detail10socket_ops14get_last_errorERSt10error_codeb.exit

bb.g:                                             ; preds = %bb.e
  %i.l = tail call ptr @__errno_location() #44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !102
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
  store i32 %i.m, ptr %4, align 8, !tbaa !102
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZZN4asio15system_categoryEvE8instance, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !187
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
  %i.b = load i8, ptr %1, align 8, !tbaa !861     ; 2 uses
  %i.c = icmp sgt i8 %i.b, 33
  br i1 %i.c, label %bb.br, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.ptr173 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = sext i8 %i.b to i64
  %i.e = getelementptr inbounds nuw [104 x i8], ptr %.ptr173, i64 %i.d ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  call void @_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"struct.crow::routing_handle_result") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 noundef 0, ptr noundef null, ptr noundef null)
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !951  ; 6 uses
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.k = getelementptr inbounds nuw i8, ptr %.056.ptr, i64 24 ; 2 uses
  call void @_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"struct.crow::routing_handle_result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.k, i64 noundef 0, ptr noundef null, ptr noundef null)
  %i.l = load i64, ptr %i.j, align 8, !tbaa !951
  %.not60 = icmp eq i64 %i.l, 0
  call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br i1 %.not60, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.m = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %7)
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 376 ; 4 uses
  store i32 0, ptr %i.o, align 8, !tbaa !214
  %i.p = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %.not.i = icmp sgt i32 %i.p, 0
  br i1 %.not.i, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef nonnull @.str.360, i64 noundef 20)
          to label %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit:           ; preds = %bb.f
  %.pre187.a = load i32, ptr %i.o, align 8, !tbaa !214
  %.pre188.a = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.r = icmp slt i32 %.pre187.a, %.pre188.a
  br i1 %i.r, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !92
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !94
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef %i.s, i64 noundef %i.u)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.g
  %.pre189 = load i32, ptr %i.o, align 8, !tbaa !214
  %.pre190 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.w = icmp slt i32 %.pre189, %.pre190
  br i1 %i.w, label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef nonnull @.str.361, i64 noundef 1)
          to label %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit unwind label %bb.o ; 0 uses

_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit:            ; preds = %bb.e, %_ZN4crow6loggerlsIA21_cEERS0_RKT_.exit, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  %i.y = load i8, ptr %1, align 8, !tbaa !861     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2390)
  %i.z = icmp slt i8 %i.y, 34
  br i1 %i.z, label %bb.i, label %bb.m, !prof !470

bb.i:                                             ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  %i.aa = sext i8 %i.y to i64
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @_ZN4crowL14method_stringsE, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !461, !noalias !2390 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ae, ptr %8, align 8, !tbaa !88, !alias.scope !2390
  %17 = icmp eq ptr %i.ad, null
  br i1 %17, label %.noexc.i, label %18

.noexc.i:                                         ; preds = %bb.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.236) #39
          to label %.noexc78 unwind label %bb.p

.noexc78:                                         ; preds = %.noexc.i
  unreachable

18:                                               ; preds = %bb.i
  %19 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !2390
  store i64 %19, ptr %i.a, align 8, !tbaa !90, !noalias !2390
  %20 = icmp ugt i64 %19, 15
  br i1 %20, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %18
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc78.a unwind label %bb.p ; 2 uses

.noexc78.a:                                       ; preds = %.noexc.i.i
  store ptr %i.af, ptr %8, align 8, !tbaa !92, !alias.scope !2390
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !2390
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !93, !alias.scope !2390
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc78.a, %18
  %i.ah = phi ptr [ %i.af, %.noexc78.a ], [ %i.ae, %18 ] ; 2 uses
  switch i64 %19, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ai = load i8, ptr %i.ad, align 1, !tbaa !93
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !93
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %i.ad, i64 %19, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !2390 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !94, !alias.scope !2390
  %i.al = load ptr, ptr %8, align 8, !tbaa !92, !alias.scope !2390
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !2390
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

bb.m:                                             ; preds = %_ZN4crow6loggerlsIA2_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !2390
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.363, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc79 unwind label %bb.p

.noexc79:                                         ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !2390
  br label %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit

_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit: ; preds = %.noexc79, %bb.l
  %i.an = load i32, ptr %i.o, align 8, !tbaa !214
  %i.ao = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %.not.i80 = icmp slt i32 %i.an, %i.ao
  br i1 %.not.i80, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit82, label %bb.n

bb.n:                                             ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit
  %i.ap = load ptr, ptr %8, align 8, !tbaa !92
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !94
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit82 unwind label %bb.q ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit82: ; preds = %_ZN4crow11method_nameB5cxx11ENS_10HTTPMethodE.exit, %bb.n
  %i.at = load ptr, ptr %8, align 8, !tbaa !92    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit82
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !93
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
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
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

bb.q:                                             ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %8, align 8, !tbaa !92    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.q
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !93
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.p
  %.pn = phi { ptr, i32 } [ %i.az, %bb.p ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %i.ba, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.ay, %bb.o ]
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  store i32 405, ptr %9, align 8, !tbaa !447
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !88
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.bi, align 8, !tbaa !94
  store i8 0, ptr %i.bh, align 8, !tbaa !93
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !448
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  store i64 1, ptr %i.bl, align 8, !tbaa !449
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bn, align 8, !tbaa !419
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
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !163 ; 2 uses
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
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !163 ; 2 uses
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
  %i.cj = load ptr, ptr %i.bm, align 8, !tbaa !450 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.ck, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.cj, %_ZNSt14_Function_baseD2Ev.exit2.i ] ; 6 uses
  %i.ck = load ptr, ptr %.06.i.i.i, align 8, !tbaa !233 ; 2 uses
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
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.cx = load ptr, ptr %i.bj, align 8, !tbaa !448
  %i.cy = load i64, ptr %i.bl, align 8, !tbaa !449
  %i.cz = shl i64 %i.cy, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cx, i8 0, i64 %i.cz, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.da = load ptr, ptr %i.bj, align 8, !tbaa !448 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.bk
  br i1 %i.db, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i
  %i.dc = load i64, ptr %i.bl, align 8, !tbaa !449
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
  %i.di = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.dj = icmp slt i32 %i.di, 2
  br i1 %i.dj, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %.critedge73
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %10)
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 376 ; 2 uses
  store i32 1, ptr %i.dk, align 8, !tbaa !214
  %i.dl = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %.not.i86 = icmp sgt i32 %i.dl, 1
  br i1 %.not.i86, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit90, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %10, ptr noundef nonnull @.str.355, i64 noundef 19)
          to label %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit unwind label %bb.ab ; 0 uses

_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit:           ; preds = %bb.z
  %.pre191 = load i32, ptr %i.dk, align 8, !tbaa !214
  %.pre192 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !205
  %i.dn = icmp slt i32 %.pre191, %.pre192
  br i1 %i.dn, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit90, label %bb.aa

bb.aa:                                            ; preds = %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit
  %i.do = load ptr, ptr %i.g, align 8, !tbaa !92
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 48
end_hunk_4
