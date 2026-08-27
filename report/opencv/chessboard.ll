Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/chessboard?download=true
inline.NumInlined: 4866
inline.NumDeleted: 1356
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 55
begin_hunk_0_@_ZN2cv7details10Chessboard5Board17calcEdgeSharpnessERKNS_11_InputArrayEfbRKNS_12_OutputArrayE:bb.a
bb.df:                                            ; preds = %bb.de, %bb.dd
  %.pn122 = phi { ptr, i32 } [ %i.ua, %bb.de ], [ %i.tz, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #33
  br label %bb.dg

bb.dg:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bg, %.body190, %bb.df
  %.pn125.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn120, %.body190 ], [ %.pn122, %bb.df ], [ %i.jn, %bb.bg ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #33
  %i.ub = load ptr, ptr %24, align 8, !tbaa !743  ; 3 uses
  %.not.i.i.i203 = icmp eq ptr %i.ub, null
  br i1 %.not.i.i.i203, label %_ZNSt6vectorIhSaIhEED2Ev.exit204, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.uc = load ptr, ptr %i.dv, align 8, !tbaa !746
  %i.ud = ptrtoint ptr %i.uc to i64
  %i.ue = ptrtoint ptr %i.ub to i64
  %i.uf = sub i64 %i.ud, %i.ue
  call void @_ZdlPvm(ptr noundef nonnull %i.ub, i64 noundef %i.uf) #34
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit204

_ZNSt6vectorIhSaIhEED2Ev.exit204:                 ; preds = %bb.dg, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  br label %bb.do

._crit_edge:                                      ; preds = %bb.db
  %i.ug = icmp eq i32 %.291, 0
  br i1 %i.ug, label %._crit_edge.thread, label %bb.di

bb.di:                                            ; preds = %._crit_edge
  %i.uh = sitofp i32 %.291 to float               ; 2 uses
  %i.ui = fdiv float %.285, %i.uh
  %i.uj = insertelement <2 x float> poison, float %i.uh, i64 0
  %i.uk = shufflevector <2 x float> %i.uj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ul = fdiv <2 x float> %i.tw, %i.uk
  %i.um = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.dj unwind label %bb.am

bb.dj:                                            ; preds = %bb.di
  br i1 %i.um, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.dl unwind label %bb.am

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.un = fpext <2 x float> %i.ul to <2 x double>
  %i.uo = fpext float %i.ui to double
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %_ZNK2cv7MatExprcvNS_3MatEEv.exit, %bb.dl
  %.sink602 = phi double [ %i.uo, %bb.dl ], [ 9.999000e+03, %_ZNK2cv7MatExprcvNS_3MatEEv.exit ], [ 9.999000e+03, %._crit_edge ]
  %.sink = phi double [ 0.000000e+00, %bb.dl ], [ 9.999000e+03, %_ZNK2cv7MatExprcvNS_3MatEEv.exit ], [ 9.999000e+03, %._crit_edge ]
  %i.up = phi <2 x double> [ %i.un, %bb.dl ], [ splat (double 9.999000e+03), %_ZNK2cv7MatExprcvNS_3MatEEv.exit ], [ splat (double 9.999000e+03), %._crit_edge ]
  store <2 x double> %i.up, ptr %0, align 8, !tbaa !38
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sink602, ptr %i.uq, align 8, !tbaa !38
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sink, ptr %i.ur, align 8, !tbaa !38
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %.not.i.i.i205 = icmp eq ptr %.sroa.0263.4, null
  br i1 %.not.i.i.i205, label %_ZNSt6vectorISt4pairIN2cv6Point_IfEES3_ESaIS4_EED2Ev.exit, label %bb.dm

bb.dm:                                            ; preds = %._crit_edge.thread
  %i.us = ptrtoint ptr %.sroa.22.4 to i64
  %i.ut = sub i64 %i.us, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0263.4, i64 noundef %i.ut) #34
  br label %_ZNSt6vectorISt4pairIN2cv6Point_IfEES3_ESaIS4_EED2Ev.exit

_ZNSt6vectorISt4pairIN2cv6Point_IfEES3_ESaIS4_EED2Ev.exit: ; preds = %._crit_edge.thread, %bb.dm
  %i.uu = load ptr, ptr %19, align 8, !tbaa !233  ; 3 uses
  %.not.i.i.i206 = icmp eq ptr %i.uu, null
  br i1 %.not.i.i.i206, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt6vectorISt4pairIN2cv6Point_IfEES3_ESaIS4_EED2Ev.exit
  %i.uv = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !239
  %i.ux = ptrtoint ptr %i.uw to i64
  %i.uy = ptrtoint ptr %i.uu to i64
  %i.uz = sub i64 %i.ux, %i.uy
  call void @_ZdlPvm(ptr noundef nonnull %i.uu, i64 noundef %i.uz) #34
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %_ZNSt6vectorISt4pairIN2cv6Point_IfEES3_ESaIS4_EED2Ev.exit, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  ret void

