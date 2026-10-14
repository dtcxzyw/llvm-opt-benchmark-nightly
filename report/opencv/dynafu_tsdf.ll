Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dynafu_tsdf?download=true
inline.NumInlined: 1368
inline.NumDeleted: 590
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZNK2cv6dynafu13TSDFVolumeCPU7raycastENS_7Affine3IfEENS_4MatxIfLi3ELi3EEENS_5Size_IiEERKNS_12_OutputArrayESA_:bb.a
bb.u:                                             ; preds = %.body, %bb.t
  %.pn17 = phi { ptr, i32 } [ %i.s, %.body ], [ %i.al, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ab

bb.v:                                             ; preds = %bb.n, %bb.m, %_ZN2cv4Mat_INS_3VecIfLi4EEEEC2EONS_3MatE.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.body33, %bb.v
  %.pn19 = phi { ptr, i32 } [ %i.ab, %.body33 ], [ %i.am, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.aa

bb.x:                                             ; preds = %bb.o
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %13) #28
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn21 = phi { ptr, i32 } [ %i.ao, %bb.y ], [ %i.an, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #28
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21, %bb.z ], [ %.pn19, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #28
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.u
  %.pn21.pn.pn.pn = phi { ptr, i32 } [ %.pn21.pn.pn, %bb.aa ], [ %.pn17, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %.pn21.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn21.pn.pn.pn, %bb.ab ], [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %.pn21.pn.pn.pn.pn
}

declare void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6dynafu14RaycastInvokerC2ERNS_4Mat_INS_3VecIfLi4EEEEES6_NS_7Affine3IfEENS_4IntrERKNS0_13TSDFVolumeCPUE(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef byval(%"class.cv::Affine3") align 8 %3, <2 x float> %4, <2 x float> %5, ptr noundef nonnull align 8 dereferenceable(376) %6) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %9 = alloca %"class.cv::Matx.0", align 8        ; 13 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %12 = alloca %"class.cv::Matx.0", align 8       ; 13 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv6dynafu14RaycastInvokerE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %6, ptr %i.c, align 8, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.f = load float, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.h = load float, ptr %i.g, align 8, !tbaa !32
  %i.i = fmul float %i.f, %i.h
  store float %i.i, ptr %i.d, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 100
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load float, ptr %i.k, align 8, !tbaa !26 ; 2 uses
  %i.m = load <2 x float>, ptr %i.j, align 4, !tbaa !33
  %i.n = insertelement <2 x float> poison, float %i.l, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fsub <2 x float> %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 108
  %i.r = load float, ptr %i.q, align 4, !tbaa !101
  %i.s = fsub float %i.r, %i.l
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <2 x float> %i.p, ptr %i.t, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.s, ptr %.sroa.2.0..sroa_idx, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> zeroinitializer, ptr %i.u, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float 0.000000e+00, ptr %i.v, align 8, !tbaa !101
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28, !noalias !254
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %12, i8 0, i64 64, i1 false), !tbaa !33, !noalias !254
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28, !noalias !254
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 -1056833531, ptr %10, align 8, !tbaa !82, !noalias !254
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.w, ptr %i.y, align 8, !tbaa !65, !noalias !254
  store i64 17179869188, ptr %i.x, align 8, !tbaa !28, !noalias !254
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28, !noalias !254
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 -1040056315, ptr %11, align 8, !tbaa !82, !noalias !254
  store ptr %12, ptr %i.z, align 8, !tbaa !65, !noalias !254
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 17179869188, ptr %i.aa, align 8, !tbaa !28, !noalias !254
  %i.ab = invoke noundef double @_ZN2cv6invertERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  %i.ac = fcmp une double %i.ab, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28, !noalias !254
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !254
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %.sroa.0.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 4
  %.sroa.0.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ad = load <2 x float>, ptr %12, align 8, !noalias !255
  %i.ae = load <2 x float>, ptr %.sroa.0.i.sroa.5.0..sroa_idx, align 4, !noalias !255
  %i.af = load <2 x float>, ptr %.sroa.0.i.sroa.6.0..sroa_idx, align 8, !noalias !255
  %.sroa.0.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.sroa.0.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 20
  %i.ag = load <2 x float>, ptr %.sroa.0.i.sroa.8.0..sroa_idx, align 8, !noalias !255
  %i.ah = load <2 x float>, ptr %.sroa.0.i.sroa.9.0..sroa_idx, align 4, !noalias !255
  %.sroa.0.i.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 28
  %.sroa.0.i.sroa.11.0.copyload = load float, ptr %.sroa.0.i.sroa.11.0..sroa_idx, align 4, !noalias !255
  %.sroa.0.i.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 32
  %.sroa.0.i.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.ai = load <2 x float>, ptr %.sroa.0.i.sroa.12.0..sroa_idx, align 8, !noalias !255
  %i.aj = load <2 x float>, ptr %.sroa.0.i.sroa.13.0..sroa_idx, align 4, !noalias !255
  %.sroa.0.i.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 44
  %.sroa.0.i.sroa.15.0.copyload = load float, ptr %.sroa.0.i.sroa.15.0..sroa_idx, align 4, !noalias !255
  %i.ak = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.al = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b
  %.sroa.0.i.sroa.11.0 = phi float [ %.sroa.0.i.sroa.11.0.copyload, %bb.b ], [ 0.000000e+00, %.noexc ]
  %.sroa.0.i.sroa.15.0 = phi float [ %.sroa.0.i.sroa.15.0.copyload, %bb.b ], [ 0.000000e+00, %.noexc ]
  %i.am = phi <4 x float> [ %i.al, %bb.b ], [ zeroinitializer, %.noexc ]
  %i.an = phi <4 x float> [ %i.ak, %bb.b ], [ zeroinitializer, %.noexc ]
  %i.ao = phi <2 x float> [ %i.ad, %bb.b ], [ zeroinitializer, %.noexc ] ; 2 uses
  %i.ap = phi <2 x float> [ %i.ah, %bb.b ], [ zeroinitializer, %.noexc ] ; 2 uses
  %i.aq = phi <2 x float> [ %i.ag, %bb.b ], [ zeroinitializer, %.noexc ] ; 2 uses
  %i.ar = phi <2 x float> [ %i.aj, %bb.b ], [ zeroinitializer, %.noexc ] ; 2 uses
  %i.as = phi <2 x float> [ %i.ai, %bb.b ], [ zeroinitializer, %.noexc ] ; 2 uses
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.au = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.av = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aw = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ax = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28, !noalias !254
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 60
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.6.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.sroa.8.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.sroa.10.0..sroa_idx14.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 108
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.10.0..sroa_idx14.i.i.i, align 4, !alias.scope !258
  %i.bh = load <8 x float>, ptr %3, align 8, !tbaa !33, !noalias !259 ; 7 uses
  %i.bi = load <4 x float>, ptr %i.bd, align 8, !tbaa !33, !noalias !259 ; 4 uses
  %i.bj = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bk = shufflevector <4 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float poison>, <4 x float> %i.bj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bl = shufflevector <8 x float> %i.bh, <8 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bm = shufflevector <8 x float> %i.bh, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison, float poison>, <4 x i32> <i32 8, i32 9, i32 10, i32 3>
  %i.bn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %i.bm, <4 x float> zeroinitializer)
  %i.bo = shufflevector <8 x float> %i.bh, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.bp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ax, <4 x float> %i.bo, <4 x float> %i.bn)
  %i.bq = shufflevector <4 x float> %i.bi, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.br = shufflevector <8 x float> %i.bh, <8 x float> %i.bq, <4 x i32> <i32 4, i32 5, i32 6, i32 11>
  %i.bs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.br, <4 x float> %i.bp)
  %i.bt = insertelement <4 x float> %i.bi, float 1.000000e+00, i64 3
  %i.bu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> %i.am, <4 x float> %i.bs)
  store <4 x float> %i.bu, ptr %i.ay, align 4, !alias.scope !258
  %i.bv = load <2 x float>, ptr %i.bb, align 4, !tbaa !33, !noalias !260 ; 2 uses
  %i.bw = load <2 x float>, ptr %i.az, align 4, !tbaa !33, !noalias !260 ; 2 uses
  %i.bx = load <2 x float>, ptr %i.be, align 4, !tbaa !33, !noalias !260 ; 2 uses
  %i.by = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bz = shufflevector <4 x float> %i.bl, <4 x float> %i.by, <4 x i32> <i32 0, i32 5, i32 6, i32 poison>
  %i.ca = shufflevector <8 x float> %i.bh, <8 x float> poison, <4 x i32> <i32 4, i32 poison, i32 poison, i32 poison>
  %i.cb = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.cc = shufflevector <4 x float> %i.ca, <4 x float> %i.cb, <4 x i32> <i32 0, i32 5, i32 6, i32 poison>
  %i.cd = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 7>
  %i.cf = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.cg = shufflevector <4 x float> %i.bi, <4 x float> %i.cf, <4 x i32> <i32 0, i32 5, i32 6, i32 poison>
  %i.ch = insertelement <4 x float> %i.cg, float %.sroa.0.i.sroa.11.0, i64 3
  %i.ci = load <4 x float>, ptr %i.ba, align 8
  %13 = load <1 x float>, ptr %i.bg, align 4
  %i.cj = load <4 x float>, ptr %i.bc, align 8    ; 3 uses
  %i.ck = load <4 x float>, ptr %i.bf, align 8    ; 3 uses
  %i.cl = shufflevector <2 x float> %i.bw, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cm = shufflevector <8 x float> %i.bh, <8 x float> %i.cl, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> %i.ci, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cp = shufflevector <2 x float> %i.bv, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cq = shufflevector <8 x float> %i.bh, <8 x float> %i.cp, <4 x i32> <i32 4, i32 8, i32 poison, i32 poison>
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ct = shufflevector <2 x float> %i.as, <2 x float> %i.aq, <2 x i32> <i32 0, i32 2>
  %i.cu = shufflevector <1 x float> %13, <1 x float> poison, <2 x i32> zeroinitializer
  %i.cv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.cu, <2 x float> zeroinitializer)
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cx = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.cw, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.co, <4 x float> %i.cx)
  %i.cz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> %i.cs, <4 x float> %i.cy)
  %i.da = shufflevector <4 x float> %i.bz, <4 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.db = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.cw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %i.da, <4 x float> %i.db)
  %i.dd = shufflevector <4 x float> %i.cc, <4 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.de = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aw, <4 x float> %i.dd, <4 x float> %i.dc)
  %i.df = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 7>
  %i.dh = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.di = shufflevector <4 x float> %i.bi, <4 x float> %i.dh, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.dk = insertelement <4 x float> %i.dj, float %.sroa.0.i.sroa.15.0, i64 3
  %i.dl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dg, <4 x float> %i.dk, <4 x float> %i.cz)
  %i.dm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> %i.ch, <4 x float> %i.de)
  store <4 x float> %i.dm, ptr %.sroa.6.0..sroa_idx6.i.i.i, align 4, !alias.scope !258
  store <4 x float> %i.dl, ptr %.sroa.8.0..sroa_idx10.i.i.i, align 4, !alias.scope !258
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !261
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 64, i1 false), !tbaa !33, !noalias !261
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !261
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 -1056833531, ptr %7, align 8, !tbaa !82, !noalias !261
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %3, ptr %i.do, align 8, !tbaa !65, !noalias !261
  store i64 17179869188, ptr %i.dn, align 8, !tbaa !28, !noalias !261
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28, !noalias !261
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 -1040056315, ptr %8, align 8, !tbaa !82, !noalias !261
  store ptr %9, ptr %i.dp, align 8, !tbaa !65, !noalias !261
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 17179869188, ptr %i.dq, align 8, !tbaa !28, !noalias !261
  %i.dr = invoke noundef double @_ZN2cv6invertERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 1)
          to label %.noexc8 unwind label %bb.g

