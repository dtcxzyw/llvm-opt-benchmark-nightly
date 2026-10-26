Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCLoader?download=true
inline.NumInlined: 2494
inline.NumDeleted: 1209
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp11IFCImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i

bb.dy:                                            ; preds = %._crit_edge.i.i172.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tf, ptr align 1 %i.sz, i64 %i.tb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.dy, %bb.dx, %._crit_edge.i.i172.i
  %i.th = load i64, ptr %i.f, align 8             ; 2 uses
  store i64 %i.th, ptr %i.sg, align 8
  %i.ti = load ptr, ptr %9, align 8
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.th
  store i8 0, ptr %i.tj, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  br label %bb.dz

._crit_edge.i.i175.i:                             ; preds = %bb.dv
  store ptr %i.sf, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.sf, ptr noundef nonnull align 1 dereferenceable(7) @.str.52, i64 7, i1 false)
  store i64 7, ptr %i.sg, align 8
  store i8 0, ptr %i.sj, align 1
  br label %bb.dz

bb.dz:                                            ; preds = %._crit_edge.i.i175.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.tk = getelementptr inbounds nuw i8, ptr %i.st, i64 200
  %i.tl = load i8, ptr %i.tk, align 8, !range !14, !noundef !12
  %i.tm = trunc nuw i8 %i.tl to i1
  br i1 %i.tm, label %bb.ea, label %._crit_edge.i.i179.i

bb.ea:                                            ; preds = %bb.dz
  %i.tn = getelementptr inbounds nuw i8, ptr %i.st, i64 168
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.to = load ptr, ptr %i.tn, align 8, !noalias !51
  %i.tp = getelementptr inbounds nuw i8, ptr %i.st, i64 176
  %i.tq = load i64, ptr %i.tp, align 8, !noalias !51 ; 3 uses
  store ptr %i.sh, ptr %10, align 8, !alias.scope !52
  store i64 0, ptr %i.si, align 8, !alias.scope !52
  store i8 0, ptr %i.sh, align 8, !alias.scope !52
  %i.tr = add i64 %i.tq, 18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.tr)
          to label %bb.eb unwind label %.loopexit.split-lp322.i.loopexit.split-lp.loopexit.split-lp

bb.eb:                                            ; preds = %bb.ea
  %i.ts = load i64, ptr %i.si, align 8, !alias.scope !52
  %i.tt = add i64 %i.ts, -4611686018427387886
  %i.tu = icmp ult i64 %i.tt, 18
  br i1 %i.tu, label %.invoke.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.eb
  %i.tv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.54, i64 noundef 18)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i unwind label %.loopexit.split-lp322.i.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.tw = load i64, ptr %i.si, align 8, !alias.scope !52
  %i.tx = sub i64 4611686018427387903, %i.tw
  %i.ty = icmp ult i64 %i.tx, %i.tq
  br i1 %i.ty, label %.invoke.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i

.invoke.i.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i, %bb.eb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #30
          to label %.cont.i.i.i unwind label %.loopexit.split-lp322.i.loopexit.split-lp.loopexit.split-lp

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  %i.tz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.to, i64 noundef %i.tq)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i unwind label %.loopexit.split-lp322.i.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp322.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i, %.invoke.i.i.i
  %lpad.loopexit.split-lp867 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ua = load ptr, ptr %10, align 8, !alias.scope !52 ; 2 uses
  %i.ub = icmp eq ptr %i.ua, %i.sh
  br i1 %i.ub, label %.critedge124.i, label %.critedge124.i.sink.split

._crit_edge.i.i179.i:                             ; preds = %bb.dz
  store ptr %i.sh, ptr %10, align 8
  store i64 0, ptr %i.si, align 8
  store i8 0, ptr %i.sh, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i: ; preds = %._crit_edge.i.i179.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i
  %i.uc = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc183.i unwind label %bb.ep

.noexc183.i:                                      ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i
  br i1 %i.uc, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA31_KcKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S4_SC_EEEvDpOT_.exit.i, label %bb.ec

bb.ec:                                            ; preds = %.noexc183.i
  %i.ud = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc184.i unwind label %bb.ep

.noexc184.i:                                      ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store ptr @.str, ptr %i.e, align 8
  invoke void @_ZN6Assimp6Logger12verboseDebugIJPKcRA31_S2_KNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_SB_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ud, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(31) @.str.51, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 1 dereferenceable(2) @.str.53, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc185.i unwind label %bb.ep

.noexc185.i:                                      ; preds = %.noexc184.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA31_KcKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S4_SC_EEEvDpOT_.exit.i

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA31_KcKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S4_SC_EEEvDpOT_.exit.i: ; preds = %.noexc185.i, %.noexc183.i
  %i.ue = load ptr, ptr %10, align 8              ; 2 uses
  %i.uf = icmp eq ptr %i.ue, %i.sh
  br i1 %i.uf, label %.critedge.i279, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186.i: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA31_KcKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S4_SC_EEEvDpOT_.exit.i
  %i.ug = load i64, ptr %i.sh, align 8
  %i.uh = add i64 %i.ug, 1
  call void @_ZdlPvm(ptr noundef %i.ue, i64 noundef %i.uh) #32
  br label %.critedge.i279

.critedge.i279:                                   ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA31_KcKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S4_SC_EEEvDpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.ui = load ptr, ptr %9, align 8               ; 2 uses
  %i.uj = icmp eq ptr %i.ui, %i.sf
  br i1 %i.uj, label %.critedge122.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189.i: ; preds = %.critedge.i279
  %i.uk = load i64, ptr %i.sf, align 8
  %i.ul = add i64 %i.uk, 1
  call void @_ZdlPvm(ptr noundef %i.ui, i64 noundef %i.ul) #32
  br label %.critedge122.i

.critedge122.i:                                   ; preds = %.critedge.i279, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.um = load ptr, ptr %i.mq, align 8, !nonnull !12, !align !13 ; 4 uses
  %i.un = load ptr, ptr %i.mr, align 16, !nonnull !12, !align !13 ; 2 uses
  %i.uo = load ptr, ptr %i.un, align 8
  %i.up = getelementptr i8, ptr %i.uo, i64 -24
  %i.uq = load i64, ptr %i.up, align 8
  %i.ur = getelementptr inbounds i8, ptr %i.un, i64 %i.uq
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  %i.ut = load i64, ptr %i.us, align 8            ; 5 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.um, i64 216
  %i.uv = load i64, ptr %i.uu, align 8
  %.not.not.i.i.i.i = icmp eq i64 %i.uv, 0
  br i1 %.not.not.i.i.i.i, label %bb.ed, label %bb.eg

bb.ed:                                            ; preds = %.critedge122.i
  %i.uw = getelementptr inbounds nuw i8, ptr %i.um, i64 208
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ef, %bb.ed
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.uw, %bb.ed ], [ %.sroa.06.0.i.i.i.i, %bb.ef ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8 ; 4 uses
  %.not.i.i.i193.i = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %.not.i.i.i193.i, label %.loopexit316.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ux = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.uy = load i64, ptr %i.ux, align 8
  %i.uz = icmp eq i64 %i.ut, %i.uy
  br i1 %i.uz, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i.i, label %bb.ee, !llvm.loop !0

bb.eg:                                            ; preds = %.critedge122.i
  %i.va = getelementptr inbounds nuw i8, ptr %i.um, i64 192
  %i.vb = getelementptr inbounds nuw i8, ptr %i.um, i64 200
  %i.vc = load i64, ptr %i.vb, align 8            ; 2 uses
  %i.vd = urem i64 %i.ut, %i.vc                   ; 2 uses
  %i.ve = load ptr, ptr %i.va, align 8
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.ve, i64 %i.vd
  %i.vg = load ptr, ptr %i.vf, align 8            ; 2 uses
  %.not.i.i.i.i.i192.i = icmp eq ptr %i.vg, null
  br i1 %.not.i.i.i.i.i192.i, label %.loopexit316.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.vh = load ptr, ptr %i.vg, align 8            ; 3 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  %i.vj = load i64, ptr %i.vi, align 8
  %i.vk = icmp eq i64 %i.ut, %i.vj
  br i1 %i.vk, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.ei:                                            ; preds = %bb.ej
  %i.vl = icmp eq i64 %i.ut, %i.vo
  br i1 %i.vl, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.eh, %bb.ei
  %.020.i.i.i.i.i.i = phi ptr [ %i.vm, %bb.ei ], [ %i.vh, %bb.eh ]
  %i.vm = load ptr, ptr %.020.i.i.i.i.i.i, align 8 ; 4 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.vm, null
  br i1 %.not18.i.i.i.i.i.i, label %.loopexit316.i, label %bb.ej

bb.ej:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  %i.vo = load i64, ptr %i.vn, align 8            ; 2 uses
  %i.vp = urem i64 %i.vo, %i.vc
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.vp, %i.vd
  br i1 %.not19.i.i.i.i.i.i, label %bb.ei, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.ej
  br label %.loopexit316.i, !llvm.loop !1

_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i.i: ; preds = %bb.ei, %bb.ef, %bb.eh
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.ef ], [ %i.vh, %bb.eh ], [ %i.vm, %bb.ei ] ; 3 uses
  br label %bb.ek

bb.ek:                                            ; preds = %bb.el, %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i.i
  %.sroa.03.0.in.i.i.i = phi ptr [ %.sroa.06.1.i.i.i.i, %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i.i ], [ %.sroa.03.0.i.i.i, %bb.el ]
  %.sroa.03.0.i.i.i = load ptr, ptr %.sroa.03.0.in.i.i.i, align 8 ; 5 uses
  %.not2.i.i.i = icmp eq ptr %.sroa.03.0.i.i.i, null
  br i1 %.not2.i.i.i, label %.loopexit317.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.vq = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i, i64 8
  %i.vr = load i64, ptr %i.vq, align 8
  %i.vs = icmp eq i64 %i.ut, %i.vr
  br i1 %i.vs, label %bb.ek, label %.loopexit317.i, !llvm.loop !2

.loopexit317.i:                                   ; preds = %bb.el, %bb.ek
  %.not308414.i = icmp eq ptr %.sroa.06.1.i.i.i.i, %.sroa.03.0.i.i.i
  br i1 %.not308414.i, label %.loopexit316.i, label %.lr.ph419.i

.lr.ph419.i:                                      ; preds = %.loopexit317.i, %.loopexit310.i
  %.sroa.0261.0418.i = phi ptr [ %i.yx, %.loopexit310.i ], [ %.sroa.06.1.i.i.i.i, %.loopexit317.i ] ; 2 uses
  %.sroa.0270.1417.i = phi ptr [ %.sroa.0270.4.i, %.loopexit310.i ], [ %.sroa.0270.0427.i, %.loopexit317.i ] ; 4 uses
  %.sroa.24.1416.i = phi ptr [ %.sroa.24.4.i, %.loopexit310.i ], [ %.sroa.24.0425.i, %.loopexit317.i ] ; 4 uses
  %.sroa.14.1415.i = phi ptr [ %.sroa.14.4.i, %.loopexit310.i ], [ %.sroa.14.0424.i, %.loopexit317.i ] ; 3 uses
  %i.vt = load ptr, ptr %i.mq, align 8, !nonnull !12, !align !13 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.0261.0418.i, i64 16
  %i.vv = load i64, ptr %i.vu, align 8            ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vt, i64 112
  %i.vx = load ptr, ptr %i.vw, align 8, !nonnull !12, !noundef !12
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vt, i64 104 ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph419.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.vx, %.lr.ph419.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.vy, %.lr.ph419.i ]
  %i.vz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.wa = load i64, ptr %i.vz, align 8
  %i.wb = icmp ult i64 %i.wa, %i.vv               ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.wb, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.wb, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i282 = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i282, label %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.wc = icmp ne ptr %.19.i.i.i.i.i, %i.vy
  call void @llvm.assume(i1 %i.wc)
  %i.wd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.we = load i64, ptr %i.wd, align 8
  %i.wf = icmp uge i64 %i.vv, %i.we
  call void @llvm.assume(i1 %i.wf)
  %i.wg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.wh = load ptr, ptr %i.wg, align 8            ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 32 ; 2 uses
  %i.wj = load ptr, ptr %i.wi, align 8            ; 2 uses
  %.not.i.i194.i = icmp eq ptr %i.wj, null
  br i1 %.not.i.i194.i, label %bb.em, label %bb.en

bb.em:                                            ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.wh)
          to label %.noexc196.i unwind label %bb.eq

.noexc196.i:                                      ; preds = %bb.em
  %.pre.i.i195.i = load ptr, ptr %i.wi, align 8
  br label %bb.en

bb.en:                                            ; preds = %.noexc196.i, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.wk = phi ptr [ %.pre.i.i195.i, %.noexc196.i ], [ %i.wj, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i ]
  %i.wl = call noundef ptr @__dynamic_cast(ptr nonnull %i.wk, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x316IfcRelAggregatesE, i64 -1) #28 ; 3 uses
  %.not113.i = icmp eq ptr %i.wl, null
  br i1 %.not113.i, label %.loopexit310.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 176
  %i.wn = load ptr, ptr %i.wm, align 8            ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wl, i64 184
  %i.wp = load ptr, ptr %i.wo, align 8            ; 2 uses
  %.not309407.i = icmp eq ptr %i.wn, %i.wp
  br i1 %.not309407.i, label %.loopexit310.i, label %.lr.ph.i283

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.thread.i: ; preds = %.noexc.i173.i
  %i.wq = landingpad { ptr, i32 }
          cleanup
  br label %.critedge126.i

bb.ep:                                            ; preds = %.noexc184.i, %bb.ec, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i
  %i.wr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ws = load ptr, ptr %10, align 8              ; 2 uses
  %i.wt = icmp eq ptr %i.ws, %i.sh
  br i1 %i.wt, label %.critedge124.i, label %.critedge124.i.sink.split

.critedge124.i.sink.split:                        ; preds = %bb.ep, %.loopexit.split-lp322.i.loopexit.split-lp.loopexit.split-lp
  %.sink851 = phi ptr [ %i.ua, %.loopexit.split-lp322.i.loopexit.split-lp.loopexit.split-lp ], [ %i.ws, %bb.ep ]
  %.pn108.pn.i.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp867, %.loopexit.split-lp322.i.loopexit.split-lp.loopexit.split-lp ], [ %i.wr, %bb.ep ]
  %i.wu = load i64, ptr %i.sh, align 8
  %i.wv = add i64 %i.wu, 1
  call void @_ZdlPvm(ptr noundef %.sink851, i64 noundef %i.wv) #32
  br label %.critedge124.i

