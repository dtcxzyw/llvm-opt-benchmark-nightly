Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/normal?download=true
inline.NumInlined: 1999
inline.NumDeleted: 608
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZNK2cv15RgbdNormalsImplIfE5applyERKNS_11_InputArrayERKNS_12_OutputArrayE:bb.a

bb.bq:                                            ; preds = %bb.bp, %bb.bc
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %bb.bp ], [ %i.ge, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %.body

.body:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.bq, %bb.al
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %bb.bq ], [ %i.bf, %bb.al ], [ %i.bc, %bb.ai ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.br

bb.br:                                            ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn34.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn34.pn.pn.pn, %.body ], [ %i.y, %bb.q ], [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn34.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv4FALSIfE5cacheEv(ptr noundef nonnull align 8 dereferenceable(864) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %2 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %5 = alloca %"class.cv::Matx.38", align 4       ; 5 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %7 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %13 = alloca %"class.cv::Mat_.36", align 8      ; 9 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %15 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %16 = alloca %"class.cv::Matx.38", align 16     ; 8 uses
  %17 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %18 = alloca %"class.cv::Matx.38", align 16     ; 7 uses
  %19 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !56, !range !69, !noundef !70
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %4) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIfLi3ELi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.38") align 4 %5, ptr noundef nonnull align 8 dereferenceable(208) %i.h)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv15computeThetaPhiIfEEviiRKNS_4MatxIT_Li3ELi3EEERNS_3MatES7_S7_S7_(i32 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull align 4 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.i = invoke noalias noundef nonnull dereferenceable(624) ptr @_Znwm(i64 noundef 624) #23
          to label %.noexc unwind label %bb.k     ; 6 uses

.noexc:                                           ; preds = %bb.d
  store ptr %i.i, ptr %6, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 624
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !74
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.i) #20
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.m) #20
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 416
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.n) #20
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 624
  store ptr %i.o, ptr %i.j, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.p, align 8, !tbaa !76
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.q, align 4, !tbaa !77
  store i32 16842752, ptr %8, align 8, !tbaa !59
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %3, ptr %i.r, align 8, !tbaa !21
  invoke void @_ZNK2cv3Mat3mulERKNS_11_InputArrayEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(24) %8, double noundef 1.000000e+00)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %6, align 8, !tbaa !73
  %i.t = load ptr, ptr %7, align 8, !tbaa !83     ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(688) %7, ptr noundef nonnull align 8 dereferenceable(208) %i.s, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.m, !inline_history !1

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.x) #20
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.y) #20
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.z) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.aa = load ptr, ptr %6, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 208
  %i.ac = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ab, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.f unwind label %bb.o       ; 0 uses

bb.f:                                             ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.ad, align 8, !tbaa !76
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 0, ptr %i.ae, align 4, !tbaa !77
  store i32 16842752, ptr %10, align 8, !tbaa !59
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %3, ptr %i.af, align 8, !tbaa !21
  invoke void @_ZNK2cv3Mat3mulERKNS_11_InputArrayEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, double noundef 1.000000e+00)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %6, align 8, !tbaa !73
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 416
  %i.ai = load ptr, ptr %9, align 8, !tbaa !83    ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(688) %9, ptr noundef nonnull align 8 dereferenceable(208) %i.ah, i32 noundef -1)
          to label %bb.h unwind label %bb.q, !inline_history !1

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.am) #20
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.an) #20
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ao) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.ap, align 8, !tbaa !76
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.aq, align 4, !tbaa !77
  store i32 17104896, ptr %11, align 8, !tbaa !59
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %6, ptr %i.ar, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %i.au, align 8
  store i32 -2113863611, ptr %12, align 8, !tbaa !59
  store ptr %i.as, ptr %i.at, align 8, !tbaa !21
  invoke void @_ZN2cv5mergeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.av = load i32, ptr %i.d, align 8, !tbaa !52
  %i.aw = load i32, ptr %i.f, align 4, !tbaa !53
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef %i.av, i32 noundef %i.aw, i32 noundef 261)
          to label %_ZN2cv4Mat_INS_3VecIfLi9EEEEC2Eii.exit unwind label %bb.t

_ZN2cv4Mat_INS_3VecIfLi9EEEEC2Eii.exit:           ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !63 ; 2 uses
  %i.az = load i32, ptr %i.d, align 8, !tbaa !52
  %i.ba = load i32, ptr %i.f, align 4, !tbaa !53
  %i.bb = mul nsw i32 %i.ba, %i.az                ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %.idx = mul nsw i64 %i.bc, 36
  %i.bd = getelementptr inbounds i8, ptr %i.ay, i64 %.idx ; 3 uses
  %.not96 = icmp eq i32 %i.bb, 0
  br i1 %.not96, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2cv4Mat_INS_3VecIfLi9EEEEC2Eii.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !63
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03498 = phi ptr [ %i.bm, %.lr.ph ], [ %i.ay, %.lr.ph.preheader ] ; 6 uses
  %.03697 = phi ptr [ %i.bl, %.lr.ph ], [ %i.bf, %.lr.ph.preheader ] ; 3 uses
  %.sroa.571.0..034.sroa_idx = getelementptr inbounds nuw i8, ptr %.03498, i64 4
  %.sroa.672.0..034.sroa_idx = getelementptr inbounds nuw i8, ptr %.03498, i64 8
  %i.bg = load <3 x float>, ptr %.03697, align 4, !tbaa !65 ; 2 uses
  %i.bh = shufflevector <3 x float> %i.bg, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1> ; 3 uses
  %20 = load float, ptr %.03697, align 4, !tbaa !65 ; 2 uses
  %21 = fmul float %20, %20
  %22 = shufflevector <3 x float> %i.bg, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 2>
  %23 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %22, <4 x float> <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float 0.000000e+00>) ; 3 uses
  %foldExtExtBinop = fmul <4 x float> %i.bh, %i.bh
  %i.bi = extractelement <4 x float> %foldExtExtBinop, i64 0
  store float %21, ptr %.03498, align 4
  %i.bj = extractelement <4 x float> %23, i64 1
  store float %i.bj, ptr %.sroa.571.0..034.sroa_idx, align 4
  store <4 x float> %23, ptr %.sroa.672.0..034.sroa_idx, align 4
  %.sroa.1076.0..034.sroa_idx = getelementptr inbounds nuw i8, ptr %.03498, i64 24
  %i.bk = shufflevector <4 x float> %23, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bk, ptr %.sroa.1076.0..034.sroa_idx, align 4
  %.sroa.1278.0..034.sroa_idx = getelementptr inbounds nuw i8, ptr %.03498, i64 32
  store float %i.bi, ptr %.sroa.1278.0..034.sroa_idx, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.03697, i64 12
  %i.bm = getelementptr inbounds nuw i8, ptr %.03498, i64 36 ; 2 uses
  %.not = icmp eq ptr %i.bm, %i.bd
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !186

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ah

