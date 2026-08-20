inline.NumInlined: 3790
inline.NumDeleted: 1251
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN11opencv_test16Encode_animation12PerfTestBodyEv:bb.a
  %i.bn = load ptr, ptr %8, align 8, !tbaa !9     ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.g
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.af
  %i.bp = load i64, ptr %i.g, align 8, !tbaa !15
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.ac
  %.pn11.pn = phi { ptr, i32 } [ %i.bk, %bb.ac ], [ %.pn11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %.pn11, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #33
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %bb.ab
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ %i.bj, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  br label %bb.an

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN7testing7MessageD2Ev.exit
  %i.br = load ptr, ptr %i.e, align 8, !tbaa !93
  %.not.i.i.i31 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i31, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bs = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i32 unwind label %bb.al

.noexc.i.i32:                                     ; preds = %bb.ai
  br i1 %i.bs, label %bb.aj, label %_ZN7testing15AssertionResultD2Ev.exit

bb.aj:                                            ; preds = %.noexc.i.i32
  %i.bt = load ptr, ptr %i.e, align 8, !tbaa !93  ; 4 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !9  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ak
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !15
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.al:                                            ; preds = %bb.ai
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #35
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.ah, %.noexc.i.i32, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.cc = load ptr, ptr %2, align 8, !tbaa !111   ; 3 uses
  %.not.i.i.i33 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !114
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cg) #32
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  invoke void @_ZN4perf8TestBase9stopTimerEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.b unwind label %bb.o, !llvm.loop !246

bb.an:                                            ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.pn11.pn.pn.pn = phi { ptr, i32 } [ %.pn11.pn.pn, %bb.ag ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.ch = load ptr, ptr %2, align 8, !tbaa !111   ; 3 uses
  %.not.i.i.i34 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIhSaIhEED2Ev.exit35, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ci = load ptr, ptr %i.h, align 8, !tbaa !114
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cl) #32
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit35

_ZNSt6vectorIhSaIhEED2Ev.exit35:                  ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.ar

.critedge:                                        ; preds = %bb.c, %bb.e
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 1, ptr %i.cm, align 8, !tbaa !113
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cn) #33
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !224 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !212 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cp, %i.cr
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i ], [ %i.cp, %.critedge ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i) #33
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cs, %i.cr
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !225

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.co, align 8, !tbaa !224
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %.critedge
  %i.ct = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.cp, %.critedge ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !214
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cy) #32
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit.i:        ; preds = %bb.ap, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !104 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i1.i, label %_ZN2cv9AnimationD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !107
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.da to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.df) #32
  br label %_ZN2cv9AnimationD2Ev.exit

_ZN2cv9AnimationD2Ev.exit:                        ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret void

bb.ar:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit35, %bb.o
  %.pn16 = phi { ptr, i32 } [ %i.aj, %bb.o ], [ %.pn11.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit35 ]
  call void @_ZN2cv9AnimationD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %.pn16
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiii(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %1) unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Scalar_", align 8       ; 2 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %4 = alloca %"class.cv::Scalar_", align 16      ; 6 uses
  %5 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %6 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv()
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  call void @_ZN2cv9AnimationC1EiNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(296) %0, i32 noundef 0, ptr noundef nonnull align 8 dead_on_return %2)
  %i.c = bitcast i64 %1 to <2 x i32>
  %i.d = sitofp <2 x i32> %i.c to <2 x float>     ; 3 uses
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.f = shufflevector <4 x float> %i.e, <4 x float> <float poison, float poison, float 4.000000e+00, float 4.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.b

.preheader:                                       ; preds = %_ZNSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE9push_backERKS4_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = ptrtoint ptr %.sroa.10167.1 to i64
  %i.i = ptrtoint ptr %.sroa.0166.2 to i64        ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 88
  %.not = icmp eq ptr %.sroa.10167.1, %.sroa.0166.2
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.v = extractelement <2 x float> %i.d, i64 0
  %i.w = extractelement <2 x float> %i.d, i64 1
  br label %bb.h

