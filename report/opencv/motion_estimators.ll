Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/motion_estimators?download=true
inline.NumInlined: 2420
inline.NumDeleted: 944
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN2cv6detail20AffineBasedEstimator8estimateERKSt6vectorINS0_13ImageFeaturesESaIS3_EERKS2_INS0_11MatchesInfoESaIS8_EERS2_INS0_12CameraParamsESaISD_EE:bb.a
  %i.is = load ptr, ptr %8, align 8, !tbaa !63    ; 3 uses
  %i.it = load ptr, ptr %i.aa, align 8, !tbaa !60 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.is, %i.it
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx114listIN2cv6detail9GraphEdgeESaIS4_EEES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i15

.lr.ph.i.i.i.i15:                                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx114listIN2cv6detail9GraphEdgeESaIS4_EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.iw, %_ZSt8_DestroyINSt7__cxx114listIN2cv6detail9GraphEdgeESaIS4_EEEEvPT_.exit.i.i.i.i ], [ %i.is, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 4 uses
  %i.iu = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !46 ; 2 uses
  %.not8.i.i.i.i.i.i.i = icmp eq ptr %i.iu, %.05.i.i.i.i
  br i1 %.not8.i.i.i.i.i.i.i, label %_ZSt8_DestroyINSt7__cxx114listIN2cv6detail9GraphEdgeESaIS4_EEEEvPT_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i15, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.iv, %.lr.ph.i.i.i.i.i.i.i ], [ %i.iu, %.lr.ph.i.i.i.i15 ] ; 2 uses
  %i.iv = load ptr, ptr %.09.i.i.i.i.i.i.i, align 8, !tbaa !46 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i.i.i, i64 noundef 32) #25
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.iv, %.05.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyINSt7__cxx114listIN2cv6detail9GraphEdgeESaIS4_EEEEvPT_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !50

_ZSt8_DestroyINSt7__cxx114listIN2cv6detail9GraphEdgeESaIS4_EEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i15
  %i.iw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.iw, %i.it
  br i1 %.not.i.i.i.i16, label %_ZSt8_DestroyIPNSt7__cxx114listIN2cv6detail9GraphEdgeESaIS4_EEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i15, !llvm.loop !122

_ZSt8_DestroyIPNSt7__cxx114listIN2cv6detail9GraphEdgeESaIS4_EEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx114listIN2cv6detail9GraphEdgeESaIS4_EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !63
  br label %_ZSt8_DestroyIPNSt7__cxx114listIN2cv6detail9GraphEdgeESaIS4_EEES6_EvT_S8_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx114listIN2cv6detail9GraphEdgeESaIS4_EEES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx114listIN2cv6detail9GraphEdgeESaIS4_EEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ix = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx114listIN2cv6detail9GraphEdgeESaIS4_EEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.is, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ix, null
  br i1 %.not.i.i1.i.i, label %_ZN2cv6detail5GraphD2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx114listIN2cv6detail9GraphEdgeESaIS4_EEES6_EvT_S8_RSaIT0_E.exit.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !123
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = ptrtoint ptr %i.ix to i64
  %i.jc = sub i64 %i.ja, %i.jb
  call void @_ZdlPvm(ptr noundef nonnull %i.ix, i64 noundef %i.jc) #25
  br label %_ZN2cv6detail5GraphD2Ev.exit

_ZN2cv6detail5GraphD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPNSt7__cxx114listIN2cv6detail9GraphEdgeESaIS4_EEES6_EvT_S8_RSaIT0_E.exit.i.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  ret i1 true

bb.am:                                            ; preds = %bb.a
  %i.jd = landingpad { ptr, i32 }
          cleanup
  %i.je = getelementptr inbounds nuw i8, ptr %7, i64 240
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.je) #24
  %i.jf = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.jf) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume

bb.an:                                            ; preds = %_ZN2cv6detail5GraphC2Ei.exit
  %i.jg = landingpad { ptr, i32 }
          cleanup
  %.pre24 = load ptr, ptr %9, align 8, !tbaa !51
  br label %.body

bb.ao:                                            ; preds = %bb.d
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body:                                            ; preds = %bb.ak, %bb.an
  %i.ji = phi ptr [ %.pre24, %bb.an ], [ %i.y, %bb.ak ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.jg, %bb.an ], [ %.pn.pn.pn64.i, %bb.ak ] ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorIiSaIiEED2Ev.exit18, label %.body.thread

.body.thread:                                     ; preds = %bb.aj, %bb.ao, %.body
  %.pn57 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ig, %bb.aj ], [ %i.jh, %bb.ao ]
  %i.jj = phi ptr [ %i.ji, %.body ], [ %i.y, %bb.aj ], [ %i.y, %bb.ao ] ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !121
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = ptrtoint ptr %i.jj to i64
  %i.jo = sub i64 %i.jm, %i.jn
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef %i.jo) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit18

