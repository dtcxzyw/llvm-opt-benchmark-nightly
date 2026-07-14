inline.NumInlined: 1782
inline.NumDeleted: 851
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4geos11triangulate7polygon17PolygonHoleJoiner18getShellCoordIndexERKNS_4geom10CoordinateES6_:_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.060 = phi i64 [ %.1, %vec.epilog.scalar.ph ], [ %.060.ph, %vec.epilog.scalar.ph.preheader ]
  %.sroa.050.059 = phi ptr [ %i.cj, %vec.epilog.scalar.ph ], [ %.sroa.050.059.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.050.059, i64 8
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !154
  %i.ch = fcmp olt double %i.cg, %i.n
  %i.ci = zext i1 %i.ch to i64
  %.1 = add i64 %.060, %i.ci                      ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.050.059, i64 24 ; 2 uses
  %.not57 = icmp eq ptr %i.cj, %i.j
  br i1 %.not57, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !187

bb.h:                                             ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i26, %bb.d
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

bb.i:                                             ; preds = %_ZNSt13unordered_mapIN4geos4geom10CoordinateESt6vectorIS2_SaIS2_EENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE4findERSA_.exit
  %i.cl = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseIN4geos4geom10CoordinateESt4pairIKS3_St6vectorIS3_SaIS3_EEESaIS9_ENS_10_Select1stESt8equal_toIS3_ENS3_8HashCodeENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt13unordered_mapIN4geos4geom10CoordinateESt6vectorIS2_SaIS2_EENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEEixERSA_.exit unwind label %bb.g

_ZNSt13unordered_mapIN4geos4geom10CoordinateESt6vectorIS2_SaIS2_EENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEEixERSA_.exit: ; preds = %bb.i
  %i.cm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit40 unwind label %bb.g ; 0 uses

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit40: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i37, %bb.b, %_ZNSt13unordered_mapIN4geos4geom10CoordinateESt6vectorIS2_SaIS2_EENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEEixERSA_.exit
  %.2 = phi i64 [ 0, %_ZNSt13unordered_mapIN4geos4geom10CoordinateESt6vectorIS2_SaIS2_EENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEEixERSA_.exit ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i37 ]
  %i.cn = invoke ptr @_ZNSt10_HashtableIN4geos4geom10CoordinateESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS2_8HashCodeENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt13unordered_mapIN4geos4geom10CoordinateESt6vectorIS2_SaIS2_EENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE4findERSA_.exit43 unwind label %bb.k

_ZNSt13unordered_mapIN4geos4geom10CoordinateESt6vectorIS2_SaIS2_EENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE4findERSA_.exit43: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit40
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZNSt13unordered_mapIN4geos4geom10CoordinateESt6vectorIS2_SaIS2_EENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE4findERSA_.exit43
  %i.cp = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseIN4geos4geom10CoordinateESt4pairIKS3_St6vectorIS3_SaIS3_EEESaIS9_ENS_10_Select1stESt8equal_toIS3_ENS3_8HashCodeENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt13unordered_mapIN4geos4geom10CoordinateESt6vectorIS2_SaIS2_EENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEEixERSA_.exit45 unwind label %bb.g

_ZNSt13unordered_mapIN4geos4geom10CoordinateESt6vectorIS2_SaIS2_EENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEEixERSA_.exit45: ; preds = %bb.j
  %i.cq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.l unwind label %bb.g       ; 0 uses

bb.k:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit40
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

bb.l:                                             ; preds = %_ZNSt13unordered_mapIN4geos4geom10CoordinateESt6vectorIS2_SaIS2_EENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEEixERSA_.exit45, %_ZNSt13unordered_mapIN4geos4geom10CoordinateESt6vectorIS2_SaIS2_EENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE4findERSA_.exit43
  %i.cs = invoke noundef i64 @_ZN4geos11triangulate7polygon17PolygonHoleJoiner22getShellCoordIndexSkipERKNS_4geom10CoordinateEm(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.2)
          to label %bb.m unwind label %bb.g

bb.m:                                             ; preds = %bb.l
  %i.ct = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdlPv(ptr noundef nonnull %i.ct) #21
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i64 %i.cs

thread-pre-split:                                 ; preds = %bb.k, %bb.h, %bb.g
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ck, %bb.h ], [ %i.cr, %bb.k ], [ %i.ce, %bb.g ]
  %.pr = load ptr, ptr %3, align 8, !tbaa !67
  br label %bb.o