bb.do:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit204, %bb.am
  %.pn125.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fw, %bb.am ], [ %.pn125.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit204 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #33
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.al
  %.pn125.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn125.pn.pn.pn.pn.pn.pn, %bb.do ], [ %.pn, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.dq

bb.dq:                                            ; preds = %.loopexit305.split.us, %.loopexit.split-lp306, %.loopexit298.split.us, %.loopexit.split-lp299, %bb.dp
  %.sroa.22.5 = phi ptr [ %.sroa.12.1428.us, %.loopexit.split-lp299 ], [ %.sroa.22.4, %bb.dp ], [ %.sroa.12.1428.us, %.loopexit298.split.us ], [ %.sroa.12.3404.us, %.loopexit305.split.us ], [ %.sroa.12.3404.us, %.loopexit.split-lp306 ]
  %.sroa.0263.5 = phi ptr [ %.sroa.0263.1429.us, %.loopexit.split-lp299 ], [ %.sroa.0263.4, %bb.dp ], [ %.sroa.0263.1429.us, %.loopexit298.split.us ], [ %.sroa.0263.3405.us, %.loopexit305.split.us ], [ %.sroa.0263.3405.us, %.loopexit.split-lp306 ] ; 3 uses
  %.pn134 = phi { ptr, i32 } [ %lpad.loopexit.split-lp301, %.loopexit.split-lp299 ], [ %.pn125.pn.pn.pn.pn.pn.pn.pn, %bb.dp ], [ %lpad.loopexit300.us, %.loopexit298.split.us ], [ %lpad.loopexit307.us, %.loopexit305.split.us ], [ %lpad.loopexit.split-lp308, %.loopexit.split-lp306 ] ; 2 uses
  %.not.i.i.i207 = icmp eq ptr %.sroa.0263.5, null
  br i1 %.not.i.i.i207, label %_ZNSt6vectorISt4pairIN2cv6Point_IfEES3_ESaIS4_EED2Ev.exit208, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.va = ptrtoint ptr %.sroa.22.5 to i64
  %i.vb = ptrtoint ptr %.sroa.0263.5 to i64
  %i.vc = sub i64 %i.va, %i.vb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0263.5, i64 noundef %i.vc) #34
  br label %_ZNSt6vectorISt4pairIN2cv6Point_IfEES3_ESaIS4_EED2Ev.exit208

