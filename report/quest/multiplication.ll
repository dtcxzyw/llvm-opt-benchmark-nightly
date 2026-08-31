Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/multiplication?download=true
inline.NumInlined: 598
inline.NumDeleted: 142
begin_hunk_0_@rightapplyMultiQubitProjector:bb.a
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.w ], [ %i.br, %bb.x ], [ %i.br, %bb.y ] ; 2 uses
  %i.bx = load ptr, ptr %7, align 8, !tbaa !9     ; 3 uses
  %.not.i.i.i37 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIiSaIiEED2Ev.exit38, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit36
  %i.by = load ptr, ptr %i.s, align 8, !tbaa !13
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cb) #7
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit38

_ZNSt6vectorIiSaIiEED2Ev.exit38:                  ; preds = %bb.z, %_ZNSt6vectorIiSaIiEED2Ev.exit36, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.v ], [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit36 ], [ %.pn, %bb.z ] ; 2 uses
  %i.cc = load ptr, ptr %6, align 8, !tbaa !9     ; 3 uses
  %.not.i.i.i39 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIiSaIiEED2Ev.exit40, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit38
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !13
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ch) #7
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit40

_ZNSt6vectorIiSaIiEED2Ev.exit40:                  ; preds = %bb.aa, %_ZNSt6vectorIiSaIiEED2Ev.exit38, %bb.u
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.u ], [ %.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit38 ], [ %.pn.pn, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.ci = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i41, label %_ZNSt6vectorIiSaIiEED2Ev.exit34, label %_ZNSt6vectorIiSaIiEED2Ev.exit34.sink.split

_ZNSt6vectorIiSaIiEED2Ev.exit34.sink.split:       ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit40, %bb.t
  %.sink77.sroa.phi = phi ptr [ %.sink77.sroa.gep, %bb.t ], [ %.sink77.sroa.gep78, %_ZNSt6vectorIiSaIiEED2Ev.exit40 ]
  %.sink74 = phi ptr [ %i.bn, %bb.t ], [ %i.ci, %_ZNSt6vectorIiSaIiEED2Ev.exit40 ] ; 2 uses
  %.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.bm, %bb.t ], [ %.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit40 ]
  %i.cj = load ptr, ptr %.sink77.sroa.phi, align 8, !tbaa !13
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %.sink74 to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %.sink74, i64 noundef %i.cm) #7
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit34

