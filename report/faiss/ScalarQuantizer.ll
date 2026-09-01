Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/ScalarQuantizer?download=true
inline.NumInlined: 2990
inline.NumDeleted: 733
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 166
begin_hunk_0_@_ZN5faiss16scalar_quantizer29select_distance_computer_bodyINS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EEEPNS_15ScalarQuantizer18SQDistanceComputerENS5_13QuantizerTypeEmRKSt6vectorIfSaIfEE:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef 384) #24
  br label %bb.bc

bb.at:                                            ; preds = %bb.a
  %i.eo = tail call noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #25 ; 12 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN5faiss16scalar_quantizer16DCTurboQuantFullILi4ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EEE, i64 16), ptr %i.eo, align 8, !tbaa !46
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  invoke void @_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi4ELNS_9SIMDLevelE0EEC2EmRKSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(120) %i.eq, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi4ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EEC2EmRKSt6vectorIfSaIfEE.exit unwind label %bb.au

_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi4ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EEC2EmRKSt6vectorIfSaIfEE.exit: ; preds = %bb.at
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 152
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 204
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 216
  store ptr null, ptr %i.et, align 8, !tbaa !380
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 224
  store i8 0, ptr %i.eu, align 8, !tbaa !382
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 228
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 256
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 296
  %i.ey = uitofp i64 %1 to float
  %i.ez = fpext float %i.ey to double
  %i.fa = fdiv double f0x3FF40D931FF62705, %i.ez
  %i.fb = fptrunc double %i.fa to float
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.er, i8 0, i64 60, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(22) %i.ev, i8 0, i64 22, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ew, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ex, i8 0, i64 88, i1 false)
  store float %i.fb, ptr %i.es, align 4, !tbaa !383
  br label %_ZN5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EEC2EmRKSt6vectorIfSaIfEE.exit

bb.au:                                            ; preds = %bb.at
  %i.fc = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef 384) #24
  br label %bb.bc

bb.av:                                            ; preds = %bb.a
  %i.fd = tail call noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #25 ; 12 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN5faiss16scalar_quantizer16DCTurboQuantFullILi5ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EEE, i64 16), ptr %i.fd, align 8, !tbaa !46
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  invoke void @_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi5ELNS_9SIMDLevelE0EEC2EmRKSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(120) %i.ff, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi5ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EEC2EmRKSt6vectorIfSaIfEE.exit unwind label %bb.aw

_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi5ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EEC2EmRKSt6vectorIfSaIfEE.exit: ; preds = %bb.av
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 152
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 204
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 216
  store ptr null, ptr %i.fi, align 8, !tbaa !384
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 224
  store i8 0, ptr %i.fj, align 8, !tbaa !386
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 228
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 256
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fd, i64 296
  %i.fn = uitofp i64 %1 to float
  %i.fo = fpext float %i.fn to double
  %i.fp = fdiv double f0x3FF40D931FF62705, %i.fo
  %i.fq = fptrunc double %i.fp to float
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.fg, i8 0, i64 60, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(22) %i.fk, i8 0, i64 22, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fl, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fm, i8 0, i64 88, i1 false)
  store float %i.fq, ptr %i.fh, align 4, !tbaa !387
  br label %_ZN5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EEC2EmRKSt6vectorIfSaIfEE.exit

bb.aw:                                            ; preds = %bb.av
  %i.fr = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef 384) #24
  br label %bb.bc

