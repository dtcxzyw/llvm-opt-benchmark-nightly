inline.NumInlined: 1228
inline.NumDeleted: 702
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN3gmx20ColvarsForceProviderD0Ev:bb.a
bb.a:
  tail call void @_ZN3gmx20ColvarsForceProviderD1Ev(ptr noundef nonnull align 8 dead_on_return(1880) dereferenceable(1880) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1880) #26
  ret void
}

declare noundef i32 @_ZN3gmx18ColvarProxyGromacs15set_unit_systemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) unnamed_addr #1

declare noundef i32 @_ZN18colvarproxy_system22set_target_temperatureEd(ptr noundef nonnull align 8 dereferenceable(264), double noundef) unnamed_addr #1

declare noundef i32 @_ZN18colvarproxy_system24set_integration_timestepEd(ptr noundef nonnull align 8 dereferenceable(264), double noundef) unnamed_addr #1

declare noundef i32 @_ZN18colvarproxy_system20set_time_step_factorEi(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) unnamed_addr #1

declare noundef double @_ZN3gmx18ColvarProxyGromacs13rand_gaussianEv(ptr noundef nonnull align 8 dereferenceable(1752)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3gmx20ColvarsForceProvider10add_energyEd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1880) %0, double noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1760 ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !9
  %i.c = fadd double %1, %i.b
  store double %i.c, ptr %i.a, align 8, !tbaa !9
  ret void
}