_ZNSt6vectorIiSaIiEED2Ev.exit34:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit34.sink.split, %_ZNSt6vectorIiSaIiEED2Ev.exit40, %bb.t
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit40 ], [ %i.bm, %bb.t ], [ %.pn.pn.pn.pn.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit34.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z28leftapplyMultiQubitProjector5QuregSt6vectorIiSaIiEES2_(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %1, align 8, !tbaa !9
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = load ptr, ptr %2, align 8, !tbaa !9
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 2
  %i.p = trunc i64 %i.o to i32
  tail call void @_Z40validate_measurementOutcomesMatchTargetsiiPKc(i32 noundef %i.h, i32 noundef %i.p, ptr noundef nonnull @__func__.leftapplyMultiQubitProjector)
  %i.q = load ptr, ptr %1, align 8, !tbaa !9
  %i.r = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 2
  %i.x = trunc i64 %i.w to i32
  tail call void @leftapplyMultiQubitProjector(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef %i.q, ptr noundef %i.r, i32 noundef %i.x)
  ret void
}

declare void @_Z40validate_measurementOutcomesMatchTargetsiiPKc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_Z29rightapplyMultiQubitProjector5QuregSt6vectorIiSaIiEES2_(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %1, align 8, !tbaa !9
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = load ptr, ptr %2, align 8, !tbaa !9
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 2
  %i.p = trunc i64 %i.o to i32
  tail call void @_Z40validate_measurementOutcomesMatchTargetsiiPKc(i32 noundef %i.h, i32 noundef %i.p, ptr noundef nonnull @__func__.rightapplyMultiQubitProjector)
  %i.q = load ptr, ptr %1, align 8, !tbaa !9
  %i.r = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 2
  %i.x = trunc i64 %i.w to i32
  tail call void @rightapplyMultiQubitProjector(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef %i.q, ptr noundef %i.r, i32 noundef %i.x)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @leftapplyPauliStrSum(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %1, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 5 uses
  %4 = alloca %"class.std::vector", align 8       ; 5 uses
  %5 = alloca %"class.std::vector.3", align 8     ; 8 uses
  %6 = alloca %"class.std::vector.8", align 8     ; 8 uses
  %7 = alloca [2 x %struct.Qureg], align 8        ; 6 uses
  %8 = alloca %"class.std::vector", align 8       ; 5 uses
  %9 = alloca %"class.std::vector", align 8       ; 5 uses
  tail call void @_Z20validate_quregFields5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.leftapplyPauliStrSum)
  tail call void @_Z20validate_quregFields5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %2, ptr noundef nonnull @__func__.leftapplyPauliStrSum)
  tail call void @_Z28validate_quregCanBeWorkspace5QuregS_PKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.Qureg) align 8 %2, ptr noundef nonnull @__func__.leftapplyPauliStrSum)
  tail call void @_Z26validate_pauliStrSumFields11PauliStrSumPKc(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %1, ptr noundef nonnull @__func__.leftapplyPauliStrSum)
  tail call void @_Z27validate_pauliStrSumTargets11PauliStrSum5QuregPKc(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %1, ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.leftapplyPauliStrSum)
  tail call void @_Z34localiser_statevec_setQuregToClone5QuregS_(ptr noundef nonnull byval(%struct.Qureg) align 8 %2, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  tail call void @_Z35localiser_statevec_initUniformState5QuregSt7complexIdE(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, double 0.000000e+00, double 0.000000e+00)
  %i.a = load i64, ptr %1, align 8, !tbaa !32     ; 2 uses
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit32, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit32
  %.058 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %_ZNSt6vectorIiSaIiEED2Ev.exit32 ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.058 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.sroa.05.0.copyload = load i64, ptr %i.p, align 8, !tbaa !35
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !35
  invoke void @_Z37localiser_statevec_anyCtrlPauliTensor5QuregSt6vectorIiSaIiEES2_8PauliStrSt7complexIdE(ptr noundef nonnull byval(%struct.Qureg) align 8 %2, ptr nofree noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef nonnull align 8 dereferenceable(24) %4, i64 %.sroa.05.0.copyload, i64 %.sroa.26.0.copyload, double 1.000000e+00, double 0.000000e+00)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %4, align 8, !tbaa !9      ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #7
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.c, %bb.d
  %i.v = load ptr, ptr %3, align 8, !tbaa !9      ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIiSaIiEED2Ev.exit21, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #7
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit21

_ZNSt6vectorIiSaIiEED2Ev.exit21:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.e
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.058
  %.sroa.6.sroa.0.0.copyload85 = load <2 x double>, ptr %i.aa, align 8, !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ab = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #10
          to label %bb.g unwind label %bb.f       ; 5 uses

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit21
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i4.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit36, label %.body.sink.split

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit21
  store ptr %i.ab, ptr %5, align 8, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  store ptr %i.ae, ptr %i.i, align 8, !tbaa !38
  store i64 4607182418800017408, ptr %i.ab, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x double> %.sroa.6.sroa.0.0.copyload85, ptr %.sroa.6.0..sroa_idx, align 8
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false), !tbaa.struct !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.k, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 104, i1 false), !tbaa.struct !40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.af = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #10
          to label %bb.i unwind label %bb.h       ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %.not.i.i4.i22 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i4.i22, label %.body23, label %.body23.sink.split

