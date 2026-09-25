Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_line?download=true
inline.NumInlined: 5854
inline.NumDeleted: 3439
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN3g2o8internal11writeVectorIN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEEEEbRSoRKNS2_9DenseBaseIT_EE:bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.a)
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !11
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.e)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !11
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.i)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !11
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.m)
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load double, ptr %i.p, align 8, !tbaa !11
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.q)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load double, ptr %i.t, align 8, !tbaa !11
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.u)
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !44
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
  %i.b = load double, ptr %i.a, align 16, !tbaa !11
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.b)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.f = load double, ptr %i.e, align 16, !tbaa !11
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.f)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.j = load double, ptr %i.i, align 16, !tbaa !11
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.j)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.n = load double, ptr %i.m, align 16, !tbaa !11
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.n)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.r = load double, ptr %i.q, align 8, !tbaa !11
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.v = load double, ptr %i.u, align 8, !tbaa !11
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.v)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.z = load double, ptr %i.y, align 8, !tbaa !11
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.z)
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ad = load double, ptr %i.ac, align 16, !tbaa !11
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.ad)
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ah = load double, ptr %i.ag, align 16, !tbaa !11
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.ah)
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.al = load double, ptr %i.ak, align 8, !tbaa !11
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.al)
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !44
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.l = load double, ptr %i.g, align 8, !tbaa !11, !noalias !193
  store double %i.l, ptr %2, align 16, !tbaa !11, !alias.scope !193
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.o = load double, ptr %i.n, align 8, !tbaa !11, !noalias !193
  store double %i.o, ptr %i.m, align 8, !tbaa !11, !alias.scope !193
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.r = load double, ptr %i.q, align 8, !tbaa !11, !noalias !193 ; 2 uses
  store double %i.r, ptr %i.p, align 16, !tbaa !11, !alias.scope !193
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.u = load double, ptr %i.t, align 8, !tbaa !11, !noalias !193
  store double %i.u, ptr %i.s, align 16, !tbaa !11, !alias.scope !193
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.x = load double, ptr %i.w, align 8, !tbaa !11, !noalias !193
  store double %i.x, ptr %i.v, align 8, !tbaa !11, !alias.scope !193
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  %i.aa = load double, ptr %i.z, align 8, !tbaa !11, !noalias !193 ; 2 uses
  store double %i.aa, ptr %i.y, align 16, !tbaa !11, !alias.scope !193
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !11, !noalias !193
  store double %i.ad, ptr %i.ab, align 16, !tbaa !11, !alias.scope !193
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.ag = load double, ptr %i.af, align 8, !tbaa !11, !noalias !193
  store double %i.ag, ptr %i.ae, align 8, !tbaa !11, !alias.scope !193
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !11, !noalias !193 ; 2 uses
  store double %i.aj, ptr %i.ah, align 16, !tbaa !11, !alias.scope !193
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.am = load <2 x double>, ptr %2, align 16, !tbaa !60, !alias.scope !193
  %i.an = fneg <2 x double> %i.am
  %i.ao = load double, ptr %i.ak, align 8, !tbaa !11, !noalias !193 ; 2 uses
  %i.ap = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x double> %i.aq, %i.an
  %i.as = load <2 x double>, ptr %i.s, align 16, !tbaa !60, !alias.scope !193
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.au = load double, ptr %i.at, align 8, !tbaa !11, !noalias !193 ; 2 uses
  %i.av = insertelement <2 x double> poison, double %i.au, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x double> %i.as, %i.aw
  %i.ay = fsub <2 x double> %i.ar, %i.ax
  %i.az = load <2 x double>, ptr %i.ab, align 16, !tbaa !60, !alias.scope !193
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !11, !noalias !193 ; 2 uses
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
  store <2 x double> %i.bf, ptr %i.al, align 16, !tbaa !60, !alias.scope !193
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 112
  store double %i.bl, ptr %i.bm, align 16, !tbaa !11, !alias.scope !193
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !11, !alias.scope !193
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !11, !alias.scope !193
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !11, !alias.scope !193
  store double 1.000000e+00, ptr %i.k, align 8, !tbaa !11, !alias.scope !193
  call void @_ZN3g2omlERKN5Eigen9TransformIdLi3ELi1ELi0EEERKNS_6Line3DE(ptr dead_on_unwind nonnull writable sret(%"class.g2o::Line3D") align 16 %1, ptr noundef nonnull align 16 dereferenceable(128) %2, ptr noundef nonnull align 16 dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN3g2o6Line3D6ominusERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.28") align 16 %3, ptr noundef nonnull align 16 dereferenceable(48) %1, ptr noundef nonnull align 16 dereferenceable(48) %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bo, ptr noundef nonnull align 16 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !81
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
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !60, !noalias !206 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load double, ptr %i.c, align 8, !tbaa !11, !noalias !206 ; 3 uses
  %i.e = fmul <2 x double> %i.b, %i.b             ; 2 uses
  %i.f = load <2 x double>, ptr %1, align 16, !tbaa !60, !noalias !207 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %5 = load double, ptr %i.g, align 16, !tbaa !11, !noalias !207 ; 4 uses
  %i.h = fmul <2 x double> %i.f, %i.f             ; 2 uses
  %i.i = shufflevector <2 x double> %i.h, <2 x double> %i.e, <2 x i32> <i32 0, i32 2>
  %i.j = shufflevector <2 x double> %i.h, <2 x double> %i.e, <2 x i32> <i32 1, i32 3>
  %6 = fadd <2 x double> %i.i, %i.j
  %7 = insertelement <2 x double> poison, double %5, i64 0
  %8 = insertelement <2 x double> %7, double %i.d, i64 1 ; 2 uses
  %9 = fmul <2 x double> %8, %8
  %i.k = fadd <2 x double> %9, %6
  %10 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.k) ; 6 uses
  %.sroa.0157.8.vec.extract.i = extractelement <2 x double> %i.b, i64 1
  %.sroa.0159.0.vec.extract.i = extractelement <2 x double> %i.f, i64 0
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load <2 x double>, ptr %i.l, align 8, !tbaa !60, !noalias !208 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  %11 = load double, ptr %i.n, align 8, !tbaa !11, !noalias !208 ; 4 uses
  %i.o = fmul <2 x double> %i.m, %i.m             ; 2 uses
  %i.p = load <2 x double>, ptr %2, align 16, !tbaa !60, !noalias !209 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load double, ptr %i.q, align 16, !tbaa !11, !noalias !209 ; 4 uses
  %i.s = fmul <2 x double> %i.p, %i.p             ; 2 uses
  %i.t = shufflevector <2 x double> %i.s, <2 x double> %i.o, <2 x i32> <i32 0, i32 2>
  %i.u = shufflevector <2 x double> %i.s, <2 x double> %i.o, <2 x i32> <i32 1, i32 3>
  %i.v = fadd <2 x double> %i.t, %i.u
  %i.w = insertelement <2 x double> poison, double %i.r, i64 0
  %12 = insertelement <2 x double> %i.w, double %11, i64 1 ; 2 uses
  %13 = fmul <2 x double> %12, %12
  %14 = fadd <2 x double> %13, %i.v
  %15 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %14) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.x = shufflevector <2 x double> %i.m, <2 x double> %i.b, <2 x i32> <i32 0, i32 2>
  %i.y = fneg <2 x double> %i.x
  %i.z = shufflevector <2 x double> %i.p, <2 x double> %i.f, <2 x i32> <i32 1, i32 3>
  %i.aa = fmul <2 x double> %i.z, %i.y
  %i.ab = shufflevector <2 x double> %i.p, <2 x double> %i.f, <2 x i32> <i32 0, i32 2>
  %i.ac = shufflevector <2 x double> %i.m, <2 x double> %i.b, <2 x i32> <i32 1, i32 3>
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ac, <2 x double> %i.aa) ; 4 uses
  %i.ae = fmul <2 x double> %i.ad, %i.ad
  %i.af = shufflevector <2 x double> %10, <2 x double> %15, <2 x i32> <i32 1, i32 2>
  %i.ag = fdiv <2 x double> splat (double 1.000000e+00), %i.af ; 3 uses
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x double> %i.b, %i.ah           ; 3 uses
  %i.aj = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ak = insertelement <2 x double> %i.aj, double %5, i64 1
  %i.al = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.am = fmul <2 x double> %i.p, %i.al           ; 3 uses
  %i.an = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ao = insertelement <2 x double> %i.an, double %11, i64 1
  %i.ap = fneg <2 x double> %i.ao
  %i.aq = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ar = insertelement <2 x double> %i.aq, double %i.r, i64 0
  %i.as = fmul <2 x double> %i.ar, %i.ap
  %i.at = shufflevector <2 x double> %i.p, <2 x double> %i.m, <2 x i32> <i32 1, i32 2>
  %i.au = insertelement <2 x double> poison, double %11, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.r, i64 1
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.av, <2 x double> %i.as) ; 3 uses
  %i.ax = fmul <2 x double> %i.aw, %i.aw          ; 2 uses
  %20 = fneg double %.sroa.0157.8.vec.extract.i
  %21 = fmul double %5, %20
  %22 = fneg double %i.d
  %23 = fmul double %.sroa.0159.0.vec.extract.i, %22
  %i.ay = shufflevector <2 x double> %i.f, <2 x double> %i.b, <2 x i32> <i32 1, i32 2>
  %24 = insertelement <2 x double> poison, double %i.d, i64 0 ; 2 uses
  %i.az = insertelement <2 x double> %24, double %5, i64 1
  %i.ba = insertelement <2 x double> poison, double %21, i64 0
  %25 = insertelement <2 x double> %i.ba, double %23, i64 1
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.az, <2 x double> %25) ; 3 uses
  %i.bc = fmul <2 x double> %i.bb, %i.bb          ; 2 uses
  %i.bd = shufflevector <2 x double> %i.ax, <2 x double> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.be = shufflevector <2 x double> %i.ax, <2 x double> %i.bc, <2 x i32> <i32 1, i32 3>
  %i.bf = fadd <2 x double> %i.bd, %i.be
  %i.bg = fadd <2 x double> %i.ae, %i.bf
  %i.bh = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bg) ; 3 uses
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> %10, <2 x i32> <i32 1, i32 2>
  %i.bj = fdiv <2 x double> splat (double 1.000000e+00), %i.bi ; 3 uses
  %i.bk = fdiv <2 x double> splat (double 1.000000e+00), %i.bh
  %i.bl = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x double> %i.bb, %i.bl          ; 3 uses
  %i.bn = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bo = fmul <2 x double> %i.f, %i.bn           ; 3 uses
  %i.bp = fmul <2 x double> %i.ak, %i.bj          ; 3 uses
  %i.bq = shufflevector <2 x double> %15, <2 x double> %i.bh, <2 x i32> <i32 1, i32 2>
  %i.br = fdiv <2 x double> splat (double 1.000000e+00), %i.bq ; 3 uses
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = fmul <2 x double> %i.aw, %i.bs          ; 3 uses
  %i.bu = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x double> %i.m, %i.bu           ; 3 uses
  %i.bw = insertelement <2 x double> %24, double %i.r, i64 1
  %i.bx = fmul <2 x double> %i.bw, %i.ag          ; 3 uses
  %i.by = insertelement <2 x double> %i.aj, double %11, i64 0
  %i.bz = fmul <2 x double> %i.by, %i.br          ; 3 uses
  %i.ca = fmul <2 x double> %i.ad, %i.bk
  %i.cb = fmul <2 x double> %i.bo, %i.am          ; 2 uses
  %i.cc = fmul <2 x double> %i.am, %i.ai          ; 2 uses
  %i.cd = shufflevector <2 x double> %i.cb, <2 x double> %i.cc, <2 x i32> <i32 0, i32 2>
  %i.ce = shufflevector <2 x double> %i.cb, <2 x double> %i.cc, <2 x i32> <i32 1, i32 3>
  %i.cf = fadd <2 x double> %i.cd, %i.ce
  %i.cg = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ch = shufflevector <2 x double> %i.bp, <2 x double> %i.bx, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ci = fmul <2 x double> %i.cg, %i.ch
  %i.cj = fadd <2 x double> %i.cf, %i.ci          ; 3 uses
  store <2 x double> %i.cj, ptr %3, align 16, !tbaa !11
  %i.ck = fmul <2 x double> %i.am, %i.bm          ; 2 uses
  %i.cl = fmul <2 x double> %i.ai, %i.bt          ; 2 uses
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> %i.ck, <2 x i32> <i32 0, i32 2>
  %i.cn = shufflevector <2 x double> %i.cl, <2 x double> %i.ck, <2 x i32> <i32 1, i32 3>
  %i.co = fadd <2 x double> %i.cm, %i.cn
  %i.cp = fmul <2 x double> %i.bx, %i.ca
  %i.cq = fadd <2 x double> %i.cp, %i.co          ; 3 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 1
  store double %i.cr, ptr %16, align 16, !tbaa !11
  %i.cs = fmul <2 x double> %i.bo, %i.bv          ; 2 uses
  %i.ct = fmul <2 x double> %i.ai, %i.bv          ; 2 uses
  %i.cu = shufflevector <2 x double> %i.cs, <2 x double> %i.ct, <2 x i32> <i32 0, i32 2>
  %i.cv = shufflevector <2 x double> %i.cs, <2 x double> %i.ct, <2 x i32> <i32 1, i32 3>
  %i.cw = fadd <2 x double> %i.cu, %i.cv
  %i.cx = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x double> %i.ch, %i.cx
  %i.cz = fadd <2 x double> %i.cy, %i.cw          ; 3 uses
  store <2 x double> %i.cz, ptr %17, align 8, !tbaa !11
  %i.da = fmul <2 x double> %i.bm, %i.bv          ; 2 uses
  %i.db = fmul <2 x double> %i.bo, %i.bt          ; 2 uses
  %i.dc = shufflevector <2 x double> %i.da, <2 x double> %i.db, <2 x i32> <i32 0, i32 2>
  %i.dd = shufflevector <2 x double> %i.da, <2 x double> %i.db, <2 x i32> <i32 1, i32 3>
  %i.de = fadd <2 x double> %i.dc, %i.dd
  %i.df = fmul <2 x double> %i.bp, %i.bz
  %i.dg = fadd <2 x double> %i.df, %i.de          ; 2 uses
  store <2 x double> %i.dg, ptr %18, align 8, !tbaa !11
  %i.dh = extractelement <2 x double> %i.cq, i64 0
  store double %i.dh, ptr %19, align 8, !tbaa !11
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.dj = fmul <2 x double> %i.bm, %i.bt          ; 2 uses
  %shift = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.dj, %shift
  %shift45 = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop46 = fmul <2 x double> %i.bp, %shift45
  %foldExtExtBinop48 = fadd <2 x double> %foldExtExtBinop46, %foldExtExtBinop
  %i.dk = extractelement <2 x double> %foldExtExtBinop48, i64 0 ; 3 uses
  store double %i.dk, ptr %i.di, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.dl = extractelement <2 x double> %i.cz, i64 1 ; 2 uses
  %i.dm = fadd double %i.dl, %i.dk
  %i.dn = extractelement <2 x double> %i.cj, i64 0 ; 2 uses
  %i.do = fadd double %i.dn, %i.dm                ; 2 uses
  %i.dp = fcmp ogt double %i.do, 0.000000e+00
  br i1 %i.dp, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.dq = fadd double %i.do, 1.000000e+00
  %i.dr = tail call double @sqrt(double noundef %i.dq) #23 ; 2 uses
  %i.ds = fmul double %i.dr, 5.000000e-01
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %i.ds, ptr %i.dt, align 8, !tbaa !11
  %i.du = fdiv double 5.000000e-01, %i.dr         ; 2 uses
  %i.dv = fsub <2 x double> %i.dg, %i.cq
  %i.dw = insertelement <2 x double> poison, double %i.du, i64 0
  %i.dx = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = fmul <2 x double> %i.dv, %i.dx
  store <2 x double> %i.dy, ptr %4, align 16, !tbaa !11
  %shift50 = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop51 = fsub <2 x double> %shift50, %i.cz
  %i.dz = extractelement <2 x double> %foldExtExtBinop51, i64 0
  %i.ea = fmul double %i.dz, %i.du
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.ea, ptr %i.eb, align 16, !tbaa !11
  br label %_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.ec = fcmp ogt double %i.dl, %i.dn            ; 3 uses
  %spec.select.i.i.i = zext i1 %i.ec to i64
  %spec.select.i.i.i.sroa.sel.idx.sroa.sel.idx = select i1 %i.ec, i64 8, i64 0
  %spec.select.i.i.i.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %3, i64 %spec.select.i.i.i.sroa.sel.idx.sroa.sel.idx
  %.idx.i.i.i.i = select i1 %i.ec, i64 24, i64 0
  %i.ed = getelementptr i8, ptr %spec.select.i.i.i.sroa.sel.idx.sroa.sel, i64 %.idx.i.i.i.i
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !11
  %i.ef = fcmp ogt double %i.dk, %i.ee
  %.1.i.i.i = select i1 %i.ef, i64 2, i64 %spec.select.i.i.i ; 4 uses
  %i.eg = add nuw nsw i64 %.1.i.i.i, 1            ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 3
  %i.ei = select i1 %i.eh, i64 0, i64 %i.eg
  %.fr.i.i.i = freeze i64 %i.ei                   ; 5 uses
  %i.ej = add i64 %.fr.i.i.i, 1                   ; 2 uses
  %.urem.i.i.i = add i64 %.fr.i.i.i, -2
  %.cmp.i.i.i = icmp ult i64 %i.ej, 3
  %i.ek = select i1 %.cmp.i.i.i, i64 %i.ej, i64 %.urem.i.i.i ; 3 uses
  %i.el = getelementptr [8 x i8], ptr %3, i64 %.1.i.i.i ; 3 uses
  %.idx.i66.i.i.i = mul nuw nsw i64 %.1.i.i.i, 24 ; 3 uses
  %i.em = getelementptr i8, ptr %i.el, i64 %.idx.i66.i.i.i
  %i.en = load double, ptr %i.em, align 8, !tbaa !11
  %i.eo = getelementptr [8 x i8], ptr %3, i64 %.fr.i.i.i ; 3 uses
  %.idx.i67.i.i.i = mul nuw nsw i64 %.fr.i.i.i, 24 ; 3 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 %.idx.i67.i.i.i
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !11
  %i.er = fsub double %i.en, %i.eq
  %i.es = getelementptr [8 x i8], ptr %3, i64 %i.ek ; 3 uses
  %.idx.i68.i.i.i = mul i64 %i.ek, 24             ; 3 uses
  %i.et = getelementptr i8, ptr %i.es, i64 %.idx.i68.i.i.i
  %i.eu = load double, ptr %i.et, align 8, !tbaa !11
  %i.ev = fsub double %i.er, %i.eu
  %i.ew = fadd double %i.ev, 1.000000e+00
  %i.ex = tail call double @sqrt(double noundef %i.ew) #23 ; 2 uses
  %i.ey = fmul double %i.ex, 5.000000e-01
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.1.i.i.i
  store double %i.ey, ptr %i.ez, align 8, !tbaa !11
  %i.fa = fdiv double 5.000000e-01, %i.ex         ; 3 uses
  %i.fb = getelementptr i8, ptr %i.es, i64 %.idx.i67.i.i.i
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !11
  %i.fd = getelementptr i8, ptr %i.eo, i64 %.idx.i68.i.i.i
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !11
  %i.ff = fsub double %i.fc, %i.fe
  %i.fg = fmul double %i.fa, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %i.fg, ptr %i.fh, align 8, !tbaa !11
  %i.fi = getelementptr i8, ptr %i.eo, i64 %.idx.i66.i.i.i
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !11
  %i.fk = getelementptr i8, ptr %i.el, i64 %.idx.i67.i.i.i
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !11
  %i.fm = fadd double %i.fj, %i.fl
  %i.fn = fmul double %i.fa, %i.fm
  %i.fo = getelementptr inbounds [8 x i8], ptr %4, i64 %.fr.i.i.i
  store double %i.fn, ptr %i.fo, align 8, !tbaa !11
  %i.fp = getelementptr i8, ptr %i.es, i64 %.idx.i66.i.i.i
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !11
  %i.fr = getelementptr i8, ptr %i.el, i64 %.idx.i68.i.i.i
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !11
  %i.ft = fadd double %i.fq, %i.fs
  %i.fu = fmul double %i.fa, %i.ft
  %i.fv = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ek
  store double %i.fu, ptr %i.fv, align 8, !tbaa !11
  br label %_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit

_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit: ; preds = %bb.b, %bb.c
  %i.fw = load <2 x double>, ptr %4, align 16     ; 4 uses
  %i.fx = fmul <2 x double> %i.fw, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fz = load <2 x double>, ptr %i.fy, align 16  ; 4 uses
  %i.ga = fmul <2 x double> %i.fz, %i.fz
  %i.gb = fadd <2 x double> %i.fx, %i.ga          ; 2 uses
  %shift53 = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop54 = fadd <2 x double> %i.gb, %shift53
  %i.gc = extractelement <2 x double> %foldExtExtBinop54, i64 0 ; 2 uses
  %i.gd = fcmp ogt double %i.gc, 0.000000e+00     ; 2 uses
  %i.ge = extractelement <2 x double> %i.fz, i64 0
  %.scalar.i.i16 = tail call double @llvm.sqrt.f64(double %i.gc)
  %i.gf = insertelement <2 x double> poison, double %.scalar.i.i16, i64 0
  %i.gg = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gh = fdiv <2 x double> %i.fw, %i.gg
  %i.gi = fdiv <2 x double> %i.fz, %i.gg
  %i.gj = extractelement <2 x double> %i.gi, i64 0
  %i.gk = select i1 %i.gd, double %i.gj, double %i.ge
  %i.gl = select i1 %i.gd, <2 x double> %i.gh, <2 x double> %i.fw
  %i.gm = fmul <2 x double> %15, %15
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.go = fmul <2 x double> %10, %10
  %i.gp = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gq = shufflevector <2 x double> %i.gn, <2 x double> %i.gp, <2 x i32> <i32 0, i32 2>
  %i.gr = shufflevector <2 x double> %i.gn, <2 x double> %i.gp, <2 x i32> <i32 1, i32 3>
  %i.gs = fadd <2 x double> %i.gq, %i.gr
  %i.gt = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.gs)
  %i.gu = fdiv <2 x double> splat (double 1.000000e+00), %i.gt ; 3 uses
  %i.gv = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gw = fmul <2 x double> %15, %i.gv            ; 2 uses
  %i.gx = extractelement <2 x double> %10, i64 1
  %i.gy = fneg double %i.gx
  %i.gz = extractelement <2 x double> %i.gu, i64 1
  %i.ha = fmul double %i.gz, %i.gy
  %.sroa.530.16.vec.insert = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.hb = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hc = fmul <2 x double> %10, %i.hb            ; 2 uses
  %i.hd = shufflevector <2 x double> %.sroa.530.16.vec.insert, <2 x double> %i.hc, <2 x i32> <i32 0, i32 2>
  %i.he = fmul <2 x double> %i.gw, %i.hd          ; 2 uses
  %shift56 = shufflevector <2 x double> %i.he, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop57 = fadd <2 x double> %i.he, %shift56
  %i.hf = extractelement <2 x double> %foldExtExtBinop57, i64 0
  %i.hg = fmul <2 x double> %i.hc, %i.gw          ; 2 uses
  %shift59 = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop60 = fadd <2 x double> %i.hg, %shift59
  %i.hh = extractelement <2 x double> %foldExtExtBinop60, i64 0
  store <2 x double> %i.gl, ptr %0, align 16, !tbaa !11
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.gk, ptr %i.hi, align 16, !tbaa !11
  %i.hj = tail call double @atan2(double noundef %i.hf, double noundef %i.hh) #23
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.hj, ptr %i.hk, align 8, !tbaa !11
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
  store ptr %i.b, ptr %1, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !84
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.c, ptr %i.e, align 8, !tbaa !210
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !245
  store ptr %i.g, ptr %i.b, align 8, !tbaa !247
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 16, ptr %i.a, align 8, !tbaa !68
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.m, ptr %2, align 8, !tbaa !69
  %i.n = load i64, ptr %i.a, align 8, !tbaa !68   ; 3 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, ptr noundef nonnull align 1 dereferenceable(16) @.str, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !65
  %i.p = load ptr, ptr %2, align 8, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN3g2o16OptimizableGraph4Edge12resolveCacheINS_14CacheSE3OffsetEEEvRPT_PNS0_6VertexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPNS_9ParameterESaISJ_EE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.k, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %.noexc
  %i.r = load ptr, ptr %2, align 8, !tbaa !69     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.l
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.t = load i64, ptr %i.l, align 8, !tbaa !60
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !248
  %i.w = load ptr, ptr %1, align 8, !tbaa !83     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN3g2o9ParameterESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !84
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
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %2, align 8, !tbaa !69    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.l
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.d
  %i.ag = load i64, ptr %i.l, align 8, !tbaa !60
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.c ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.ad, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ai = load ptr, ptr %1, align 8, !tbaa !83    ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIPN3g2o9ParameterESaIS2_EED2Ev.exit10, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !84
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.am) #24
  br label %_ZNSt6vectorIPN3g2o9ParameterESaIS2_EED2Ev.exit10