_ZNSt6vectorIiSaIiEED2Ev.exit18:                  ; preds = %.body, %.body.thread
  %.pn58 = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn57, %.body.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZN2cv6detail5GraphD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN2cv6detail18BundleAdjusterBase8estimateERKSt6vectorINS0_13ImageFeaturesESaIS3_EERKS2_INS0_11MatchesInfoESaIS8_EERS2_INS0_12CameraParamsESaISD_EE(ptr noundef nonnull align 8 dereferenceable(504) initializes((216, 220), (232, 248)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::list", align 8 ; 15 uses
  %5 = alloca %"class.cv::LevMarq", align 8       ; 7 uses
  %6 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %7 = alloca %"class.std::function", align 8     ; 9 uses
  %8 = alloca %"struct.cv::LevMarq::Settings", align 8 ; 9 uses
  %9 = alloca %"class.cv::detail::Graph", align 8 ; 12 uses
  %10 = alloca %"class.std::vector.25", align 8   ; 9 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %12 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %13 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %i.a = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv6detail17stitchingLogLevelEv() ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 224
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 6 uses
  store i32 %i.i, ptr %i.j, align 8, !tbaa !172
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.d, ptr %i.k, align 8, !tbaa !180
  %i.l = load ptr, ptr %2, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !181
  %i.n = load ptr, ptr %0, align 8, !tbaa !95
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !182  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !183  ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.r
  br i1 %.not.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.r, ptr %i.s, align 8, !tbaa !183
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit

_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit:    ; preds = %bb.a, %_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.u = phi ptr [ %i.t, %bb.a ], [ %i.r, %_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.v = load i32, ptr %i.j, align 8, !tbaa !172  ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %.preheader76.lr.ph, label %._crit_edge84

.preheader76.lr.ph:                               ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  br label %.preheader76

.preheader76:                                     ; preds = %.preheader76.lr.ph, %._crit_edge
  %i.z = phi i32 [ %i.v, %.preheader76.lr.ph ], [ %i.an, %._crit_edge ] ; 3 uses
  %i.aa = phi ptr [ %i.u, %.preheader76.lr.ph ], [ %i.ao, %._crit_edge ] ; 2 uses
  %indvars.iv111 = phi i64 [ 0, %.preheader76.lr.ph ], [ %indvars.iv.next112, %._crit_edge ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.preheader76.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 3 uses
  %i.ab = sext i32 %i.z to i64
  %i.ac = icmp slt i64 %indvars.iv.next112, %i.ab
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader76
  %i.ad = trunc nuw nsw i64 %indvars.iv111 to i32
  br label %bb.b

._crit_edge84.loopexit:                           ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !182
  br label %._crit_edge84

._crit_edge84:                                    ; preds = %._crit_edge84.loopexit, %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit
  %i.ae = phi ptr [ %i.r, %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit ], [ %.pre, %._crit_edge84.loopexit ] ; 5 uses
  %i.af = phi ptr [ %i.u, %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit ], [ %i.ao, %._crit_edge84.loopexit ] ; 2 uses
  %.lcssa79 = phi i32 [ %i.v, %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit ], [ %i.an, %._crit_edge84.loopexit ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  store i32 0, ptr %i.ag, align 4, !tbaa !184
  %.not = icmp eq ptr %i.af, %i.ae
  br i1 %.not, label %bb.h, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge84
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 3 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 2 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !54    ; 3 uses
  %i.am = icmp eq i64 %i.aj, 8
  br i1 %i.am, label %.epil.preheader, label %.lr.ph87.new

.lr.ph87.new:                                     ; preds = %.lr.ph87
  %unroll_iter = and i64 %i.ak, -2
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit, %.preheader76
  %i.an = phi i32 [ %i.z, %.preheader76 ], [ %i.cq, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.ao = phi ptr [ %i.aa, %.preheader76 ], [ %i.cp, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %i.ap = add nsw i32 %i.an, -1
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next112, %i.aq
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.ar, label %.preheader76, label %._crit_edge84.loopexit, !llvm.loop !185

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit
  %i.as = phi ptr [ %i.aa, %.lr.ph ], [ %i.cp, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit ] ; 6 uses
  %indvars.iv108 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next109, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.at = phi i32 [ %i.z, %.lr.ph ], [ %i.cq, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit ]
  %i.au = load ptr, ptr %i.m, align 8, !tbaa !181
  %i.av = mul nuw nsw i32 %i.at, %i.ad
  %i.aw = trunc nuw nsw i64 %indvars.iv108 to i32
  %i.ax = add nsw i32 %i.av, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [280 x i8], ptr %i.au, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 272
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !186
  %i.bc = load double, ptr %i.x, align 8, !tbaa !187
  %i.bd = fcmp ogt double %i.bb, %i.bc
  br i1 %i.bd, label %bb.c, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.2.0.insert.shift.i = shl nuw nsw i64 %indvars.iv108, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %indvars.iv111 ; 2 uses
  %i.be = load ptr, ptr %i.y, align 8, !tbaa !188
  %.not.i.i55 = icmp eq ptr %i.as, %i.be
  br i1 %.not.i.i55, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.as, align 4
  %i.bf = load ptr, ptr %i.s, align 8, !tbaa !183
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  store ptr %i.bg, ptr %i.s, align 8, !tbaa !183
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.bh = load ptr, ptr %i.q, align 8, !tbaa !182 ; 7 uses
  %i.bi = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64               ; 4 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 3 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775800
  br i1 %i.bl, label %bb.f, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #27
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.bm = ashr exact i64 %i.bk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bm ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  %i.bp = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 1152921504606846975)
  %i.bq = select i1 %i.bo, i64 1152921504606846975, i64 %i.bp ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #26 ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bk
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bt, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bh, %i.as
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bu = ptrtoaddr ptr %i.bs to i64
  %i.bv = add i64 %i.bi, -8
  %i.bw = sub i64 %i.bv, %i.bj                    ; 2 uses
  %i.bx = lshr i64 %i.bw, 3
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 24
  %i.bz = sub i64 %i.bj, %i.bu
  %diff.check = icmp ugt i64 %i.bz, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader162, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.by, 4611686018427387900     ; 3 uses
  %i.ca = shl i64 %n.vec, 3                       ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bs, i64 %i.ca  ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bh, i64 %i.ca
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bs, i64 %i.cd ; 2 uses
  %next.gep159 = getelementptr i8, ptr %i.bh, i64 %i.cd ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.ce = getelementptr i8, ptr %next.gep159, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep159, align 4, !alias.scope !192, !noalias !189
  %wide.load160 = load <2 x i64>, ptr %i.ce, align 4, !alias.scope !192, !noalias !189
  %i.cf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !189, !noalias !192
  store <2 x i64> %wide.load160, ptr %i.cf, align 4, !alias.scope !189, !noalias !192
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !194

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader162

.lr.ph.i.i.i.i.i.i.preheader162:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cb, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader162, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader162 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader162 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.ch = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !192, !noalias !189
  store i64 %i.ch, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !189, !noalias !192
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ci, %i.as
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !195

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bs, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cb, %middle.block ], [ %i.cj, %.lr.ph.i.i.i.i.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.cl = load ptr, ptr %i.y, align 8, !tbaa !188
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = sub i64 %i.cm, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.cn) #25
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.bs, ptr %i.q, align 8, !tbaa !182
  store ptr %i.ck, ptr %i.s, align 8, !tbaa !183
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bq
  store ptr %i.co, ptr %i.y, align 8, !tbaa !188
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.d, %bb.b
  %i.cp = phi ptr [ %i.ck, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.bg, %bb.d ], [ %i.as, %bb.b ] ; 2 uses
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %i.cq = load i32, ptr %i.j, align 8, !tbaa !172 ; 3 uses
  %i.cr = trunc nuw i64 %indvars.iv.next109 to i32
  %i.cs = icmp sgt i32 %i.cq, %i.cr
  br i1 %i.cs, label %bb.b, label %._crit_edge, !llvm.loop !196

._crit_edge88.unr-lcssa:                          ; preds = %bb.i
  %i.ct = and i64 %i.aj, 8
  %lcmp.mod.not = icmp eq i64 %i.ct, 0
  br i1 %lcmp.mod.not, label %._crit_edge88, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge88.unr-lcssa, %.lr.ph87
  %.epil.init = phi i32 [ 0, %.lr.ph87 ], [ %i.en, %._crit_edge88.unr-lcssa ]
  %.04085.epil.init = phi i64 [ 0, %.lr.ph87 ], [ %i.eo, %._crit_edge88.unr-lcssa ]
  %lcmp.mod169 = trunc i64 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod169)
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.04085.epil.init ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !197
  %i.cw = mul nsw i32 %i.cv, %.lcssa79
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !199
  %i.cz = add nsw i32 %i.cw, %i.cy
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [280 x i8], ptr %i.al, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !124
  %i.de = add nsw i32 %.epil.init, %i.dd
  br label %._crit_edge88

._crit_edge88:                                    ; preds = %._crit_edge88.unr-lcssa, %.epil.preheader
  %.lcssa = phi i32 [ %i.en, %._crit_edge88.unr-lcssa ], [ %i.de, %.epil.preheader ] ; 2 uses
  store i32 %.lcssa, ptr %i.ag, align 4, !tbaa !184
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge88, %._crit_edge84
  %i.df = phi i32 [ %.lcssa, %._crit_edge88 ], [ 0, %._crit_edge84 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !200
  %i.di = mul nsw i32 %i.dh, %i.df
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.dl, align 8
  store i32 50397184, ptr %6, align 8, !tbaa !98
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !101
  %i.dm = ptrtoint ptr %0 to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.dp, align 8
  store i64 %i.dm, ptr %7, align 8, !tbaa !201
  store ptr @"_ZNSt17_Function_handlerIFbRKN2cv17_InputOutputArrayERKNS0_12_OutputArrayES6_EZNS0_6detail18BundleAdjusterBase8estimateERKSt6vectorINS8_13ImageFeaturesESaISB_EERKSA_INS8_11MatchesInfoESaISG_EERSA_INS8_12CameraParamsESaISL_EEE3$_0E9_M_invokeERKSt9_Any_dataS3_S6_S6_", ptr %i.do, align 8, !tbaa !203
  store ptr @"_ZNSt17_Function_handlerIFbRKN2cv17_InputOutputArrayERKNS0_12_OutputArrayES6_EZNS0_6detail18BundleAdjusterBase8estimateERKSt6vectorINS8_13ImageFeaturesESaISB_EERKSA_INS8_11MatchesInfoESaISG_EERSA_INS8_12CameraParamsESaISL_EEE3$_0E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation", ptr %i.dn, align 8, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZN2cv7LevMarq8SettingsC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %8)
          to label %bb.j unwind label %bb.q

bb.i:                                             ; preds = %bb.i, %.lr.ph87.new
  %i.dq = phi i32 [ 0, %.lr.ph87.new ], [ %i.en, %bb.i ]
  %.04085 = phi i64 [ 0, %.lr.ph87.new ], [ %i.eo, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph87.new ], [ %niter.next.1, %bb.i ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.04085 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !197
  %i.dt = mul nsw i32 %i.ds, %.lcssa79
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !199
  %i.dw = add nsw i32 %i.dt, %i.dv
end_hunk_0
begin_hunk_1_@_ZN2cv6detail17BundleAdjusterRay9calcErrorERNS_3MatE:bb.a
  %i.ix = shl i64 %i.iu, 1
  %.sink.idx.i209 = select i1 %i.hn, i64 0, i64 %i.ix
  %.sink.i210 = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.sink.idx.i209 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.sink.i210, i64 16
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !25
  %i.ja = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !256
  %i.jc = sext i32 %i.jb to i64
  %i.jd = load ptr, ptr %i.ho, align 8, !tbaa !253
  %i.je = getelementptr inbounds nuw [28 x i8], ptr %i.jd, i64 %i.jc
  %i.jf = load double, ptr %i.hr, align 8, !tbaa !25
  %i.jg = load i64, ptr %i.bf, align 8            ; 2 uses
  %.sink.idx.i221 = select i1 %i.hs, i64 0, i64 %i.jg
  %.sink.i222 = getelementptr inbounds nuw i8, ptr %i.hq, i64 %.sink.idx.i221 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.sink.i222, i64 16
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !25
  %i.jj = shl i64 %i.jg, 1
  %.sink.idx.i227 = select i1 %i.hs, i64 0, i64 %i.jj
  %.sink.i228 = getelementptr inbounds nuw i8, ptr %i.hq, i64 %.sink.idx.i227 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.sink.i228, i64 16
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !25
  %i.jm = call double @sqrt(double noundef %i.ht) #24 ; 2 uses
  %i.jn = mul nsw i32 %.1111240, 3                ; 3 uses
  %i.jo = load i32, ptr %i.bg, align 4, !tbaa !97
  %i.jp = icmp slt i32 %i.jo, 2                   ; 3 uses
  %i.jq = load ptr, ptr %i.bh, align 8, !tbaa !102 ; 3 uses
  %i.jr = load i64, ptr %i.bi, align 8
  %i.js = sext i32 %i.jn to i64
  %i.jt = mul i64 %i.jr, %i.js
  %.sink.idx.i233 = select i1 %i.jp, i64 0, i64 %i.jt
  %.sink.i234 = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.sink.idx.i233
  %i.ju = add nsw i32 %i.jn, 1
  %i.jv = sext i32 %i.ju to i64
  %i.jw = load <2 x double>, ptr %i.hl, align 8, !tbaa !25 ; 2 uses
  %i.jx = load <2 x double>, ptr %.sink.i204, align 8, !tbaa !25 ; 2 uses
  %i.jy = shufflevector <2 x double> %i.jw, <2 x double> %i.jx, <2 x i32> <i32 1, i32 3>
  %i.jz = shufflevector <2 x double> %i.jw, <2 x double> %i.jx, <2 x i32> <i32 0, i32 2>
  %i.ka = insertelement <2 x double> poison, double %i.it, i64 0
  %i.kb = insertelement <2 x double> %i.ka, double %i.iw, i64 1
  %i.kc = load <2 x double>, ptr %i.hq, align 8, !tbaa !25 ; 2 uses
  %i.kd = load <2 x double>, ptr %.sink.i222, align 8, !tbaa !25 ; 2 uses
  %i.ke = shufflevector <2 x double> %i.kc, <2 x double> %i.kd, <2 x i32> <i32 1, i32 3>
  %i.kf = shufflevector <2 x double> %i.kc, <2 x double> %i.kd, <2 x i32> <i32 0, i32 2>
  %i.kg = insertelement <2 x double> poison, double %i.jf, i64 0
  %i.kh = insertelement <2 x double> %i.kg, double %i.ji, i64 1
  %i.ki = load <2 x float>, ptr %i.is, align 4, !tbaa !135 ; 2 uses
  %i.kj = load <2 x double>, ptr %.sink.i210, align 8, !tbaa !25 ; 2 uses
  %i.kk = load <2 x float>, ptr %i.je, align 4, !tbaa !135 ; 2 uses
  %i.kl = shufflevector <2 x float> %i.ki, <2 x float> %i.kk, <2 x i32> <i32 0, i32 2>
  %i.km = fpext <2 x float> %i.kl to <2 x double> ; 3 uses
  %i.kn = shufflevector <2 x float> %i.ki, <2 x float> %i.kk, <2 x i32> <i32 1, i32 3>
  %i.ko = fpext <2 x float> %i.kn to <2 x double> ; 3 uses
  %i.kp = load <2 x double>, ptr %.sink.i228, align 8, !tbaa !25 ; 2 uses
  %i.kq = shufflevector <2 x double> %i.kj, <2 x double> %i.kp, <2 x i32> <i32 1, i32 3>
  %i.kr = fmul <2 x double> %i.kq, %i.ko
  %i.ks = shufflevector <2 x double> %i.kj, <2 x double> %i.kp, <2 x i32> <i32 0, i32 2>
  %i.kt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ks, <2 x double> %i.km, <2 x double> %i.kr)
  %i.ku = insertelement <2 x double> poison, double %i.iz, i64 0
  %i.kv = insertelement <2 x double> %i.ku, double %i.jl, i64 1
  %i.kw = fadd <2 x double> %i.kv, %i.kt          ; 3 uses
  %i.kx = shufflevector <2 x double> %i.ko, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ky = fmul <2 x double> %i.jy, %i.kx
  %i.kz = shufflevector <2 x double> %i.km, <2 x double> poison, <2 x i32> zeroinitializer
  %i.la = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jz, <2 x double> %i.kz, <2 x double> %i.ky)
  %i.lb = fadd <2 x double> %i.kb, %i.la          ; 3 uses
  %i.lc = shufflevector <2 x double> %i.ko, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ld = fmul <2 x double> %i.ke, %i.lc
  %i.le = shufflevector <2 x double> %i.km, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kf, <2 x double> %i.le, <2 x double> %i.ld)
  %i.lg = fadd <2 x double> %i.kh, %i.lf          ; 3 uses
  %i.lh = shufflevector <2 x double> %i.lb, <2 x double> %i.lg, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.li = fmul <2 x double> %i.lh, %i.lh
  %i.lj = shufflevector <2 x double> %i.lb, <2 x double> %i.lg, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.lk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lj, <2 x double> %i.lj, <2 x double> %i.li)
  %i.ll = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kw, <2 x double> %i.kw, <2 x double> %i.lk)
  %i.lm = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ll) ; 3 uses
  %i.ln = fdiv <2 x double> %i.kw, %i.lm          ; 2 uses
  %i.lo = shufflevector <2 x double> %i.lm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lp = fdiv <2 x double> %i.lb, %i.lo
  %i.lq = shufflevector <2 x double> %i.lm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lr = fdiv <2 x double> %i.lg, %i.lq
  %i.ls = fsub <2 x double> %i.lp, %i.lr
  %i.lt = insertelement <2 x double> poison, double %i.jm, i64 0
  %i.lu = shufflevector <2 x double> %i.lt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lv = fmul <2 x double> %i.lu, %i.ls          ; 2 uses
  %i.lw = extractelement <2 x double> %i.lv, i64 0
  store double %i.lw, ptr %.sink.i234, align 8, !tbaa !25
  %i.lx = load i64, ptr %i.bi, align 8
  %i.ly = mul i64 %i.lx, %i.jv
  %.sink.idx.i235 = select i1 %i.jp, i64 0, i64 %i.ly
  %.sink.i236 = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.sink.idx.i235
  %i.lz = extractelement <2 x double> %i.lv, i64 1
  store double %i.lz, ptr %.sink.i236, align 8, !tbaa !25
  %i.ma = add nsw i32 %i.jn, 2
  %i.mb = load i64, ptr %i.bi, align 8
  %i.mc = sext i32 %i.ma to i64
  %i.md = mul i64 %i.mb, %i.mc
  %.sink.idx.i237 = select i1 %i.jp, i64 0, i64 %i.md
  %.sink.i238 = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.sink.idx.i237
  %shift = shufflevector <2 x double> %i.ln, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.ln, %shift
  %i.me = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.mf = fmul double %i.jm, %i.me
  store double %i.mf, ptr %.sink.i238, align 8, !tbaa !25
  %i.mg = add nsw i32 %.1111240, 1
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %.2112 = phi i32 [ %i.mg, %bb.ar ], [ %.1111240, %bb.aq ] ; 2 uses
  %i.mh = add nuw i64 %.0241, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.mh, %i.hg
  br i1 %exitcond.not, label %._crit_edge, label %bb.aq, !llvm.loop !300