.critedge124.i:                                   ; preds = %.critedge124.i.sink.split, %bb.ep, %.loopexit.split-lp322.i.loopexit.split-lp.loopexit.split-lp
  %.pn108.pn.i = phi { ptr, i32 } [ %i.wr, %bb.ep ], [ %lpad.loopexit.split-lp867, %.loopexit.split-lp322.i.loopexit.split-lp.loopexit.split-lp ], [ %.pn108.pn.i.ph, %.critedge124.i.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.ww = load ptr, ptr %9, align 8               ; 2 uses
  %i.wx = icmp eq ptr %i.ww, %i.sf
  br i1 %i.wx, label %.critedge126.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200.i: ; preds = %.critedge124.i
  %i.wy = load i64, ptr %i.sf, align 8
  %i.wz = add i64 %i.wy, 1
  call void @_ZdlPvm(ptr noundef %i.ww, i64 noundef %i.wz) #32
  br label %.critedge126.i

.critedge126.i:                                   ; preds = %.critedge124.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.thread.i
  %.pn108.pn.pn.pn.i = phi { ptr, i32 } [ %.pn108.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200.i ], [ %i.wq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.thread.i ], [ %.pn108.pn.i, %.critedge124.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.body207.i

bb.eq:                                            ; preds = %bb.em
  %i.xa = landingpad { ptr, i32 }
          cleanup
  br label %.body207.i

.lr.ph.i283:                                      ; preds = %bb.eo, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i
  %.sroa.0257.0411.i = phi ptr [ %i.yw, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i ], [ %i.wn, %bb.eo ] ; 2 uses
  %.sroa.0270.2410.i = phi ptr [ %.sroa.0270.3.i, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i ], [ %.sroa.0270.1417.i, %bb.eo ] ; 10 uses
  %.sroa.24.2409.i = phi ptr [ %.sroa.24.3.i, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i ], [ %.sroa.24.1416.i, %bb.eo ] ; 8 uses
  %.sroa.14.2408.i = phi ptr [ %.sroa.14.3.i, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i ], [ %.sroa.14.1415.i, %bb.eo ] ; 4 uses
  %i.xb = load ptr, ptr %.sroa.0257.0411.i, align 8 ; 3 uses
  %i.xc = icmp eq ptr %i.xb, null
  br i1 %i.xc, label %bb.er, label %bb.ew

bb.er:                                            ; preds = %.lr.ph.i283
  %i.xd = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.es unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.es:                                            ; preds = %bb.er
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.xd, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.et unwind label %bb.eu

bb.et:                                            ; preds = %bb.es
  invoke void @__cxa_throw(ptr nonnull %i.xd, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ez unwind label %bb.eu

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.er
  %i.xe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.ev

bb.eu:                                            ; preds = %bb.et, %bb.es
  %.0.i204.i = phi i1 [ false, %bb.et ], [ true, %bb.es ] ; 2 uses
  %i.xf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.xg = load ptr, ptr %5, align 8               ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.xi = icmp eq ptr %i.xg, %i.xh
  br i1 %i.xi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284: ; preds = %bb.eu
  %i.xj = load i64, ptr %i.xh, align 8
  %i.xk = add i64 %i.xj, 1
  call void @_ZdlPvm(ptr noundef %i.xg, i64 noundef %i.xk) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.0.i204.i, label %bb.ev, label %.body207.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.0.i204.i, label %bb.ev, label %.body207.i

bb.ev:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn10.i.i = phi { ptr, i32 } [ %i.xe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.xf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.xf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284 ]
  call void @__cxa_free_exception(ptr %i.xd) #28
  br label %.body207.i

bb.ew:                                            ; preds = %.lr.ph.i283
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xb, i64 32 ; 2 uses
  %i.xm = load ptr, ptr %i.xl, align 8            ; 2 uses
  %.not.i.i.i203.i = icmp eq ptr %i.xm, null
  br i1 %.not.i.i.i203.i, label %bb.ex, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i.i

bb.ex:                                            ; preds = %bb.ew
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.xb)
          to label %.noexc205.i unwind label %.loopexit.split-lp312.i.loopexit.split-lp.loopexit.split-lp

.noexc205.i:                                      ; preds = %bb.ex
  %.pre.i.i.i.i = load ptr, ptr %i.xl, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i.i

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i.i:      ; preds = %.noexc205.i, %bb.ew
  %i.xn = phi ptr [ %.pre.i.i.i.i, %.noexc205.i ], [ %i.xm, %bb.ew ]
  %i.xo = call ptr @__dynamic_cast(ptr nonnull %i.xn, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x319IfcObjectDefinitionE, i64 -1) #28 ; 3 uses
  %i.xp = icmp eq ptr %i.xo, null
  br i1 %i.xp, label %bb.ey, label %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEcvRKS4_Ev.exit.i

bb.ey:                                            ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i.i
  invoke void @__cxa_bad_cast() #30
          to label %.noexc206.i unwind label %.loopexit.split-lp312.i.loopexit.split-lp.loopexit.split-lp

.noexc206.i:                                      ; preds = %bb.ey
  unreachable

bb.ez:                                            ; preds = %bb.et
  unreachable

_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEcvRKS4_Ev.exit.i: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i.i
  %i.xq = load ptr, ptr %i.xo, align 8
  %i.xr = getelementptr i8, ptr %i.xq, i64 -24
  %i.xs = load i64, ptr %i.xr, align 8
  %i.xt = getelementptr inbounds i8, ptr %i.xo, i64 %i.xs
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  %i.xv = load i64, ptr %i.xu, align 8
  %i.xw = load ptr, ptr %i.st, align 8
  %i.xx = getelementptr i8, ptr %i.xw, i64 -24
  %i.xy = load i64, ptr %i.xx, align 8
  %i.xz = getelementptr inbounds i8, ptr %i.st, i64 %i.xy
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  %i.yb = load i64, ptr %i.ya, align 8
  %i.yc = icmp eq i64 %i.xv, %i.yb
  br i1 %i.yc, label %bb.fa, label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i

bb.fa:                                            ; preds = %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEcvRKS4_Ev.exit.i
  %i.yd = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc209.i unwind label %.loopexit.split-lp312.i.loopexit.split-lp.loopexit.split-lp

.noexc209.i:                                      ; preds = %bb.fa
  br i1 %i.yd, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA51_KcEEEvDpOT_.exit.i, label %bb.fb

bb.fb:                                            ; preds = %.noexc209.i
  %i.ye = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc210.i unwind label %.loopexit.split-lp312.i.loopexit.split-lp.loopexit.split-lp

.noexc210.i:                                      ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store ptr @.str, ptr %i.d, align 8
  invoke void @_ZN6Assimp6Logger12verboseDebugIJPKcRA51_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ye, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(51) @.str.55)
          to label %.noexc211.i unwind label %.loopexit.split-lp312.i.loopexit.split-lp.loopexit.split-lp

.noexc211.i:                                      ; preds = %.noexc210.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA51_KcEEEvDpOT_.exit.i

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA51_KcEEEvDpOT_.exit.i: ; preds = %.noexc211.i, %.noexc209.i
  %i.yf = invoke fastcc noundef ptr @_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(256) %i.st, ptr noundef nonnull align 8 dereferenceable(392) %26, ptr noundef null)
          to label %bb.fc unwind label %.loopexit.split-lp312.i.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.fc:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA51_KcEEEvDpOT_.exit.i
  %.not.i.i212.i = icmp eq ptr %.sroa.14.2408.i, %.sroa.24.2409.i
  br i1 %.not.i.i212.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  store ptr %i.yf, ptr %.sroa.14.2408.i, align 8
  %i.yg = getelementptr inbounds nuw i8, ptr %.sroa.14.2408.i, i64 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i

bb.fe:                                            ; preds = %bb.fc
  %i.yh = ptrtoint ptr %.sroa.24.2409.i to i64
  %i.yi = ptrtoint ptr %.sroa.0270.2410.i to i64
  %i.yj = sub i64 %i.yh, %i.yi                    ; 6 uses
  %i.yk = icmp eq i64 %i.yj, 9223372036854775800
  br i1 %i.yk, label %bb.ff, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #30
          to label %.noexc214.i unwind label %.loopexit.split-lp312.i.loopexit.split-lp.loopexit.split-lp

.noexc214.i:                                      ; preds = %bb.ff
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.fe
  %i.yl = ashr exact i64 %i.yj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.yl, i64 1)
  %i.ym = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.yl ; 2 uses
  %i.yn = icmp ult i64 %i.ym, %i.yl
  %i.yo = call i64 @llvm.umin.i64(i64 %i.ym, i64 1152921504606846975)
  %i.yp = select i1 %i.yn, i64 1152921504606846975, i64 %i.yo ; 3 uses
  %.not.i.i.i.i213.i = icmp ne i64 %i.yp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i213.i)
  %i.yq = shl nuw nsw i64 %i.yp, 3
  %i.yr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yq) #29
          to label %.noexc215.i unwind label %.loopexit.split-lp312.i.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc215.i:                                      ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ys = getelementptr inbounds i8, ptr %i.yr, i64 %i.yj ; 2 uses
  store ptr %i.yf, ptr %i.ys, align 8
  %i.yt = icmp sgt i64 %i.yj, 0
  br i1 %i.yt, label %bb.fg, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i

bb.fg:                                            ; preds = %.noexc215.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yr, ptr align 8 %.sroa.0270.2410.i, i64 %i.yj, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i: ; preds = %bb.fg, %.noexc215.i
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.0270.2410.i, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.fh

bb.fh:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0270.2410.i, i64 noundef %i.yj) #32
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.fh, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i
  %i.yv = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %i.yp
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i

.loopexit.split-lp312.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ex, %bb.fa, %bb.fb, %.noexc210.i, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA51_KcEEEvDpOT_.exit.i, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.ff, %bb.ey
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body207.i

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, %bb.fd, %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEcvRKS4_Ev.exit.i
  %.sroa.14.3.i = phi ptr [ %.sroa.14.2408.i, %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEcvRKS4_Ev.exit.i ], [ %i.yu, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %i.yg, %bb.fd ] ; 2 uses
  %.sroa.24.3.i = phi ptr [ %.sroa.24.2409.i, %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEcvRKS4_Ev.exit.i ], [ %i.yv, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %.sroa.24.2409.i, %bb.fd ] ; 2 uses
  %.sroa.0270.3.i = phi ptr [ %.sroa.0270.2410.i, %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEcvRKS4_Ev.exit.i ], [ %i.yr, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %.sroa.0270.2410.i, %bb.fd ] ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %.sroa.0257.0411.i, i64 8 ; 2 uses
  %.not309.i = icmp eq ptr %i.yw, %i.wp
  br i1 %.not309.i, label %.loopexit310.i, label %.lr.ph.i283

.loopexit310.i:                                   ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i, %bb.eo, %bb.en
  %.sroa.14.4.i = phi ptr [ %.sroa.14.1415.i, %bb.en ], [ %.sroa.14.1415.i, %bb.eo ], [ %.sroa.14.3.i, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i ] ; 2 uses
  %.sroa.24.4.i = phi ptr [ %.sroa.24.1416.i, %bb.en ], [ %.sroa.24.1416.i, %bb.eo ], [ %.sroa.24.3.i, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i ] ; 2 uses
  %.sroa.0270.4.i = phi ptr [ %.sroa.0270.1417.i, %bb.en ], [ %.sroa.0270.1417.i, %bb.eo ], [ %.sroa.0270.3.i, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i ] ; 2 uses
  %i.yx = load ptr, ptr %.sroa.0261.0418.i, align 8 ; 2 uses
  %.not308.i = icmp eq ptr %i.yx, %.sroa.03.0.i.i.i
  br i1 %.not308.i, label %.loopexit316.i, label %.lr.ph419.i, !llvm.loop !39

.loopexit316.i:                                   ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ee, %.loopexit310.i, %.loopexit317.i, %..loopexit_crit_edge21.i.i.i.i.i.i, %bb.eg, %bb.dt
  %.sroa.14.5.i = phi ptr [ %.sroa.14.0424.i, %bb.dt ], [ %.sroa.14.0424.i, %.loopexit317.i ], [ %.sroa.14.4.i, %.loopexit310.i ], [ %.sroa.14.0424.i, %..loopexit_crit_edge21.i.i.i.i.i.i ], [ %.sroa.14.0424.i, %bb.ee ], [ %.sroa.14.0424.i, %bb.eg ], [ %.sroa.14.0424.i, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  %.sroa.24.5.i = phi ptr [ %.sroa.24.0425.i, %bb.dt ], [ %.sroa.24.0425.i, %.loopexit317.i ], [ %.sroa.24.4.i, %.loopexit310.i ], [ %.sroa.24.0425.i, %..loopexit_crit_edge21.i.i.i.i.i.i ], [ %.sroa.24.0425.i, %bb.ee ], [ %.sroa.24.0425.i, %bb.eg ], [ %.sroa.24.0425.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0270.5.i = phi ptr [ %.sroa.0270.0427.i, %bb.dt ], [ %.sroa.0270.0427.i, %.loopexit317.i ], [ %.sroa.0270.4.i, %.loopexit310.i ], [ %.sroa.0270.0427.i, %..loopexit_crit_edge21.i.i.i.i.i.i ], [ %.sroa.0270.0427.i, %bb.ee ], [ %.sroa.0270.0427.i, %bb.eg ], [ %.sroa.0270.0427.i, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %i.yy = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0267.0426.i) #34 ; 2 uses
  %.not.i280 = icmp eq ptr %i.yy, %i.se
  br i1 %.not.i280, label %._crit_edge.i, label %bb.dr

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.dq
  %.sroa.0270.0.lcssa562.i = phi ptr [ %.sroa.0270.5.i, %._crit_edge.i ], [ null, %bb.dq ] ; 5 uses
  %.sroa.24.0.lcssa561.i = phi ptr [ %.sroa.24.5.i, %._crit_edge.i ], [ null, %bb.dq ] ; 5 uses
  %.sroa.14.0.lcssa560.i = phi ptr [ %.sroa.14.5.i, %._crit_edge.i ], [ null, %bb.dq ]
  %i.yz = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc216.i unwind label %bb.fj

.noexc216.i:                                      ; preds = %._crit_edge.thread.i
  br i1 %i.yz, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA65_KcEEEvDpOT_.exit.i, label %bb.fi

bb.fi:                                            ; preds = %.noexc216.i
  %i.za = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc217.i unwind label %bb.fj

.noexc217.i:                                      ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr @.str, ptr %i.c, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA65_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.za, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(65) @.str.56)
          to label %.noexc218.i unwind label %bb.fj

.noexc218.i:                                      ; preds = %.noexc217.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA65_KcEEEvDpOT_.exit.i

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA65_KcEEEvDpOT_.exit.i: ; preds = %.noexc218.i, %.noexc216.i
  %i.zb = load ptr, ptr %i.sc, align 8            ; 2 uses
  %.not307432.i = icmp eq ptr %i.zb, %i.se
  br i1 %.not307432.i, label %._crit_edge438.thread.i, label %.lr.ph437.i

._crit_edge438.loopexit.i:                        ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit232.i
  %.pre505.i = ptrtoint ptr %.sroa.14.7.i to i64
  %.pre506.i = ptrtoint ptr %.sroa.0270.10.i to i64
  %.pre508.i = sub i64 %.pre505.i, %.pre506.i
  br label %._crit_edge438.i

bb.fj:                                            ; preds = %bb.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.i, %bb.ft, %.noexc217.i, %bb.fi, %._crit_edge.thread.i
  %.sroa.24.9.i = phi ptr [ %.sroa.24.11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.i ], [ %.sroa.24.11.i, %bb.ft ], [ %.sroa.24.11570.i, %bb.fx ], [ %.sroa.24.0.lcssa561.i, %.noexc217.i ], [ %.sroa.24.0.lcssa561.i, %bb.fi ], [ %.sroa.24.0.lcssa561.i, %._crit_edge.thread.i ]
  %.sroa.0270.9.i = phi ptr [ %.sroa.0270.11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.i ], [ %.sroa.0270.11.i, %bb.ft ], [ %.sroa.0270.11572.i, %bb.fx ], [ %.sroa.0270.0.lcssa562.i, %.noexc217.i ], [ %.sroa.0270.0.lcssa562.i, %bb.fi ], [ %.sroa.0270.0.lcssa562.i, %._crit_edge.thread.i ]
  %i.zc = landingpad { ptr, i32 }
          cleanup
  br label %.body207.i

.lr.ph437.i:                                      ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA65_KcEEEvDpOT_.exit.i, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit232.i
  %.sroa.0251.0436.i = phi ptr [ %i.aaa, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit232.i ], [ %i.zb, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA65_KcEEEvDpOT_.exit.i ] ; 2 uses
  %.sroa.0270.8435.i = phi ptr [ %.sroa.0270.10.i, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit232.i ], [ %.sroa.0270.0.lcssa562.i, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA65_KcEEEvDpOT_.exit.i ] ; 7 uses
  %.sroa.24.8434.i = phi ptr [ %.sroa.24.10.i, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit232.i ], [ %.sroa.24.0.lcssa561.i, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA65_KcEEEvDpOT_.exit.i ] ; 5 uses
  %.sroa.14.6433.i = phi ptr [ %.sroa.14.7.i, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit232.i ], [ %.sroa.14.0.lcssa560.i, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA65_KcEEEvDpOT_.exit.i ] ; 4 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.sroa.0251.0436.i, i64 32
  %i.ze = load ptr, ptr %i.zd, align 8            ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 32 ; 2 uses
  %i.zg = load ptr, ptr %i.zf, align 8            ; 2 uses
  %.not.i.i219.i = icmp eq ptr %i.zg, null
  br i1 %.not.i.i219.i, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %.lr.ph437.i
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ze)
          to label %.noexc221.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

