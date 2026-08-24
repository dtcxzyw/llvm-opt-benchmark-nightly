Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ccalib?download=true
inline.NumInlined: 1037
inline.NumDeleted: 460
begin_hunk_0_@_ZN2cv6ccalib13CustomPattern12findRtRANSACERKNS_11_InputArrayES4_S4_RKNS_17_InputOutputArrayES7_bifiRKNS_12_OutputArrayEi:bb.a
bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef zeroext i1 @_ZN2cv6ccalib13CustomPattern11findPatternERKNS_11_InputArrayERKNS_12_OutputArrayES7_ddbS7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, double noundef f0x3FE6666666666666, double noundef 8.000000e+00, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %i.h, label %bb.g, label %bb.r

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.u

bb.g:                                             ; preds = %bb.e
  %i.j = sitofp i32 %9 to double
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67
  %i.m = load ptr, ptr %12, align 8, !tbaa !65
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 3 uses
  %i.r = uitofp i64 %i.q to double
  %i.s = fdiv double %i.j, %i.r                   ; 3 uses
  %i.t = fcmp olt double %i.s, 1.000000e-03
  %i.u = fcmp ogt double %i.s, f0x3FEFF7CED916872B
  %i.v = select i1 %i.u, double f0x3FEFF7CED916872B, double %i.s
  %i.w = select i1 %i.t, double 1.000000e-03, double %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !83
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !96
  %i.ab = load ptr, ptr %13, align 8, !tbaa !98
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 12                ; 2 uses
  %.not.i = icmp ugt i64 %i.af, 2147483647
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.af, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_7Point3_IfEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #23
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  store i32 -2130509755, ptr %16, align 8, !tbaa !62
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %13, ptr %i.ag, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.ah = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 0, ptr %i.ah, align 8, !tbaa !82
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 20
  store i32 0, ptr %i.ai, align 4, !tbaa !83
  %.not.i31 = icmp ugt i64 %i.q, 2147483647
  br i1 %.not.i31, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.q, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #23
          to label %.noexc32 unwind label %bb.n

.noexc32:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  store i32 -2130509787, ptr %17, align 8, !tbaa !62
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %12, ptr %i.aj, align 8, !tbaa !56
  %i.ak = invoke noundef zeroext i1 @_ZN2cv14solvePnPRansacERKNS_11_InputArrayES2_S2_S2_RKNS_12_OutputArrayES5_bifdS5_i(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext %6, i32 noundef %7, float noundef %8, double noundef %i.w, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %11)
          to label %bb.l unwind label %bb.o       ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.r

