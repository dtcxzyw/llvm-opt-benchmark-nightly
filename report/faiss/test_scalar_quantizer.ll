Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_scalar_quantizer?download=true
inline.NumInlined: 3053
inline.NumDeleted: 724
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN28TestSQ0bit_InnerProduct_Test8TestBodyEv:bb.a
  br label %bb.av

bb.ar:                                            ; preds = %bb.am
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit86

bb.as:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %bb.ap
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn = phi { ptr, i32 } [ %i.ix, %bb.at ], [ %i.iw, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.iy = load ptr, ptr %5, align 8, !tbaa !50    ; 3 uses
  %.not.i.i84 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i84, label %_ZN7testing7MessageD2Ev.exit86, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85: ; preds = %bb.au
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !46
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(128) %i.iy) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit86

_ZN7testing7MessageD2Ev.exit86:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85, %bb.au, %bb.ar
  %.pn.pn = phi { ptr, i32 } [ %i.iv, %bb.ar ], [ %.pn, %bb.au ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  br label %bb.ax

bb.av:                                            ; preds = %_ZN7testing8internal11CmpHelperGEIliEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.jc = load ptr, ptr %i.gi, align 8, !tbaa !84 ; 4 uses
  %.not.i.i87 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i87, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !47 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 16 ; 2 uses
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.aw
  %i.jg = load i64, ptr %i.je, align 8, !tbaa !48
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jh) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next158, 5
  br i1 %exitcond160.not, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ai, !llvm.loop !241

bb.ax:                                            ; preds = %_ZN7testing7MessageD2Ev.exit86, %bb.al
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit86 ], [ %i.in, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit89

_ZNSt6vectorIlSaIlEED2Ev.exit89:                  ; preds = %bb.ax, %bb.ah
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ax ], [ %i.ii, %bb.ah ]
  call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef 120) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit91

_ZNSt6vectorIfSaIfEED2Ev.exit91:                  ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit89, %bb.ag
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit89 ], [ %i.ih, %bb.ag ]
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef 60) #26
  br label %bb.ay

bb.ay:                                            ; preds = %bb.af, %_ZNSt6vectorIfSaIfEED2Ev.exit91
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ig, %bb.af ], [ %.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit91 ]
  call void @_ZN5faiss23IndexIVFScalarQuantizerD2Ev(ptr noundef nonnull align 8 dead_on_return(440) dereferenceable(440) %3) #25
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ae
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.ay ], [ %i.if, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN5faiss14IndexFlatCodesD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %2) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit93

_ZNSt6vectorIfSaIfEED2Ev.exit93:                  ; preds = %bb.az, %bb.ad
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.az ], [ %i.ie, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 1280) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit95

