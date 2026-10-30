Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dxt?download=true
inline.NumInlined: 635
inline.NumDeleted: 277
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN2cvL7DFTInitEiiPKiPiiPvi:bb.a
  %i.jl = phi <2 x double> [ %i.ji, %.lr.ph317 ], [ %i.jw, %bb.ac ] ; 4 uses
  %i.jm = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv361 ; 2 uses
  %i.jn = extractelement <2 x double> %i.jl, i64 0 ; 2 uses
  store double %i.jn, ptr %i.jm, align 8, !tbaa !113
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = extractelement <2 x double> %i.jl, i64 1 ; 2 uses
  store double %i.jo, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !113
  %i.jp = sub nsw i64 %i.jg, %indvars.iv361
  %i.jq = getelementptr inbounds [16 x i8], ptr %5, i64 %i.jp ; 2 uses
  store double %i.jn, ptr %i.jq, align 8, !tbaa !133
  %i.jr = fneg double %i.jo
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  store double %i.jr, ptr %i.js, align 8, !tbaa !134
  %i.jt = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ju = fmul <2 x double> %i.jk, %i.jt
  %i.jv = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jv, <2 x double> %i.ji, <2 x double> %i.ju)
  %indvars.iv.next362 = add nuw nsw i64 %indvars.iv361, 1 ; 2 uses
  %exitcond366.not = icmp eq i64 %indvars.iv.next362, %wide.trip.count365
  br i1 %exitcond366.not, label %.thread264, label %bb.ac, !llvm.loop !436

bb.ad:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cvL7DFTInitEiiPKiPiiPvi, ptr noundef nonnull @.str.1, i32 noundef 383) #22
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249

bb.ah:                                            ; preds = %bb.ae
  %i.jy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jz = load ptr, ptr %9, align 8, !tbaa !51    ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.kb = icmp eq ptr %i.jz, %i.ka
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247: ; preds = %bb.ah
  %i.kc = load i64, ptr %i.ka, align 8, !tbaa !52
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kd) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247, %bb.ag
  %.pn244 = phi { ptr, i32 } [ %i.jx, %bb.ag ], [ %i.jy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247 ], [ %i.jy, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.am

bb.ai:                                            ; preds = %bb.y
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %5, align 4, !tbaa !109
  %i.ke = and i32 %0, 1
  %i.kf = icmp eq i32 %i.ke, 0
  br i1 %i.kf, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.kg = sext i32 %i.iz to i64
  %i.kh = getelementptr inbounds [8 x i8], ptr %5, i64 %i.kg
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %i.kh, align 4, !tbaa !109
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ki = icmp sgt i32 %0, 2
  br i1 %i.ki, label %.lr.ph312, label %.thread264

.lr.ph312:                                        ; preds = %bb.ak
  %i.kj = fneg double %.sroa.8.0
  %i.kk = zext nneg i32 %0 to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.iz, i32 2)
  %wide.trip.count359 = zext nneg i32 %smax to i64
  %i.kl = insertelement <2 x double> poison, double %.sroa.0253.0, i64 0
  %i.km = insertelement <2 x double> %i.kl, double %.sroa.8.0, i64 1 ; 2 uses
  %i.kn = insertelement <2 x double> poison, double %i.kj, i64 0
  %i.ko = insertelement <2 x double> %i.kn, double %.sroa.0253.0, i64 1
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph312, %bb.al
  %indvars.iv356 = phi i64 [ 1, %.lr.ph312 ], [ %indvars.iv.next357, %bb.al ] ; 3 uses
  %i.kp = phi <2 x double> [ %i.km, %.lr.ph312 ], [ %i.lb, %bb.al ] ; 3 uses
  %i.kq = fptrunc <2 x double> %i.kp to <2 x float> ; 3 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv356
  store <2 x float> %i.kq, ptr %i.kr, align 4, !tbaa !109
  %i.ks = sub nsw i64 %i.kk, %indvars.iv356
  %i.kt = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ks ; 2 uses
  %i.ku = extractelement <2 x float> %i.kq, i64 0
  store float %i.ku, ptr %i.kt, align 4, !tbaa !136
  %i.kv = extractelement <2 x float> %i.kq, i64 1
  %i.kw = fneg float %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  store float %i.kw, ptr %i.kx, align 4, !tbaa !137
  %i.ky = shufflevector <2 x double> %i.kp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.kz = fmul <2 x double> %i.ky, %i.ko
  %i.la = shufflevector <2 x double> %i.kp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.la, <2 x double> %i.km, <2 x double> %i.kz)
  %indvars.iv.next357 = add nuw nsw i64 %indvars.iv356, 1 ; 2 uses
  %exitcond360.not = icmp eq i64 %indvars.iv.next357, %wide.trip.count359
  br i1 %exitcond360.not, label %.thread264, label %bb.al, !llvm.loop !437

.thread264:                                       ; preds = %bb.al, %bb.ac, %.preheader, %bb.ak, %bb.ab, %._crit_edge307, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn244.pn = phi { ptr, i32 } [ %.pn244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  resume { ptr, i32 } %.pn244.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cvL7DFT_32fERKNS_13OcvDftOptionsEPKNS_7ComplexIfEEPS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(65) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) #0 {
bb.a:
  tail call fastcc void @_ZN2cvL3DFTIfEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cvL11RealDFT_32fERKNS_13OcvDftOptionsEPKfPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(65) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) #0 {