.noexc8:                                          ; preds = %bb.c
  %i.ds = fcmp une double %i.dr, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !261
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !261
  br i1 %i.ds, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc8
  %.sroa.0.i7.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 4
  %.sroa.0.i7.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dt = load <2 x float>, ptr %9, align 8, !noalias !262
  %i.du = load <2 x float>, ptr %.sroa.0.i7.sroa.5.0..sroa_idx, align 4, !noalias !262
  %i.dv = load <2 x float>, ptr %.sroa.0.i7.sroa.6.0..sroa_idx, align 8, !noalias !262
  %.sroa.0.i7.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.0.i7.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.dw = load <2 x float>, ptr %.sroa.0.i7.sroa.8.0..sroa_idx, align 8, !noalias !262
  %i.dx = load <2 x float>, ptr %.sroa.0.i7.sroa.9.0..sroa_idx, align 4, !noalias !262
  %.sroa.0.i7.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 28
  %.sroa.0.i7.sroa.11.0.copyload = load float, ptr %.sroa.0.i7.sroa.11.0..sroa_idx, align 4, !noalias !262
  %.sroa.0.i7.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32
  %.sroa.0.i7.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.dy = load <2 x float>, ptr %.sroa.0.i7.sroa.12.0..sroa_idx, align 8, !noalias !262
  %i.dz = load <2 x float>, ptr %.sroa.0.i7.sroa.13.0..sroa_idx, align 4, !noalias !262
  %.sroa.0.i7.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 44
  %.sroa.0.i7.sroa.15.0.copyload = load float, ptr %.sroa.0.i7.sroa.15.0..sroa_idx, align 4, !noalias !262
  %i.ea = shufflevector <2 x float> %i.du, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.eb = shufflevector <2 x float> %i.dv, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %bb.e