.noexc221.i:                                      ; preds = %bb.fk
  %.pre.i.i220.i = load ptr, ptr %i.zf, align 8
  br label %bb.fl

bb.fl:                                            ; preds = %.noexc221.i, %.lr.ph437.i
  %i.zh = phi ptr [ %.pre.i.i220.i, %.noexc221.i ], [ %i.zg, %.lr.ph437.i ]
  %i.zi = call noundef ptr @__dynamic_cast(ptr nonnull %i.zh, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x326IfcSpatialStructureElementE, i64 -1) #28 ; 2 uses
  %.not103.i = icmp eq ptr %i.zi, null
  br i1 %.not103.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit232.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.zj = invoke fastcc noundef ptr @_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(256) %i.zi, ptr noundef nonnull align 8 dereferenceable(392) %26, ptr noundef null)
          to label %bb.fn unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.fn:                                            ; preds = %bb.fm
  %.not.i.i223.i = icmp eq ptr %.sroa.14.6433.i, %.sroa.24.8434.i
  br i1 %.not.i.i223.i, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  store ptr %i.zj, ptr %.sroa.14.6433.i, align 8
  %i.zk = getelementptr inbounds nuw i8, ptr %.sroa.14.6433.i, i64 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit232.i

bb.fp:                                            ; preds = %bb.fn
  %i.zl = ptrtoint ptr %.sroa.24.8434.i to i64
  %i.zm = ptrtoint ptr %.sroa.0270.8435.i to i64
  %i.zn = sub i64 %i.zl, %i.zm                    ; 6 uses
  %i.zo = icmp eq i64 %i.zn, 9223372036854775800
  br i1 %i.zo, label %bb.fq, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i224.i

bb.fq:                                            ; preds = %bb.fp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #30
          to label %.noexc230.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

.noexc230.i:                                      ; preds = %bb.fq
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i224.i: ; preds = %bb.fp
  %i.zp = ashr exact i64 %i.zn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i225.i = call i64 @llvm.umax.i64(i64 %i.zp, i64 1)
  %i.zq = add nsw i64 %.sroa.speculated.i.i.i.i225.i, %i.zp ; 2 uses
  %i.zr = icmp ult i64 %i.zq, %i.zp
  %i.zs = call i64 @llvm.umin.i64(i64 %i.zq, i64 1152921504606846975)
  %i.zt = select i1 %i.zr, i64 1152921504606846975, i64 %i.zs ; 3 uses
  %.not.i.i.i.i226.i = icmp ne i64 %i.zt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i226.i)
  %i.zu = shl nuw nsw i64 %i.zt, 3
  %i.zv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zu) #29
          to label %.noexc231.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc231.i:                                      ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i224.i
  %i.zw = getelementptr inbounds i8, ptr %i.zv, i64 %i.zn ; 2 uses
  store ptr %i.zj, ptr %i.zw, align 8
  %i.zx = icmp sgt i64 %i.zn, 0
  br i1 %i.zx, label %bb.fr, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i227.i

bb.fr:                                            ; preds = %.noexc231.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zv, ptr align 8 %.sroa.0270.8435.i, i64 %i.zn, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i227.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i227.i: ; preds = %bb.fr, %.noexc231.i
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 8
  %.not.i17.i.i.i228.i = icmp eq ptr %.sroa.0270.8435.i, null
  br i1 %.not.i17.i.i.i228.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i229.i, label %bb.fs

bb.fs:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i227.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0270.8435.i, i64 noundef %i.zn) #32
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i229.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i229.i: ; preds = %bb.fs, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i227.i
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.zv, i64 %i.zt
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit232.i

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit232.i: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i229.i, %bb.fo, %bb.fl
  %.sroa.14.7.i = phi ptr [ %.sroa.14.6433.i, %bb.fl ], [ %i.zy, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i229.i ], [ %i.zk, %bb.fo ] ; 2 uses
  %.sroa.24.10.i = phi ptr [ %.sroa.24.8434.i, %bb.fl ], [ %i.zz, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i229.i ], [ %.sroa.24.8434.i, %bb.fo ] ; 2 uses
  %.sroa.0270.10.i = phi ptr [ %.sroa.0270.8435.i, %bb.fl ], [ %i.zv, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i229.i ], [ %.sroa.0270.8435.i, %bb.fo ] ; 3 uses
  %i.aaa = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0251.0436.i) #34 ; 2 uses
  %.not307.i = icmp eq ptr %i.aaa, %i.se
  br i1 %.not307.i, label %._crit_edge438.loopexit.i, label %.lr.ph437.i

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fk, %bb.fm, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i224.i, %bb.fq
  %lpad.loopexit.split-lp854 = landingpad { ptr, i32 }
          cleanup
  br label %.body207.i

._crit_edge438.i:                                 ; preds = %._crit_edge438.loopexit.i, %._crit_edge.i
  %.sroa.24.11.i = phi ptr [ %.sroa.24.5.i, %._crit_edge.i ], [ %.sroa.24.10.i, %._crit_edge438.loopexit.i ] ; 5 uses
  %.sroa.0270.11.i = phi ptr [ %.sroa.0270.5.i, %._crit_edge.i ], [ %.sroa.0270.10.i, %._crit_edge438.loopexit.i ] ; 11 uses
  %.066.in.i = phi i64 [ %i.sm, %._crit_edge.i ], [ %.pre508.i, %._crit_edge438.loopexit.i ] ; 3 uses
  %.066.i = ashr exact i64 %.066.in.i, 3          ; 4 uses
  switch i64 %.066.i, label %bb.ft [
    i64 1, label %.thread.i281
    i64 0, label %._crit_edge438.thread.i
  ]

.thread.i281:                                     ; preds = %._crit_edge438.i
  %i.aab = load ptr, ptr %.sroa.0270.11.i, align 8
  %i.aac = load ptr, ptr %i.ms, align 8
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  store ptr %i.aab, ptr %i.aad, align 8
  br label %._crit_edge445.thread.i

bb.ft:                                            ; preds = %._crit_edge438.i
  %i.aae = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #29
          to label %._crit_edge.i.i233.i unwind label %bb.fj ; 3 uses

._crit_edge.i.i233.i:                             ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.aaf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.aaf, ptr %11, align 8
  store i32 1953460050, ptr %i.aaf, align 8
  %i.aag = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 4, ptr %i.aag, align 8
  %i.aah = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i8 0, ptr %i.aah, align 4
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.aae, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.fu unwind label %bb.fw

bb.fu:                                            ; preds = %._crit_edge.i.i233.i
  %i.aai = load ptr, ptr %i.ms, align 8
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 8
  store ptr %i.aae, ptr %i.aaj, align 8
  %i.aak = load ptr, ptr %11, align 8             ; 2 uses
  %i.aal = icmp eq ptr %i.aak, %i.aaf
  br i1 %i.aal, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237.i: ; preds = %bb.fu
  %i.aam = load i64, ptr %i.aaf, align 8
  %i.aan = add i64 %i.aam, 1
  call void @_ZdlPvm(ptr noundef %i.aak, i64 noundef %i.aan) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.i
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eu = load i64, ptr %i.dd, align 8
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  %i.ew = load ptr, ptr %29, align 8              ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.co
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207
  %i.ey = load i64, ptr %i.co, align 8
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  %i.fa = load ptr, ptr %32, align 8              ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  %i.fd = load i64, ptr %i.fb, align 8
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #32
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  %i.ff = load ptr, ptr %30, align 8              ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.bc
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214: ; preds = %.critedge
  %i.fh = load i64, ptr %i.bc, align 8
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214
  %i.fj = load ptr, ptr %31, align 8              ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.an
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216
  %i.fl = load i64, ptr %i.an, align 8
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ag, i64 1096
  store ptr %0, ptr %i.fn, align 8
  %i.fo = load ptr, ptr %1, align 8
  %i.fp = getelementptr i8, ptr %i.fo, i64 -24
  %i.fq = load i64, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds i8, ptr %1, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load i64, ptr %i.fs, align 8            ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 13 uses
  %.02022.i.i.i = load ptr, ptr %i.fu, align 8    ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ] ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.fx = load i64, ptr %i.fw, align 8            ; 2 uses
  %i.fy = icmp ult i64 %i.ft, %i.fx               ; 2 uses
  %.in.v.i.i.i = select i1 %i.fy, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i220, label %.lr.ph.i.i.i, !llvm.loop !181

._crit_edge.i.i.i220:                             ; preds = %.lr.ph.i.i.i
  br i1 %i.fy, label %._crit_edge.thread.i.i.i, label %bb.ae

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i220, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i220 ], [ %i.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ] ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 368
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = icmp eq ptr %.019.lcssa29.i.i.i, %i.ga
  br i1 %i.gb, label %select.unfold.i.i, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.gc = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #34
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge.i.i.i220
  %i.gd = phi i64 [ %.pre.i.i, %bb.ad ], [ %i.fx, %._crit_edge.i.i.i220 ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.ad ], [ %.02024.i.i.i, %._crit_edge.i.i.i220 ]
  %i.ge = icmp ult i64 %i.gd, %i.ft
  br i1 %i.ge, label %select.unfold.i.i, label %_ZNSt3setImSt4lessImESaImEE6insertEOm.exit

select.unfold.i.i:                                ; preds = %bb.ae, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.ae ] ; 3 uses
  %i.gf = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.fv
  br i1 %i.gf, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %select.unfold.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = icmp ult i64 %i.ft, %i.gh
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i: ; preds = %bb.af, %select.unfold.i.i
  %i.gj = phi i1 [ %i.gi, %bb.af ], [ true, %select.unfold.i.i ]
  %i.gk = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  store i64 %i.ft, ptr %i.gl, align 8
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gj, ptr noundef nonnull %i.gk, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.fv) #28
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 384 ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = add i64 %i.gn, 1
  store i64 %i.go, ptr %i.gm, align 8
  %.pre1380 = load ptr, ptr %1, align 8
  %.phi.trans.insert1381 = getelementptr i8, ptr %.pre1380, i64 -24
  %.pre1382 = load i64, ptr %.phi.trans.insert1381, align 8
  %.phi.trans.insert1383 = getelementptr inbounds i8, ptr %1, i64 %.pre1382
  %.phi.trans.insert1384 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert1383, i64 8
  %.pre1385 = load i64, ptr %.phi.trans.insert1384, align 8
  br label %_ZNSt3setImSt4lessImESaImEE6insertEOm.exit