bb.o:                                             ; preds = %thread-pre-split, %bb.f
  %i.cu = phi ptr [ %.pr, %thread-pre-split ], [ null, %bb.f ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %.pn.pn.ph, %thread-pre-split ], [ %i.cd, %bb.f ]
  %.not.i.i.i47 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i47, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit48, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdlPv(ptr noundef nonnull %i.cu) #21
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit48

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit48: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos11triangulate7polygon17PolygonHoleJoiner14addHoleToShellEmPKNS_4geom18CoordinateSequenceEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %1 ; 2 uses
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !134 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.8.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !134
  %i.d = load ptr, ptr %2, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3)
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !134
  %i.i = fcmp oeq <2 x double> %i.c, %i.h         ; 2 uses
  %i.j = extractelement <2 x i1> %i.i, i64 0
  %i.k = extractelement <2 x i1> %i.i, i64 1
  %.0.i = select i1 %i.j, i1 %i.k, i1 false       ; 2 uses
  br i1 %.0.i, label %bb.b, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.a
  %i.l = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 4 uses
  store <2 x double> %i.c, ptr %i.l, align 8, !tbaa !134
  %.sroa.8.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store double %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx93, align 8, !tbaa !134
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.a
  %.sroa.28.0 = phi ptr [ null, %bb.a ], [ %i.m, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.sroa.069.0 = phi ptr [ null, %bb.a ], [ %i.l, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit unwind label %bb.p, !inline_history !138

_ZNK4geos4geom18CoordinateSequence4sizeEv.exit:   ; preds = %bb.b
  %i.r = add i64 %i.q, -1
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit, %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit
  %.sroa.28.1 = phi ptr [ %.sroa.28.0, %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit ], [ %.sroa.28.3, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit ] ; 5 uses
  %.sroa.14.1 = phi ptr [ %.sroa.28.0, %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit ], [ %.sroa.14.4, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit ] ; 3 uses
  %.sroa.069.1 = phi ptr [ %.sroa.069.0, %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit ], [ %.sroa.069.6, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit ] ; 8 uses
  %.025 = phi i64 [ %3, %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit ], [ %i.am, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit ] ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.u(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %.025)
          to label %bb.d unwind label %.loopexit  ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not.i33 = icmp eq ptr %.sroa.14.1, %.sroa.28.1
  br i1 %.not.i33, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.1, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !tbaa.struct !133
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.w = ptrtoint ptr %.sroa.28.1 to i64
  %i.x = ptrtoint ptr %.sroa.069.1 to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.g, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i34

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
          to label %.noexc45 unwind label %.loopexit.split-lp

.noexc45:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i34: ; preds = %bb.f
  %i.aa = sdiv exact i64 %i.y, 24                 ; 3 uses
  %.sroa.speculated.i.i.i35 = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i35, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 384307168202282325)
  %i.ae = select i1 %i.ac, i64 384307168202282325, i64 %i.ad ; 3 uses
  %.not.i.i.i36 = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i36)
  %i.af = mul nuw nsw i64 %i.ae, 24
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #22
          to label %.noexc46 unwind label %.loopexit ; 5 uses

.noexc46:                                         ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !tbaa.struct !133
  %.not10.i.i.i.i.i.i37 = icmp eq ptr %.sroa.069.1, %.sroa.28.1
  br i1 %.not10.i.i.i.i.i.i37, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i42, label %.lr.ph.i.i.i.i.i.i38

.lr.ph.i.i.i.i.i.i38:                             ; preds = %.noexc46, %.lr.ph.i.i.i.i.i.i38
  %.012.i.i.i.i.i.i39 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i38 ], [ %i.ag, %.noexc46 ] ; 2 uses
  %.0911.i.i.i.i.i.i40 = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i38 ], [ %.sroa.069.1, %.noexc46 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i39, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i40, i64 24, i1 false), !tbaa.struct !133, !alias.scope !188
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i40, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i39, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i41 = icmp eq ptr %i.ai, %.sroa.28.1
  br i1 %.not.i.i.i.i.i.i41, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i42, label %.lr.ph.i.i.i.i.i.i38, !llvm.loop !179

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i42: ; preds = %.lr.ph.i.i.i.i.i.i38, %.noexc46
  %.0.lcssa.i.i.i.i.i.i43 = phi ptr [ %i.ag, %.noexc46 ], [ %i.aj, %.lr.ph.i.i.i.i.i.i38 ]
  %.not.i23.i.i44 = icmp eq ptr %.sroa.069.1, null
  br i1 %.not.i23.i.i44, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i42
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.069.1) #21
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i42
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ae
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.e
  %.sroa.28.3 = phi ptr [ %i.ak, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.28.1, %bb.e ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i43.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i43, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.14.1, %bb.e ] ; 4 uses
  %.sroa.069.6 = phi ptr [ %i.ag, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.069.1, %bb.e ] ; 13 uses
  %.sroa.14.4 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i43.pn, i64 24 ; 4 uses
  %i.al = add i64 %.025, 1
  %i.am = urem i64 %i.al, %i.r                    ; 2 uses
  %.not = icmp eq i64 %i.am, %3
  br i1 %.not, label %bb.i, label %bb.c, !llvm.loop !192