_ZNSt6vectorIfSaIfEED2Ev.exit95:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit93, %bb.e
  %.pn56.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit93 ], [ %i.ad, %bb.e ]
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 128000) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn56.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN38ScalarQuantizer_TQMSEEncodeDecode_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN38ScalarQuantizer_TQMSEEncodeDecode_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call fastcc void @_ZN12_GLOBAL__N_121check_tqmse_roundtripEmN5faiss15ScalarQuantizer13QuantizerTypeE(i64 noundef 32, i32 noundef 10)
  tail call fastcc void @_ZN12_GLOBAL__N_121check_tqmse_roundtripEmN5faiss15ScalarQuantizer13QuantizerTypeE(i64 noundef 32, i32 noundef 11)
  tail call fastcc void @_ZN12_GLOBAL__N_121check_tqmse_roundtripEmN5faiss15ScalarQuantizer13QuantizerTypeE(i64 noundef 32, i32 noundef 12)
  tail call fastcc void @_ZN12_GLOBAL__N_121check_tqmse_roundtripEmN5faiss15ScalarQuantizer13QuantizerTypeE(i64 noundef 32, i32 noundef 13)
  tail call fastcc void @_ZN12_GLOBAL__N_121check_tqmse_roundtripEmN5faiss15ScalarQuantizer13QuantizerTypeE(i64 noundef 32, i32 noundef 14)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN37ScalarQuantizer_EDENEncodeDecode_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN37ScalarQuantizer_EDENEncodeDecode_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call fastcc void @_ZN12_GLOBAL__N_120check_eden_roundtripEmmN5faiss15ScalarQuantizer13QuantizerTypeE(i64 noundef 1, i32 noundef 19)
  tail call fastcc void @_ZN12_GLOBAL__N_120check_eden_roundtripEmmN5faiss15ScalarQuantizer13QuantizerTypeE(i64 noundef 2, i32 noundef 20)
  tail call fastcc void @_ZN12_GLOBAL__N_120check_eden_roundtripEmmN5faiss15ScalarQuantizer13QuantizerTypeE(i64 noundef 3, i32 noundef 21)
  tail call fastcc void @_ZN12_GLOBAL__N_120check_eden_roundtripEmmN5faiss15ScalarQuantizer13QuantizerTypeE(i64 noundef 4, i32 noundef 22)
  tail call fastcc void @_ZN12_GLOBAL__N_120check_eden_roundtripEmmN5faiss15ScalarQuantizer13QuantizerTypeE(i64 noundef 5, i32 noundef 23)
  tail call fastcc void @_ZN12_GLOBAL__N_120check_eden_roundtripEmmN5faiss15ScalarQuantizer13QuantizerTypeE(i64 noundef 6, i32 noundef 24)
  tail call fastcc void @_ZN12_GLOBAL__N_120check_eden_roundtripEmmN5faiss15ScalarQuantizer13QuantizerTypeE(i64 noundef 7, i32 noundef 25)
  tail call fastcc void @_ZN12_GLOBAL__N_120check_eden_roundtripEmmN5faiss15ScalarQuantizer13QuantizerTypeE(i64 noundef 8, i32 noundef 26)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN42ScalarQuantizer_TQMSEAccuracyOrdering_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN42ScalarQuantizer_TQMSEAccuracyOrdering_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"struct.faiss::ScalarQuantizer", align 8 ; 16 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32768) ptr @_Znwm(i64 noundef 32768) #27, !noalias !249 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32768) %i.a, i8 0, i64 32768, i1 false)
  invoke void @_ZN5faiss11float_randnEPfml(ptr noundef nonnull %i.a, i64 noundef 8192, i64 noundef 1234)
          to label %bb.b unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, !noalias !249

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5faiss14fvec_renorm_L2EmmPf(i64 noundef 32, i64 noundef 256, ptr noundef nonnull %i.a)
          to label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, !noalias !249

common.resume:                                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit68, %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.b, %_ZNSt6vectorIfSaIfEED2Ev.exit.i ], [ %.pn28.pn.pn.pn.pn.pn.pn113, %_ZNSt6vectorIfSaIfEED2Ev.exit68 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32768) #26, !noalias !249
  br label %common.resume

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.c = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #27
          to label %bb.c unwind label %.thread    ; 3 uses

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  br label %bb.d

.preheader:                                       ; preds = %_ZN5faiss15ScalarQuantizerD2Ev.exit
  %i.m = ptrtoint ptr %.sroa.14.2 to i64
  %i.n = ptrtoint ptr %.sroa.083.3 to i64         ; 2 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2                   ; 2 uses
  %i.q = icmp ugt i64 %i.p, 1
  br i1 %i.q, label %.lr.ph, label %_ZNSt6vectorIfSaIfEED2Ev.exit56

.lr.ph:                                           ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.aj

.thread:                                          ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit68