bb.i:                                             ; preds = %bb.g
  store ptr %i.af, ptr %6, align 8, !tbaa !42
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 208 ; 2 uses
  store ptr %i.ai, ptr %i.l, align 8, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.af, ptr noundef nonnull align 8 dereferenceable(208) %7, i64 208, i1 false)
  store ptr %i.ai, ptr %i.m, align 8, !tbaa !45
  invoke void @_Z40localiser_statevec_setQuregToWeightedSum5QuregSt6vectorISt7complexIdESaIS2_EES0_IS_SaIS_EE(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %5, ptr nofree noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %6, align 8, !tbaa !42    ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #7
  br label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit

_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit:             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ao = load ptr, ptr %5, align 8, !tbaa !36    ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.as) #7
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit:      ; preds = %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit, %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %.sroa.0.0.copyload = load i64, ptr %i.p, align 8, !tbaa !35
  %.sroa.2.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !35
  invoke void @_Z37localiser_statevec_anyCtrlPauliTensor5QuregSt6vectorIiSaIiEES2_8PauliStrSt7complexIdE(ptr noundef nonnull byval(%struct.Qureg) align 8 %2, ptr nofree noundef nonnull align 8 dereferenceable(24) %8, ptr nofree noundef nonnull align 8 dereferenceable(24) %9, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, double 1.000000e+00, double 0.000000e+00)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit
  %i.at = load ptr, ptr %9, align 8, !tbaa !9     ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIiSaIiEED2Ev.exit30, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = load ptr, ptr %i.n, align 8, !tbaa !13
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #7
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit30

_ZNSt6vectorIiSaIiEED2Ev.exit30:                  ; preds = %bb.m, %bb.n
  %i.ay = load ptr, ptr %8, align 8, !tbaa !9     ; 3 uses
  %.not.i.i.i31 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIiSaIiEED2Ev.exit32, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit30
  %i.az = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #7
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit32

_ZNSt6vectorIiSaIiEED2Ev.exit32:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit30, %bb.o
  %i.bd = add nuw nsw i64 %.058, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !46

bb.p:                                             ; preds = %bb.b
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %4, align 8, !tbaa !9     ; 3 uses
  %.not.i.i.i33 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIiSaIiEED2Ev.exit34, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #7
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit34

_ZNSt6vectorIiSaIiEED2Ev.exit34:                  ; preds = %bb.p, %bb.q
  %i.bk = load ptr, ptr %3, align 8, !tbaa !9     ; 3 uses
  %.not.i.i.i35 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorIiSaIiEED2Ev.exit36, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit34
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #7
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit36

bb.s:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i37, label %.body23, label %.body23.sink.split

.body23.sink.split:                               ; preds = %bb.s, %bb.h
  %.sink77 = phi ptr [ %i.ah, %bb.h ], [ %i.bq, %bb.s ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.bp, %bb.s ]
  %i.br = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %.sink77 to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %.sink77, i64 noundef %i.bu) #7
  br label %.body23

.body23:                                          ; preds = %.body23.sink.split, %bb.s, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.bp, %bb.s ], [ %.pn.ph, %.body23.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.bv = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIiSaIiEED2Ev.exit36, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body23, %bb.f
  %.sink83 = phi ptr [ %i.ad, %bb.f ], [ %i.bv, %.body23 ] ; 2 uses
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %.pn, %.body23 ]
  %i.bw = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %.sink83 to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %.sink83, i64 noundef %i.bz) #7
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit36

bb.t:                                             ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %9, align 8, !tbaa !9     ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorIiSaIiEED2Ev.exit44, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = load ptr, ptr %i.n, align 8, !tbaa !13
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cf) #7
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit44

_ZNSt6vectorIiSaIiEED2Ev.exit44:                  ; preds = %bb.t, %bb.u
  %i.cg = load ptr, ptr %8, align 8, !tbaa !9     ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIiSaIiEED2Ev.exit36, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit44
  %i.ch = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.ck) #7
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit36

