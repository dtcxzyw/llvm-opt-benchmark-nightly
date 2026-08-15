inline.NumInlined: 6695
inline.NumDeleted: 3459
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE21readInformationMatrixERSi:bb.a
bb.p:                                             ; preds = %bb.o
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.fo = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.fn) ; 0 uses
  %i.fp = load double, ptr %i.fn, align 16, !tbaa !10
  %gep.436 = getelementptr inbounds nuw i8, ptr %0, i64 336
  store double %i.fp, ptr %gep.436, align 16, !tbaa !10
  %i.fq = load ptr, ptr %1, align 8, !tbaa !8
  %i.fr = getelementptr i8, ptr %i.fq, i64 -24
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds i8, ptr %1, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !119 ; 2 uses
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %.critedge2, label %.critedge
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK3g2o13EdgeSE3Offset5writeERSo(ptr noundef nonnull align 16 dereferenceable(896) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix.74", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !128 ; 2 uses
  %.not8.i = icmp eq ptr %i.b, %i.d
  br i1 %.not8.i, label %_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE13writeParamIdsERSo.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load i32, ptr %.sroa.05.09.i, align 4, !tbaa !22
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.e)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i, label %_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE13writeParamIdsERSo.exit, label %.lr.ph.i

_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE13writeParamIdsERSo.exit: ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN3g2o8internal10toVectorQTERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.74") align 8 %2, ptr noundef nonnull align 16 dereferenceable(128) %i.i)
  %i.j = call noundef zeroext i1 @_ZN3g2o8internal11writeVectorIN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEEEEbRSoRKNS2_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.k = call noundef zeroext i1 @_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE22writeInformationMatrixERSo(ptr noundef nonnull align 16 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 0 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !8
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !119
  %i.r = icmp eq i32 %i.q, 0
  ret i1 %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o8internal11writeVectorIN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEEEEbRSoRKNS2_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !10
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.a)
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !10
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.e)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !10
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.i)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !10
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.m)
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load double, ptr %i.p, align 8, !tbaa !10
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.q)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load double, ptr %i.t, align 8, !tbaa !10
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.u)
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load double, ptr %i.x, align 8, !tbaa !10
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.y)
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !8
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !119
  %i.ah = icmp eq i32 %i.ag, 0
  ret i1 %i.ah
}