bb.d:                                             ; preds = %bb.c, %_ZN5faiss15ScalarQuantizerD2Ev.exit
  %.012.idx205 = phi i64 [ 0, %bb.c ], [ %.012.add, %_ZN5faiss15ScalarQuantizerD2Ev.exit ] ; 2 uses
  %.sroa.21.0204 = phi ptr [ %i.d, %bb.c ], [ %.sroa.21.3, %_ZN5faiss15ScalarQuantizerD2Ev.exit ] ; 4 uses
  %.sroa.14.0203 = phi ptr [ %i.c, %bb.c ], [ %.sroa.14.2, %_ZN5faiss15ScalarQuantizerD2Ev.exit ] ; 3 uses
  %.sroa.083.0202 = phi ptr [ %i.c, %bb.c ], [ %.sroa.083.3, %_ZN5faiss15ScalarQuantizerD2Ev.exit ] ; 5 uses
  %.012.ptr = getelementptr inbounds nuw i8, ptr @__const._ZN42ScalarQuantizer_TQMSEAccuracyOrdering_Test8TestBodyEv.qtypes, i64 %.012.idx205
  %i.t = load i32, ptr %.012.ptr, align 4, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN5faiss15ScalarQuantizerC1EmNS0_13QuantizerTypeE(ptr noundef nonnull align 8 dereferenceable(160) %4, i64 noundef 32, i32 noundef %i.t)
          to label %bb.e unwind label %bb.af

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5faiss15ScalarQuantizer5trainEmPKf(ptr noundef nonnull align 8 dereferenceable(160) %4, i64 noundef 256, ptr noundef nonnull %i.a)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.e, align 8, !tbaa !53
  %i.v = shl i64 %i.u, 8                          ; 5 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.g, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #29
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc36:                                         ; preds = %bb.g
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.f
  %.not.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #27
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc37:                                         ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.x, i8 0, i64 %i.v, i1 false)
  %i.z = ptrtoint ptr %i.y to i64
  br label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit:            ; preds = %.noexc37, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.077.0 = phi ptr [ %i.x, %.noexc37 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %.sroa.13.0 = phi i64 [ %i.z, %.noexc37 ], [ 0, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  invoke void @_ZNK5faiss15ScalarQuantizer13compute_codesEPKfPhm(ptr noundef nonnull align 8 dereferenceable(160) %4, ptr noundef nonnull %i.a, ptr noundef %.sroa.077.0, i64 noundef 256)
          to label %bb.i unwind label %bb.ag

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit
  %i.aa = invoke noalias noundef nonnull dereferenceable(32768) ptr @_Znwm(i64 noundef 32768) #27
          to label %bb.j unwind label %bb.ag      ; 5 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32768) %i.aa, i8 0, i64 32768, i1 false)
  invoke void @_ZNK5faiss15ScalarQuantizer6decodeEPKhPfm(ptr noundef nonnull align 8 dereferenceable(160) %4, ptr noundef %.sroa.077.0, ptr noundef nonnull %i.aa, i64 noundef 256)
          to label %bb.k unwind label %.loopexit.split-lp124.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i unwind label %.loopexit.split-lp124.loopexit.split-lp

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i: ; preds = %bb.k
  %i.ab = load i8, ptr %1, align 8, !tbaa !81, !range !82, !noundef !83
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.u, label %bb.l

bb.l:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !84  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !47
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i

_ZNK7testing15AssertionResult15failure_messageEv.exit.i: ; preds = %bb.n, %bb.m
  %i.af = phi ptr [ %i.ae, %bb.n ], [ @.str.54, %bb.m ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 42, ptr noundef %i.af)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.ag = load ptr, ptr %2, align 8, !tbaa !50    ; 3 uses
  %.not.i.i11.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i11.i, label %_ZN7testing7MessageD2Ev.exit.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.p
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(128) %i.ag) #25, !inline_history !245
  br label %_ZN7testing7MessageD2Ev.exit.i

_ZN7testing7MessageD2Ev.exit.i:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.u

bb.q:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit14.i

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn.i = phi { ptr, i32 } [ %i.am, %bb.s ], [ %i.al, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.an = load ptr, ptr %2, align 8, !tbaa !50    ; 3 uses
  %.not.i.i12.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i12.i, label %_ZN7testing7MessageD2Ev.exit14.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i13.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i13.i: ; preds = %bb.t
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !46
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(128) %i.an) #25, !inline_history !245
  br label %_ZN7testing7MessageD2Ev.exit14.i

