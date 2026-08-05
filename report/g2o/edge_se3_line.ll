begin_hunk_0_@_ZN3g2o8internal11writeVectorIN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEEEEbRSoRKNS2_9DenseBaseIT_EE:bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.e)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !8
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.i)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !8
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.m)
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load double, ptr %i.p, align 8, !tbaa !8
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.q)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load double, ptr %i.t, align 8, !tbaa !8
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.u)
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !41
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !80
  %i.ad = icmp eq i32 %i.ac, 0
  ret i1 %i.ad
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o8BaseEdgeILi4ENS_6Line3DEE22writeInformationMatrixERSo(ptr noundef nonnull align 16 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load double, ptr %i.a, align 16, !tbaa !8
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.b)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.f = load double, ptr %i.e, align 16, !tbaa !8
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.f)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.j = load double, ptr %i.i, align 16, !tbaa !8
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.j)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.n = load double, ptr %i.m, align 16, !tbaa !8
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.n)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.r = load double, ptr %i.q, align 8, !tbaa !8
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.v = load double, ptr %i.u, align 8, !tbaa !8
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.v)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.z = load double, ptr %i.y, align 8, !tbaa !8
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.z)
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ad = load double, ptr %i.ac, align 16, !tbaa !8
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.ad)
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ah = load double, ptr %i.ag, align 16, !tbaa !8
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.ah)
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.al = load double, ptr %i.ak, align 8, !tbaa !8
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.al)
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !41
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %1, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !80
  %i.au = icmp eq i32 %i.at, 0
  ret i1 %i.au
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o13EdgeSE3Line3D12computeErrorEv(ptr noundef nonnull align 16 dereferenceable(512) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.g2o::Line3D", align 16      ; 4 uses
  %2 = alloca %"class.Eigen::Transform", align 16 ; 19 uses
  %3 = alloca %"class.Eigen::Matrix.28", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.l = load double, ptr %i.g, align 8, !tbaa !8, !noalias !90
  store double %i.l, ptr %2, align 16, !tbaa !8, !alias.scope !90
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.o = load double, ptr %i.n, align 8, !tbaa !8, !noalias !90
  store double %i.o, ptr %i.m, align 8, !tbaa !8, !alias.scope !90
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.r = load double, ptr %i.q, align 8, !tbaa !8, !noalias !90 ; 2 uses
  store double %i.r, ptr %i.p, align 16, !tbaa !8, !alias.scope !90
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.u = load double, ptr %i.t, align 8, !tbaa !8, !noalias !90
  store double %i.u, ptr %i.s, align 16, !tbaa !8, !alias.scope !90
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.x = load double, ptr %i.w, align 8, !tbaa !8, !noalias !90
  store double %i.x, ptr %i.v, align 8, !tbaa !8, !alias.scope !90
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  %i.aa = load double, ptr %i.z, align 8, !tbaa !8, !noalias !90 ; 2 uses
  store double %i.aa, ptr %i.y, align 16, !tbaa !8, !alias.scope !90
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !8, !noalias !90
  store double %i.ad, ptr %i.ab, align 16, !tbaa !8, !alias.scope !90
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.ag = load double, ptr %i.af, align 8, !tbaa !8, !noalias !90
  store double %i.ag, ptr %i.ae, align 8, !tbaa !8, !alias.scope !90
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !8, !noalias !90 ; 2 uses
  store double %i.aj, ptr %i.ah, align 16, !tbaa !8, !alias.scope !90
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.am = load <2 x double>, ptr %2, align 16, !tbaa !66, !alias.scope !90
  %i.an = fneg <2 x double> %i.am
  %i.ao = load double, ptr %i.ak, align 8, !tbaa !8, !noalias !90 ; 2 uses
  %i.ap = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x double> %i.aq, %i.an
  %i.as = load <2 x double>, ptr %i.s, align 16, !tbaa !66, !alias.scope !90
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.au = load double, ptr %i.at, align 8, !tbaa !8, !noalias !90 ; 2 uses
  %i.av = insertelement <2 x double> poison, double %i.au, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x double> %i.as, %i.aw
  %i.ay = fsub <2 x double> %i.ar, %i.ax
  %i.az = load <2 x double>, ptr %i.ab, align 16, !tbaa !66, !alias.scope !90
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !8, !noalias !90 ; 2 uses
  %i.bc = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x double> %i.az, %i.bd
  %i.bf = fsub <2 x double> %i.ay, %i.be
  %i.bg = fneg double %i.aj
  %i.bh = fmul double %i.bb, %i.bg
  %i.bi = fmul double %i.aa, %i.au
  %i.bj = fsub double %i.bh, %i.bi
  %i.bk = fmul double %i.r, %i.ao
  %i.bl = fsub double %i.bj, %i.bk
  store <2 x double> %i.bf, ptr %i.al, align 16, !tbaa !66, !alias.scope !90
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 112
  store double %i.bl, ptr %i.bm, align 16, !tbaa !8, !alias.scope !90
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !8, !alias.scope !90
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !8, !alias.scope !90
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !8, !alias.scope !90
  store double 1.000000e+00, ptr %i.k, align 8, !tbaa !8, !alias.scope !90
  call void @_ZN3g2omlERKN5Eigen9TransformIdLi3ELi1ELi0EEERKNS_6Line3DE(ptr dead_on_unwind nonnull writable sret(%"class.g2o::Line3D") align 16 %1, ptr noundef nonnull align 16 dereferenceable(128) %2, ptr noundef nonnull align 16 dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN3g2o6Line3D6ominusERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.28") align 16 %3, ptr noundef nonnull align 16 dereferenceable(48) %1, ptr noundef nonnull align 16 dereferenceable(48) %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bo, ptr noundef nonnull align 16 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !93
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void
}

declare void @_ZN3g2omlERKN5Eigen9TransformIdLi3ELi1ELi0EEERKNS_6Line3DE(ptr dead_on_unwind writable sret(%"class.g2o::Line3D") align 16, ptr noundef nonnull align 16 dereferenceable(128), ptr noundef nonnull align 16 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3g2o6Line3D6ominusERKS0_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix.28") align 16 %0, ptr noundef nonnull align 16 dereferenceable(48) %1, ptr noundef nonnull align 16 dereferenceable(48) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.161", align 16 ; 13 uses
  %4 = alloca %"class.Eigen::Quaternion", align 16 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !66, !noalias !94 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load double, ptr %i.c, align 8, !tbaa !8, !noalias !94 ; 3 uses
  %i.e = fmul <2 x double> %i.b, %i.b             ; 2 uses
  %i.f = load <2 x double>, ptr %1, align 16, !tbaa !66, !noalias !99 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = fmul <2 x double> %i.f, %i.f             ; 2 uses
  %i.i = shufflevector <2 x double> %i.h, <2 x double> %i.e, <2 x i32> <i32 0, i32 2>
  %i.j = shufflevector <2 x double> %i.h, <2 x double> %i.e, <2 x i32> <i32 1, i32 3>
  %i.k = fadd <2 x double> %i.i, %i.j
  %.sroa.0157.8.vec.extract.i = extractelement <2 x double> %i.b, i64 1
  %.sroa.0159.0.vec.extract.i = extractelement <2 x double> %i.f, i64 0
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load <2 x double>, ptr %i.l, align 8, !tbaa !66, !noalias !102 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.o = fmul <2 x double> %i.m, %i.m             ; 2 uses
  %i.p = load <2 x double>, ptr %2, align 16, !tbaa !66, !noalias !107 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load double, ptr %i.q, align 16, !tbaa !8, !noalias !107 ; 4 uses
  %i.s = fmul <2 x double> %i.p, %i.p             ; 2 uses
  %i.t = shufflevector <2 x double> %i.s, <2 x double> %i.o, <2 x i32> <i32 0, i32 2>
  %i.u = shufflevector <2 x double> %i.s, <2 x double> %i.o, <2 x i32> <i32 1, i32 3>
  %i.v = fadd <2 x double> %i.t, %i.u
  %i.w = insertelement <2 x double> poison, double %i.r, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ac = load double, ptr %i.g, align 16, !tbaa !8, !noalias !99 ; 4 uses
  %i.ad = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.d, i64 1 ; 2 uses
  %i.af = fmul <2 x double> %i.ae, %i.ae
  %i.ag = fadd <2 x double> %i.af, %i.k
  %i.ah = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ag) ; 6 uses
  %i.ai = load double, ptr %i.n, align 8, !tbaa !8, !noalias !102 ; 4 uses
  %i.aj = shufflevector <2 x double> %i.m, <2 x double> %i.b, <2 x i32> <i32 0, i32 2>
  %i.ak = fneg <2 x double> %i.aj
  %i.al = shufflevector <2 x double> %i.p, <2 x double> %i.f, <2 x i32> <i32 1, i32 3>
  %i.am = fmul <2 x double> %i.al, %i.ak
  %i.an = shufflevector <2 x double> %i.p, <2 x double> %i.f, <2 x i32> <i32 0, i32 2>
  %i.ao = shufflevector <2 x double> %i.m, <2 x double> %i.b, <2 x i32> <i32 1, i32 3>
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> %i.ao, <2 x double> %i.am) ; 4 uses
  %i.aq = fmul <2 x double> %i.ap, %i.ap
  %i.ar = insertelement <2 x double> %i.w, double %i.ai, i64 1 ; 2 uses
  %i.as = fmul <2 x double> %i.ar, %i.ar
  %i.at = fadd <2 x double> %i.as, %i.v
  %i.au = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.at) ; 5 uses
  %i.av = shufflevector <2 x double> %i.ah, <2 x double> %i.au, <2 x i32> <i32 1, i32 2>
  %i.aw = fdiv <2 x double> splat (double 1.000000e+00), %i.av ; 3 uses
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x double> %i.b, %i.ax           ; 3 uses
  %i.az = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ba = insertelement <2 x double> %i.az, double %i.ac, i64 1
  %i.bb = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bc = fmul <2 x double> %i.p, %i.bb           ; 3 uses
  %i.bd = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.be = insertelement <2 x double> %i.bd, double %i.ai, i64 1
  %i.bf = fneg <2 x double> %i.be
  %i.bg = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bh = insertelement <2 x double> %i.bg, double %i.r, i64 0
  %i.bi = fmul <2 x double> %i.bh, %i.bf
  %i.bj = shufflevector <2 x double> %i.p, <2 x double> %i.m, <2 x i32> <i32 1, i32 2>
  %i.bk = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.r, i64 1
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bl, <2 x double> %i.bi) ; 3 uses
  %i.bn = fmul <2 x double> %i.bm, %i.bm          ; 2 uses
  %5 = fneg double %i.d
  %6 = fneg double %.sroa.0157.8.vec.extract.i
  %7 = fmul double %.sroa.0159.0.vec.extract.i, %5
  %8 = fmul double %i.ac, %6
  %i.bo = shufflevector <2 x double> %i.f, <2 x double> %i.b, <2 x i32> <i32 1, i32 2>
  %9 = insertelement <2 x double> poison, double %i.d, i64 0 ; 2 uses
  %i.bp = insertelement <2 x double> %9, double %i.ac, i64 1
  %i.bq = insertelement <2 x double> poison, double %8, i64 0
  %10 = insertelement <2 x double> %i.bq, double %7, i64 1
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.bp, <2 x double> %10) ; 3 uses
  %i.bs = fmul <2 x double> %i.br, %i.br          ; 2 uses
  %i.bt = shufflevector <2 x double> %i.bn, <2 x double> %i.bs, <2 x i32> <i32 0, i32 2>
  %i.bu = shufflevector <2 x double> %i.bn, <2 x double> %i.bs, <2 x i32> <i32 1, i32 3>
  %i.bv = fadd <2 x double> %i.bt, %i.bu
  %i.bw = fadd <2 x double> %i.aq, %i.bv
  %i.bx = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bw) ; 3 uses
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> %i.ah, <2 x i32> <i32 1, i32 2>
  %i.bz = fdiv <2 x double> splat (double 1.000000e+00), %i.by ; 3 uses
  %i.ca = fdiv <2 x double> splat (double 1.000000e+00), %i.bx
  %i.cb = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x double> %i.br, %i.cb          ; 3 uses
  %i.cd = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ce = fmul <2 x double> %i.f, %i.cd           ; 3 uses
  %i.cf = fmul <2 x double> %i.ba, %i.bz          ; 5 uses
  %i.cg = shufflevector <2 x double> %i.au, <2 x double> %i.bx, <2 x i32> <i32 1, i32 2>
  %i.ch = fdiv <2 x double> splat (double 1.000000e+00), %i.cg ; 3 uses
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cj = fmul <2 x double> %i.bm, %i.ci          ; 3 uses
  %i.ck = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x double> %i.m, %i.ck           ; 3 uses
  %i.cm = insertelement <2 x double> %9, double %i.r, i64 1
  %i.cn = fmul <2 x double> %i.cm, %i.aw          ; 4 uses
  %i.co = insertelement <2 x double> %i.az, double %i.ai, i64 0
  %i.cp = fmul <2 x double> %i.co, %i.ch          ; 4 uses
  %i.cq = fmul <2 x double> %i.ap, %i.ca
  %i.cr = fmul <2 x double> %i.ce, %i.bc          ; 2 uses
  %i.cs = fmul <2 x double> %i.bc, %i.ay          ; 2 uses
  %i.ct = fmul <2 x double> %i.bc, %i.cc          ; 2 uses
  %i.cu = fmul <2 x double> %i.ay, %i.cj          ; 2 uses
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> %i.ct, <2 x i32> <i32 0, i32 2>
  %i.cw = shufflevector <2 x double> %i.cu, <2 x double> %i.ct, <2 x i32> <i32 1, i32 3>
  %i.cx = fadd <2 x double> %i.cv, %i.cw
  %i.cy = fmul <2 x double> %i.cn, %i.cq
  %i.cz = fadd <2 x double> %i.cy, %i.cx          ; 3 uses
  %i.da = extractelement <2 x double> %i.cz, i64 1
  store double %i.da, ptr %i.x, align 16, !tbaa !8
  %i.db = fmul <2 x double> %i.ce, %i.cl          ; 2 uses
  %shift45 = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop46 = fadd <2 x double> %i.db, %shift45
  %shift48 = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop49 = fmul <2 x double> %shift48, %i.cp
  %foldExtExtBinop51 = fadd <2 x double> %foldExtExtBinop49, %foldExtExtBinop46 ; 2 uses
  %i.dc = extractelement <2 x double> %foldExtExtBinop51, i64 0
  store double %i.dc, ptr %i.y, align 8, !tbaa !8
  %i.dd = fmul <2 x double> %i.ay, %i.cl          ; 2 uses
  %shift53 = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop54 = fadd <2 x double> %i.dd, %shift53
  %i.de = shufflevector <2 x double> %i.cp, <2 x double> %i.cf, <2 x i32> <i32 0, i32 3>
  %i.df = fmul <2 x double> %i.cn, %i.de
  %i.dg = shufflevector <2 x double> %i.cr, <2 x double> %i.cs, <2 x i32> <i32 0, i32 2>
  %i.dh = shufflevector <2 x double> %i.cr, <2 x double> %i.cs, <2 x i32> <i32 1, i32 3>
  %i.di = fadd <2 x double> %i.dg, %i.dh
  %i.dj = shufflevector <2 x double> %i.cf, <2 x double> %i.cn, <2 x i32> <i32 1, i32 3>
  %i.dk = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dl = fmul <2 x double> %i.dj, %i.dk
  %i.dm = fadd <2 x double> %i.di, %i.dl          ; 4 uses
  store <2 x double> %i.dm, ptr %3, align 16, !tbaa !8
  %foldExtExtBinop56 = fadd <2 x double> %i.df, %foldExtExtBinop54 ; 3 uses
  %i.dn = extractelement <2 x double> %foldExtExtBinop56, i64 0
  store double %i.dn, ptr %i.z, align 16, !tbaa !8
  %i.do = fmul <2 x double> %i.cc, %i.cl          ; 2 uses
  %i.dp = fmul <2 x double> %i.ce, %i.cj          ; 2 uses
  %i.dq = shufflevector <2 x double> %i.do, <2 x double> %i.dp, <2 x i32> <i32 0, i32 2>
  %i.dr = shufflevector <2 x double> %i.do, <2 x double> %i.dp, <2 x i32> <i32 1, i32 3>
  %i.ds = fadd <2 x double> %i.dq, %i.dr
  %i.dt = fmul <2 x double> %i.cf, %i.cp
  %i.du = fadd <2 x double> %i.dt, %i.ds          ; 2 uses
  store <2 x double> %i.du, ptr %i.aa, align 8, !tbaa !8
  %i.dv = extractelement <2 x double> %i.cz, i64 0
  store double %i.dv, ptr %i.ab, align 8, !tbaa !8
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.dx = fmul <2 x double> %i.cc, %i.cj          ; 2 uses
  %shift58 = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop59 = fadd <2 x double> %i.dx, %shift58
  %shift61 = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop62 = fmul <2 x double> %i.cf, %shift61
  %foldExtExtBinop64 = fadd <2 x double> %foldExtExtBinop62, %foldExtExtBinop59 ; 2 uses
  %i.dy = extractelement <2 x double> %foldExtExtBinop64, i64 0 ; 2 uses
  store double %i.dy, ptr %i.dw, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %foldExtExtBinop66 = fadd <2 x double> %foldExtExtBinop56, %foldExtExtBinop64
  %foldExtExtBinop68 = fadd <2 x double> %i.dm, %foldExtExtBinop66
  %i.dz = extractelement <2 x double> %foldExtExtBinop68, i64 0 ; 2 uses
  %i.ea = fcmp ogt double %i.dz, 0.000000e+00
  br i1 %i.ea, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.eb = fadd double %i.dz, 1.000000e+00
  %i.ec = tail call double @sqrt(double noundef %i.eb) #23 ; 2 uses
  %i.ed = fmul double %i.ec, 5.000000e-01
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %i.ed, ptr %i.ee, align 8, !tbaa !8
  %i.ef = fdiv double 5.000000e-01, %i.ec         ; 2 uses
  %i.eg = fsub <2 x double> %i.du, %i.cz
  %i.eh = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = fmul <2 x double> %i.eg, %i.ei
  store <2 x double> %i.ej, ptr %4, align 16, !tbaa !8
  %shift70 = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop71 = fsub <2 x double> %shift70, %foldExtExtBinop51
  %i.ek = extractelement <2 x double> %foldExtExtBinop71, i64 0
  %i.el = fmul double %i.ek, %i.ef
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.el, ptr %i.em, align 16, !tbaa !8
  br label %_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.en = fcmp ogt <2 x double> %foldExtExtBinop56, %i.dm
  %i.eo = extractelement <2 x i1> %i.en, i64 0    ; 3 uses
  %.0.i.i.i = zext i1 %i.eo to i64
  %.0.i.i.i.sroa.sel.idx.sroa.sel.idx = select i1 %i.eo, i64 8, i64 0
  %.0.i.i.i.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %3, i64 %.0.i.i.i.sroa.sel.idx.sroa.sel.idx
  %.idx.i.i.i.i = select i1 %i.eo, i64 24, i64 0
  %i.ep = getelementptr i8, ptr %.0.i.i.i.sroa.sel.idx.sroa.sel, i64 %.idx.i.i.i.i
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !8
  %i.er = fcmp ogt double %i.dy, %i.eq
  %.1.i.i.i = select i1 %i.er, i64 2, i64 %.0.i.i.i ; 4 uses
  %i.es = add nuw nsw i64 %.1.i.i.i, 1            ; 2 uses
  %i.et = icmp eq i64 %i.es, 3
  %i.eu = select i1 %i.et, i64 0, i64 %i.es
  %.fr.i.i.i = freeze i64 %i.eu                   ; 5 uses
  %i.ev = add i64 %.fr.i.i.i, 1                   ; 2 uses
  %.urem.i.i.i = add i64 %.fr.i.i.i, -2
  %.cmp.i.i.i = icmp ult i64 %i.ev, 3
  %i.ew = select i1 %.cmp.i.i.i, i64 %i.ev, i64 %.urem.i.i.i ; 3 uses
  %i.ex = getelementptr [8 x i8], ptr %3, i64 %.1.i.i.i ; 3 uses
  %.idx.i66.i.i.i = mul nuw nsw i64 %.1.i.i.i, 24 ; 3 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 %.idx.i66.i.i.i
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !8
  %i.fa = getelementptr [8 x i8], ptr %3, i64 %.fr.i.i.i ; 3 uses
  %.idx.i67.i.i.i = mul nuw nsw i64 %.fr.i.i.i, 24 ; 3 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 %.idx.i67.i.i.i
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !8
  %i.fd = fsub double %i.ez, %i.fc
  %i.fe = getelementptr [8 x i8], ptr %3, i64 %i.ew ; 3 uses
  %.idx.i68.i.i.i = mul i64 %i.ew, 24             ; 3 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 %.idx.i68.i.i.i
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !8
  %i.fh = fsub double %i.fd, %i.fg
  %i.fi = fadd double %i.fh, 1.000000e+00
  %i.fj = tail call double @sqrt(double noundef %i.fi) #23 ; 2 uses
  %i.fk = fmul double %i.fj, 5.000000e-01
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.1.i.i.i
  store double %i.fk, ptr %i.fl, align 8, !tbaa !8
  %i.fm = fdiv double 5.000000e-01, %i.fj         ; 3 uses
  %i.fn = getelementptr i8, ptr %i.fe, i64 %.idx.i67.i.i.i
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !8
  %i.fp = getelementptr i8, ptr %i.fa, i64 %.idx.i68.i.i.i
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !8
  %i.fr = fsub double %i.fo, %i.fq
  %i.fs = fmul double %i.fm, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %i.fs, ptr %i.ft, align 8, !tbaa !8
  %i.fu = getelementptr i8, ptr %i.fa, i64 %.idx.i66.i.i.i
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !8
  %i.fw = getelementptr i8, ptr %i.ex, i64 %.idx.i67.i.i.i
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !8
  %i.fy = fadd double %i.fv, %i.fx
  %i.fz = fmul double %i.fm, %i.fy
  %i.ga = getelementptr inbounds [8 x i8], ptr %4, i64 %.fr.i.i.i
  store double %i.fz, ptr %i.ga, align 8, !tbaa !8
  %i.gb = getelementptr i8, ptr %i.fe, i64 %.idx.i66.i.i.i
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !8
  %i.gd = getelementptr i8, ptr %i.ex, i64 %.idx.i68.i.i.i
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !8
  %i.gf = fadd double %i.gc, %i.ge
  %i.gg = fmul double %i.fm, %i.gf
  %i.gh = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ew
  store double %i.gg, ptr %i.gh, align 8, !tbaa !8
  br label %_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit

_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit: ; preds = %bb.b, %bb.c
  %i.gi = load <2 x double>, ptr %4, align 16     ; 4 uses
  %i.gj = fmul <2 x double> %i.gi, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gl = load <2 x double>, ptr %i.gk, align 16  ; 4 uses
  %i.gm = fmul <2 x double> %i.gl, %i.gl
  %i.gn = fadd <2 x double> %i.gj, %i.gm          ; 2 uses
  %shift73 = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop74 = fadd <2 x double> %i.gn, %shift73
  %i.go = extractelement <2 x double> %foldExtExtBinop74, i64 0 ; 2 uses
  %i.gp = fcmp ogt double %i.go, 0.000000e+00     ; 2 uses
  %i.gq = extractelement <2 x double> %i.gl, i64 0
  %.scalar.i.i16 = tail call double @llvm.sqrt.f64(double %i.go)
  %i.gr = insertelement <2 x double> poison, double %.scalar.i.i16, i64 0
  %i.gs = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gt = fdiv <2 x double> %i.gi, %i.gs
  %i.gu = fdiv <2 x double> %i.gl, %i.gs
  %i.gv = extractelement <2 x double> %i.gu, i64 0
  %i.gw = select i1 %i.gp, double %i.gv, double %i.gq
  %i.gx = select i1 %i.gp, <2 x double> %i.gt, <2 x double> %i.gi
  %i.gy = fmul <2 x double> %i.au, %i.au
  %i.gz = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ha = fmul <2 x double> %i.ah, %i.ah
  %i.hb = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hc = shufflevector <2 x double> %i.gz, <2 x double> %i.hb, <2 x i32> <i32 0, i32 2>
  %i.hd = shufflevector <2 x double> %i.gz, <2 x double> %i.hb, <2 x i32> <i32 1, i32 3>
  %i.he = fadd <2 x double> %i.hc, %i.hd
  %i.hf = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.he)
  %i.hg = fdiv <2 x double> splat (double 1.000000e+00), %i.hf ; 3 uses
  %i.hh = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hi = fmul <2 x double> %i.au, %i.hh          ; 2 uses
  %i.hj = extractelement <2 x double> %i.ah, i64 1
  %i.hk = fneg double %i.hj
  %i.hl = extractelement <2 x double> %i.hg, i64 1
  %i.hm = fmul double %i.hl, %i.hk
  %.sroa.530.16.vec.insert = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.hn = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ho = fmul <2 x double> %i.ah, %i.hn          ; 2 uses
  %i.hp = shufflevector <2 x double> %.sroa.530.16.vec.insert, <2 x double> %i.ho, <2 x i32> <i32 0, i32 2>
  %i.hq = fmul <2 x double> %i.hi, %i.hp          ; 2 uses
  %shift76 = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop77 = fadd <2 x double> %i.hq, %shift76
  %i.hr = extractelement <2 x double> %foldExtExtBinop77, i64 0
  %i.hs = fmul <2 x double> %i.ho, %i.hi          ; 2 uses
  %shift79 = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop80 = fadd <2 x double> %i.hs, %shift79
  %i.ht = extractelement <2 x double> %foldExtExtBinop80, i64 0
  store <2 x double> %i.gx, ptr %0, align 16, !tbaa !8
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.gw, ptr %i.hu, align 16, !tbaa !8
end_hunk_0