bb.a:
  tail call fastcc void @_ZN2cvL7RealDFTIfEEvRKNS_13OcvDftOptionsEPKT_PS4_(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cvL11CCSIDFT_32fERKNS_13OcvDftOptionsEPKfPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(65) %0, ptr nofree noundef captures(address) %1, ptr noundef %2) #0 {
bb.a:
  tail call fastcc void @_ZN2cvL7CCSIDFTIfEEvRKNS_13OcvDftOptionsEPKT_PS4_(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cvL7DFT_64fERKNS_13OcvDftOptionsEPKNS_7ComplexIdEEPS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(65) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) #0 {
bb.a:
  tail call fastcc void @_ZN2cvL3DFTIdEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cvL11RealDFT_64fERKNS_13OcvDftOptionsEPKdPd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(65) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) #0 {
bb.a:
  tail call fastcc void @_ZN2cvL7RealDFTIdEEvRKNS_13OcvDftOptionsEPKT_PS4_(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cvL11CCSIDFT_64fERKNS_13OcvDftOptionsEPKdPd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(65) %0, ptr nofree noundef captures(address) %1, ptr noundef %2) #0 {
bb.a:
  tail call fastcc void @_ZN2cvL7CCSIDFTIdEEvRKNS_13OcvDftOptionsEPKT_PS4_(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cvL3DFTIfEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(65) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZNKSt9type_infoeqERKS_.exit733.thread791:
  %3 = alloca %"struct.cv::DFT_R3", align 1       ; 3 uses
  %4 = alloca %"struct.cv::DFT_R2", align 1       ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"struct.cv::DFT_R2", align 1      ; 3 uses
  %18 = alloca %"struct.cv::DFT_R3", align 1      ; 3 uses
  %19 = alloca %"struct.cv::DFT_R5", align 1      ; 3 uses
  %20 = alloca %"class.cv::AutoBuffer.14", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138  ; 33 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !139  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !140  ; 24 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i8, ptr %i.g, align 8, !tbaa !141, !range !44, !noundef !45
  %i.i = trunc nuw i8 %i.h to i1                  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !142  ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !143
  %i.n = fptrunc double %i.m to float             ; 5 uses
  %i.o = icmp eq i32 %i.k, %i.f
  br i1 %i.o, label %bb.c, label %bb.a

bb.a:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit733.thread791
  %i.p = shl nsw i32 %i.f, 1
  %i.q = icmp eq i32 %i.k, %i.p
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = sdiv i32 %i.k, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_ZNKSt9type_infoeqERKS_.exit733.thread791
  %i.s = phi i32 [ 1, %_ZNKSt9type_infoeqERKS_.exit733.thread791 ], [ %i.r, %bb.b ], [ 2, %bb.a ] ; 6 uses
  %.not703 = icmp eq ptr %2, %1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.u = load i8, ptr %i.t, align 1, !tbaa !144, !range !44, !noundef !45
  %i.v = trunc nuw i8 %i.u to i1                  ; 2 uses
  br i1 %.not703, label %bb.aa, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.v, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cvL3DFTIfEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_, ptr noundef nonnull @.str.1, i32 noundef 894) #22
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739

bb.i:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %5, align 8, !tbaa !51     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i737

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i737: ; preds = %bb.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !52
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i737, %bb.h
  %.pn723 = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i737 ], [ %i.x, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.bx

bb.j:                                             ; preds = %bb.d
  %21 = add nsw i32 %i.f, -2                      ; 2 uses
  %.not713811 = icmp slt i32 %i.f, 2              ; 2 uses
  br i1 %i.i, label %.preheader804, label %.preheader805

.preheader805:                                    ; preds = %bb.j
  br i1 %.not713811, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader805
  %i.ad = sext i32 %i.s to i64
  %i.ae = shl nsw i32 %i.s, 1
  %i.af = sext i32 %i.ae to i64
  br label %bb.k

.preheader804:                                    ; preds = %bb.j
  br i1 %.not713811, label %._crit_edge815, label %.lr.ph814

.lr.ph814:                                        ; preds = %.preheader804
  %i.ag = sext i32 %i.s to i64
  %i.ah = shl nsw i32 %i.s, 1
  %i.ai = sext i32 %i.ah to i64
  br label %bb.s

bb.k:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %.0810 = phi ptr [ %i.d, %.lr.ph ], [ %i.bd, %bb.q ] ; 3 uses
  %i.aj = load i32, ptr %.0810, align 4, !tbaa !42 ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %.0810, i64 %i.ad
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42 ; 2 uses
  %i.am = icmp ult i32 %i.aj, %i.f
  %i.an = icmp ult i32 %i.al, %i.f
  %or.cond = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cvL3DFTIfEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_, ptr noundef nonnull @.str.1, i32 noundef 900) #22
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742