_ZN7testing7MessageD2Ev.exit14.i:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i13.i, %bb.t, %bb.q
  %.pn.pn.i = phi { ptr, i32 } [ %i.ak, %bb.q ], [ %.pn.i, %bb.t ], [ %.pn.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i13.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit50

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit.i, %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !84  ; 4 uses
  %.not.i.i15.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i15.i, label %_ZN7testing15AssertionResultD2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !47 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.av = load i64, ptr %i.at, align 8, !tbaa !48
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit.i

_ZN7testing15AssertionResultD2Ev.exit.i:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.ax = invoke noundef float @_ZN5faiss10fvec_L2sqrEPKfS1_m(ptr noundef nonnull %i.a, ptr noundef nonnull %i.aa, i64 noundef 8192)
          to label %bb.w unwind label %.loopexit.split-lp124.loopexit.split-lp

bb.w:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit.i
  %i.ay = fmul float %i.ax, f0x39000000           ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.14.0203, %.sroa.21.0204
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store float %i.ay, ptr %.sroa.14.0203, align 4, !tbaa !22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.az = ptrtoint ptr %.sroa.21.0204 to i64
  %i.ba = ptrtoint ptr %.sroa.083.0202 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 6 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775804
  br i1 %i.bc, label %bb.z, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.102) #29
          to label %.noexc43 unwind label %.loopexit.split-lp124.loopexit.split-lp

.noexc43:                                         ; preds = %bb.z
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.y
  %i.bd = ashr exact i64 %i.bb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = call i64 @llvm.umin.i64(i64 %i.be, i64 2305843009213693951)
  %i.bh = select i1 %i.bf, i64 2305843009213693951, i64 %i.bg ; 3 uses
  %.not.i.i.i.i42 = icmp ne i64 %i.bh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i42)
  %i.bi = shl nuw nsw i64 %i.bh, 2
end_hunk_0
begin_hunk_1_@_ZN42ScalarQuantizer_TQMSEAccuracyOrdering_Test8TestBodyEv:bb.a
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cd) #26
  br label %_ZN5faiss15ScalarQuantizerD2Ev.exit

_ZN5faiss15ScalarQuantizerD2Ev.exit:              ; preds = %_ZN5faiss15ScalarQuantizer16TurboQuantRefineD2Ev.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.012.add = add nuw nsw i64 %.012.idx205, 4     ; 2 uses
  %.not = icmp eq i64 %.012.add, 20
  br i1 %.not, label %.preheader, label %bb.d

bb.af:                                            ; preds = %bb.d
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %._crit_edge262

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.e, %bb.h, %bb.g
  %lpad.loopexit.split-lp391 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit52

bb.ag:                                            ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit, %bb.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp124.loopexit.split-lp:          ; preds = %bb.j, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit.i, %bb.k, %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit50

_ZNSt6vectorIfSaIfEED2Ev.exit50:                  ; preds = %.loopexit.split-lp124.loopexit.split-lp, %_ZN7testing7MessageD2Ev.exit14.i
  %.pn28 = phi { ptr, i32 } [ %.pn.pn.i, %_ZN7testing7MessageD2Ev.exit14.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp124.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32768) #26
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZNSt6vectorIfSaIfEED2Ev.exit50
  %.pn28.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.ag ], [ %.pn28, %_ZNSt6vectorIfSaIfEED2Ev.exit50 ] ; 2 uses
  %.not.i.i.i51 = icmp eq ptr %.sroa.077.0, null
  br i1 %.not.i.i.i51, label %_ZNSt6vectorIhSaIhEED2Ev.exit52, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cg = ptrtoint ptr %.sroa.077.0 to i64
  %i.ch = sub i64 %.sroa.13.0, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.077.0, i64 noundef %i.ch) #26
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit52