_ZNSt3setImSt4lessImESaImEE6insertEOm.exit:       ; preds = %bb.ae, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i
  %i.gp = phi i64 [ %i.ft, %bb.ae ], [ %.pre1385, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i ] ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.i, i64 216 ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8
  %.not.not.i.i.i = icmp eq i64 %i.gr, 0
  br i1 %.not.not.i.i.i, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %_ZNSt3setImSt4lessImESaImEE6insertEOm.exit
  %i.gs = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.gs, %bb.ag ], [ %.sroa.06.0.i.i.i, %bb.ai ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8 ; 4 uses
  %.not.i.i.i224 = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i224, label %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.gu = load i64, ptr %i.gt, align 8
  %i.gv = icmp eq i64 %i.gp, %i.gu
  br i1 %i.gv, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, label %bb.ah, !llvm.loop !0

bb.aj:                                            ; preds = %_ZNSt3setImSt4lessImESaImEE6insertEOm.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.gx = load i64, ptr %i.gw, align 8            ; 2 uses
  %i.gy = urem i64 %i.gp, %i.gx                   ; 2 uses
  %i.gz = load ptr, ptr %i.j, align 8
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.gy
  %i.hb = load ptr, ptr %i.ha, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hc = load ptr, ptr %i.hb, align 8            ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load i64, ptr %i.hd, align 8
  %i.hf = icmp eq i64 %i.gp, %i.he
  br i1 %i.hf, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, label %.lr.ph.i.i.i.i.i

bb.al:                                            ; preds = %bb.am
  %i.hg = icmp eq i64 %i.gp, %i.hj
  br i1 %i.hg, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ak, %bb.al
  %.020.i.i.i.i.i = phi ptr [ %i.hh, %bb.al ], [ %i.hc, %bb.ak ]
  %i.hh = load ptr, ptr %.020.i.i.i.i.i, align 8  ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.hh, null
  br i1 %.not18.i.i.i.i.i, label %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit.thread, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load i64, ptr %i.hi, align 8            ; 2 uses
  %i.hk = urem i64 %i.hj, %i.gx
  %.not19.i.i.i.i.i = icmp eq i64 %i.hk, %i.gy
  br i1 %.not19.i.i.i.i.i, label %bb.al, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.am
  br label %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit.thread, !llvm.loop !1

_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i: ; preds = %bb.al, %bb.ai, %bb.ak
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.ai ], [ %i.hc, %bb.ak ], [ %i.hh, %bb.al ] ; 5 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i
  %.sroa.03.0.in.i.i = phi ptr [ %.sroa.06.1.i.i.i, %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i ], [ %.sroa.03.0.i.i, %bb.ao ]
  %.sroa.03.0.i.i = load ptr, ptr %.sroa.03.0.in.i.i, align 8 ; 5 uses
  %.not2.i.i = icmp eq ptr %.sroa.03.0.i.i, null
  br i1 %.not2.i.i, label %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i, i64 8
  %i.hm = load i64, ptr %i.hl, align 8
  %i.hn = icmp eq i64 %i.gp, %i.hm
  br i1 %i.hn, label %bb.an, label %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit, !llvm.loop !2

_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit: ; preds = %bb.an, %bb.ao
  %.not511 = icmp eq ptr %.sroa.06.1.i.i.i, null
  br i1 %.not511, label %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  %i.ho = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 5 uses
  store i32 0, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  store ptr null, ptr %i.hp, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %33, i64 24 ; 2 uses
  store ptr %i.ho, ptr %i.hq, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %33, i64 32
  store ptr %i.ho, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %33, i64 40 ; 2 uses
  store i64 0, ptr %i.hs, align 8
  %i.ht = icmp eq ptr %.sroa.06.1.i.i.i, %.sroa.03.0.i.i
  br i1 %i.ht, label %bb.aq, label %.preheader585

bb.aq:                                            ; preds = %bb.ap
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.hv = load i64, ptr %i.hu, align 8
  invoke fastcc void @_ZN12_GLOBAL__N_115ProcessMetadataEmRN6Assimp3IFC14ConversionDataERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEE(i64 noundef %i.hv, ptr noundef nonnull align 8 dereferenceable(392) %2, ptr noundef nonnull align 8 dereferenceable(48) %33)
          to label %.loopexit586 unwind label %.loopexit.split-lp588.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.h
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 1144) #32
  br label %bb.jh

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.m
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.thread: ; preds = %.noexc.i180
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %.critedge178

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.t
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i190, %bb.w
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i197, %bb.z
  %i.ib = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ic = load ptr, ptr %28, align 8              ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.dd
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %bb.av
  %i.ie = load i64, ptr %i.dd, align 8
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225, %bb.au
  %.pn = phi { ptr, i32 } [ %i.ia, %bb.au ], [ %i.ib, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225 ], [ %i.ib, %bb.av ] ; 2 uses
  %i.ig = load ptr, ptr %29, align 8              ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.co
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227
  %i.ii = load i64, ptr %i.co, align 8
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228, %bb.at
  %.pn.pn = phi { ptr, i32 } [ %i.hz, %bb.at ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ] ; 2 uses
  %i.ik = load ptr, ptr %32, align 8              ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.im = icmp eq ptr %i.ik, %i.il
  br i1 %i.im, label %.critedge178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230
  %i.in = load i64, ptr %i.il, align 8
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.io) #32
  br label %.critedge178

.critedge178:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.thread
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231 ], [ %i.hy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.thread ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  %i.ip = load ptr, ptr %30, align 8              ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.bc
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %.critedge178
  %i.ir = load i64, ptr %i.bc, align 8
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %.critedge178, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234, %bb.as
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hx, %bb.as ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234 ], [ %.pn.pn.pn.pn, %.critedge178 ]
  %i.it = load ptr, ptr %31, align 8              ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.an
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
  %i.iv = load i64, ptr %i.an, align 8
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %bb.jh

.preheader585:                                    ; preds = %bb.ap, %bb.aw
  %.sroa.0486.0964 = phi ptr [ %i.iz, %bb.aw ], [ %.sroa.06.1.i.i.i, %bb.ap ] ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0486.0964, i64 16
  %i.iy = load i64, ptr %i.ix, align 8
  invoke fastcc void @_ZN12_GLOBAL__N_115ProcessMetadataEmRN6Assimp3IFC14ConversionDataERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEE(i64 noundef %i.iy, ptr noundef nonnull align 8 dereferenceable(392) %2, ptr noundef nonnull align 8 dereferenceable(48) %33)
          to label %bb.aw unwind label %.loopexit.split-lp588.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %.preheader585
  %i.iz = load ptr, ptr %.sroa.0486.0964, align 8 ; 2 uses
  %.not512 = icmp eq ptr %i.iz, %.sroa.03.0.i.i
  br i1 %.not512, label %.loopexit586, label %.preheader585, !llvm.loop !182

.loopexit586:                                     ; preds = %bb.aw, %bb.aq
  %i.ja = load i64, ptr %i.hs, align 8            ; 4 uses
  %i.jb = icmp eq i64 %i.ja, 0
  br i1 %i.jb, label %bb.bh, label %bb.ax

bb.ax:                                            ; preds = %.loopexit586
  %i.jc = trunc i64 %i.ja to i32                  ; 2 uses
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %_ZN10aiMetadata5AllocEj.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.je = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %.noexc240 unwind label %.loopexit.split-lp588.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc240:                                        ; preds = %bb.ay
  store i32 %i.jc, ptr %i.je, align 8
  %i.jf = and i64 %i.ja, 4294967295               ; 4 uses
  %i.jg = mul nuw nsw i64 %i.jf, 1028             ; 3 uses
  %i.jh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.jg) #29
          to label %.noexc241 unwind label %.loopexit.split-lp588.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc241:                                        ; preds = %.noexc240
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jj = add nsw i64 %i.jg, -1028
  %i.jk = urem i64 %i.jj, 1028
  %i.jl = sub nsw i64 %i.jg, %i.jk
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.jh, i8 0, i64 %i.jl, i1 false)
  store ptr %i.jh, ptr %i.ji, align 8
  %i.jm = shl nuw nsw i64 %i.jf, 4
  %i.jn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.jm) #29
          to label %.noexc242 unwind label %.loopexit.split-lp588.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc242:                                        ; preds = %.noexc241
  %i.jo = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %i.jf
  %i.jp = add nuw nsw i64 %i.jf, 1152921504606846975
  %i.jq = and i64 %i.jp, 1152921504606846975
  %xtraiter = and i64 %i.ja, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.noexc242, %.prol.preheader
  %i.jr = phi ptr [ %i.jt, %.prol.preheader ], [ %i.jn, %.noexc242 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.noexc242 ]
  store i32 10, ptr %i.jr, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store ptr null, ptr %i.js, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !183

.prol.loopexit:                                   ; preds = %.prol.preheader, %.noexc242
  %.unr = phi ptr [ %i.jn, %.noexc242 ], [ %i.jt, %.prol.preheader ]
  %i.ju = icmp samesign ult i64 %i.jq, 7
  br i1 %i.ju, label %.unr-lcssa, label %.noexc242.new

.noexc242.new:                                    ; preds = %.prol.loopexit, %.noexc242.new
  %i.jv = phi ptr [ %i.kl, %.noexc242.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 10, ptr %i.jv, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store ptr null, ptr %i.jw, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store i32 10, ptr %i.jx, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  store ptr null, ptr %i.jy, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  store i32 10, ptr %i.jz, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 40
  store ptr null, ptr %i.ka, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jv, i64 48
  store i32 10, ptr %i.kb, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jv, i64 56
  store ptr null, ptr %i.kc, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jv, i64 64
  store i32 10, ptr %i.kd, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jv, i64 72
  store ptr null, ptr %i.ke, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jv, i64 80
  store i32 10, ptr %i.kf, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jv, i64 88
  store ptr null, ptr %i.kg, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jv, i64 96
  store i32 10, ptr %i.kh, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jv, i64 104
  store ptr null, ptr %i.ki, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jv, i64 112
  store i32 10, ptr %i.kj, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jv, i64 120
  store ptr null, ptr %i.kk, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jv, i64 128 ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.jo
  br i1 %i.km, label %.unr-lcssa, label %.noexc242.new

.unr-lcssa:                                       ; preds = %.noexc242.new, %.prol.loopexit
  %i.kn = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store ptr %i.jn, ptr %i.kn, align 8
  br label %_ZN10aiMetadata5AllocEj.exit

_ZN10aiMetadata5AllocEj.exit:                     ; preds = %.unr-lcssa, %bb.ax
  %.0.i = phi ptr [ %i.je, %.unr-lcssa ], [ null, %bb.ax ] ; 4 uses
  %i.ko = load ptr, ptr %i.hq, align 8            ; 2 uses
  %.not513965 = icmp eq ptr %i.ko, %i.ho
  br i1 %.not513965, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10aiMetadata5AllocEj.exit
  %i.kp = getelementptr inbounds nuw i8, ptr %34, i64 4 ; 5 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.kr = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 3 uses
  br label %bb.az

._crit_edge:                                      ; preds = %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, %_ZN10aiMetadata5AllocEj.exit
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ag, i64 1136
  store ptr %.0.i, ptr %i.ks, align 8
  br label %bb.bh

.loopexit.split-lp588.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader585, %.noexc241, %.noexc240, %bb.ay, %bb.aq
  %lpad.loopexit.split-lp2646 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp588

bb.az:                                            ; preds = %.lr.ph, %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %.0119967 = phi i32 [ 0, %.lr.ph ], [ %i.md, %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit ] ; 3 uses
  %.sroa.0483.0966 = phi ptr [ %i.ko, %.lr.ph ], [ %i.me, %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit ] ; 5 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0483.0966, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.0483.0966, i64 64
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0483.0966, i64 72
  %i.kw = load i64, ptr %i.kv, align 8            ; 2 uses
  %i.kx = trunc i64 %i.kw to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.kp, i8 0, i64 1024, i1 false)
  %i.ky = and i64 %i.kw, 4294966272
  %.not.i = icmp eq i64 %i.ky, 0
  %spec.select.i = select i1 %.not.i, i32 %i.kx, i32 1023 ; 4 uses
  store i32 %spec.select.i, ptr %34, align 4
  %i.kz = load ptr, ptr %i.ku, align 8
  %i.la = zext i32 %spec.select.i to i64          ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.kp, ptr align 1 %i.kz, i64 %i.la, i1 false)
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.la
  store i8 0, ptr %i.lb, align 1
  %i.lc = load i32, ptr %.0.i, align 8
  %.not.i243 = icmp ult i32 %.0119967, %i.lc
  br i1 %.not.i243, label %bb.ba, label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.ba:                                            ; preds = %bb.az
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0483.0966, i64 40
  %i.le = load i64, ptr %i.ld, align 8            ; 5 uses
  %i.lf = icmp eq i64 %i.le, 0
  br i1 %i.lf, label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lg = zext i32 %.0119967 to i64               ; 4 uses
  %i.lh = icmp ugt i64 %i.le, 1023
  br i1 %i.lh, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.li = load ptr, ptr %i.kq, align 8
  %i.lj = getelementptr inbounds nuw [1028 x i8], ptr %i.li, i64 %i.lg ; 2 uses
  %i.lk = trunc nuw nsw i64 %i.le to i32
  store i32 %i.lk, ptr %i.lj, align 4
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 4 ; 2 uses
  %i.lm = load ptr, ptr %i.kt, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ll, ptr align 1 %i.lm, i64 %i.le, i1 false)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.le
  store i8 0, ptr %i.ln, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.bc, %bb.bb
  %i.lo = load ptr, ptr %i.kr, align 8
  %i.lp = getelementptr inbounds nuw [16 x i8], ptr %i.lo, i64 %i.lg
  store i32 5, ptr %i.lp, align 8
  %i.lq = load ptr, ptr %i.kr, align 8
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %i.lg ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8            ; 4 uses
  %.not24.i = icmp eq ptr %i.lt, null
  br i1 %.not24.i, label %.thread29.i, label %bb.bd

bb.bd:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.lu = load i32, ptr %i.lr, align 8
  %.not25.i = icmp eq i32 %i.lu, 7
  br i1 %.not25.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1028) %i.lt, ptr noundef nonnull align 4 dereferenceable(1028) %34, i64 1028, i1 false)
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.bf:                                            ; preds = %bb.bd
  store i32 %spec.select.i, ptr %i.lt, align 4
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.lv, ptr nonnull align 4 %i.kp, i64 %i.la, i1 false)
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.la
  store i8 0, ptr %i.lw, align 1
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

.thread29.i:                                      ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.lx = invoke noalias noundef nonnull dereferenceable(1028) ptr @_Znwm(i64 noundef 1028) #29
          to label %.noexc245 unwind label %bb.bg ; 3 uses

.noexc245:                                        ; preds = %.thread29.i
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ly, i8 0, i64 1024, i1 false)
  store i32 %spec.select.i, ptr %i.lx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ly, ptr nonnull align 4 %i.kp, i64 %i.la, i1 false)
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.la
  store i8 0, ptr %i.lz, align 1
  %i.ma = load ptr, ptr %i.kr, align 8
  %i.mb = getelementptr inbounds nuw [16 x i8], ptr %i.ma, i64 %i.lg
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  store ptr %i.lx, ptr %i.mc, align 8
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %.noexc245, %bb.bf, %bb.be, %bb.ba, %bb.az
  %i.md = add i32 %.0119967, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  %i.me = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0483.0966) #34 ; 2 uses
  %.not513 = icmp eq ptr %i.me, %i.ho
  br i1 %.not513, label %._crit_edge, label %bb.az

bb.bg:                                            ; preds = %.thread29.i
  %i.mf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  br label %.loopexit.split-lp588

bb.bh:                                            ; preds = %._crit_edge, %.loopexit586
  %i.mg = load ptr, ptr %i.hp, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %33, ptr noundef %i.mg)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mh = landingpad { ptr, i32 }
          catch ptr null
  %i.mi = extractvalue { ptr, i32 } %i.mh, 0
  call void @__clang_call_terminate(ptr %i.mi) #31
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  br label %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit.thread