declare void @_ZNK3gmx18ColvarProxyGromacs17position_distanceERKN12colvarmodule7rvectorES4_(ptr dead_on_unwind writable sret(%"class.colvarmodule::rvector") align 8, ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN18colvarproxy_system19request_total_forceEb(ptr noundef nonnull align 8 dereferenceable(264), i1 noundef zeroext) unnamed_addr #1

declare noundef zeroext i1 @_ZNK18colvarproxy_system20total_forces_enabledEv(ptr noundef nonnull align 8 dereferenceable(264)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK18colvarproxy_system22total_forces_same_stepEv(ptr noundef nonnull align 8 dereferenceable(264)) unnamed_addr #1

declare noundef i32 @_ZN18colvarproxy_system9get_molidERi(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef i32 @_ZN18colvarproxy_system15get_alch_lambdaEPd(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) unnamed_addr #1

declare noundef i32 @_ZN18colvarproxy_system16send_alch_lambdaEv(ptr noundef nonnull align 8 dereferenceable(264)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN18colvarproxy_system24request_alch_energy_freqEi(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 0
}

declare noundef i32 @_ZN18colvarproxy_system14get_dE_dlambdaEPd(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) unnamed_addr #1

declare noundef i32 @_ZN18colvarproxy_system22apply_force_dE_dlambdaEPd(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) unnamed_addr #1

declare noundef i32 @_ZN18colvarproxy_system16get_d2E_dlambda2EPd(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK18colvarproxy_system18get_accelMD_factorEv(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 100, ptr %i.a, align 8, !tbaa !100
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !101
  %i.d = load i64, ptr %i.a, align 8, !tbaa !100  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(100) %i.c, ptr noundef nonnull align 1 dereferenceable(100) @.str.42, i64 100, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.g = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.a unwind label %bb.b       ; 0 uses

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %1, align 8, !tbaa !101    ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.b, align 8, !tbaa !102
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret double 1.000000e+00

bb.b:                                             ; preds = %.noexc.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %1, align 8, !tbaa !101    ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.b
  %i.o = load i64, ptr %i.b, align 8, !tbaa !102
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK18colvarproxy_system15accelMD_enabledEv(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZN11colvarproxy12io_availableEv(ptr noundef nonnull align 8 dereferenceable(1192)) unnamed_addr #1

declare noundef i32 @_ZN11colvarproxy16request_deletionEv(ptr noundef nonnull align 8 dereferenceable(1192)) unnamed_addr #1

declare noundef i32 @_ZN11colvarproxy5resetEv(ptr noundef nonnull align 8 dereferenceable(1192)) unnamed_addr #1

declare noundef i32 @_ZN11colvarproxy19parse_module_configEv(ptr noundef nonnull align 8 dereferenceable(1192)) unnamed_addr #1

declare noundef i32 @_ZN11colvarproxy14load_atoms_pdbEPKcRN12colvarmodule10atom_groupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(1192), ptr noundef, ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(32), double noundef) unnamed_addr #1

declare noundef i32 @_ZN11colvarproxy15load_coords_pdbEPKcRSt6vectorIN12colvarmodule7rvectorESaIS4_EERKS2_IiSaIiEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(1192), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32), double noundef) unnamed_addr #1

declare noundef i32 @_ZN11colvarproxy5setupEv(ptr noundef nonnull align 8 dereferenceable(1192)) unnamed_addr #1

declare noundef i32 @_ZN11colvarproxy12update_inputEv(ptr noundef nonnull align 8 dereferenceable(1192)) unnamed_addr #1

declare noundef i32 @_ZN11colvarproxy13update_outputEv(ptr noundef nonnull align 8 dereferenceable(1192)) unnamed_addr #1

declare void @_ZN3gmx18ColvarProxyGromacs3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare void @_ZN3gmx18ColvarProxyGromacs5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare noundef i32 @_ZN3gmx18ColvarProxyGromacs11backup_fileEPKc(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef) unnamed_addr #1

declare noundef i32 @_ZN3gmx18ColvarProxyGromacs9init_atomEi(ptr noundef nonnull align 8 dereferenceable(1752), i32 noundef) unnamed_addr #1

declare noundef i32 @_ZN3gmx18ColvarProxyGromacs13check_atom_idEi(ptr noundef nonnull align 8 dereferenceable(1752), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx20ColvarsForceProvider15calculateForcesERKNS_18ForceProviderInputEPNS_19ForceProviderOutputE(ptr noundef nonnull align 8 dereferenceable(1880) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1268
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.d = load i32, ptr %i.c, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %i.b, i32 noundef %i.d, ptr noundef nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105, !nonnull !114, !align !115 ; 4 uses
  %.sroa.088.0.copyload = load ptr, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !116
  store i64 %i.i, ptr @_ZN12colvarmodule2itE, align 8, !tbaa !117
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1792 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !119
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !120
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !121
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1768 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !122, !range !123, !noundef !114
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !124
  %i.u = tail call noundef i64 @_ZNK3gmx12LocalAtomSet14numAtomsGlobalEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  %i.v = trunc i64 %i.u to i32
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !124
  %i.x = tail call noundef i64 @_ZNK3gmx12LocalAtomSet13numAtomsLocalEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.y = trunc i64 %i.x to i32
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !124
  %i.aa = tail call { ptr, ptr } @_ZNK3gmx12LocalAtomSet10localIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %i.ab = extractvalue { ptr, ptr } %i.aa, 0
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !124
  %i.ad = tail call { ptr, ptr } @_ZNK3gmx12LocalAtomSet15collectiveIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  %i.ae = extractvalue { ptr, ptr } %i.ad, 0
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1816 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !125
  tail call void @_Z27communicate_group_positionsRKN3gmx7MpiCommEPA3_fPA3_iS6_bPA3_KfiiPKiSB_S4_S9_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef %i.k, ptr noundef %i.m, ptr noundef %i.o, i1 noundef zeroext %i.r, ptr noundef nonnull %.sroa.088.0.copyload, i32 noundef %i.v, i32 noundef %i.y, ptr noundef %i.ab, ptr noundef %i.ae, ptr noundef %i.ag, ptr noundef nonnull %i.e)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !126
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %.preheader90, label %.loopexit

.preheader90:                                     ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !136 ; 2 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !137 ; 3 uses
  %.not124 = icmp eq ptr %i.am, %i.an
  br i1 %.not124, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader90
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.an, i8 0, i64 %i.aq, i1 false), !tbaa !138
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %.preheader90
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !139 ; 2 uses
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !140 ; 2 uses
  %.not125 = icmp eq ptr %i.at, %i.au
  br i1 %.not125, label %._crit_edge, label %.lr.ph94

.lr.ph94:                                         ; preds = %.preheader
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 2                 ; 4 uses
  %i.az = load ptr, ptr %i.j, align 8, !tbaa !119 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !137 ; 2 uses
  %min.iters.check = icmp ult i64 %i.ay, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph94
  %n.vec = and i64 %i.ay, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.az, i64 %index
  %wide.vec = load <12 x float>, ptr %i.bc, align 4, !tbaa !141 ; 3 uses
  %strided.vec = shufflevector <12 x float> %wide.vec, <12 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %strided.vec165 = shufflevector <12 x float> %wide.vec, <12 x float> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 10>
  %strided.vec166 = shufflevector <12 x float> %wide.vec, <12 x float> poison, <4 x i32> <i32 2, i32 5, i32 8, i32 11>
  %i.bd = fpext <4 x float> %strided.vec to <4 x double>
  %i.be = fpext <4 x float> %strided.vec165 to <4 x double>
  %i.bf = fpext <4 x float> %strided.vec166 to <4 x double>
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %index
  %i.bh = shufflevector <4 x double> %i.bd, <4 x double> %i.be, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bi = shufflevector <4 x double> %i.bf, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x double> %i.bh, <8 x double> %i.bi, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x double> %interleaved.vec, ptr %i.bg, align 8, !tbaa !138
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !142

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph94, %middle.block
  %.05593.ph = phi i64 [ 0, %.lr.ph94 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1760 ; 3 uses
  store double 0.000000e+00, ptr %i.bk, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !146
  %i.bn = tail call noundef i32 @_ZN12colvarmodule4calcEv(ptr noundef nonnull align 8 dereferenceable(632) %i.bm)
  %.not = icmp eq i32 %i.bn, 0
  br i1 %.not, label %bb.d, label %.noexc.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.05593 = phi i64 [ %i.bv, %scalar.ph ], [ %.05593.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.az, i64 %.05593 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !141
  %i.br = fpext float %i.bq to double
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.05593 ; 2 uses
  %i.bt = load <2 x float>, ptr %i.bo, align 4, !tbaa !141
  %i.bu = fpext <2 x float> %i.bt to <2 x double>
  store <2 x double> %i.bu, ptr %i.bs, align 8, !tbaa !138
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store double %i.br, ptr %.sroa.583.0..sroa_idx, align 8, !tbaa !138
  %i.bv = add nuw i64 %.05593, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bv, %i.ay
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !147

.noexc.i:                                         ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.bw, ptr %3, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 30, ptr %i.a, align 8, !tbaa !100
  %i.bx = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bx, ptr %3, align 8, !tbaa !101
  %i.by = load i64, ptr %i.a, align 8, !tbaa !100 ; 3 uses
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.bx, ptr noundef nonnull align 1 dereferenceable(30) @.str.41, i64 30, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !103
  %i.ca = load ptr, ptr %3, align 8, !tbaa !101
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.by
  store i8 0, ptr %i.cb, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.cc = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef -1)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %.noexc.i
  %i.cd = load ptr, ptr %3, align 8, !tbaa !101   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bw
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.cf = load i64, ptr %i.bw, align 8, !tbaa !102
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.d

bb.c:                                             ; preds = %.noexc.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %3, align 8, !tbaa !101   ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bw
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.c
  %i.ck = load i64, ptr %i.bw, align 8, !tbaa !102
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.ch

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !148 ; 5 uses
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph97, label %.loopexit.critedge

.lr.ph97:                                         ; preds = %bb.d
  %i.cp = load ptr, ptr %i.ak, align 8, !tbaa !137 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1824
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !149 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.cn to i64   ; 8 uses
  %min.iters.check168 = icmp ult i32 %i.cn, 4
  br i1 %min.iters.check168, label %scalar.ph167.preheader, label %vector.ph169

vector.ph169:                                     ; preds = %.lr.ph97
  %n.vec170 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body171

vector.body171:                                   ; preds = %vector.body171, %vector.ph169
  %index172 = phi i64 [ 0, %vector.ph169 ], [ %index.next178, %vector.body171 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %index172
  %wide.vec173 = load <12 x double>, ptr %i.cs, align 8, !tbaa !138 ; 2 uses
  %strided.vec176 = shufflevector <12 x double> %wide.vec173, <12 x double> poison, <4 x i32> <i32 2, i32 5, i32 8, i32 11>
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %i.cr, i64 %index172
  %i.cu = fptrunc <4 x double> %strided.vec176 to <4 x float>
  %i.cv = shufflevector <12 x double> %wide.vec173, <12 x double> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 1, i32 4, i32 7, i32 10>
  %i.cw = fptrunc <8 x double> %i.cv to <8 x float>
  %i.cx = shufflevector <4 x float> %i.cu, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec177 = shufflevector <8 x float> %i.cw, <8 x float> %i.cx, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec177, ptr %i.ct, align 4, !tbaa !141
  %index.next178 = add nuw i64 %index172, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next178, %n.vec170
  br i1 %i.cy, label %middle.block179, label %vector.body171, !llvm.loop !150

middle.block179:                                  ; preds = %vector.body171
  %cmp.n180 = icmp eq i64 %n.vec170, %wide.trip.count
  br i1 %cmp.n180, label %._crit_edge98, label %scalar.ph167.preheader

scalar.ph167.preheader:                           ; preds = %.lr.ph97, %middle.block179
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph97 ], [ %n.vec170, %middle.block179 ]
  br label %scalar.ph167

._crit_edge98:                                    ; preds = %scalar.ph167, %middle.block179
  %i.cz = load double, ptr %i.bk, align 8, !tbaa !9
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !151, !nonnull !114, !align !115
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 300 ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !141
  %i.de = fpext float %i.dd to double
  %i.df = fadd double %i.cz, %i.de
  %i.dg = fptrunc double %i.df to float
  store float %i.dg, ptr %i.dc, align 4, !tbaa !141
  %i.dh = load ptr, ptr %i.af, align 8, !tbaa !125 ; 8 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !155 ; 8 uses
  %wide.trip.count140 = zext nneg i32 %i.cn to i64
  %min.iters.check184 = icmp ult i32 %i.cn, 8
  br i1 %min.iters.check184, label %scalar.ph183.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %._crit_edge98
  %i.dk = mul nuw nsw i64 %wide.trip.count, 12    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dj, i64 %i.dk
  %scevgep182 = getelementptr i8, ptr %i.dh, i64 %i.dk
  %bound0 = icmp ult ptr %i.dj, %scevgep182
  %bound1 = icmp ult ptr %i.dh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph183.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %vector.memcheck
  %n.vec186 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body187
end_hunk_0