bb.b:                                             ; preds = %bb.a, %_ZNSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE9push_backERKS4_.exit
  %.051214 = phi i32 [ 0, %bb.a ], [ %i.ej, %_ZNSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE9push_backERKS4_.exit ]
  %.sroa.0169.0213 = phi i64 [ %i.b, %bb.a ], [ %i.cm, %_ZNSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %.sroa.15.0212 = phi ptr [ null, %bb.a ], [ %.sroa.15.2, %_ZNSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE9push_backERKS4_.exit ] ; 7 uses
  %.sroa.10167.0211 = phi ptr [ null, %bb.a ], [ %.sroa.10167.1, %_ZNSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE9push_backERKS4_.exit ] ; 13 uses
  %.sroa.0166.0210 = phi ptr [ null, %bb.a ], [ %.sroa.0166.2, %_ZNSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE9push_backERKS4_.exit ] ; 8 uses
  %i.x = and i64 %.sroa.0169.0213, 4294967295
  %i.y = mul nuw i64 %i.x, 4164903690
  %i.z = lshr i64 %.sroa.0169.0213, 32
  %i.aa = add nuw i64 %i.y, %i.z                  ; 3 uses
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = mul nuw i64 %i.ab, 4164903690
  %i.ad = lshr i64 %i.aa, 32
  %i.ae = add nuw i64 %i.ac, %i.ad                ; 3 uses
  %i.af = and i64 %i.ae, 4294967295
  %i.ag = mul nuw i64 %i.af, 4164903690
  %i.ah = lshr i64 %i.ae, 32
  %i.ai = add nuw i64 %i.ag, %i.ah                ; 3 uses
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = mul nuw i64 %i.aj, 4164903690
  %i.al = lshr i64 %i.ai, 32
  %i.am = add nuw i64 %i.ak, %i.al                ; 3 uses
  %i.an = insertelement <2 x i64> poison, i64 %i.aa, i64 0
  %i.ao = insertelement <2 x i64> %i.an, i64 %i.ae, i64 1
  %i.ap = trunc <2 x i64> %i.ao to <2 x i32>
  %i.aq = shufflevector <2 x i32> %i.ap, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ar = trunc i64 %i.ai to i32
  %i.as = insertelement <4 x i32> %i.aq, i32 %i.ar, i64 2
  %i.at = trunc i64 %i.am to i32
  %i.au = insertelement <4 x i32> %i.as, i32 %i.at, i64 3
  %i.av = uitofp <4 x i32> %i.au to <4 x float>
  %i.aw = fmul nnan <4 x float> %i.av, splat (float f0x2F800000)
  %i.ax = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aw, <4 x float> %i.f, <4 x float> <float 0.000000e+00, float 0.000000e+00, float -2.000000e+00, float -2.000000e+00>) ; 2 uses
  %i.ay = and i64 %i.am, 4294967295
  %i.az = mul nuw i64 %i.ay, 4164903690
  %i.ba = lshr i64 %i.am, 32
  %i.bb = add nuw i64 %i.az, %i.ba                ; 3 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = uitofp i32 %i.bc to float
  %i.be = fmul nnan float %i.bd, f0x2F800000
  %i.bf = call noundef float @llvm.fmuladd.f32(float %i.be, float 3.000000e+01, float 1.000000e+01) ; 2 uses
  %i.bg = and i64 %i.bb, 4294967295
  %i.bh = mul nuw i64 %i.bg, 4164903690
  %i.bi = lshr i64 %i.bb, 32
  %i.bj = add nuw i64 %i.bh, %i.bi                ; 3 uses
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = uitofp i32 %i.bk to float
  %i.bm = fmul nnan float %i.bl, f0x2F800000
  %i.bn = fadd float %i.bm, -5.000000e-01         ; 2 uses
  %i.bo = and i64 %i.bj, 4294967295
  %i.bp = mul nuw i64 %i.bo, 4164903690
  %i.bq = lshr i64 %i.bj, 32
  %i.br = add nuw i64 %i.bp, %i.bq                ; 3 uses
  %i.bs = trunc i64 %i.br to i32
  %i.bt = urem i32 %i.bs, 255
  %i.bu = uitofp nneg i32 %i.bt to double         ; 4 uses
  %i.bv = and i64 %i.br, 4294967295
  %i.bw = mul nuw i64 %i.bv, 4164903690
  %i.bx = lshr i64 %i.br, 32
  %i.by = add nuw i64 %i.bw, %i.bx                ; 3 uses
  %i.bz = trunc i64 %i.by to i32
  %i.ca = urem i32 %i.bz, 255
  %i.cb = uitofp nneg i32 %i.ca to double         ; 4 uses
  %i.cc = and i64 %i.by, 4294967295
  %i.cd = mul nuw i64 %i.cc, 4164903690
  %i.ce = lshr i64 %i.by, 32
  %i.cf = add nuw i64 %i.cd, %i.ce                ; 3 uses
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = urem i32 %i.cg, 255
  %i.ci = uitofp nneg i32 %i.ch to double         ; 4 uses
  %i.cj = and i64 %i.cf, 4294967295
  %i.ck = mul nuw i64 %i.cj, 4164903690
  %i.cl = lshr i64 %i.cf, 32
  %i.cm = add nuw i64 %i.ck, %i.cl                ; 3 uses
  %i.cn = trunc i64 %i.cm to i32
  %i.co = urem i32 %i.cn, 25
  %i.cp = add nuw nsw i32 %i.co, 230
  %i.cq = uitofp nneg i32 %i.cp to double         ; 4 uses
  %.not.i = icmp eq ptr %.sroa.10167.0211, %.sroa.15.0212
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store <4 x float> %i.ax, ptr %.sroa.10167.0211, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10167.0211, i64 16
  store float %i.bf, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10167.0211, i64 20
  store float %i.bn, ptr %.sroa.11.0..sroa_idx, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.10167.0211, i64 24
  store double %i.bu, ptr %i.cr, align 8, !tbaa !215
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.10167.0211, i64 32
  store double %i.cb, ptr %i.cs, align 8, !tbaa !215
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.10167.0211, i64 40
  store double %i.ci, ptr %i.ct, align 8, !tbaa !215
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.10167.0211, i64 48
  store double %i.cq, ptr %i.cu, align 8, !tbaa !215
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.10167.0211, i64 56
  store double %i.bu, ptr %i.cv, align 8, !tbaa !215
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.10167.0211, i64 64
  store double %i.cb, ptr %i.cw, align 8, !tbaa !215
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.10167.0211, i64 72
  store double %i.ci, ptr %i.cx, align 8, !tbaa !215
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.10167.0211, i64 80
  store double %i.cq, ptr %i.cy, align 8, !tbaa !215
  br label %_ZNSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE9push_backERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.cz = ptrtoint ptr %.sroa.15.0212 to i64
  %i.da = ptrtoint ptr %.sroa.0166.0210 to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 4 uses
  %i.dc = icmp eq i64 %i.db, 9223372036854775800
  br i1 %i.dc, label %bb.e, label %_ZNKSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.89) #36
          to label %.noexc unwind label %.loopexit.split-lp192

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.dd = sdiv exact i64 %i.db, 88                ; 3 uses
  %i.de = icmp eq ptr %.sroa.15.0212, %.sroa.0166.0210 ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.de, i64 1, i64 %i.dd
  %i.df = add nsw i64 %.sroa.speculated.i.i.i, %i.dd ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.dd
  %i.dh = call i64 @llvm.umin.i64(i64 %i.df, i64 104811045873349725)
  %i.di = select i1 %i.dg, i64 104811045873349725, i64 %i.dh ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.di, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dj = mul nuw nsw i64 %i.di, 88
  %i.dk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #34
          to label %.noexc92 unwind label %.loopexit191 ; 5 uses

