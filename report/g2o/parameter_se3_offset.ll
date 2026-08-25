Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/parameter_se3_offset?download=true
inline.NumInlined: 2016
inline.NumDeleted: 1254
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3g2o8internal10readVectorIN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEEEEbRSiRNS2_9DenseBaseIT_EE:bb.a

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.av) ; 0 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !8
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !11 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.be) ; 0 uses
  %i.bg = load ptr, ptr %0, align 8, !tbaa !8
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !11 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bo = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bn) ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !8
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre11 = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert12 = getelementptr inbounds i8, ptr %0, i64 %.pre11
  %.phi.trans.insert13 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert12, i64 32
  %.pre14 = load i32, ptr %.phi.trans.insert13, align 8, !tbaa !11
  br label %.critedge
}

declare void @_ZN3g2o8internal12fromVectorQTERKN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEE(ptr dead_on_unwind writable sret(%"class.Eigen::Transform") align 16, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK3g2o18ParameterSE3Offset5writeERSo(ptr noundef nonnull align 16 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix.3", align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN3g2o8internal10toVectorQTERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.3") align 8 %2, ptr noundef nonnull align 16 dereferenceable(128) %i.a)
  %i.b = call noundef zeroext i1 @_ZN3g2o8internal11writeVectorIN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEEEEbRSoRKNS2_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o8internal11writeVectorIN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEEEEbRSoRKNS2_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !22
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.a)
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !22
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.e)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !22
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.i)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !22
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.m)
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load double, ptr %i.p, align 8, !tbaa !22
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.q)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load double, ptr %i.t, align 8, !tbaa !22
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.u)
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load double, ptr %i.x, align 8, !tbaa !22
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.y)
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !8
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !11
  %i.ah = icmp eq i32 %i.ag, 0
  ret i1 %i.ah
}

declare void @_ZN3g2o8internal10toVectorQTERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind writable sret(%"class.Eigen::Matrix.3") align 8, ptr noundef nonnull align 16 dereferenceable(128)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o14CacheSE3OffsetC2Ev(ptr noundef nonnull align 16 dereferenceable(464) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  invoke void @_ZN3g2o5CacheC2EPNS_14CacheContainerERKSt6vectorIPNS_9ParameterESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !24     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3g2o14CacheSE3OffsetE, i64 16), ptr %0, align 16, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200
  store double 1.000000e+00, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232
  store double 0.000000e+00, ptr %i.l, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  store double 0.000000e+00, ptr %i.m, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 296
  store double 0.000000e+00, ptr %i.n, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 328
  store double 1.000000e+00, ptr %i.o, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 360
  store double 0.000000e+00, ptr %i.p, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 392
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 424
  store double 0.000000e+00, ptr %i.r, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 456
  store double 1.000000e+00, ptr %i.s, align 8, !tbaa !22
  ret void

bb.e:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %1, align 8, !tbaa !24     ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIPN3g2o9ParameterESaIS2_EED2Ev.exit5, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #14
  br label %_ZNSt6vectorIPN3g2o9ParameterESaIS2_EED2Ev.exit5