bb.at:                                            ; preds = %bb.ap, %bb.al
  %.pn128.pn = phi { ptr, i32 } [ %.pn125.pn, %bb.ap ], [ %.pn122.pn, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #24
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ah
  %.pn128.pn.pn = phi { ptr, i32 } [ %.pn128.pn, %bb.at ], [ %.pn120, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #24
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.af
  %.pn128.pn.pn.pn = phi { ptr, i32 } [ %.pn128.pn.pn, %bb.au ], [ %.pn118, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ad
  %.pn128.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn128.pn.pn.pn, %bb.av ], [ %i.if, %bb.ad ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #24
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ac
  %.pn128.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn128.pn.pn.pn.pn, %bb.aw ], [ %i.ie, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.ab
  %.pn128.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn128.pn.pn.pn.pn.pn, %bb.ax ], [ %i.id, %bb.ab ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #24
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.aa
  %.pn128.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn128.pn.pn.pn.pn.pn.pn, %bb.ay ], [ %i.ic, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  resume { ptr, i32 } %.pn128.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6detail17BundleAdjusterRay12calcJacobianERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Range", align 8         ; 4 uses
  %3 = alloca %"class.cv::Range", align 4         ; 5 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.b = load i32, ptr %i.a, align 4, !tbaa !184
  %i.c = mul nsw i32 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !172
  %i.f = shl nsw i32 %i.e, 2
  tail call void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %i.c, i32 noundef %i.f, i32 noundef 6)
  %i.g = load i32, ptr %i.d, align 8, !tbaa !172
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 12 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 12 uses
  %.pre.pre = load i32, ptr %i.i, align 4, !tbaa !97
  %.pre48.pre = load ptr, ptr %i.j, align 8, !tbaa !102
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.b
  %.pre48 = phi ptr [ %.pre48.pre, %.preheader.lr.ph ], [ %i.ip, %bb.b ]
  %.pre = phi i32 [ %.pre.pre, %.preheader.lr.ph ], [ %i.in, %bb.b ]
  %indvars.iv45 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next46, %bb.b ] ; 2 uses
  %i.y = shl nuw nsw i64 %indvars.iv45, 2
  br label %bb.c

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_19calcDerivERKN2cv3MatES3_dS1_.exit
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %i.z = load i32, ptr %i.d, align 8, !tbaa !172
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next46, %i.aa
  br i1 %i.ab, label %.preheader, label %._crit_edge, !llvm.loop !301

bb.c:                                             ; preds = %.preheader, %_ZN12_GLOBAL__N_19calcDerivERKN2cv3MatES3_dS1_.exit
  %i.ac = phi ptr [ %.pre48, %.preheader ], [ %i.ip, %_ZN12_GLOBAL__N_19calcDerivERKN2cv3MatES3_dS1_.exit ]
  %i.ad = phi i32 [ %.pre, %.preheader ], [ %i.in, %_ZN12_GLOBAL__N_19calcDerivERKN2cv3MatES3_dS1_.exit ]
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_19calcDerivERKN2cv3MatES3_dS1_.exit ] ; 2 uses
  %i.ae = add nuw nsw i64 %indvars.iv, %i.y       ; 5 uses
  %i.af = icmp slt i32 %i.ad, 2
  %i.ag = load i64, ptr %i.k, align 8
  %i.ah = mul i64 %i.ag, %i.ae
  %.sink.idx.i = select i1 %i.af, i64 0, i64 %i.ah
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sink.idx.i ; 2 uses
  %i.ai = load double, ptr %.sink.i, align 8, !tbaa !25 ; 3 uses
  %i.aj = fadd double %i.ai, -1.000000e-03
  store double %i.aj, ptr %.sink.i, align 8, !tbaa !25
  %i.ak = load ptr, ptr %0, align 8, !tbaa !95
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.l)
  %i.an = fadd double %i.ai, 1.000000e-03
  %i.ao = load i32, ptr %i.i, align 4, !tbaa !97
  %i.ap = icmp slt i32 %i.ao, 2
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !102
  %i.ar = load i64, ptr %i.k, align 8
  %i.as = mul i64 %i.ar, %i.ae
  %.sink.idx.i24 = select i1 %i.ap, i64 0, i64 %i.as
  %.sink.i25 = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sink.idx.i24
  store double %i.an, ptr %.sink.i25, align 8, !tbaa !25
  %i.at = load ptr, ptr %0, align 8, !tbaa !95
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !302
  store i64 9223372034707292160, ptr %2, align 8, !noalias !302
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !302
  %i.aw = trunc nuw i64 %i.ae to i32
  store i32 %i.aw, ptr %3, align 4, !tbaa !261, !noalias !302
  %i.ax = trunc i64 %i.ae to i32
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.n, align 4, !tbaa !263, !noalias !302
  call void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !302
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !302
  %i.az = load i32, ptr %i.o, align 8, !tbaa !277 ; 21 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i, label %_ZN12_GLOBAL__N_19calcDerivERKN2cv3MatES3_dS1_.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.bb = load i32, ptr %i.p, align 4, !tbaa !97
  %.fr35.i = freeze i32 %i.bb
  %i.bc = icmp slt i32 %.fr35.i, 2
  %i.bd = load ptr, ptr %i.q, align 8, !tbaa !102 ; 26 uses
  %i.be = load i32, ptr %i.s, align 4, !tbaa !97
  %.fr.i = freeze i32 %i.be
  %i.bf = icmp slt i32 %.fr.i, 2                  ; 2 uses
  %i.bg = load ptr, ptr %i.t, align 8, !tbaa !102 ; 26 uses
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !97
  %.fr36.i = freeze i32 %i.bh
  %i.bi = icmp slt i32 %.fr36.i, 2                ; 4 uses
  %i.bj = load ptr, ptr %i.w, align 8, !tbaa !102 ; 26 uses
  br i1 %i.bc, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  br i1 %i.bf, label %.lr.ph.split.us.split.us.i, label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.split.us.i
  br i1 %i.bi, label %.lr.ph.split.us.split.us.split.us.i.preheader, label %.lr.ph.split.us.split.us.split.preheader.i