.noexc92:                                         ; preds = %_ZNKSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.db ; 11 uses
  store <4 x float> %i.ax, ptr %i.dl, align 8
  %.sroa.10.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store float %i.bf, ptr %.sroa.10.0..sroa_idx146, align 8
  %.sroa.11.0..sroa_idx148 = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  store float %i.bn, ptr %.sroa.11.0..sroa_idx148, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store double %i.bu, ptr %i.dm, align 8, !tbaa !215
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store double %i.cb, ptr %i.dn, align 8, !tbaa !215
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  store double %i.ci, ptr %i.do, align 8, !tbaa !215
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  store double %i.cq, ptr %i.dp, align 8, !tbaa !215
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  store double %i.bu, ptr %i.dq, align 8, !tbaa !215
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  store double %i.cb, ptr %i.dr, align 8, !tbaa !215
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 72
  store double %i.ci, ptr %i.ds, align 8, !tbaa !215
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 80
  store double %i.cq, ptr %i.dt, align 8, !tbaa !215
  br i1 %i.de, label %_ZNSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc92, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i ], [ %i.dk, %.noexc92 ] ; 6 uses
  %.092.i.i.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i ], [ %.sroa.0166.0210, %.noexc92 ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.03.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(88) %.092.i.i.i.i.i, i64 24, i1 false), !alias.scope !252
  %i.du = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24
  %i.dw = load <2 x double>, ptr %i.dv, align 8, !tbaa !215, !alias.scope !250, !noalias !247
  store <2 x double> %i.dw, ptr %i.du, align 8, !tbaa !215, !alias.scope !247, !noalias !250
  %i.dx = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 40
  %i.dz = load <2 x double>, ptr %i.dx, align 8, !tbaa !215, !alias.scope !250, !noalias !247
  store <2 x double> %i.dz, ptr %i.dy, align 8, !tbaa !215, !alias.scope !247, !noalias !250
  %i.ea = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 56
  %i.eb = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 56
  %i.ec = load <2 x double>, ptr %i.eb, align 8, !tbaa !215, !alias.scope !250, !noalias !247
  store <2 x double> %i.ec, ptr %i.ea, align 8, !tbaa !215, !alias.scope !247, !noalias !250
  %i.ed = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 72
  %i.ee = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 72
  %i.ef = load <2 x double>, ptr %i.ed, align 8, !tbaa !215, !alias.scope !250, !noalias !247
  store <2 x double> %i.ef, ptr %i.ee, align 8, !tbaa !215, !alias.scope !247, !noalias !250
  %i.eg = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 88 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eg, %.sroa.15.0212
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !253

_ZNSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc92
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dk, %.noexc92 ], [ %i.eh, %.lr.ph.i.i.i.i.i ]
  %.not.i37.i.i = icmp eq ptr %.sroa.0166.0210, null
  br i1 %.not.i37.i.i, label %_ZNSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0166.0210, i64 noundef %i.db) #32
  br label %_ZNSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36.i.i
  %i.ei = getelementptr inbounds nuw [88 x i8], ptr %i.dk, i64 %i.di
end_hunk_0
begin_hunk_1_@_ZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiii:bb.a

_ZNSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.c
  %.sroa.0166.2 = phi ptr [ %i.dk, %_ZNSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.0166.0210, %bb.c ] ; 10 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.10167.0211, %bb.c ]
  %.sroa.15.2 = phi ptr [ %i.ei, %_ZNSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.15.0212, %bb.c ] ; 6 uses
  %.sroa.10167.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 88 ; 3 uses
  %i.ej = add nuw nsw i32 %.051214, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ej, 80
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !254

.loopexit191:                                     ; preds = %_ZNKSt6vectorIZN11opencv_testL20makeCirclesAnimationEN2cv5Size_IiEEiiiE14AnimatedCircleSaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit193 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp192:                            ; preds = %bb.e
  %lpad.loopexit.split-lp194 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.ek = load ptr, ptr %i.p, align 8, !tbaa !212
  %i.el = load ptr, ptr %i.r, align 8, !tbaa !224
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = sdiv exact i64 %i.eo, 208               ; 2 uses
  %i.eq = trunc i64 %i.ep to i32
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %.lr.ph222, label %._crit_edge223