bb.e:                                             ; preds = %.noexc8, %bb.d
  %.sroa.0.i7.sroa.11.0 = phi float [ %.sroa.0.i7.sroa.11.0.copyload, %bb.d ], [ 0.000000e+00, %.noexc8 ]
  %.sroa.0.i7.sroa.15.0 = phi float [ %.sroa.0.i7.sroa.15.0.copyload, %bb.d ], [ 0.000000e+00, %.noexc8 ]
  %i.ec = phi <4 x float> [ %i.eb, %bb.d ], [ zeroinitializer, %.noexc8 ]
  %i.ed = phi <4 x float> [ %i.ea, %bb.d ], [ zeroinitializer, %.noexc8 ]
  %i.ee = phi <2 x float> [ %i.dt, %bb.d ], [ zeroinitializer, %.noexc8 ] ; 2 uses
  %i.ef = phi <2 x float> [ %i.dx, %bb.d ], [ zeroinitializer, %.noexc8 ] ; 2 uses
  %i.eg = phi <2 x float> [ %i.dw, %bb.d ], [ zeroinitializer, %.noexc8 ] ; 2 uses
  %i.eh = phi <2 x float> [ %i.dz, %bb.d ], [ zeroinitializer, %.noexc8 ] ; 2 uses
  %i.ei = phi <2 x float> [ %i.dy, %bb.d ], [ zeroinitializer, %.noexc8 ] ; 2 uses
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ek = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.el = shufflevector <2 x float> %i.eg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.em = shufflevector <2 x float> %i.ef, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.en = shufflevector <2 x float> %i.ee, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !261
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ep = load ptr, ptr %i.c, align 8, !tbaa !102, !nonnull !91, !align !92 ; 9 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 36
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 52
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 56
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 68
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 72
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 44
  %.sroa.6.0..sroa_idx6.i.i.i12 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %.sroa.8.0..sroa_idx10.i.i.i15 = getelementptr inbounds nuw i8, ptr %0, i64 156
  %.sroa.10.0..sroa_idx14.i.i.i18 = getelementptr inbounds nuw i8, ptr %0, i64 172
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.10.0..sroa_idx14.i.i.i18, align 4, !alias.scope !265
  %i.ez = load <8 x float>, ptr %i.eq, align 8, !tbaa !33, !noalias !266 ; 7 uses
  %i.fa = load <4 x float>, ptr %i.ev, align 8, !tbaa !33, !noalias !266 ; 4 uses
  %i.fb = shufflevector <2 x float> %i.ee, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fc = shufflevector <4 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float poison>, <4 x float> %i.fb, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.fd = shufflevector <8 x float> %i.ez, <8 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fe = shufflevector <8 x float> %i.ez, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison, float poison>, <4 x i32> <i32 8, i32 9, i32 10, i32 3>
  %i.ff = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fc, <4 x float> %i.fe, <4 x float> zeroinitializer)
  %i.fg = shufflevector <8 x float> %i.ez, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.fh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.en, <4 x float> %i.fg, <4 x float> %i.ff)
  %i.fi = shufflevector <4 x float> %i.fa, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fj = shufflevector <8 x float> %i.ez, <8 x float> %i.fi, <4 x i32> <i32 4, i32 5, i32 6, i32 11>
  %i.fk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ed, <4 x float> %i.fj, <4 x float> %i.fh)
  %i.fl = insertelement <4 x float> %i.fa, float 1.000000e+00, i64 3
  %i.fm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fl, <4 x float> %i.ec, <4 x float> %i.fk)
  store <4 x float> %i.fm, ptr %i.eo, align 4, !alias.scope !265
  %i.fn = load <2 x float>, ptr %i.et, align 4, !tbaa !33, !noalias !267 ; 2 uses
  %i.fo = load <2 x float>, ptr %i.er, align 4, !tbaa !33, !noalias !267 ; 2 uses
  %i.fp = load <2 x float>, ptr %i.ew, align 4, !tbaa !33, !noalias !267 ; 2 uses
  %i.fq = shufflevector <2 x float> %i.fo, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.fr = shufflevector <4 x float> %i.fd, <4 x float> %i.fq, <4 x i32> <i32 0, i32 5, i32 6, i32 poison>
  %i.fs = shufflevector <8 x float> %i.ez, <8 x float> poison, <4 x i32> <i32 4, i32 poison, i32 poison, i32 poison>
  %i.ft = shufflevector <2 x float> %i.fn, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.fu = shufflevector <4 x float> %i.fs, <4 x float> %i.ft, <4 x i32> <i32 0, i32 5, i32 6, i32 poison>
  %i.fv = shufflevector <2 x float> %i.ef, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 7>
  %i.fx = shufflevector <2 x float> %i.fp, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.fy = shufflevector <4 x float> %i.fa, <4 x float> %i.fx, <4 x i32> <i32 0, i32 5, i32 6, i32 poison>
  %i.fz = insertelement <4 x float> %i.fy, float %.sroa.0.i7.sroa.11.0, i64 3
  %i.ga = load <2 x float>, ptr %i.es, align 8, !tbaa !33, !noalias !266
  %i.gb = load float, ptr %i.ey, align 4, !tbaa !33, !noalias !268
  %i.gc = load <2 x float>, ptr %i.eu, align 8, !tbaa !33, !noalias !266
  %i.gd = load <2 x float>, ptr %i.ex, align 8, !tbaa !33, !noalias !266
  %i.ge = shufflevector <2 x float> %i.fo, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gf = shufflevector <8 x float> %i.ez, <8 x float> %i.ge, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %i.gg = shufflevector <2 x float> %i.ga, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gh = shufflevector <4 x float> %i.gf, <4 x float> %i.gg, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.gi = shufflevector <2 x float> %i.gc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.gj = shufflevector <4 x float> %i.gh, <4 x float> %i.gi, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.gk = shufflevector <2 x float> %i.fn, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gl = shufflevector <8 x float> %i.ez, <8 x float> %i.gk, <4 x i32> <i32 4, i32 8, i32 poison, i32 poison>
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> %i.gi, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.gn = shufflevector <2 x float> %i.gd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.go = shufflevector <4 x float> %i.gm, <4 x float> %i.gn, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.gp = shufflevector <2 x float> %i.ei, <2 x float> %i.eg, <2 x i32> <i32 0, i32 2>
  %i.gq = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gp, <2 x float> %i.gr, <2 x float> zeroinitializer)
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gu = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.gt, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.gv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ej, <4 x float> %i.gj, <4 x float> %i.gu)
  %i.gw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ek, <4 x float> %i.go, <4 x float> %i.gv)
  %i.gx = shufflevector <4 x float> %i.fr, <4 x float> %i.gi, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.gy = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.gt, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.gz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.el, <4 x float> %i.gx, <4 x float> %i.gy)
  %i.ha = shufflevector <4 x float> %i.fu, <4 x float> %i.gn, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.hb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.em, <4 x float> %i.ha, <4 x float> %i.gz)
  %i.hc = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 7>
  %i.he = shufflevector <2 x float> %i.fp, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.hf = shufflevector <4 x float> %i.fa, <4 x float> %i.he, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> %i.gn, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.hh = insertelement <4 x float> %i.hg, float %.sroa.0.i7.sroa.15.0, i64 3
  %i.hi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hd, <4 x float> %i.hh, <4 x float> %i.gw)
  %i.hj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fw, <4 x float> %i.fz, <4 x float> %i.hb)
  store <4 x float> %i.hj, ptr %.sroa.6.0..sroa_idx6.i.i.i12, align 4, !alias.scope !265
  store <4 x float> %i.hi, ptr %.sroa.8.0..sroa_idx10.i.i.i15, align 4, !alias.scope !265
  %i.hk = fdiv <2 x float> splat (float 1.000000e+00), %4
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 188
  store <2 x float> %i.hk, ptr %i.hl, align 4
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 196
  store <2 x float> %5, ptr %i.hm, align 4
  ret void