_ZNSt6vectorIiSaIiEED2Ev.exit36:                  ; preds = %bb.f, %.body23, %.body.sink.split, %bb.v, %_ZNSt6vectorIiSaIiEED2Ev.exit44, %bb.r, %_ZNSt6vectorIiSaIiEED2Ev.exit34
  %.pn18 = phi { ptr, i32 } [ %i.be, %bb.r ], [ %i.ca, %bb.v ], [ %i.be, %_ZNSt6vectorIiSaIiEED2Ev.exit34 ], [ %i.ca, %_ZNSt6vectorIiSaIiEED2Ev.exit44 ], [ %i.ac, %bb.f ], [ %.pn, %.body23 ], [ %.pn.pn.ph, %.body.sink.split ]
  resume { ptr, i32 } %.pn18
}

declare void @_Z28validate_quregCanBeWorkspace5QuregS_PKc(ptr noundef byval(%struct.Qureg) align 8, ptr noundef byval(%struct.Qureg) align 8, ptr noundef) local_unnamed_addr #1

declare void @_Z26validate_pauliStrSumFields11PauliStrSumPKc(ptr noundef byval(%struct.PauliStrSum) align 8, ptr noundef) local_unnamed_addr #1

declare void @_Z27validate_pauliStrSumTargets11PauliStrSum5QuregPKc(ptr noundef byval(%struct.PauliStrSum) align 8, ptr noundef byval(%struct.Qureg) align 8, ptr noundef) local_unnamed_addr #1

declare void @_Z34localiser_statevec_setQuregToClone5QuregS_(ptr noundef byval(%struct.Qureg) align 8, ptr noundef byval(%struct.Qureg) align 8) local_unnamed_addr #1

declare void @_Z35localiser_statevec_initUniformState5QuregSt7complexIdE(ptr noundef byval(%struct.Qureg) align 8, double, double) local_unnamed_addr #1