bb.p:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i740

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i740: ; preds = %bb.p
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !52
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i740, %bb.o
  %.pn711 = phi { ptr, i32 } [ %i.ao, %bb.o ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i740 ], [ %i.ap, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.bx

bb.q:                                             ; preds = %bb.k
  %i.av = zext nneg i32 %i.aj to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.ay = load i64, ptr %i.aw, align 4, !tbaa !109
  store i64 %i.ay, ptr %i.ax, align 4, !tbaa !109
  %i.az = zext nneg i32 %i.al to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load i64, ptr %i.ba, align 4, !tbaa !109
  store i64 %i.bc, ptr %i.bb, align 4, !tbaa !109
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %.0810, i64 %i.af
  %22 = trunc nuw i64 %indvars.iv.next to i32     ; 2 uses
  %.not710 = icmp slt i32 %21, %22
  br i1 %.not710, label %._crit_edge, label %bb.k, !llvm.loop !438

._crit_edge:                                      ; preds = %bb.q, %.preheader805
  %.0641.lcssa = phi i32 [ 0, %.preheader805 ], [ %22, %bb.q ]
  %i.be = icmp slt i32 %.0641.lcssa, %i.f
  br i1 %i.be, label %bb.r, label %bb.bd

bb.r:                                             ; preds = %._crit_edge
  %i.bf = add nsw i32 %i.f, -1
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bg
  %i.bi = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bg
  %i.bj = load i64, ptr %i.bh, align 4, !tbaa !109
  store i64 %i.bj, ptr %i.bi, align 4, !tbaa !109
  br label %bb.bd

bb.s:                                             ; preds = %.lr.ph814, %bb.y
  %indvars.iv933 = phi i64 [ 0, %.lr.ph814 ], [ %indvars.iv.next934, %bb.y ] ; 2 uses
  %.1813 = phi ptr [ %i.d, %.lr.ph814 ], [ %i.ck, %bb.y ] ; 3 uses
  %i.bk = load i32, ptr %.1813, align 4, !tbaa !42 ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %.1813, i64 %i.ag
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !42 ; 2 uses
  %i.bn = icmp ult i32 %i.bk, %i.f
  %i.bo = icmp ult i32 %i.bm, %i.f
  %or.cond729 = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %or.cond729, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cvL3DFTIfEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_, ptr noundef nonnull @.str.1, i32 noundef 912) #22
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit745

bb.x:                                             ; preds = %bb.u
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load ptr, ptr %9, align 8, !tbaa !51    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit745, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i743

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i743: ; preds = %bb.x
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !52
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit745

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit745: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i743, %bb.w
  %.pn721 = phi { ptr, i32 } [ %i.bp, %bb.w ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i743 ], [ %i.bq, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.bx

bb.y:                                             ; preds = %bb.s
  %i.bw = zext nneg i32 %i.bk to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !136
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !137
  %i.cb = fneg float %i.ca
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv933 ; 4 uses
  store i32 %i.by, ptr %i.cc, align 4, !tbaa !109
  %.sroa_idx760 = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store float %i.cb, ptr %.sroa_idx760, align 4, !tbaa !109
  %i.cd = zext nneg i32 %i.bm to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !136
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !137
  %i.ci = fneg float %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 %i.cf, ptr %i.cj, align 4, !tbaa !109
  %.sroa_idx762 = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store float %i.ci, ptr %.sroa_idx762, align 4, !tbaa !109
  %indvars.iv.next934 = add nuw nsw i64 %indvars.iv933, 2 ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %.1813, i64 %i.ai
  %23 = trunc nuw i64 %indvars.iv.next934 to i32  ; 2 uses
  %.not713 = icmp slt i32 %21, %23
  br i1 %.not713, label %._crit_edge815, label %bb.s, !llvm.loop !439

._crit_edge815:                                   ; preds = %bb.y, %.preheader804
  %.1642.lcssa = phi i32 [ 0, %.preheader804 ], [ %23, %bb.y ] ; 2 uses
  %i.cl = icmp slt i32 %.1642.lcssa, %i.f
  br i1 %i.cl, label %bb.z, label %bb.bd

bb.z:                                             ; preds = %._crit_edge815
  %i.cm = sext i32 %i.f to i64
  %i.cn = getelementptr [8 x i8], ptr %1, i64 %i.cm ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 -8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !136
  %i.cq = getelementptr i8, ptr %i.cn, i64 -4
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !137
  %i.cs = fneg float %i.cr
  %i.ct = zext nneg i32 %.1642.lcssa to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ct ; 2 uses
  store i32 %i.cp, ptr %i.cu, align 4, !tbaa !109
  %.sroa_idx758 = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store float %i.cs, ptr %.sroa_idx758, align 4, !tbaa !109
  br label %bb.bd

bb.aa:                                            ; preds = %bb.c
  br i1 %i.v, label %.loopexit801, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !145 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !42
  %i.cy = load i32, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr [4 x i8], ptr %i.cw, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 -4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !42
  %i.dd = icmp eq i32 %i.cx, %i.dc
  br i1 %i.dd, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cvL3DFTIfEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_, ptr noundef nonnull @.str.1, i32 noundef 930) #22
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit748