_ZNSt6vectorISt4pairIN2cv6Point_IfEES3_ESaIS4_EED2Ev.exit208: ; preds = %bb.dr, %bb.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %.pn136.pn = phi { ptr, i32 } [ %.pn136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ], [ %.pn134, %bb.dq ], [ %.pn134, %bb.dr ] ; 2 uses
  %i.vd = load ptr, ptr %19, align 8, !tbaa !233  ; 3 uses
  %.not.i.i.i209 = icmp eq ptr %i.vd, null
  br i1 %.not.i.i.i209, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit210, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt6vectorISt4pairIN2cv6Point_IfEES3_ESaIS4_EED2Ev.exit208
  %i.ve = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !239
  %i.vg = ptrtoint ptr %i.vf to i64
  %i.vh = ptrtoint ptr %i.vd to i64
  %i.vi = sub i64 %i.vg, %i.vh
  call void @_ZdlPvm(ptr noundef nonnull %i.vd, i64 noundef %i.vi) #34
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit210

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit210: ; preds = %bb.ds, %_ZNSt6vectorISt4pairIN2cv6Point_IfEES3_ESaIS4_EED2Ev.exit208, %bb.v
  %.pn136.pn.pn = phi { ptr, i32 } [ %i.an, %bb.v ], [ %.pn136.pn, %_ZNSt6vectorISt4pairIN2cv6Point_IfEES3_ESaIS4_EED2Ev.exit208 ], [ %.pn136.pn, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #33
  br label %bb.dt

bb.dt:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %.pn142.pn = phi { ptr, i32 } [ %.pn142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ %.pn136.pn.pn, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit210 ], [ %i.j, %bb.h ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  resume { ptr, i32 } %.pn142.pn
}

declare void @_ZN2cv13getRectSubPixERKNS_11_InputArrayENS_5Size_IiEENS_6Point_IfEERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), i64, <2 x float>, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv7details10ChessboardC2ERKNS1_10ParametersE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(27) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN2cv9AlgorithmC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN2cv7details10ChessboardE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 25769803785, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.c, align 8, !tbaa !756
  store <4 x i32> <i32 3, i32 4, i32 200, i32 50>, ptr %i.b, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 0, ptr %i.d, align 1, !tbaa !758
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 0, ptr %i.e, align 2, !tbaa !759
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(27) %1, i64 27, i1 false), !tbaa.struct !760
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv7details10Chessboard11reconfigureERKNS1_10ParametersE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(36) initializes((8, 35)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(27) %1) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %i.a, ptr noundef nonnull align 4 dereferenceable(27) %1, i64 27, i1 false), !tbaa.struct !760
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK2cv7details10Chessboard7getParaEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cv::details::Chessboard::Parameters") align 4 captures(none) initializes((0, 28)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %1) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %i.a, i64 28, i1 false), !tbaa.struct !760
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2cv7details10ChessboardD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZN2cv9Feature2DD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2cv7details10ChessboardD0Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZN2cv9Feature2DD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(36) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2cv7details10Chessboard13findKeyPointsERKNS_3MatERSt6vectorINS_8KeyPointESaIS6_EERS5_IS2_SaIS2_EERS5_IS5_IfSaIfEESaISE_EES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(208) %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0109 = alloca { %"class.cv::Point_", float, float }, align 8 ; 4 uses
  %.sroa.0123 = alloca { %"class.cv::Point_", float, float }, align 8 ; 4 uses
  %.sroa.0106 = alloca { %"class.cv::Point_", float, float }, align 8 ; 2 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %14 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %.sroa.087 = alloca { %"class.cv::Point_", float, float }, align 8 ; 6 uses
  %.sroa.097 = alloca { %"class.cv::Point_", float, float }, align 8 ; 5 uses
  %16 = alloca %"class.std::vector.9", align 8    ; 15 uses
  %17 = alloca %"class.cv::details::FastX", align 8 ; 17 uses
  %18 = alloca %"class.std::vector.4", align 8    ; 11 uses
  %19 = alloca %"class.std::vector", align 8      ; 10 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !76     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !73
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.d = load ptr, ptr %4, align 8, !tbaa !98     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101  ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i41, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i ], [ %i.d, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !102 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !104
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #34
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, %i.f
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !105

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i
  store ptr %i.d, ptr %i.e, align 8, !tbaa !101
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE5clearEv.exit

_ZNSt6vectorIS_IfSaIfEESaIS1_EE5clearEv.exit:     ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE5clearEv.exit, %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i8, ptr %i.n, align 8, !tbaa !761, !range !71, !noundef !72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !763  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !764  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  invoke void @_ZN2cv9AlgorithmC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE5clearEv.exit
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN2cv7details5FastXE, i64 16), ptr %17, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store <2 x float> <float 4.000000e+01, float f0x3F490FDB>, ptr %i.t, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store i32 2, ptr %i.u, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %17, i64 20 ; 2 uses
  store i32 2, ptr %i.v, align 4, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  store i32 5, ptr %i.w, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %17, i64 29 ; 2 uses
  store i8 1, ptr %i.x, align 1, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %17, i64 28 ; 2 uses
  store i8 1, ptr %i.y, align 4, !tbaa !18
  %i.z = icmp slt i32 %i.q, 0
  %.not.i.i42 = icmp sgt i32 %i.q, %i.s
  %or.cond.i.i = select i1 %i.z, i1 true, i1 %.not.i.i42
  br i1 %or.cond.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.noexc
  invoke void @_ZN2cv6detail17check_failed_autoEiRKNS0_12CheckContextE(i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv7details5FastX11reconfigureERKNS1_10ParametersEE15__cv_check__361) #32
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv9Feature2DD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %17) #33
  br label %.body

bb.e:                                             ; preds = %.noexc
  store <2 x float> <float 1.500000e+02, float f0x3F490FDB>, ptr %i.t, align 8, !tbaa !10
  store i32 2, ptr %i.u, align 8, !tbaa !20
  store i32 %i.q, ptr %i.v, align 4, !tbaa !20
  store i32 %i.s, ptr %i.w, align 8, !tbaa !20
  store i8 1, ptr %i.y, align 4, !tbaa !21
  store i8 %i.o, ptr %i.x, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  invoke void @_ZNK2cv7details5FastX10detectImplERKNS_3MatERSt6vectorIS2_SaIS2_EES8_S4_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(208) %5)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv7details5FastX13findKeyPointsERKSt6vectorINS_3MatESaIS3_EERS2_INS_8KeyPointESaIS8_EERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(208) %5)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !73 ; 3 uses
  %i.ad = load ptr, ptr %16, align 8, !tbaa !76   ; 33 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = sdiv exact i64 %i.ag, 28
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !20
  %.sroa.speculated84 = call i32 @llvm.smin.i32(i32 %i.ak, i32 %i.ai) ; 3 uses
  %i.al = icmp slt i32 %.sroa.speculated84, 9
  br i1 %i.al, label %bb.bi, label %bb.j

bb.h:                                             ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE5clearEv.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.j:                                             ; preds = %bb.g
  %i.ao = zext nneg i32 %.sroa.speculated84 to i64 ; 8 uses
  %.idx = mul nuw nsw i64 %i.ao, 28
  %i.ap = add nsw i64 %.idx, -28
  %i.aq = udiv exact i64 %i.ap, 28                ; 3 uses
  %i.ar = add nsw i64 %i.aq, -2                   ; 2 uses
  %i.as = lshr i64 %i.ar, 1                       ; 3 uses
  %i.at = add nsw i64 %i.aq, -1
  %i.au = lshr i64 %i.at, 1                       ; 2 uses
  %i.av = and i64 %i.aq, 1
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = or disjoint i64 %i.ar, 1                ; 2 uses
  %i.ay = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.ax
  %i.az = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.as
  br label %bb.k