.lr.ph.split.us.split.us.split.us.i.preheader:    ; preds = %.lr.ph.split.us.split.us.i
  %i.bk = add nsw i32 %i.az, -1
  %xtraiter106 = and i32 %i.az, 3                 ; 3 uses
  %i.bl = icmp ult i32 %i.bk, 3
  br i1 %i.bl, label %.lr.ph.split.us.split.us.split.us.i.epil.preheader, label %.lr.ph.split.us.split.us.split.us.i.preheader.new

.lr.ph.split.us.split.us.split.us.i.preheader.new: ; preds = %.lr.ph.split.us.split.us.split.us.i.preheader
  %unroll_iter109 = and i32 %i.az, 2147483644
  br label %.lr.ph.split.us.split.us.split.us.i

.lr.ph.split.us.split.us.split.preheader.i:       ; preds = %.lr.ph.split.us.split.us.i
  %wide.trip.count73.i = zext nneg i32 %i.az to i64 ; 2 uses
  %xtraiter101 = and i64 %wide.trip.count73.i, 1
  %i.bm = icmp eq i32 %i.az, 1
  br i1 %i.bm, label %.lr.ph.split.us.split.us.split.i.epil.preheader, label %.lr.ph.split.us.split.us.split.preheader.i.new

.lr.ph.split.us.split.us.split.preheader.i.new:   ; preds = %.lr.ph.split.us.split.us.split.preheader.i
  %unroll_iter104 = and i64 %wide.trip.count73.i, 2147483646
  br label %.lr.ph.split.us.split.us.split.i

