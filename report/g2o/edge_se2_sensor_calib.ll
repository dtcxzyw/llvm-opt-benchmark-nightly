inline.NumInlined: 3172
inline.NumDeleted: 1790
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN3g2o8BaseEdgeILi3ENS_3SE2EE21readInformationMatrixERSi:bb.a
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !65   ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.critedge2.1, label %.critedge

.critedge2.1:                                     ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.z) ; 0 uses
  %i.ab = load double, ptr %i.z, align 8, !tbaa !74
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %0, i64 248
  store double %i.ab, ptr %gep.1.1, align 8, !tbaa !74
  %.pre43.pre = load ptr, ptr %1, align 8, !tbaa !42
  %.phi.trans.insert44.phi.trans.insert = getelementptr i8, ptr %.pre43.pre, i64 -24
  %.pre45.pre = load i64, ptr %.phi.trans.insert44.phi.trans.insert, align 8
  %.phi.trans.insert46.phi.trans.insert = getelementptr inbounds i8, ptr %1, i64 %.pre45.pre
  %.phi.trans.insert47.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.phi.trans.insert46.phi.trans.insert, i64 32
  %.pre48.pre = load i32, ptr %.phi.trans.insert47.phi.trans.insert, align 8, !tbaa !65 ; 2 uses
  %i.ac = icmp eq i32 %.pre48.pre, 0
  br i1 %i.ac, label %.critedge2.2, label %.critedge