bb.ag:                                            ; preds = %bb.ad
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load ptr, ptr %11, align 8, !tbaa !51   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit748, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i746

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i746: ; preds = %bb.ag
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !52
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit748

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit748: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i746, %bb.af
  %.pn = phi { ptr, i32 } [ %i.de, %bb.af ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i746 ], [ %i.df, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.bx

bb.ah:                                            ; preds = %bb.ab
  %i.dl = icmp eq i32 %i.cy, 1
  br i1 %i.dl, label %bb.ai, label %.preheader802

.preheader802:                                    ; preds = %bb.ah
  %i.dm = icmp sgt i32 %i.f, 0
  br i1 %i.dm, label %.lr.ph819, label %.loopexit801

.lr.ph819:                                        ; preds = %.preheader802
  %i.dn = sext i32 %i.s to i64
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.at

bb.ai:                                            ; preds = %bb.ah
  %i.do = and i32 %i.f, 3
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.aj, label %.loopexit801

bb.aj:                                            ; preds = %bb.ai
  %i.dq = ashr exact i32 %i.f, 1                  ; 3 uses
  %i.dr = sext i32 %i.dq to i64                   ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dr ; 2 uses
  %i.dt = icmp sgt i32 %i.dq, 0
  br i1 %i.dt, label %.lr.ph823, label %.loopexit801

.lr.ph823:                                        ; preds = %bb.aj
  %i.du = shl nsw i32 %i.s, 1
  %i.dv = sext i32 %i.du to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph823, %bb.as
  %indvars.iv939 = phi i64 [ 0, %.lr.ph823 ], [ %indvars.iv.next940, %bb.as ] ; 4 uses
  %.2821 = phi ptr [ %i.d, %.lr.ph823 ], [ %i.eu, %bb.as ] ; 2 uses
  %i.dw = load i32, ptr %.2821, align 4, !tbaa !42 ; 2 uses
  %i.dx = icmp ult i32 %i.dw, %i.dq
  br i1 %i.dx, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cvL3DFTIfEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_, ptr noundef nonnull @.str.1, i32 noundef 941) #22
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %bb.al
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751

bb.ap:                                            ; preds = %bb.am
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = load ptr, ptr %13, align 8, !tbaa !51   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i749

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i749: ; preds = %bb.ap
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !52
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i749, %bb.ao
  %.pn707 = phi { ptr, i32 } [ %i.dy, %bb.ao ], [ %i.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i749 ], [ %i.dz, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.bx

bb.aq:                                            ; preds = %bb.ak
  %i.ef = or disjoint i64 %indvars.iv939, 1       ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ef ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 4, !tbaa !109
  %i.ei = zext nneg i32 %i.dw to i64              ; 3 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.ei ; 3 uses
  %i.ek = load i64, ptr %i.ej, align 4, !tbaa !109
  store i64 %i.ek, ptr %i.eg, align 4, !tbaa !109
  store i64 %i.eh, ptr %i.ej, align 4, !tbaa !109
  %i.el = icmp samesign ult i64 %indvars.iv939, %i.ei
  br i1 %i.el, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv939 ; 2 uses
  %i.en = load i64, ptr %i.em, align 4, !tbaa !109
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ei ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 4, !tbaa !109
  store i64 %i.ep, ptr %i.em, align 4, !tbaa !109
  store i64 %i.en, ptr %i.eo, align 4, !tbaa !109
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.ef ; 2 uses
  %i.er = load i64, ptr %i.eq, align 4, !tbaa !109
  %i.es = getelementptr i8, ptr %i.ej, i64 8      ; 2 uses
  %i.et = load i64, ptr %i.es, align 4, !tbaa !109
  store i64 %i.et, ptr %i.eq, align 4, !tbaa !109
  store i64 %i.er, ptr %i.es, align 4, !tbaa !109
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %indvars.iv.next940 = add nuw nsw i64 %indvars.iv939, 2 ; 2 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr %.2821, i64 %i.dv
  %i.ev = icmp slt i64 %indvars.iv.next940, %i.dr
  br i1 %i.ev, label %bb.ak, label %.loopexit801, !llvm.loop !440

bb.at:                                            ; preds = %.lr.ph819, %bb.bb
  %indvars.iv936 = phi i64 [ 0, %.lr.ph819 ], [ %indvars.iv.next937, %bb.bb ] ; 3 uses
  %.3818 = phi ptr [ %i.d, %.lr.ph819 ], [ %i.fl, %bb.bb ] ; 2 uses
  %i.ew = load i32, ptr %.3818, align 4, !tbaa !42 ; 2 uses
  %i.ex = icmp ult i32 %i.ew, %i.f
  br i1 %i.ex, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cvL3DFTIfEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_, ptr noundef nonnull @.str.1, i32 noundef 958) #22
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.au
end_hunk_0
begin_hunk_1_@_ZN2cvL7CCSIDFTIfEEvRKNS_13OcvDftOptionsEPKT_PS4_:bb.a
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !109 ; 2 uses
  %i.gd = fneg <2 x float> %i.fr
  %i.ge = shufflevector <2 x float> %i.fr, <2 x float> %i.gd, <2 x i32> <i32 0, i32 3>
  %i.gf = fsub <2 x float> %i.ge, %i.fz           ; 2 uses
  %i.gg = fadd <2 x float> %i.fr, %i.fz
  %i.gh = fsub <2 x float> %i.fr, %i.fz
  %i.gi = shufflevector <2 x float> %i.gg, <2 x float> %i.gh, <2 x i32> <i32 0, i32 3>
  br i1 %i.em, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv269
  store <2 x float> %i.gf, ptr %i.gj, align 4, !tbaa !109
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.gk = lshr exact i64 %indvars.iv269, 1        ; 2 uses
  %i.gl = load ptr, ptr %i.fb, align 8, !tbaa !139 ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gk
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !42
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [4 x i8], ptr %2, i64 %i.go
  store <2 x float> %i.gf, ptr %i.gp, align 4, !tbaa !109
  %i.gq = sub nuw nsw i64 %i.fc, %i.gk
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !42
  %i.gt = sext i32 %i.gs to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink286 = phi i64 [ %i.gt, %bb.x ], [ %i.fd, %bb.w ]
  %i.gu = getelementptr inbounds [4 x i8], ptr %2, i64 %.sink286
  store <2 x float> %i.gi, ptr %i.gu, align 4, !tbaa !109
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 2 ; 3 uses
  %i.gv = icmp samesign ult i64 %indvars.iv.next270, %i.fc
  br i1 %i.gv, label %bb.v, label %._crit_edge257.loopexit, !llvm.loop !507