bb.k:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_T0_SH_T1_T2_.exit.i.i, %bb.j
  %.08.i.i = phi i64 [ %i.as, %bb.j ], [ %i.bz, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_T0_SH_T1_T2_.exit.i.i ] ; 8 uses
  %i.ba = getelementptr inbounds [28 x i8], ptr %i.ad, i64 %.08.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0106, ptr noundef nonnull align 4 dereferenceable(16) %i.ba, i64 16, i1 false)
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.4103.0.copyload = load float, ptr %.sroa.4103.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.bb = load i64, ptr %.sroa.5104.0..sroa_idx, align 4
  %i.bc = icmp slt i64 %.08.i.i, %i.au
  br i1 %i.bc, label %.lr.ph.i.i.i74, label %._crit_edge.i.i.i

.lr.ph.i.i.i74:                                   ; preds = %bb.k, %.lr.ph.i.i.i74
  %.036.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i74 ], [ %.08.i.i, %bb.k ] ; 2 uses
  %i.bd = shl i64 %.036.i.i.i, 1                  ; 2 uses
  %i.be = add i64 %i.bd, 2                        ; 2 uses
  %i.bf = getelementptr inbounds [28 x i8], ptr %i.ad, i64 %i.be
  %i.bg = or disjoint i64 %i.bd, 1                ; 2 uses
  %i.bh = getelementptr inbounds [28 x i8], ptr %i.ad, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !765
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !765
  %i.bm = fcmp ogt float %i.bj, %i.bl
  %spec.select.i.i.i = select i1 %i.bm, i64 %i.bg, i64 %i.be ; 4 uses
  %i.bn = getelementptr inbounds [28 x i8], ptr %i.ad, i64 %spec.select.i.i.i
  %i.bo = getelementptr inbounds [28 x i8], ptr %i.ad, i64 %.036.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bo, ptr noundef nonnull align 4 dereferenceable(28) %i.bn, i64 28, i1 false), !tbaa.struct !127
  %i.bp = icmp slt i64 %spec.select.i.i.i, %i.au
  br i1 %i.bp, label %.lr.ph.i.i.i74, label %._crit_edge.i.i.i, !llvm.loop !766

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i74, %bb.k
  %.0.lcssa.i.i.i = phi i64 [ %.08.i.i, %bb.k ], [ %spec.select.i.i.i, %.lr.ph.i.i.i74 ] ; 2 uses
  %i.bq = icmp eq i64 %.0.lcssa.i.i.i, %i.as
  %or.cond.i.i71 = select i1 %i.aw, i1 %i.bq, i1 false
  br i1 %or.cond.i.i71, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.az, ptr noundef nonnull align 4 dereferenceable(28) %i.ay, i64 28, i1 false), !tbaa.struct !127
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.ax, %bb.l ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.br = icmp sgt i64 %.1.i.i.i, %.08.i.i
  br i1 %i.br, label %.lr.ph.i.i.i.i73, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_T0_SH_T1_T2_.exit.i.i

.lr.ph.i.i.i.i73:                                 ; preds = %bb.m, %bb.n
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.n ], [ %.1.i.i.i, %bb.m ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.bs = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.0919.i.i.i.i ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !765
  %i.bv = fcmp ogt float %i.bu, %.sroa.4103.0.copyload
  br i1 %i.bv, label %bb.n, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_T0_SH_T1_T2_.exit.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i73
  %i.bw = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.018.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bw, ptr noundef nonnull align 4 dereferenceable(28) %i.bs, i64 28, i1 false), !tbaa.struct !127
  %i.bx = icmp sgt i64 %.0919.i.i.i.i, %.08.i.i
  br i1 %i.bx, label %.lr.ph.i.i.i.i73, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_T0_SH_T1_T2_.exit.i.i, !llvm.loop !767

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_T0_SH_T1_T2_.exit.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i73, %bb.m
  %.0.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.m ], [ %.0919.i.i.i.i, %bb.n ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i73 ]
  %i.by = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.0.lcssa.i.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0106, i64 16, i1 false)
  %.sroa.4.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store float %.sroa.4103.0.copyload, ptr %.sroa.4.0..sroa_idx98, align 4, !tbaa !10
  %.sroa.5100.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.by, i64 20
  store i64 %i.bb, ptr %.sroa.5100.0..sroa_idx101, align 4
  %.not.i.i72 = icmp eq i64 %.08.i.i, 0
  %i.bz = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i72, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_RT0_.exit.i, label %bb.k, !llvm.loop !768

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_RT0_.exit.i: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_T0_SH_T1_T2_.exit.i.i
  %i.ca = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.ao
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -28 ; 3 uses
  %i.cc = icmp ult ptr %i.cb, %i.ac
  br i1 %i.cc, label %.lr.ph.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i:                                         ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_RT0_.exit.i
  %i.cd = add nsw i64 %i.ao, -2
  %i.ce = lshr i64 %i.cd, 1
  %i.cf = trunc i32 %.sroa.speculated84 to i1
  %i.cg = add nsw i64 %i.ao, -3                   ; 2 uses
  %i.ch = lshr exact i64 %i.cg, 1                 ; 2 uses
  %i.ci = or disjoint i64 %i.cg, 1                ; 2 uses
  %i.cj = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.ci
  %i.ck = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %.lr.ph.i
  %.sroa.0.024.i = phi ptr [ %i.cb, %.lr.ph.i ], [ %i.dl, %bb.r ] ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i, i64 16
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !765 ; 3 uses
  %i.co = load float, ptr %i.cl, align 4, !tbaa !765
  %i.cp = fcmp ogt float %i.cn, %i.co
  br i1 %i.cp, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0123)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0123, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.024.i, i64 16, i1 false)
  %.sroa.9118.0..sroa.0.024.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i, i64 20
  %i.cq = load i64, ptr %.sroa.9118.0..sroa.0.024.i.sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.0.024.i, ptr noundef nonnull align 4 dereferenceable(28) %i.ad, i64 28, i1 false), !tbaa.struct !127
  br label %.lr.ph.i.i18.i