.loopexit.split-lp588:                            ; preds = %.loopexit.split-lp588.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bg
  %.pn154.pn = phi { ptr, i32 } [ %i.mf, %bb.bg ], [ %lpad.loopexit.split-lp2646, %.loopexit.split-lp588.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  br label %bb.jh

_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i, %bb.ah, %bb.aj, %..loopexit_crit_edge21.i.i.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit, %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.mk = load i8, ptr %i.mj, align 8, !range !14, !noundef !12
  %i.ml = trunc nuw i8 %i.mk to i1
  br i1 %i.ml, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit.thread
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ag, i64 1028
  %i.mo = call noundef nonnull align 8 dereferenceable(9) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x318IfcObjectPlacementEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.mm)
  call fastcc void @_ZN12_GLOBAL__N_122ResolveObjectPlacementER12aiMatrix4x4tIfERKN6Assimp3IFC10Schema_2x318IfcObjectPlacementERNS4_14ConversionDataE(ptr noundef nonnull align 4 dereferenceable(64) %i.mn, ptr noundef nonnull align 8 dereferenceable(9) %i.mo, ptr noundef nonnull align 8 dereferenceable(392) %2)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, i8 0, i64 24, i1 false)
  %i.mp = load ptr, ptr %1, align 8
  %i.mq = getelementptr i8, ptr %i.mp, i64 -24
  %i.mr = load i64, ptr %i.mq, align 8
  %i.ms = getelementptr inbounds i8, ptr %1, i64 %i.mr
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mu = load i64, ptr %i.mt, align 8            ; 5 uses
  %i.mv = load i64, ptr %i.gq, align 8
  %.not.not.i.i.i246 = icmp eq i64 %i.mv, 0
  br i1 %.not.not.i.i.i246, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.mw = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bn, %bb.bl
  %.sroa.06.0.in.i.i.i262 = phi ptr [ %i.mw, %bb.bl ], [ %.sroa.06.0.i.i.i263, %bb.bn ]
  %.sroa.06.0.i.i.i263 = load ptr, ptr %.sroa.06.0.in.i.i.i262, align 8 ; 4 uses
  %.not.i.i.i264 = icmp eq ptr %.sroa.06.0.i.i.i263, null
  br i1 %.not.i.i.i264, label %._crit_edge1019, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i263, i64 8
  %i.my = load i64, ptr %i.mx, align 8
  %i.mz = icmp eq i64 %i.mu, %i.my
  br i1 %i.mz, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i257, label %bb.bm, !llvm.loop !0

bb.bo:                                            ; preds = %bb.bk
  %i.na = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.nb = load i64, ptr %i.na, align 8            ; 2 uses
  %i.nc = urem i64 %i.mu, %i.nb                   ; 2 uses
  %i.nd = load ptr, ptr %i.j, align 8
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %i.nc
  %i.nf = load ptr, ptr %i.ne, align 8            ; 2 uses
  %.not.i.i.i.i.i247 = icmp eq ptr %i.nf, null
  br i1 %.not.i.i.i.i.i247, label %._crit_edge1019, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ng = load ptr, ptr %i.nf, align 8            ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.ni = load i64, ptr %i.nh, align 8
  %i.nj = icmp eq i64 %i.mu, %i.ni
  br i1 %i.nj, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i257, label %.lr.ph.i.i.i.i.i248

bb.bq:                                            ; preds = %bb.br
  %i.nk = icmp eq i64 %i.mu, %i.nn
  br i1 %i.nk, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i257, label %.lr.ph.i.i.i.i.i248, !llvm.loop !1

.lr.ph.i.i.i.i.i248:                              ; preds = %bb.bp, %bb.bq
  %.020.i.i.i.i.i249 = phi ptr [ %i.nl, %bb.bq ], [ %i.ng, %bb.bp ]
  %i.nl = load ptr, ptr %.020.i.i.i.i.i249, align 8 ; 4 uses
  %.not18.i.i.i.i.i250 = icmp eq ptr %i.nl, null
  br i1 %.not18.i.i.i.i.i250, label %._crit_edge1019, label %bb.br

bb.br:                                            ; preds = %.lr.ph.i.i.i.i.i248
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nn = load i64, ptr %i.nm, align 8            ; 2 uses
  %i.no = urem i64 %i.nn, %i.nb
  %.not19.i.i.i.i.i251 = icmp eq i64 %i.no, %i.nc
  br i1 %.not19.i.i.i.i.i251, label %bb.bq, label %..loopexit_crit_edge21.i.i.i.i.i252, !llvm.loop !1

..loopexit_crit_edge21.i.i.i.i.i252:              ; preds = %bb.br
  br label %._crit_edge1019, !llvm.loop !1

_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i257: ; preds = %bb.bq, %bb.bn, %bb.bp
  %.sroa.06.1.i.i.i258 = phi ptr [ %.sroa.06.0.i.i.i263, %bb.bn ], [ %i.ng, %bb.bp ], [ %i.nl, %bb.bq ] ; 4 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i257
  %.sroa.03.0.in.i.i259 = phi ptr [ %.sroa.06.1.i.i.i258, %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i257 ], [ %.sroa.03.0.i.i260, %bb.bt ]
  %.sroa.03.0.i.i260 = load ptr, ptr %.sroa.03.0.in.i.i259, align 8 ; 6 uses
  %.not2.i.i261 = icmp eq ptr %.sroa.03.0.i.i260, null
  br i1 %.not2.i.i261, label %.loopexit581, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i260, i64 8
  %i.nq = load i64, ptr %i.np, align 8
  %i.nr = icmp eq i64 %i.mu, %i.nq
  br i1 %i.nr, label %bb.bs, label %.loopexit581, !llvm.loop !2

.loopexit581:                                     ; preds = %bb.bt, %bb.bs
  %.not514981 = icmp eq ptr %.sroa.06.1.i.i.i258, %.sroa.03.0.i.i260
  br i1 %.not514981, label %._crit_edge1019, label %.lr.ph1004

.lr.ph1004:                                       ; preds = %.loopexit581
  %i.ns = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ag, i64 1028 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 3 uses
  %.sroa.8471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 16
  %.sroa.10473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 32
  %.sroa.13475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 48
  %.sroa.16477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 64
  %.sroa.18479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 80
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 96
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 112
  %i.nw = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.ny = getelementptr inbounds nuw i8, ptr %38, i64 16
  br label %bb.bu

.lr.ph1018:                                       ; preds = %.loopexit572
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ag, i64 1028
  br label %bb.dv

bb.bu:                                            ; preds = %.lr.ph1004, %.loopexit572
  %.01181002 = phi i1 [ false, %.lr.ph1004 ], [ %.7, %.loopexit572 ] ; 9 uses
  %.sroa.0425.01001 = phi ptr [ %.sroa.06.1.i.i.i258, %.lr.ph1004 ], [ %i.xa, %.loopexit572 ] ; 2 uses
  %.sroa.38.01000 = phi ptr [ null, %.lr.ph1004 ], [ %.sroa.38.5, %.loopexit572 ] ; 12 uses
  %.sroa.18448.0999 = phi ptr [ null, %.lr.ph1004 ], [ %.sroa.18448.5, %.loopexit572 ] ; 12 uses
  %.sroa.0438.0998 = phi ptr [ null, %.lr.ph1004 ], [ %.sroa.0438.5, %.loopexit572 ] ; 14 uses
  %i.oa = phi <16 x double> [ <double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00>, %.lr.ph1004 ], [ %i.wz, %.loopexit572 ] ; 9 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.0425.01001, i64 16
  %i.oc = load ptr, ptr %i.fu, align 8            ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.oc, null
  %.pre1386 = load i64, ptr %i.ob, align 8        ; 3 uses
  br i1 %.not10.i.i.i, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit.thread, label %.lr.ph.i.i.i266

.lr.ph.i.i.i266:                                  ; preds = %bb.bu, %.lr.ph.i.i.i266
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i266 ], [ %i.oc, %bb.bu ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i266 ], [ %i.fv, %bb.bu ]
  %i.od = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.oe = load i64, ptr %i.od, align 8
  %i.of = icmp ult i64 %i.oe, %.pre1386           ; 2 uses
  %.19.i.i.i = select i1 %i.of, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.of, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i267 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i267, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i, label %.lr.ph.i.i.i266, !llvm.loop !184

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i: ; preds = %.lr.ph.i.i.i266
  %i.og = icmp eq ptr %.19.i.i.i, %i.fv
  br i1 %i.og, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit.thread, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit

_ZNSt3setImSt4lessImESaImEE4findERKm.exit:        ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i
  %i.oh = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.oi = load i64, ptr %i.oh, align 8
  %i.oj = icmp ult i64 %.pre1386, %i.oi
  br i1 %i.oj, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit.thread, label %.loopexit572

_ZNSt3setImSt4lessImESaImEE4findERKm.exit.thread: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i, %bb.bu, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit
  %i.ok = load ptr, ptr %i.h, align 8, !nonnull !12, !align !13
  %i.ol = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6Assimp4STEP2DB13MustGetObjectEm(ptr noundef nonnull align 8 dereferenceable(392) %i.ok, i64 noundef %.pre1386)
          to label %bb.bv unwind label %bb.dd     ; 2 uses

bb.bv:                                            ; preds = %_ZNSt3setImSt4lessImESaImEE4findERKm.exit.thread
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 32 ; 2 uses
  %i.on = load ptr, ptr %i.om, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.on, null
  br i1 %.not.i.i, label %bb.bw, label %_ZNK6Assimp4STEP10LazyObjectptEv.exit

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ol)
          to label %.noexc270 unwind label %bb.dd

.noexc270:                                        ; preds = %bb.bw
  %.pre.i.i269 = load ptr, ptr %i.om, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectptEv.exit

_ZNK6Assimp4STEP10LazyObjectptEv.exit:            ; preds = %.noexc270, %bb.bv
  %i.oo = phi ptr [ %.pre.i.i269, %.noexc270 ], [ %i.on, %bb.bv ] ; 2 uses
  %i.op = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.oo, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x333IfcRelContainedInSpatialStructureE, i64 -1) #28 ; 4 uses
  %.not164 = icmp eq ptr %i.op, null
  br i1 %.not164, label %_ZNK6Assimp4STEP10LazyObjectptEv.exit282, label %bb.bx

bb.bx:                                            ; preds = %_ZNK6Assimp4STEP10LazyObjectptEv.exit
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 208
  %i.or = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x326IfcSpatialStructureElementEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.oq)
          to label %bb.by unwind label %bb.dd     ; 2 uses

bb.by:                                            ; preds = %bb.bx
  %i.os = load ptr, ptr %i.or, align 8
  %i.ot = getelementptr i8, ptr %i.os, i64 -24
  %i.ou = load i64, ptr %i.ot, align 8
  %i.ov = getelementptr inbounds i8, ptr %i.or, i64 %i.ou
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.ox = load i64, ptr %i.ow, align 8
  %i.oy = load ptr, ptr %1, align 8
  %i.oz = getelementptr i8, ptr %i.oy, i64 -24
  %i.pa = load i64, ptr %i.oz, align 8
  %i.pb = getelementptr inbounds i8, ptr %1, i64 %i.pa
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pd = load i64, ptr %i.pc, align 8
  %.not169 = icmp eq i64 %i.ox, %i.pd
  br i1 %.not169, label %bb.bz, label %.loopexit572

bb.bz:                                            ; preds = %bb.by
  %i.pe = getelementptr inbounds nuw i8, ptr %i.op, i64 184
  %i.pf = load ptr, ptr %i.pe, align 8            ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.op, i64 192
  %i.ph = load ptr, ptr %i.pg, align 8            ; 2 uses
  %.not521968 = icmp eq ptr %i.pf, %i.ph
  br i1 %.not521968, label %.loopexit572, label %.lr.ph974

.lr.ph974:                                        ; preds = %bb.bz, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %.sroa.0420.0972 = phi ptr [ %i.qt, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ], [ %i.pf, %bb.bz ] ; 2 uses
  %.sroa.38.1971 = phi ptr [ %.sroa.38.3, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.38.01000, %bb.bz ] ; 9 uses
  %.sroa.18448.1970 = phi ptr [ %.sroa.18448.3, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.18448.0999, %bb.bz ] ; 9 uses
  %.sroa.0438.1969 = phi ptr [ %.sroa.0438.3, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.0438.0998, %bb.bz ] ; 11 uses
  %i.pi = load ptr, ptr %.sroa.0420.0972, align 8 ; 3 uses
  %i.pj = icmp eq ptr %i.pi, null
  br i1 %i.pj, label %bb.ca, label %bb.cf

bb.ca:                                            ; preds = %.lr.ph974
  %i.pk = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.cb unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.pk, ptr noundef nonnull align 8 dereferenceable(32) %25, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  invoke void @__cxa_throw(ptr nonnull %i.pk, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ci unwind label %bb.cd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ca
  %i.pl = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.0.i272 = phi i1 [ false, %bb.cc ], [ true, %bb.cb ] ; 2 uses
  %i.pm = landingpad { ptr, i32 }
          catch ptr null                          ; 4 uses
  %i.pn = load ptr, ptr %25, align 8              ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.pp = icmp eq ptr %i.pn, %i.po
  br i1 %i.pp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.cd
  %i.pq = load i64, ptr %i.po, align 8
  %i.pr = add i64 %i.pq, 1
  call void @_ZdlPvm(ptr noundef %i.pn, i64 noundef %i.pr) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br i1 %.0.i272, label %bb.ce, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br i1 %.0.i272, label %bb.ce, label %.body

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn10.i = phi { ptr, i32 } [ %i.pl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.pm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.pm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.pk) #28
  br label %.body

bb.cf:                                            ; preds = %.lr.ph974
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pi, i64 32 ; 2 uses
  %i.pt = load ptr, ptr %i.ps, align 8            ; 2 uses
  %.not.i.i.i271 = icmp eq ptr %i.pt, null
  br i1 %.not.i.i.i271, label %bb.cg, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.pi)
          to label %.noexc273 unwind label %.loopexit.split-lp574.loopexit.split-lp

.noexc273:                                        ; preds = %bb.cg
  %.pre.i.i.i = load ptr, ptr %i.ps, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i:        ; preds = %.noexc273, %bb.cf
  %i.pu = phi ptr [ %.pre.i.i.i, %.noexc273 ], [ %i.pt, %bb.cf ]
  %i.pv = call ptr @__dynamic_cast(ptr nonnull %i.pu, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x310IfcProductE, i64 -1) #28 ; 4 uses
  %i.pw = icmp eq ptr %i.pv, null
  br i1 %i.pw, label %bb.ch, label %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x310IfcProductEEcvRKS4_Ev.exit