bb.m:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn27 = phi { ptr, i32 } [ %i.an, %bb.o ], [ %i.am, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %bb.p ], [ %i.al, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.u

bb.r:                                             ; preds = %bb.e, %bb.l
  %i.ao = load ptr, ptr %13, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !97
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #24
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit:   ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.au = load ptr, ptr %12, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i33 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !66
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #24
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  ret i1 %i.h

bb.u:                                             ; preds = %bb.q, %bb.f
  %.pn27.pn.pn = phi { ptr, i32 } [ %.pn27.pn, %bb.q ], [ %i.i, %bb.f ]
  %i.ba = load ptr, ptr %13, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.i34 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit35, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !97
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #24
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit35

_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit35: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.bg = load ptr, ptr %12, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i36 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit37, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit35
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !66
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #24
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit37

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit37:  ; preds = %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit35, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  resume { ptr, i32 } %.pn27.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6ccalib13CustomPattern15drawOrientationERKNS_17_InputOutputArrayERKNS_11_InputArrayES7_S7_S7_di(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(560) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, double noundef %6, i32 noundef %7) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::vector.9", align 8     ; 9 uses
  %9 = alloca %"class.std::vector", align 8       ; 12 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %13 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %14 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %15 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %16 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %17 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %18 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load double, ptr %i.a, align 8, !tbaa !88 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %19 = load <2 x i32>, ptr %i.c, align 8, !tbaa !69
  %20 = sitofp <2 x i32> %19 to <2 x double>      ; 2 uses
  %21 = extractelement <2 x double> %20, i64 1
  %22 = fmul double %i.b, %21
  %23 = fmul double %22, 5.000000e-01
  %24 = fptrunc double %23 to float               ; 3 uses
  %25 = extractelement <2 x double> %20, i64 0
  %26 = fmul double %i.b, %25
  %i.d = fmul double %26, 5.000000e-01
  %i.e = fptrunc double %i.d to float             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %27 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25 ; 11 uses
  store ptr %27, ptr %8, align 8, !tbaa !98
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 48 ; 2 uses
  %29 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %30 = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %28, ptr %30, align 8, !tbaa !97
  store ptr %28, ptr %29, align 8, !tbaa !96
  %31 = fmul double %6, %i.b
  %32 = fptrunc double %31 to float               ; 3 uses
  store float %24, ptr %27, align 4, !tbaa !63
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 4
  store float %i.e, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !63
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 8
  store float 0.000000e+00, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !63
  %33 = fadd float %32, %24
  %34 = fadd float %i.e, 0.000000e+00             ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %33, i64 0
  %.sroa.0.4.vec.insert.i.a = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %34, i64 1
  %35 = getelementptr inbounds nuw i8, ptr %27, i64 12
  store <2 x float> %.sroa.0.4.vec.insert.i.a, ptr %35, align 4
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 20
  store float 0.000000e+00, ptr %.sroa.519.0..sroa_idx, align 4, !tbaa !63
  %36 = fadd float %24, 0.000000e+00
  %i.f = fadd float %32, %i.e
  %.sroa.0.0.vec.insert.i64 = insertelement <2 x float> poison, float %36, i64 0 ; 2 uses
  %.sroa.0.4.vec.insert.i65 = insertelement <2 x float> %.sroa.0.0.vec.insert.i64, float %i.f, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %27, i64 24
  store <2 x float> %.sroa.0.4.vec.insert.i65, ptr %i.g, align 4
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 32
  store float 0.000000e+00, ptr %.sroa.513.0..sroa_idx, align 4, !tbaa !63
  %i.h = fsub float 0.000000e+00, %32
  %.sroa.0.4.vec.insert.i69 = insertelement <2 x float> %.sroa.0.0.vec.insert.i64, float %34, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %27, i64 36
  store <2 x float> %.sroa.0.4.vec.insert.i69, ptr %i.i, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 44
  store float %i.h, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !82
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 0, ptr %i.k, align 4, !tbaa !83
  store i32 -2130509755, ptr %10, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %8, ptr %i.l, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %i.n, align 8
  store i32 -2113732571, ptr %11, align 8, !tbaa !62
  store ptr %9, ptr %i.m, align 8, !tbaa !56
  %i.o = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_d(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %i.o, double noundef 0.000000e+00)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.p = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc72 unwind label %bb.n

.noexc72:                                         ; preds = %bb.c
  %i.q = icmp eq i32 %i.p, 65536
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc72
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56, !noalias !228
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %i.s)
          to label %bb.f unwind label %bb.n

