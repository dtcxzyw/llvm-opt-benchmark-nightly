begin_hunk_0_@_ZN3g2o8BaseEdgeILi3ENS_19VelocityMeasurementEE21readInformationMatrixERSi:bb.a
.critedge2:                                       ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.m) ; 0 uses
  %i.o = load double, ptr %i.m, align 16, !tbaa !51
  %gep.234 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store double %i.o, ptr %gep.234, align 16, !tbaa !51
  %.pre.pre = load ptr, ptr %1, align 8, !tbaa !8
  %.phi.trans.insert.phi.trans.insert = getelementptr i8, ptr %.pre.pre, i64 -24
  %.pre37.pre = load i64, ptr %.phi.trans.insert.phi.trans.insert, align 8
  %.phi.trans.insert38.phi.trans.insert = getelementptr inbounds i8, ptr %1, i64 %.pre37.pre
  %.phi.trans.insert39.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.phi.trans.insert38.phi.trans.insert, i64 32
  %.pre40.pre = load i32, ptr %.phi.trans.insert39.phi.trans.insert, align 8, !tbaa !53 ; 2 uses
  %i.p = icmp eq i32 %.pre40.pre, 0
  br i1 %i.p, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.critedge2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.r = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.q) ; 0 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !8
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !53   ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.critedge2.1, label %.critedge

.critedge2.1:                                     ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.z) ; 0 uses
  %i.ab = load double, ptr %i.z, align 8, !tbaa !51
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %0, i64 248
  store double %i.ab, ptr %gep.1.1, align 8, !tbaa !51
  %.pre43.pre = load ptr, ptr %1, align 8, !tbaa !8
  %.phi.trans.insert44.phi.trans.insert = getelementptr i8, ptr %.pre43.pre, i64 -24
  %.pre45.pre = load i64, ptr %.phi.trans.insert44.phi.trans.insert, align 8
  %.phi.trans.insert46.phi.trans.insert = getelementptr inbounds i8, ptr %1, i64 %.pre45.pre
  %.phi.trans.insert47.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.phi.trans.insert46.phi.trans.insert, i64 32
  %.pre48.pre = load i32, ptr %.phi.trans.insert47.phi.trans.insert, align 8, !tbaa !53 ; 2 uses
  %i.ac = icmp eq i32 %.pre48.pre, 0
  br i1 %i.ac, label %.critedge2.2, label %.critedge