.lr.ph222:                                        ; preds = %bb.g
  %i.es = and i64 %i.ep, 2147483647
  br label %bb.ae

bb.h:                                             ; preds = %.preheader, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.050218 = phi i32 [ 0, %.preheader ], [ %i.ig, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ]
  %.sroa.0169.1217 = phi i64 [ %i.cm, %.preheader ], [ %.sroa.0169.2.lcssa, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store <2 x double> <double 2.000000e+01, double 0.000000e+00>, ptr %4, align 16, !tbaa !215
  store <2 x double> <double 1.000000e+01, double 1.280000e+02>, ptr %i.g, align 16, !tbaa !215
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %3, i64 %1, i32 noundef 96, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.t, %bb.i
  %.sroa.0169.2.lcssa = phi i64 [ %.sroa.0169.1217, %bb.i ], [ %i.gh, %bb.t ]
  %i.et = load ptr, ptr %i.p, align 8, !tbaa !212 ; 3 uses
  %i.eu = load ptr, ptr %i.q, align 8, !tbaa !214
  %.not.i93 = icmp eq ptr %i.et, %i.eu
  br i1 %.not.i93, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.et, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %.noexc94 unwind label %bb.ab

.noexc94:                                         ; preds = %bb.j
  %i.ev = load ptr, ptr %i.p, align 8, !tbaa !212
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 208
  store ptr %i.ew, ptr %i.p, align 8, !tbaa !212
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit

bb.k:                                             ; preds = %._crit_edge
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr %i.et, ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit unwind label %bb.ab

bb.l:                                             ; preds = %bb.h
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.ad

.lr.ph:                                           ; preds = %bb.i, %bb.t
  %.049216 = phi i64 [ %i.hk, %bb.t ], [ 0, %bb.i ] ; 2 uses
  %.sroa.0169.2215 = phi i64 [ %i.gh, %bb.t ], [ %.sroa.0169.1217, %bb.i ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0166.2, i64 %.049216 ; 12 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ey, i64 12
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 2 uses
  %i.fc = load <2 x float>, ptr %i.ez, align 4, !tbaa !255 ; 3 uses
  %i.fd = load <2 x float>, ptr %i.ey, align 4, !tbaa !255
  %i.fe = fadd <2 x float> %i.fc, %i.fd           ; 3 uses
  store <2 x float> %i.fe, ptr %i.ey, align 4, !tbaa !255
  %i.ff = extractelement <2 x float> %i.fe, i64 0 ; 2 uses
  %i.fg = fcmp olt float %i.ff, 0.000000e+00
  %i.fh = fcmp ogt float %i.ff, %i.v
  %or.cond = select i1 %i.fg, i1 true, i1 %i.fh
  %i.fi = extractelement <2 x float> %i.fc, i64 0 ; 2 uses
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.fj = fneg float %i.fi                        ; 2 uses
  store float %i.fj, ptr %i.ez, align 8, !tbaa !257
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %i.fk = phi float [ %i.fi, %.lr.ph ], [ %i.fj, %bb.m ]
  %i.fl = extractelement <2 x float> %i.fe, i64 1 ; 2 uses
  %i.fm = fcmp olt float %i.fl, 0.000000e+00
  %i.fn = fcmp ogt float %i.fl, %i.w
  %or.cond82 = select i1 %i.fm, i1 true, i1 %i.fn
  %i.fo = extractelement <2 x float> %i.fc, i64 1 ; 2 uses
  br i1 %or.cond82, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fp = fneg float %i.fo                        ; 2 uses
  store float %i.fp, ptr %i.fa, align 4, !tbaa !263
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.fq = phi float [ %i.fo, %bb.n ], [ %i.fp, %bb.o ]
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ey, i64 20 ; 2 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !264 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 5 uses
  %i.fu = load float, ptr %i.ft, align 8, !tbaa !265
  %i.fv = fadd float %i.fs, %i.fu                 ; 4 uses
  store float %i.fv, ptr %i.ft, align 8, !tbaa !265
  %i.fw = fcmp olt float %i.fv, 1.000000e+01
  %i.fx = fcmp ogt float %i.fv, 8.000000e+01      ; 2 uses
  %or.cond83 = or i1 %i.fw, %i.fx
  br i1 %or.cond83, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fy = fneg float %i.fs
  store float %i.fy, ptr %i.fr, align 4, !tbaa !264
  %i.fz = select i1 %i.fx, float 8.000000e+01, float %i.fv ; 2 uses
  %i.ga = fcmp ogt float %i.fz, 1.000000e+01
  %.sroa.speculated = select i1 %i.ga, float %i.fz, float 1.000000e+01
  store float %.sroa.speculated, ptr %i.ft, align 8, !tbaa !265
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ey, i64 24 ; 3 uses
  %i.gc = fpext float %i.fk to double
  %i.gd = fpext float %i.fq to double
  %i.ge = and i64 %.sroa.0169.2215, 4294967295
  %i.gf = mul nuw i64 %i.ge, 4164903690
  %i.gg = lshr i64 %.sroa.0169.2215, 32
  %i.gh = add nuw i64 %i.gf, %i.gg                ; 3 uses
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = urem i32 %i.gi, 3
  %i.gk = add nuw nsw i32 %i.gj, 1
  %i.gl = uitofp nneg i32 %i.gk to double
  %i.gm = load double, ptr %i.gb, align 8, !tbaa !215, !noalias !266
  %i.gn = fsub double %i.gm, %i.gc
  %i.go = getelementptr inbounds nuw i8, ptr %i.ey, i64 40 ; 2 uses
  store double %i.gn, ptr %i.gb, align 8, !tbaa !215
  %i.gp = load <2 x double>, ptr %i.go, align 8, !tbaa !215, !noalias !266
  %i.gq = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gr = insertelement <2 x double> %i.gq, double %i.gl, i64 1
  %i.gs = fsub <2 x double> %i.gp, %i.gr
  store <2 x double> %i.gs, ptr %i.go, align 8, !tbaa !215
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store i64 0, ptr %i.m, align 8
  store i32 50397184, ptr %5, align 8, !tbaa !101
  store ptr %3, ptr %i.l, align 8, !tbaa !103
  %i.gt = load float, ptr %i.ey, align 8, !tbaa !269
  %i.gu = insertelement <4 x float> poison, float %i.gt, i64 0
  %i.gv = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.gu)
  %i.gw = load float, ptr %i.fb, align 4, !tbaa !270
  %i.gx = insertelement <4 x float> poison, float %i.gw, i64 0
  %i.gy = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.gx)
  %.sroa.2.0.insert.ext.i = zext i32 %i.gy to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.gv to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.gz = load float, ptr %i.ft, align 8, !tbaa !265
  %i.ha = fptosi float %i.gz to i32
  invoke void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %.sroa.0.0.insert.insert.i, i32 noundef %i.ha, ptr noundef nonnull align 8 dereferenceable(32) %i.gb, i32 noundef -1, i32 noundef 16, i32 noundef 0)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i64 0, ptr %i.o, align 8
  store i32 50397184, ptr %6, align 8, !tbaa !101
  store ptr %3, ptr %i.n, align 8, !tbaa !103
  %i.hb = load float, ptr %i.ey, align 8, !tbaa !269
  %i.hc = insertelement <4 x float> poison, float %i.hb, i64 0
  %i.hd = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.hc)
  %i.he = load float, ptr %i.fb, align 4, !tbaa !270
  %i.hf = insertelement <4 x float> poison, float %i.he, i64 0
  %i.hg = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.hf)
  %.sroa.2.0.insert.ext.i97 = zext i32 %i.hg to i64
  %.sroa.2.0.insert.shift.i98 = shl nuw i64 %.sroa.2.0.insert.ext.i97, 32
  %.sroa.0.0.insert.ext.i99 = zext i32 %i.hd to i64
  %.sroa.0.0.insert.insert.i100 = or disjoint i64 %.sroa.2.0.insert.shift.i98, %.sroa.0.0.insert.ext.i99
  %i.hh = load float, ptr %i.ft, align 8, !tbaa !265
  %i.hi = fptosi float %i.hh to i32
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ey, i64 56
  invoke void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 %.sroa.0.0.insert.insert.i100, i32 noundef %i.hi, ptr noundef nonnull align 8 dereferenceable(32) %i.hj, i32 noundef 1, i32 noundef 16, i32 noundef 0)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.hk = add nuw i64 %.049216, 1                 ; 2 uses
  %exitcond233.not = icmp eq i64 %i.hk, %umax
  br i1 %exitcond233.not, label %._crit_edge, label %.lr.ph, !llvm.loop !271