.lr.ph.i.i18.i:                                   ; preds = %bb.p, %.lr.ph.i.i18.i
  %.036.i.i19.i = phi i64 [ %spec.select.i.i20.i, %.lr.ph.i.i18.i ], [ 0, %bb.p ] ; 2 uses
  %i.cr = shl i64 %.036.i.i19.i, 1                ; 2 uses
  %i.cs = add i64 %i.cr, 2                        ; 2 uses
  %i.ct = getelementptr inbounds [28 x i8], ptr %i.ad, i64 %i.cs
  %i.cu = or disjoint i64 %i.cr, 1                ; 2 uses
  %i.cv = getelementptr inbounds [28 x i8], ptr %i.ad, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !765
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !765
  %i.da = fcmp ogt float %i.cx, %i.cz
  %spec.select.i.i20.i = select i1 %i.da, i64 %i.cu, i64 %i.cs ; 5 uses
  %i.db = getelementptr inbounds [28 x i8], ptr %i.ad, i64 %spec.select.i.i20.i
  %i.dc = getelementptr inbounds [28 x i8], ptr %i.ad, i64 %.036.i.i19.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dc, ptr noundef nonnull align 4 dereferenceable(28) %i.db, i64 28, i1 false), !tbaa.struct !127
  %i.dd = icmp slt i64 %spec.select.i.i20.i, %i.ce
  br i1 %i.dd, label %.lr.ph.i.i18.i, label %._crit_edge.i.i10.i, !llvm.loop !766

._crit_edge.i.i10.i:                              ; preds = %.lr.ph.i.i18.i
  %i.de = icmp eq i64 %spec.select.i.i20.i, %i.ch
  %or.cond.i = select i1 %i.cf, i1 %i.de, i1 false
  br i1 %or.cond.i, label %.thread.i.i, label %.lr.ph.i.i.preheader.i.i

.thread.i.i:                                      ; preds = %._crit_edge.i.i10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ck, ptr noundef nonnull align 4 dereferenceable(28) %i.cj, i64 28, i1 false), !tbaa.struct !127
  br label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %._crit_edge.i.i10.i, %.thread.i.i
  %.1.i11.i.i = phi i64 [ %i.ci, %.thread.i.i ], [ %spec.select.i.i20.i, %._crit_edge.i.i10.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0109)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0109, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0123, i64 16, i1 false)
  br label %.lr.ph.i.i.i13.i

.lr.ph.i.i.i13.i:                                 ; preds = %bb.q, %.lr.ph.i.i.preheader.i.i
  %.018.i.i.i14.i = phi i64 [ %.0919.i.i67.i.i, %bb.q ], [ %.1.i11.i.i, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %.0919.in.i.i.i15.i = add nsw i64 %.018.i.i.i14.i, -1
  %.0919.i.i67.i.i = lshr i64 %.0919.in.i.i.i15.i, 1 ; 3 uses
  %i.df = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.0919.i.i67.i.i ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !765
  %i.di = fcmp ogt float %i.dh, %i.cn
  br i1 %i.di, label %bb.q, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_RT0_.exit.i

bb.q:                                             ; preds = %.lr.ph.i.i.i13.i
  %i.dj = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.018.i.i.i14.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dj, ptr noundef nonnull align 4 dereferenceable(28) %i.df, i64 28, i1 false), !tbaa.struct !127
  %.not8.i.i = icmp eq i64 %.0919.i.i67.i.i, 0
  br i1 %.not8.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_RT0_.exit.i, label %.lr.ph.i.i.i13.i, !llvm.loop !767

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_RT0_.exit.i: ; preds = %bb.q, %.lr.ph.i.i.i13.i
  %.0.lcssa.i.i.i17.i.ph = phi i64 [ 0, %bb.q ], [ %.018.i.i.i14.i, %.lr.ph.i.i.i13.i ]
  %i.dk = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.0.lcssa.i.i.i17.i.ph ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0109, i64 16, i1 false), !tbaa.struct !127
  %.sroa.8106.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store float %i.cn, ptr %.sroa.8106.0..sroa_idx107, align 4, !tbaa !10
  %.sroa.9.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.dk, i64 20
  store i64 %i.cq, ptr %.sroa.9.0..sroa_idx113, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0109)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0123)
  br label %bb.r