.lr.ph.split.us.split.us.split.us.i:              ; preds = %.lr.ph.split.us.split.us.split.us.i, %.lr.ph.split.us.split.us.split.us.i.preheader.new
  %niter110 = phi i32 [ 0, %.lr.ph.split.us.split.us.split.us.i.preheader.new ], [ %niter110.next.3, %.lr.ph.split.us.split.us.split.us.i ]
  %i.bn = load double, ptr %i.bd, align 8, !tbaa !25
  %i.bo = load double, ptr %i.bg, align 8, !tbaa !25
  %i.bp = fsub double %i.bn, %i.bo
  %i.bq = fdiv double %i.bp, 2.000000e-03
  store double %i.bq, ptr %i.bj, align 8, !tbaa !25
  %i.br = load double, ptr %i.bd, align 8, !tbaa !25
  %i.bs = load double, ptr %i.bg, align 8, !tbaa !25
  %i.bt = fsub double %i.br, %i.bs
  %i.bu = fdiv double %i.bt, 2.000000e-03
  store double %i.bu, ptr %i.bj, align 8, !tbaa !25
  %i.bv = load double, ptr %i.bd, align 8, !tbaa !25
  %i.bw = load double, ptr %i.bg, align 8, !tbaa !25
  %i.bx = fsub double %i.bv, %i.bw
  %i.by = fdiv double %i.bx, 2.000000e-03
  store double %i.by, ptr %i.bj, align 8, !tbaa !25
  %i.bz = load double, ptr %i.bd, align 8, !tbaa !25
  %i.ca = load double, ptr %i.bg, align 8, !tbaa !25
  %i.cb = fsub double %i.bz, %i.ca
  %i.cc = fdiv double %i.cb, 2.000000e-03
  store double %i.cc, ptr %i.bj, align 8, !tbaa !25
  %niter110.next.3 = add nuw nsw i32 %niter110, 4 ; 2 uses
  %niter110.ncmp.3 = icmp eq i32 %niter110.next.3, %unroll_iter109
  br i1 %niter110.ncmp.3, label %_ZN12_GLOBAL__N_19calcDerivERKN2cv3MatES3_dS1_.exit.loopexit.unr-lcssa, label %.lr.ph.split.us.split.us.split.us.i, !llvm.loop !278

.lr.ph.split.us.split.us.split.i:                 ; preds = %.lr.ph.split.us.split.us.split.i, %.lr.ph.split.us.split.us.split.preheader.i.new
  %indvars.iv70.i = phi i64 [ 0, %.lr.ph.split.us.split.us.split.preheader.i.new ], [ %indvars.iv.next71.i.1, %.lr.ph.split.us.split.us.split.i ] ; 3 uses
  %niter105 = phi i64 [ 0, %.lr.ph.split.us.split.us.split.preheader.i.new ], [ %niter105.next.1, %.lr.ph.split.us.split.us.split.i ]
  %i.cd = load double, ptr %i.bd, align 8, !tbaa !25
  %i.ce = load double, ptr %i.bg, align 8, !tbaa !25
  %i.cf = fsub double %i.cd, %i.ce
  %i.cg = fdiv double %i.cf, 2.000000e-03
  %i.ch = load i64, ptr %i.x, align 8
  %i.ci = mul i64 %i.ch, %indvars.iv70.i
  %.sink.i11.us.us.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ci
  store double %i.cg, ptr %.sink.i11.us.us.i, align 8, !tbaa !25
  %indvars.iv.next71.i = or disjoint i64 %indvars.iv70.i, 1
  %i.cj = load double, ptr %i.bd, align 8, !tbaa !25
  %i.ck = load double, ptr %i.bg, align 8, !tbaa !25
  %i.cl = fsub double %i.cj, %i.ck
  %i.cm = fdiv double %i.cl, 2.000000e-03
  %i.cn = load i64, ptr %i.x, align 8
  %i.co = mul i64 %i.cn, %indvars.iv.next71.i
  %.sink.i11.us.us.i.1 = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.co
  store double %i.cm, ptr %.sink.i11.us.us.i.1, align 8, !tbaa !25
  %indvars.iv.next71.i.1 = add nuw nsw i64 %indvars.iv70.i, 2 ; 2 uses
  %niter105.next.1 = add i64 %niter105, 2         ; 2 uses
  %niter105.ncmp.1 = icmp eq i64 %niter105.next.1, %unroll_iter104
  br i1 %niter105.ncmp.1, label %_ZN12_GLOBAL__N_19calcDerivERKN2cv3MatES3_dS1_.exit.loopexit67.unr-lcssa, label %.lr.ph.split.us.split.us.split.i, !llvm.loop !278

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.split.us.i
  %wide.trip.count68.i = zext nneg i32 %i.az to i64 ; 4 uses
  br i1 %i.bi, label %.lr.ph.split.us.split.split.us.i.preheader, label %.lr.ph.split.us.split.split.i.preheader

.lr.ph.split.us.split.split.i.preheader:          ; preds = %.lr.ph.split.us.split.i
  %xtraiter91 = and i64 %wide.trip.count68.i, 1
  %i.cp = icmp eq i32 %i.az, 1
  br i1 %i.cp, label %.lr.ph.split.us.split.split.i.epil.preheader, label %.lr.ph.split.us.split.split.i.preheader.new

.lr.ph.split.us.split.split.i.preheader.new:      ; preds = %.lr.ph.split.us.split.split.i.preheader
  %unroll_iter94 = and i64 %wide.trip.count68.i, 2147483646
  br label %.lr.ph.split.us.split.split.i

.lr.ph.split.us.split.split.us.i.preheader:       ; preds = %.lr.ph.split.us.split.i
  %xtraiter96 = and i64 %wide.trip.count68.i, 1
  %i.cq = icmp eq i32 %i.az, 1
  br i1 %i.cq, label %.lr.ph.split.us.split.split.us.i.epil.preheader, label %.lr.ph.split.us.split.split.us.i.preheader.new

.lr.ph.split.us.split.split.us.i.preheader.new:   ; preds = %.lr.ph.split.us.split.split.us.i.preheader
  %unroll_iter99 = and i64 %wide.trip.count68.i, 2147483646
  br label %.lr.ph.split.us.split.split.us.i

.lr.ph.split.us.split.split.us.i:                 ; preds = %.lr.ph.split.us.split.split.us.i, %.lr.ph.split.us.split.split.us.i.preheader.new
  %indvars.iv65.i = phi i64 [ 0, %.lr.ph.split.us.split.split.us.i.preheader.new ], [ %indvars.iv.next66.i.1, %.lr.ph.split.us.split.split.us.i ] ; 3 uses
  %niter100 = phi i64 [ 0, %.lr.ph.split.us.split.split.us.i.preheader.new ], [ %niter100.next.1, %.lr.ph.split.us.split.split.us.i ]
  %i.cr = load double, ptr %i.bd, align 8, !tbaa !25
  %i.cs = load i64, ptr %i.u, align 8
  %i.ct = mul i64 %i.cs, %indvars.iv65.i
  %.sink.i9.us.us30.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ct
  %i.cu = load double, ptr %.sink.i9.us.us30.i, align 8, !tbaa !25
  %i.cv = fsub double %i.cr, %i.cu
  %i.cw = fdiv double %i.cv, 2.000000e-03
  store double %i.cw, ptr %i.bj, align 8, !tbaa !25
  %indvars.iv.next66.i = or disjoint i64 %indvars.iv65.i, 1
  %i.cx = load double, ptr %i.bd, align 8, !tbaa !25
  %i.cy = load i64, ptr %i.u, align 8
  %i.cz = mul i64 %i.cy, %indvars.iv.next66.i
  %.sink.i9.us.us30.i.1 = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cz
  %i.da = load double, ptr %.sink.i9.us.us30.i.1, align 8, !tbaa !25
  %i.db = fsub double %i.cx, %i.da
  %i.dc = fdiv double %i.db, 2.000000e-03
  store double %i.dc, ptr %i.bj, align 8, !tbaa !25
  %indvars.iv.next66.i.1 = add nuw nsw i64 %indvars.iv65.i, 2 ; 2 uses
  %niter100.next.1 = add i64 %niter100, 2         ; 2 uses
  %niter100.ncmp.1 = icmp eq i64 %niter100.next.1, %unroll_iter99
  br i1 %niter100.ncmp.1, label %_ZN12_GLOBAL__N_19calcDerivERKN2cv3MatES3_dS1_.exit.loopexit68.unr-lcssa, label %.lr.ph.split.us.split.split.us.i, !llvm.loop !278