declare void @_Z40localiser_statevec_setQuregToWeightedSum5QuregSt6vectorISt7complexIdESaIS2_EES0_IS_SaIS_EE(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @rightapplyPauliStrSum(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %1, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 5 uses
  %4 = alloca %"class.std::vector", align 8       ; 5 uses
  %5 = alloca %"class.std::vector.3", align 8     ; 8 uses
  %6 = alloca %"class.std::vector.8", align 8     ; 8 uses
  %7 = alloca [2 x %struct.Qureg], align 8        ; 6 uses
  %8 = alloca %"class.std::vector", align 8       ; 5 uses
  %9 = alloca %"class.std::vector", align 8       ; 5 uses
  tail call void @_Z20validate_quregFields5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.rightapplyPauliStrSum)
  tail call void @_Z20validate_quregFields5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %2, ptr noundef nonnull @__func__.rightapplyPauliStrSum)
  tail call void @_Z29validate_quregIsDensityMatrix5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.rightapplyPauliStrSum)
  tail call void @_Z28validate_quregCanBeWorkspace5QuregS_PKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.Qureg) align 8 %2, ptr noundef nonnull @__func__.rightapplyPauliStrSum)
  tail call void @_Z26validate_pauliStrSumFields11PauliStrSumPKc(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %1, ptr noundef nonnull @__func__.rightapplyPauliStrSum)
  tail call void @_Z27validate_pauliStrSumTargets11PauliStrSum5QuregPKc(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %1, ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.rightapplyPauliStrSum)
  tail call void @_Z34localiser_statevec_setQuregToClone5QuregS_(ptr noundef nonnull byval(%struct.Qureg) align 8 %2, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  tail call void @_Z35localiser_statevec_initUniformState5QuregSt7complexIdE(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, double 0.000000e+00, double 0.000000e+00)
  %i.a = load i64, ptr %1, align 8, !tbaa !32     ; 2 uses
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit44.a, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit44.a
  %.068 = phi i64 [ 0, %.lr.ph ], [ %i.bk, %_ZNSt6vectorIiSaIiEED2Ev.exit44.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.068 ; 2 uses
  %.sroa.013.0.copyload = load i64, ptr %i.r, align 8, !tbaa !35
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.214.0.copyload = load i64, ptr %.sroa.214.0..sroa_idx, align 8, !tbaa !35
  %i.s = call { i64, i64 } @_Z25paulis_getShiftedPauliStr8PauliStri(i64 %.sroa.013.0.copyload, i64 %.sroa.214.0.copyload, i32 noundef %i.f) ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0        ; 3 uses
  %i.u = extractvalue { i64, i64 } %i.s, 1        ; 3 uses
  %i.v = call noundef i32 @_Z28paulis_getSignOfPauliStrConj8PauliStr(i64 %i.t, i64 %i.u)
  %i.w = sitofp i32 %i.v to double                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_Z37localiser_statevec_anyCtrlPauliTensor5QuregSt6vectorIiSaIiEES2_8PauliStrSt7complexIdE(ptr noundef nonnull byval(%struct.Qureg) align 8 %2, ptr nofree noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef nonnull align 8 dereferenceable(24) %4, i64 %i.t, i64 %i.u, double %i.w, double 0.000000e+00)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %4, align 8, !tbaa !9      ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #7
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.c, %bb.d
  %i.ac = load ptr, ptr %3, align 8, !tbaa !9     ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIiSaIiEED2Ev.exit33, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ag) #7
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit33

_ZNSt6vectorIiSaIiEED2Ev.exit33:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.e
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.068
  %.sroa.6.sroa.0.0.copyload95 = load <2 x double>, ptr %i.ah, align 8, !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ai = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #10
          to label %bb.g unwind label %bb.f       ; 5 uses

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit33
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i4.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit48, label %.body.sink.split

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit33
  store ptr %i.ai, ptr %5, align 8, !tbaa !36
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  store ptr %i.al, ptr %i.k, align 8, !tbaa !38
  store i64 4607182418800017408, ptr %i.ai, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <2 x double> %.sroa.6.sroa.0.0.copyload95, ptr %.sroa.6.0..sroa_idx, align 8
  store ptr %i.al, ptr %i.l, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false), !tbaa.struct !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.m, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 104, i1 false), !tbaa.struct !40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.am = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #10
          to label %bb.i unwind label %bb.h       ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %.not.i.i4.i34 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i4.i34, label %.body35, label %.body35.sink.split

bb.i:                                             ; preds = %bb.g
  store ptr %i.am, ptr %6, align 8, !tbaa !42
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 208 ; 2 uses
  store ptr %i.ap, ptr %i.n, align 8, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.am, ptr noundef nonnull align 8 dereferenceable(208) %7, i64 208, i1 false)
  store ptr %i.ap, ptr %i.o, align 8, !tbaa !45
  invoke void @_Z40localiser_statevec_setQuregToWeightedSum5QuregSt6vectorISt7complexIdESaIS2_EES0_IS_SaIS_EE(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %5, ptr nofree noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %6, align 8, !tbaa !42    ; 3 uses
  %.not.i.i.i37.a = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i37.a, label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.au) #7
  br label %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit

_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit:             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.av = load ptr, ptr %5, align 8, !tbaa !36    ; 3 uses
  %.not.i.i.i39.a = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i39.a, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit
  %i.aw = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.az) #7
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit:      ; preds = %_ZNSt6vectorI5QuregSaIS0_EED2Ev.exit, %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  invoke void @_Z37localiser_statevec_anyCtrlPauliTensor5QuregSt6vectorIiSaIiEES2_8PauliStrSt7complexIdE(ptr noundef nonnull byval(%struct.Qureg) align 8 %2, ptr nofree noundef nonnull align 8 dereferenceable(24) %8, ptr nofree noundef nonnull align 8 dereferenceable(24) %9, i64 %i.t, i64 %i.u, double %i.w, double 0.000000e+00)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit
  %i.ba = load ptr, ptr %9, align 8, !tbaa !9     ; 3 uses
  %.not.i.i.i41.a = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i41.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit42.a, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !13
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.be) #7
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit42.a