._crit_edge257.loopexit:                          ; preds = %bb.y
  %i.gw = trunc nuw nsw i64 %indvars.iv.next270 to i32
  br label %._crit_edge257

._crit_edge257:                                   ; preds = %._crit_edge257.loopexit, %bb.u
  %.2226.lcssa = phi i32 [ 2, %bb.u ], [ %i.gw, %._crit_edge257.loopexit ]
  %.0222.lcssa = phi float [ %i.eq, %bb.u ], [ %i.gc, %._crit_edge257.loopexit ]
  %.not240 = icmp sgt i32 %.2226.lcssa, %i.ez
  br i1 %.not240, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %._crit_edge257
  %i.gx = sext i32 %i.ez to i64                   ; 3 uses
  %i.gy = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.gx
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !109
  %i.ha = insertelement <2 x float> poison, float %.0222.lcssa, i64 0
  %i.hb = insertelement <2 x float> %i.ha, float %i.gz, i64 1
  %i.hc = fmul <2 x float> %i.hb, splat (float 2.000000e+00)
  br i1 %i.em, label %bb.aa, label %.sink.split

bb.aa:                                            ; preds = %bb.z
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !139
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.gx
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !42
  %i.hh = shl nsw i32 %i.hg, 1
  %i.hi = sext i32 %i.hh to i64
  br label %.sink.split

.sink.split:                                      ; preds = %bb.z, %bb.aa
  %.sink288 = phi i64 [ %i.hi, %bb.aa ], [ %i.gx, %bb.z ]
  %i.hj = getelementptr inbounds [4 x i8], ptr %2, i64 %.sink288
  store <2 x float> %i.hc, ptr %i.hj, align 4, !tbaa !109
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %._crit_edge257
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !145 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !42
  %i.hn = ashr i32 %i.hm, 1                       ; 2 uses
  store i32 %i.hn, ptr %i.hl, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false), !tbaa.struct !148
  %i.ho = icmp eq i32 %i.hn, 1                    ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !145
  %i.hr = zext i1 %i.ho to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.hr
  store ptr %i.hs, ptr %i.hp, align 8, !tbaa !145
  %.neg = sext i1 %i.ho to i32
  %i.ht = load i32, ptr %8, align 8, !tbaa !22
  %i.hu = add i32 %i.ht, %.neg
  store i32 %i.hu, ptr %8, align 8, !tbaa !22
  %i.hv = getelementptr inbounds nuw i8, ptr %8, i64 50
  store i8 0, ptr %i.hv, align 2, !tbaa !146
  %i.hw = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i8 0, ptr %i.hw, align 8, !tbaa !141
  %i.hx = getelementptr inbounds nuw i8, ptr %8, i64 49
  %i.hy = zext i1 %i.em to i8
  store i8 %i.hy, ptr %i.hx, align 1, !tbaa !144
  %i.hz = getelementptr inbounds nuw i8, ptr %8, i64 16
  store double 1.000000e+00, ptr %i.hz, align 8, !tbaa !143
  %i.ia = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 %i.ez, ptr %i.ia, align 4, !tbaa !140
  call fastcc void @_ZN2cvL3DFTIfEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_(ptr noundef nonnull align 8 dereferenceable(65) %8, ptr noundef nonnull %2, ptr noundef nonnull %2)
  %i.ib = load ptr, ptr %i.hk, align 8, !tbaa !145 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !42
  %i.id = shl i32 %i.ic, 1
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !42
  %i.ie = icmp sgt i32 %i.b, 0
  br i1 %i.ie, label %.lr.ph261, label %._crit_edge262

.lr.ph261:                                        ; preds = %bb.ab
  %i.if = fneg float %i.h                         ; 2 uses
  %i.ig = add nsw i64 %i.es, -2                   ; 2 uses
  %i.ih = lshr exact i64 %i.ig, 1
  %i.ii = add nuw i64 %i.ih, 1                    ; 2 uses
  %min.iters.check290 = icmp eq i64 %i.ig, 0
  br i1 %min.iters.check290, label %scalar.ph289.preheader, label %vector.ph291

vector.ph291:                                     ; preds = %.lr.ph261
  %n.vec292 = and i64 %i.ii, -2                   ; 3 uses
  %i.ij = shl i64 %n.vec292, 1
  %broadcast.splatinsert293 = insertelement <2 x float> poison, float %i.if, i64 0
  %broadcast.splatinsert295 = insertelement <2 x float> poison, float %i.h, i64 0
  %i.ik = shufflevector <2 x float> %broadcast.splatinsert295, <2 x float> %broadcast.splatinsert293, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  br label %vector.body297