.lr.ph.split.us.split.split.i:                    ; preds = %.lr.ph.split.us.split.split.i, %.lr.ph.split.us.split.split.i.preheader.new
  %indvars.iv60.i = phi i64 [ 0, %.lr.ph.split.us.split.split.i.preheader.new ], [ %indvars.iv.next61.i.1, %.lr.ph.split.us.split.split.i ] ; 4 uses
  %niter95 = phi i64 [ 0, %.lr.ph.split.us.split.split.i.preheader.new ], [ %niter95.next.1, %.lr.ph.split.us.split.split.i ]
  %i.dd = load double, ptr %i.bd, align 8, !tbaa !25
  %i.de = load i64, ptr %i.u, align 8
  %i.df = mul i64 %i.de, %indvars.iv60.i
  %.sink.i9.us.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.df
  %i.dg = load double, ptr %.sink.i9.us.i, align 8, !tbaa !25
  %i.dh = fsub double %i.dd, %i.dg
  %i.di = fdiv double %i.dh, 2.000000e-03
  %i.dj = load i64, ptr %i.x, align 8
  %i.dk = mul i64 %i.dj, %indvars.iv60.i
  %.sink.i11.us.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.dk
  store double %i.di, ptr %.sink.i11.us.i, align 8, !tbaa !25
  %indvars.iv.next61.i = or disjoint i64 %indvars.iv60.i, 1 ; 2 uses
  %i.dl = load double, ptr %i.bd, align 8, !tbaa !25
  %i.dm = load i64, ptr %i.u, align 8
  %i.dn = mul i64 %i.dm, %indvars.iv.next61.i
  %.sink.i9.us.i.1 = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.dn
  %i.do = load double, ptr %.sink.i9.us.i.1, align 8, !tbaa !25
  %i.dp = fsub double %i.dl, %i.do
end_hunk_1
begin_hunk_2_@_ZN2cv6detail27BundleAdjusterAffinePartial9calcErrorERNS_3MatE:bb.a
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.dh = add nuw i64 %.05987, 1                  ; 2 uses
  %i.di = load ptr, ptr %i.h, align 8, !tbaa !183
  %i.dj = load ptr, ptr %i.g, align 8, !tbaa !182 ; 2 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 3
  %i.do = icmp ult i64 %i.dh, %i.dn
  br i1 %i.do, label %bb.b, label %._crit_edge90, !llvm.loop !338

bb.l:                                             ; preds = %bb.b
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.m:                                             ; preds = %bb.c
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.x

bb.n:                                             ; preds = %bb.d
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.o:                                             ; preds = %bb.e
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.v

bb.p:                                             ; preds = %bb.f
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.v

bb.q:                                             ; preds = %bb.g
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.body.i, %bb.q
  %.pn68 = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.du, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.v

bb.s:                                             ; preds = %.lr.ph, %bb.u
  %.085 = phi i64 [ 0, %.lr.ph ], [ %i.fp, %bb.u ] ; 3 uses
  %.16184 = phi i32 [ %.06086, %.lr.ph ], [ %.262, %bb.u ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.da, i64 %.085
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !166
  %.not = icmp eq i8 %i.dw, 0
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.085 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !251
  %i.dz = sext i32 %i.dy to i64
  %i.ea = load ptr, ptr %i.db, align 8, !tbaa !253
  %i.eb = getelementptr inbounds nuw [28 x i8], ptr %i.ea, i64 %i.dz
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !256
  %i.ee = sext i32 %i.ed to i64
  %i.ef = load ptr, ptr %i.dc, align 8, !tbaa !253
  %i.eg = getelementptr inbounds nuw [28 x i8], ptr %i.ef, i64 %i.ee
  %i.eh = load double, ptr %i.df, align 8, !tbaa !25
  %i.ei = load i64, ptr %i.ap, align 8
  %.sink.idx.i = select i1 %i.dg, i64 0, i64 %i.ei
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sink.idx.i ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sink.i, i64 16
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !25
  %i.el = shl nsw i32 %.16184, 1                  ; 2 uses
  %i.em = load i32, ptr %i.aq, align 4, !tbaa !97
  %i.en = icmp slt i32 %i.em, 2                   ; 2 uses
  %i.eo = load ptr, ptr %i.ar, align 8, !tbaa !102 ; 2 uses
  %i.ep = load i64, ptr %i.as, align 8
  %i.eq = sext i32 %i.el to i64
  %i.er = mul i64 %i.ep, %i.eq
  %.sink.idx.i80 = select i1 %i.en, i64 0, i64 %i.er
  %.sink.i81 = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.sink.idx.i80
  %i.es = load <2 x float>, ptr %i.eb, align 4, !tbaa !135
  %i.et = fpext <2 x float> %i.es to <2 x double> ; 2 uses
  %i.eu = or disjoint i32 %i.el, 1
  %i.ev = sext i32 %i.eu to i64
  %i.ew = load <2 x double>, ptr %i.de, align 8, !tbaa !25 ; 2 uses
  %i.ex = load <2 x double>, ptr %.sink.i, align 8, !tbaa !25 ; 2 uses
  %i.ey = load <2 x float>, ptr %i.eg, align 4, !tbaa !135
  %i.ez = fpext <2 x float> %i.ey to <2 x double>
  %i.fa = shufflevector <2 x double> %i.ew, <2 x double> %i.ex, <2 x i32> <i32 1, i32 3>
  %i.fb = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fc = fmul <2 x double> %i.fa, %i.fb
  %i.fd = shufflevector <2 x double> %i.ew, <2 x double> %i.ex, <2 x i32> <i32 0, i32 2>
  %i.fe = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ff = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.fe, <2 x double> %i.fc)
  %i.fg = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.fh = insertelement <2 x double> %i.fg, double %i.ek, i64 1
  %i.fi = fadd <2 x double> %i.fh, %i.ff
  %i.fj = fsub <2 x double> %i.ez, %i.fi          ; 2 uses
  %i.fk = extractelement <2 x double> %i.fj, i64 0
  store double %i.fk, ptr %.sink.i81, align 8, !tbaa !25
  %i.fl = load i64, ptr %i.as, align 8
  %i.fm = mul i64 %i.fl, %i.ev
  %.sink.idx.i82 = select i1 %i.en, i64 0, i64 %i.fm
  %.sink.i83 = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.sink.idx.i82
  %i.fn = extractelement <2 x double> %i.fj, i64 1
  store double %i.fn, ptr %.sink.i83, align 8, !tbaa !25
  %i.fo = add nsw i32 %.16184, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.262 = phi i32 [ %i.fo, %bb.t ], [ %.16184, %bb.s ] ; 2 uses
  %i.fp = add nuw i64 %.085, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fp, %i.cy
  br i1 %exitcond.not, label %._crit_edge, label %bb.s, !llvm.loop !339

bb.v:                                             ; preds = %bb.r, %bb.p, %bb.o
  %.pn70.pn = phi { ptr, i32 } [ %.pn68, %bb.r ], [ %i.dt, %bb.p ], [ %i.ds, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #24
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.n
  %.pn70.pn.pn = phi { ptr, i32 } [ %.pn70.pn, %bb.v ], [ %i.dr, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.m
  %.pn70.pn.pn.pn = phi { ptr, i32 } [ %.pn70.pn.pn, %bb.w ], [ %i.dq, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #24
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.l
  %.pn70.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn70.pn.pn.pn, %bb.x ], [ %i.dp, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  resume { ptr, i32 } %.pn70.pn.pn.pn.pn
}

declare void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #1

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6detail27BundleAdjusterAffinePartial12calcJacobianERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Range", align 8         ; 4 uses
  %3 = alloca %"class.cv::Range", align 4         ; 5 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.b = load i32, ptr %i.a, align 4, !tbaa !184
  %i.c = shl nsw i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !172
  %i.f = shl nsw i32 %i.e, 2
  tail call void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %i.c, i32 noundef %i.f, i32 noundef 6)
  %i.g = load i32, ptr %i.d, align 8, !tbaa !172
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 12 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 12 uses
  %.pre.pre = load i32, ptr %i.i, align 4, !tbaa !97
  %.pre48.pre = load ptr, ptr %i.j, align 8, !tbaa !102
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.b
  %.pre48 = phi ptr [ %.pre48.pre, %.preheader.lr.ph ], [ %i.ip, %bb.b ]
  %.pre = phi i32 [ %.pre.pre, %.preheader.lr.ph ], [ %i.in, %bb.b ]
  %indvars.iv45 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next46, %bb.b ] ; 2 uses
  %i.y = shl nuw nsw i64 %indvars.iv45, 2
  br label %bb.c

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_19calcDerivERKN2cv3MatES3_dS1_.exit
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %i.z = load i32, ptr %i.d, align 8, !tbaa !172
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next46, %i.aa
  br i1 %i.ab, label %.preheader, label %._crit_edge, !llvm.loop !340