declare void @_ZN3g2o8internal10toVectorQTERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind writable sret(%"class.Eigen::Matrix.74") align 8, ptr noundef nonnull align 16 dereferenceable(128)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE22writeInformationMatrixERSo(ptr noundef nonnull align 16 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load double, ptr %i.a, align 16, !tbaa !10
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.b)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.f = load double, ptr %i.e, align 16, !tbaa !10
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.f)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.j = load double, ptr %i.i, align 16, !tbaa !10
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.j)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.n = load double, ptr %i.m, align 16, !tbaa !10
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.n)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.r = load double, ptr %i.q, align 16, !tbaa !10
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.v = load double, ptr %i.u, align 16, !tbaa !10
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.v)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.z = load double, ptr %i.y, align 8, !tbaa !10
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.z)
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !10
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.ad)
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !10
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.ah)
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.al = load double, ptr %i.ak, align 8, !tbaa !10
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.al)
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !10
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.ap)
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.at = load double, ptr %i.as, align 16, !tbaa !10
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.at)
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ax = load double, ptr %i.aw, align 16, !tbaa !10
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.ax)
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bb = load double, ptr %i.ba, align 16, !tbaa !10
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.bb)
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bf = load double, ptr %i.be, align 16, !tbaa !10
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.bf)
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !10
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.bj)
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !10
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.bn)
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.br = load double, ptr %i.bq, align 8, !tbaa !10
  %i.bs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.br)
  %i.bt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bv = load double, ptr %i.bu, align 16, !tbaa !10
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.bv)
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.bz = load double, ptr %i.by, align 16, !tbaa !10
  %i.ca = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.bz)
  %i.cb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !10
  %i.ce = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.cd)
  %i.cf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.cg = load ptr, ptr %1, align 8, !tbaa !8
  %i.ch = getelementptr i8, ptr %i.cg, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %1, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !119
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
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !115 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load <2 x double>, ptr %i.a, align 16, !tbaa !28, !noalias !129 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.g = load <2 x double>, ptr %i.f, align 16, !tbaa !28, !noalias !129 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.i = load <2 x double>, ptr %i.h, align 16, !tbaa !28, !noalias !129 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.k = load double, ptr %i.j, align 8, !tbaa !10, !noalias !129
  %i.l = insertelement <2 x double> poison, double %i.k, i64 0 ; 2 uses
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fmul <2 x double> %i.i, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.p = load double, ptr %i.o, align 16, !tbaa !10, !noalias !129 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.r = load double, ptr %i.q, align 16, !tbaa !10, !noalias !129 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.t = load double, ptr %i.s, align 16, !tbaa !10, !noalias !129 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.v = load double, ptr %i.u, align 8, !tbaa !10, !noalias !129 ; 2 uses
  %i.w = insertelement <2 x double> poison, double %i.v, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x double> %i.e, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.aa = load double, ptr %i.z, align 8, !tbaa !10, !noalias !129 ; 2 uses
  %i.ab = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x double> %i.g, %i.ac
  %i.ae = fadd <2 x double> %i.y, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.ag = load double, ptr %i.af, align 8, !tbaa !10, !noalias !129 ; 2 uses
  %i.ah = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x double> %i.i, %i.ai
  %i.ak = fadd <2 x double> %i.ae, %i.aj          ; 4 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %4 = load double, ptr %3, align 8, !tbaa !10, !noalias !129 ; 2 uses
  %5 = insertelement <2 x double> poison, double %4, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = fmul <2 x double> %i.e, %6
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.am = load double, ptr %i.al, align 8, !tbaa !10, !noalias !129 ; 2 uses
  %i.an = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %i.g, %i.ao
  %8 = fadd <2 x double> %7, %i.ap
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !10, !noalias !129 ; 2 uses
  %i.as = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x double> %i.i, %i.at
  %i.av = fadd <2 x double> %8, %i.au             ; 4 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !10, !noalias !129 ; 2 uses
  %i.ay = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x double> %i.i, %i.az
  %11 = load <2 x double>, ptr %10, align 16, !tbaa !28, !noalias !129
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 848
  %13 = load double, ptr %12, align 16, !tbaa !10, !noalias !129
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 888
  %15 = load ptr, ptr %14, align 8, !tbaa !116    ; 12 uses
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %20 = getelementptr inbounds nuw i8, ptr %15, i64 216
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 224
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !10, !noalias !140 ; 2 uses
  %i.be = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x double> %i.av, %i.bf
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 240
  %22 = getelementptr inbounds nuw i8, ptr %15, i64 248
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 256
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !10, !noalias !140 ; 2 uses
  %i.bj = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x double> %i.av, %i.bk
  %23 = getelementptr inbounds nuw i8, ptr %15, i64 272
  %24 = getelementptr inbounds nuw i8, ptr %15, i64 280
  %25 = getelementptr inbounds nuw i8, ptr %15, i64 288
  %26 = load double, ptr %25, align 8, !tbaa !10, !noalias !140 ; 2 uses
  %27 = insertelement <2 x double> poison, double %26, i64 0
  %28 = shufflevector <2 x double> %27, <2 x double> poison, <2 x i32> zeroinitializer
  %29 = fmul <2 x double> %i.av, %28
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 80
  %32 = getelementptr inbounds nuw i8, ptr %15, i64 304
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %34 = load double, ptr %32, align 8, !tbaa !10, !noalias !140 ; 2 uses
  %35 = insertelement <2 x double> poison, double %34, i64 0
  %36 = shufflevector <2 x double> %35, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = getelementptr inbounds nuw i8, ptr %15, i64 312
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !10, !noalias !140 ; 2 uses
  %i.br = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x double> %i.ak, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 320
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !10, !noalias !140 ; 2 uses
  %i.bw = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x double> %i.av, %i.bx
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %38 = load <2 x double>, ptr %i.d, align 8, !tbaa !10, !noalias !129 ; 4 uses
  %39 = shufflevector <2 x double> %38, <2 x double> poison, <2 x i32> zeroinitializer
  %40 = fmul <2 x double> %i.e, %39
  %41 = shufflevector <2 x double> %38, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = fmul <2 x double> %i.g, %41
  %42 = fadd <2 x double> %40, %i.bz
  %i.ca = fadd <2 x double> %42, %i.n             ; 4 uses
  %43 = fmul double %i.r, %i.aa
  %44 = fmul double %i.t, %i.ag
  %45 = fmul double %i.p, %i.v
  %i.cb = fmul double %i.p, %4
  %i.cc = fmul double %i.r, %i.am
  %i.cd = fmul double %i.t, %i.ar
  %46 = load <2 x double>, ptr %9, align 8, !tbaa !10, !noalias !129 ; 4 uses
  %47 = insertelement <2 x double> poison, double %i.r, i64 0
  %48 = shufflevector <2 x double> %47, <2 x double> poison, <2 x i32> zeroinitializer
  %49 = shufflevector <2 x double> %38, <2 x double> %46, <2 x i32> <i32 1, i32 3>
  %50 = fmul <2 x double> %48, %49
  %i.ce = insertelement <2 x double> poison, double %i.t, i64 0
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer
  %51 = insertelement <2 x double> %i.l, double %i.ax, i64 1
  %i.cg = fmul <2 x double> %i.cf, %51
  %52 = fadd double %43, %44
  %53 = fadd double %i.cc, %i.cd
  %i.ch = insertelement <2 x double> poison, double %i.p, i64 0
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %54 = shufflevector <2 x double> %38, <2 x double> %46, <2 x i32> <i32 0, i32 2>
  %i.cj = fmul <2 x double> %i.ci, %54
  %i.ck = fadd <2 x double> %50, %i.cg
  %55 = fadd double %45, %52                      ; 4 uses
  %56 = fadd double %i.cb, %53                    ; 4 uses
  %57 = shufflevector <2 x double> %46, <2 x double> poison, <2 x i32> zeroinitializer
  %58 = fmul <2 x double> %i.e, %57
  %59 = shufflevector <2 x double> %46, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cl = fmul <2 x double> %i.g, %59
  %i.cm = fadd <2 x double> %58, %i.cl
  %60 = fadd <2 x double> %i.cm, %i.ba
  %61 = fadd <2 x double> %i.cj, %i.ck            ; 2 uses
  %62 = shufflevector <2 x double> %61, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0> ; 2 uses
  %63 = fadd <2 x double> %11, %60
  %64 = load <2 x double>, ptr %16, align 8, !tbaa !10, !noalias !140 ; 3 uses
  %65 = load double, ptr %20, align 8, !tbaa !10, !noalias !140
  %66 = shufflevector <2 x double> %64, <2 x double> poison, <2 x i32> zeroinitializer
  %67 = fmul <2 x double> %i.ca, %66
  %68 = shufflevector <2 x double> %64, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cn = fmul <2 x double> %i.ak, %68
  %69 = fadd <2 x double> %67, %i.cn
  %70 = fadd <2 x double> %69, %i.bg
  %71 = load <2 x double>, ptr %21, align 8, !tbaa !10, !noalias !140 ; 3 uses
  %i.co = load double, ptr %22, align 8, !tbaa !10, !noalias !140
  %72 = shufflevector <2 x double> %71, <2 x double> poison, <2 x i32> zeroinitializer
  %73 = fmul <2 x double> %i.ca, %72
  %74 = shufflevector <2 x double> %71, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cp = fmul <2 x double> %i.ak, %74
  %75 = fadd <2 x double> %73, %i.cp
  %i.cq = fadd <2 x double> %75, %i.bl
  %76 = load <2 x double>, ptr %23, align 8, !tbaa !10, !noalias !140 ; 3 uses
  %i.cr = load double, ptr %24, align 8, !tbaa !10, !noalias !140
  %77 = shufflevector <2 x double> %76, <2 x double> poison, <2 x i32> zeroinitializer
  %78 = fmul <2 x double> %i.ca, %77
  %79 = shufflevector <2 x double> %76, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cs = fmul <2 x double> %i.ak, %79
  %i.ct = fadd <2 x double> %78, %i.cs
  %80 = fadd <2 x double> %i.ct, %29
  %81 = shufflevector <2 x double> %71, <2 x double> %64, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %82 = shufflevector <2 x double> %76, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %83 = shufflevector <4 x double> %81, <4 x double> %82, <4 x i32> <i32 0, i32 1, i32 poison, i32 7>
  %84 = insertelement <4 x double> %83, double %13, i64 2 ; 2 uses
  %85 = fmul <4 x double> %84, %62
  %86 = fadd <4 x double> %84, %62
  %87 = shufflevector <4 x double> %85, <4 x double> %86, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  store <2 x double> %70, ptr %1, align 16, !tbaa !28, !alias.scope !140
  %88 = extractelement <2 x double> %61, i64 0
  %89 = fmul double %88, %34
  %90 = fmul double %56, %26
  %91 = fmul double %55, %i.co
  %92 = fmul double %56, %i.bd
  %93 = fmul double %55, %i.bq
  %94 = fmul double %56, %i.bv
  %95 = fadd double %93, %94
  %96 = fmul double %55, %i.cr
  %97 = fmul double %56, %i.bi
  %98 = fmul double %55, %65
  %99 = fadd double %89, %95
  %100 = fadd double %96, %90
  %101 = fadd double %91, %97
  %102 = fadd double %98, %92
  %103 = insertelement <4 x double> poison, double %101, i64 0
  %104 = insertelement <4 x double> %103, double %102, i64 1
  %105 = insertelement <4 x double> %104, double %99, i64 2
  %106 = insertelement <4 x double> %105, double %100, i64 3
  %107 = fadd <4 x double> %87, %106              ; 4 uses
  %108 = extractelement <4 x double> %107, i64 1
  store double %108, ptr %i.bm, align 16, !tbaa !10, !alias.scope !140
  store <2 x double> %i.cq, ptr %30, align 16, !tbaa !28, !alias.scope !140
  %109 = extractelement <4 x double> %107, i64 0
  store double %109, ptr %i.bn, align 16, !tbaa !10, !alias.scope !140
  store <2 x double> %80, ptr %31, align 16, !tbaa !28, !alias.scope !140
  %110 = extractelement <4 x double> %107, i64 3
  store double %110, ptr %i.bo, align 16, !tbaa !10, !alias.scope !140
  %111 = fmul <2 x double> %i.ca, %36
  %112 = fadd <2 x double> %111, %i.bt
  %i.cu = fadd <2 x double> %112, %i.by
  %113 = fadd <2 x double> %63, %i.cu
  store <2 x double> %113, ptr %33, align 16, !tbaa !28, !alias.scope !140
  %114 = extractelement <4 x double> %107, i64 2
  store double %114, ptr %37, align 16, !tbaa !10, !alias.scope !140
  store double 0.000000e+00, ptr %i.bb, align 8, !tbaa !10, !alias.scope !140
  store double 0.000000e+00, ptr %17, align 8, !tbaa !10, !alias.scope !140
  store double 0.000000e+00, ptr %18, align 8, !tbaa !10, !alias.scope !140
  store double 1.000000e+00, ptr %19, align 8, !tbaa !10, !alias.scope !140
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN3g2o8internal11toVectorMQTERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.28") align 16 %2, ptr noundef nonnull align 16 dereferenceable(128) %1)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.cv, ptr noundef nonnull align 16 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !141
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
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !115 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !116  ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.k = load <2 x double>, ptr %i.c, align 1, !tbaa !28, !noalias !148 ; 4 uses
  %i.l = load double, ptr %i.f, align 8, !tbaa !10, !noalias !148 ; 2 uses
  %i.m = insertelement <2 x double> poison, double %i.l, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x double> %i.k, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.q = load <2 x double>, ptr %i.p, align 1, !tbaa !28, !noalias !148 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.s = load double, ptr %i.r, align 8, !tbaa !10, !noalias !148 ; 2 uses
  %i.t = insertelement <2 x double> poison, double %i.s, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x double> %i.q, %i.u
  %i.w = fadd <2 x double> %i.o, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.y = load <2 x double>, ptr %i.x, align 1, !tbaa !28, !noalias !148 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.aa = load double, ptr %i.z, align 8, !tbaa !10, !noalias !148 ; 2 uses
  %i.ab = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x double> %i.y, %i.ac
  %i.ae = fadd <2 x double> %i.w, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ag = load double, ptr %i.af, align 8, !tbaa !10, !noalias !148 ; 4 uses
  %i.ah = fmul double %i.l, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !10, !noalias !148 ; 4 uses
  %i.ak = fmul double %i.s, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.am = load double, ptr %i.al, align 8, !tbaa !10, !noalias !148 ; 4 uses
  %i.an = fmul double %i.aa, %i.am
  %i.ao = fadd double %i.ak, %i.an
  %i.ap = fadd double %i.ah, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !10, !noalias !148 ; 2 uses
  %i.as = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x double> %i.k, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.aw = load double, ptr %i.av, align 8, !tbaa !10, !noalias !148 ; 2 uses
  %i.ax = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x double> %i.q, %i.ay
  %i.ba = fadd <2 x double> %i.au, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !10, !noalias !148 ; 2 uses
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
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !10, !noalias !148 ; 2 uses
  %i.bo = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x double> %i.k, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %i.bs = load double, ptr %i.br, align 8, !tbaa !10, !noalias !148 ; 2 uses
  %i.bt = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x double> %i.q, %i.bu
  %i.bw = fadd <2 x double> %i.bq, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.by = load double, ptr %i.bx, align 8, !tbaa !10, !noalias !148 ; 2 uses
  %i.bz = insertelement <2 x double> poison, double %i.by, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x double> %i.y, %i.ca
  %i.cc = fadd <2 x double> %i.bw, %i.cb
  %i.cd = fmul double %i.ag, %i.bn
  %i.ce = fmul double %i.aj, %i.bs
  %i.cf = fmul double %i.am, %i.by
  %i.cg = fadd double %i.ce, %i.cf
  %i.ch = fadd double %i.cd, %i.cg
  store <2 x double> %i.ae, ptr %1, align 16, !tbaa !28, !alias.scope !148
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.ap, ptr %i.ci, align 16, !tbaa !10, !alias.scope !148
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <2 x double> %i.bg, ptr %i.cj, align 16, !tbaa !28, !alias.scope !148
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 48
  store double %i.bl, ptr %i.ck, align 16, !tbaa !10, !alias.scope !148
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <2 x double> %i.cc, ptr %i.cl, align 16, !tbaa !28, !alias.scope !148
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 80
  store double %i.ch, ptr %i.cm, align 16, !tbaa !10, !alias.scope !148
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cq = load double, ptr %i.cn, align 8, !tbaa !10, !noalias !148 ; 2 uses
  %i.cr = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x double> %i.k, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 312
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !10, !noalias !148 ; 2 uses
  %i.cw = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x double> %i.q, %i.cx
  %i.cz = fadd <2 x double> %i.ct, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.db = load double, ptr %i.da, align 8, !tbaa !10, !noalias !148 ; 2 uses
  %i.dc = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = fmul <2 x double> %i.y, %i.dd
  %i.df = fadd <2 x double> %i.cz, %i.de
  %i.dg = fmul double %i.ag, %i.cq
  %i.dh = fmul double %i.aj, %i.cv
  %i.di = fmul double %i.am, %i.db
  %i.dj = fadd double %i.dh, %i.di
  %i.dk = fadd double %i.dg, %i.dj
  %i.dl = load <2 x double>, ptr %i.co, align 8, !tbaa !28, !noalias !148
  %i.dm = fadd <2 x double> %i.dl, %i.df
  store <2 x double> %i.dm, ptr %i.cp, align 16, !tbaa !28, !alias.scope !148
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.dp = load double, ptr %i.do, align 8, !tbaa !10, !noalias !148
  %i.dq = fadd double %i.dp, %i.dk
  store double %i.dq, ptr %i.dn, align 16, !tbaa !10, !alias.scope !148
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !10, !alias.scope !148
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !10, !alias.scope !148
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !10, !alias.scope !148
  store double 1.000000e+00, ptr %i.j, align 8, !tbaa !10, !alias.scope !148
  %i.dr = load ptr, ptr %0, align 16, !tbaa !8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 208
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 16 dereferenceable(864) %0, ptr noundef nonnull align 16 dereferenceable(128) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o13EdgeSE3Offset14linearizeOplusEv(ptr noundef nonnull align 16 dereferenceable(896) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::Transform", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  store double 1.000000e+00, ptr %i.i, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !115
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !149
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !116
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !149
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162, !nonnull !163, !align !164
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !165, !nonnull !163, !align !164
  call void @_ZN3g2o8internal22computeEdgeSE3GradientIN5Eigen3MapINS2_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS2_6StrideILi0ELi0EEEEEEEvRNS2_9TransformIdLi3ELi1ELi0EEERKNS2_10MatrixBaseIT_EESG_RKSA_SI_SI_SI_SI_(ptr noundef nonnull align 16 dereferenceable(128) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.x, ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 16 dereferenceable(128) %i.v, ptr noundef nonnull align 16 dereferenceable(128) %i.j, ptr noundef nonnull align 16 dereferenceable(128) %i.k, ptr noundef nonnull align 16 dereferenceable(128) %i.p, ptr noundef nonnull align 16 dereferenceable(128) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_0