.critedge2.2:                                     ; preds = %.critedge2.1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ae = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ad) ; 0 uses
  %.pre49.pre.pre = load ptr, ptr %1, align 8, !tbaa !8
  %.phi.trans.insert50.phi.trans.insert.phi.trans.insert = getelementptr i8, ptr %.pre49.pre.pre, i64 -24
  %.pre51.pre.pre = load i64, ptr %.phi.trans.insert50.phi.trans.insert.phi.trans.insert, align 8
  %.phi.trans.insert52.phi.trans.insert.phi.trans.insert = getelementptr inbounds i8, ptr %1, i64 %.pre51.pre.pre
  %.phi.trans.insert53.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.phi.trans.insert52.phi.trans.insert.phi.trans.insert, i64 32
  %.pre54.pre.pre = load i32, ptr %.phi.trans.insert53.phi.trans.insert.phi.trans.insert, align 8, !tbaa !53
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ag = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.af) ; 0 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !8
  %i.ai = getelementptr i8, ptr %i.ah, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %1, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !53 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ap = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ao) ; 0 uses
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !51
  %gep.133 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double %i.aq, ptr %gep.133, align 8, !tbaa !51
  %i.ar = load ptr, ptr %1, align 8, !tbaa !8
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %1, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !53 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.critedge2, label %.critedge
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK3g2o28EdgeSE2OdomDifferentialCalib5writeERSo(ptr noundef nonnull align 16 dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load double, ptr %i.a, align 16, !tbaa !51
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.b) ; 2 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = load double, ptr %i.e, align 8, !tbaa !51
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, double noundef %i.f) ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load double, ptr %i.i, align 16, !tbaa !63
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, double noundef %i.j)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.m = tail call noundef zeroext i1 @_ZNK3g2o8BaseEdgeILi3ENS_19VelocityMeasurementEE22writeInformationMatrixERSo(ptr noundef nonnull align 16 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o8BaseEdgeILi3ENS_19VelocityMeasurementEE22writeInformationMatrixERSo(ptr noundef nonnull align 16 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load double, ptr %i.a, align 16, !tbaa !51
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.b)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = load double, ptr %i.e, align 8, !tbaa !51
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.f)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = load double, ptr %i.i, align 16, !tbaa !51
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.j)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.n = load double, ptr %i.m, align 16, !tbaa !51
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.n)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.r = load double, ptr %i.q, align 8, !tbaa !51
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.v = load double, ptr %i.u, align 16, !tbaa !51
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.v)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !8
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.ae = icmp eq i32 %i.ad, 0
  ret i1 %i.ae
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o28EdgeSE2OdomDifferentialCalibD0Ev(ptr noundef nonnull align 16 dereferenceable(456) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 16 dead_on_return(456) dereferenceable(456) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 464) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10HyperGraph4Edge11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi3ENS_19VelocityMeasurementEJNS_9VertexSE2ES2_NS_28VertexOdomDifferentialParamsEEE6resizeEm(ptr noundef nonnull align 16 dereferenceable(456) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o10HyperGraph4Edge6resizeEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o18BaseFixedSizedEdgeILi3ENS_19VelocityMeasurementEJNS_9VertexSE2ES2_NS_28VertexOdomDifferentialParamsEEE16allVerticesFixedEv(ptr noundef nonnull align 16 dereferenceable(456) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.e = load i8, ptr %i.d, align 4, !tbaa !69, !range !85, !noundef !86
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNK3g2o18BaseFixedSizedEdgeILi3ENS_19VelocityMeasurementEJNS_9VertexSE2ES2_NS_28VertexOdomDifferentialParamsEEE18allVerticesFixedNsIJLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT_EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.j = load i8, ptr %i.i, align 4, !tbaa !69, !range !85, !noundef !86
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZNK3g2o18BaseFixedSizedEdgeILi3ENS_19VelocityMeasurementEJNS_9VertexSE2ES2_NS_28VertexOdomDifferentialParamsEEE18allVerticesFixedNsIJLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT_EEE.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 100
  %i.o = load i8, ptr %i.n, align 4, !tbaa !69, !range !85, !noundef !86
  %i.p = trunc nuw i8 %i.o to i1
  br label %_ZNK3g2o18BaseFixedSizedEdgeILi3ENS_19VelocityMeasurementEJNS_9VertexSE2ES2_NS_28VertexOdomDifferentialParamsEEE18allVerticesFixedNsIJLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT_EEE.exit

_ZNK3g2o18BaseFixedSizedEdgeILi3ENS_19VelocityMeasurementEJNS_9VertexSE2ES2_NS_28VertexOdomDifferentialParamsEEE18allVerticesFixedNsIJLm0ELm1ELm2EEEEbSt16integer_sequenceImJXspT_EEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.q = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.p, %bb.c ]
  ret i1 %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o28EdgeSE2OdomDifferentialCalib12computeErrorEv(ptr noundef nonnull align 16 dereferenceable(456) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.g2o::VelocityMeasurement", align 16 ; 4 uses
  %2 = alloca %"class.g2o::MotionMeasurement", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %3 = load double, ptr %i.j, align 16, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %4 = load double, ptr %i.k, align 8, !tbaa !51
  %5 = fmul double %3, %4
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %7 = load double, ptr %6, align 8, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.m = load double, ptr %i.l, align 8, !tbaa !51
  %8 = fmul double %7, %i.m
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %10 = load double, ptr %9, align 16, !tbaa !63
  call void @_ZN3g2o19VelocityMeasurementC1Eddd(ptr noundef nonnull align 16 dereferenceable(24) %1, double noundef %5, double noundef %8, double noundef %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.o = load double, ptr %i.n, align 8, !tbaa !51
  call void @_ZN3g2o11OdomConvert15convertToMotionERKNS_19VelocityMeasurementEd(ptr dead_on_unwind nonnull writable sret(%"class.g2o::MotionMeasurement") align 8 %2, ptr noundef nonnull align 16 dereferenceable(24) %1, double noundef %i.o)
  %i.p = load double, ptr %2, align 8, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load double, ptr %i.s, align 8, !tbaa !51
  %i.u = fsub double f0x400921FB54442D18, %i.t
  %i.v = call double @fmod(double noundef %i.u, double noundef f0x401921FB54442D18) #19, !noalias !87 ; 2 uses
  %i.w = fcmp ugt double %i.v, 0.000000e+00
  %.0.v.i.i = select i1 %i.w, double f0xC00921FB54442D18, double f0x400921FB54442D18
  %.0.i.i = fadd double %i.v, %.0.v.i.i           ; 5 uses
  %i.x = call double @sin(double noundef %.0.i.i) #19, !noalias !90 ; 2 uses
  %i.y = call double @cos(double noundef %.0.i.i) #19, !noalias !90 ; 2 uses
  %i.z = fneg double %i.x
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.y, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i, double %i.x, i64 1
  %.sroa.5.16.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.z, i64 0
  %.sroa.5.24.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i.i.i, double %i.y, i64 1
  %i.aa = fneg double %i.p
  %i.ab = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x double> %i.ac, %.sroa.0.8.vec.insert.i.i.i.i
  %i.ae = fneg double %i.r
  %i.af = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x double> %i.ag, %.sroa.5.24.vec.insert.i.i.i.i
  %i.ai = fadd <2 x double> %i.ah, %i.ad
  %i.aj = load double, ptr %i.h, align 8, !tbaa !101, !noalias !103
  %i.ak = fsub double f0x400921FB54442D18, %i.aj
  %i.al = call double @fmod(double noundef %i.ak, double noundef f0x401921FB54442D18) #19, !noalias !103 ; 2 uses
  %i.am = fcmp ugt double %i.al, 0.000000e+00
  %.0.v.i.i8 = select i1 %i.am, double f0xC00921FB54442D18, double f0x400921FB54442D18
  %.0.i.i9 = fadd double %i.al, %.0.v.i.i8        ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.ao = call double @sin(double noundef %.0.i.i9) #19, !noalias !106 ; 2 uses
  %i.ap = call double @cos(double noundef %.0.i.i9) #19, !noalias !106 ; 2 uses
  %i.aq = fneg double %i.ao
  %.sroa.0.0.vec.insert.i.i.i.i10 = insertelement <2 x double> poison, double %i.ap, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i11 = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i10, double %i.ao, i64 1
  %.sroa.5.16.vec.insert.i.i.i.i12 = insertelement <2 x double> poison, double %i.aq, i64 0
  %.sroa.5.24.vec.insert.i.i.i.i13 = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i.i.i12, double %i.ap, i64 1
  %11 = load double, ptr %i.an, align 8, !tbaa !51, !noalias !117
  %12 = fneg double %11
  %13 = insertelement <2 x double> poison, double %12, i64 0
  %i.ar = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = fmul <2 x double> %.sroa.0.8.vec.insert.i.i.i.i11, %i.ar
  %14 = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %15 = load double, ptr %14, align 8, !tbaa !51, !noalias !117
  %16 = fneg double %15
  %17 = insertelement <2 x double> poison, double %16, i64 0
  %18 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x double> %.sroa.5.24.vec.insert.i.i.i.i13, %18
  %i.au = fadd <2 x double> %i.as, %i.at          ; 2 uses
  %i.av = call double @sin(double noundef %.0.i.i) #19, !noalias !118 ; 2 uses
  %i.aw = call double @cos(double noundef %.0.i.i) #19, !noalias !118 ; 2 uses
  %i.ax = fneg double %i.av
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x double> poison, double %i.aw, i64 0
  %.sroa.0.8.vec.insert.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i, double %i.av, i64 1
  %.sroa.5.16.vec.insert.i.i.i = insertelement <2 x double> poison, double %i.ax, i64 0
  %.sroa.5.24.vec.insert.i.i.i = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i.i, double %i.aw, i64 1
  %i.ay = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x double> %.sroa.0.8.vec.insert.i.i.i, %i.ay
  %i.ba = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bb = fmul <2 x double> %.sroa.5.24.vec.insert.i.i.i, %i.ba
  %i.bc = fadd <2 x double> %i.az, %i.bb
  %i.bd = fadd <2 x double> %i.ai, %i.bc
  %i.be = fadd double %.0.i.i, %.0.i.i9
  %i.bf = fadd double %i.be, f0x400921FB54442D18
  %i.bg = call double @fmod(double noundef %i.bf, double noundef f0x401921FB54442D18) #19, !noalias !125 ; 2 uses
  %i.bh = fcmp ugt double %i.bg, 0.000000e+00
  %.0.v.i.i.i = select i1 %i.bh, double f0xC00921FB54442D18, double f0x400921FB54442D18
  %.0.i.i.i = fadd double %i.bg, %.0.v.i.i.i      ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.bj = call double @sin(double noundef %.0.i.i.i) #19, !noalias !126 ; 2 uses
  %i.bk = call double @cos(double noundef %.0.i.i.i) #19, !noalias !126 ; 2 uses
  %i.bl = fneg double %i.bj
  %.sroa.0.0.vec.insert.i.i.i14 = insertelement <2 x double> poison, double %i.bk, i64 0
  %.sroa.0.8.vec.insert.i.i.i15 = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i14, double %i.bj, i64 1
  %.sroa.5.16.vec.insert.i.i.i16 = insertelement <2 x double> poison, double %i.bl, i64 0
  %.sroa.5.24.vec.insert.i.i.i17 = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i.i16, double %i.bk, i64 1
  %i.bm = load <2 x double>, ptr %i.bi, align 16, !noalias !133 ; 2 uses
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x double> %.sroa.0.8.vec.insert.i.i.i15, %i.bn
  %i.bp = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bq = fmul <2 x double> %.sroa.5.24.vec.insert.i.i.i17, %i.bp
  %i.br = fadd <2 x double> %i.bo, %i.bq
  %i.bs = fadd <2 x double> %i.bd, %i.br
  %i.bt = load double, ptr %i.i, align 16, !tbaa !101, !noalias !134
  %i.bu = fadd double %.0.i.i.i, %i.bt
  %i.bv = fadd double %i.bu, f0x400921FB54442D18
  %i.bw = call double @fmod(double noundef %i.bv, double noundef f0x401921FB54442D18) #19, !noalias !134 ; 2 uses
  %i.bx = fcmp ugt double %i.bw, 0.000000e+00
  %.0.v.i.i.i18 = select i1 %i.bx, double f0xC00921FB54442D18, double f0x400921FB54442D18
  %.0.i.i.i19 = fadd double %i.bw, %.0.v.i.i.i18
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 280
  store <2 x double> %i.bs, ptr %i.by, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store double %.0.i.i.i19, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o28EdgeSE2OdomDifferentialCalib18setMeasurementDataEPKd(ptr noundef nonnull align 16 dereferenceable(456) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.g2o::VelocityMeasurement", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = load double, ptr %1, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !51
  call void @_ZN3g2o19VelocityMeasurementC1Eddd(ptr noundef nonnull align 16 dereferenceable(24) %2, double noundef %i.a, double noundef %i.c, double noundef %i.e)
  %i.f = load ptr, ptr %0, align 16, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 16 dereferenceable(304) %0, ptr noundef nonnull align 16 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o28EdgeSE2OdomDifferentialCalib18getMeasurementDataEPd(ptr noundef nonnull align 16 dereferenceable(456) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load double, ptr %i.a, align 16, !tbaa !51
  store double %i.b, ptr %1, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load double, ptr %i.c, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.d, ptr %i.e, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load double, ptr %i.f, align 16, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.g, ptr %i.h, align 8, !tbaa !51
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o28EdgeSE2OdomDifferentialCalib20measurementDimensionEv(ptr noundef nonnull align 16 dereferenceable(456) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 3
}

declare noundef zeroext i1 @_ZN3g2o16OptimizableGraph4Edge23setMeasurementFromStateEv(ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi3ENS_19VelocityMeasurementEE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(304) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi3ENS_19VelocityMeasurementEE9errorDataEv(ptr noundef nonnull align 16 dereferenceable(304) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi3ENS_19VelocityMeasurementEE15informationDataEv(ptr noundef nonnull align 16 dereferenceable(304) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi3ENS_19VelocityMeasurementEE15informationDataEv(ptr noundef nonnull align 16 dereferenceable(304) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK3g2o8BaseEdgeILi3ENS_19VelocityMeasurementEE4chi2Ev(ptr noundef nonnull align 16 dereferenceable(304) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load <2 x double>, ptr %i.b, align 16, !tbaa !135
  %i.d = load <2 x double>, ptr %i.a, align 8     ; 3 uses
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.f = fmul <2 x double> %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !135
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.j = load <2 x double>, ptr %i.i, align 16    ; 5 uses
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x double> %i.h, %i.k
  %i.m = fadd <2 x double> %i.f, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.o = load <2 x double>, ptr %i.n, align 16, !tbaa !135
  %i.p = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.q = fmul <2 x double> %i.o, %i.p
  %i.r = fadd <2 x double> %i.q, %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.t = load double, ptr %i.s, align 16, !tbaa !51
  %i.u = extractelement <2 x double> %i.d, i64 0
  %i.v = fmul double %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.x = load double, ptr %i.w, align 8, !tbaa !51
  %i.y = extractelement <2 x double> %i.j, i64 0
  %i.z = fmul double %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ab = load double, ptr %i.aa, align 16, !tbaa !51
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
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi3ENS_19VelocityMeasurementEJNS_9VertexSE2ES2_NS_28VertexOdomDifferentialParamsEEE22constructQuadraticFormEv(ptr noundef nonnull align 16 dereferenceable(456) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::Matrix.28", align 8  ; 4 uses
  %2 = alloca %"class.Eigen::Matrix.28", align 16 ; 5 uses
  %3 = alloca %"class.Eigen::Matrix.18", align 16 ; 8 uses
  %4 = alloca %"class.Eigen::Matrix.28", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !136
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 16, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef double %i.e(ptr noundef nonnull align 16 dereferenceable(304) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.g = load ptr, ptr %i.a, align 16, !tbaa !136 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.g, double noundef %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = load <2 x double>, ptr %i.k, align 16, !tbaa !135 ; 2 uses
  %i.n = fneg <2 x double> %i.m
  %i.o = load <2 x double>, ptr %i.l, align 8     ; 2 uses
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x double> %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
end_hunk_0