bb.i:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit
  %.0.lcssa.i.i.i.i.i.i43.pn.lcssa118119 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.i43.pn to i64
  %.sroa.069.6.lcssa120121 = ptrtoaddr ptr %.sroa.069.6 to i64
  br i1 %.0.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit62, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %2, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3)
          to label %bb.k unwind label %.loopexit.split-lp ; 2 uses

bb.k:                                             ; preds = %bb.j
  %.not.i47 = icmp eq ptr %.sroa.14.4, %.sroa.28.3
  br i1 %.not.i47, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.4, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !tbaa.struct !133
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i43.pn, i64 48
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit62

bb.m:                                             ; preds = %bb.k
  %i.as = ptrtoint ptr %.sroa.28.3 to i64
  %i.at = ptrtoint ptr %.sroa.069.6 to i64
  %i.au = sub i64 %i.as, %i.at                    ; 3 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775800
  br i1 %i.av, label %bb.n, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i48

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
          to label %.noexc60 unwind label %.loopexit.split-lp

.noexc60:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i48: ; preds = %bb.m
  %i.aw = sdiv exact i64 %i.au, 24                ; 3 uses
  %.sroa.speculated.i.i.i49 = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i.i49, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 384307168202282325)
  %i.ba = select i1 %i.ay, i64 384307168202282325, i64 %i.az ; 2 uses
  %.not.i.i.i50 = icmp ne i64 %i.ba, 0
  tail call void @llvm.assume(i1 %.not.i.i.i50)
  %i.bb = mul nuw nsw i64 %i.ba, 24
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #22
          to label %.noexc61 unwind label %.loopexit.split-lp ; 6 uses

.noexc61:                                         ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !tbaa.struct !133
  %.not10.i.i.i.i.i.i51 = icmp eq ptr %.sroa.069.6, %.sroa.28.3
  br i1 %.not10.i.i.i.i.i.i51, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i56, label %.lr.ph.i.i.i.i.i.i52.preheader

.lr.ph.i.i.i.i.i.i52.preheader:                   ; preds = %.noexc61
  %i.be = sub i64 %.0.lcssa.i.i.i.i.i.i43.pn.lcssa118119, %.sroa.069.6.lcssa120121 ; 2 uses
  %i.bf = udiv i64 %i.be, 24
  %i.bg = add nuw nsw i64 %i.bf, 1
  %xtraiter = and i64 %i.bg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i52.prol.loopexit, label %.lr.ph.i.i.i.i.i.i52.prol

.lr.ph.i.i.i.i.i.i52.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i52.preheader, %.lr.ph.i.i.i.i.i.i52.prol
  %.012.i.i.i.i.i.i53.prol = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i52.prol ], [ %i.bc, %.lr.ph.i.i.i.i.i.i52.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i54.prol = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i52.prol ], [ %.sroa.069.6, %.lr.ph.i.i.i.i.i.i52.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i52.prol ], [ 0, %.lr.ph.i.i.i.i.i.i52.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i53.prol, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i54.prol, i64 24, i1 false), !tbaa.struct !133, !alias.scope !193
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i54.prol, i64 24 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i53.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i52.prol.loopexit, label %.lr.ph.i.i.i.i.i.i52.prol, !llvm.loop !197

.lr.ph.i.i.i.i.i.i52.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i52.prol, %.lr.ph.i.i.i.i.i.i52.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i52.preheader ], [ %i.bi, %.lr.ph.i.i.i.i.i.i52.prol ]
  %.012.i.i.i.i.i.i53.unr = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i52.preheader ], [ %i.bi, %.lr.ph.i.i.i.i.i.i52.prol ]
  %.0911.i.i.i.i.i.i54.unr = phi ptr [ %.sroa.069.6, %.lr.ph.i.i.i.i.i.i52.preheader ], [ %i.bh, %.lr.ph.i.i.i.i.i.i52.prol ]
  %i.bj = icmp ult i64 %i.be, 72
  br i1 %i.bj, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i56, label %.lr.ph.i.i.i.i.i.i52