bb.e:                                             ; preds = %.noexc72
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 0, ptr %i.u, align 8
  store i32 50397184, ptr %13, align 8, !tbaa !62
  store ptr %12, ptr %i.t, align 8, !tbaa !56
  %i.v = load ptr, ptr %9, align 8, !tbaa !65     ; 4 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !182
  %i.x = insertelement <4 x float> poison, float %i.w, i64 0
  %i.y = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !184
  %i.ab = insertelement <4 x float> poison, float %i.aa, i64 0
  %i.ac = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ab)
  %.sroa.2.0.insert.ext.i = zext i32 %i.ac to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.y to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !182
  %i.af = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.ag = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !184
  %i.aj = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.ak = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.aj)
  %.sroa.2.0.insert.ext.i75 = zext i32 %i.ak to i64
  %.sroa.2.0.insert.shift.i76 = shl nuw i64 %.sroa.2.0.insert.ext.i75, 32
  %.sroa.0.0.insert.ext.i77 = zext i32 %i.ag to i64
  %.sroa.0.0.insert.insert.i78 = or disjoint i64 %.sroa.2.0.insert.shift.i76, %.sroa.0.0.insert.ext.i77
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %i.al, align 8, !tbaa !89
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 %.sroa.0.0.insert.insert.i, i64 %.sroa.0.0.insert.insert.i78, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef %7, i32 noundef 8, i32 noundef 0)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.an, align 8
  store i32 50397184, ptr %15, align 8, !tbaa !62
  store ptr %12, ptr %i.am, align 8, !tbaa !56
  %i.ao = load ptr, ptr %9, align 8, !tbaa !65    ; 4 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !182
  %i.aq = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.ar = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.at = load float, ptr %i.as, align 4, !tbaa !184
  %i.au = insertelement <4 x float> poison, float %i.at, i64 0
  %i.av = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.au)
  %.sroa.2.0.insert.ext.i79 = zext i32 %i.av to i64
  %.sroa.2.0.insert.shift.i80 = shl nuw i64 %.sroa.2.0.insert.ext.i79, 32
  %.sroa.0.0.insert.ext.i81 = zext i32 %i.ar to i64
  %.sroa.0.0.insert.insert.i82 = or disjoint i64 %.sroa.2.0.insert.shift.i80, %.sroa.0.0.insert.ext.i81
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !182
  %i.ay = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.az = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ay)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !184
  %i.bc = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.bd = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.bc)
  %.sroa.2.0.insert.ext.i83 = zext i32 %i.bd to i64
  %.sroa.2.0.insert.shift.i84 = shl nuw i64 %.sroa.2.0.insert.ext.i83, 32
  %.sroa.0.0.insert.ext.i85 = zext i32 %i.az to i64
  %.sroa.0.0.insert.insert.i86 = or disjoint i64 %.sroa.2.0.insert.shift.i84, %.sroa.0.0.insert.ext.i85
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store <2 x double> <double 0.000000e+00, double 2.550000e+02>, ptr %16, align 16, !tbaa !89
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 %.sroa.0.0.insert.insert.i82, i64 %.sroa.0.0.insert.insert.i86, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef %7, i32 noundef 8, i32 noundef 0)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.bf = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i64 0, ptr %i.bg, align 8
  store i32 50397184, ptr %17, align 8, !tbaa !62
  store ptr %12, ptr %i.bf, align 8, !tbaa !56
  %i.bh = load ptr, ptr %9, align 8, !tbaa !65    ; 4 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !182
  %i.bj = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.bk = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.bj)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !184
  %i.bn = insertelement <4 x float> poison, float %i.bm, i64 0
  %i.bo = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.bn)
  %.sroa.2.0.insert.ext.i87 = zext i32 %i.bo to i64
  %.sroa.2.0.insert.shift.i88 = shl nuw i64 %.sroa.2.0.insert.ext.i87, 32
  %.sroa.0.0.insert.ext.i89 = zext i32 %i.bk to i64
  %.sroa.0.0.insert.insert.i90 = or disjoint i64 %.sroa.2.0.insert.shift.i88, %.sroa.0.0.insert.ext.i89
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !182
  %i.br = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.bs = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.br)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 28
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !184
  %i.bv = insertelement <4 x float> poison, float %i.bu, i64 0
  %i.bw = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.bv)
  %.sroa.2.0.insert.ext.i91 = zext i32 %i.bw to i64
  %.sroa.2.0.insert.shift.i92 = shl nuw i64 %.sroa.2.0.insert.ext.i91, 32
  %.sroa.0.0.insert.ext.i93 = zext i32 %i.bs to i64
  %.sroa.0.0.insert.insert.i94 = or disjoint i64 %.sroa.2.0.insert.shift.i92, %.sroa.0.0.insert.ext.i93
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  store double 2.550000e+02, ptr %18, align 8, !tbaa !89
  %i.bx = getelementptr inbounds nuw i8, ptr %18, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i8 0, i64 24, i1 false)
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 %.sroa.0.0.insert.insert.i90, i64 %.sroa.0.0.insert.insert.i94, ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef %7, i32 noundef 8, i32 noundef 0)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.by = load ptr, ptr %9, align 8, !tbaa !65    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !66
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #24
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.ce = load ptr, ptr %8, align 8, !tbaa !98    ; 3 uses
  %.not.i.i.i95 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit
  %i.cf = load ptr, ptr %30, align 8, !tbaa !97
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.ci) #24
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit:   ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret void

