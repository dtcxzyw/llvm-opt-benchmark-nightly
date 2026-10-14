Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_offset?download=true
inline.NumInlined: 6695
inline.NumDeleted: 3459
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN3g2o8internal11writeVectorIN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEEEEbRSoRKNS2_9DenseBaseIT_EE:bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.e)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !12
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.i)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !12
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.m)
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load double, ptr %i.p, align 8, !tbaa !12
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.q)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load double, ptr %i.t, align 8, !tbaa !12
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.u)
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load double, ptr %i.x, align 8, !tbaa !12
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.y)
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !10
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !120
  %i.ah = icmp eq i32 %i.ag, 0
  ret i1 %i.ah
}

declare void @_ZN3g2o8internal10toVectorQTERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind writable sret(%"class.Eigen::Matrix.74") align 8, ptr noundef nonnull align 16 dereferenceable(128)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE22writeInformationMatrixERSo(ptr noundef nonnull align 16 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load double, ptr %i.a, align 16, !tbaa !12
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.b)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.f = load double, ptr %i.e, align 16, !tbaa !12
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.f)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.j = load double, ptr %i.i, align 16, !tbaa !12
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.j)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.n = load double, ptr %i.m, align 16, !tbaa !12
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.n)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.r = load double, ptr %i.q, align 16, !tbaa !12
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.v = load double, ptr %i.u, align 16, !tbaa !12
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.v)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.z = load double, ptr %i.y, align 8, !tbaa !12
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.z)
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !12
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.ad)
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !12
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.ah)
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.al = load double, ptr %i.ak, align 8, !tbaa !12
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.al)
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !12
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.ap)
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.at = load double, ptr %i.as, align 16, !tbaa !12
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.at)
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ax = load double, ptr %i.aw, align 16, !tbaa !12
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.ax)
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bb = load double, ptr %i.ba, align 16, !tbaa !12
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.bb)
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bf = load double, ptr %i.be, align 16, !tbaa !12
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.bf)
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !12
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.bj)
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !12
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.bn)
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.br = load double, ptr %i.bq, align 8, !tbaa !12
  %i.bs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.br)
  %i.bt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bv = load double, ptr %i.bu, align 16, !tbaa !12
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.bv)
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.bz = load double, ptr %i.by, align 16, !tbaa !12
  %i.ca = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.bz)
  %i.cb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !12
  %i.ce = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.cd)
  %i.cf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.cg = load ptr, ptr %1, align 8, !tbaa !10
  %i.ch = getelementptr i8, ptr %i.cg, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %1, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !120
  %i.cm = icmp eq i32 %i.cl, 0
  ret i1 %i.cm
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o13EdgeSE3Offset12computeErrorEv(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(896) initializes((592, 640)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::Transform", align 16 ; 15 uses
  %2 = alloca %"class.Eigen::Matrix.28", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !110 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load <2 x double>, ptr %i.a, align 16, !tbaa !29, !noalias !206 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.g = load <2 x double>, ptr %i.f, align 16, !tbaa !29, !noalias !206 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.i = load <2 x double>, ptr %i.h, align 16, !tbaa !29, !noalias !206 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.k = load double, ptr %i.j, align 8, !tbaa !12, !noalias !206
  %i.l = insertelement <2 x double> poison, double %i.k, i64 0 ; 2 uses
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fmul <2 x double> %i.i, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.p = load double, ptr %i.o, align 16, !tbaa !12, !noalias !206 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.r = load double, ptr %i.q, align 16, !tbaa !12, !noalias !206 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.t = load double, ptr %i.s, align 16, !tbaa !12, !noalias !206 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.v = load double, ptr %i.u, align 8, !tbaa !12, !noalias !206 ; 2 uses
  %i.w = insertelement <2 x double> poison, double %i.v, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x double> %i.e, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.aa = load double, ptr %i.z, align 8, !tbaa !12, !noalias !206 ; 2 uses
  %i.ab = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x double> %i.g, %i.ac
  %i.ae = fadd <2 x double> %i.y, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.ag = load double, ptr %i.af, align 8, !tbaa !12, !noalias !206 ; 2 uses
  %i.ah = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x double> %i.i, %i.ai
  %i.ak = fadd <2 x double> %i.ae, %i.aj          ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.am = load double, ptr %i.al, align 8, !tbaa !12, !noalias !206 ; 2 uses
  %i.an = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %i.e, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !12, !noalias !206 ; 2 uses
  %i.as = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x double> %i.g, %i.at
  %i.av = fadd <2 x double> %i.ap, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !12, !noalias !206 ; 2 uses
  %i.ay = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x double> %i.i, %i.az
  %i.bb = fadd <2 x double> %i.av, %i.ba          ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.bf = load double, ptr %i.be, align 8, !tbaa !12, !noalias !206 ; 2 uses
  %i.bg = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x double> %i.i, %i.bh
  %i.bj = load <2 x double>, ptr %i.bd, align 16, !tbaa !29, !noalias !206
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 848
  %3 = load <2 x double>, ptr %i.bk, align 16
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !111 ; 12 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 216
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 224
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !12, !noalias !209 ; 2 uses
  %i.bv = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x double> %i.bb, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 240
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 248
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bm, i64 256
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !12, !noalias !209 ; 2 uses
  %i.cc = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x double> %i.bb, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bm, i64 272
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 280
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bm, i64 288
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !12, !noalias !209 ; 2 uses
  %i.cj = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x double> %i.bb, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bm, i64 304
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ct = load double, ptr %i.cr, align 8, !tbaa !12, !noalias !209 ; 2 uses
  %i.cu = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bm, i64 312
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !12, !noalias !209 ; 2 uses
  %i.cy = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = fmul <2 x double> %i.ak, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.bm, i64 320
  %i.dc = load double, ptr %i.db, align 8, !tbaa !12, !noalias !209 ; 2 uses
  %i.dd = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.df = fmul <2 x double> %i.bb, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dh = load <2 x double>, ptr %i.d, align 8, !tbaa !12, !noalias !206 ; 4 uses
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x double> %i.e, %i.di
  %i.dk = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dl = fmul <2 x double> %i.g, %i.dk
  %i.dm = fadd <2 x double> %i.dj, %i.dl
  %i.dn = fadd <2 x double> %i.dm, %i.n           ; 4 uses
  %i.do = fmul double %i.p, %i.v
  %i.dp = fmul double %i.r, %i.aa
  %i.dq = fmul double %i.t, %i.ag
  %i.dr = fadd double %i.dp, %i.dq
  %i.ds = fadd double %i.do, %i.dr                ; 4 uses
  %i.dt = fmul double %i.p, %i.am
  %i.du = fmul double %i.r, %i.ar
  %i.dv = fmul double %i.t, %i.ax
  %i.dw = fadd double %i.du, %i.dv
  %i.dx = fadd double %i.dt, %i.dw                ; 4 uses
  %i.dy = load <2 x double>, ptr %i.bc, align 8, !tbaa !12, !noalias !206 ; 4 uses
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = fmul <2 x double> %i.e, %i.dz
  %i.eb = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ec = fmul <2 x double> %i.g, %i.eb
  %i.ed = fadd <2 x double> %i.ea, %i.ec
  %i.ee = fadd <2 x double> %i.ed, %i.bi
  %i.ef = insertelement <2 x double> poison, double %i.p, i64 0
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = shufflevector <2 x double> %i.dh, <2 x double> %i.dy, <2 x i32> <i32 0, i32 2>
  %i.ei = fmul <2 x double> %i.eg, %i.eh
  %i.ej = insertelement <2 x double> poison, double %i.r, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = shufflevector <2 x double> %i.dh, <2 x double> %i.dy, <2 x i32> <i32 1, i32 3>
  %i.em = fmul <2 x double> %i.ek, %i.el
  %i.en = insertelement <2 x double> poison, double %i.t, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = insertelement <2 x double> %i.l, double %i.bf, i64 1
  %i.eq = fmul <2 x double> %i.eo, %i.ep
  %i.er = fadd <2 x double> %i.em, %i.eq
  %i.es = fadd <2 x double> %i.ei, %i.er          ; 2 uses
  %i.et = shufflevector <2 x double> %i.es, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0> ; 2 uses
  %i.eu = fadd <2 x double> %i.bj, %i.ee
  %i.ev = load <2 x double>, ptr %i.bn, align 8, !tbaa !12, !noalias !209 ; 3 uses
  %i.ew = load double, ptr %i.bs, align 8, !tbaa !12, !noalias !209
  %i.ex = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ey = fmul <2 x double> %i.dn, %i.ex
  %i.ez = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fa = fmul <2 x double> %i.ak, %i.ez
  %i.fb = fadd <2 x double> %i.ey, %i.fa
  %i.fc = fadd <2 x double> %i.fb, %i.bx
  %i.fd = fmul double %i.ds, %i.ew
  %i.fe = fmul double %i.dx, %i.bu
  %i.ff = fadd double %i.fd, %i.fe
  %i.fg = load <2 x double>, ptr %i.by, align 8, !tbaa !12, !noalias !209 ; 3 uses
  %i.fh = load double, ptr %i.bz, align 8, !tbaa !12, !noalias !209
  %i.fi = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fj = fmul <2 x double> %i.dn, %i.fi
  %i.fk = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fl = fmul <2 x double> %i.ak, %i.fk
  %i.fm = fadd <2 x double> %i.fj, %i.fl
  %i.fn = fadd <2 x double> %i.fm, %i.ce
  %i.fo = fmul double %i.ds, %i.fh
  %i.fp = fmul double %i.dx, %i.cb
  %i.fq = fadd double %i.fo, %i.fp
  %i.fr = load <2 x double>, ptr %i.cf, align 8, !tbaa !12, !noalias !209 ; 3 uses
  %i.fs = load double, ptr %i.cg, align 8, !tbaa !12, !noalias !209
  %i.ft = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fu = fmul <2 x double> %i.dn, %i.ft
  %i.fv = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fw = fmul <2 x double> %i.ak, %i.fv
  %i.fx = fadd <2 x double> %i.fu, %i.fw
  %i.fy = fadd <2 x double> %i.fx, %i.cl
  %i.fz = shufflevector <2 x double> %i.fg, <2 x double> %i.ev, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ga = shufflevector <2 x double> %i.fr, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.gb = shufflevector <4 x double> %i.fz, <4 x double> %i.ga, <4 x i32> <i32 0, i32 1, i32 poison, i32 7>
  %i.gc = shufflevector <2 x double> %3, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.gd = shufflevector <4 x double> %i.gb, <4 x double> %i.gc, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %i.ge = fmul <4 x double> %i.gd, %i.et
  %i.gf = fadd <4 x double> %i.gd, %i.et
  %i.gg = shufflevector <4 x double> %i.ge, <4 x double> %i.gf, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.gh = fmul double %i.ds, %i.fs
  %i.gi = fmul double %i.dx, %i.ci
  %i.gj = fadd double %i.gh, %i.gi
  store <2 x double> %i.fc, ptr %1, align 16, !tbaa !29, !alias.scope !209
  %i.gk = extractelement <2 x double> %i.es, i64 0
  %i.gl = fmul double %i.gk, %i.ct
  %i.gm = fmul double %i.ds, %i.cx
  %i.gn = fmul double %i.dx, %i.dc
  %i.go = fadd double %i.gm, %i.gn
  %i.gp = fadd double %i.gl, %i.go
  %i.gq = insertelement <4 x double> poison, double %i.fq, i64 0
  %i.gr = insertelement <4 x double> %i.gq, double %i.ff, i64 1
  %i.gs = insertelement <4 x double> %i.gr, double %i.gp, i64 2
  %i.gt = insertelement <4 x double> %i.gs, double %i.gj, i64 3
  %i.gu = fadd <4 x double> %i.gg, %i.gt          ; 4 uses
  %i.gv = extractelement <4 x double> %i.gu, i64 1
  store double %i.gv, ptr %i.cm, align 16, !tbaa !12, !alias.scope !209
  store <2 x double> %i.fn, ptr %i.cn, align 16, !tbaa !29, !alias.scope !209
  %i.gw = extractelement <4 x double> %i.gu, i64 0
  store double %i.gw, ptr %i.co, align 16, !tbaa !12, !alias.scope !209
  store <2 x double> %i.fy, ptr %i.cp, align 16, !tbaa !29, !alias.scope !209
  %i.gx = extractelement <4 x double> %i.gu, i64 3
  store double %i.gx, ptr %i.cq, align 16, !tbaa !12, !alias.scope !209
  %i.gy = fmul <2 x double> %i.dn, %i.cv
  %i.gz = fadd <2 x double> %i.gy, %i.da
  %i.ha = fadd <2 x double> %i.gz, %i.df
  %i.hb = fadd <2 x double> %i.eu, %i.ha
  store <2 x double> %i.hb, ptr %i.cs, align 16, !tbaa !29, !alias.scope !209
  %i.hc = extractelement <4 x double> %i.gu, i64 2
  store double %i.hc, ptr %i.dg, align 16, !tbaa !12, !alias.scope !209
  store double 0.000000e+00, ptr %i.bo, align 8, !tbaa !12, !alias.scope !209
  store double 0.000000e+00, ptr %i.bp, align 8, !tbaa !12, !alias.scope !209
  store double 0.000000e+00, ptr %i.bq, align 8, !tbaa !12, !alias.scope !209
  store double 1.000000e+00, ptr %i.br, align 8, !tbaa !12, !alias.scope !209
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN3g2o8internal11toVectorMQTERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.28") align 16 %2, ptr noundef nonnull align 16 dereferenceable(128) %1)
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.hd, ptr noundef nonnull align 16 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !210
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void
}

declare void @_ZN3g2o8internal11toVectorMQTERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind writable sret(%"class.Eigen::Matrix.28") align 16, ptr noundef nonnull align 16 dereferenceable(128)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3g2o13EdgeSE3Offset23setMeasurementFromStateEv(ptr noundef nonnull align 16 dereferenceable(896) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::Transform", align 16 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !110 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111  ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.k = load <2 x double>, ptr %i.c, align 1, !tbaa !29, !noalias !217 ; 4 uses
  %i.l = load double, ptr %i.f, align 8, !tbaa !12, !noalias !217 ; 2 uses
  %i.m = insertelement <2 x double> poison, double %i.l, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x double> %i.k, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.q = load <2 x double>, ptr %i.p, align 1, !tbaa !29, !noalias !217 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.s = load double, ptr %i.r, align 8, !tbaa !12, !noalias !217 ; 2 uses
  %i.t = insertelement <2 x double> poison, double %i.s, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %i.q, %i.u
  %i.w = fadd <2 x double> %i.o, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.y = load <2 x double>, ptr %i.x, align 1, !tbaa !29, !noalias !217 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.aa = load double, ptr %i.z, align 8, !tbaa !12, !noalias !217 ; 2 uses
  %i.ab = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x double> %i.y, %i.ac
  %i.ae = fadd <2 x double> %i.w, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ag = load double, ptr %i.af, align 8, !tbaa !12, !noalias !217 ; 4 uses
  %i.ah = fmul double %i.l, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !12, !noalias !217 ; 4 uses
  %i.ak = fmul double %i.s, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.am = load double, ptr %i.al, align 8, !tbaa !12, !noalias !217 ; 4 uses
  %i.an = fmul double %i.aa, %i.am
  %i.ao = fadd double %i.ak, %i.an
  %i.ap = fadd double %i.ah, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !12, !noalias !217 ; 2 uses
  %i.as = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x double> %i.k, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.aw = load double, ptr %i.av, align 8, !tbaa !12, !noalias !217 ; 2 uses
  %i.ax = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x double> %i.q, %i.ay
  %i.ba = fadd <2 x double> %i.au, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !12, !noalias !217 ; 2 uses
  %i.bd = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x double> %i.y, %i.be
  %i.bg = fadd <2 x double> %i.ba, %i.bf
  %i.bh = fmul double %i.ag, %i.ar
  %i.bi = fmul double %i.aj, %i.aw
  %i.bj = fmul double %i.am, %i.bc
  %i.bk = fadd double %i.bi, %i.bj
  %i.bl = fadd double %i.bh, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !12, !noalias !217 ; 2 uses
  %i.bo = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x double> %i.k, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %i.bs = load double, ptr %i.br, align 8, !tbaa !12, !noalias !217 ; 2 uses
  %i.bt = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x double> %i.q, %i.bu
  %i.bw = fadd <2 x double> %i.bq, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.by = load double, ptr %i.bx, align 8, !tbaa !12, !noalias !217 ; 2 uses
  %i.bz = insertelement <2 x double> poison, double %i.by, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x double> %i.y, %i.ca
  %i.cc = fadd <2 x double> %i.bw, %i.cb
  %i.cd = fmul double %i.ag, %i.bn
  %i.ce = fmul double %i.aj, %i.bs
  %i.cf = fmul double %i.am, %i.by
  %i.cg = fadd double %i.ce, %i.cf
  %i.ch = fadd double %i.cd, %i.cg
  store <2 x double> %i.ae, ptr %1, align 16, !tbaa !29, !alias.scope !217
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.ap, ptr %i.ci, align 16, !tbaa !12, !alias.scope !217
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <2 x double> %i.bg, ptr %i.cj, align 16, !tbaa !29, !alias.scope !217
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 48
  store double %i.bl, ptr %i.ck, align 16, !tbaa !12, !alias.scope !217
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <2 x double> %i.cc, ptr %i.cl, align 16, !tbaa !29, !alias.scope !217
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 80
  store double %i.ch, ptr %i.cm, align 16, !tbaa !12, !alias.scope !217
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cq = load double, ptr %i.cn, align 8, !tbaa !12, !noalias !217 ; 2 uses
  %i.cr = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x double> %i.k, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 312
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !12, !noalias !217 ; 2 uses
  %i.cw = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x double> %i.q, %i.cx
  %i.cz = fadd <2 x double> %i.ct, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.db = load double, ptr %i.da, align 8, !tbaa !12, !noalias !217 ; 2 uses
  %i.dc = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = fmul <2 x double> %i.y, %i.dd
  %i.df = fadd <2 x double> %i.cz, %i.de
  %i.dg = fmul double %i.ag, %i.cq
  %i.dh = fmul double %i.aj, %i.cv
  %i.di = fmul double %i.am, %i.db
  %i.dj = fadd double %i.dh, %i.di
  %i.dk = fadd double %i.dg, %i.dj
  %i.dl = load <2 x double>, ptr %i.co, align 8, !tbaa !29, !noalias !217
  %i.dm = fadd <2 x double> %i.dl, %i.df
  store <2 x double> %i.dm, ptr %i.cp, align 16, !tbaa !29, !alias.scope !217
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.dp = load double, ptr %i.do, align 8, !tbaa !12, !noalias !217
  %i.dq = fadd double %i.dp, %i.dk
  store double %i.dq, ptr %i.dn, align 16, !tbaa !12, !alias.scope !217
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !12, !alias.scope !217
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !12, !alias.scope !217
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !12, !alias.scope !217
  store double 1.000000e+00, ptr %i.j, align 8, !tbaa !12, !alias.scope !217
  %i.dr = load ptr, ptr %0, align 16, !tbaa !10
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 208
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 16 dereferenceable(864) %0, ptr noundef nonnull align 16 dereferenceable(128) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o13EdgeSE3Offset14linearizeOplusEv(ptr noundef nonnull align 16 dereferenceable(896) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZN3g2o8internal22computeEdgeSE3GradientIN5Eigen3MapINS2_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS2_6StrideILi0ELi0EEEEEEEvRNS2_9TransformIdLi3ELi1ELi0EEERKNS2_10MatrixBaseIT_EESG_RKSA_SI_SI_SI_SI_:bb.a
  %.sroa.0620.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0620, i64 8
  %.sroa.0620.8..sroa.0620.8..sroa.0620.8..sroa.0620.8. = load <2 x double>, ptr %.sroa.0620.8..sroa_idx, align 8 ; 2 uses
  %i.ajk = shufflevector <2 x double> %.sroa.0620.8..sroa.0620.8..sroa.0620.8..sroa.0620.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.ajl = fmul <2 x double> %i.lb, %i.ajk
  %i.ajm = fadd <2 x double> %i.ajj, %i.ajl
  %.sroa.0620.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0620, i64 16
  %.sroa.0620.16..sroa.0620.16..sroa.0620.16..sroa.0620.16. = load <2 x double>, ptr %.sroa.0620.16..sroa_idx, align 16 ; 2 uses
  %i.ajn = shufflevector <2 x double> %.sroa.0620.16..sroa.0620.16..sroa.0620.16..sroa.0620.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.ajo = fmul <2 x double> %i.lj, %i.ajn
  %i.ajp = fadd <2 x double> %i.ajm, %i.ajo
  %i.ajq = extractelement <2 x double> %.sroa.0620.0..sroa.0620.0..sroa.0620.0..sroa.0620.0., i64 0
  %i.ajr = fmul double %i.kx, %i.ajq
  %i.ajs = extractelement <2 x double> %.sroa.0620.8..sroa.0620.8..sroa.0620.8..sroa.0620.8., i64 0
  %i.ajt = fmul double %i.lf, %i.ajs
  %i.aju = extractelement <2 x double> %.sroa.0620.16..sroa.0620.16..sroa.0620.16..sroa.0620.16., i64 0
  %i.ajv = fmul double %i.ln, %i.aju
  %i.ajw = fadd double %i.ajt, %i.ajv
  %i.ajx = fadd double %i.ajr, %i.ajw
  store double %i.ajx, ptr %.sroa.4.i.i.i.i39, align 16, !tbaa !12
  %.sroa.0620.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0620, i64 24
  %.sroa.0620.24..sroa.0620.24..sroa.0620.24..sroa.0620.24. = load <2 x double>, ptr %.sroa.0620.24..sroa_idx, align 8 ; 2 uses
  %i.ajy = shufflevector <2 x double> %.sroa.0620.24..sroa.0620.24..sroa.0620.24..sroa.0620.24., <2 x double> poison, <2 x i32> zeroinitializer
  %i.ajz = fmul <2 x double> %i.kr, %i.ajy
  %.sroa.0620.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0620, i64 32
  %.sroa.0620.32..sroa.0620.32..sroa.0620.32..sroa.0620.32. = load <2 x double>, ptr %.sroa.0620.32..sroa_idx, align 16 ; 2 uses
  %i.aka = shufflevector <2 x double> %.sroa.0620.32..sroa.0620.32..sroa.0620.32..sroa.0620.32., <2 x double> poison, <2 x i32> zeroinitializer
  %i.akb = fmul <2 x double> %i.lb, %i.aka
  %i.akc = fadd <2 x double> %i.ajz, %i.akb
  %.sroa.0620.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0620, i64 40
  %.sroa.0620.40..sroa.0620.40..sroa.0620.40..sroa.0620.40. = load <2 x double>, ptr %.sroa.0620.40..sroa_idx, align 8 ; 2 uses
  %i.akd = shufflevector <2 x double> %.sroa.0620.40..sroa.0620.40..sroa.0620.40..sroa.0620.40., <2 x double> poison, <2 x i32> zeroinitializer
  %i.ake = fmul <2 x double> %i.lj, %i.akd
  %i.akf = fadd <2 x double> %i.akc, %i.ake
  %.sroa.4.i.i.i.i39.8.i.i.i.i39.8.i.i.i.i39.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i39, i64 8
  store <2 x double> %i.akf, ptr %.sroa.4.i.i.i.i39.8.i.i.i.i39.8.i.i.i.i39.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !29
  %i.akg = extractelement <2 x double> %.sroa.0620.24..sroa.0620.24..sroa.0620.24..sroa.0620.24., i64 0
  %i.akh = fmul double %i.kx, %i.akg
  %i.aki = extractelement <2 x double> %.sroa.0620.32..sroa.0620.32..sroa.0620.32..sroa.0620.32., i64 0
  %i.akj = fmul double %i.lf, %i.aki
  %i.akk = extractelement <2 x double> %.sroa.0620.40..sroa.0620.40..sroa.0620.40..sroa.0620.40., i64 0
  %i.akl = fmul double %i.ln, %i.akk
  %i.akm = fadd double %i.akj, %i.akl
  %i.akn = fadd double %i.akh, %i.akm
  %.sroa.4.i.i.i.i39.24.i.i.i.i39.24.i.i.i.i39.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i39, i64 24
  store double %i.akn, ptr %.sroa.4.i.i.i.i39.24.i.i.i.i39.24.i.i.i.i39.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !12
  %.sroa.0620.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0620, i64 48
  %.sroa.0620.48..sroa.0620.48..sroa.0620.48..sroa.0620.48. = load <2 x double>, ptr %.sroa.0620.48..sroa_idx, align 16 ; 2 uses
  %i.ako = shufflevector <2 x double> %.sroa.0620.48..sroa.0620.48..sroa.0620.48..sroa.0620.48., <2 x double> poison, <2 x i32> zeroinitializer
  %i.akp = fmul <2 x double> %i.kr, %i.ako
  %.sroa.0620.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0620, i64 56
  %.sroa.0620.56..sroa.0620.56..sroa.0620.56..sroa.0620.56. = load <2 x double>, ptr %.sroa.0620.56..sroa_idx, align 8 ; 4 uses
  %i.akq = shufflevector <2 x double> %.sroa.0620.56..sroa.0620.56..sroa.0620.56..sroa.0620.56., <2 x double> poison, <2 x i32> zeroinitializer
  %i.akr = fmul <2 x double> %i.lb, %i.akq
  %i.aks = fadd <2 x double> %i.akp, %i.akr
  %i.akt = shufflevector <2 x double> %.sroa.0620.56..sroa.0620.56..sroa.0620.56..sroa.0620.56., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aku = fmul <2 x double> %i.lj, %i.akt
  %i.akv = fadd <2 x double> %i.aku, %i.aks
  %i.akw = extractelement <2 x double> %.sroa.0620.48..sroa.0620.48..sroa.0620.48..sroa.0620.48., i64 0
  %i.akx = fmul double %i.kx, %i.akw
  %i.aky = extractelement <2 x double> %.sroa.0620.56..sroa.0620.56..sroa.0620.56..sroa.0620.56., i64 0
  %i.akz = fmul double %i.lf, %i.aky
  %i.ala = extractelement <2 x double> %.sroa.0620.56..sroa.0620.56..sroa.0620.56..sroa.0620.56., i64 1
  %i.alb = fmul double %i.ln, %i.ala
  %i.alc = fadd double %i.akz, %i.alb
  %i.ald = fadd double %i.akx, %i.alc
  %.sroa.4.i.i.i.i39.0..sroa.4.i.i.i.i39.0..sroa.4.i.i.i.i39.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i43 = load <2 x double>, ptr %.sroa.4.i.i.i.i39, align 16, !tbaa !29
  %.sroa.4.i.i.i.i39.16.i.i.i.i39.16.i.i.i.i39.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i39, i64 16
  %.sroa.4.i.i.i.i39.16..sroa.4.i.i.i.i39.16..sroa.4.i.i.i.i39.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i45 = load <2 x double>, ptr %.sroa.4.i.i.i.i39.16.i.i.i.i39.16.i.i.i.i39.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i39)
  %i.ale = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  store <2 x double> %i.ajp, ptr %i.ale, align 16, !tbaa !29
  %i.alf = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  store <2 x double> %.sroa.4.i.i.i.i39.0..sroa.4.i.i.i.i39.0..sroa.4.i.i.i.i39.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i43, ptr %i.alf, align 16, !tbaa !29
  %i.alg = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  store <2 x double> %.sroa.4.i.i.i.i39.16..sroa.4.i.i.i.i39.16..sroa.4.i.i.i.i39.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i45, ptr %i.alg, align 16, !tbaa !29
  %i.alh = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  store <2 x double> %i.akv, ptr %i.alh, align 16, !tbaa !29
  %i.ali = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  store double %i.ald, ptr %i.ali, align 16, !tbaa !12
  %i.alj = load ptr, ptr %2, align 8, !tbaa !136, !noalias !284 ; 6 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.all = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %i.k, ptr %i.all, align 8
  store ptr %18, ptr %8, align 8, !tbaa !274
  %i.alm = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %18, ptr %i.alm, align 8, !tbaa !275
  %i.aln = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.k, ptr %i.aln, align 8, !tbaa !142
  %i.alo = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 9, ptr %i.alo, align 8, !tbaa !276
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %12, ptr %9, align 8, !tbaa !275
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %9, ptr %10, align 8, !tbaa !277
  %i.alp = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %8, ptr %i.alp, align 8, !tbaa !278
  %i.alq = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %11, ptr %i.alq, align 8, !tbaa !279
  %i.alr = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %12, ptr %i.alr, align 8, !tbaa !280
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEENS3_INS_7ProductINS4_IdLi3ELi9ELi0ELi3ELi9EEENS_3MapINS4_IdLi9ELi3ELi0ELi9ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_9assign_opIddEEEELi4ELi1EE3runERSI_(ptr noundef nonnull align 8 dereferenceable(32) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.als = load <2 x double>, ptr %12, align 16, !tbaa !29
  store <2 x double> %i.als, ptr %i.alk, align 1, !tbaa !29
  %i.alt = getelementptr i8, ptr %i.alj, i64 184
  %i.alu = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.alv = load double, ptr %i.alu, align 16, !tbaa !12
  store double %i.alv, ptr %i.alt, align 8, !tbaa !12
  %i.alw = getelementptr i8, ptr %i.alj, i64 216
  %i.alx = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.aly = load <2 x double>, ptr %i.alx, align 8, !tbaa !29
  store <2 x double> %i.aly, ptr %i.alw, align 8, !tbaa !29
  %i.alz = getelementptr i8, ptr %i.alj, i64 232
  %i.ama = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.amb = load double, ptr %i.ama, align 8, !tbaa !12
  store double %i.amb, ptr %i.alz, align 8, !tbaa !12
  %i.amc = getelementptr i8, ptr %i.alj, i64 264
  %i.amd = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ame = load <2 x double>, ptr %i.amd, align 16, !tbaa !29
  store <2 x double> %i.ame, ptr %i.amc, align 8, !tbaa !29
  %i.amf = getelementptr i8, ptr %i.alj, i64 280
  %i.amg = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.amh = load double, ptr %i.amg, align 16, !tbaa !12
  store double %i.amh, ptr %i.amf, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8577)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0620)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0597)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0527)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o13EdgeSE3Offset15initialEstimateERKSt3setIPNS_10HyperGraph6VertexESt4lessIS4_ESaIS4_EEPNS_16OptimizableGraph6VertexE(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(896) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1, ptr nofree readnone captures(none) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109  ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !109  ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !110
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !133  ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = load <2 x double>, ptr %i.j, align 1, !tbaa !29, !noalias !300 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.n = load <2 x double>, ptr %i.m, align 1, !tbaa !29, !noalias !300 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.p = load <2 x double>, ptr %i.o, align 1, !tbaa !29, !noalias !300 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.r = load double, ptr %i.q, align 16, !tbaa !12, !noalias !300 ; 2 uses
  %i.s = insertelement <2 x double> poison, double %i.r, i64 0 ; 2 uses
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = fmul <2 x double> %i.p, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.w = load double, ptr %i.v, align 8, !tbaa !12, !noalias !300 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.y = load double, ptr %i.x, align 8, !tbaa !12, !noalias !300 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.aa = load double, ptr %i.z, align 8, !tbaa !12, !noalias !300 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ad = load double, ptr %i.ac, align 16, !tbaa !12, !noalias !300 ; 2 uses
  %i.ae = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x double> %i.p, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ai = load double, ptr %i.ah, align 16, !tbaa !12, !noalias !300 ; 2 uses
  %i.aj = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x double> %i.l, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.an = load double, ptr %i.am, align 8, !tbaa !12, !noalias !300 ; 2 uses
  %i.ao = insertelement <2 x double> poison, double %i.an, i64 0
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x double> %i.n, %i.ap
  %i.ar = fadd <2 x double> %i.al, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.at = load double, ptr %i.as, align 16, !tbaa !12, !noalias !300 ; 2 uses
  %i.au = insertelement <2 x double> poison, double %i.at, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x double> %i.p, %i.av
  %i.ax = fadd <2 x double> %i.ar, %i.aw          ; 4 uses
  %i.ay = fmul double %i.w, %i.ai
  %i.az = fmul double %i.y, %i.an
  %i.ba = fmul double %i.aa, %i.at
  %i.bb = fadd double %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 288
  %3 = load <2 x double>, ptr %i.be, align 16     ; 2 uses
  %i.bf = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x double> %i.p, %i.bf
  %i.bh = load <2 x double>, ptr %i.bd, align 8, !tbaa !29, !noalias !300
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !12, !noalias !300
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !111
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !133 ; 10 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !12, !noalias !301 ; 2 uses
  %.sroa.2047.64.vec.insert = insertelement <2 x double> poison, double %i.bt, i64 0 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !12, !noalias !301 ; 3 uses
  %.sroa.2047.72.vec.insert = insertelement <2 x double> %.sroa.2047.64.vec.insert, double %i.bv, i64 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 96
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !12, !noalias !301 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  %i.bz = load double, ptr %i.by, align 8, !tbaa !12, !noalias !301 ; 2 uses
  %i.ca = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bn, i64 120
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !12, !noalias !301 ; 2 uses
  %i.ce = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 128
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !12, !noalias !301 ; 2 uses
  %i.ci = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x double> %.sroa.2047.72.vec.insert, %i.cj
  %i.cl = fneg double %i.bx
  %i.cm = fmul double %i.ch, %i.cl
  %i.cn = shufflevector <2 x double> %.sroa.2047.64.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x double> %i.ax, %i.cr
  %i.ct = load <2 x double>, ptr %i.k, align 16, !tbaa !12, !noalias !300 ; 6 uses
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = fmul <2 x double> %i.l, %i.cu
  %i.cw = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cx = fmul <2 x double> %i.n, %i.cw
  %i.cy = fadd <2 x double> %i.cv, %i.cx
  %i.cz = fadd <2 x double> %i.cy, %i.u           ; 4 uses
  %i.da = load <2 x double>, ptr %i.ab, align 16, !tbaa !12, !noalias !300 ; 4 uses
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = fmul <2 x double> %i.l, %i.db
  %i.dd = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.de = fmul <2 x double> %i.n, %i.dd
  %i.df = fadd <2 x double> %i.dc, %i.de
  %i.dg = fadd <2 x double> %i.df, %i.ag          ; 4 uses
  %i.dh = insertelement <2 x double> poison, double %i.w, i64 0
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dj = shufflevector <2 x double> %i.ct, <2 x double> %i.da, <2 x i32> <i32 0, i32 2>
  %i.dk = fmul <2 x double> %i.di, %i.dj
  %i.dl = insertelement <2 x double> poison, double %i.y, i64 0
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dn = shufflevector <2 x double> %i.ct, <2 x double> %i.da, <2 x i32> <i32 1, i32 3>
  %i.do = fmul <2 x double> %i.dm, %i.dn
  %i.dp = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dr = insertelement <2 x double> %i.s, double %i.ad, i64 1
  %i.ds = fmul <2 x double> %i.dq, %i.dr
  %i.dt = load <2 x double>, ptr %i.bc, align 16, !tbaa !12, !noalias !300 ; 4 uses
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> %i.ct, <2 x i32> <i32 1, i32 3>
  %i.dv = fmul <2 x double> %i.du, %i.dm
  %i.dw = insertelement <2 x double> %3, double %i.r, i64 1
  %i.dx = fmul <2 x double> %i.dw, %i.dq
  %i.dy = fadd <2 x double> %i.do, %i.ds
  %i.dz = shufflevector <2 x double> %i.dt, <2 x double> %i.ct, <2 x i32> <i32 0, i32 2>
  %i.ea = fmul <2 x double> %i.dz, %i.di
  %i.eb = fadd <2 x double> %i.dv, %i.dx
  %i.ec = fadd <2 x double> %i.dk, %i.dy          ; 2 uses
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %.scalar = fadd double %i.ay, %i.bb             ; 2 uses
  %i.ee = insertelement <2 x double> <double 1.000000e+00, double poison>, double %.scalar, i64 1
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.eg = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = fmul <2 x double> %i.l, %i.eg
  %i.ei = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ej = fmul <2 x double> %i.n, %i.ei
  %i.ek = fadd <2 x double> %i.eh, %i.ej
  %i.el = fadd <2 x double> %i.ek, %i.bg
  %i.em = fadd <2 x double> %i.ea, %i.eb
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0> ; 2 uses
  %i.eo = fadd <2 x double> %i.bh, %i.el
  %i.ep = load <2 x double>, ptr %i.bo, align 8, !tbaa !12, !noalias !301 ; 5 uses
  %i.eq = load <2 x double>, ptr %i.bp, align 8, !tbaa !12, !noalias !301 ; 5 uses
  %i.er = shufflevector <2 x double> %i.ep, <2 x double> %i.eq, <2 x i32> <i32 0, i32 2>
  %i.es = shufflevector <2 x double> %i.ep, <2 x double> %i.eq, <2 x i32> <i32 1, i32 3>
  %i.et = load <2 x double>, ptr %i.bq, align 8, !tbaa !12, !noalias !301 ; 4 uses
  %i.eu = load double, ptr %i.br, align 8, !tbaa !12, !noalias !301
  %i.ev = fneg <2 x double> %i.er
  %i.ew = fmul <2 x double> %i.cb, %i.ev
  %i.ex = fmul <2 x double> %i.es, %i.cf
  %i.ey = fsub <2 x double> %i.ew, %i.ex
  %i.ez = fsub <2 x double> %i.ey, %i.ck          ; 4 uses
  %i.fa = fmul double %i.eu, %i.cd
  %i.fb = fsub double %i.cm, %i.fa
  %i.fc = extractelement <2 x double> %i.et, i64 0
  %i.fd = fmul double %i.fc, %i.bz
  %i.fe = fsub double %i.fb, %i.fd                ; 2 uses
  %i.ff = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fg = fmul <2 x double> %i.cz, %i.ff
  %i.fh = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fi = fmul <2 x double> %i.dg, %i.fh
  %i.fj = fadd <2 x double> %i.fg, %i.fi
  %i.fk = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fl = fmul <2 x double> %i.ax, %i.fk
  %i.fm = fadd <2 x double> %i.fj, %i.fl          ; 9 uses
  %i.fn = insertelement <4 x double> poison, double %i.bt, i64 2
  %i.fo = insertelement <4 x double> %i.fn, double %i.bj, i64 3
  %i.fp = shufflevector <2 x double> %i.ep, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fq = shufflevector <4 x double> %i.fp, <4 x double> %i.fo, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.fr = fadd <4 x double> %i.fq, %i.en
  %i.fs = fmul <4 x double> %i.fq, %i.en
  %i.ft = shufflevector <4 x double> %i.fs, <4 x double> %i.fr, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %.sroa.2953.104.vec.extract = extractelement <2 x double> %i.ez, i64 1
  %i.fu = shufflevector <2 x double> %i.ez, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.fv = insertelement <4 x double> %i.fu, double %i.bv, i64 2
  %i.fw = shufflevector <2 x double> %i.eq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fx = shufflevector <4 x double> %i.fw, <4 x double> %i.fv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fy = fmul <4 x double> %i.ed, %i.fx
  %i.fz = extractelement <2 x double> %i.ec, i64 1
  %i.ga = fmul double %i.fz, %.sroa.2953.104.vec.extract
  %i.gb = fmul double %.scalar, %i.fe
  %i.gc = fadd double %i.gb, %i.ga
  %i.gd = shufflevector <2 x double> %i.et, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ge = insertelement <4 x double> %i.gd, double %i.bx, i64 2
  %i.gf = insertelement <4 x double> %i.ge, double %i.gc, i64 3
  %i.gg = fmul <4 x double> %i.gf, %i.ef
  %i.gh = fadd <4 x double> %i.fy, %i.gg
  %i.gi = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gj = fmul <2 x double> %i.cz, %i.gi
  %i.gk = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gl = fmul <2 x double> %i.dg, %i.gk
  %i.gm = fadd <2 x double> %i.gj, %i.gl
  %i.gn = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.go = fmul <2 x double> %i.ax, %i.gn
  %i.gp = fadd <2 x double> %i.gm, %i.go          ; 9 uses
  %i.gq = fmul <2 x double> %i.cz, %i.cn
  %i.gr = fmul <2 x double> %i.dg, %i.cp
  %i.gs = fadd <2 x double> %i.gq, %i.gr
  %i.gt = fadd <2 x double> %i.gs, %i.cs          ; 8 uses
  %i.gu = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gv = fmul <2 x double> %i.cz, %i.gu
  %i.gw = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gx = fmul <2 x double> %i.dg, %i.gw
  %i.gy = fadd <2 x double> %i.gv, %i.gx
  %i.gz = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = fmul <2 x double> %i.ax, %i.ha
  %i.hc = fadd <2 x double> %i.hb, %i.gy
  %i.hd = fadd <2 x double> %i.eo, %i.hc          ; 7 uses
  %i.he = fadd <4 x double> %i.ft, %i.gh          ; 15 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !302 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not10.i.i.i, label %_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.hg, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.hh, %bb.a ]
  %i.hi = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !109
  %i.hk = icmp ult ptr %i.hj, %i.c                ; 2 uses
  %.19.i.i.i = select i1 %i.hk, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.hk, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !303 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !291

_ZNKSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.hl = icmp eq ptr %.19.i.i.i, %i.hh
  br i1 %i.hl, label %_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread, label %_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit

_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit: ; preds = %_ZNKSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !109
  %.not97 = icmp ult ptr %i.c, %i.hn
  br i1 %.not97, label %_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit
  %i.ho = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.hp = load <2 x double>, ptr %i.ho, align 1, !tbaa !29, !noalias !304 ; 4 uses
  %i.hq = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hr = fmul <2 x double> %i.hq, %i.hp
  %i.hs = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.ht = load <2 x double>, ptr %i.hs, align 1, !tbaa !29, !noalias !304 ; 4 uses
  %i.hu = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hv = fmul <2 x double> %i.hu, %i.ht
  %i.hw = fadd <2 x double> %i.hr, %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.hy = load <2 x double>, ptr %i.hx, align 1, !tbaa !29, !noalias !304 ; 4 uses
  %i.hz = shufflevector <4 x double> %i.he, <4 x double> poison, <2 x i32> zeroinitializer
  %i.ia = fmul <2 x double> %i.hz, %i.hy
  %i.ib = fadd <2 x double> %i.hw, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.id = load double, ptr %i.ic, align 8, !tbaa !12, !noalias !304
  %i.ie = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.if = load double, ptr %i.ie, align 8, !tbaa !12, !noalias !304
  %i.ig = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !12, !noalias !304
  %i.ii = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ij = fmul <2 x double> %i.ii, %i.hp
  %i.ik = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.il = fmul <2 x double> %i.ik, %i.ht
  %i.im = fadd <2 x double> %i.ij, %i.il
  %i.in = shufflevector <4 x double> %i.he, <4 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.io = fmul <2 x double> %i.in, %i.hy
  %i.ip = fadd <2 x double> %i.im, %i.io
  %i.iq = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ir = fmul <2 x double> %i.iq, %i.hp
  %i.is = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.it = fmul <2 x double> %i.is, %i.ht
  %i.iu = fadd <2 x double> %i.ir, %i.it
  %i.iv = shufflevector <4 x double> %i.he, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.iw = fmul <2 x double> %i.iv, %i.hy
  %i.ix = fadd <2 x double> %i.iu, %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.iz = shufflevector <2 x double> %i.hd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ja = fmul <2 x double> %i.iz, %i.hp
  %i.jb = shufflevector <2 x double> %i.hd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jc = fmul <2 x double> %i.jb, %i.ht
  %i.jd = fadd <2 x double> %i.ja, %i.jc
  %i.je = shufflevector <4 x double> %i.he, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.jf = fmul <2 x double> %i.je, %i.hy
  %i.jg = fadd <2 x double> %i.jd, %i.jf
  %i.jh = shufflevector <2 x double> %i.fm, <2 x double> %i.gp, <2 x i32> <i32 0, i32 2>
  %i.ji = shufflevector <2 x double> %i.gt, <2 x double> %i.hd, <2 x i32> <i32 0, i32 2>
  %i.jj = shufflevector <2 x double> %i.jh, <2 x double> %i.ji, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jk = insertelement <4 x double> poison, double %i.id, i64 0
  %i.jl = shufflevector <4 x double> %i.jk, <4 x double> poison, <4 x i32> zeroinitializer
  %i.jm = fmul <4 x double> %i.jj, %i.jl
  %i.jn = shufflevector <2 x double> %i.fm, <2 x double> %i.gp, <2 x i32> <i32 1, i32 3>
  %i.jo = shufflevector <2 x double> %i.gt, <2 x double> %i.hd, <2 x i32> <i32 1, i32 3>
  %i.jp = shufflevector <2 x double> %i.jn, <2 x double> %i.jo, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jq = insertelement <4 x double> poison, double %i.if, i64 0
  %i.jr = shufflevector <4 x double> %i.jq, <4 x double> poison, <4 x i32> zeroinitializer
  %i.js = fmul <4 x double> %i.jp, %i.jr
  %i.jt = insertelement <4 x double> poison, double %i.ih, i64 0
  %i.ju = shufflevector <4 x double> %i.jt, <4 x double> poison, <4 x i32> zeroinitializer
  %i.jv = fmul <4 x double> %i.he, %i.ju
  %i.jw = fadd <4 x double> %i.js, %i.jv
  %i.jx = fadd <4 x double> %i.jm, %i.jw
  %i.jy = load <2 x double>, ptr %i.iy, align 8, !tbaa !29, !noalias !304
  %i.jz = fadd <2 x double> %i.jg, %i.jy
  br label %bb.c

_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i, %bb.a, %_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit
  %i.ka = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %.sroa.0.8.vec.insert = shufflevector <2 x double> %i.fm, <2 x double> %i.gp, <2 x i32> <i32 0, i32 2>
  %.sroa.11.32.vec.insert = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.11.40.vec.insert = shufflevector <2 x double> %i.fm, <2 x double> %i.gp, <2 x i32> <i32 1, i32 3>
  %i.kb = shufflevector <4 x double> %i.he, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.kc = fneg <2 x double> %.sroa.0.8.vec.insert
  %i.kd = shufflevector <2 x double> %i.hd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ke = fmul <2 x double> %i.kd, %i.kc
  %i.kf = shufflevector <2 x double> %i.hd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.kg = fmul <2 x double> %.sroa.11.40.vec.insert, %i.kf
  %i.kh = fsub <2 x double> %i.ke, %i.kg
  %i.ki = shufflevector <4 x double> %i.he, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.kj = fmul <2 x double> %i.kb, %i.ki
  %i.kk = fsub <2 x double> %i.kh, %i.kj          ; 4 uses
  %i.kl = extractelement <4 x double> %i.he, i64 2
end_hunk_1