.critedge2.2:                                     ; preds = %.critedge2.1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ae = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ad) ; 0 uses
  %.pre49.pre.pre = load ptr, ptr %1, align 8, !tbaa !42
  %.phi.trans.insert50.phi.trans.insert.phi.trans.insert = getelementptr i8, ptr %.pre49.pre.pre, i64 -24
  %.pre51.pre.pre = load i64, ptr %.phi.trans.insert50.phi.trans.insert.phi.trans.insert, align 8
  %.phi.trans.insert52.phi.trans.insert.phi.trans.insert = getelementptr inbounds i8, ptr %1, i64 %.pre51.pre.pre
  %.phi.trans.insert53.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.phi.trans.insert52.phi.trans.insert.phi.trans.insert, i64 32
  %.pre54.pre.pre = load i32, ptr %.phi.trans.insert53.phi.trans.insert.phi.trans.insert, align 8, !tbaa !65
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ag = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.af) ; 0 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !42
  %i.ai = getelementptr i8, ptr %i.ah, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %1, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !65 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ap = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ao) ; 0 uses
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !74
  %gep.133 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double %i.aq, ptr %gep.133, align 8, !tbaa !74
  %i.ar = load ptr, ptr %1, align 8, !tbaa !42
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %1, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !65 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.critedge2, label %.critedge
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK3g2o18EdgeSE2SensorCalib5writeERSo(ptr noundef nonnull align 16 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load double, ptr %i.a, align 16, !tbaa !8, !noalias !89
  %i.e = load double, ptr %i.b, align 16, !tbaa !74, !noalias !89
  %i.f = load double, ptr %i.c, align 8, !tbaa !74, !noalias !89
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.e)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.f)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.d)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.m = tail call noundef zeroext i1 @_ZNK3g2o8BaseEdgeILi3ENS_3SE2EE22writeInformationMatrixERSo(ptr noundef nonnull align 16 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o8BaseEdgeILi3ENS_3SE2EE22writeInformationMatrixERSo(ptr noundef nonnull align 16 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load double, ptr %i.a, align 16, !tbaa !74
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.b)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = load double, ptr %i.e, align 8, !tbaa !74
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.f)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = load double, ptr %i.i, align 16, !tbaa !74
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.j)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.n = load double, ptr %i.m, align 16, !tbaa !74
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.n)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.r = load double, ptr %i.q, align 8, !tbaa !74
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.v = load double, ptr %i.u, align 16, !tbaa !74
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.v)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !42
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !65
  %i.ae = icmp eq i32 %i.ad, 0
  ret i1 %i.ae
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o18EdgeSE2SensorCalibD0Ev(ptr noundef nonnull align 16 dereferenceable(496) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 16 dead_on_return(496) dereferenceable(496) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 496) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10HyperGraph4Edge11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi3ENS_3SE2EJNS_9VertexSE2ES2_S2_EE6resizeEm(ptr noundef nonnull align 16 dereferenceable(456) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o10HyperGraph4Edge6resizeEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o18BaseFixedSizedEdgeILi3ENS_3SE2EJNS_9VertexSE2ES2_S2_EE16allVerticesFixedEv(ptr noundef nonnull align 16 dereferenceable(456) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.e = load i8, ptr %i.d, align 4, !tbaa !92, !range !104, !noundef !63
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNK3g2o18BaseFixedSizedEdgeILi3ENS_3SE2EJNS_9VertexSE2ES2_S2_EE18allVerticesFixedNsIJLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT_EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.j = load i8, ptr %i.i, align 4, !tbaa !92, !range !104, !noundef !63
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZNK3g2o18BaseFixedSizedEdgeILi3ENS_3SE2EJNS_9VertexSE2ES2_S2_EE18allVerticesFixedNsIJLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT_EEE.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 100
  %i.o = load i8, ptr %i.n, align 4, !tbaa !92, !range !104, !noundef !63
  %i.p = trunc nuw i8 %i.o to i1
  br label %_ZNK3g2o18BaseFixedSizedEdgeILi3ENS_3SE2EJNS_9VertexSE2ES2_S2_EE18allVerticesFixedNsIJLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT_EEE.exit

_ZNK3g2o18BaseFixedSizedEdgeILi3ENS_3SE2EJNS_9VertexSE2ES2_S2_EE18allVerticesFixedNsIJLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT_EEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.q = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.p, %bb.c ]
  ret i1 %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18EdgeSE2SensorCalib12computeErrorEv(ptr noundef nonnull align 16 dereferenceable(496) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.l = load double, ptr %i.h, align 16, !noalias !105 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %.sroa.427.16.copyload = load <2 x double>, ptr %i.m, align 16, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.o = tail call double @sin(double noundef %i.l) #18, !noalias !108 ; 2 uses
  %i.p = tail call double @cos(double noundef %i.l) #18, !noalias !108 ; 2 uses
  %i.q = fneg double %i.o
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x double> poison, double %i.p, i64 0
  %.sroa.0.8.vec.insert.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i, double %i.o, i64 1
  %.sroa.5.16.vec.insert.i.i.i = insertelement <2 x double> poison, double %i.q, i64 0
  %.sroa.5.24.vec.insert.i.i.i = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i.i, double %i.p, i64 1
  %i.r = load <2 x double>, ptr %i.n, align 16, !noalias !113 ; 2 uses
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.t = fmul <2 x double> %.sroa.0.8.vec.insert.i.i.i, %i.s
  %i.u = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.v = fmul <2 x double> %.sroa.5.24.vec.insert.i.i.i, %i.u
  %i.w = fadd <2 x double> %i.t, %i.v
  %i.x = fadd <2 x double> %.sroa.427.16.copyload, %i.w
  %i.y = load double, ptr %i.k, align 16, !tbaa !8, !noalias !105 ; 2 uses
  %i.z = fadd double %i.l, %i.y
  %i.aa = fadd double %i.z, f0x400921FB54442D18
  %i.ab = tail call double @fmod(double noundef %i.aa, double noundef f0x401921FB54442D18) #18, !noalias !105 ; 2 uses
  %i.ac = fcmp ugt double %i.ab, 0.000000e+00
  %.0.v.i.i.i = select i1 %i.ac, double f0xC00921FB54442D18, double f0x400921FB54442D18
  %.0.i.i.i = fadd double %i.ab, %.0.v.i.i.i
  %i.ad = fsub double f0x400921FB54442D18, %.0.i.i.i
  %i.ae = tail call double @fmod(double noundef %i.ad, double noundef f0x401921FB54442D18) #18, !noalias !114 ; 2 uses
  %i.af = fcmp ugt double %i.ae, 0.000000e+00
  %.0.v.i.i = select i1 %i.af, double f0xC00921FB54442D18, double f0x400921FB54442D18
  %.0.i.i = fadd double %i.ae, %.0.v.i.i          ; 5 uses
  %i.ag = tail call double @sin(double noundef %.0.i.i) #18, !noalias !117 ; 2 uses
  %i.ah = tail call double @cos(double noundef %.0.i.i) #18, !noalias !117 ; 2 uses
  %i.ai = fneg double %i.ag
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.ah, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i, double %i.ag, i64 1
  %.sroa.5.16.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.ai, i64 0
  %.sroa.5.24.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i.i.i, double %i.ah, i64 1
  %1 = fneg <2 x double> %i.x                     ; 2 uses
  %i.aj = shufflevector <2 x double> %1, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x double> %.sroa.0.8.vec.insert.i.i.i.i, %i.aj
  %i.al = shufflevector <2 x double> %1, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.am = fmul <2 x double> %.sroa.5.24.vec.insert.i.i.i.i, %i.al
  %i.an = fadd <2 x double> %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.ap = tail call double @sin(double noundef %.0.i.i) #18, !noalias !128 ; 2 uses
  %i.aq = tail call double @cos(double noundef %.0.i.i) #18, !noalias !128 ; 2 uses
  %i.ar = fneg double %i.ap
  %.sroa.0.0.vec.insert.i.i.i7 = insertelement <2 x double> poison, double %i.aq, i64 0
  %.sroa.0.8.vec.insert.i.i.i8 = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i7, double %i.ap, i64 1
  %.sroa.5.16.vec.insert.i.i.i9 = insertelement <2 x double> poison, double %i.ar, i64 0
  %.sroa.5.24.vec.insert.i.i.i10 = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i.i9, double %i.aq, i64 1
  %i.as = load <2 x double>, ptr %i.ao, align 16, !noalias !135 ; 2 uses
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x double> %.sroa.0.8.vec.insert.i.i.i8, %i.at
  %i.av = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aw = fmul <2 x double> %.sroa.5.24.vec.insert.i.i.i10, %i.av
  %i.ax = fadd <2 x double> %i.au, %i.aw
  %i.ay = fadd <2 x double> %i.an, %i.ax
  %i.az = load double, ptr %i.i, align 16, !tbaa !8, !noalias !136
  %i.ba = fadd double %.0.i.i, %i.az
  %i.bb = fadd double %i.ba, f0x400921FB54442D18
  %i.bc = tail call double @fmod(double noundef %i.bb, double noundef f0x401921FB54442D18) #18, !noalias !136 ; 2 uses
  %i.bd = fcmp ugt double %i.bc, 0.000000e+00
  %.0.v.i.i.i11 = select i1 %i.bd, double f0xC00921FB54442D18, double f0x400921FB54442D18
  %.0.i.i.i12 = fadd double %i.bc, %.0.v.i.i.i11  ; 3 uses
  %i.be = tail call double @sin(double noundef %.0.i.i.i12) #18, !noalias !137 ; 2 uses
  %i.bf = tail call double @cos(double noundef %.0.i.i.i12) #18, !noalias !137 ; 2 uses
  %i.bg = fneg double %i.be
  %.sroa.0.0.vec.insert.i.i.i13 = insertelement <2 x double> poison, double %i.bf, i64 0
  %.sroa.0.8.vec.insert.i.i.i14 = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i13, double %i.be, i64 1
  %.sroa.5.16.vec.insert.i.i.i15 = insertelement <2 x double> poison, double %i.bg, i64 0
  %.sroa.5.24.vec.insert.i.i.i16 = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i.i15, double %i.bf, i64 1
  %i.bh = fmul <2 x double> %i.s, %.sroa.0.8.vec.insert.i.i.i14
  %i.bi = fmul <2 x double> %i.u, %.sroa.5.24.vec.insert.i.i.i16
  %i.bj = fadd <2 x double> %i.bi, %i.bh
  %i.bk = fadd <2 x double> %i.ay, %i.bj          ; 2 uses
  %i.bl = fadd double %i.y, %.0.i.i.i12
  %i.bm = fadd double %i.bl, f0x400921FB54442D18
  %i.bn = tail call double @fmod(double noundef %i.bm, double noundef f0x401921FB54442D18) #18, !noalias !144 ; 2 uses
  %i.bo = fcmp ugt double %i.bn, 0.000000e+00
  %.0.v.i.i.i17 = select i1 %i.bo, double f0xC00921FB54442D18, double f0x400921FB54442D18
  %.0.i.i.i18 = fadd double %i.bn, %.0.v.i.i.i17
  %i.bp = load double, ptr %i.j, align 16, !noalias !145 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 480
  %.sroa.441.16.copyload = load <2 x double>, ptr %i.bq, align 16, !tbaa !64
  %i.br = tail call double @sin(double noundef %i.bp) #18, !noalias !148 ; 2 uses
  %i.bs = tail call double @cos(double noundef %i.bp) #18, !noalias !148 ; 2 uses
  %i.bt = fneg double %i.br
  %.sroa.0.0.vec.insert.i.i.i19 = insertelement <2 x double> poison, double %i.bs, i64 0
  %.sroa.0.8.vec.insert.i.i.i20 = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i19, double %i.br, i64 1
  %.sroa.5.16.vec.insert.i.i.i21 = insertelement <2 x double> poison, double %i.bt, i64 0
  %.sroa.5.24.vec.insert.i.i.i22 = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i.i21, double %i.bs, i64 1
  %i.bu = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x double> %i.bu, %.sroa.0.8.vec.insert.i.i.i20
  %i.bw = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bx = fmul <2 x double> %.sroa.5.24.vec.insert.i.i.i22, %i.bw
  %i.by = fadd <2 x double> %i.bx, %i.bv
  %i.bz = fadd <2 x double> %.sroa.441.16.copyload, %i.by
  %i.ca = fadd double %i.bp, %.0.i.i.i18
  %i.cb = fadd double %i.ca, f0x400921FB54442D18
  %i.cc = tail call double @fmod(double noundef %i.cb, double noundef f0x401921FB54442D18) #18, !noalias !145 ; 2 uses
  %i.cd = fcmp ugt double %i.cc, 0.000000e+00
  %.0.v.i.i.i23 = select i1 %i.cd, double f0xC00921FB54442D18, double f0x400921FB54442D18
  %.0.i.i.i24 = fadd double %i.cc, %.0.v.i.i.i23
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 280
  store <2 x double> %i.bz, ptr %i.ce, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store double %.0.i.i.i24, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o18EdgeSE2SensorCalib18setMeasurementDataEPKd(ptr noundef nonnull align 16 dereferenceable(496) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.g2o::SE2", align 16         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = load <2 x double>, ptr %1, align 1, !tbaa !64
  %i.b = getelementptr i8, ptr %1, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !74
  store double %i.c, ptr %2, align 16, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x double> %i.a, ptr %i.d, align 16, !tbaa !74
  %i.e = load ptr, ptr %0, align 16, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 16 dereferenceable(496) %0, ptr noundef nonnull align 16 dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o18EdgeSE2SensorCalib18getMeasurementDataEPd(ptr noundef nonnull align 16 dereferenceable(496) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load double, ptr %i.a, align 16, !tbaa !8, !noalias !153
  %i.d = load <2 x double>, ptr %i.b, align 16
  store <2 x double> %i.d, ptr %1, align 1, !tbaa !64
  %i.e = getelementptr i8, ptr %1, i64 16
  store double %i.c, ptr %i.e, align 8, !tbaa !74
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o18EdgeSE2SensorCalib20measurementDimensionEv(ptr noundef nonnull align 16 dereferenceable(496) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 3
}

declare noundef zeroext i1 @_ZN3g2o16OptimizableGraph4Edge23setMeasurementFromStateEv(ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi3ENS_3SE2EE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(304) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi3ENS_3SE2EE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(304) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi3ENS_3SE2EE15informationDataEv(ptr noundef nonnull align 16 dereferenceable(304) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi3ENS_3SE2EE15informationDataEv(ptr noundef nonnull align 16 dereferenceable(304) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK3g2o8BaseEdgeILi3ENS_3SE2EE4chi2Ev(ptr noundef nonnull align 16 dereferenceable(304) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load <2 x double>, ptr %i.b, align 16, !tbaa !64
  %i.d = load <2 x double>, ptr %i.a, align 8     ; 3 uses
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.f = fmul <2 x double> %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.j = load <2 x double>, ptr %i.i, align 16    ; 5 uses
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x double> %i.h, %i.k
  %i.m = fadd <2 x double> %i.f, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.o = load <2 x double>, ptr %i.n, align 16, !tbaa !64
  %i.p = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.q = fmul <2 x double> %i.o, %i.p
  %i.r = fadd <2 x double> %i.q, %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.t = load double, ptr %i.s, align 16, !tbaa !74
  %i.u = extractelement <2 x double> %i.d, i64 0
  %i.v = fmul double %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.x = load double, ptr %i.w, align 8, !tbaa !74
  %i.y = extractelement <2 x double> %i.j, i64 0
  %i.z = fmul double %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ab = load double, ptr %i.aa, align 16, !tbaa !74
  %i.ac = extractelement <2 x double> %i.j, i64 1
  %i.ad = fmul double %i.ac, %i.ab
  %i.ae = fadd double %i.z, %i.ad
  %i.af = fadd double %i.v, %i.ae
  %i.ag = fmul <2 x double> %i.d, %i.r            ; 2 uses
  %shift = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ag, %shift
  %i.ah = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ai = extractelement <2 x double> %i.j, i64 1
  %i.aj = fmul double %i.ai, %i.af
  %i.ak = fadd double %i.ah, %i.aj
  ret double %i.ak
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi3ENS_3SE2EJNS_9VertexSE2ES2_S2_EE22constructQuadraticFormEv(ptr noundef nonnull align 16 dereferenceable(456) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::Matrix.28", align 8  ; 4 uses
  %2 = alloca %"class.Eigen::Matrix.28", align 16 ; 5 uses
  %3 = alloca %"class.Eigen::Matrix.18", align 16 ; 8 uses
  %4 = alloca %"class.Eigen::Matrix.28", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !156
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 16, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef double %i.e(ptr noundef nonnull align 16 dereferenceable(304) %0)
end_hunk_0