bb.k:                                             ; preds = %bb.d
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.l:                                             ; preds = %.noexc
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.e
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %7) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.l ], [ %i.bq, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.af

bb.o:                                             ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.p:                                             ; preds = %bb.f
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.g
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %9) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn40.pn = phi { ptr, i32 } [ %i.bs, %bb.p ], [ %i.bt, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.af

bb.s:                                             ; preds = %bb.h
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.af

bb.t:                                             ; preds = %bb.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

._crit_edge:                                      ; preds = %.lr.ph, %_ZN2cv4Mat_INS_3VecIfLi9EEEEC2Eii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.bw = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.bw, align 8, !tbaa !76
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %i.bx, align 4, !tbaa !77
  store i32 -2130640635, ptr %14, align 8, !tbaa !59
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %13, ptr %i.by, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.bz = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.ca, align 8
  store i32 -2113863419, ptr %15, align 8, !tbaa !59
  store ptr %13, ptr %i.bz, align 8, !tbaa !21
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !54
  %.sroa.269.0.insert.ext = zext i32 %i.cc to i64 ; 2 uses
  %.sroa.269.0.insert.shift = shl nuw i64 %.sroa.269.0.insert.ext, 32
  %.sroa.068.0.insert.insert = or disjoint i64 %.sroa.269.0.insert.shift, %.sroa.269.0.insert.ext
  invoke void @_ZN2cv9boxFilterERKNS_11_InputArrayERKNS_12_OutputArrayEiNS_5Size_IiEENS_6Point_IiEEbi(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef 5, i64 %.sroa.068.0.insert.insert, i64 -1, i1 noundef zeroext false, i32 noundef 4)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %16, i8 0, i64 36, i1 false), !tbaa !65
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ce = load i32, ptr %i.d, align 8, !tbaa !52
  %i.cf = load i32, ptr %i.f, align 4, !tbaa !53
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.cd, i32 noundef %i.ce, i32 noundef %i.cf, i32 noundef 261)
          to label %_ZN2cv4Mat_INS_3VecIfLi9EEEE6createEii.exit unwind label %bb.y

_ZN2cv4Mat_INS_3VecIfLi9EEEE6createEii.exit:      ; preds = %bb.u
  %i.cg = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not4999 = icmp eq ptr %i.cg, %i.bd
  br i1 %.not4999, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %_ZN2cv4Mat_INS_3VecIfLi9EEEE6createEii.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !63
  %i.cj = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %16, i64 32
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph102, %bb.w
  %.0101 = phi ptr [ %i.ci, %.lr.ph102 ], [ %i.da, %bb.w ] ; 4 uses
  %.135100 = phi ptr [ %i.cg, %.lr.ph102 ], [ %i.db, %bb.w ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.cr = load <4 x float>, ptr %.135100, align 4, !tbaa !65
  store <4 x float> %i.cr, ptr %18, align 16, !tbaa !65
  %i.cs = getelementptr inbounds nuw i8, ptr %.135100, i64 16
  %i.ct = load <4 x float>, ptr %i.cs, align 4, !tbaa !65
  store <4 x float> %i.ct, ptr %i.cj, align 16, !tbaa !65
  %i.cu = getelementptr inbounds nuw i8, ptr %.135100, i64 32
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !65
  store float %i.cv, ptr %i.ck, align 16, !tbaa !65
  store i32 -1056833531, ptr %17, align 8, !tbaa !59
  store ptr %18, ptr %i.cm, align 8, !tbaa !21
  store i64 12884901891, ptr %i.cl, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  store i32 -1040056315, ptr %19, align 8, !tbaa !59
  store ptr %16, ptr %i.cn, align 8, !tbaa !21
  store i64 12884901891, ptr %i.co, align 8, !tbaa !36
  %i.cw = invoke noundef double @_ZN2cv6invertERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %19, i32 noundef 3)
          to label %bb.w unwind label %bb.z       ; 0 uses

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.cx = load float, ptr %i.cq, align 16, !tbaa !65
  %i.cy = load <4 x float>, ptr %16, align 16, !tbaa !65
  %.sroa.8.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0101, i64 16
  %i.cz = load <4 x float>, ptr %i.cp, align 16, !tbaa !65
  store <4 x float> %i.cy, ptr %.0101, align 4
  store <4 x float> %i.cz, ptr %.sroa.8.0..0.sroa_idx, align 4
  %.sroa.12.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0101, i64 32
  store float %i.cx, ptr %.sroa.12.0..0.sroa_idx, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %.0101, i64 36
  %i.db = getelementptr inbounds nuw i8, ptr %.135100, i64 36 ; 2 uses
  %.not49 = icmp eq ptr %i.db, %i.bd
  br i1 %.not49, label %._crit_edge103, label %bb.v, !llvm.loop !187

bb.x:                                             ; preds = %._crit_edge
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.ad

bb.y:                                             ; preds = %bb.u
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %bb.v
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.ac

._crit_edge103:                                   ; preds = %bb.w, %_ZN2cv4Mat_INS_3VecIfLi9EEEE6createEii.exit
  store i8 0, ptr %i.a, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.df = load ptr, ptr %6, align 8, !tbaa !73    ; 3 uses
  %i.dg = load ptr, ptr %i.j, align 8, !tbaa !75  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.df, %i.dg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge103, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i ], [ %i.df, %._crit_edge103 ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #20
  %i.dh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dh, %i.dg
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !73
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

end_hunk_0
begin_hunk_1_@_ZNK2cv15RgbdNormalsImplIdE5applyERKNS_11_InputArrayERKNS_12_OutputArrayE:bb.a
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bc
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %bb.bp ], [ %i.fk, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %.body

.body:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.bq, %bb.al
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %bb.bq ], [ %i.bf, %bb.al ], [ %i.bc, %bb.ai ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.br

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %bb.ah, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn34.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn34.pn.pn.pn, %.body ], [ %i.bb, %bb.ah ], [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn34.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv4FALSIdE5cacheEv(ptr noundef nonnull align 8 dereferenceable(864) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %2 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %5 = alloca %"class.cv::Matx.61", align 8       ; 5 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %7 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %13 = alloca %"class.cv::Mat_.59", align 8      ; 9 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %15 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %16 = alloca %"class.cv::Matx.61", align 16     ; 10 uses
  %17 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %18 = alloca %"class.cv::Matx.61", align 16     ; 9 uses
  %19 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !89, !range !69, !noundef !70
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %4) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.61") align 8 %5, ptr noundef nonnull align 8 dereferenceable(208) %i.h)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv15computeThetaPhiIdEEviiRKNS_4MatxIT_Li3ELi3EEERNS_3MatES7_S7_S7_(i32 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.i = invoke noalias noundef nonnull dereferenceable(624) ptr @_Znwm(i64 noundef 624) #23
          to label %.noexc unwind label %bb.k     ; 6 uses

.noexc:                                           ; preds = %bb.d
  store ptr %i.i, ptr %6, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 624
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !74
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.i) #20
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.m) #20
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 416
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.n) #20
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 624
  store ptr %i.o, ptr %i.j, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.p, align 8, !tbaa !76
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.q, align 4, !tbaa !77
  store i32 16842752, ptr %8, align 8, !tbaa !59
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %3, ptr %i.r, align 8, !tbaa !21
  invoke void @_ZNK2cv3Mat3mulERKNS_11_InputArrayEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(24) %8, double noundef 1.000000e+00)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %6, align 8, !tbaa !73
  %i.t = load ptr, ptr %7, align 8, !tbaa !83     ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(688) %7, ptr noundef nonnull align 8 dereferenceable(208) %i.s, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.m, !inline_history !1

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.x) #20
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.y) #20
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.z) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.aa = load ptr, ptr %6, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 208
  %i.ac = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ab, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.f unwind label %bb.o       ; 0 uses