bb.r:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_RT0_.exit.i, %bb.o
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i, i64 28 ; 2 uses
  %i.dm = icmp ult ptr %i.dl, %i.ac
  br i1 %i.dm, label %bb.o, label %.lr.ph.i.i.i.preheader, !llvm.loop !769

.lr.ph.i.i.i.preheader:                           ; preds = %bb.r, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_RT0_.exit.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_RT0_.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.dn, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_RT0_.exit.i.i.i ], [ %i.cb, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.05.i.i.i, i64 -28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.097)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.097, ptr noundef nonnull align 4 dereferenceable(16) %i.dn, i64 16, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.0.05.i.i.i, i64 -12
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.796.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.0.05.i.i.i, i64 -8
  %i.do = load i64, ptr %.sroa.796.0..sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dn, ptr noundef nonnull align 4 dereferenceable(28) %i.ad, i64 28, i1 false), !tbaa.struct !127
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.dp, %i.af                    ; 3 uses
  %i.dr = sdiv exact i64 %i.dq, 28                ; 3 uses
  %i.ds = add nsw i64 %i.dr, -1
  %i.dt = sdiv i64 %i.ds, 2
  %i.du = icmp sgt i64 %i.dq, 56
  br i1 %i.du, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i
  %.036.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.dv = shl i64 %.036.i.i.i.i.i, 1              ; 2 uses
  %i.dw = add i64 %i.dv, 2                        ; 2 uses
  %i.dx = getelementptr inbounds [28 x i8], ptr %i.ad, i64 %i.dw
  %i.dy = or disjoint i64 %i.dv, 1                ; 2 uses
  %i.dz = getelementptr inbounds [28 x i8], ptr %i.ad, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !765
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !765
  %i.ee = fcmp ogt float %i.eb, %i.ed
  %spec.select.i.i.i.i.i = select i1 %i.ee, i64 %i.dy, i64 %i.dw ; 4 uses
  %i.ef = getelementptr inbounds [28 x i8], ptr %i.ad, i64 %spec.select.i.i.i.i.i
  %i.eg = getelementptr inbounds [28 x i8], ptr %i.ad, i64 %.036.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.eg, ptr noundef nonnull align 4 dereferenceable(28) %i.ef, i64 28, i1 false), !tbaa.struct !127
  %i.eh = icmp slt i64 %spec.select.i.i.i.i.i, %i.dt
  br i1 %i.eh, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !766

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %i.ei = and i64 %i.dr, 1
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ek = add nsw i64 %i.dr, -2
  %i.el = ashr exact i64 %i.ek, 1
  %i.em = icmp eq i64 %.0.lcssa.i.i.i.i.i, %i.el
  br i1 %i.em, label %.thread.i.i.i.i, label %bb.t

.thread.i.i.i.i:                                  ; preds = %bb.s
  %i.en = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i, 1
  %i.eo = or disjoint i64 %i.en, 1                ; 2 uses
  %i.ep = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.eo
  %i.eq = getelementptr inbounds [28 x i8], ptr %i.ad, i64 %.0.lcssa.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.eq, ptr noundef nonnull align 4 dereferenceable(28) %i.ep, i64 28, i1 false), !tbaa.struct !127
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.087)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.087, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.097, i64 16, i1 false)
  br label %.lr.ph.i.i.i.i.i.i.preheader

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.087)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.087, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.097, i64 16, i1 false)
  %.not.i.i.i.i43 = icmp eq i64 %.0.lcssa.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i43, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_RT0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.t, %.thread.i.i.i.i
  %.018.i.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i.i, %bb.t ], [ %i.eo, %.thread.i.i.i.i ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.u
  %.018.i.i.i.i.i.i = phi i64 [ %.0919.i.i67.i.i.i.i, %bb.u ], [ %.018.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.0919.in.i.i.i.i.i.i = add nsw i64 %.018.i.i.i.i.i.i, -1
  %.0919.i.i67.i.i.i.i = lshr i64 %.0919.in.i.i.i.i.i.i, 1 ; 3 uses
  %i.er = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.0919.i.i67.i.i.i.i ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load float, ptr %i.es, align 4, !tbaa !765
  %i.eu = fcmp ogt float %i.et, %.sroa.5.0.copyload
  br i1 %i.eu, label %bb.u, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_RT0_.exit.i.i.i

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ev = getelementptr inbounds [28 x i8], ptr %i.ad, i64 %.018.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ev, ptr noundef nonnull align 4 dereferenceable(28) %i.er, i64 28, i1 false), !tbaa.struct !127
  %.not8.i.i.i.i = icmp eq i64 %.0919.i.i67.i.i.i.i, 0
  br i1 %.not8.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_RT0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !767

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_RT0_.exit.i.i.i: ; preds = %bb.u, %.lr.ph.i.i.i.i.i.i, %bb.t
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.t ], [ 0, %bb.u ], [ %.018.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.ew = getelementptr inbounds [28 x i8], ptr %i.ad, i64 %.0.lcssa.i.i.i.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.087, i64 16, i1 false), !tbaa.struct !127
  %.sroa.688.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store float %.sroa.5.0.copyload, ptr %.sroa.688.0..sroa_idx89, align 4, !tbaa !10
  %.sroa.7.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.ew, i64 20
  store i64 %i.do, ptr %.sroa.7.0..sroa_idx93, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.087)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.097)
  %i.ex = icmp sgt i64 %i.dq, 28
  br i1 %i.ex, label %.lr.ph.i.i.i, label %_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_SD_T0_.exit, !llvm.loop !770