bb.u:                                             ; preds = %bb.r
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.ac

bb.v:                                             ; preds = %bb.s
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.ac

_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc94, %bb.k
  %i.hn = load ptr, ptr %i.t, align 8, !tbaa !272 ; 4 uses
  %i.ho = load ptr, ptr %i.u, align 8, !tbaa !107
  %.not.i.i = icmp eq ptr %i.hn, %i.ho
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit
  store i32 20, ptr %i.hn, align 4, !tbaa !273
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  store ptr %i.hp, ptr %i.t, align 8, !tbaa !272
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.x:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit
  %i.hq = load ptr, ptr %i.s, align 8, !tbaa !104 ; 4 uses
  %i.hr = ptrtoint ptr %i.hn to i64
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = sub i64 %i.hr, %i.hs                    ; 6 uses
  %i.hu = icmp eq i64 %i.ht, 9223372036854775804
  br i1 %i.hu, label %bb.y, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.89) #36
          to label %.noexc101 unwind label %.loopexit.split-lp187

.noexc101:                                        ; preds = %bb.y
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.x
  %i.hv = ashr exact i64 %i.ht, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hv, i64 1)
  %i.hw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.hv ; 2 uses
  %i.hx = icmp ult i64 %i.hw, %i.hv
  %i.hy = call i64 @llvm.umin.i64(i64 %i.hw, i64 2305843009213693951)
  %i.hz = select i1 %i.hx, i64 2305843009213693951, i64 %i.hy ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.hz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ia = shl nuw nsw i64 %i.hz, 2
  %i.ib = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ia) #34
          to label %.noexc102 unwind label %.loopexit186 ; 4 uses