bb.c:                                             ; preds = %.preheader, %_ZN12_GLOBAL__N_19calcDerivERKN2cv3MatES3_dS1_.exit
  %i.ac = phi ptr [ %.pre48, %.preheader ], [ %i.ip, %_ZN12_GLOBAL__N_19calcDerivERKN2cv3MatES3_dS1_.exit ]
  %i.ad = phi i32 [ %.pre, %.preheader ], [ %i.in, %_ZN12_GLOBAL__N_19calcDerivERKN2cv3MatES3_dS1_.exit ]
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_19calcDerivERKN2cv3MatES3_dS1_.exit ] ; 2 uses
  %i.ae = add nuw nsw i64 %indvars.iv, %i.y       ; 5 uses
  %i.af = icmp slt i32 %i.ad, 2
  %i.ag = load i64, ptr %i.k, align 8
  %i.ah = mul i64 %i.ag, %i.ae
  %.sink.idx.i = select i1 %i.af, i64 0, i64 %i.ah
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sink.idx.i ; 2 uses
  %i.ai = load double, ptr %.sink.i, align 8, !tbaa !25 ; 3 uses
  %i.aj = fadd double %i.ai, -1.000000e-04
  store double %i.aj, ptr %.sink.i, align 8, !tbaa !25
  %i.ak = load ptr, ptr %0, align 8, !tbaa !95
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.l)
  %i.an = fadd double %i.ai, 1.000000e-04
  %i.ao = load i32, ptr %i.i, align 4, !tbaa !97
  %i.ap = icmp slt i32 %i.ao, 2
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !102
  %i.ar = load i64, ptr %i.k, align 8
  %i.as = mul i64 %i.ar, %i.ae
  %.sink.idx.i24 = select i1 %i.ap, i64 0, i64 %i.as
  %.sink.i25 = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sink.idx.i24
  store double %i.an, ptr %.sink.i25, align 8, !tbaa !25
  %i.at = load ptr, ptr %0, align 8, !tbaa !95
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !341
  store i64 9223372034707292160, ptr %2, align 8, !noalias !341
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !341
  %i.aw = trunc nuw i64 %i.ae to i32
  store i32 %i.aw, ptr %3, align 4, !tbaa !261, !noalias !341
  %i.ax = trunc i64 %i.ae to i32
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.n, align 4, !tbaa !263, !noalias !341
  call void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !341
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !341
  %i.az = load i32, ptr %i.o, align 8, !tbaa !277 ; 21 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i, label %_ZN12_GLOBAL__N_19calcDerivERKN2cv3MatES3_dS1_.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.bb = load i32, ptr %i.p, align 4, !tbaa !97
  %.fr35.i = freeze i32 %i.bb
  %i.bc = icmp slt i32 %.fr35.i, 2
  %i.bd = load ptr, ptr %i.q, align 8, !tbaa !102 ; 26 uses
  %i.be = load i32, ptr %i.s, align 4, !tbaa !97
  %.fr.i = freeze i32 %i.be
  %i.bf = icmp slt i32 %.fr.i, 2                  ; 2 uses
  %i.bg = load ptr, ptr %i.t, align 8, !tbaa !102 ; 26 uses
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !97
  %.fr36.i = freeze i32 %i.bh
  %i.bi = icmp slt i32 %.fr36.i, 2                ; 4 uses
  %i.bj = load ptr, ptr %i.w, align 8, !tbaa !102 ; 26 uses
  br i1 %i.bc, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  br i1 %i.bf, label %.lr.ph.split.us.split.us.i, label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.split.us.i
  br i1 %i.bi, label %.lr.ph.split.us.split.us.split.us.i.preheader, label %.lr.ph.split.us.split.us.split.preheader.i

.lr.ph.split.us.split.us.split.us.i.preheader:    ; preds = %.lr.ph.split.us.split.us.i
  %i.bk = add nsw i32 %i.az, -1
  %xtraiter106 = and i32 %i.az, 3                 ; 3 uses
  %i.bl = icmp ult i32 %i.bk, 3
  br i1 %i.bl, label %.lr.ph.split.us.split.us.split.us.i.epil.preheader, label %.lr.ph.split.us.split.us.split.us.i.preheader.new

.lr.ph.split.us.split.us.split.us.i.preheader.new: ; preds = %.lr.ph.split.us.split.us.split.us.i.preheader
  %unroll_iter109 = and i32 %i.az, 2147483644
  br label %.lr.ph.split.us.split.us.split.us.i

.lr.ph.split.us.split.us.split.preheader.i:       ; preds = %.lr.ph.split.us.split.us.i
  %wide.trip.count73.i = zext nneg i32 %i.az to i64 ; 2 uses
  %xtraiter101 = and i64 %wide.trip.count73.i, 1
  %i.bm = icmp eq i32 %i.az, 1
  br i1 %i.bm, label %.lr.ph.split.us.split.us.split.i.epil.preheader, label %.lr.ph.split.us.split.us.split.preheader.i.new

.lr.ph.split.us.split.us.split.preheader.i.new:   ; preds = %.lr.ph.split.us.split.us.split.preheader.i
  %unroll_iter104 = and i64 %wide.trip.count73.i, 2147483646
  br label %.lr.ph.split.us.split.us.split.i

.lr.ph.split.us.split.us.split.us.i:              ; preds = %.lr.ph.split.us.split.us.split.us.i, %.lr.ph.split.us.split.us.split.us.i.preheader.new
  %niter110 = phi i32 [ 0, %.lr.ph.split.us.split.us.split.us.i.preheader.new ], [ %niter110.next.3, %.lr.ph.split.us.split.us.split.us.i ]
  %i.bn = load double, ptr %i.bd, align 8, !tbaa !25
  %i.bo = load double, ptr %i.bg, align 8, !tbaa !25
  %i.bp = fsub double %i.bn, %i.bo
  %i.bq = fdiv double %i.bp, 2.000000e-04
  store double %i.bq, ptr %i.bj, align 8, !tbaa !25
  %i.br = load double, ptr %i.bd, align 8, !tbaa !25
  %i.bs = load double, ptr %i.bg, align 8, !tbaa !25
  %i.bt = fsub double %i.br, %i.bs
  %i.bu = fdiv double %i.bt, 2.000000e-04
  store double %i.bu, ptr %i.bj, align 8, !tbaa !25
  %i.bv = load double, ptr %i.bd, align 8, !tbaa !25
  %i.bw = load double, ptr %i.bg, align 8, !tbaa !25
  %i.bx = fsub double %i.bv, %i.bw
  %i.by = fdiv double %i.bx, 2.000000e-04
  store double %i.by, ptr %i.bj, align 8, !tbaa !25
  %i.bz = load double, ptr %i.bd, align 8, !tbaa !25
  %i.ca = load double, ptr %i.bg, align 8, !tbaa !25
  %i.cb = fsub double %i.bz, %i.ca
  %i.cc = fdiv double %i.cb, 2.000000e-04
  store double %i.cc, ptr %i.bj, align 8, !tbaa !25
  %niter110.next.3 = add nuw nsw i32 %niter110, 4 ; 2 uses
  %niter110.ncmp.3 = icmp eq i32 %niter110.next.3, %unroll_iter109
  br i1 %niter110.ncmp.3, label %_ZN12_GLOBAL__N_19calcDerivERKN2cv3MatES3_dS1_.exit.loopexit.unr-lcssa, label %.lr.ph.split.us.split.us.split.us.i, !llvm.loop !278