_ZNSt6vectorIhSaIhEED2Ev.exit52:                  ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.ah, %bb.ai
  %.pn28.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn, %bb.ai ], [ %.pn28.pn.pn, %bb.ah ], [ %lpad.loopexit.split-lp391, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5faiss15ScalarQuantizerD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %4) #25
  br label %._crit_edge262

_ZNSt6vectorIfSaIfEED2Ev.exit56:                  ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %.preheader
  %i.ci = ptrtoint ptr %.sroa.21.3 to i64
  %i.cj = sub i64 %i.ci, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.083.3, i64 noundef %i.cj) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32768) #26
  ret void

bb.aj:                                            ; preds = %.lr.ph, %_ZN7testing15AssertionResultD2Ev.exit
  %i.ck = phi i64 [ 1, %.lr.ph ], [ %i.dn, %_ZN7testing15AssertionResultD2Ev.exit ] ; 3 uses
  %.0206 = phi i64 [ 0, %.lr.ph ], [ %i.ck, %_ZN7testing15AssertionResultD2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.083.3, i64 %.0206 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.083.3, i64 %i.ck ; 2 uses
  %i.cn = load float, ptr %i.cl, align 4, !tbaa !22, !noalias !250
  %i.co = load float, ptr %i.cm, align 4, !tbaa !22, !noalias !250
  %i.cp = fcmp ult float %i.cn, %i.co
  br i1 %i.cp, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal11CmpHelperGEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.am

bb.al:                                            ; preds = %bb.aj
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100, ptr noundef nonnull align 4 dereferenceable(4) %i.cl, ptr noundef nonnull align 4 dereferenceable(4) %i.cm, ptr noundef nonnull @.str.55)
          to label %_ZN7testing8internal11CmpHelperGEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.am

_ZN7testing8internal11CmpHelperGEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.ak, %bb.al
  %i.cq = load i8, ptr %5, align 8, !tbaa !81, !range !82, !noundef !83
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.aw, label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.thread114

bb.an:                                            ; preds = %_ZN7testing8internal11CmpHelperGEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ct = load ptr, ptr %i.r, align 8, !tbaa !84  ; 2 uses
  %.not.i.i59 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i59, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !47
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.ap, %bb.ao
  %i.cv = phi ptr [ %i.cu, %bb.ap ], [ @.str.54, %bb.ao ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 575, ptr noundef %i.cv)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.cw = load ptr, ptr %6, align 8, !tbaa !50    ; 3 uses
  %.not.i.i60 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i60, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ar
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !46
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(128) %i.cw) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.ar, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.aw

bb.as:                                            ; preds = %bb.an
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit63

bb.at:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %bb.aq
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn = phi { ptr, i32 } [ %i.dc, %bb.au ], [ %i.db, %bb.at ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.dd = load ptr, ptr %6, align 8, !tbaa !50    ; 3 uses
  %.not.i.i61 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i61, label %_ZN7testing7MessageD2Ev.exit63, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62: ; preds = %bb.av
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !46
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(128) %i.dd) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit63

_ZN7testing7MessageD2Ev.exit63:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62, %bb.av, %bb.as
  %.pn.pn = phi { ptr, i32 } [ %i.da, %bb.as ], [ %.pn, %bb.av ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  br label %.thread114

bb.aw:                                            ; preds = %_ZN7testing8internal11CmpHelperGEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.dh = load ptr, ptr %i.r, align 8, !tbaa !84  ; 4 uses
  %.not.i.i64 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i64, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !47 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ax
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !48
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #26
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.aw, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.dn = add nuw i64 %i.ck, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dn, %i.p
  br i1 %exitcond.not, label %_ZNSt6vectorIfSaIfEED2Ev.exit56, label %bb.aj, !llvm.loop !248

.thread114:                                       ; preds = %bb.am, %_ZN7testing7MessageD2Ev.exit63
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit63 ], [ %i.cs, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ay

._crit_edge262:                                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit52, %bb.af
  %.pn28.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit52 ], [ %i.ce, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge262, %.thread114
  %.sroa.083.0168 = phi ptr [ %.sroa.083.3, %.thread114 ], [ %.sroa.083.0202, %._crit_edge262 ] ; 2 uses
  %.sroa.083.0168.a = phi ptr [ %.sroa.21.3, %.thread114 ], [ %.sroa.21.0204, %._crit_edge262 ]
  %.pn28.pn.pn.pn.pn.pn.pn121 = phi { ptr, i32 } [ %.pn.pn.pn, %.thread114 ], [ %.pn28.pn.pn.pn.pn.pn, %._crit_edge262 ]
  %.pre-phi = ptrtoint ptr %.sroa.083.0168 to i64
  %i.do = ptrtoint ptr %.sroa.083.0168.a to i64
  %i.dp = sub i64 %i.do, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.083.0168, i64 noundef %i.dp) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit68