vector.body297:                                   ; preds = %vector.body297, %vector.ph291
  %index298 = phi i64 [ 0, %vector.ph291 ], [ %index.next301, %vector.body297 ] ; 2 uses
  %.idx306 = shl nuw i64 %index298, 3
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 %.idx306 ; 2 uses
  %wide.vec = load <4 x float>, ptr %i.il, align 4, !tbaa !109
  %interleaved.vec300 = fmul <4 x float> %wide.vec, %i.ik
  store <4 x float> %interleaved.vec300, ptr %i.il, align 4, !tbaa !109
  %index.next301 = add nuw i64 %index298, 2       ; 2 uses
  %i.im = icmp eq i64 %index.next301, %n.vec292
  br i1 %i.im, label %middle.block302, label %vector.body297, !llvm.loop !508

middle.block302:                                  ; preds = %vector.body297
  %cmp.n = icmp eq i64 %i.ii, %n.vec292
  br i1 %cmp.n, label %._crit_edge262, label %scalar.ph289.preheader

scalar.ph289.preheader:                           ; preds = %.lr.ph261, %middle.block302
  %indvars.iv272.ph = phi i64 [ 0, %.lr.ph261 ], [ %i.ij, %middle.block302 ]
  %i.in = insertelement <2 x float> poison, float %i.h, i64 0
  %i.io = insertelement <2 x float> %i.in, float %i.if, i64 1
  br label %scalar.ph289

scalar.ph289:                                     ; preds = %scalar.ph289.preheader, %scalar.ph289
  %indvars.iv272 = phi i64 [ %indvars.iv.next273, %scalar.ph289 ], [ %indvars.iv272.ph, %scalar.ph289.preheader ] ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv272 ; 2 uses
  %i.iq = load <2 x float>, ptr %i.ip, align 4, !tbaa !109
  %i.ir = fmul <2 x float> %i.iq, %i.io
  store <2 x float> %i.ir, ptr %i.ip, align 4, !tbaa !109
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 2 ; 2 uses
  %i.is = icmp slt i64 %indvars.iv.next273, %i.es
  br i1 %i.is, label %scalar.ph289, label %._crit_edge262, !llvm.loop !509

._crit_edge262:                                   ; preds = %scalar.ph289, %middle.block302, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.ac

bb.ac:                                            ; preds = %bb.q, %._crit_edge262, %._crit_edge249, %bb.p
  br i1 %i.e, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store float %.0223, ptr %.0, align 4, !tbaa !109
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  ret void

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn236.pn = phi { ptr, i32 } [ %.pn236, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn236.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cvL3DFTIdEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(65) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZNKSt9type_infoeqERKS_.exit.thread804:
  %3 = alloca %"struct.cv::DFT_R3.19", align 1    ; 3 uses
  %4 = alloca %"struct.cv::DFT_R2.17", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"struct.cv::DFT_R2.17", align 1   ; 3 uses
  %18 = alloca %"struct.cv::DFT_R3.19", align 1   ; 3 uses
  %19 = alloca %"struct.cv::DFT_R5.20", align 1   ; 3 uses
  %20 = alloca %"class.cv::AutoBuffer.21", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138  ; 29 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !139  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 10 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !140  ; 22 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i8, ptr %i.g, align 8, !tbaa !141, !range !44, !noundef !45
  %i.i = trunc nuw i8 %i.h to i1                  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !142  ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !143 ; 5 uses
  %i.n = icmp eq i32 %i.k, %i.f
  br i1 %i.n, label %bb.c, label %bb.a

bb.a:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread804
  %i.o = shl nsw i32 %i.f, 1
  %i.p = icmp eq i32 %i.k, %i.o
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = sdiv i32 %i.k, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_ZNKSt9type_infoeqERKS_.exit.thread804
  %i.r = phi i32 [ 1, %_ZNKSt9type_infoeqERKS_.exit.thread804 ], [ %i.q, %bb.b ], [ 2, %bb.a ] ; 6 uses
  %.not703 = icmp eq ptr %2, %1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.t = load i8, ptr %i.s, align 1, !tbaa !144, !range !44, !noundef !45
  %i.u = trunc nuw i8 %i.t to i1                  ; 2 uses
  br i1 %.not703, label %bb.aa, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.u, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cvL3DFTIfEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_, ptr noundef nonnull @.str.1, i32 noundef 894) #22
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739

bb.i:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %5, align 8, !tbaa !51     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i737

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i737: ; preds = %bb.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !52
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i737, %bb.h
  %.pn723 = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i737 ], [ %i.w, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.bx

bb.j:                                             ; preds = %bb.d
  %21 = add nsw i32 %i.f, -2                      ; 2 uses
  %.not713824 = icmp slt i32 %i.f, 2              ; 2 uses
  br i1 %i.i, label %.preheader817, label %.preheader818

.preheader818:                                    ; preds = %bb.j
  br i1 %.not713824, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader818
  %i.ac = sext i32 %i.r to i64
  %i.ad = shl nsw i32 %i.r, 1
  %i.ae = sext i32 %i.ad to i64
  br label %bb.k

.preheader817:                                    ; preds = %bb.j
  br i1 %.not713824, label %._crit_edge828, label %.lr.ph827

.lr.ph827:                                        ; preds = %.preheader817
  %i.af = sext i32 %i.r to i64
  %i.ag = shl nsw i32 %i.r, 1
  %i.ah = sext i32 %i.ag to i64
  br label %bb.s

bb.k:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %.0823 = phi ptr [ %i.d, %.lr.ph ], [ %i.ba, %bb.q ] ; 3 uses
  %i.ai = load i32, ptr %.0823, align 4, !tbaa !42 ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %.0823, i64 %i.ac
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !42 ; 2 uses
  %i.al = icmp ult i32 %i.ai, %i.f
  %i.am = icmp ult i32 %i.ak, %i.f
  %or.cond = select i1 %i.al, i1 %i.am, i1 false
  br i1 %or.cond, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cvL3DFTIfEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_, ptr noundef nonnull @.str.1, i32 noundef 900) #22
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742