.lr.ph.split.us.split.us.split.i:                 ; preds = %.lr.ph.split.us.split.us.split.i, %.lr.ph.split.us.split.us.split.preheader.i.new
  %indvars.iv70.i = phi i64 [ 0, %.lr.ph.split.us.split.us.split.preheader.i.new ], [ %indvars.iv.next71.i.1, %.lr.ph.split.us.split.us.split.i ] ; 3 uses
  %niter105 = phi i64 [ 0, %.lr.ph.split.us.split.us.split.preheader.i.new ], [ %niter105.next.1, %.lr.ph.split.us.split.us.split.i ]
  %i.cd = load double, ptr %i.bd, align 8, !tbaa !25
  %i.ce = load double, ptr %i.bg, align 8, !tbaa !25
  %i.cf = fsub double %i.cd, %i.ce
  %i.cg = fdiv double %i.cf, 2.000000e-04
  %i.ch = load i64, ptr %i.x, align 8
  %i.ci = mul i64 %i.ch, %indvars.iv70.i
  %.sink.i11.us.us.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ci
  store double %i.cg, ptr %.sink.i11.us.us.i, align 8, !tbaa !25
  %indvars.iv.next71.i = or disjoint i64 %indvars.iv70.i, 1
  %i.cj = load double, ptr %i.bd, align 8, !tbaa !25
  %i.ck = load double, ptr %i.bg, align 8, !tbaa !25
  %i.cl = fsub double %i.cj, %i.ck
  %i.cm = fdiv double %i.cl, 2.000000e-04
  %i.cn = load i64, ptr %i.x, align 8
  %i.co = mul i64 %i.cn, %indvars.iv.next71.i
  %.sink.i11.us.us.i.1 = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.co
  store double %i.cm, ptr %.sink.i11.us.us.i.1, align 8, !tbaa !25
  %indvars.iv.next71.i.1 = add nuw nsw i64 %indvars.iv70.i, 2 ; 2 uses
  %niter105.next.1 = add i64 %niter105, 2         ; 2 uses
  %niter105.ncmp.1 = icmp eq i64 %niter105.next.1, %unroll_iter104
  br i1 %niter105.ncmp.1, label %_ZN12_GLOBAL__N_19calcDerivERKN2cv3MatES3_dS1_.exit.loopexit67.unr-lcssa, label %.lr.ph.split.us.split.us.split.i, !llvm.loop !278

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.split.us.i
  %wide.trip.count68.i = zext nneg i32 %i.az to i64 ; 4 uses
  br i1 %i.bi, label %.lr.ph.split.us.split.split.us.i.preheader, label %.lr.ph.split.us.split.split.i.preheader

.lr.ph.split.us.split.split.i.preheader:          ; preds = %.lr.ph.split.us.split.i
  %xtraiter91 = and i64 %wide.trip.count68.i, 1
  %i.cp = icmp eq i32 %i.az, 1
  br i1 %i.cp, label %.lr.ph.split.us.split.split.i.epil.preheader, label %.lr.ph.split.us.split.split.i.preheader.new

.lr.ph.split.us.split.split.i.preheader.new:      ; preds = %.lr.ph.split.us.split.split.i.preheader
  %unroll_iter94 = and i64 %wide.trip.count68.i, 2147483646
  br label %.lr.ph.split.us.split.split.i

.lr.ph.split.us.split.split.us.i.preheader:       ; preds = %.lr.ph.split.us.split.i
  %xtraiter96 = and i64 %wide.trip.count68.i, 1
  %i.cq = icmp eq i32 %i.az, 1
  br i1 %i.cq, label %.lr.ph.split.us.split.split.us.i.epil.preheader, label %.lr.ph.split.us.split.split.us.i.preheader.new

.lr.ph.split.us.split.split.us.i.preheader.new:   ; preds = %.lr.ph.split.us.split.split.us.i.preheader
  %unroll_iter99 = and i64 %wide.trip.count68.i, 2147483646
  br label %.lr.ph.split.us.split.split.us.i

.lr.ph.split.us.split.split.us.i:                 ; preds = %.lr.ph.split.us.split.split.us.i, %.lr.ph.split.us.split.split.us.i.preheader.new
  %indvars.iv65.i = phi i64 [ 0, %.lr.ph.split.us.split.split.us.i.preheader.new ], [ %indvars.iv.next66.i.1, %.lr.ph.split.us.split.split.us.i ] ; 3 uses
  %niter100 = phi i64 [ 0, %.lr.ph.split.us.split.split.us.i.preheader.new ], [ %niter100.next.1, %.lr.ph.split.us.split.split.us.i ]
  %i.cr = load double, ptr %i.bd, align 8, !tbaa !25
  %i.cs = load i64, ptr %i.u, align 8
  %i.ct = mul i64 %i.cs, %indvars.iv65.i
  %.sink.i9.us.us30.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ct
  %i.cu = load double, ptr %.sink.i9.us.us30.i, align 8, !tbaa !25
  %i.cv = fsub double %i.cr, %i.cu
  %i.cw = fdiv double %i.cv, 2.000000e-04
  store double %i.cw, ptr %i.bj, align 8, !tbaa !25
  %indvars.iv.next66.i = or disjoint i64 %indvars.iv65.i, 1
  %i.cx = load double, ptr %i.bd, align 8, !tbaa !25
  %i.cy = load i64, ptr %i.u, align 8
  %i.cz = mul i64 %i.cy, %indvars.iv.next66.i
  %.sink.i9.us.us30.i.1 = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cz
  %i.da = load double, ptr %.sink.i9.us.us30.i.1, align 8, !tbaa !25
  %i.db = fsub double %i.cx, %i.da
  %i.dc = fdiv double %i.db, 2.000000e-04
  store double %i.dc, ptr %i.bj, align 8, !tbaa !25
  %indvars.iv.next66.i.1 = add nuw nsw i64 %indvars.iv65.i, 2 ; 2 uses
  %niter100.next.1 = add i64 %niter100, 2         ; 2 uses
  %niter100.ncmp.1 = icmp eq i64 %niter100.next.1, %unroll_iter99
  br i1 %niter100.ncmp.1, label %_ZN12_GLOBAL__N_19calcDerivERKN2cv3MatES3_dS1_.exit.loopexit68.unr-lcssa, label %.lr.ph.split.us.split.split.us.i, !llvm.loop !278

.lr.ph.split.us.split.split.i:                    ; preds = %.lr.ph.split.us.split.split.i, %.lr.ph.split.us.split.split.i.preheader.new
  %indvars.iv60.i = phi i64 [ 0, %.lr.ph.split.us.split.split.i.preheader.new ], [ %indvars.iv.next61.i.1, %.lr.ph.split.us.split.split.i ] ; 4 uses
  %niter95 = phi i64 [ 0, %.lr.ph.split.us.split.split.i.preheader.new ], [ %niter95.next.1, %.lr.ph.split.us.split.split.i ]
  %i.dd = load double, ptr %i.bd, align 8, !tbaa !25
  %i.de = load i64, ptr %i.u, align 8
  %i.df = mul i64 %i.de, %indvars.iv60.i
  %.sink.i9.us.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.df
  %i.dg = load double, ptr %.sink.i9.us.i, align 8, !tbaa !25
  %i.dh = fsub double %i.dd, %i.dg
  %i.di = fdiv double %i.dh, 2.000000e-04
  %i.dj = load i64, ptr %i.x, align 8
  %i.dk = mul i64 %i.dj, %indvars.iv60.i
  %.sink.i11.us.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.dk
  store double %i.di, ptr %.sink.i11.us.i, align 8, !tbaa !25
  %indvars.iv.next61.i = or disjoint i64 %indvars.iv60.i, 1 ; 2 uses
  %i.dl = load double, ptr %i.bd, align 8, !tbaa !25
  %i.dm = load i64, ptr %i.u, align 8
  %i.dn = mul i64 %i.dm, %indvars.iv.next61.i
  %.sink.i9.us.i.1 = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.dn
  %i.do = load double, ptr %.sink.i9.us.i.1, align 8, !tbaa !25
  %i.dp = fsub double %i.dl, %i.do
end_hunk_2
