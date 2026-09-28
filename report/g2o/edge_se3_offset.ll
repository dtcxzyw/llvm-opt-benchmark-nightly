Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_offset?download=true
inline.NumInlined: 6695
inline.NumDeleted: 3459
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZNK3g2o13EdgeSE3Offset5writeERSo:bb.a

_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE13writeParamIdsERSo.exit: ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN3g2o8internal10toVectorQTERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.74") align 8 %2, ptr noundef nonnull align 16 dereferenceable(128) %i.i)
  %i.j = call noundef zeroext i1 @_ZN3g2o8internal11writeVectorIN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEEEEbRSoRKNS2_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.k = call noundef zeroext i1 @_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE22writeInformationMatrixERSo(ptr noundef nonnull align 16 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !10
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !120
  %i.r = icmp eq i32 %i.q, 0
  ret i1 %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o8internal11writeVectorIN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEEEEbRSoRKNS2_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !12
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.a)
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !12
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
  %i.bl = load double, ptr %i.bk, align 16, !tbaa !12, !noalias !206
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !111 ; 12 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 216
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 224
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !12, !noalias !209 ; 2 uses
  %i.bw = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x double> %i.bb, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 240
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 248
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 256
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !12, !noalias !209 ; 2 uses
  %i.cd = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x double> %i.bb, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 272
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bn, i64 280
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bn, i64 288
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !12, !noalias !209 ; 2 uses
  %i.ck = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = fmul <2 x double> %i.bb, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bn, i64 304
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cu = load double, ptr %i.cs, align 8, !tbaa !12, !noalias !209 ; 2 uses
  %i.cv = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bn, i64 312
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !12, !noalias !209 ; 2 uses
  %i.cz = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = fmul <2 x double> %i.ak, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bn, i64 320
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !12, !noalias !209 ; 2 uses
  %i.de = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = fmul <2 x double> %i.bb, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.di = load <2 x double>, ptr %i.d, align 8, !tbaa !12, !noalias !206 ; 4 uses
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dk = fmul <2 x double> %i.e, %i.dj
  %i.dl = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dm = fmul <2 x double> %i.g, %i.dl
  %i.dn = fadd <2 x double> %i.dk, %i.dm
  %i.do = fadd <2 x double> %i.dn, %i.n           ; 4 uses
  %3 = fmul double %i.p, %i.v
  %4 = fmul double %i.r, %i.aa
  %i.dp = fmul double %i.t, %i.ag
  %i.dq = fadd double %4, %i.dp
  %i.dr = fadd double %3, %i.dq                   ; 4 uses
  %5 = fmul double %i.p, %i.am
  %6 = fmul double %i.r, %i.ar
  %i.ds = fmul double %i.t, %i.ax
  %i.dt = fadd double %6, %i.ds
  %i.du = fadd double %5, %i.dt                   ; 4 uses
  %i.dv = load <2 x double>, ptr %i.bc, align 8, !tbaa !12, !noalias !206 ; 4 uses
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x double> %i.e, %i.dw
  %i.dy = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dz = fmul <2 x double> %i.g, %i.dy
  %i.ea = fadd <2 x double> %i.dx, %i.dz
  %i.eb = fadd <2 x double> %i.ea, %i.bi
  %i.ec = insertelement <2 x double> poison, double %i.p, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = shufflevector <2 x double> %i.di, <2 x double> %i.dv, <2 x i32> <i32 0, i32 2>
  %i.ef = fmul <2 x double> %i.ed, %i.ee
  %i.eg = insertelement <2 x double> poison, double %i.r, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = shufflevector <2 x double> %i.di, <2 x double> %i.dv, <2 x i32> <i32 1, i32 3>
  %i.ej = fmul <2 x double> %i.eh, %i.ei
  %i.ek = insertelement <2 x double> poison, double %i.t, i64 0
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = insertelement <2 x double> %i.l, double %i.bf, i64 1
  %i.en = fmul <2 x double> %i.el, %i.em
  %i.eo = fadd <2 x double> %i.ej, %i.en
  %i.ep = fadd <2 x double> %i.ef, %i.eo          ; 2 uses
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0> ; 2 uses
  %i.er = fadd <2 x double> %i.bj, %i.eb
  %i.es = load <2 x double>, ptr %i.bo, align 8, !tbaa !12, !noalias !209 ; 3 uses
  %i.et = load double, ptr %i.bt, align 8, !tbaa !12, !noalias !209
  %i.eu = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = fmul <2 x double> %i.do, %i.eu
  %i.ew = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ex = fmul <2 x double> %i.ak, %i.ew
  %i.ey = fadd <2 x double> %i.ev, %i.ex
  %i.ez = fadd <2 x double> %i.ey, %i.by
  %i.fa = fmul double %i.dr, %i.et
  %i.fb = fmul double %i.du, %i.bv
  %i.fc = fadd double %i.fa, %i.fb
  %i.fd = load <2 x double>, ptr %i.bz, align 8, !tbaa !12, !noalias !209 ; 3 uses
  %i.fe = load double, ptr %i.ca, align 8, !tbaa !12, !noalias !209
  %i.ff = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fg = fmul <2 x double> %i.do, %i.ff
  %i.fh = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fi = fmul <2 x double> %i.ak, %i.fh
  %i.fj = fadd <2 x double> %i.fg, %i.fi
  %i.fk = fadd <2 x double> %i.fj, %i.cf
  %i.fl = fmul double %i.dr, %i.fe
  %i.fm = fmul double %i.du, %i.cc
  %i.fn = fadd double %i.fl, %i.fm
  %i.fo = load <2 x double>, ptr %i.cg, align 8, !tbaa !12, !noalias !209 ; 3 uses
  %i.fp = load double, ptr %i.ch, align 8, !tbaa !12, !noalias !209
  %i.fq = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fr = fmul <2 x double> %i.do, %i.fq
  %i.fs = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ft = fmul <2 x double> %i.ak, %i.fs
  %i.fu = fadd <2 x double> %i.fr, %i.ft
  %i.fv = fadd <2 x double> %i.fu, %i.cm
  %i.fw = shufflevector <2 x double> %i.fd, <2 x double> %i.es, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.fx = shufflevector <2 x double> %i.fo, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.fy = shufflevector <4 x double> %i.fw, <4 x double> %i.fx, <4 x i32> <i32 0, i32 1, i32 poison, i32 7>
  %i.fz = insertelement <4 x double> %i.fy, double %i.bl, i64 2 ; 2 uses
  %i.ga = fmul <4 x double> %i.fz, %i.eq
  %i.gb = fadd <4 x double> %i.fz, %i.eq
  %i.gc = shufflevector <4 x double> %i.ga, <4 x double> %i.gb, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.gd = fmul double %i.dr, %i.fp
  %i.ge = fmul double %i.du, %i.cj
  %i.gf = fadd double %i.gd, %i.ge
  store <2 x double> %i.ez, ptr %1, align 16, !tbaa !29, !alias.scope !209
  %i.gg = extractelement <2 x double> %i.ep, i64 0
  %i.gh = fmul double %i.gg, %i.cu
  %i.gi = fmul double %i.dr, %i.cy
  %i.gj = fmul double %i.du, %i.dd
  %i.gk = fadd double %i.gi, %i.gj
  %i.gl = fadd double %i.gh, %i.gk
  %i.gm = insertelement <4 x double> poison, double %i.fn, i64 0
  %i.gn = insertelement <4 x double> %i.gm, double %i.fc, i64 1
  %i.go = insertelement <4 x double> %i.gn, double %i.gl, i64 2
  %i.gp = insertelement <4 x double> %i.go, double %i.gf, i64 3
  %i.gq = fadd <4 x double> %i.gc, %i.gp          ; 4 uses
  %i.gr = extractelement <4 x double> %i.gq, i64 1
  store double %i.gr, ptr %i.cn, align 16, !tbaa !12, !alias.scope !209
  store <2 x double> %i.fk, ptr %i.co, align 16, !tbaa !29, !alias.scope !209
  %i.gs = extractelement <4 x double> %i.gq, i64 0
  store double %i.gs, ptr %i.cp, align 16, !tbaa !12, !alias.scope !209
  store <2 x double> %i.fv, ptr %i.cq, align 16, !tbaa !29, !alias.scope !209
  %i.gt = extractelement <4 x double> %i.gq, i64 3
  store double %i.gt, ptr %i.cr, align 16, !tbaa !12, !alias.scope !209
  %i.gu = fmul <2 x double> %i.do, %i.cw
  %i.gv = fadd <2 x double> %i.gu, %i.db
  %i.gw = fadd <2 x double> %i.gv, %i.dg
  %i.gx = fadd <2 x double> %i.er, %i.gw
  store <2 x double> %i.gx, ptr %i.ct, align 16, !tbaa !29, !alias.scope !209
  %i.gy = extractelement <4 x double> %i.gq, i64 2
  store double %i.gy, ptr %i.dh, align 16, !tbaa !12, !alias.scope !209
  store double 0.000000e+00, ptr %i.bp, align 8, !tbaa !12, !alias.scope !209
  store double 0.000000e+00, ptr %i.bq, align 8, !tbaa !12, !alias.scope !209
  store double 0.000000e+00, ptr %i.br, align 8, !tbaa !12, !alias.scope !209
  store double 1.000000e+00, ptr %i.bs, align 8, !tbaa !12, !alias.scope !209
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN3g2o8internal11toVectorMQTERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.28") align 16 %2, ptr noundef nonnull align 16 dereferenceable(128) %1)
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.gz, ptr noundef nonnull align 16 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !210
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
end_hunk_0