.noexc102:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ic = getelementptr inbounds i8, ptr %i.ib, i64 %i.ht ; 2 uses
  store i32 20, ptr %i.ic, align 4, !tbaa !273
  %i.id = icmp sgt i64 %i.ht, 0
  br i1 %i.id, label %bb.z, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.z:                                             ; preds = %.noexc102
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ib, ptr align 4 %i.hq, i64 %i.ht, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.z, %.noexc102
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %i.ht) #32
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.aa, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ib, ptr %i.s, align 8, !tbaa !104
  store ptr %i.ie, ptr %i.t, align 8, !tbaa !272
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.hz
  store ptr %i.if, ptr %i.u, align 8, !tbaa !107
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.w
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.ig = add nuw nsw i32 %.050218, 1             ; 2 uses
  %exitcond234.not = icmp eq i32 %i.ig, 40
  br i1 %exitcond234.not, label %bb.g, label %bb.h, !llvm.loop !274

bb.ab:                                            ; preds = %bb.k, %bb.j
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit186:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit188 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp187:                            ; preds = %bb.y
  %lpad.loopexit.split-lp189 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit186, %.loopexit.split-lp187, %bb.u, %bb.v, %bb.ab
  %.pn71.pn.pn = phi { ptr, i32 } [ %i.ih, %bb.ab ], [ %i.hl, %bb.u ], [ %i.hm, %bb.v ], [ %lpad.loopexit188, %.loopexit186 ], [ %lpad.loopexit.split-lp189, %.loopexit.split-lp187 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #33
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.l
  %.pn71.pn.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn, %bb.ac ], [ %i.ex, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.ar

bb.ae:                                            ; preds = %.lr.ph222, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit114
  %indvars.iv = phi i64 [ %i.es, %.lr.ph222 ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit114 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.ii = load ptr, ptr %i.r, align 8, !tbaa !224
  %i.ij = getelementptr inbounds nuw [208 x i8], ptr %i.ii, i64 %indvars.iv.next
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(208) %i.ij)
          to label %bb.af unwind label %bb.an

bb.af:                                            ; preds = %bb.ae
  %i.ik = load ptr, ptr %i.p, align 8, !tbaa !212 ; 3 uses
  %i.il = load ptr, ptr %i.q, align 8, !tbaa !214
  %.not.i.i103 = icmp eq ptr %i.ik, %i.il
  br i1 %.not.i.i103, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ik, ptr noundef nonnull align 8 dereferenceable(208) %7) #33
  %i.im = load ptr, ptr %i.p, align 8, !tbaa !212
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 208
  store ptr %i.in, ptr %i.p, align 8, !tbaa !212
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backEOS1_.exit