bb.ax:                                            ; preds = %bb.a
  %i.fs = tail call ptr @__cxa_allocate_exception(i64 40) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ay unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.thread

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.fs, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss16scalar_quantizer29select_distance_computer_bodyINS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EEEPNS_15ScalarQuantizer18SQDistanceComputerENS5_13QuantizerTypeEmRKSt6vectorIfSaIfEE, ptr noundef nonnull @.str.1, i32 noundef 627)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  invoke void @__cxa_throw(ptr nonnull %i.fs, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #23
          to label %bb.bd unwind label %bb.ba

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.thread: ; preds = %bb.ax
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0 = phi i1 [ false, %bb.az ], [ true, %bb.ay ] ; 2 uses
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fv = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.ba
  %i.fy = load i64, ptr %i.fw, align 8, !tbaa !28
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %.0, label %bb.bb, label %bb.bc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %.0, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %.pn6682 = phi { ptr, i32 } [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.thread ], [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %i.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ]
  call void @__cxa_free_exception(ptr %i.fs) #21
  br label %bb.bc

_ZN5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerLloydMaxILi1ELNS_9SIMDLevelE0EEENS0_12SimilarityIPILS3_0EEELS3_0EEC2EmRKSt6vectorIfSaIfEE.exit: ; preds = %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi5ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EEC2EmRKSt6vectorIfSaIfEE.exit, %_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi4ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EEC2EmRKSt6vectorIfSaIfEE.exit, %_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi3ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EEC2EmRKSt6vectorIfSaIfEE.exit, %_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi2ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EEC2EmRKSt6vectorIfSaIfEE.exit, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.064 = phi ptr [ %i.eo, %_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi4ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EEC2EmRKSt6vectorIfSaIfEE.exit ], [ %i.a, %bb.b ], [ %i.h, %bb.c ], [ %i.o, %bb.d ], [ %i.w, %bb.e ], [ %i.ae, %bb.f ], [ %i.am, %bb.g ], [ %i.aq, %bb.h ], [ %i.au, %bb.i ], [ %i.ay, %bb.j ], [ %i.fd, %_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi5ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EEC2EmRKSt6vectorIfSaIfEE.exit ], [ %i.bk, %bb.p ], [ %i.bo, %bb.r ], [ %i.bs, %bb.t ], [ %i.bw, %bb.v ], [ %i.ca, %bb.x ], [ %i.ce, %bb.z ], [ %i.ci, %bb.ab ], [ %i.cm, %bb.ad ], [ %i.cq, %bb.af ], [ %i.cu, %bb.ah ], [ %i.cy, %bb.aj ], [ %i.dc, %bb.al ], [ %i.dk, %_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi2ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EEC2EmRKSt6vectorIfSaIfEE.exit ], [ %i.dz, %_ZN5faiss16scalar_quantizer16DCTurboQuantFullILi3ENS0_12SimilarityIPILNS_9SIMDLevelE0EEELS3_0EEC2EmRKSt6vectorIfSaIfEE.exit ], [ %i.dg, %bb.an ]
  ret ptr %.064

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.o, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q
  %.pn66.pn = phi { ptr, i32 } [ %.pn6682, %bb.bb ], [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %i.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.fr, %bb.aw ], [ %i.fc, %bb.au ], [ %i.en, %bb.as ], [ %i.dy, %bb.aq ], [ %i.dj, %bb.ao ], [ %i.df, %bb.am ], [ %i.db, %bb.ak ], [ %.pn79, %bb.o ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bn, %bb.q ], [ %i.br, %bb.s ], [ %i.bv, %bb.u ], [ %i.bz, %bb.w ], [ %i.cd, %bb.y ], [ %i.ch, %bb.aa ], [ %i.cl, %bb.ac ], [ %i.cp, %bb.ae ], [ %i.ct, %bb.ag ], [ %i.cx, %bb.ai ]
  resume { ptr, i32 } %.pn66.pn

bb.bd:                                            ; preds = %bb.az, %bb.m
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityL2ILS4_0EEELS4_0EE9set_queryEPKf(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8, !tbaa !388
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZN5faiss25FlatCodesDistanceComputerclEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !389
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !390
  %i.e = mul i64 %i.d, %1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  %i.g = load ptr, ptr %0, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef float %i.i(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f)
  ret float %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss25FlatCodesDistanceComputer17distances_batch_4EllllRfS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !389  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !390  ; 4 uses
  %i.e = mul i64 %i.d, %1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  %i.g = mul i64 %i.d, %2
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %i.i = mul i64 %i.d, %3
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i
  %i.k = mul i64 %i.d, %4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.k
  %i.m = load ptr, ptr %0, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZN5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityL2ILS4_0EEELS4_0EE13symmetric_disEll(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !389  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !390  ; 2 uses
  %i.e = mul i64 %i.d, %1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  %i.g = mul i64 %i.d, %2
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !391  ; 2 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityL2ILS4_0EEELS4_0EE21compute_code_distanceEPKhSC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %3 = load float, ptr %i.k, align 8, !tbaa !173
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %5 = load float, ptr %4, align 4, !tbaa !172
  %6 = insertelement <2 x float> poison, float %5, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = insertelement <2 x float> poison, float %3, i64 0
  %i.l = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.010.i = phi i64 [ 0, %.lr.ph.i ], [ %i.y, %bb.b ] ; 3 uses
  %.sroa.6.09.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.x, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %.010.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %.010.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !28
  %i.q = insertelement <2 x i8> poison, i8 %i.n, i64 0
  %i.r = insertelement <2 x i8> %i.q, i8 %i.p, i64 1
  %i.s = uitofp <2 x i8> %i.r to <2 x float>
  %i.t = fadd <2 x float> %i.s, splat (float 5.000000e-01)
  %i.u = fdiv <2 x float> %i.t, splat (float 2.550000e+02)
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %7, <2 x float> %i.l) ; 2 uses
  %shift = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.v, %shift
  %i.w = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float %i.w, float %.sroa.6.09.i) ; 2 uses
  %i.y = add nuw i64 %.010.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.y, %i.j
  br i1 %exitcond.not.i, label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityL2ILS4_0EEELS4_0EE21compute_code_distanceEPKhSC_.exit, label %bb.b, !llvm.loop !393

_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityL2ILS4_0EEELS4_0EE21compute_code_distanceEPKhSC_.exit: ; preds = %bb.b, %bb.a
  %.sroa.6.0.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.x, %bb.b ]
  ret float %.sroa.6.0.lcssa.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityL2ILS4_0EEELS4_0EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityL2ILS4_0EEELS4_0EED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZN5faiss25FlatCodesDistanceComputer19partial_dot_productEljj(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call ptr @__cxa_allocate_exception(i64 40) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !23
  %i.c = invoke noalias noundef nonnull dereferenceable(36) ptr @_Znwm(i64 noundef 36) #25
          to label %.noexc6 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc6:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.c, ptr %4, align 8, !tbaa !29
  store i64 35, ptr %i.b, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.c, ptr noundef nonnull align 1 dereferenceable(35) @.str.15, i64 35, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 35, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 35
  store i8 0, ptr %i.e, align 1, !tbaa !28
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss25FlatCodesDistanceComputer19partial_dot_productEljj, ptr noundef nonnull @.str.16, i32 noundef 185)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc6
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #23
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc6
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc6 ] ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %4, align 8, !tbaa !29     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.b, align 8, !tbaa !28
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %.0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #21
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn9 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.c ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.e:                                             ; preds = %bb.a
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZN5faiss15ScalarQuantizer18SQDistanceComputer16distance_to_codeEPKh(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef float %i.c(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  ret float %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss15ScalarQuantizer18SQDistanceComputer24distance_to_code_batch_4EPKhS3_S3_S3_RfS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss25FlatCodesDistanceComputer27partial_dot_product_batch_4EllllRfS1_S1_S1_jj(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef %9, i32 noundef %10) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef float %i.c(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i32 noundef %9, i32 noundef %10)
  %i.e = load ptr, ptr %0, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef float %i.g(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2, i32 noundef %9, i32 noundef %10)
  %i.i = load ptr, ptr %0, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef float %i.k(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3, i32 noundef %9, i32 noundef %10)
  %i.m = load ptr, ptr %0, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef float %i.o(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %4, i32 noundef %9, i32 noundef %10)
  store float %i.d, ptr %5, align 4, !tbaa !37
  store float %i.h, ptr %6, align 4, !tbaa !37
  store float %i.l, ptr %7, align 4, !tbaa !37
  store float %i.p, ptr %8, align 4, !tbaa !37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityL2ILS4_0EEELS4_0EE13query_to_codeEPKh(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !391  ; 5 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityL2ILS4_0EEELS4_0EE16compute_distanceEPKfPKh.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !388  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load float, ptr %i.e, align 8, !tbaa !173 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.h = load float, ptr %i.g, align 4, !tbaa !172 ; 3 uses
  %xtraiter = and i64 %i.b, 1
  %i.i = icmp eq i64 %i.b, 1
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.b, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.09.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ae, %bb.b ] ; 3 uses
  %.sroa.4.08.i = phi ptr [ %i.d, %.lr.ph.i.new ], [ %i.aa, %bb.b ] ; 3 uses
  %.sroa.8.07.i = phi float [ 0.000000e+00, %.lr.ph.i.new ], [ %i.ad, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.09.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !28
  %i.l = uitofp i8 %i.k to float
  %i.m = fadd float %i.l, 5.000000e-01
  %i.n = fdiv float %i.m, 2.550000e+02
  %i.o = tail call noundef float @llvm.fmuladd.f32(float %i.n, float %i.h, float %i.f)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.4.08.i, i64 4
  %i.q = load float, ptr %.sroa.4.08.i, align 4, !tbaa !37
  %i.r = fsub float %i.q, %i.o                    ; 2 uses
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float %i.r, float %.sroa.8.07.i)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.09.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !28
  %i.w = uitofp i8 %i.v to float
  %i.x = fadd float %i.w, 5.000000e-01
  %i.y = fdiv float %i.x, 2.550000e+02
  %i.z = tail call noundef float @llvm.fmuladd.f32(float %i.y, float %i.h, float %i.f)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.4.08.i, i64 8 ; 2 uses
  %i.ab = load float, ptr %i.p, align 4, !tbaa !37
  %i.ac = fsub float %i.ab, %i.z                  ; 2 uses
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.s) ; 3 uses
  %i.ae = add nuw i64 %.09.i, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityL2ILS4_0EEELS4_0EE16compute_distanceEPKfPKh.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !394

_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityL2ILS4_0EEELS4_0EE16compute_distanceEPKfPKh.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityL2ILS4_0EEELS4_0EE16compute_distanceEPKfPKh.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityL2ILS4_0EEELS4_0EE16compute_distanceEPKfPKh.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.09.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ae, %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityL2ILS4_0EEELS4_0EE16compute_distanceEPKfPKh.exit.loopexit.unr-lcssa ]
  %.sroa.4.08.i.epil.init = phi ptr [ %i.d, %.lr.ph.i ], [ %i.aa, %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityL2ILS4_0EEELS4_0EE16compute_distanceEPKfPKh.exit.loopexit.unr-lcssa ]
  %.sroa.8.07.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.ad, %_ZNK5faiss16scalar_quantizer10DCTemplateINS0_17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS4_0EEENS0_12SimilarityL2ILS4_0EEELS4_0EE16compute_distanceEPKfPKh.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.09.i.epil.init
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !28
end_hunk_0