_ZNSt6vectorIPN3g2o9ParameterESaIS2_EED2Ev.exit10: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o16OptimizableGraph4Edge12resolveCacheINS_14CacheSE3OffsetEEEvRPT_PNS0_6VertexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPNS_9ParameterESaISJ_EE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.g2o::Cache::CacheKey", align 8 ; 11 uses
  store ptr null, ptr %1, align 8, !tbaa !249
  %i.a = tail call noundef ptr @_ZN3g2o16OptimizableGraph6Vertex14cacheContainerEv(ptr noundef nonnull align 8 dereferenceable(128) %2) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN3g2o5Cache8CacheKeyC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPNS_9ParameterESaISC_EE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.b = invoke noundef ptr @_ZN3g2o14CacheContainer9findCacheERKNS_5Cache8CacheKeyE(ptr noundef nonnull align 8 dereferenceable(65) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef ptr @_ZN3g2o14CacheContainer11createCacheERKNS_5Cache8CacheKeyE(ptr noundef nonnull align 8 dereferenceable(65) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3g2o5Cache8CacheKeyD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.c
  %.not12 = icmp eq ptr %i.c, null
  br i1 %.not12, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.b, %bb.e
  %.015 = phi ptr [ %i.c, %bb.e ], [ %i.b, %bb.b ]
  %i.e = call ptr @__dynamic_cast(ptr nonnull %.015, ptr nonnull @_ZTIN3g2o5CacheE, ptr nonnull @_ZTIN3g2o14CacheSE3OffsetE, i64 0) #23
  store ptr %i.e, ptr %1, align 8, !tbaa !249
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN3g2o9ParameterESaIS2_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #24
  br label %_ZNSt6vectorIPN3g2o9ParameterESaIS2_EED2Ev.exit.i

_ZNSt6vectorIPN3g2o9ParameterESaIS2_EED2Ev.exit.i: ; preds = %bb.g, %bb.f
  %i.m = load ptr, ptr %5, align 8, !tbaa !69     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN3g2o5Cache8CacheKeyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIPN3g2o9ParameterESaIS2_EED2Ev.exit.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !60
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #24
  br label %_ZN3g2o5Cache8CacheKeyD2Ev.exit

_ZN3g2o5Cache8CacheKeyD2Ev.exit:                  ; preds = %_ZNSt6vectorIPN3g2o9ParameterESaIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void
}

end_hunk_0