.lr.ph.i.i.i.i.i.i52:                             ; preds = %.lr.ph.i.i.i.i.i.i52.prol.loopexit, %.lr.ph.i.i.i.i.i.i52
  %.012.i.i.i.i.i.i53 = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i52 ], [ %.012.i.i.i.i.i.i53.unr, %.lr.ph.i.i.i.i.i.i52.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i.i54 = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i52 ], [ %.0911.i.i.i.i.i.i54.unr, %.lr.ph.i.i.i.i.i.i52.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i53, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i54, i64 24, i1 false), !tbaa.struct !133, !alias.scope !193
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i54, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i53, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !tbaa.struct !133, !alias.scope !193
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i54, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i53, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false), !tbaa.struct !133, !alias.scope !193
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i54, i64 72 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i53, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !tbaa.struct !133, !alias.scope !193
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i54, i64 96
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i53, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i55.3 = icmp eq ptr %i.bo, %.0.lcssa.i.i.i.i.i.i43.pn
  br i1 %.not.i.i.i.i.i.i55.3, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i56, label %.lr.ph.i.i.i.i.i.i52, !llvm.loop !179

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i56: ; preds = %.lr.ph.i.i.i.i.i.i52.prol.loopexit, %.lr.ph.i.i.i.i.i.i52, %.noexc61
  %.0.lcssa.i.i.i.i.i.i57 = phi ptr [ %i.bc, %.noexc61 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i52.prol.loopexit ], [ %i.br, %.lr.ph.i.i.i.i.i.i52 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i57, i64 24 ; 2 uses
  %.not.i23.i.i58 = icmp eq ptr %.sroa.069.6, null
  br i1 %.not.i23.i.i58, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit62, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i56
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.069.6) #21
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit62

bb.p:                                             ; preds = %bb.b
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit:                                        ; preds = %bb.c, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i34
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.j, %bb.q, %bb.g, %bb.n, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i48
  %.sroa.069.2.ph = phi ptr [ %.sroa.069.6, %bb.j ], [ %.sroa.069.6, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i48 ], [ %.sroa.069.6, %bb.n ], [ %.sroa.069.3, %bb.q ], [ %.sroa.069.1, %bb.g ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit62: ; preds = %bb.l, %bb.o, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i56, %bb.i
  %.sroa.14.2 = phi ptr [ %.sroa.14.4, %bb.i ], [ %i.ar, %bb.l ], [ %i.bs, %bb.o ], [ %i.bs, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i56 ] ; 2 uses
  %.sroa.069.3 = phi ptr [ %.sroa.069.6, %bb.i ], [ %.sroa.069.6, %bb.l ], [ %i.bc, %bb.o ], [ %i.bc, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i56 ] ; 6 uses
  %i.bu = load ptr, ptr %0, align 8, !tbaa !129
  %i.bv = getelementptr inbounds [24 x i8], ptr %i.bu, i64 %1
  invoke void @_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bv, ptr %.sroa.069.3, ptr nonnull %.sroa.14.2)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit62
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZNSt3setIN4geos4geom10CoordinateESt4lessIS2_ESaIS2_EE6insertIN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_S5_EEEEEvT_SE_(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, ptr %.sroa.069.3, ptr nonnull %.sroa.14.2)
          to label %bb.r unwind label %.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %.not.i.i.i64 = icmp eq ptr %.sroa.069.3, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.069.3) #21
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit: ; preds = %bb.r, %bb.s
  ret void

bb.t:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit62
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.p, %bb.t
  %.sroa.069.4 = phi ptr [ %.sroa.069.0, %bb.p ], [ %.sroa.069.3, %bb.t ], [ %.sroa.069.1, %.loopexit ], [ %.sroa.069.2.ph, %.loopexit.split-lp ] ; 2 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bt, %bb.p ], [ %i.bx, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i65 = icmp eq ptr %.sroa.069.4, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit66, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.069.4) #21
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit66

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit66: ; preds = %bb.u, %bb.v
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !67     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !130
  %i.i = load ptr, ptr %0, align 8, !tbaa !67     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 24
  %i.o = icmp ugt i64 %i.n, 384307168202282325
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit.i, !prof !132

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit.i
  %i.q = add i64 %i.d, -24
  %i.r = sub i64 %i.q, %i.e
  %.fr.i = freeze i64 %i.r                        ; 2 uses
  %i.s = urem i64 %.fr.i, 24
  %i.t = add i64 %.fr.i, 24
  %i.u = sub i64 %i.t, %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 8 %i.c, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #21
  br label %_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.v, ptr %i.g, align 8, !tbaa !130
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.f:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !131
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.z, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp sgt i64 %i.f, 24
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !198

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = icmp eq i64 %i.f, 24
  br i1 %i.ab, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !133
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4geos4geom10CoordinateESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.f
  %i.ac = icmp sgt i64 %i.z, 24
  br i1 %i.ac, label %bb.l, label %bb.m, !prof !198

bb.l:                                             ; preds = %bb.k
end_hunk_0