_ZNSt6vectorIfSaIfEED2Ev.exit68:                  ; preds = %.thread, %bb.ay
  %.pn28.pn.pn.pn.pn.pn.pn113 = phi { ptr, i32 } [ %i.s, %.thread ], [ %.pn28.pn.pn.pn.pn.pn.pn121, %bb.ay ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32768) #26
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN37ScalarQuantizer_TQMSENonSimdDims_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN37ScalarQuantizer_TQMSENonSimdDims_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call fastcc void @_ZN12_GLOBAL__N_121check_tqmse_roundtripEmN5faiss15ScalarQuantizer13QuantizerTypeE(i64 noundef 7, i32 noundef 10)
  tail call fastcc void @_ZN12_GLOBAL__N_121check_tqmse_roundtripEmN5faiss15ScalarQuantizer13QuantizerTypeE(i64 noundef 9, i32 noundef 11)
  tail call fastcc void @_ZN12_GLOBAL__N_121check_tqmse_roundtripEmN5faiss15ScalarQuantizer13QuantizerTypeE(i64 noundef 11, i32 noundef 12)
  tail call fastcc void @_ZN12_GLOBAL__N_121check_tqmse_roundtripEmN5faiss15ScalarQuantizer13QuantizerTypeE(i64 noundef 13, i32 noundef 13)
  tail call fastcc void @_ZN12_GLOBAL__N_121check_tqmse_roundtripEmN5faiss15ScalarQuantizer13QuantizerTypeE(i64 noundef 33, i32 noundef 14)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN47ScalarQuantizer_TQMSESimdDispatchSelection_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN47ScalarQuantizer_TQMSESimdDispatchSelection_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.66", align 8    ; 8 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call fastcc void @_ZN12_GLOBAL__N_131available_lloyd_max_simd_levelsEv(ptr dead_on_unwind noalias writable align 8 %1)
  %i.a = load ptr, ptr %1, align 8, !tbaa !99     ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !99   ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  br label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.109, i64 noundef 53)
          to label %_ZN7testing7MessagelsIA54_cEERS0_RKT_.exit unwind label %bb.g ; 0 uses

_ZN7testing7MessagelsIA54_cEERS0_RKT_.exit:       ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef 591, ptr noundef nonnull @.str.54)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZN7testing7MessagelsIA54_cEERS0_RKT_.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.i = load ptr, ptr %2, align 8, !tbaa !50     ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.e
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.e, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.loopexit

bb.f:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit30

bb.g:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %_ZN7testing7MessagelsIA54_cEERS0_RKT_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn23 = phi { ptr, i32 } [ %i.p, %bb.i ], [ %i.o, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %bb.j ], [ %i.n, %bb.g ] ; 2 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !50     ; 3 uses
  %.not.i.i28 = icmp eq ptr %i.q, null
  br i1 %.not.i.i28, label %_ZN7testing7MessageD2Ev.exit30, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29: ; preds = %bb.k
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(128) %i.q) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit30