bb.m:                                             ; preds = %bb.b, %bb.a
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.u

bb.n:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.s

bb.p:                                             ; preds = %bb.g
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.s

bb.q:                                             ; preds = %bb.h
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.s

bb.r:                                             ; preds = %bb.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.pn58 = phi { ptr, i32 } [ %i.co, %bb.r ], [ %i.cn, %bb.q ], [ %i.cm, %bb.p ], [ %i.cl, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn58.pn = phi { ptr, i32 } [ %.pn58, %bb.s ], [ %i.ck, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn58.pn.pn = phi { ptr, i32 } [ %.pn58.pn, %bb.t ], [ %i.cj, %bb.m ]
  %i.cp = load ptr, ptr %9, align 8, !tbaa !65    ; 3 uses
  %.not.i.i.i96 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i96, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit97, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !66
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.cu) #24
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit97

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit97:  ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.cv = load ptr, ptr %8, align 8, !tbaa !98    ; 3 uses
  %.not.i.i.i98 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i98, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit99, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit97
  %i.cw = load ptr, ptr %30, align 8, !tbaa !97
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.cz) #24
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit99

_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit99: ; preds = %bb.w, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit97
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  resume { ptr, i32 } %.pn58.pn.pn
}

declare void @_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_d(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9Algorithm5clearEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv9Algorithm5writeERNS_11FileStorageE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9Algorithm4readERKNS_8FileNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv9Algorithm5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK2cv9Algorithm4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare void @_ZNK2cv9Algorithm14getDefaultNameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #1

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !inline_history !231
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !69   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !inline_history !231
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse.cvtss2si(<4 x float>) #19

declare void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52), i64 noundef, ptr noundef, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin nounwind }
attributes #25 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !27, i64 248}
!11 = !{!"_ZTSN2cv6ccalib13CustomPatternE", !12, i64 0, !13, i64 8, !21, i64 216, !26, i64 240, !27, i64 248, !28, i64 256, !28, i64 272, !34, i64 288, !38, i64 304, !43, i64 328, !13, i64 352}
!12 = !{!"_ZTSN2cv9AlgorithmE"}
!13 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !16, i64 56, !17, i64 64, !18, i64 72, !20, i64 128}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"p1 _ZTSN2cv12MatAllocatorE", !15, i64 0}
!17 = !{!"p1 _ZTSN2cv8UMatDataE", !15, i64 0}
!18 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !19, i64 4, !5, i64 8, !6, i64 12}
!19 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!20 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!21 = !{!"_ZTSSt6vectorIN2cv6Point_IfEESaIS2_EE", !22, i64 0}
!22 = !{!"_ZTSSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE", !23, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE12_Vector_implE", !24, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!25 = !{!"p1 _ZTSN2cv6Point_IfEE", !15, i64 0}
!26 = !{!"double", !6, i64 0}
!27 = !{!"bool", !6, i64 0}
!28 = !{!"_ZTSN2cv3PtrINS_9Feature2DEEE", !29, i64 0}
!29 = !{!"_ZTSSt10shared_ptrIN2cv9Feature2DEE", !30, i64 0}
!30 = !{!"_ZTSSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EE", !31, i64 0, !32, i64 8}
!31 = !{!"p1 _ZTSN2cv9Feature2DE", !15, i64 0}
!32 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !33, i64 0}
!33 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!34 = !{!"_ZTSN2cv3PtrINS_17DescriptorMatcherEEE", !35, i64 0}
!35 = !{!"_ZTSSt10shared_ptrIN2cv17DescriptorMatcherEE", !36, i64 0}
!36 = !{!"_ZTSSt12__shared_ptrIN2cv17DescriptorMatcherELN9__gnu_cxx12_Lock_policyE2EE", !37, i64 0, !32, i64 8}
!37 = !{!"p1 _ZTSN2cv17DescriptorMatcherE", !15, i64 0}
end_hunk_0