bb.f:                                             ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.ad, align 8, !tbaa !76
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 0, ptr %i.ae, align 4, !tbaa !77
  store i32 16842752, ptr %10, align 8, !tbaa !59
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %3, ptr %i.af, align 8, !tbaa !21
  invoke void @_ZNK2cv3Mat3mulERKNS_11_InputArrayEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, double noundef 1.000000e+00)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %6, align 8, !tbaa !73
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 416
  %i.ai = load ptr, ptr %9, align 8, !tbaa !83    ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(688) %9, ptr noundef nonnull align 8 dereferenceable(208) %i.ah, i32 noundef -1)
          to label %bb.h unwind label %bb.q, !inline_history !1

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.am) #20
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.an) #20
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ao) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.ap, align 8, !tbaa !76
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.aq, align 4, !tbaa !77
  store i32 17104896, ptr %11, align 8, !tbaa !59
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %6, ptr %i.ar, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %i.au, align 8
  store i32 -2113863610, ptr %12, align 8, !tbaa !59
  store ptr %i.as, ptr %i.at, align 8, !tbaa !21
  invoke void @_ZN2cv5mergeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.av = load i32, ptr %i.d, align 8, !tbaa !85
  %i.aw = load i32, ptr %i.f, align 4, !tbaa !86
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef %i.av, i32 noundef %i.aw, i32 noundef 262)
          to label %_ZN2cv4Mat_INS_3VecIdLi9EEEEC2Eii.exit unwind label %bb.t

_ZN2cv4Mat_INS_3VecIdLi9EEEEC2Eii.exit:           ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !63 ; 2 uses
  %i.az = load i32, ptr %i.d, align 8, !tbaa !85
  %i.ba = load i32, ptr %i.f, align 4, !tbaa !86
  %i.bb = mul nsw i32 %i.ba, %i.az                ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %.idx = mul nsw i64 %i.bc, 72
  %i.bd = getelementptr inbounds i8, ptr %i.ay, i64 %.idx ; 3 uses
  %.not97 = icmp eq i32 %i.bb, 0
  br i1 %.not97, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2cv4Mat_INS_3VecIdLi9EEEEC2Eii.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !63
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01699 = phi ptr [ %i.bl, %.lr.ph ], [ %i.ay, %.lr.ph.preheader ] ; 9 uses
  %.01798 = phi ptr [ %i.bk, %.lr.ph ], [ %i.bf, %.lr.ph.preheader ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.01798, i64 16
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !91, !noalias !234 ; 4 uses
  %20 = fmul double %i.bh, %i.bh
  %.sroa.571.0..016.sroa_idx = getelementptr inbounds nuw i8, ptr %.01699, i64 8
  %i.bi = load <2 x double>, ptr %.01798, align 8, !tbaa !91, !noalias !234 ; 7 uses
  %21 = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %22 = fmul <2 x double> %i.bi, %i.bi
  %23 = extractelement <2 x double> %22, i64 0
  %24 = insertelement <2 x double> %i.bi, double %i.bh, i64 1
  %i.bj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %21, <2 x double> %24, <2 x double> zeroinitializer) ; 3 uses
  %25 = extractelement <2 x double> %i.bi, i64 1
  %26 = fmul <2 x double> %i.bi, %i.bi
  %27 = extractelement <2 x double> %26, i64 1
  %28 = call double @llvm.fmuladd.f64(double %25, double %i.bh, double 0.000000e+00) ; 2 uses
  store double %23, ptr %.01699, align 8
  store <2 x double> %i.bj, ptr %.sroa.571.0..016.sroa_idx, align 8
  %.sroa.773.0..016.sroa_idx = getelementptr inbounds nuw i8, ptr %.01699, i64 24
  %29 = extractelement <2 x double> %i.bj, i64 0
  store double %29, ptr %.sroa.773.0..016.sroa_idx, align 8
  %.sroa.874.0..016.sroa_idx = getelementptr inbounds nuw i8, ptr %.01699, i64 32
  store double %27, ptr %.sroa.874.0..016.sroa_idx, align 8
  %.sroa.975.0..016.sroa_idx = getelementptr inbounds nuw i8, ptr %.01699, i64 40
  store double %28, ptr %.sroa.975.0..016.sroa_idx, align 8
  %.sroa.1076.0..016.sroa_idx = getelementptr inbounds nuw i8, ptr %.01699, i64 48
  %30 = extractelement <2 x double> %i.bj, i64 1
  store double %30, ptr %.sroa.1076.0..016.sroa_idx, align 8
  %.sroa.1177.0..016.sroa_idx = getelementptr inbounds nuw i8, ptr %.01699, i64 56
  store double %28, ptr %.sroa.1177.0..016.sroa_idx, align 8
  %.sroa.1278.0..016.sroa_idx = getelementptr inbounds nuw i8, ptr %.01699, i64 64
  store double %20, ptr %.sroa.1278.0..016.sroa_idx, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.01798, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %.01699, i64 72 ; 2 uses
  %.not = icmp eq ptr %i.bl, %i.bd
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !232

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ah