bb.ch:                                            ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i
  invoke void @__cxa_bad_cast() #30
          to label %.noexc274 unwind label %.loopexit.split-lp574.loopexit.split-lp

.noexc274:                                        ; preds = %bb.ch
  unreachable

bb.ci:                                            ; preds = %bb.cc
  unreachable
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
  %i.vb = fmul <2 x double> %i.tb, %i.ty
  %i.vc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tw, <2 x double> %i.tc, <2 x double> %i.vb)
  %i.vd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ua, <2 x double> %i.td, <2 x double> %i.vc)
  %i.ve = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uc, <2 x double> %i.te, <2 x double> %i.vd)
  store <2 x double> %i.ve, ptr %.sroa.16477.0..sroa_idx, align 16
  %i.vf = fmul <2 x double> %i.tb, %i.uk
  %i.vg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ui, <2 x double> %i.tc, <2 x double> %i.vf)
  %i.vh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.um, <2 x double> %i.td, <2 x double> %i.vg)
  %i.vi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uo, <2 x double> %i.te, <2 x double> %i.vh)
  store <2 x double> %i.vi, ptr %.sroa.18479.0..sroa_idx, align 16
  %i.vj = fmul <2 x double> %i.tf, %i.ty
  %i.vk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tw, <2 x double> %i.tg, <2 x double> %i.vj)
  %i.vl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ua, <2 x double> %i.th, <2 x double> %i.vk)
  %i.vm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uc, <2 x double> %i.ti, <2 x double> %i.vl)
  store <2 x double> %i.vm, ptr %.sroa.22.0..sroa_idx, align 16
  %i.vn = fmul <2 x double> %i.tf, %i.uk
  %i.vo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ui, <2 x double> %i.tg, <2 x double> %i.vn)
  %i.vp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.um, <2 x double> %i.th, <2 x double> %i.vo)
  %i.vq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uo, <2 x double> %i.ti, <2 x double> %i.vp)
  store <2 x double> %i.vq, ptr %.sroa.24.0..sroa_idx, align 16
  invoke void @_ZN6Assimp3IFC11TempOpening9TransformERK12aiMatrix4x4tIdE(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0404.0978, ptr noundef nonnull align 8 dereferenceable(128) %40)
          to label %bb.dj unwind label %bb.dm

bb.dj:                                            ; preds = %.lr.ph980
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  %i.vr = load ptr, ptr %i.nw, align 8            ; 3 uses
  %i.vs = load ptr, ptr %i.nx, align 8
  %.not.i292 = icmp eq ptr %i.vr, %i.vs
  br i1 %.not.i292, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZN6Assimp3IFC11TempOpeningC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.vr, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0404.0978)
          to label %.noexc293 unwind label %.loopexit.split-lp568.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc293:                                        ; preds = %bb.dk
  %i.vt = load ptr, ptr %i.nw, align 8
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 88
  store ptr %i.vu, ptr %i.nw, align 8
  br label %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE9push_backERKS2_.exit

bb.dl:                                            ; preds = %bb.dj
  invoke void @_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr %i.vr, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0404.0978)
          to label %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE9push_backERKS2_.exit unwind label %.loopexit.split-lp568.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE9push_backERKS2_.exit: ; preds = %.noexc293, %bb.dl
  %i.vv = getelementptr inbounds nuw i8, ptr %.sroa.0404.0978, i64 88 ; 2 uses
  %.not522 = icmp eq ptr %i.vv, %i.sq
  br i1 %.not522, label %.loopexit566.loopexit, label %.lr.ph980

bb.dm:                                            ; preds = %.lr.ph980
  %i.vw = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  br label %.loopexit.split-lp568

.loopexit566.loopexit:                            ; preds = %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE9push_backERKS2_.exit
  %.pre1390 = load ptr, ptr %36, align 8
  br label %.loopexit566

.loopexit566:                                     ; preds = %.loopexit566.loopexit, %bb.di, %bb.cz
  %i.vx = phi ptr [ %i.rm, %bb.cz ], [ %i.rm, %bb.di ], [ %.pre1390, %.loopexit566.loopexit ] ; 2 uses
  %.2 = phi i1 [ %.01181002, %bb.cz ], [ true, %bb.di ], [ true, %.loopexit566.loopexit ] ; 2 uses
  %i.vy = phi <16 x double> [ %i.oa, %bb.cz ], [ %i.ss, %bb.di ], [ %i.ss, %.loopexit566.loopexit ] ; 2 uses
  store ptr null, ptr %36, align 8
  %.not.i.i295 = icmp eq ptr %.sroa.18448.0999, %.sroa.38.01000
  br i1 %.not.i.i295, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %.loopexit566
  store ptr %i.vx, ptr %.sroa.18448.0999, align 8
  %i.vz = getelementptr inbounds nuw i8, ptr %.sroa.18448.0999, i64 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit

bb.do:                                            ; preds = %.loopexit566
  %i.wa = ptrtoint ptr %.sroa.38.01000 to i64
  %i.wb = ptrtoint ptr %.sroa.0438.0998 to i64
  %i.wc = sub i64 %i.wa, %i.wb                    ; 6 uses
  %i.wd = icmp eq i64 %i.wc, 9223372036854775800
  br i1 %i.wd, label %bb.dp, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #30
          to label %.noexc296 unwind label %.loopexit.split-lp568.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc296:                                        ; preds = %bb.dp
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.do
  %i.we = ashr exact i64 %i.wc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.we, i64 1)
  %i.wf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.we ; 2 uses
  %i.wg = icmp ult i64 %i.wf, %i.we
  %i.wh = call i64 @llvm.umin.i64(i64 %i.wf, i64 1152921504606846975)
  %i.wi = select i1 %i.wg, i64 1152921504606846975, i64 %i.wh ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.wi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.wj = shl nuw nsw i64 %i.wi, 3
  %i.wk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wj) #29
          to label %.noexc297 unwind label %.loopexit.split-lp568.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc297:                                        ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.wl = getelementptr inbounds i8, ptr %i.wk, i64 %i.wc ; 2 uses
  store ptr %i.vx, ptr %i.wl, align 8
  %i.wm = icmp sgt i64 %i.wc, 0
  br i1 %i.wm, label %bb.dq, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.dq:                                            ; preds = %.noexc297
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wk, ptr align 8 %.sroa.0438.0998, i64 %i.wc, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.dq, %.noexc297
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wl, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0438.0998, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0438.0998, i64 noundef %i.wc) #32
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.dr, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.wk, i64 %i.wi
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit

.loopexit.split-lp568.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dk, %bb.dl, %bb.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.dp
  %lpad.loopexit.split-lp2557 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp568

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit: ; preds = %bb.dn, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.cx
  %.sroa.0438.4 = phi ptr [ %.sroa.0438.0998, %bb.cx ], [ %i.wk, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0438.0998, %bb.dn ]
  %.sroa.18448.4 = phi ptr [ %.sroa.18448.0999, %bb.cx ], [ %i.wn, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.vz, %bb.dn ]
  %.sroa.38.4 = phi ptr [ %.sroa.38.01000, %bb.cx ], [ %i.wo, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.38.01000, %bb.dn ]
  %.3 = phi i1 [ %.01181002, %bb.cx ], [ %.2, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.2, %bb.dn ]
  %i.wp = phi <16 x double> [ %i.oa, %bb.cx ], [ %i.vy, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.vy, %bb.dn ]
  %i.wq = load ptr, ptr %38, align 8              ; 3 uses
  %i.wr = load ptr, ptr %i.nv, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.wq, %i.wr
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i298

.lr.ph.i.i.i298:                                  ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit, %.lr.ph.i.i.i298
  %.05.i.i.i = phi ptr [ %i.ws, %.lr.ph.i.i.i298 ], [ %i.wq, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  call void @_ZN6Assimp3IFC11TempOpeningD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.05.i.i.i) #28
  %i.ws = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i299 = icmp eq ptr %i.ws, %i.wr
  br i1 %.not.i.i.i299, label %_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i298, !llvm.loop !4

_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i298
  %.pr.i = load ptr, ptr %38, align 8
  br label %_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit
  %i.wt = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.wq, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.wt, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EED2Ev.exit, label %bb.ds

bb.ds:                                            ; preds = %_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exit.i
  %i.wu = load ptr, ptr %i.ny, align 8
  %i.wv = ptrtoint ptr %i.wu to i64
  %i.ww = ptrtoint ptr %i.wt to i64
  %i.wx = sub i64 %i.wv, %i.ww
  call void @_ZdlPvm(ptr noundef nonnull %i.wt, i64 noundef %i.wx) #32
  br label %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3IFC11TempOpeningES2_EvT_S4_RSaIT0_E.exit.i, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  %i.wy = load ptr, ptr %36, align 8              ; 3 uses
  %.not.i300 = icmp eq ptr %i.wy, null
  br i1 %.not.i300, label %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i

_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i:    ; preds = %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EED2Ev.exit
  call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %i.wy) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.wy, i64 noundef 1144) #32
  br label %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EED2Ev.exit, %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  br label %.loopexit572

.loopexit.split-lp568:                            ; preds = %.loopexit.split-lp568.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dm, %bb.dh
  %.pn168.pn = phi { ptr, i32 } [ %i.vw, %bb.dm ], [ %i.sp, %bb.dh ], [ %lpad.loopexit.split-lp2557, %.loopexit.split-lp568.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %38) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %bb.dt