_ZN7testing7MessageD2Ev.exit30:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29, %bb.k, %bb.f
  %.pn23.pn.pn = phi { ptr, i32 } [ %i.m, %bb.f ], [ %.pn23.pn, %bb.k ], [ %.pn23.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.ad

bb.l:                                             ; preds = %.preheader, %bb.x
  %.sroa.036.039 = phi ptr [ %i.a, %.preheader ], [ %i.z, %bb.x ] ; 2 uses
  %i.u = load i32, ptr %.sroa.036.039, align 4, !tbaa !101 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZN5faiss9to_stringB5cxx11ENS_9SIMDLevelE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i32 noundef %i.u)
          to label %bb.m unwind label %bb.y

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN7testing11ScopedTraceC2EPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull @.str.2, i32 noundef 595, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.n unwind label %bb.z

bb.n:                                             ; preds = %bb.m
  %i.v = load ptr, ptr %5, align 8, !tbaa !47     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.e
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.x = load i64, ptr %i.e, align 8, !tbaa !48
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  invoke fastcc void @_ZN12_GLOBAL__N_149expect_lloyd_max_simd_dispatch_for_compatible_dimILi1EEEvN5faiss9SIMDLevelENS1_15ScalarQuantizer13QuantizerTypeE(i32 noundef %i.u, i32 noundef 10)
          to label %bb.o unwind label %bb.aa

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke fastcc void @_ZN12_GLOBAL__N_149expect_lloyd_max_simd_dispatch_for_compatible_dimILi2EEEvN5faiss9SIMDLevelENS1_15ScalarQuantizer13QuantizerTypeE(i32 noundef %i.u, i32 noundef 11)
          to label %bb.p unwind label %bb.aa

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_ZN12_GLOBAL__N_149expect_lloyd_max_simd_dispatch_for_compatible_dimILi3EEEvN5faiss9SIMDLevelENS1_15ScalarQuantizer13QuantizerTypeE(i32 noundef %i.u, i32 noundef 12)
          to label %bb.q unwind label %bb.aa

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_ZN12_GLOBAL__N_149expect_lloyd_max_simd_dispatch_for_compatible_dimILi4EEEvN5faiss9SIMDLevelENS1_15ScalarQuantizer13QuantizerTypeE(i32 noundef %i.u, i32 noundef 13)
          to label %bb.r unwind label %bb.aa

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @_ZN12_GLOBAL__N_149expect_lloyd_max_simd_dispatch_for_compatible_dimILi8EEEvN5faiss9SIMDLevelENS1_15ScalarQuantizer13QuantizerTypeE(i32 noundef %i.u, i32 noundef 14)
          to label %bb.s unwind label %bb.aa

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_ZN12_GLOBAL__N_160expect_lloyd_max_simd_dispatch_fallback_for_incompatible_dimILi1EEEvN5faiss9SIMDLevelEmNS1_15ScalarQuantizer13QuantizerTypeE(i32 noundef %i.u, i32 noundef 10)
          to label %bb.t unwind label %bb.aa

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @_ZN12_GLOBAL__N_160expect_lloyd_max_simd_dispatch_fallback_for_incompatible_dimILi2EEEvN5faiss9SIMDLevelEmNS1_15ScalarQuantizer13QuantizerTypeE(i32 noundef %i.u, i32 noundef 11)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_ZN12_GLOBAL__N_160expect_lloyd_max_simd_dispatch_fallback_for_incompatible_dimILi3EEEvN5faiss9SIMDLevelEmNS1_15ScalarQuantizer13QuantizerTypeE(i32 noundef %i.u, i32 noundef 12)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  invoke fastcc void @_ZN12_GLOBAL__N_160expect_lloyd_max_simd_dispatch_fallback_for_incompatible_dimILi4EEEvN5faiss9SIMDLevelEmNS1_15ScalarQuantizer13QuantizerTypeE(i32 noundef %i.u, i32 noundef 13)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @_ZN12_GLOBAL__N_160expect_lloyd_max_simd_dispatch_fallback_for_incompatible_dimILi8EEEvN5faiss9SIMDLevelEmNS1_15ScalarQuantizer13QuantizerTypeE(i32 noundef %i.u, i32 noundef 14)
          to label %bb.x unwind label %bb.aa
end_hunk_1