bb.k:                                             ; preds = %bb.d
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.l:                                             ; preds = %.noexc
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.e
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %7) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.l ], [ %i.bp, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.af

bb.o:                                             ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.p:                                             ; preds = %bb.f
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.g
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %9) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pn40.pn = phi { ptr, i32 } [ %i.br, %bb.p ], [ %i.bs, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.af

bb.s:                                             ; preds = %bb.h
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.af

bb.t:                                             ; preds = %bb.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

._crit_edge:                                      ; preds = %.lr.ph, %_ZN2cv4Mat_INS_3VecIdLi9EEEEC2Eii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.bv, align 8, !tbaa !76
  %i.bw = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %i.bw, align 4, !tbaa !77
  store i32 -2130640634, ptr %14, align 8, !tbaa !59
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %13, ptr %i.bx, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.by = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.bz, align 8
  store i32 -2113863418, ptr %15, align 8, !tbaa !59
  store ptr %13, ptr %i.by, align 8, !tbaa !21
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !87
  %.sroa.269.0.insert.ext = zext i32 %i.cb to i64 ; 2 uses
  %.sroa.269.0.insert.shift = shl nuw i64 %.sroa.269.0.insert.ext, 32
  %.sroa.068.0.insert.insert = or disjoint i64 %.sroa.269.0.insert.shift, %.sroa.269.0.insert.ext
  invoke void @_ZN2cv9boxFilterERKNS_11_InputArrayERKNS_12_OutputArrayEiNS_5Size_IiEENS_6Point_IiEEbi(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef 6, i64 %.sroa.068.0.insert.insert, i64 -1, i1 noundef zeroext false, i32 noundef 4)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %16, i8 0, i64 72, i1 false), !tbaa !91
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.cd = load i32, ptr %i.d, align 8, !tbaa !85
  %i.ce = load i32, ptr %i.f, align 4, !tbaa !86
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.cc, i32 noundef %i.cd, i32 noundef %i.ce, i32 noundef 262)
          to label %_ZN2cv4Mat_INS_3VecIdLi9EEEE6createEii.exit unwind label %bb.y

_ZN2cv4Mat_INS_3VecIdLi9EEEE6createEii.exit:      ; preds = %bb.u
  %i.cf = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not49100 = icmp eq ptr %i.cf, %i.bd
  br i1 %.not49100, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %_ZN2cv4Mat_INS_3VecIdLi9EEEE6createEii.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !63
  %i.ci = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %18, i64 64
  %i.cm = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.ct = getelementptr inbounds nuw i8, ptr %16, i64 64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph103, %bb.w
  %.0102 = phi ptr [ %i.ch, %.lr.ph103 ], [ %i.dj, %bb.w ] ; 6 uses
  %.1101 = phi ptr [ %i.cf, %.lr.ph103 ], [ %i.dk, %bb.w ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.cu = load <2 x double>, ptr %.1101, align 8, !tbaa !91
  store <2 x double> %i.cu, ptr %18, align 16, !tbaa !91
  %i.cv = getelementptr inbounds nuw i8, ptr %.1101, i64 16
  %i.cw = load <2 x double>, ptr %i.cv, align 8, !tbaa !91
  store <2 x double> %i.cw, ptr %i.ci, align 16, !tbaa !91
  %i.cx = getelementptr inbounds nuw i8, ptr %.1101, i64 32
  %i.cy = load <2 x double>, ptr %i.cx, align 8, !tbaa !91
  store <2 x double> %i.cy, ptr %i.cj, align 16, !tbaa !91
  %i.cz = getelementptr inbounds nuw i8, ptr %.1101, i64 48
  %i.da = load <2 x double>, ptr %i.cz, align 8, !tbaa !91
  store <2 x double> %i.da, ptr %i.ck, align 16, !tbaa !91
  %i.db = getelementptr inbounds nuw i8, ptr %.1101, i64 64
  %i.dc = load double, ptr %i.db, align 8, !tbaa !91
  store double %i.dc, ptr %i.cl, align 16, !tbaa !91
  store i32 -1056833530, ptr %17, align 8, !tbaa !59
  store ptr %18, ptr %i.cn, align 8, !tbaa !21
  store i64 12884901891, ptr %i.cm, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  store i32 -1040056314, ptr %19, align 8, !tbaa !59
  store ptr %16, ptr %i.co, align 8, !tbaa !21
  store i64 12884901891, ptr %i.cp, align 8, !tbaa !36
  %i.dd = invoke noundef double @_ZN2cv6invertERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %19, i32 noundef 3)
          to label %bb.w unwind label %bb.z       ; 0 uses

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.de = load double, ptr %i.ct, align 16, !tbaa !91
  %i.df = load <2 x double>, ptr %16, align 16, !tbaa !91
  %.sroa.6.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0102, i64 16
  %i.dg = load <2 x double>, ptr %i.cq, align 16, !tbaa !91
  %.sroa.8.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0102, i64 32
  %i.dh = load <2 x double>, ptr %i.cr, align 16, !tbaa !91
  %.sroa.10.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0102, i64 48
  %i.di = load <2 x double>, ptr %i.cs, align 16, !tbaa !91
  store <2 x double> %i.df, ptr %.0102, align 8
  store <2 x double> %i.dg, ptr %.sroa.6.0..0.sroa_idx, align 8
  store <2 x double> %i.dh, ptr %.sroa.8.0..0.sroa_idx, align 8
  store <2 x double> %i.di, ptr %.sroa.10.0..0.sroa_idx, align 8
  %.sroa.12.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0102, i64 64
  store double %i.de, ptr %.sroa.12.0..0.sroa_idx, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.0102, i64 72
  %i.dk = getelementptr inbounds nuw i8, ptr %.1101, i64 72 ; 2 uses
  %.not49 = icmp eq ptr %i.dk, %i.bd
  br i1 %.not49, label %._crit_edge104, label %bb.v, !llvm.loop !233

bb.x:                                             ; preds = %._crit_edge
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.ad

bb.y:                                             ; preds = %bb.u
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %bb.v
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.ac

._crit_edge104:                                   ; preds = %bb.w, %_ZN2cv4Mat_INS_3VecIdLi9EEEE6createEii.exit
  store i8 0, ptr %i.a, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