bb.p:                                             ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i740

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i740: ; preds = %bb.p
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !52
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i740, %bb.o
  %.pn711 = phi { ptr, i32 } [ %i.an, %bb.o ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i740 ], [ %i.ao, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.bx

bb.q:                                             ; preds = %bb.k
  %i.au = zext nneg i32 %i.ai to i64
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.au
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !535
  %i.ax = zext nneg i32 %i.ak to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !tbaa.struct !535
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %.0823, i64 %i.ae
  %22 = trunc nuw i64 %indvars.iv.next to i32     ; 2 uses
  %.not710 = icmp slt i32 %21, %22
  br i1 %.not710, label %._crit_edge, label %bb.k, !llvm.loop !510

._crit_edge:                                      ; preds = %bb.q, %.preheader818
  %.0641.lcssa = phi i32 [ 0, %.preheader818 ], [ %22, %bb.q ]
  %i.bb = icmp slt i32 %.0641.lcssa, %i.f
  br i1 %i.bb, label %bb.r, label %bb.bd

bb.r:                                             ; preds = %._crit_edge
  %i.bc = add nsw i32 %i.f, -1
  %i.bd = sext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr inbounds [16 x i8], ptr %1, i64 %i.bd
  %i.bf = getelementptr inbounds [16 x i8], ptr %2, i64 %i.bd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false), !tbaa.struct !535
  br label %bb.bd

bb.s:                                             ; preds = %.lr.ph827, %bb.y
  %indvars.iv946 = phi i64 [ 0, %.lr.ph827 ], [ %indvars.iv.next947, %bb.y ] ; 2 uses
  %.1826 = phi ptr [ %i.d, %.lr.ph827 ], [ %i.cg, %bb.y ] ; 3 uses
  %i.bg = load i32, ptr %.1826, align 4, !tbaa !42 ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %.1826, i64 %i.af
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !42 ; 2 uses
  %i.bj = icmp ult i32 %i.bg, %i.f
  %i.bk = icmp ult i32 %i.bi, %i.f
  %or.cond729 = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %or.cond729, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cvL3DFTIfEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_, ptr noundef nonnull @.str.1, i32 noundef 912) #22
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit745

bb.x:                                             ; preds = %bb.u
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %9, align 8, !tbaa !51    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit745, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i743

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i743: ; preds = %bb.x
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !52
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit745

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit745: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i743, %bb.w
  %.pn721 = phi { ptr, i32 } [ %i.bl, %bb.w ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i743 ], [ %i.bm, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.bx

bb.y:                                             ; preds = %bb.s
  %i.bs = zext nneg i32 %i.bg to i64
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.bs ; 2 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !133
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !134
  %i.bx = fneg double %i.bw
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv946 ; 4 uses
  store double %i.bu, ptr %i.by, align 8, !tbaa !113
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store double %i.bx, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !113
  %i.bz = zext nneg i32 %i.bi to i64
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.bz ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !133
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !134
  %i.ce = fneg double %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store double %i.cb, ptr %i.cf, align 8, !tbaa !113
  %.sroa.18.0..sroa_idx769 = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store double %i.ce, ptr %.sroa.18.0..sroa_idx769, align 8, !tbaa !113
  %indvars.iv.next947 = add nuw nsw i64 %indvars.iv946, 2 ; 2 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %.1826, i64 %i.ah
  %23 = trunc nuw i64 %indvars.iv.next947 to i32  ; 2 uses
  %.not713 = icmp slt i32 %21, %23
  br i1 %.not713, label %._crit_edge828, label %bb.s, !llvm.loop !511

._crit_edge828:                                   ; preds = %bb.y, %.preheader817
  %.1642.lcssa = phi i32 [ 0, %.preheader817 ], [ %23, %bb.y ] ; 2 uses
  %i.ch = icmp slt i32 %.1642.lcssa, %i.f
  br i1 %i.ch, label %bb.z, label %bb.bd

bb.z:                                             ; preds = %._crit_edge828
  %i.ci = sext i32 %i.f to i64
  %i.cj = getelementptr [16 x i8], ptr %1, i64 %i.ci ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 -16
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !133
  %i.cm = getelementptr i8, ptr %i.cj, i64 -8
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !134
  %i.co = fneg double %i.cn
  %i.cp = zext nneg i32 %.1642.lcssa to i64
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.cp ; 2 uses
  store double %i.cl, ptr %i.cq, align 8, !tbaa !113
  %.sroa.18.0..sroa_idx771 = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store double %i.co, ptr %.sroa.18.0..sroa_idx771, align 8, !tbaa !113
  br label %bb.bd

bb.aa:                                            ; preds = %bb.c
  br i1 %i.u, label %.loopexit814, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !145 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !42
  %i.cu = load i32, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr [4 x i8], ptr %i.cs, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 -4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !42
  %i.cz = icmp eq i32 %i.ct, %i.cy
  br i1 %i.cz, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cvL3DFTIfEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_, ptr noundef nonnull @.str.1, i32 noundef 930) #22
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit748