bb.f:                                             ; preds = %bb.a
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.hn, %bb.f ], [ %i.ho, %bb.g ]
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2cv6dynafu13TSDFVolumeCPU18fetchPointsNormalsERKNS_12_OutputArrayES4_b(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %3) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %5 = alloca %"class.std::vector", align 8       ; 12 uses
  %6 = alloca %"class.std::vector", align 8       ; 11 uses
  %7 = alloca %"struct.cv::dynafu::FetchPointsNormalsInvoker", align 8 ; 15 uses
  %8 = alloca %"class.cv::Range", align 4         ; 6 uses
  %9 = alloca %"class.std::vector.11", align 8    ; 14 uses
  %10 = alloca %"class.std::vector.11", align 8   ; 14 uses
end_hunk_0
begin_hunk_1_@_ZN7cvflann7anyimpl16small_any_policyIfE4moveEPKPvPS3_:bb.a
  store ptr %i.a, ptr %2, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN7cvflann7anyimpl16small_any_policyIfE9get_valueEPPv(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN7cvflann7anyimpl16small_any_policyIfE9get_valueEPKPv(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN7cvflann7anyimpl21typed_base_any_policyIfE8get_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i64 4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN7cvflann7anyimpl21typed_base_any_policyIfE4typeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr @_ZTIf
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann7anyimpl16small_any_policyIfE5printERSoPKPv(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load float, ptr %2, align 4, !tbaa !33
  %i.b = fpext float %i.a to double
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.b) ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7cvflann7anyimpl16small_any_policyIfED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #30
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7cvflann7anyimpl15base_any_policyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7cvflann7anyimpl16small_any_policyIbE13static_deleteEPPv(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7cvflann7anyimpl16small_any_policyIbE15copy_from_valueEPKvPPv(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !173, !range !186, !noundef !91
  store i8 %i.a, ptr %2, align 1, !tbaa !173
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7cvflann7anyimpl16small_any_policyIbE5cloneEPKPvPS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !70
  store ptr %i.a, ptr %2, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7cvflann7anyimpl16small_any_policyIbE4moveEPKPvPS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !70
  store ptr %i.a, ptr %2, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN7cvflann7anyimpl16small_any_policyIbE9get_valueEPPv(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN7cvflann7anyimpl16small_any_policyIbE9get_valueEPKPv(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN7cvflann7anyimpl21typed_base_any_policyIbE8get_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i64 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN7cvflann7anyimpl21typed_base_any_policyIbE4typeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr @_ZTIb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann7anyimpl16small_any_policyIbE5printERSoPKPv(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %2, align 1, !tbaa !173, !range !186, !noundef !91
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %i.b) ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7cvflann7anyimpl16small_any_policyIbED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #30
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !349  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !176  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 72
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.g)
          to label %_ZN7cvflann3anyD2Ev.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #31
  unreachable

_ZN7cvflann3anyD2Ev.exit.i.i.i:                   ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN7cvflann3anyD2Ev.exit.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !30
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #30
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %_ZN7cvflann3anyD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 80) #30
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !348

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7cvflann3anyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv6dynafu14RaycastInvokerD0Ev(ptr noundef nonnull align 8 dereferenceable(204) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv6dynafu14RaycastInvokerclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load <12 x float>, ptr %i.a, align 4, !tbaa !33, !noalias !91 ; 4 uses
  %i.f = load float, ptr %i.d, align 8, !tbaa !33, !noalias !359
  %2 = load <2 x float>, ptr %i.c, align 8
  %i.g = load float, ptr %i.b, align 8, !tbaa !33, !noalias !359 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 132
  %3 = load <2 x float>, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.k = load <2 x float>, ptr %i.h, align 4, !tbaa !33, !noalias !360 ; 2 uses
  %i.l = load <2 x float>, ptr %i.j, align 4, !tbaa !33, !noalias !360 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.n = load float, ptr %i.m, align 4, !tbaa !33, !noalias !360
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !33, !noalias !360
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.r = load float, ptr %i.q, align 8, !tbaa !33, !noalias !360
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !33, !noalias !360
  %i.u = load i32, ptr %1, align 4, !tbaa !53     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !54   ; 2 uses
  %i.x = icmp slt i32 %i.u, %i.w
  br i1 %i.x, label %.lr.ph439, label %._crit_edge440

.lr.ph439:                                        ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !361, !nonnull !91, !align !92 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !164
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph439.split.preheader, label %._crit_edge440

.lr.ph439.split.preheader:                        ; preds = %.lr.ph439
  %i.an = sext i32 %i.u to i64
  %i.ao = shufflevector <12 x float> %i.e, <12 x float> poison, <3 x i32> <i32 11, i32 3, i32 7>
  %i.ap = shufflevector <12 x float> %i.e, <12 x float> poison, <3 x i32> <i32 10, i32 2, i32 6>
  %i.aq = shufflevector <12 x float> %i.e, <12 x float> poison, <3 x i32> <i32 9, i32 1, i32 5>
  %i.ar = shufflevector <12 x float> %i.e, <12 x float> poison, <3 x i32> <i32 8, i32 0, i32 4>
  %i.as = insertelement <2 x float> %3, float %i.n, i64 1
  %i.at = shufflevector <2 x float> %i.k, <2 x float> %i.l, <2 x i32> <i32 1, i32 3>
  %i.au = shufflevector <2 x float> %i.k, <2 x float> %i.l, <2 x i32> <i32 0, i32 2>
  %i.av = insertelement <2 x float> %2, float %i.f, i64 1 ; 2 uses
  br label %.lr.ph439.split

._crit_edge440:                                   ; preds = %._crit_edge436, %.lr.ph439, %bb.a
  ret void

.lr.ph439.split:                                  ; preds = %.lr.ph439.split.preheader, %._crit_edge436
  %i.aw = phi i32 [ %i.w, %.lr.ph439.split.preheader ], [ %i.br, %._crit_edge436 ]
  %i.ax = phi ptr [ %i.aj, %.lr.ph439.split.preheader ], [ %i.bs, %._crit_edge436 ] ; 4 uses
  %indvars.iv443 = phi i64 [ %i.an, %.lr.ph439.split.preheader ], [ %indvars.iv.next444, %._crit_edge436 ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !93
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !77
  %i.bc = mul i64 %i.bb, %indvars.iv443
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc
  %i.be = load ptr, ptr %i.z, align 8, !tbaa !362, !nonnull !91, !align !92 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !93
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 128
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !77
  %i.bj = mul i64 %i.bi, %indvars.iv443
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !164
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph435, label %._crit_edge436

.lr.ph435:                                        ; preds = %.lr.ph439.split
  %i.bo = trunc nsw i64 %indvars.iv443 to i32
  %i.bp = sitofp i32 %i.bo to float
  %i.bq = insertelement <2 x float> poison, float %i.bp, i64 1
  br label %bb.b

._crit_edge436.loopexit:                          ; preds = %bb.p
  %.pre = load i32, ptr %i.v, align 4, !tbaa !54
  br label %._crit_edge436

._crit_edge436:                                   ; preds = %._crit_edge436.loopexit, %.lr.ph439.split
  %i.br = phi i32 [ %.pre, %._crit_edge436.loopexit ], [ %i.aw, %.lr.ph439.split ] ; 2 uses
  %i.bs = phi ptr [ %i.vr, %._crit_edge436.loopexit ], [ %i.ax, %.lr.ph439.split ]
  %indvars.iv.next444 = add nsw i64 %indvars.iv443, 1 ; 2 uses
  %i.bt = sext i32 %i.br to i64
  %i.bu = icmp slt i64 %indvars.iv.next444, %i.bt
  br i1 %i.bu, label %.lr.ph439.split, label %._crit_edge440, !llvm.loop !356

bb.b:                                             ; preds = %.lr.ph435, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph435 ], [ %indvars.iv.next, %bb.p ] ; 4 uses
  %i.bv = trunc nuw nsw i64 %indvars.iv to i32
  %i.bw = uitofp nneg i32 %i.bv to float
  %i.bx = load <2 x float>, ptr %i.ab, align 4, !tbaa !33
  %i.by = insertelement <2 x float> %i.bq, float %i.bw, i64 0
  %i.bz = fsub <2 x float> %i.by, %i.bx
  %i.ca = load <2 x float>, ptr %i.aa, align 4, !tbaa !33
  %i.cb = fmul <2 x float> %i.ca, %i.bz           ; 2 uses
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <3 x i32> zeroinitializer
  %i.cd = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ar, <3 x float> %i.cc, <3 x float> zeroinitializer)
  %i.ce = shufflevector <2 x float> %i.cb, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.cf = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aq, <3 x float> %i.ce, <3 x float> %i.cd)
  %i.cg = fadd <3 x float> %i.ap, %i.cf
  %i.ch = fpext <3 x float> %i.cg to <3 x double> ; 4 uses
  %i.ci = extractelement <3 x double> %i.ch, i64 1 ; 2 uses
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.ci, double 0.000000e+00)
  %i.ck = extractelement <3 x double> %i.ch, i64 2 ; 2 uses
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.ck, double %i.cj)
  %i.cm = extractelement <3 x double> %i.ch, i64 0 ; 2 uses
  %i.cn = tail call noundef double @llvm.fmuladd.f64(double %i.cm, double %i.cm, double %i.cl) ; 2 uses
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.cn)
  %i.co = fcmp une double %i.cn, 0.000000e+00
  %i.cp = fdiv double 1.000000e+00, %sqrt.i.i
  %i.cq = select i1 %i.co, double %i.cp, double 0.000000e+00
  %i.cr = insertelement <3 x double> poison, double %i.cq, i64 0
  %i.cs = shufflevector <3 x double> %i.cr, <3 x double> poison, <3 x i32> zeroinitializer
  %i.ct = fmul <3 x double> %i.cs, %i.ch
  %i.cu = fptrunc <3 x double> %i.ct to <3 x float> ; 3 uses
  %i.cv = extractelement <3 x float> %i.cu, i64 1
  %i.cw = fdiv float 1.000000e+00, %i.cv          ; 2 uses
  %i.cx = load float, ptr %i.ac, align 8, !tbaa !187
  %i.cy = fsub float %i.cx, %i.g
  %i.cz = fmul float %i.cy, %i.cw                 ; 4 uses
  %i.da = load float, ptr %i.ae, align 4, !tbaa !187
  %i.db = fsub float %i.da, %i.g
  %i.dc = fmul float %i.db, %i.cw                 ; 4 uses
  %i.dd = fcmp olt float %i.cz, %i.dc
  %.sroa.speculated304 = select i1 %i.dd, float %i.cz, float %i.dc
  %i.de = fcmp olt float %i.dc, %i.cz
  %.sroa.speculated301 = select i1 %i.de, float %i.cz, float %i.dc
  %i.df = shufflevector <3 x float> %i.cu, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.dg = fdiv <2 x float> splat (float 1.000000e+00), %i.df ; 2 uses
  %i.dh = load <2 x float>, ptr %i.ad, align 4, !tbaa !33
  %i.di = fsub <2 x float> %i.dh, %i.av
  %i.dj = fmul <2 x float> %i.di, %i.dg           ; 4 uses
  %i.dk = load <2 x float>, ptr %i.af, align 8, !tbaa !33
  %i.dl = fsub <2 x float> %i.dk, %i.av
  %i.dm = fmul <2 x float> %i.dl, %i.dg           ; 4 uses
  %i.dn = fcmp olt <2 x float> %i.dm, %i.dj
  %i.do = select <2 x i1> %i.dn, <2 x float> %i.dj, <2 x float> %i.dm ; 2 uses
  %i.dp = fcmp olt <2 x float> %i.dj, %i.dm
  %i.dq = select <2 x i1> %i.dp, <2 x float> %i.dj, <2 x float> %i.dm ; 2 uses
  %i.dr = insertelement <2 x float> poison, float %.sroa.speculated304, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dt = fcmp olt <2 x float> %i.ds, %i.dq
  %i.du = select <2 x i1> %i.dt, <2 x float> %i.dq, <2 x float> %i.ds ; 2 uses
  %i.dv = extractelement <2 x float> %i.du, i64 0 ; 2 uses
  %i.dw = extractelement <2 x float> %i.du, i64 1 ; 2 uses
  %i.dx = fcmp olt float %i.dv, %i.dw
  %i.dy = select i1 %i.dx, float %i.dw, float %i.dv ; 2 uses
  %i.dz = fcmp olt float %i.dy, 0.000000e+00
  %.sroa.speculated = select i1 %i.dz, float 0.000000e+00, float %i.dy
  %i.ea = insertelement <2 x float> poison, float %.sroa.speculated301, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ec = fcmp olt <2 x float> %i.do, %i.eb
  %i.ed = select <2 x i1> %i.ec, <2 x float> %i.do, <2 x float> %i.eb ; 2 uses
  %i.ee = extractelement <2 x float> %i.ed, i64 0 ; 2 uses
  %i.ef = extractelement <2 x float> %i.ed, i64 1 ; 2 uses
  %i.eg = fcmp olt float %i.ef, %i.ee
  %i.eh = select i1 %i.eg, float %i.ef, float %i.ee
  %i.ei = load float, ptr %i.ag, align 8, !tbaa !100 ; 6 uses
  %i.ej = fadd float %i.ei, %.sroa.speculated     ; 5 uses
  %i.ek = fsub float %i.eh, %i.ei                 ; 2 uses
  %i.el = fcmp olt float %i.ej, %i.ek
  br i1 %i.el, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.em = load ptr, ptr %i.ah, align 8, !tbaa !102, !nonnull !91, !align !92 ; 19 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.eo = load float, ptr %i.en, align 4, !tbaa !27
  %i.ep = insertelement <3 x float> poison, float %i.eo, i64 0
  %i.eq = shufflevector <3 x float> %i.ep, <3 x float> poison, <3 x i32> zeroinitializer ; 2 uses
  %i.er = fmul <3 x float> %i.ao, %i.eq           ; 3 uses
  %i.es = fmul <3 x float> %i.eq, %i.cu           ; 5 uses
  %i.et = extractelement <3 x float> %i.es, i64 1
  %i.eu = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = shufflevector <3 x float> %i.es, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ex = fmul <2 x float> %i.ev, %i.ew           ; 3 uses
  %i.ey = extractelement <3 x float> %i.es, i64 0
  %i.ez = fmul float %i.ei, %i.ey                 ; 2 uses
  %i.fa = fmul float %i.ej, %i.et
  %i.fb = extractelement <3 x float> %i.er, i64 1
  %i.fc = fadd float %i.fb, %i.fa                 ; 3 uses
  %.sroa.0.0.vec.insert.i193 = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.fd = getelementptr inbounds nuw i8, ptr %i.em, i64 116
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !28 ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.em, i64 120
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !28 ; 5 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.em, i64 124
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !28 ; 5 uses
  %i.fj = tail call float @llvm.floor.f32(float %i.fc)
  %i.fk = fptosi float %i.fj to i32               ; 2 uses
  %i.fl = mul nsw i32 %i.fe, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.em, i64 192
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !93 ; 36 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.em, i64 132
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !28 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.em, i64 136
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !28 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.em, i64 140
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !28 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.em, i64 144
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !28 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.em, i64 148
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !28 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.em, i64 152
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !28 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.em, i64 156
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !28 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.em, i64 160
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !28 ; 4 uses
  %i.ge = sitofp i32 %i.fk to float
  %i.gf = fsub float %i.fc, %i.ge
  %i.gg = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = shufflevector <3 x float> %i.es, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.gj = fmul <2 x float> %i.gh, %i.gi
  %i.gk = shufflevector <3 x float> %i.er, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.gl = fadd <2 x float> %i.gk, %i.gj           ; 4 uses
  %i.gm = shufflevector <2 x float> %.sroa.0.0.vec.insert.i193, <2 x float> %i.gl, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gn = extractelement <2 x float> %i.gl, i64 0
  %i.go = tail call float @llvm.floor.f32(float %i.gn)
  %i.gp = extractelement <2 x float> %i.gl, i64 1 ; 3 uses
  %i.gq = tail call float @llvm.floor.f32(float %i.gp)
  %i.gr = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gs = insertelement <2 x float> %i.gr, float %i.gq, i64 1
  %i.gt = fptosi <2 x float> %i.gs to <2 x i32>   ; 3 uses
  %i.gu = extractelement <2 x i32> %i.gt, i64 0
  %i.gv = mul nsw i32 %i.fg, %i.gu
  %i.gw = add nsw i32 %i.gv, %i.fl
  %i.gx = extractelement <2 x i32> %i.gt, i64 1
  %i.gy = mul nsw i32 %i.fi, %i.gx
  %i.gz = add nsw i32 %i.gw, %i.gy                ; 8 uses
  %i.ha = add nsw i32 %i.gz, %i.fp
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [92 x i8], ptr %i.fn, i64 %i.hb
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !188
  %i.he = add nsw i32 %i.gz, %i.fr
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds [92 x i8], ptr %i.fn, i64 %i.hf
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !188
  %i.hi = add nsw i32 %i.ft, %i.gz
  %i.hj = sext i32 %i.hi to i64
end_hunk_1
