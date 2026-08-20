inline.NumInlined: 5854
inline.NumDeleted: 3439
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZNK3g2o13EdgeSE3Line3D5writeERSo:bb.a
  %i.j = tail call noundef zeroext i1 @_ZN3g2o8internal11writeVectorIN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEEEEbRSoRKNS2_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.i) ; 0 uses
  %i.k = tail call noundef zeroext i1 @_ZNK3g2o8BaseEdgeILi4ENS_6Line3DEE22writeInformationMatrixERSo(ptr noundef nonnull align 16 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o8internal11writeVectorIN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEEEEbRSoRKNS2_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.a)
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !8
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
  %3 = alloca %"class.Eigen::Matrix.161", align 16 ; 12 uses
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
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ab = load double, ptr %i.g, align 16, !tbaa !8, !noalias !99 ; 4 uses
  %i.ac = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.d, i64 1 ; 2 uses
  %i.ae = fmul <2 x double> %i.ad, %i.ad
  %i.af = fadd <2 x double> %i.ae, %i.k
  %i.ag = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.af) ; 6 uses
  %i.ah = load double, ptr %i.n, align 8, !tbaa !8, !noalias !102 ; 4 uses
  %i.ai = shufflevector <2 x double> %i.m, <2 x double> %i.b, <2 x i32> <i32 0, i32 2>
  %i.aj = fneg <2 x double> %i.ai
  %i.ak = shufflevector <2 x double> %i.p, <2 x double> %i.f, <2 x i32> <i32 1, i32 3>
  %i.al = fmul <2 x double> %i.ak, %i.aj
  %i.am = shufflevector <2 x double> %i.p, <2 x double> %i.f, <2 x i32> <i32 0, i32 2>
  %i.an = shufflevector <2 x double> %i.m, <2 x double> %i.b, <2 x i32> <i32 1, i32 3>
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.an, <2 x double> %i.al) ; 4 uses
  %i.ap = fmul <2 x double> %i.ao, %i.ao
  %i.aq = insertelement <2 x double> %i.w, double %i.ah, i64 1 ; 2 uses
  %i.ar = fmul <2 x double> %i.aq, %i.aq
  %i.as = fadd <2 x double> %i.ar, %i.v
  %i.at = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.as) ; 5 uses
  %i.au = shufflevector <2 x double> %i.ag, <2 x double> %i.at, <2 x i32> <i32 1, i32 2>
  %i.av = fdiv <2 x double> splat (double 1.000000e+00), %i.au ; 3 uses
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x double> %i.b, %i.aw           ; 3 uses
  %i.ay = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.az = insertelement <2 x double> %i.ay, double %i.ab, i64 1
  %i.ba = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bb = fmul <2 x double> %i.p, %i.ba           ; 3 uses
  %i.bc = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bd = insertelement <2 x double> %i.bc, double %i.ah, i64 1
  %i.be = fneg <2 x double> %i.bd
  %i.bf = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bg = insertelement <2 x double> %i.bf, double %i.r, i64 0
  %i.bh = fmul <2 x double> %i.bg, %i.be
  %i.bi = shufflevector <2 x double> %i.p, <2 x double> %i.m, <2 x i32> <i32 1, i32 2>
  %i.bj = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.r, i64 1
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.bk, <2 x double> %i.bh) ; 3 uses
  %i.bm = fmul <2 x double> %i.bl, %i.bl          ; 2 uses
  %i.bn = insertelement <2 x double> %i.b, double %i.d, i64 0
  %i.bo = fneg <2 x double> %i.bn
  %i.bp = insertelement <2 x double> %i.f, double %i.ab, i64 1
  %i.bq = fmul <2 x double> %i.bp, %i.bo
  %i.br = shufflevector <2 x double> %i.f, <2 x double> %i.b, <2 x i32> <i32 1, i32 2>
  %i.bs = insertelement <2 x double> poison, double %i.d, i64 0 ; 2 uses
  %i.bt = insertelement <2 x double> %i.bs, double %i.ab, i64 1
  %i.bu = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.bt, <2 x double> %i.bu) ; 3 uses
  %i.bw = fmul <2 x double> %i.bv, %i.bv          ; 2 uses
  %i.bx = shufflevector <2 x double> %i.bm, <2 x double> %i.bw, <2 x i32> <i32 0, i32 2>
  %i.by = shufflevector <2 x double> %i.bm, <2 x double> %i.bw, <2 x i32> <i32 1, i32 3>
  %i.bz = fadd <2 x double> %i.bx, %i.by
  %i.ca = fadd <2 x double> %i.ap, %i.bz
  %i.cb = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ca) ; 3 uses
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> %i.ag, <2 x i32> <i32 1, i32 2>
  %i.cd = fdiv <2 x double> splat (double 1.000000e+00), %i.cc ; 3 uses
  %i.ce = fdiv <2 x double> splat (double 1.000000e+00), %i.cb
  %i.cf = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x double> %i.bv, %i.cf          ; 3 uses
  %i.ch = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ci = fmul <2 x double> %i.f, %i.ch           ; 3 uses
  %i.cj = fmul <2 x double> %i.az, %i.cd          ; 3 uses
  %i.ck = shufflevector <2 x double> %i.at, <2 x double> %i.cb, <2 x i32> <i32 1, i32 2>
  %i.cl = fdiv <2 x double> splat (double 1.000000e+00), %i.ck ; 3 uses
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cn = fmul <2 x double> %i.bl, %i.cm          ; 3 uses
  %i.co = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x double> %i.m, %i.co           ; 3 uses
  %i.cq = insertelement <2 x double> %i.bs, double %i.r, i64 1
  %i.cr = fmul <2 x double> %i.cq, %i.av          ; 3 uses
  %i.cs = insertelement <2 x double> %i.ay, double %i.ah, i64 0
  %i.ct = fmul <2 x double> %i.cs, %i.cl          ; 3 uses
  %i.cu = fmul <2 x double> %i.ao, %i.ce
  %i.cv = fmul <2 x double> %i.ci, %i.bb          ; 2 uses
  %i.cw = fmul <2 x double> %i.bb, %i.ax          ; 2 uses
  %5 = shufflevector <2 x double> %i.cv, <2 x double> %i.cw, <2 x i32> <i32 0, i32 2>
  %6 = shufflevector <2 x double> %i.cv, <2 x double> %i.cw, <2 x i32> <i32 1, i32 3>
  %7 = fadd <2 x double> %5, %6
  %8 = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %9 = shufflevector <2 x double> %i.cj, <2 x double> %i.cr, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cx = fmul <2 x double> %8, %9
  %i.cy = fadd <2 x double> %7, %i.cx             ; 3 uses
  store <2 x double> %i.cy, ptr %3, align 16, !tbaa !8
  %10 = fmul <2 x double> %i.bb, %i.cg            ; 2 uses
  %i.cz = fmul <2 x double> %i.ax, %i.cn          ; 2 uses
  %11 = shufflevector <2 x double> %i.cz, <2 x double> %10, <2 x i32> <i32 0, i32 2>
  %12 = shufflevector <2 x double> %i.cz, <2 x double> %10, <2 x i32> <i32 1, i32 3>
  %13 = fadd <2 x double> %11, %12
  %foldExtExtBinop49 = fmul <2 x double> %i.cr, %i.cu
  %foldExtExtBinop51.a = fadd <2 x double> %foldExtExtBinop49, %13 ; 3 uses
  %i.da = extractelement <2 x double> %foldExtExtBinop51.a, i64 1
  store double %i.da, ptr %i.x, align 16, !tbaa !8
  %i.db = fmul <2 x double> %i.ci, %i.cp          ; 2 uses
  %i.dc = fmul <2 x double> %i.ax, %i.cp          ; 2 uses
  %i.dd = shufflevector <2 x double> %i.db, <2 x double> %i.dc, <2 x i32> <i32 0, i32 2>
  %i.de = shufflevector <2 x double> %i.db, <2 x double> %i.dc, <2 x i32> <i32 1, i32 3>
  %i.df = fadd <2 x double> %i.dd, %i.de
  %14 = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = fmul <2 x double> %9, %14
  %foldExtExtBinop56 = fadd <2 x double> %i.dg, %i.df ; 3 uses
  store <2 x double> %foldExtExtBinop56, ptr %i.y, align 8, !tbaa !8
  %i.dh = fmul <2 x double> %i.cg, %i.cp          ; 2 uses
  %i.di = fmul <2 x double> %i.ci, %i.cn          ; 2 uses
  %i.dj = shufflevector <2 x double> %i.dh, <2 x double> %i.di, <2 x i32> <i32 0, i32 2>
  %i.dk = shufflevector <2 x double> %i.dh, <2 x double> %i.di, <2 x i32> <i32 1, i32 3>
  %i.dl = fadd <2 x double> %i.dj, %i.dk
  %i.dm = fmul <2 x double> %i.cj, %i.ct
  %i.dn = fadd <2 x double> %i.dm, %i.dl          ; 2 uses
  store <2 x double> %i.dn, ptr %i.z, align 8, !tbaa !8
  %i.do = extractelement <2 x double> %foldExtExtBinop51.a, i64 0
  store double %i.do, ptr %i.aa, align 8, !tbaa !8
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.dq = fmul <2 x double> %i.cg, %i.cn          ; 2 uses
  %shift58 = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop59 = fadd <2 x double> %i.dq, %shift58
  %shift61 = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop62 = fmul <2 x double> %i.cj, %shift61
  %foldExtExtBinop64 = fadd <2 x double> %foldExtExtBinop62, %foldExtExtBinop59
  %i.dr = extractelement <2 x double> %foldExtExtBinop64, i64 0 ; 3 uses
  store double %i.dr, ptr %i.dp, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %15 = extractelement <2 x double> %foldExtExtBinop56, i64 1 ; 2 uses
  %16 = fadd double %15, %i.dr
  %i.ds = extractelement <2 x double> %i.cy, i64 0 ; 2 uses
  %17 = fadd double %i.ds, %16                    ; 2 uses
  %i.dt = fcmp ogt double %17, 0.000000e+00
  br i1 %i.dt, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.du = fadd double %17, 1.000000e+00
  %i.dv = tail call double @sqrt(double noundef %i.du) #23 ; 2 uses
  %i.dw = fmul double %i.dv, 5.000000e-01
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %i.dw, ptr %i.dx, align 8, !tbaa !8
  %i.dy = fdiv double 5.000000e-01, %i.dv         ; 2 uses
  %i.dz = fsub <2 x double> %i.dn, %foldExtExtBinop51.a
  %i.ea = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ec = fmul <2 x double> %i.dz, %i.eb
  store <2 x double> %i.ec, ptr %4, align 16, !tbaa !8
  %shift70 = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop71 = fsub <2 x double> %shift70, %foldExtExtBinop56
  %i.ed = extractelement <2 x double> %foldExtExtBinop71, i64 0
  %i.ee = fmul double %i.ed, %i.dy
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.ee, ptr %i.ef, align 16, !tbaa !8
  br label %_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit

bb.c:                                             ; preds = %bb.a
  %18 = fcmp ogt double %15, %i.ds                ; 3 uses
  %.0.i.i.i = zext i1 %18 to i64
  %.0.i.i.i.sroa.sel.idx.sroa.sel.idx = select i1 %18, i64 8, i64 0
  %.0.i.i.i.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %3, i64 %.0.i.i.i.sroa.sel.idx.sroa.sel.idx
  %.idx.i.i.i.i = select i1 %18, i64 24, i64 0
  %i.eg = getelementptr i8, ptr %.0.i.i.i.sroa.sel.idx.sroa.sel, i64 %.idx.i.i.i.i
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !8
  %i.ei = fcmp ogt double %i.dr, %i.eh
  %.1.i.i.i = select i1 %i.ei, i64 2, i64 %.0.i.i.i ; 4 uses
  %i.ej = add nuw nsw i64 %.1.i.i.i, 1            ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 3
  %i.el = select i1 %i.ek, i64 0, i64 %i.ej
  %.fr.i.i.i = freeze i64 %i.el                   ; 5 uses
  %i.em = add i64 %.fr.i.i.i, 1                   ; 2 uses
  %.urem.i.i.i = add i64 %.fr.i.i.i, -2
  %.cmp.i.i.i = icmp ult i64 %i.em, 3
  %i.en = select i1 %.cmp.i.i.i, i64 %i.em, i64 %.urem.i.i.i ; 3 uses
  %i.eo = getelementptr [8 x i8], ptr %3, i64 %.1.i.i.i ; 3 uses
  %.idx.i66.i.i.i = mul nuw nsw i64 %.1.i.i.i, 24 ; 3 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 %.idx.i66.i.i.i
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !8
  %i.er = getelementptr [8 x i8], ptr %3, i64 %.fr.i.i.i ; 3 uses
  %.idx.i67.i.i.i = mul nuw nsw i64 %.fr.i.i.i, 24 ; 3 uses
  %i.es = getelementptr i8, ptr %i.er, i64 %.idx.i67.i.i.i
  %i.et = load double, ptr %i.es, align 8, !tbaa !8
  %i.eu = fsub double %i.eq, %i.et
  %i.ev = getelementptr [8 x i8], ptr %3, i64 %i.en ; 3 uses
  %.idx.i68.i.i.i = mul i64 %i.en, 24             ; 3 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 %.idx.i68.i.i.i
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !8
  %i.ey = fsub double %i.eu, %i.ex
  %i.ez = fadd double %i.ey, 1.000000e+00
  %i.fa = tail call double @sqrt(double noundef %i.ez) #23 ; 2 uses
  %i.fb = fmul double %i.fa, 5.000000e-01
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.1.i.i.i
  store double %i.fb, ptr %i.fc, align 8, !tbaa !8
  %i.fd = fdiv double 5.000000e-01, %i.fa         ; 3 uses
  %i.fe = getelementptr i8, ptr %i.ev, i64 %.idx.i67.i.i.i
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !8
  %i.fg = getelementptr i8, ptr %i.er, i64 %.idx.i68.i.i.i
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !8
  %i.fi = fsub double %i.ff, %i.fh
  %i.fj = fmul double %i.fd, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %i.fj, ptr %i.fk, align 8, !tbaa !8
  %i.fl = getelementptr i8, ptr %i.er, i64 %.idx.i66.i.i.i
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !8
  %i.fn = getelementptr i8, ptr %i.eo, i64 %.idx.i67.i.i.i
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !8
  %i.fp = fadd double %i.fm, %i.fo
  %i.fq = fmul double %i.fd, %i.fp
  %i.fr = getelementptr inbounds [8 x i8], ptr %4, i64 %.fr.i.i.i
  store double %i.fq, ptr %i.fr, align 8, !tbaa !8
  %i.fs = getelementptr i8, ptr %i.ev, i64 %.idx.i66.i.i.i
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !8
  %i.fu = getelementptr i8, ptr %i.eo, i64 %.idx.i68.i.i.i
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !8
  %i.fw = fadd double %i.ft, %i.fv
  %i.fx = fmul double %i.fd, %i.fw
  %i.fy = getelementptr inbounds [8 x i8], ptr %4, i64 %i.en
  store double %i.fx, ptr %i.fy, align 8, !tbaa !8
  br label %_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit

_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit: ; preds = %bb.b, %bb.c
  %i.fz = load <2 x double>, ptr %4, align 16     ; 4 uses
  %i.ga = fmul <2 x double> %i.fz, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gc = load <2 x double>, ptr %i.gb, align 16  ; 4 uses
  %i.gd = fmul <2 x double> %i.gc, %i.gc
  %i.ge = fadd <2 x double> %i.ga, %i.gd          ; 2 uses
  %shift73 = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop74 = fadd <2 x double> %i.ge, %shift73
  %i.gf = extractelement <2 x double> %foldExtExtBinop74, i64 0 ; 2 uses
  %i.gg = fcmp ogt double %i.gf, 0.000000e+00     ; 2 uses
  %i.gh = extractelement <2 x double> %i.gc, i64 0
  %.scalar.i.i16 = tail call double @llvm.sqrt.f64(double %i.gf)
  %i.gi = insertelement <2 x double> poison, double %.scalar.i.i16, i64 0
  %i.gj = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gk = fdiv <2 x double> %i.fz, %i.gj
  %i.gl = fdiv <2 x double> %i.gc, %i.gj
  %i.gm = extractelement <2 x double> %i.gl, i64 0
  %i.gn = select i1 %i.gg, double %i.gm, double %i.gh
  %i.go = select i1 %i.gg, <2 x double> %i.gk, <2 x double> %i.fz
  %i.gp = fmul <2 x double> %i.at, %i.at
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gr = fmul <2 x double> %i.ag, %i.ag
  %i.gs = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gt = shufflevector <2 x double> %i.gq, <2 x double> %i.gs, <2 x i32> <i32 0, i32 2>
  %i.gu = shufflevector <2 x double> %i.gq, <2 x double> %i.gs, <2 x i32> <i32 1, i32 3>
  %i.gv = fadd <2 x double> %i.gt, %i.gu
  %i.gw = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.gv)
  %i.gx = fdiv <2 x double> splat (double 1.000000e+00), %i.gw ; 3 uses
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gz = fmul <2 x double> %i.at, %i.gy          ; 2 uses
  %i.ha = extractelement <2 x double> %i.ag, i64 1
  %i.hb = fneg double %i.ha
  %i.hc = extractelement <2 x double> %i.gx, i64 1
  %i.hd = fmul double %i.hc, %i.hb
  %.sroa.530.16.vec.insert = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.he = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hf = fmul <2 x double> %i.ag, %i.he          ; 2 uses
  %i.hg = shufflevector <2 x double> %.sroa.530.16.vec.insert, <2 x double> %i.hf, <2 x i32> <i32 0, i32 2>
  %i.hh = fmul <2 x double> %i.gz, %i.hg          ; 2 uses
  %shift76 = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop77 = fadd <2 x double> %i.hh, %shift76
  %i.hi = extractelement <2 x double> %foldExtExtBinop77, i64 0
  %i.hj = fmul <2 x double> %i.hf, %i.gz          ; 2 uses
  %shift79 = shufflevector <2 x double> %i.hj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop80 = fadd <2 x double> %i.hj, %shift79
  %i.hk = extractelement <2 x double> %foldExtExtBinop80, i64 0
  store <2 x double> %i.go, ptr %0, align 16, !tbaa !8
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.gn, ptr %i.hl, align 16, !tbaa !8
  %i.hm = tail call double @atan2(double noundef %i.hi, double noundef %i.hk) #23
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.hm, ptr %i.hn, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3g2o13EdgeSE3Line3D13resolveCachesEv(ptr noundef nonnull align 16 dereferenceable(512) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::vector.140", align 8   ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.b = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25 ; 3 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !112
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.c, ptr %i.e, align 8, !tbaa !113
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !114
  store ptr %i.g, ptr %i.b, align 8, !tbaa !167
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 16, ptr %i.a, align 8, !tbaa !74
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.m, ptr %2, align 8, !tbaa !75
  %i.n = load i64, ptr %i.a, align 8, !tbaa !74   ; 3 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, ptr noundef nonnull align 1 dereferenceable(16) @.str, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !68
  %i.p = load ptr, ptr %2, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN3g2o16OptimizableGraph4Edge12resolveCacheINS_14CacheSE3OffsetEEEvRPT_PNS0_6VertexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPNS_9ParameterESaISJ_EE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.k, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %.noexc
  %i.r = load ptr, ptr %2, align 8, !tbaa !75     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.l
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.t = load i64, ptr %i.l, align 8, !tbaa !66
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !169
  %i.w = load ptr, ptr %1, align 8, !tbaa !110    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN3g2o9ParameterESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !112
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #24
  br label %_ZNSt6vectorIPN3g2o9ParameterESaIS2_EED2Ev.exit

_ZNSt6vectorIPN3g2o9ParameterESaIS2_EED2Ev.exit:  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.ab = icmp ne ptr %i.v, null
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret i1 %i.ab

bb.c:                                             ; preds = %.noexc.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.d:                                             ; preds = %.noexc
end_hunk_0