_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_SD_T0_.exit: ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_RT0_.exit.i.i.i
  %i.ey = load ptr, ptr %i.ab, align 8, !tbaa !73 ; 2 uses
  %i.ez = load ptr, ptr %16, align 8, !tbaa !76   ; 2 uses
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = sdiv exact i64 %i.fc, 28                ; 3 uses
  %i.fe = icmp ult i64 %i.fd, %i.ao
  br i1 %i.fe, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_SD_T0_.exit
  %i.ff = sub nuw nsw i64 %i.ao, %i.fd
  invoke void @_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef %i.ff)
          to label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit unwind label %bb.aa

bb.w:                                             ; preds = %_ZSt12partial_sortIN9__gnu_cxx17__normal_iteratorIPN2cv8KeyPointESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_SD_T0_.exit
  %i.fg = icmp ugt i64 %i.fd, %i.ao
  br i1 %i.fg, label %bb.x, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit

bb.x:                                             ; preds = %bb.w
  %i.fh = getelementptr inbounds nuw [28 x i8], ptr %i.ez, i64 %i.ao ; 2 uses
  %.not.i.i45 = icmp eq ptr %i.ey, %i.fh
  br i1 %.not.i.i45, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i46

_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i46: ; preds = %bb.x
  store ptr %i.fh, ptr %i.ab, align 8, !tbaa !73
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i46, %bb.x, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #33
  invoke void @_ZNK2cv7details5FastX10calcAnglesERKSt6vectorINS_3MatESaIS3_EERS2_INS_8KeyPointESaIS8_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit
  %i.fi = load ptr, ptr %16, align 8, !tbaa !143  ; 2 uses
  %i.fj = load ptr, ptr %i.ab, align 8, !tbaa !143
  %.not119120 = icmp eq ptr %i.fi, %i.fj
  %.pre125 = load ptr, ptr %19, align 8, !tbaa !771 ; 2 uses
  br i1 %.not119120, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.fn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.fs = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.fx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.ga = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backERKS1_.exit
  %.sroa.076.0122 = phi ptr [ %.pre125, %.lr.ph ], [ %i.lf, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backERKS1_.exit ] ; 6 uses
  %.sroa.078.0121 = phi ptr [ %i.fi, %.lr.ph ], [ %i.le, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backERKS1_.exit ] ; 6 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.076.0122, i64 8 ; 3 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !423
  %i.gf = load ptr, ptr %.sroa.076.0122, align 8, !tbaa !102
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = sub i64 %i.gg, %i.gh
  %.not = icmp eq i64 %i.gi, 8
  br i1 %.not, label %bb.ac, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backERKS1_.exit