bb.dt:                                            ; preds = %.loopexit.split-lp568, %bb.dg
  %.pn168.pn.pn = phi { ptr, i32 } [ %.pn168.pn, %.loopexit.split-lp568 ], [ %i.so, %bb.dg ]
  call void @_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #28
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.df, %bb.de
  %.pn168.pn.pn.pn = phi { ptr, i32 } [ %.pn168.pn.pn, %bb.dt ], [ %i.sn, %bb.df ], [ %i.sm, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  br label %.body

.loopexit572:                                     ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit, %bb.bz, %bb.by, %_ZNK6Assimp4STEP10LazyObjectptEv.exit282, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit, %bb.cs, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit
  %.sroa.0438.5 = phi ptr [ %.sroa.0438.0998, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %.sroa.0438.0998, %_ZNK6Assimp4STEP10LazyObjectptEv.exit282 ], [ %.sroa.0438.4, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %.sroa.0438.0998, %bb.cs ], [ %.sroa.0438.0998, %bb.by ], [ %.sroa.0438.0998, %bb.bz ], [ %.sroa.0438.3, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.18448.5 = phi ptr [ %.sroa.18448.0999, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %.sroa.18448.0999, %_ZNK6Assimp4STEP10LazyObjectptEv.exit282 ], [ %.sroa.18448.4, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %.sroa.18448.0999, %bb.cs ], [ %.sroa.18448.0999, %bb.by ], [ %.sroa.18448.0999, %bb.bz ], [ %.sroa.18448.3, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.38.5 = phi ptr [ %.sroa.38.01000, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %.sroa.38.01000, %_ZNK6Assimp4STEP10LazyObjectptEv.exit282 ], [ %.sroa.38.4, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %.sroa.38.01000, %bb.cs ], [ %.sroa.38.01000, %bb.by ], [ %.sroa.38.01000, %bb.bz ], [ %.sroa.38.3, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.7 = phi i1 [ %.01181002, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %.01181002, %_ZNK6Assimp4STEP10LazyObjectptEv.exit282 ], [ %.3, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %.01181002, %bb.cs ], [ %.01181002, %bb.by ], [ %.01181002, %bb.bz ], [ %.01181002, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ]
  %i.wz = phi <16 x double> [ %i.oa, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit ], [ %i.oa, %_ZNK6Assimp4STEP10LazyObjectptEv.exit282 ], [ %i.wp, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit ], [ %i.oa, %bb.cs ], [ %i.oa, %bb.by ], [ %i.oa, %bb.bz ], [ %i.oa, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ]
  %i.xa = load ptr, ptr %.sroa.0425.01001, align 8 ; 2 uses
  %.not514 = icmp eq ptr %i.xa, %.sroa.03.0.i.i260
  br i1 %.not514, label %.lr.ph1018, label %bb.bu, !llvm.loop !189

bb.dv:                                            ; preds = %.lr.ph1018, %bb.ey
  %.sroa.0432.01017 = phi ptr [ %.sroa.06.1.i.i.i258, %.lr.ph1018 ], [ %i.aaz, %bb.ey ] ; 2 uses
  %.sroa.38.71016 = phi ptr [ %.sroa.38.5, %.lr.ph1018 ], [ %.sroa.38.9, %bb.ey ] ; 8 uses
  %.sroa.18448.71015 = phi ptr [ %.sroa.18448.5, %.lr.ph1018 ], [ %.sroa.18448.9, %bb.ey ] ; 8 uses
  %.sroa.0438.71014 = phi ptr [ %.sroa.0438.5, %.lr.ph1018 ], [ %.sroa.0438.9, %bb.ey ] ; 10 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.sroa.0432.01017, i64 16
  %i.xc = load ptr, ptr %i.fu, align 8            ; 2 uses
  %.not10.i.i.i301 = icmp eq ptr %i.xc, null
  %.pre1391 = load i64, ptr %i.xb, align 8        ; 4 uses
  br i1 %.not10.i.i.i301, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit313.thread, label %.lr.ph.i.i.i302

.lr.ph.i.i.i302:                                  ; preds = %bb.dv, %.lr.ph.i.i.i302
  %.012.i.i.i303 = phi ptr [ %.1.i.i.i308, %.lr.ph.i.i.i302 ], [ %i.xc, %bb.dv ] ; 3 uses
  %.0811.i.i.i304 = phi ptr [ %.19.i.i.i305, %.lr.ph.i.i.i302 ], [ %i.fv, %bb.dv ]
  %i.xd = getelementptr inbounds nuw i8, ptr %.012.i.i.i303, i64 32
  %i.xe = load i64, ptr %i.xd, align 8
  %i.xf = icmp ult i64 %i.xe, %.pre1391           ; 2 uses
  %.19.i.i.i305 = select i1 %i.xf, ptr %.0811.i.i.i304, ptr %.012.i.i.i303 ; 3 uses
  %.1.in.v.i.i.i306 = select i1 %i.xf, i64 24, i64 16
  %.1.in.i.i.i307 = getelementptr inbounds nuw i8, ptr %.012.i.i.i303, i64 %.1.in.v.i.i.i306
  %.1.i.i.i308 = load ptr, ptr %.1.in.i.i.i307, align 8 ; 2 uses
  %.not.i.i.i309 = icmp eq ptr %.1.i.i.i308, null
  br i1 %.not.i.i.i309, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i310, label %.lr.ph.i.i.i302, !llvm.loop !184

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i310: ; preds = %.lr.ph.i.i.i302
  %i.xg = icmp eq ptr %.19.i.i.i305, %i.fv
  br i1 %i.xg, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit313.thread, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit313

_ZNSt3setImSt4lessImESaImEE4findERKm.exit313:     ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i310
  %i.xh = getelementptr inbounds nuw i8, ptr %.19.i.i.i305, i64 32
  %i.xi = load i64, ptr %i.xh, align 8
  %i.xj = icmp ult i64 %.pre1391, %i.xi
  br i1 %i.xj, label %_ZNSt3setImSt4lessImESaImEE4findERKm.exit313.thread, label %bb.ey

_ZNSt3setImSt4lessImESaImEE4findERKm.exit313.thread: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPSt13_Rb_tree_nodeImEPSt18_Rb_tree_node_baseRKm.exit.i.i310, %bb.dv, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit313
  %i.xk = load ptr, ptr %i.h, align 8, !nonnull !12, !align !13 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 112
  %i.xm = load ptr, ptr %i.xl, align 8, !nonnull !12, !noundef !12
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xk, i64 104 ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3setImSt4lessImESaImEE4findERKm.exit313.thread, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.xm, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit313.thread ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.xn, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit313.thread ]
  %i.xo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.xp = load i64, ptr %i.xo, align 8
  %i.xq = icmp ult i64 %i.xp, %.pre1391           ; 2 uses
  %.19.i.i.i.i = select i1 %i.xq, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.xq, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i314 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i314, label %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.xr = icmp ne ptr %.19.i.i.i.i, %i.xn
  call void @llvm.assume(i1 %i.xr)
  %i.xs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.xt = load i64, ptr %i.xs, align 8
  %i.xu = icmp uge i64 %.pre1391, %i.xt
  call void @llvm.assume(i1 %i.xu)
  %i.xv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.xw = load ptr, ptr %i.xv, align 8            ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 32 ; 2 uses
  %i.xy = load ptr, ptr %i.xx, align 8            ; 2 uses
  %.not.i.i316 = icmp eq ptr %i.xy, null
  br i1 %.not.i.i316, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.xw)
          to label %.noexc318 unwind label %.loopexit558

.noexc318:                                        ; preds = %bb.dw
  %.pre.i.i317 = load ptr, ptr %i.xx, align 8
  br label %bb.dx

bb.dx:                                            ; preds = %.noexc318, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.xz = phi ptr [ %.pre.i.i317, %.noexc318 ], [ %i.xy, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i ]
  %i.ya = call noundef ptr @__dynamic_cast(ptr nonnull %i.xz, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x316IfcRelAggregatesE, i64 -1) #28 ; 4 uses
  %.not159 = icmp eq ptr %i.ya, null
  br i1 %.not159, label %bb.ey, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 168
  %i.yc = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.yb)
          to label %bb.dz unwind label %.loopexit558 ; 2 uses

bb.dz:                                            ; preds = %bb.dy
  %i.yd = load ptr, ptr %i.yc, align 8
  %i.ye = getelementptr i8, ptr %i.yd, i64 -24
  %i.yf = load i64, ptr %i.ye, align 8
  %i.yg = getelementptr inbounds i8, ptr %i.yc, i64 %i.yf
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 8
  %i.yi = load i64, ptr %i.yh, align 8
  %i.yj = load ptr, ptr %1, align 8
  %i.yk = getelementptr i8, ptr %i.yj, i64 -24
  %i.yl = load i64, ptr %i.yk, align 8
  %i.ym = getelementptr inbounds i8, ptr %1, i64 %i.yl
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  %i.yo = load i64, ptr %i.yn, align 8
  %.not160 = icmp eq i64 %i.yi, %i.yo
  br i1 %.not160, label %bb.ea, label %bb.ey

.loopexit558:                                     ; preds = %bb.dy, %bb.dw
  %lpad.loopexit560 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp559:                            ; preds = %bb.ix, %bb.fc
  %.sroa.0438.8.ph = phi ptr [ %.sroa.0438.7.lcssa, %bb.fc ], [ %.sroa.0438.10, %bb.ix ]
  %.sroa.18448.8.ph = phi ptr [ %.sroa.18448.7.lcssa, %bb.fc ], [ %.sroa.18448.10, %bb.ix ]
  %.sroa.38.8.ph = phi ptr [ %.sroa.38.7.lcssa, %bb.fc ], [ %.sroa.38.10, %bb.ix ]
  %lpad.loopexit.split-lp561 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #28
  %i.yp = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #29
          to label %bb.eb unwind label %bb.ei     ; 13 uses

bb.eb:                                            ; preds = %bb.ea
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.yp)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326 unwind label %bb.ej

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326: ; preds = %bb.eb
  store ptr %i.yp, ptr %41, align 8
  store i32 14, ptr %i.yp, align 4
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %i.yq, ptr noundef nonnull align 1 dereferenceable(14) @.str.65, i64 14, i1 false)
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yp, i64 18
  store i8 0, ptr %i.yr, align 2
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yp, i64 1096
  store ptr %i.ag, ptr %i.ys, align 8
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yp, i64 1028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.yt, ptr noundef nonnull align 4 dereferenceable(64) %i.nz, i64 64, i1 false)
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ya, i64 176 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ya, i64 184 ; 2 uses
  %i.yw = load ptr, ptr %i.yv, align 8
  %i.yx = load ptr, ptr %i.yu, align 8
  %i.yy = ptrtoint ptr %i.yw to i64
  %i.yz = ptrtoint ptr %i.yx to i64
  %i.za = sub i64 %i.yy, %i.yz
  %i.zb = call i64 @llvm.smax.i64(i64 %i.za, i64 -1) ; 2 uses
  %i.zc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.zb) #29
          to label %bb.ec unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ec:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.zc, i8 0, i64 %i.zb, i1 false)
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yp, i64 1112 ; 2 uses
  store ptr %i.zc, ptr %i.zd, align 8
  %i.ze = load ptr, ptr %i.yu, align 8            ; 2 uses
  %i.zf = load ptr, ptr %i.yv, align 8            ; 2 uses
  %.not5181008 = icmp eq ptr %i.ze, %i.zf
  br i1 %.not5181008, label %._crit_edge1012, label %.lr.ph1011.preheader

.lr.ph1011.preheader:                             ; preds = %bb.ec
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yp, i64 1104 ; 2 uses
  br label %.lr.ph1011

._crit_edge1012:                                  ; preds = %bb.ew, %bb.ec
  store ptr null, ptr %41, align 8
  %.not.i.i327 = icmp eq ptr %.sroa.18448.71015, %.sroa.38.71016
  br i1 %.not.i.i327, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %._crit_edge1012
  store ptr %i.yp, ptr %.sroa.18448.71015, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit336

bb.ee:                                            ; preds = %._crit_edge1012
  %i.zh = ptrtoint ptr %.sroa.38.71016 to i64
  %i.zi = ptrtoint ptr %.sroa.0438.71014 to i64
  %i.zj = sub i64 %i.zh, %i.zi                    ; 6 uses
  %i.zk = icmp eq i64 %i.zj, 9223372036854775800
  br i1 %i.zk, label %bb.ef, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i328

bb.ef:                                            ; preds = %bb.ee
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #30
          to label %.noexc334 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc334:                                        ; preds = %bb.ef
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i328: ; preds = %bb.ee
  %i.zl = ashr exact i64 %i.zj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i329 = call i64 @llvm.umax.i64(i64 %i.zl, i64 1)
  %i.zm = add nsw i64 %.sroa.speculated.i.i.i.i329, %i.zl ; 2 uses
  %i.zn = icmp ult i64 %i.zm, %i.zl
  %i.zo = call i64 @llvm.umin.i64(i64 %i.zm, i64 1152921504606846975)
  %i.zp = select i1 %i.zn, i64 1152921504606846975, i64 %i.zo ; 3 uses
  %.not.i.i.i.i330 = icmp ne i64 %i.zp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i330)
  %i.zq = shl nuw nsw i64 %i.zp, 3
  %i.zr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zq) #29
          to label %.noexc335 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc335:                                        ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i328
  %i.zs = getelementptr inbounds i8, ptr %i.zr, i64 %i.zj ; 2 uses
  store ptr %i.yp, ptr %i.zs, align 8
  %i.zt = icmp sgt i64 %i.zj, 0
  br i1 %i.zt, label %bb.eg, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i331

bb.eg:                                            ; preds = %.noexc335
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zr, ptr align 8 %.sroa.0438.71014, i64 %i.zj, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i331

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i331: ; preds = %bb.eg, %.noexc335
  %.not.i17.i.i.i332 = icmp eq ptr %.sroa.0438.71014, null
  br i1 %.not.i17.i.i.i332, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i333, label %bb.eh

bb.eh:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i331
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0438.71014, i64 noundef %i.zj) #32
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i333

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i333: ; preds = %bb.eh, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i331
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %i.zr, i64 %i.zp
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit336

bb.ei:                                            ; preds = %bb.ea
  %i.zv = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ex

bb.ej:                                            ; preds = %bb.eb
  %i.zw = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZdlPvm(ptr noundef nonnull %i.yp, i64 noundef 1144) #32
  br label %bb.ex

.lr.ph1011:                                       ; preds = %.lr.ph1011.preheader, %bb.ew
  %.sroa.0394.01009 = phi ptr [ %i.aax, %bb.ew ], [ %i.ze, %.lr.ph1011.preheader ] ; 2 uses
  %i.zx = load ptr, ptr %.sroa.0394.01009, align 8 ; 3 uses
  %i.zy = icmp eq ptr %i.zx, null
  br i1 %i.zy, label %bb.ek, label %bb.ep

bb.ek:                                            ; preds = %.lr.ph1011
  %i.zz = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.el unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i340

bb.el:                                            ; preds = %bb.ek
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.zz, ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.em unwind label %bb.en

bb.em:                                            ; preds = %bb.el
  invoke void @__cxa_throw(ptr nonnull %i.zz, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.es unwind label %bb.en

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i340: ; preds = %bb.ek
  %i.aaa = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br label %bb.eo

bb.en:                                            ; preds = %bb.em, %bb.el
  %.0.i343 = phi i1 [ false, %bb.em ], [ true, %bb.el ] ; 2 uses
  %i.aab = landingpad { ptr, i32 }
          catch ptr null                          ; 4 uses
  %i.aac = load ptr, ptr %23, align 8             ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.aae = icmp eq ptr %i.aac, %i.aad
  br i1 %i.aae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i344: ; preds = %bb.en
  %i.aaf = load i64, ptr %i.aad, align 8
  %i.aag = add i64 %i.aaf, 1
  call void @_ZdlPvm(ptr noundef %i.aac, i64 noundef %i.aag) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br i1 %.0.i343, label %bb.eo, label %.body348

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i345: ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br i1 %.0.i343, label %bb.eo, label %.body348

bb.eo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i345, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i344, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i340
  %.pn10.i341 = phi { ptr, i32 } [ %i.aaa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i340 ], [ %i.aab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i345 ], [ %i.aab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i344 ]
  call void @__cxa_free_exception(ptr %i.zz) #28
  br label %.body348

bb.ep:                                            ; preds = %.lr.ph1011
  %i.aah = getelementptr inbounds nuw i8, ptr %i.zx, i64 32 ; 2 uses
  %i.aai = load ptr, ptr %i.aah, align 8          ; 2 uses
  %.not.i.i.i337 = icmp eq ptr %i.aai, null
  br i1 %.not.i.i.i337, label %bb.eq, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i338

bb.eq:                                            ; preds = %bb.ep
  invoke void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.zx)
          to label %.noexc346 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc346:                                        ; preds = %bb.eq
  %.pre.i.i.i339 = load ptr, ptr %i.aah, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i338

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i338:     ; preds = %.noexc346, %bb.ep
  %i.aaj = phi ptr [ %.pre.i.i.i339, %.noexc346 ], [ %i.aai, %bb.ep ]
  %i.aak = call ptr @__dynamic_cast(ptr nonnull %i.aaj, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x319IfcObjectDefinitionE, i64 -1) #28 ; 3 uses
  %i.aal = icmp eq ptr %i.aak, null
  br i1 %i.aal, label %bb.er, label %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEcvRKS4_Ev.exit

bb.er:                                            ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i338
  invoke void @__cxa_bad_cast() #30
          to label %.noexc347 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc347:                                        ; preds = %bb.er
  unreachable

bb.es:                                            ; preds = %bb.em
  unreachable

_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEcvRKS4_Ev.exit: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i338
  %i.aam = load ptr, ptr %i.aak, align 8
  %i.aan = getelementptr i8, ptr %i.aam, i64 -24
  %i.aao = load i64, ptr %i.aan, align 8
  %i.aap = getelementptr inbounds i8, ptr %i.aak, i64 %i.aao
  %i.aaq = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.aap, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x310IfcProductE, i64 -1) #28 ; 2 uses
  %.not161 = icmp eq ptr %i.aaq, null
  br i1 %.not161, label %bb.ew, label %bb.et

bb.et:                                            ; preds = %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEcvRKS4_Ev.exit
  %i.aar = invoke fastcc noundef ptr @_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE(ptr noundef nonnull %i.yp, ptr noundef nonnull align 8 dereferenceable(256) %i.aaq, ptr noundef nonnull align 8 dereferenceable(392) %2, ptr noundef null)
          to label %bb.eu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.eu:                                            ; preds = %bb.et
  %.not163 = icmp eq ptr %i.aar, null
  br i1 %.not163, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.aas = load ptr, ptr %i.zd, align 8
  %i.aat = load i32, ptr %i.zg, align 8           ; 2 uses
  %i.aau = add i32 %i.aat, 1
  store i32 %i.aau, ptr %i.zg, align 8
  %i.aav = zext i32 %i.aat to i64
  %i.aaw = getelementptr inbounds nuw [8 x i8], ptr %i.aas, i64 %i.aav
  store ptr %i.aar, ptr %i.aaw, align 8
  br label %bb.ew

bb.ew:                                            ; preds = %bb.eu, %bb.ev, %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x319IfcObjectDefinitionEEcvRKS4_Ev.exit
  %i.aax = getelementptr inbounds nuw i8, ptr %.sroa.0394.01009, i64 8 ; 2 uses
  %.not518 = icmp eq ptr %i.aax, %i.zf
  br i1 %.not518, label %._crit_edge1012, label %.lr.ph1011

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit336: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i333, %bb.ed
  %.sroa.0438.14 = phi ptr [ %i.zr, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i333 ], [ %.sroa.0438.71014, %bb.ed ]
  %.pn519 = phi ptr [ %i.zs, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i333 ], [ %.sroa.18448.71015, %bb.ed ]
  %.sroa.38.14 = phi ptr [ %i.zu, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i333 ], [ %.sroa.38.71016, %bb.ed ]
  %.sroa.18448.14 = getelementptr inbounds nuw i8, ptr %.pn519, i64 8
  %i.aay = load ptr, ptr %41, align 8             ; 3 uses
  %.not.i350 = icmp eq ptr %i.aay, null
  br i1 %.not.i350, label %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit352, label %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i351