bb.ag:                                            ; preds = %bb.ad
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = load ptr, ptr %11, align 8, !tbaa !51   ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit748, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i746

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i746: ; preds = %bb.ag
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !52
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit748

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit748: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i746, %bb.af
  %.pn = phi { ptr, i32 } [ %i.da, %bb.af ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i746 ], [ %i.db, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.bx

bb.ah:                                            ; preds = %bb.ab
  %i.dh = icmp eq i32 %i.cu, 1
  br i1 %i.dh, label %bb.ai, label %.preheader815

.preheader815:                                    ; preds = %bb.ah
  %i.di = icmp sgt i32 %i.f, 0
  br i1 %i.di, label %.lr.ph832, label %.loopexit814

.lr.ph832:                                        ; preds = %.preheader815
  %i.dj = sext i32 %i.r to i64
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.at

bb.ai:                                            ; preds = %bb.ah
  %i.dk = and i32 %i.f, 3
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.aj, label %.loopexit814

bb.aj:                                            ; preds = %bb.ai
  %i.dm = ashr exact i32 %i.f, 1                  ; 3 uses
  %i.dn = sext i32 %i.dm to i64                   ; 2 uses
  %i.do = getelementptr inbounds [16 x i8], ptr %2, i64 %i.dn ; 2 uses
  %i.dp = icmp sgt i32 %i.dm, 0
  br i1 %i.dp, label %.lr.ph836, label %.loopexit814

.lr.ph836:                                        ; preds = %bb.aj
  %i.dq = shl nsw i32 %i.r, 1
  %i.dr = sext i32 %i.dq to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph836, %bb.as
  %indvars.iv952 = phi i64 [ 0, %.lr.ph836 ], [ %indvars.iv.next953, %bb.as ] ; 4 uses
  %.2834 = phi ptr [ %i.d, %.lr.ph836 ], [ %i.en, %bb.as ] ; 2 uses
  %i.ds = load i32, ptr %.2834, align 4, !tbaa !42 ; 2 uses
  %i.dt = icmp ult i32 %i.ds, %i.dm
  br i1 %i.dt, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cvL3DFTIfEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_, ptr noundef nonnull @.str.1, i32 noundef 941) #22
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %bb.al
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751

bb.ap:                                            ; preds = %bb.am
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = load ptr, ptr %13, align 8, !tbaa !51   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i749

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i749: ; preds = %bb.ap
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !52
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit751: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i749, %bb.ao
  %.pn707 = phi { ptr, i32 } [ %i.du, %bb.ao ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i749 ], [ %i.dv, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.bx

bb.aq:                                            ; preds = %bb.ak
  %i.eb = or disjoint i64 %indvars.iv952, 1       ; 2 uses
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.eb ; 2 uses
  %i.ed = zext nneg i32 %i.ds to i64              ; 3 uses
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.ed ; 3 uses
  %i.ef = load <2 x double>, ptr %i.ec, align 8, !tbaa !113
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i64 16, i1 false), !tbaa.struct !535
  store <2 x double> %i.ef, ptr %i.ee, align 8, !tbaa !113
  %i.eg = icmp samesign ult i64 %indvars.iv952, %i.ed
  br i1 %i.eg, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv952 ; 2 uses
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ed ; 2 uses
  %i.ej = load <2 x double>, ptr %i.eh, align 8, !tbaa !113
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i64 16, i1 false), !tbaa.struct !535
  store <2 x double> %i.ej, ptr %i.ei, align 8, !tbaa !113
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.eb ; 2 uses
  %i.el = getelementptr i8, ptr %i.ee, i64 16     ; 2 uses
  %i.em = load <2 x double>, ptr %i.ek, align 8, !tbaa !113
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(16) %i.el, i64 16, i1 false), !tbaa.struct !535
  store <2 x double> %i.em, ptr %i.el, align 8, !tbaa !113
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %indvars.iv.next953 = add nuw nsw i64 %indvars.iv952, 2 ; 2 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %.2834, i64 %i.dr
  %i.eo = icmp slt i64 %indvars.iv.next953, %i.dn
  br i1 %i.eo, label %bb.ak, label %.loopexit814, !llvm.loop !512

bb.at:                                            ; preds = %.lr.ph832, %bb.bb
  %indvars.iv949 = phi i64 [ 0, %.lr.ph832 ], [ %indvars.iv.next950, %bb.bb ] ; 3 uses
  %.3831 = phi ptr [ %i.d, %.lr.ph832 ], [ %i.fd, %bb.bb ] ; 2 uses
  %i.ep = load i32, ptr %.3831, align 4, !tbaa !42 ; 2 uses
  %i.eq = icmp ult i32 %i.ep, %i.f
  br i1 %i.eq, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cvL3DFTIfEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_, ptr noundef nonnull @.str.1, i32 noundef 958) #22
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.au
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754
end_hunk_1