bb.aa:                                            ; preds = %bb.v
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ab:                                            ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.ac:                                            ; preds = %bb.z
  %.sroa.0.0.copyload = load <2 x float>, ptr %.sroa.078.0121, align 4 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.078.0121, i64 8
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !772 ; 2 uses
  %i.gn = fmul float %i.gm, f0x3F333333           ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.078.0121, i64 16 ; 3 uses
  %i.gp = load float, ptr %i.go, align 4, !tbaa !765
  %i.gq = call noundef float @sqrtf(float noundef %i.gp) #33
  %i.gr = call float @llvm.fmuladd.f32(float %i.gm, float 5.000000e-01, float %i.gq) ; 2 uses
  %i.gs = fcmp ogt float %i.gr, 1.000000e+01
  %.sroa.speculated = select i1 %i.gs, float %i.gr, float 1.000000e+01
  %i.gt = fpext float %i.gn to double             ; 2 uses
  %i.gu = fmul double %i.gt, 5.000000e-01
  %i.gv = fptosi double %i.gu to i32              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.gw = sitofp i32 %i.gv to double
  %i.gx = load <2 x i32>, ptr %i.fk, align 8, !tbaa !20
  %i.gy = sitofp <2 x i32> %i.gx to <2 x double>
  %i.gz = insertelement <2 x double> poison, double %i.gt, i64 0
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> splat (double -5.000000e-01), <2 x double> %i.gy)
  %i.hc = fptosi <2 x double> %i.hb to <2 x i32>
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %7) #33
  %i.hd = sitofp <2 x i32> %i.hc to <2 x double>
  %i.he = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.hf = shufflevector <2 x double> %i.he, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hg = fadd <2 x double> %i.hf, %i.hd
  %.sroa.692.0.insert.ext93.i = zext i32 %i.gv to i64
  %.sroa.088.0.insert.insert91.i = mul nuw i64 %.sroa.692.0.insert.ext93.i, 4294967297 ; 2 uses
  %i.hh = fpext float %.sroa.speculated to double
  %i.hi = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = shufflevector <2 x double> %i.hg, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison> ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aq, %bb.ac
  %.030111.i = phi i32 [ 0, %bb.ac ], [ %.131.i, %bb.aq ]
  %.048110.i = phi i32 [ 0, %bb.ac ], [ %i.jd, %bb.aq ] ; 2 uses
  %i.hl = uitofp nneg i32 %.048110.i to double
  %i.hm = fmul nnan double %i.hl, f0x3FD41B2F769CF0E0 ; 2 uses
  %i.hn = call double @cos(double noundef %i.hm) #33
  %i.ho = fptrunc double %i.hn to float
  %i.hp = call double @sin(double noundef %i.hm) #33
  %i.hq = fptrunc double %i.hp to float
  %i.hr = fneg float %i.hq
  %i.hs = insertelement <2 x float> poison, float %i.ho, i64 0
  %i.ht = insertelement <2 x float> %i.hs, float %i.hr, i64 1
  %i.hu = fmul <2 x float> %i.hj, %i.ht           ; 2 uses
  %i.hv = fadd <2 x float> %.sroa.0.0.copyload, %i.hu ; 2 uses
  %i.hw = fpext <2 x float> %i.hv to <2 x double> ; 2 uses
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hy = shufflevector <4 x double> %i.hk, <4 x double> %i.hx, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.hz = shufflevector <2 x double> %i.hw, <2 x double> %i.hf, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ia = fcmp ogt <4 x double> %i.hy, %i.hz
  %i.ib = fcmp oge <4 x double> %i.hy, %i.hz
  %i.ic = shufflevector <4 x i1> %i.ia, <4 x i1> %i.ib, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.id = freeze <4 x i1> %i.ic
  %i.ie = bitcast <4 x i1> %i.id to i4
  %i.if = icmp eq i4 %i.ie, -1
  br i1 %i.if, label %bb.ae, label %bb.as

bb.ae:                                            ; preds = %bb.ad
  %i.ig = fsub <2 x float> %.sroa.0.0.copyload, %i.hu ; 2 uses
  %i.ih = fpext <2 x float> %i.ig to <2 x double> ; 2 uses
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ij = shufflevector <4 x double> %i.hk, <4 x double> %i.ii, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ik = shufflevector <2 x double> %i.ih, <2 x double> %i.hf, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.il = fcmp ogt <4 x double> %i.ij, %i.ik
  %i.im = fcmp oge <4 x double> %i.ij, %i.ik
  %i.in = shufflevector <4 x i1> %i.il, <4 x i1> %i.im, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.io = freeze <4 x i1> %i.in
  %i.ip = bitcast <4 x i1> %i.io to i4
  %i.iq = icmp eq i4 %i.ip, -1
  br i1 %i.iq, label %bb.af, label %bb.as

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  store i32 0, ptr %i.fl, align 8, !tbaa !122
  store i32 0, ptr %i.fm, align 4, !tbaa !123
  store i32 16842752, ptr %8, align 8, !tbaa !34
  store ptr %1, ptr %i.fn, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  store i64 0, ptr %i.fp, align 8
  store i32 33619968, ptr %9, align 8, !tbaa !34
  store ptr %6, ptr %i.fo, align 8, !tbaa !37
  invoke void @_ZN2cv13getRectSubPixERKNS_11_InputArrayENS_5Size_IiEENS_6Point_IfEERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 %.sroa.088.0.insert.insert91.i, <2 x float> %i.hv, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef -1)
          to label %bb.ag unwind label %bb.al

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  store i32 0, ptr %i.fq, align 8, !tbaa !122
  store i32 0, ptr %i.fr, align 4, !tbaa !123
  store i32 16842752, ptr %10, align 8, !tbaa !34
  store ptr %1, ptr %i.fs, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  store i64 0, ptr %i.fu, align 8
  store i32 33619968, ptr %11, align 8, !tbaa !34
  store ptr %7, ptr %i.ft, align 8, !tbaa !37
  invoke void @_ZN2cv13getRectSubPixERKNS_11_InputArrayENS_5Size_IiEENS_6Point_IfEERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 %.sroa.088.0.insert.insert91.i, <2 x float> %i.ig, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef -1)
          to label %bb.ah unwind label %bb.am

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  store i32 0, ptr %i.fv, align 8, !tbaa !122
  store i32 0, ptr %i.fw, align 4, !tbaa !123
  store i32 16842752, ptr %13, align 8, !tbaa !34
end_hunk_0