_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i351: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit336
  call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %i.aay) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.aay, i64 noundef 1144) #32
  br label %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit352

_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit352: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit336, %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i351
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  br label %bb.ey

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.et, %bb.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i328, %bb.er, %bb.ef
  %lpad.loopexit.split-lp2503 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body348

.body348:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i345, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i344
  %.pn162.pn = phi { ptr, i32 } [ %i.aab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i345 ], [ %.pn10.i341, %bb.eo ], [ %i.aab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i344 ], [ %lpad.loopexit.split-lp2503, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #28
  br label %bb.ex

bb.ex:                                            ; preds = %.body348, %bb.ej, %bb.ei
  %.pn162.pn.pn = phi { ptr, i32 } [ %.pn162.pn, %.body348 ], [ %i.zw, %bb.ej ], [ %i.zv, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  br label %.body

bb.ey:                                            ; preds = %bb.dz, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit352, %bb.dx, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit313
  %.sroa.0438.9 = phi ptr [ %.sroa.0438.71014, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit313 ], [ %.sroa.0438.71014, %bb.dx ], [ %.sroa.0438.14, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit352 ], [ %.sroa.0438.71014, %bb.dz ] ; 2 uses
  %.sroa.18448.9 = phi ptr [ %.sroa.18448.71015, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit313 ], [ %.sroa.18448.71015, %bb.dx ], [ %.sroa.18448.14, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit352 ], [ %.sroa.18448.71015, %bb.dz ] ; 2 uses
  %.sroa.38.9 = phi ptr [ %.sroa.38.71016, %_ZNSt3setImSt4lessImESaImEE4findERKm.exit313 ], [ %.sroa.38.71016, %bb.dx ], [ %.sroa.38.14, %_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev.exit352 ], [ %.sroa.38.71016, %bb.dz ] ; 2 uses
  %i.aaz = load ptr, ptr %.sroa.0432.01017, align 8 ; 2 uses
  %.not515 = icmp eq ptr %i.aaz, %.sroa.03.0.i.i260
  br i1 %.not515, label %._crit_edge1019, label %bb.dv, !llvm.loop !190

._crit_edge1019:                                  ; preds = %.lr.ph.i.i.i.i.i248, %bb.bm, %bb.ey, %bb.bo, %..loopexit_crit_edge21.i.i.i.i.i252, %.loopexit581
  %.sroa.0438.7.lcssa = phi ptr [ %.sroa.0438.9, %bb.ey ], [ null, %bb.bo ], [ null, %.loopexit581 ], [ null, %..loopexit_crit_edge21.i.i.i.i.i252 ], [ null, %bb.bm ], [ null, %.lr.ph.i.i.i.i.i248 ] ; 10 uses
  %.sroa.18448.7.lcssa = phi ptr [ %.sroa.18448.9, %bb.ey ], [ null, %bb.bo ], [ null, %.loopexit581 ], [ null, %..loopexit_crit_edge21.i.i.i.i.i252 ], [ null, %bb.bm ], [ null, %.lr.ph.i.i.i.i.i248 ] ; 10 uses
  %.sroa.38.7.lcssa = phi ptr [ %.sroa.38.9, %bb.ey ], [ null, %bb.bo ], [ null, %.loopexit581 ], [ null, %..loopexit_crit_edge21.i.i.i.i.i252 ], [ null, %bb.bm ], [ null, %.lr.ph.i.i.i.i.i248 ] ; 10 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 4 uses
  store ptr %3, ptr %i.aba, align 8
  %.not157 = icmp eq ptr %3, null
  br i1 %.not157, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %._crit_edge1019
  %i.abb = getelementptr inbounds nuw i8, ptr %2, i64 328
  store ptr %35, ptr %i.abb, align 8
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %._crit_edge1019
  br i1 %.0116, label %bb.iw, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.abc = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.abd = load i8, ptr %i.abc, align 8, !range !14, !noundef !12
  %i.abe = trunc nuw i8 %i.abd to i1
  br i1 %i.abe, label %bb.fc, label %_ZN12_GLOBAL__N_128ProcessProductRepresentationERKN6Assimp3IFC10Schema_2x310IfcProductEP6aiNodeRSt6vectorIS7_SaIS7_EERNS1_14ConversionDataE.exit

bb.fc:                                            ; preds = %bb.fb
  %i.abf = load ptr, ptr %1, align 8
  %i.abg = getelementptr i8, ptr %i.abf, i64 -24
  %i.abh = load i64, ptr %i.abg, align 8
  %i.abi = getelementptr inbounds i8, ptr %1, i64 %i.abh
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 8
  %i.abk = load i64, ptr %i.abj, align 8
  %i.abl = invoke noundef i32 @_ZN6Assimp3IFC16ProcessMaterialsEmjRNS0_14ConversionDataEb(i64 noundef %i.abk, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(392) %2, i1 noundef zeroext false)
          to label %.noexc361 unwind label %.loopexit.split-lp559 ; 2 uses

.noexc361:                                        ; preds = %bb.fc
  %i.abm = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  %i.abn = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  store i32 0, ptr %i.abn, align 8
  %i.abo = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  store ptr null, ptr %i.abo, align 8
  %i.abp = getelementptr inbounds nuw i8, ptr %22, i64 24
  store ptr %i.abn, ptr %i.abp, align 8
  %i.abq = getelementptr inbounds nuw i8, ptr %22, i64 32
  store ptr %i.abn, ptr %i.abq, align 8
  %i.abr = getelementptr inbounds nuw i8, ptr %22, i64 40
  store i64 0, ptr %i.abr, align 8
  %i.abs = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x324IfcProductRepresentationEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.abm)
          to label %bb.fd unwind label %bb.fj     ; 2 uses

bb.fd:                                            ; preds = %.noexc361
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 96 ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abs, i64 104 ; 2 uses
  %i.abv = load ptr, ptr %i.abu, align 8          ; 2 uses
  %i.abw = load ptr, ptr %i.abt, align 8          ; 2 uses
  %i.abx = ptrtoint ptr %i.abv to i64
  %i.aby = ptrtoint ptr %i.abw to i64
  %i.abz = sub i64 %i.abx, %i.aby                 ; 3 uses
  %i.aca = ashr exact i64 %i.abz, 3               ; 2 uses
  %i.acb = icmp ugt i64 %i.aca, 1152921504606846975
  br i1 %i.acb, label %bb.fe, label %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i

bb.fe:                                            ; preds = %bb.fd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #30
          to label %.noexc.i360 unwind label %bb.fj

.noexc.i360:                                      ; preds = %bb.fe
  unreachable

_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i: ; preds = %bb.fd
  %.not.i.i.i.i.i353 = icmp eq ptr %i.abv, %i.abw
  br i1 %.not.i.i.i.i.i353, label %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i, label %bb.ff

bb.ff:                                            ; preds = %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.acc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abz) #29
          to label %.noexc48.i unwind label %bb.fj ; 5 uses

.noexc48.i:                                       ; preds = %bb.ff
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 %i.abz ; 2 uses
  store ptr null, ptr %i.acc, align 8
  %i.ace = getelementptr i8, ptr %i.acc, i64 8    ; 3 uses
  %i.acf = add nsw i64 %i.aca, -1                 ; 2 uses
  %i.acg = icmp eq i64 %i.acf, 0
  br i1 %i.acg, label %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i, label %_ZSt6fill_nIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc48.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.acf, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ace, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false)
  %i.ach = getelementptr inbounds nuw i8, ptr %i.ace, i64 %.idx.i.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i

_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZSt6fill_nIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc48.i, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %.sroa.14.0.i = phi ptr [ %i.acd, %_ZSt6fill_nIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.acd, %.noexc48.i ], [ null, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ] ; 2 uses
  %.sroa.0144.0.i = phi ptr [ %i.acc, %_ZSt6fill_nIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.acc, %.noexc48.i ], [ null, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ] ; 13 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.ach, %_ZSt6fill_nIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationEmS5_ET_S7_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.ace, %.noexc48.i ], [ null, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ] ; 8 uses
  %i.aci = load ptr, ptr %i.abt, align 8          ; 2 uses
  %i.acj = load ptr, ptr %i.abu, align 8
  %i.ack = ptrtoint ptr %i.acj to i64
  %i.acl = ptrtoint ptr %i.aci to i64
  %i.acm = sub i64 %i.ack, %i.acl
  %i.acn = ashr exact i64 %i.acm, 3               ; 2 uses
  %i.aco = icmp sgt i64 %i.acn, 0
  br i1 %i.aco, label %.lr.ph.i.i.i.i.i.i, label %.loopexit190.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i, %.noexc49.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.acs, %.noexc49.i ], [ %i.acn, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.acr, %.noexc49.i ], [ %.sroa.0144.0.i, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i ] ; 2 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.acq, %.noexc49.i ], [ %i.aci, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i ] ; 2 uses
  %i.acp = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcRepresentationEEcvPKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %.0910.i.i.i.i.i.i)
          to label %.noexc49.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc49.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.acp, ptr %.0811.i.i.i.i.i.i, align 8
  %i.acq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.acr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  %i.acs = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.act = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.act, label %.lr.ph.i.i.i.i.i.i, label %.loopexit190.i, !llvm.loop !191

.loopexit190.i:                                   ; preds = %.noexc49.i, %_ZNSt6vectorIPKN6Assimp3IFC10Schema_2x317IfcRepresentationESaIS5_EEC2EmRKS6_.exit.i
  %i.acu = ptrtoint ptr %.sroa.0144.0.i to i64    ; 2 uses
  %.not.i.i.i354 = icmp eq ptr %.sroa.0144.0.i, %.0.i.i.i.i.i.i
  br i1 %.not.i.i.i354, label %._crit_edge276.i, label %bb.fg

bb.fg:                                            ; preds = %.loopexit190.i
  %i.acv = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.acw = sub i64 %i.acv, %i.acu                 ; 2 uses
  %i.acx = ashr exact i64 %i.acw, 3
  %i.acy = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.acx, i1 true)
  %i.acz = shl nuw nsw i64 %i.acy, 1
  %i.ada = xor i64 %i.acz, 126
  invoke fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_T0_T1_(ptr %.sroa.0144.0.i, ptr %.0.i.i.i.i.i.i, i64 noundef %i.ada)
          to label %.noexc52.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc52.i:                                       ; preds = %bb.fg
  %i.adb = icmp sgt i64 %i.acw, 128
  br i1 %i.adb, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %.noexc52.i
  %i.adc = getelementptr inbounds nuw i8, ptr %.sroa.0144.0.i, i64 128 ; 3 uses
  invoke fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_T0_(ptr %.sroa.0144.0.i, ptr nonnull %i.adc)
          to label %.noexc53.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc53.i:                                       ; preds = %bb.fh
  %.not6.i.i.i.i.i = icmp eq ptr %i.adc, %.0.i.i.i.i.i.i
  br i1 %.not6.i.i.i.i.i, label %.lr.ph275.i, label %.lr.ph.i.i.i.i.i359

.lr.ph.i.i.i.i.i359:                              ; preds = %.noexc53.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_.exit.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.adn, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_.exit.i.i.i.i.i ], [ %i.adc, %.noexc53.i ] ; 5 uses
  %i.add = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8 ; 3 uses
  %.sroa.0.06.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i.i, i64 -8 ; 2 uses
  %i.ade = load ptr, ptr %.sroa.0.06.i.i.i.i.i.i, align 8
  %i.adf = invoke fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.add)
          to label %.noexc54.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54.i:                                       ; preds = %.lr.ph.i.i.i.i.i359
  %i.adg = invoke fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.ade)
          to label %.noexc55.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55.i:                                       ; preds = %.noexc54.i
  %i.adh = icmp slt i32 %i.adf, %i.adg
  br i1 %i.adh, label %.lr.ph.i.i.i.i.i51.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i51.i:                             ; preds = %.noexc55.i, %.noexc57.i
  %.sroa.0.08.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %.noexc57.i ], [ %.sroa.0.06.i.i.i.i.i.i, %.noexc55.i ] ; 4 uses
  %.sroa.03.07.i.i.i.i.i.i = phi ptr [ %.sroa.0.08.i.i.i.i.i.i, %.noexc57.i ], [ %.sroa.0.07.i.i.i.i.i, %.noexc55.i ]
  %i.adi = load ptr, ptr %.sroa.0.08.i.i.i.i.i.i, align 8
  store ptr %i.adi, ptr %.sroa.03.07.i.i.i.i.i.i, align 8
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.adj = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8
  %i.adk = invoke fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.add)
          to label %.noexc56.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc56.i:                                       ; preds = %.lr.ph.i.i.i.i.i51.i
  %i.adl = invoke fastcc noundef i32 @_ZNK12_GLOBAL__N_127RateRepresentationPredicate4RateEPKN6Assimp3IFC10Schema_2x317IfcRepresentationE(ptr noundef readonly %i.adj)
          to label %.noexc57.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc57.i:                                       ; preds = %.noexc56.i
  %i.adm = icmp slt i32 %i.adk, %i.adl
  br i1 %i.adm, label %.lr.ph.i.i.i.i.i51.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_.exit.i.i.i.i.i, !llvm.loop !5

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_.exit.i.i.i.i.i: ; preds = %.noexc57.i, %.noexc55.i
  %.sroa.03.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i, %.noexc55.i ], [ %.sroa.0.08.i.i.i.i.i.i, %.noexc57.i ]
  store ptr %i.add, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8
  %i.adn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i50.i = icmp eq ptr %i.adn, %.0.i.i.i.i.i.i
  br i1 %.not.i.i.i.i50.i, label %.lr.ph275.i, label %.lr.ph.i.i.i.i.i359, !llvm.loop !192

bb.fi:                                            ; preds = %.noexc52.i
  invoke fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_SI_T0_(ptr %.sroa.0144.0.i, ptr %.0.i.i.i.i.i.i)
          to label %.lr.ph275.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph275.i:                                      ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6Assimp3IFC10Schema_2x317IfcRepresentationESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_127RateRepresentationPredicateEEEEvT_T0_.exit.i.i.i.i.i, %bb.fi, %.noexc53.i
  %i.ado = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %15, i64 80 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %15, i64 88 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %15, i64 120 ; 2 uses
end_hunk_2