end_hunk_1
begin_hunk_2_@_ZNSt23_Sp_counted_ptr_inplaceIN2cv12CrossProductIfEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12CrossProductIfEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !18
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #20
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv15RgbdNormalsImplIfED2Ev(ptr noundef nonnull align 8 dead_on_return(441) dereferenceable(441) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv15RgbdNormalsImplIfEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv12CrossProductIfED0Ev(ptr noundef nonnull align 8 dereferenceable(441) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv15RgbdNormalsImplIfEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20, !inline_history !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #20, !inline_history !60
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 448) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv12CrossProductIfE5cacheEv(ptr noundef nonnull align 8 dereferenceable(441) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i8 0, ptr %i.a, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv12CrossProductIfE7computeERKNS_3MatERS2_(ptr noundef nonnull align 8 dereferenceable(441) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph134, label %._crit_edge135

.lr.ph134:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !53   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph134.split, label %._crit_edge135

._crit_edge135:                                   ; preds = %._crit_edge, %.lr.ph134, %bb.a
  ret void

.lr.ph134.split:                                  ; preds = %.lr.ph134, %._crit_edge
  %i.k = phi i32 [ %i.ab, %._crit_edge ], [ %i.b, %.lr.ph134 ] ; 2 uses
  %i.l = phi i32 [ %i.ac, %._crit_edge ], [ %i.i, %.lr.ph134 ] ; 3 uses
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %._crit_edge ], [ 0, %.lr.ph134 ] ; 5 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %i.n = load i64, ptr %i.e, align 8, !tbaa !49   ; 2 uses
  %i.o = mul i64 %i.n, %indvars.iv138
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = add nsw i32 %i.k, -1
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv138, %i.r
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 3 uses
  %i.t = mul i64 %i.n, %indvars.iv.next139
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.t
  %i.v = select i1 %i.s, ptr %i.u, ptr null
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.x = load i64, ptr %i.g, align 8, !tbaa !49
  %i.y = mul i64 %i.x, %indvars.iv138
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  %i.aa = icmp sgt i32 %i.l, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre = load i32, ptr %i.a, align 8, !tbaa !52
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph134.split
  %i.ab = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.k, %.lr.ph134.split ] ; 2 uses
  %i.ac = phi i32 [ %i.de, %._crit_edge.loopexit ], [ %i.l, %.lr.ph134.split ]
  %i.ad = sext i32 %i.ab to i64
  %i.ae = icmp slt i64 %indvars.iv.next139, %i.ad
  br i1 %i.ae, label %.lr.ph134.split, label %._crit_edge135, !llvm.loop !329

.lr.ph:                                           ; preds = %.lr.ph134.split, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.lr.ph134.split ] ; 5 uses
  %i.af = phi i32 [ %i.de, %bb.g ], [ %i.l, %.lr.ph134.split ]
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv ; 5 uses
  %i.ah = load <2 x float>, ptr %i.ag, align 4, !tbaa !65 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !65
  %.fr.i = freeze float %i.aj                     ; 3 uses
  %i.ak = add nsw i32 %i.af, -1
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv, %i.al
  br i1 %i.am, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %i.an = load i32, ptr %i.a, align 8, !tbaa !52
  %i.ao = add nsw i32 %i.an, -1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp slt i64 %indvars.iv138, %i.ap
  br i1 %i.aq, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ar = extractelement <2 x float> %i.ah, i64 0
  %i.as = fcmp uno float %i.ar, 0.000000e+00
  %i.at = extractelement <2 x float> %i.ah, i64 1
  %spec.select.i = fcmp uno float %i.at, %.fr.i
  %i.au = select i1 %i.as, i1 true, i1 %spec.select.i
  br i1 %i.au, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !65
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !65
  %i.bc = load <2 x float>, ptr %i.av, align 4, !tbaa !65 ; 3 uses
  %i.bd = load float, ptr %i.aw, align 4, !tbaa !65
  %i.be = load <2 x float>, ptr %i.az, align 4, !tbaa !65 ; 3 uses
  %i.bf = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.bb, i64 1
  %i.bh = freeze <2 x float> %i.bg                ; 5 uses
  %i.bi = extractelement <2 x float> %i.bc, i64 0
  %i.bj = fcmp uno float %i.bi, 0.000000e+00
  %i.bk = extractelement <2 x float> %i.bh, i64 0
  %spec.select.i69 = fcmp uno float %i.bd, %i.bk
  %i.bl = select i1 %i.bj, i1 true, i1 %spec.select.i69
  br i1 %i.bl, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !65
  %i.bo = extractelement <2 x float> %i.be, i64 0
  %i.bp = fcmp uno float %i.bo, 0.000000e+00
  %i.bq = extractelement <2 x float> %i.bh, i64 1
  %spec.select.i73 = fcmp uno float %i.bn, %i.bq
  %i.br = select i1 %i.bp, i1 true, i1 %spec.select.i73
  br i1 %i.br, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bs = insertelement <2 x float> %i.ah, float %.fr.i, i64 1 ; 2 uses
  %i.bt = shufflevector <2 x float> %i.be, <2 x float> %i.bh, <2 x i32> <i32 3, i32 0>
  %i.bu = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bv = fsub <2 x float> %i.bt, %i.bu           ; 2 uses
  %i.bw = shufflevector <2 x float> %i.bc, <2 x float> %i.be, <2 x i32> <i32 3, i32 0>
  %i.bx = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.by = fsub <2 x float> %i.bw, %i.bx           ; 3 uses
  %i.bz = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ca = fsub <2 x float> %i.bh, %i.bz
  %i.cb = shufflevector <2 x float> %i.bc, <2 x float> %i.bh, <2 x i32> <i32 1, i32 2>
  %i.cc = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cd = insertelement <2 x float> %i.cc, float %.fr.i, i64 1
  %i.ce = fsub <2 x float> %i.cb, %i.cd           ; 2 uses
  %i.cf = extractelement <2 x float> %i.by, i64 1
  %i.cg = fneg float %i.cf
  %i.ch = extractelement <2 x float> %i.by, i64 0
  %i.ci = fmul float %i.ch, %i.cg
  %i.cj = extractelement <2 x float> %i.bv, i64 1
  %i.ck = extractelement <2 x float> %i.ce, i64 0
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.ck, float %i.ci)
  %i.cm = fpext float %i.cl to double             ; 3 uses
  %i.cn = fneg <2 x float> %i.ce
  %i.co = fmul <2 x float> %i.bv, %i.cn
  %i.cp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.by, <2 x float> %i.co)
  %i.cq = fpext <2 x float> %i.cp to <2 x double> ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.cq, %i.cq
  %3 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cr = extractelement <2 x double> %i.cq, i64 1 ; 2 uses
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cr, double %3)
  %i.ct = tail call noundef double @llvm.fmuladd.f64(double %i.cm, double %i.cm, double %i.cs) ; 2 uses
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.ct)
  %i.cu = fcmp une double %i.ct, 0.000000e+00
  %i.cv = fdiv double 1.000000e+00, %sqrt.i.i
  %i.cw = select i1 %i.cu, double %i.cv, double 0.000000e+00 ; 2 uses
  %i.cx = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fmul <2 x double> %i.cy, %i.cq
  %i.da = fptrunc <2 x double> %i.cz to <2 x float>
  %i.db = fmul double %i.cw, %i.cm
  %i.dc = fptrunc double %i.db to float
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c, %bb.b, %.lr.ph
  %.sroa.0114.1 = phi <2 x float> [ splat (float +qnan), %bb.c ], [ splat (float +qnan), %.lr.ph ], [ splat (float +qnan), %bb.b ], [ splat (float +qnan), %bb.d ], [ splat (float +qnan), %bb.e ], [ %i.da, %bb.f ]
  %.sroa.7.1 = phi float [ +qnan, %bb.c ], [ +qnan, %.lr.ph ], [ +qnan, %bb.b ], [ +qnan, %bb.d ], [ +qnan, %bb.e ], [ %i.dc, %bb.f ]
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv ; 3 uses
  store <2 x float> %.sroa.0114.1, ptr %i.dd, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store float %.sroa.7.1, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.de = load i32, ptr %i.h, align 4, !tbaa !53  ; 3 uses
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp slt i64 %indvars.iv.next, %i.df
  br i1 %i.dg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !330
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12CrossProductIdEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(464) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 464) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12CrossProductIdEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(464) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(441) dereferenceable(441) %i.a) #20, !inline_history !331
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12CrossProductIdEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(464) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12CrossProductIdEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 464) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12CrossProductIdEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !18
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #20
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv15RgbdNormalsImplIdED2Ev(ptr noundef nonnull align 8 dead_on_return(441) dereferenceable(441) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv15RgbdNormalsImplIdEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv12CrossProductIdED0Ev(ptr noundef nonnull align 8 dereferenceable(441) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv15RgbdNormalsImplIdEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20, !inline_history !90
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #20, !inline_history !90
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 448) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv12CrossProductIdE5cacheEv(ptr noundef nonnull align 8 dereferenceable(441) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i8 0, ptr %i.a, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv12CrossProductIdE7computeERKNS_3MatERS2_(ptr noundef nonnull align 8 dereferenceable(441) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph94, label %._crit_edge95

.lr.ph94:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !86   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph94.split, label %._crit_edge95

._crit_edge95:                                    ; preds = %._crit_edge, %.lr.ph94, %bb.a
  ret void

.lr.ph94.split:                                   ; preds = %.lr.ph94, %._crit_edge
  %i.k = phi i32 [ %i.ab, %._crit_edge ], [ %i.b, %.lr.ph94 ] ; 2 uses
  %i.l = phi i32 [ %i.ac, %._crit_edge ], [ %i.i, %.lr.ph94 ] ; 3 uses
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %._crit_edge ], [ 0, %.lr.ph94 ] ; 5 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %i.n = load i64, ptr %i.e, align 8, !tbaa !49   ; 2 uses
  %i.o = mul i64 %i.n, %indvars.iv98
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = add nsw i32 %i.k, -1
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv98, %i.r
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 3 uses
  %i.t = mul i64 %i.n, %indvars.iv.next99
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.t
  %i.v = select i1 %i.s, ptr %i.u, ptr null
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.x = load i64, ptr %i.g, align 8, !tbaa !49
  %i.y = mul i64 %i.x, %indvars.iv98
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  %i.aa = icmp sgt i32 %i.l, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre = load i32, ptr %i.a, align 8, !tbaa !85
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph94.split
  %i.ab = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.k, %.lr.ph94.split ] ; 2 uses
  %i.ac = phi i32 [ %i.co, %._crit_edge.loopexit ], [ %i.l, %.lr.ph94.split ]
  %i.ad = sext i32 %i.ab to i64
  %i.ae = icmp slt i64 %indvars.iv.next99, %i.ad
  br i1 %i.ae, label %.lr.ph94.split, label %._crit_edge95, !llvm.loop !332

.lr.ph:                                           ; preds = %.lr.ph94.split, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.lr.ph94.split ] ; 5 uses
  %i.af = phi i32 [ %i.co, %bb.g ], [ %i.l, %.lr.ph94.split ]
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %indvars.iv ; 6 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !91 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !91
  %.fr.i = freeze double %i.aj                    ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.al = load double, ptr %i.ak, align 8, !tbaa !91 ; 2 uses
  %i.am = add nsw i32 %i.af, -1
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv, %i.an
  br i1 %i.ao, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !85
  %i.aq = add nsw i32 %i.ap, -1
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv98, %i.ar
  br i1 %i.as, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %or.cond.i = fcmp uno double %i.ah, %.fr.i
  %i.at = fcmp uno double %i.al, 0.000000e+00
  %i.au = select i1 %or.cond.i, i1 true, i1 %i.at
  br i1 %i.au, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.aw = load double, ptr %i.av, align 8, !tbaa !91 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !91
  %.fr.i22 = freeze double %i.ay                  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ba = load double, ptr %i.az, align 8, !tbaa !91 ; 2 uses
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %indvars.iv ; 3 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !91 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load double, ptr %i.bd, align 8, !tbaa !91
  %.fr.i24 = freeze double %i.be                  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !91 ; 2 uses
  %or.cond.i23 = fcmp uno double %i.aw, %.fr.i22
  %i.bh = fcmp uno double %i.ba, 0.000000e+00
  %i.bi = select i1 %or.cond.i23, i1 true, i1 %i.bh
  br i1 %i.bi, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %or.cond.i25 = fcmp uno double %i.bc, %.fr.i24
  %i.bj = fcmp uno double %i.bg, 0.000000e+00
  %i.bk = select i1 %or.cond.i25, i1 true, i1 %i.bj
  br i1 %i.bk, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bl = fsub double %i.bc, %i.ah                ; 2 uses
  %i.bm = fsub double %.fr.i24, %.fr.i            ; 2 uses
  %i.bn = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bg, i64 1
  %i.bp = insertelement <2 x double> poison, double %i.al, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fsub <2 x double> %i.bo, %i.bq          ; 2 uses
  %i.bs = fsub double %i.aw, %i.ah                ; 2 uses
  %i.bt = fsub double %.fr.i22, %.fr.i            ; 2 uses
  %i.bu = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bv = insertelement <2 x double> %i.bu, double %i.bt, i64 0
  %i.bw = fneg <2 x double> %i.bv
  %i.bx = insertelement <2 x double> %i.bu, double %i.bl, i64 1
  %i.by = fmul <2 x double> %i.bx, %i.bw
  %i.bz = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.bs, i64 1
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.ca, <2 x double> %i.by) ; 4 uses
  %i.cc = fneg double %i.bs
  %3 = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %4 = insertelement <2 x double> %3, double %i.bm, i64 0
  %5 = insertelement <2 x double> %3, double %i.cc, i64 0
  %6 = fmul <2 x double> %4, %5
  %7 = insertelement <2 x double> %i.cb, double %i.bl, i64 0
  %8 = insertelement <2 x double> %i.cb, double %i.bt, i64 0
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %8, <2 x double> %6) ; 2 uses
  %i.cd = extractelement <2 x double> %9, i64 0   ; 3 uses
  %10 = extractelement <2 x double> %9, i64 1
  %i.ce = tail call noundef double @llvm.fmuladd.f64(double %i.cd, double %i.cd, double %10) ; 2 uses
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.ce)
  %i.cf = fcmp une double %i.ce, 0.000000e+00
  %i.cg = fdiv double 1.000000e+00, %sqrt.i.i
  %i.ch = select i1 %i.cf, double %i.cg, double 0.000000e+00 ; 2 uses
  %i.ci = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x double> %i.cb, %i.cj
  %i.cl = fmul double %i.cd, %i.ch
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c, %bb.b, %.lr.ph
  %.sroa.763.1 = phi double [ +qnan, %bb.c ], [ +qnan, %.lr.ph ], [ +qnan, %bb.b ], [ +qnan, %bb.d ], [ +qnan, %bb.e ], [ %i.cl, %bb.f ]
  %i.cm = phi <2 x double> [ splat (double +qnan), %bb.c ], [ splat (double +qnan), %.lr.ph ], [ splat (double +qnan), %bb.b ], [ splat (double +qnan), %bb.d ], [ splat (double +qnan), %bb.e ], [ %i.ck, %bb.f ]
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %indvars.iv ; 3 uses
  store <2 x double> %i.cm, ptr %i.cn, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store double %.sroa.763.1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store double 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.co = load i32, ptr %i.h, align 4, !tbaa !86  ; 3 uses
  %i.cp = sext i32 %i.co to i64
  %i.cq = icmp slt i64 %indvars.iv.next, %i.cp
  br i1 %i.cq, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !333
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin nounwind }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { noreturn nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !66}
!1 = distinct !{null}
!2 = distinct !{!2, !66}
!3 = distinct !{!3, !66}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !15, i64 8, !8, i64 16}
!17 = !{!16, !13, i64 0}
!18 = !{!8, !8, i64 0}
!19 = !{!"_ZTSN2cv5Size_IiEE", !9, i64 0, !9, i64 4}
!20 = !{!"_ZTSN2cv11_InputArrayE", !9, i64 0, !12, i64 8, !19, i64 16}
!21 = !{!20, !12, i64 8}
!22 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 8, !9, i64 12}
!23 = !{!22, !9, i64 8}
!24 = !{!22, !9, i64 12}
!25 = !{!"vtable pointer", !7, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"p1 _ZTSN2cv12MatAllocatorE", !12, i64 0}
!28 = !{!"p1 _ZTSN2cv8UMatDataE", !12, i64 0}
!29 = !{!"_ZTSN2cv10DataLayoutE", !8, i64 0}
!30 = !{!"_ZTSN2cv8MatShapeE", !9, i64 0, !29, i64 4, !9, i64 8, !8, i64 12}
!31 = !{!"_ZTSN2cv7MatStepE", !8, i64 0}
!32 = !{!"_ZTSN2cv3MatE", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !27, i64 56, !28, i64 64, !30, i64 72, !31, i64 128}
!33 = !{!32, !9, i64 0}
!34 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!35 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !34, i64 0}
!36 = !{!9, !9, i64 0}
!37 = !{!35, !34, i64 0}
!38 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!39 = !{!"_ZTSN2cv11RgbdNormalsE"}
!40 = !{!"_ZTSN2cv11RgbdNormals17RgbdNormalsMethodE", !8, i64 0}
!41 = !{!"bool", !8, i64 0}
!42 = !{!"_ZTSN2cv15RgbdNormalsImplIfEE", !39, i64 0, !9, i64 8, !9, i64 12, !32, i64 16, !32, i64 224, !9, i64 432, !40, i64 436, !41, i64 440}
!43 = !{!"double", !8, i64 0}
!44 = !{!"_ZTSN2cv7LINEMODIfEE", !42, i64 0, !43, i64 448}
!45 = !{!44, !43, i64 448}
!46 = !{!"_ZTSN2cv15RgbdNormalsImplIdEE", !39, i64 0, !9, i64 8, !9, i64 12, !32, i64 16, !32, i64 224, !9, i64 432, !40, i64 436, !41, i64 440}
!47 = !{!"_ZTSN2cv7LINEMODIdEE", !46, i64 0, !43, i64 448}
!48 = !{!47, !43, i64 448}
!49 = !{!15, !15, i64 0}
!50 = !{!"_ZTSSt9type_info", !13, i64 8}
!51 = !{!50, !13, i64 8}
!52 = !{!42, !9, i64 8}
!53 = !{!42, !9, i64 12}
!54 = !{!42, !9, i64 432}
!55 = !{!42, !40, i64 436}
!56 = !{!42, !41, i64 440}
!57 = !{!32, !9, i64 12}
!58 = !{!32, !9, i64 8}
!59 = !{!20, !9, i64 0}
!60 = !{ptr @_ZN2cv15RgbdNormalsImplIfED2Ev}
!61 = !{!32, !9, i64 4}
!62 = !{!30, !9, i64 0}
!63 = !{!32, !13, i64 24}
!64 = !{!"float", !8, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.isvectorized", i32 1}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
!69 = !{i8 0, i8 2}
!70 = !{}
!71 = !{!"p1 _ZTSN2cv3MatE", !12, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!73 = !{!72, !71, i64 0}
!74 = !{!72, !71, i64 16}
!75 = !{!72, !71, i64 8}
!76 = !{!19, !9, i64 0}
!77 = !{!19, !9, i64 4}
!78 = !{!"p1 _ZTSN2cv5MatOpE", !12, i64 0}
!79 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !8, i64 0}
!80 = !{!"_ZTSN2cv3VecIdLi4EEE", !79, i64 0}
!81 = !{!"_ZTSN2cv7Scalar_IdEE", !80, i64 0}
!82 = !{!"_ZTSN2cv7MatExprE", !78, i64 0, !9, i64 8, !32, i64 16, !32, i64 224, !32, i64 432, !43, i64 640, !43, i64 648, !81, i64 656}
!83 = !{!82, !78, i64 0}
!84 = !{!32, !9, i64 16}
!85 = !{!46, !9, i64 8}
!86 = !{!46, !9, i64 12}
!87 = !{!46, !9, i64 432}
!88 = !{!46, !40, i64 436}
!89 = !{!46, !41, i64 440}
!90 = !{ptr @_ZN2cv15RgbdNormalsImplIdED2Ev}
!91 = !{!43, !43, i64 0}
!92 = !{!"short", !8, i64 0}
!93 = !{!92, !92, i64 0}
!94 = !{!"p1 _ZTSN2cv7Point3_IfEE", !12, i64 0}
!95 = !{!"_ZTSNSt12_Vector_baseIN2cv7Point3_IfEESaIS2_EE17_Vector_impl_dataE", !94, i64 0, !94, i64 8, !94, i64 16}
!96 = !{!95, !94, i64 0}
!97 = !{!95, !94, i64 16}
!98 = !{!95, !94, i64 8}
!99 = !{!"_ZTSN2cv4Mat_INS_3VecIfLi2EEEEE", !32, i64 0}
!100 = !{!"llvm.loop.unswitch.partial.disable"}
!101 = distinct !{!101, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!102 = distinct !{!102, !101, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!103 = distinct !{!103, i1 true, !"_ZN2cvL7makePtrINS_4FALSIfEEJiiiNS_3MatEEEENS_3PtrIT_EEDpRKT0_"}
!104 = distinct !{!104, !103, !"_ZN2cvL7makePtrINS_4FALSIfEEJiiiNS_3MatEEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!105 = distinct !{!105, i1 true, !"_ZSt11make_sharedIN2cv4FALSIfEEJRKiS4_S4_RKNS0_3MatEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!106 = distinct !{!106, !105, !"_ZSt11make_sharedIN2cv4FALSIfEEJRKiS4_S4_RKNS0_3MatEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!107 = distinct !{null, null, null, null, null}
!108 = distinct !{null, null, null}
!109 = distinct !{!109, i1 true, !"_ZN2cvL7makePtrINS_4FALSIdEEJiiiNS_3MatEEEENS_3PtrIT_EEDpRKT0_"}
!110 = distinct !{!110, !109, !"_ZN2cvL7makePtrINS_4FALSIdEEJiiiNS_3MatEEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!111 = distinct !{!111, i1 true, !"_ZSt11make_sharedIN2cv4FALSIdEEJRKiS4_S4_RKNS0_3MatEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!112 = distinct !{!112, !111, !"_ZSt11make_sharedIN2cv4FALSIdEEJRKiS4_S4_RKNS0_3MatEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!113 = distinct !{null, null, null, null, null}
!114 = distinct !{null, null, null}
!115 = distinct !{!115, i1 true, !"_ZN2cvL7makePtrINS_7LINEMODIfEEJiiiNS_3MatEfEEENS_3PtrIT_EEDpRKT0_"}
!116 = distinct !{!116, !115, !"_ZN2cvL7makePtrINS_7LINEMODIfEEJiiiNS_3MatEfEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!117 = distinct !{!117, i1 true, !"_ZSt11make_sharedIN2cv7LINEMODIfEEJRKiS4_S4_RKNS0_3MatERKfEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_"}
!118 = distinct !{!118, !117, !"_ZSt11make_sharedIN2cv7LINEMODIfEEJRKiS4_S4_RKNS0_3MatERKfEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_: argument 0"}
!119 = distinct !{null, null, null, null, null}
!120 = distinct !{null, null, null}
!121 = distinct !{!121, i1 true, !"_ZN2cvL7makePtrINS_7LINEMODIdEEJiiiNS_3MatEfEEENS_3PtrIT_EEDpRKT0_"}
!122 = distinct !{!122, !121, !"_ZN2cvL7makePtrINS_7LINEMODIdEEJiiiNS_3MatEfEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!123 = distinct !{!123, i1 true, !"_ZSt11make_sharedIN2cv7LINEMODIdEEJRKiS4_S4_RKNS0_3MatERKfEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_"}
!124 = distinct !{!124, !123, !"_ZSt11make_sharedIN2cv7LINEMODIdEEJRKiS4_S4_RKNS0_3MatERKfEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_: argument 0"}
!125 = distinct !{null, null, null, null, null}
!126 = distinct !{null, null, null}
!127 = distinct !{!127, i1 true, !"_ZN2cvL7makePtrINS_3SRIIfEEJiiiNS_3MatEEEENS_3PtrIT_EEDpRKT0_"}
!128 = distinct !{!128, !127, !"_ZN2cvL7makePtrINS_3SRIIfEEJiiiNS_3MatEEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!129 = distinct !{!129, i1 true, !"_ZSt11make_sharedIN2cv3SRIIfEEJRKiS4_S4_RKNS0_3MatEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!130 = distinct !{!130, !129, !"_ZSt11make_sharedIN2cv3SRIIfEEJRKiS4_S4_RKNS0_3MatEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!131 = distinct !{null, null, null, null, null}
!132 = distinct !{null, null, null}
!133 = distinct !{!133, i1 true, !"_ZN2cvL7makePtrINS_3SRIIdEEJiiiNS_3MatEEEENS_3PtrIT_EEDpRKT0_"}
!134 = distinct !{!134, !133, !"_ZN2cvL7makePtrINS_3SRIIdEEJiiiNS_3MatEEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!135 = distinct !{!135, i1 true, !"_ZSt11make_sharedIN2cv3SRIIdEEJRKiS4_S4_RKNS0_3MatEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!136 = distinct !{!136, !135, !"_ZSt11make_sharedIN2cv3SRIIdEEJRKiS4_S4_RKNS0_3MatEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!137 = distinct !{null, null, null, null, null}
!138 = distinct !{null, null, null}
!139 = distinct !{!139, i1 true, !"_ZN2cvL7makePtrINS_12CrossProductIfEEJiiiNS_3MatEEEENS_3PtrIT_EEDpRKT0_"}
!140 = distinct !{!140, !139, !"_ZN2cvL7makePtrINS_12CrossProductIfEEJiiiNS_3MatEEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!141 = distinct !{!141, i1 true, !"_ZSt11make_sharedIN2cv12CrossProductIfEEJRKiS4_S4_RKNS0_3MatEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!142 = distinct !{!142, !141, !"_ZSt11make_sharedIN2cv12CrossProductIfEEJRKiS4_S4_RKNS0_3MatEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!143 = distinct !{null, null, null, null, null}
!144 = distinct !{null, null, null}
!145 = distinct !{!145, i1 true, !"_ZN2cvL7makePtrINS_12CrossProductIdEEJiiiNS_3MatEEEENS_3PtrIT_EEDpRKT0_"}
!146 = distinct !{!146, !145, !"_ZN2cvL7makePtrINS_12CrossProductIdEEJiiiNS_3MatEEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!147 = distinct !{!147, i1 true, !"_ZSt11make_sharedIN2cv12CrossProductIdEEJRKiS4_S4_RKNS0_3MatEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!148 = distinct !{!148, !147, !"_ZSt11make_sharedIN2cv12CrossProductIdEEJRKiS4_S4_RKNS0_3MatEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!149 = distinct !{null, null, null, null, null}
!150 = distinct !{null, null, null}
!151 = !{!102}
!152 = !{!106, !104}
!153 = !{!"p1 _ZTSN2cv11RgbdNormalsE", !12, i64 0}
!154 = !{!"_ZTSSt12__shared_ptrIN2cv11RgbdNormalsELN9__gnu_cxx12_Lock_policyE2EE", !153, i64 0, !35, i64 8}
!155 = !{!154, !153, i64 0}
!156 = !{!112, !110}
!157 = !{!118, !116}
!158 = !{!124, !122}
!159 = !{!130, !128}
!160 = !{!136, !134}
!161 = !{!142, !140}
!162 = !{!148, !146}
!163 = !{!14, !13, i64 0}
!164 = !{!16, !15, i64 8}
!165 = distinct !{null, null}
!166 = distinct !{null}
!167 = distinct !{null}
!168 = !{ptr @_ZN2cv4FALSIfED2Ev}
!169 = !{ptr @_ZN2cv4FALSIfED2Ev, ptr @_ZN2cv15RgbdNormalsImplIfED2Ev}
end_hunk_2