bb.ah:                                            ; preds = %bb.af
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr %i.ik, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backEOS1_.exit unwind label %bb.ao

_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.ag, %bb.ah
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.io = load ptr, ptr %i.t, align 8, !tbaa !272 ; 4 uses
  %i.ip = load ptr, ptr %i.u, align 8, !tbaa !107
  %.not.i.i105 = icmp eq ptr %i.io, %i.ip
  br i1 %.not.i.i105, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backEOS1_.exit
  store i32 15, ptr %i.io, align 4, !tbaa !273
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  store ptr %i.iq, ptr %i.t, align 8, !tbaa !272
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit114

bb.aj:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backEOS1_.exit
  %i.ir = load ptr, ptr %i.s, align 8, !tbaa !104 ; 4 uses
  %i.is = ptrtoint ptr %i.io to i64
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = sub i64 %i.is, %i.it                    ; 6 uses
  %i.iv = icmp eq i64 %i.iu, 9223372036854775804
  br i1 %i.iv, label %bb.ak, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i106

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.89) #36
          to label %.noexc112 unwind label %.loopexit.split-lp

.noexc112:                                        ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i106: ; preds = %bb.aj
  %i.iw = ashr exact i64 %i.iu, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i107 = call i64 @llvm.umax.i64(i64 %i.iw, i64 1)
  %i.ix = add nsw i64 %.sroa.speculated.i.i.i.i107, %i.iw ; 2 uses
  %i.iy = icmp ult i64 %i.ix, %i.iw
  %i.iz = call i64 @llvm.umin.i64(i64 %i.ix, i64 2305843009213693951)
  %i.ja = select i1 %i.iy, i64 2305843009213693951, i64 %i.iz ; 3 uses
  %.not.i.i.i.i108 = icmp ne i64 %i.ja, 0
  call void @llvm.assume(i1 %.not.i.i.i.i108)
  %i.jb = shl nuw nsw i64 %i.ja, 2
  %i.jc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jb) #34
          to label %.noexc113 unwind label %.loopexit ; 4 uses

.noexc113:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i106
  %i.jd = getelementptr inbounds i8, ptr %i.jc, i64 %i.iu ; 2 uses
  store i32 15, ptr %i.jd, align 4, !tbaa !273
  %i.je = icmp sgt i64 %i.iu, 0
  br i1 %i.je, label %bb.al, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i109

bb.al:                                            ; preds = %.noexc113
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jc, ptr align 4 %i.ir, i64 %i.iu, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i109

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i109: ; preds = %bb.al, %.noexc113
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %.not.i17.i.i.i110 = icmp eq ptr %i.ir, null
  br i1 %.not.i17.i.i.i110, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i111, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i109
  call void @_ZdlPvm(ptr noundef nonnull %i.ir, i64 noundef %i.iu) #32
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i111

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i111: ; preds = %bb.am, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i109
  store ptr %i.jc, ptr %i.s, align 8, !tbaa !104
end_hunk_1