_ZNSt6vectorIPN3g2o9ParameterESaIS2_EED2Ev.exit5: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  resume { ptr, i32 } %i.t
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @_ZN3g2o5CacheC2EPNS_14CacheContainerERKSt6vectorIPNS_9ParameterESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN3g2o14CacheSE3Offset19resolveDependenciesEv(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(464) initializes((72, 80)) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__dynamic_cast(ptr nonnull %i.c, ptr nonnull @_ZTIN3g2o9ParameterE, ptr nonnull @_ZTIN3g2o18ParameterSE3OffsetE, i64 0) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.f, ptr %i.g, align 8, !tbaa !29
  %i.h = icmp ne ptr %i.f, null
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o14CacheSE3Offset10updateImplEv(ptr noundef nonnull align 16 dereferenceable(464) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3g2o5Cache6vertexEv(ptr noundef nonnull align 8 dereferenceable(72) %0) ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load <2 x double>, ptr %i.b, align 1, !tbaa !10, !noalias !51 ; 4 uses
  %i.g = load double, ptr %i.e, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.h = insertelement <2 x double> poison, double %i.g, i64 0
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.j = fmul <2 x double> %i.f, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.l = load <2 x double>, ptr %i.k, align 1, !tbaa !10, !noalias !51 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load double, ptr %i.m, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.o = insertelement <2 x double> poison, double %i.n, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x double> %i.l, %i.p
  %i.r = fadd <2 x double> %i.j, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  %i.t = load <2 x double>, ptr %i.s, align 1, !tbaa !10, !noalias !51 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.v = load double, ptr %i.u, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.w = insertelement <2 x double> poison, double %i.v, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x double> %i.t, %i.x
  %i.z = fadd <2 x double> %i.r, %i.y             ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 208 ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !22, !noalias !51 ; 4 uses
  %i.ac = fmul double %i.g, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !22, !noalias !51 ; 4 uses
  %i.af = fmul double %i.n, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 272 ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !22, !noalias !51 ; 4 uses
  %i.ai = fmul double %i.v, %i.ah
  %i.aj = fadd double %i.af, %i.ai
  %i.ak = fadd double %i.ac, %i.aj                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.am = load double, ptr %i.al, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.an = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %i.f, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.as = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x double> %i.l, %i.at
  %i.av = fadd <2 x double> %i.ap, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.ay = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x double> %i.t, %i.az
  %i.bb = fadd <2 x double> %i.av, %i.ba          ; 3 uses
  %i.bc = fmul double %i.ab, %i.am
  %i.bd = fmul double %i.ae, %i.ar
  %i.be = fmul double %i.ah, %i.ax
  %i.bf = fadd double %i.bd, %i.be
  %i.bg = fadd double %i.bc, %i.bf                ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.bj = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x double> %i.f, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.bo = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x double> %i.l, %i.bp
  %i.br = fadd <2 x double> %i.bl, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.bu = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x double> %i.t, %i.bv
  %i.bx = fadd <2 x double> %i.br, %i.bw          ; 5 uses
  %i.by = fmul double %i.ab, %i.bi
  %i.bz = fmul double %i.ae, %i.bn
  %i.ca = fmul double %i.ah, %i.bt
  %i.cb = fadd double %i.bz, %i.ca
  %i.cc = fadd double %i.by, %i.cb                ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 288 ; 2 uses
  %i.cf = load double, ptr %i.cd, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.cg = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x double> %i.f, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.cl = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cn = fmul <2 x double> %i.l, %i.cm
  %i.co = fadd <2 x double> %i.ci, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.cr = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x double> %i.t, %i.cs
  %i.cu = fadd <2 x double> %i.co, %i.ct
  %i.cv = fmul double %i.ab, %i.cf
  %i.cw = fmul double %i.ae, %i.ck
  %i.cx = fmul double %i.ah, %i.cq
  %i.cy = fadd double %i.cw, %i.cx
  %i.cz = fadd double %i.cv, %i.cy
  %i.da = load <2 x double>, ptr %i.ce, align 8, !tbaa !10, !noalias !51
  %i.db = fadd <2 x double> %i.da, %i.cu          ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 304 ; 2 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !22, !noalias !51
  %i.de = fadd double %i.dd, %i.cz                ; 3 uses
  %.sroa.4.24.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ak, i64 0
  %.sroa.924.56.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.bg, i64 0
  %.sroa.14.88.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.cc, i64 0
  %.sroa.1928.120.vec.insert = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.de, i64 0
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x double> %i.z, ptr %i.df, align 16, !tbaa !10
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x double> %.sroa.4.24.vec.insert, ptr %i.dg, align 16, !tbaa !10
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <2 x double> %i.bb, ptr %i.dh, align 16, !tbaa !10
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <2 x double> %.sroa.924.56.vec.insert, ptr %i.di, align 16, !tbaa !10
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 272
  store <2 x double> %i.bx, ptr %i.dj, align 16, !tbaa !10
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 288
  store <2 x double> %.sroa.14.88.vec.insert, ptr %i.dk, align 16, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <2 x double> %i.db, ptr %i.dl, align 16, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <2 x double> %.sroa.1928.120.vec.insert, ptr %i.dm, align 16, !tbaa !10
  %.sroa.06.8.vec.insert = shufflevector <2 x double> %i.z, <2 x double> %i.bb, <2 x i32> <i32 0, i32 2> ; 2 uses
  %.sroa.910.40.vec.insert = shufflevector <2 x double> %i.z, <2 x double> %i.bb, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dn = extractelement <2 x double> %i.bx, i64 1
  %.sroa.1514.64.vec.insert = insertelement <2 x double> poison, double %i.ak, i64 0
  %.sroa.1514.72.vec.insert = insertelement <2 x double> %.sroa.1514.64.vec.insert, double %i.bg, i64 1 ; 2 uses
  %i.do = fneg <2 x double> %.sroa.06.8.vec.insert
  %i.dp = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x double> %i.dp, %i.do
  %i.dr = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ds = fmul <2 x double> %.sroa.910.40.vec.insert, %i.dr
  %i.dt = fsub <2 x double> %i.dq, %i.ds
  %i.du = insertelement <2 x double> poison, double %i.de, i64 0
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = fmul <2 x double> %.sroa.1514.72.vec.insert, %i.dv
  %i.dx = fsub <2 x double> %i.dt, %i.dw
  %i.dy = fneg double %i.cc
  %i.dz = fmul double %i.de, %i.dy
  %foldExtExtBinop = fmul <2 x double> %i.bx, %i.db
  %i.ea = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.eb = fsub double %i.dz, %i.ea
  %foldExtExtBinop42 = fmul <2 x double> %i.bx, %i.db
  %i.ec = extractelement <2 x double> %foldExtExtBinop42, i64 0
  %i.ed = fsub double %i.eb, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x double> %.sroa.06.8.vec.insert, ptr %i.ee, align 16
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ef = insertelement <2 x double> %i.bx, double 0.000000e+00, i64 1
  store <2 x double> %i.ef, ptr %.sroa.68.0..sroa_idx, align 16
  %.sroa.910.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x double> %.sroa.910.40.vec.insert, ptr %.sroa.910.0..sroa_idx, align 16
  %.sroa.1212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store double %i.dn, ptr %.sroa.1212.0..sroa_idx, align 16
  %.sroa.1313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double 0.000000e+00, ptr %.sroa.1313.0..sroa_idx, align 8
  %.sroa.1514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <2 x double> %.sroa.1514.72.vec.insert, ptr %.sroa.1514.0..sroa_idx, align 16
  %.sroa.1816.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %i.cc, ptr %.sroa.1816.0..sroa_idx, align 16
  %.sroa.1917.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double 0.000000e+00, ptr %.sroa.1917.0..sroa_idx, align 8
  %.sroa.2118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x double> %i.dx, ptr %.sroa.2118.0..sroa_idx, align 16
  %.sroa.2219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store double %i.ed, ptr %.sroa.2219.0..sroa_idx, align 16
  %.sroa.2320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store double 1.000000e+00, ptr %.sroa.2320.0..sroa_idx, align 8, !tbaa !10
  %1 = load double, ptr %i.b, align 8, !tbaa !22, !noalias !56
  %.sroa.0.0.vec.insert = insertelement <2 x double> poison, double %1, i64 0
  %i.eg = load double, ptr %i.k, align 8, !tbaa !22, !noalias !56
  %.sroa.0.8.vec.insert = insertelement <2 x double> %.sroa.0.0.vec.insert, double %i.eg, i64 1 ; 2 uses
  %2 = load double, ptr %i.s, align 8, !tbaa !22, !noalias !56 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.eh = load double, ptr %3, align 8, !tbaa !22, !noalias !56
  %.sroa.9.32.vec.insert = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !22, !noalias !56
  %.sroa.9.40.vec.insert = insertelement <2 x double> %.sroa.9.32.vec.insert, double %i.ej, i64 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.el = load double, ptr %i.ek, align 8, !tbaa !22, !noalias !56 ; 2 uses
  %i.em = load double, ptr %i.aa, align 8, !tbaa !22, !noalias !56
  %.sroa.15.64.vec.insert = insertelement <2 x double> poison, double %i.em, i64 0
  %i.en = load double, ptr %i.ad, align 8, !tbaa !22, !noalias !56
  %.sroa.15.72.vec.insert = insertelement <2 x double> %.sroa.15.64.vec.insert, double %i.en, i64 1 ; 2 uses
  %i.eo = load double, ptr %i.ag, align 8, !tbaa !22, !noalias !56 ; 2 uses
  %i.ep = fneg <2 x double> %.sroa.0.8.vec.insert
  %i.eq = load double, ptr %i.ce, align 8, !tbaa !22, !noalias !56 ; 2 uses
  %i.er = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.es = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> zeroinitializer
  %i.et = fmul <2 x double> %i.es, %i.ep
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !22, !noalias !56 ; 2 uses
  %i.ew = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ey = fmul <2 x double> %.sroa.9.40.vec.insert, %i.ex
  %i.ez = fsub <2 x double> %i.et, %i.ey
  %i.fa = load double, ptr %i.dc, align 8, !tbaa !22, !noalias !56 ; 2 uses
  %i.fb = insertelement <2 x double> poison, double %i.fa, i64 0
  %i.fc = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fd = fmul <2 x double> %.sroa.15.72.vec.insert, %i.fc
  %i.fe = fsub <2 x double> %i.ez, %i.fd
  %i.ff = fneg double %i.eo
  %i.fg = fmul double %i.fa, %i.ff
  %i.fh = fmul double %i.el, %i.ev
  %i.fi = fsub double %i.fg, %i.fh
  %i.fj = fmul double %2, %i.eq
  %i.fk = fsub double %i.fi, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 336
  store <2 x double> %.sroa.0.8.vec.insert, ptr %i.fl, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  store double %2, ptr %.sroa.6.0..sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store double 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store <2 x double> %.sroa.9.40.vec.insert, ptr %.sroa.9.0..sroa_idx, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 384
  store double %i.el, ptr %.sroa.12.0..sroa_idx, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 392
  store double 0.000000e+00, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store <2 x double> %.sroa.15.72.vec.insert, ptr %.sroa.15.0..sroa_idx, align 16
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 416
  store double %i.eo, ptr %.sroa.18.0..sroa_idx, align 16
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  store double 0.000000e+00, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 432
  store <2 x double> %i.fe, ptr %.sroa.21.0..sroa_idx, align 16
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 448
  store double %i.fk, ptr %.sroa.22.0..sroa_idx, align 16
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 456
  store double 1.000000e+00, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !10
  ret void
}

declare noundef ptr @_ZN3g2o5Cache6vertexEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3g2o14CacheSE3Offset14setOffsetParamEPNS_18ParameterSE3OffsetE(ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(464) initializes((72, 80)) %0, ptr noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.a, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10HyperGraph17HyperGraphElementD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o18ParameterSE3OffsetD0Ev(ptr noundef nonnull align 16 dereferenceable(272) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 272) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o9Parameter11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o5CacheD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3g2o5CacheE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN3g2o5CacheESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #14
  br label %_ZNSt6vectorIPN3g2o5CacheESaIS2_EED2Ev.exit

_ZNSt6vectorIPN3g2o5CacheESaIS2_EED2Ev.exit:      ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPN3g2o9ParameterESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN3g2o5CacheESaIS2_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #14
  br label %_ZNSt6vectorIPN3g2o9ParameterESaIS2_EED2Ev.exit

_ZNSt6vectorIPN3g2o9ParameterESaIS2_EED2Ev.exit:  ; preds = %_ZNSt6vectorIPN3g2o5CacheESaIS2_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o14CacheSE3OffsetD0Ev(ptr noundef nonnull align 16 dereferenceable(464) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3g2o5CacheE, i64 16), ptr %0, align 16, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN3g2o5CacheESaIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #14
  br label %_ZNSt6vectorIPN3g2o5CacheESaIS2_EED2Ev.exit.i

_ZNSt6vectorIPN3g2o5CacheESaIS2_EED2Ev.exit.i:    ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !24  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN3g2o5CacheD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN3g2o5CacheESaIS2_EED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !28
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #14
  br label %_ZN3g2o5CacheD2Ev.exit

_ZN3g2o5CacheD2Ev.exit:                           ; preds = %_ZNSt6vectorIPN3g2o5CacheESaIS2_EED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 464) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o5Cache11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !15, i64 32}
!12 = !{!"_ZTSSt8ios_base", !13, i64 8, !13, i64 16, !14, i64 24, !15, i64 28, !15, i64 32, !16, i64 40, !18, i64 48, !6, i64 64, !5, i64 192, !19, i64 200, !20, i64 208}
!13 = !{!"long", !6, i64 0}
!14 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!15 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!16 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!17 = !{!"any pointer", !6, i64 0}
!18 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !13, i64 8}
!19 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!20 = !{!"_ZTSSt6locale", !21, i64 0}
!21 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"double", !6, i64 0}
!24 = !{!25, !26, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIPN3g2o9ParameterESaIS2_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!26 = !{!"p2 _ZTSN3g2o9ParameterE", !27, i64 0}
!27 = !{!"any p2 pointer", !17, i64 0}
!28 = !{!25, !26, i64 16}
!29 = !{!30, !43, i64 72}
!30 = !{!"_ZTSN3g2o14CacheSE3OffsetE", !31, i64 0, !43, i64 72, !44, i64 80, !44, i64 208, !44, i64 336}
!31 = !{!"_ZTSN3g2o5CacheE", !32, i64 0, !33, i64 8, !34, i64 16, !37, i64 40, !42, i64 64}
!32 = !{!"_ZTSN3g2o10HyperGraph17HyperGraphElementE"}
!33 = !{!"bool", !6, i64 0}
!34 = !{!"_ZTSSt6vectorIPN3g2o9ParameterESaIS2_EE", !35, i64 0}
end_hunk_0