_ZNSt6vectorIiSaIiEED2Ev.exit42.a:                ; preds = %bb.m, %bb.n
  %i.bf = load ptr, ptr %8, align 8, !tbaa !9     ; 3 uses
  %.not.i.i.i43.a = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i43.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit44.a, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit42.a
  %i.bg = load ptr, ptr %i.q, align 8, !tbaa !13
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #7
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit44.a

_ZNSt6vectorIiSaIiEED2Ev.exit44.a:                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit42.a, %bb.o
  %i.bk = add nuw nsw i64 %.068, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bk, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !48

bb.p:                                             ; preds = %bb.b
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %4, align 8, !tbaa !9     ; 3 uses
  %.not.i.i.i45.a = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i45.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit46, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #7
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit46

_ZNSt6vectorIiSaIiEED2Ev.exit46:                  ; preds = %bb.p, %bb.q
  %i.br = load ptr, ptr %3, align 8, !tbaa !9     ; 3 uses
  %.not.i.i.i47 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i47, label %_ZNSt6vectorIiSaIiEED2Ev.exit48, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit46
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bv) #7
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit48

bb.s:                                             ; preds = %bb.i
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i49, label %.body35, label %.body35.sink.split

.body35.sink.split:                               ; preds = %bb.s, %bb.h
  %.sink87 = phi ptr [ %i.ao, %bb.h ], [ %i.bx, %bb.s ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.an, %bb.h ], [ %i.bw, %bb.s ]
  %i.by = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %.sink87 to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %.sink87, i64 noundef %i.cb) #7
  br label %.body35

.body35:                                          ; preds = %.body35.sink.split, %bb.s, %bb.h
  %.pn = phi { ptr, i32 } [ %i.an, %bb.h ], [ %i.bw, %bb.s ], [ %.pn.ph, %.body35.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.cc = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i52, label %_ZNSt6vectorIiSaIiEED2Ev.exit48, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body35, %bb.f
  %.sink93 = phi ptr [ %i.ak, %bb.f ], [ %i.cc, %.body35 ] ; 2 uses
  %.pn.pn.ph = phi { ptr, i32 } [ %i.aj, %bb.f ], [ %.pn, %.body35 ]
  %i.cd = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %.sink93 to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %.sink93, i64 noundef %i.cg) #7
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit48

bb.t:                                             ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %9, align 8, !tbaa !9     ; 3 uses
  %.not.i.i.i55 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIiSaIiEED2Ev.exit56, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = load ptr, ptr %i.p, align 8, !tbaa !13
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cm) #7
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit56

_ZNSt6vectorIiSaIiEED2Ev.exit56:                  ; preds = %bb.t, %bb.u
  %i.cn = load ptr, ptr %8, align 8, !tbaa !9     ; 3 uses
  %.not.i.i.i57 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i57, label %_ZNSt6vectorIiSaIiEED2Ev.exit48, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit56
  %i.co = load ptr, ptr %i.q, align 8, !tbaa !13
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cr) #7
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit48

_ZNSt6vectorIiSaIiEED2Ev.exit48:                  ; preds = %bb.f, %.body35, %.body.sink.split, %bb.v, %_ZNSt6vectorIiSaIiEED2Ev.exit56, %bb.r, %_ZNSt6vectorIiSaIiEED2Ev.exit46
  %.pn30 = phi { ptr, i32 } [ %i.bl, %bb.r ], [ %i.ch, %bb.v ], [ %i.bl, %_ZNSt6vectorIiSaIiEED2Ev.exit46 ], [ %i.ch, %_ZNSt6vectorIiSaIiEED2Ev.exit56 ], [ %i.aj, %bb.f ], [ %.pn, %.body35 ], [ %.pn.pn.ph, %.body.sink.split ]
  resume { ptr, i32 } %.pn30
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { builtin nounwind }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}
end_hunk_0
