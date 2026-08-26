Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/motion_stabilizing?download=true
inline.NumInlined: 328
inline.NumDeleted: 170
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv9videostab18LpMotionStabilizer9stabilizeEiRKSt6vectorINS_3MatESaIS3_EERKNS_5RangeEPS3_:.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.g
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !99
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.d, ptr %i.a, align 8, !tbaa !100
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !69
  %i.g = load i64, ptr %i.a, align 8, !tbaa !100
  store i64 %i.g, ptr %i.b, align 8, !tbaa !73
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !73
  store i8 %i.i, ptr %i.h, align 1, !tbaa !73
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !101
  %i.l = load ptr, ptr %0, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv9videostab25ensureInclusionConstraintERKNS_3MatENS_5Size_IiEEf(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i64 %2, float noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [4 x %"class.cv::Point_"], align 16 ; 11 uses
  %5 = alloca [4 x %"class.cv::Point_"], align 16 ; 5 uses
  %6 = alloca [4 x %"class.cv::Point_"], align 16 ; 11 uses
  %7 = alloca [4 x %"class.cv::Point_"], align 16 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.20", align 1 ; 3 uses
  %10 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.20", align 1 ; 3 uses
  %13 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %14 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %15 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %16 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %.sroa.0.0.extract.trunc = trunc i64 %2 to i32
  %.sroa.2.0.extract.shift = lshr i64 %2, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv9videostab25ensureInclusionConstraintERKNS_3MatENS_5Size_IiEEfE25__cv_trace_location_fn640)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.6, i32 noundef 109) #23
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  unreachable

bb.d:                                             ; preds = %.noexc
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %8, align 8, !tbaa !69     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !73
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.body

bb.e:                                             ; preds = %bb.a
  %or.cond.not = icmp eq i32 %i.b, 2
  br i1 %or.cond.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = load i32, ptr %i.k, align 8, !tbaa !74
  %i.m = load i32, ptr %i.j, align 4, !tbaa !74
  %i.n = icmp eq i32 %i.l, 3
  %i.o = icmp eq i32 %i.m, 3
  %i.p = select i1 %i.n, i1 %i.o, i1 false
  br i1 %i.p, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr %1, align 8, !tbaa !75
  %i.r = and i32 %i.q, 4095
  %i.s = icmp eq i32 %i.r, 5
  br i1 %i.s, label %bb.m, label %.critedge

bb.h:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.critedge:                                        ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %.critedge
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv9videostab25ensureInclusionConstraintERKNS_3MatENS_5Size_IiEEf, ptr noundef nonnull @.str.1, i32 noundef 642) #23
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %.critedge
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %11, align 8, !tbaa !69    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.z = load i64, ptr %i.x, align 8, !tbaa !73
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %.pn = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.v, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.body

bb.m:                                             ; preds = %bb.g
  %i.ab = sitofp i32 %.sroa.0.0.extract.trunc to float ; 4 uses
  %i.ac = sitofp i32 %.sroa.2.0.extract.trunc to float ; 5 uses
  %i.ad = fmul float %3, %i.ab
  %i.ae = call float @llvm.floor.f32(float %i.ad) ; 5 uses
  %i.af = fmul float %3, %i.ac
  %i.ag = call float @llvm.floor.f32(float %i.af) ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !102
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !103 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = icmp slt i32 %i.ai, 2                   ; 2 uses
  %i.ao = load i64, ptr %i.al, align 8            ; 2 uses
  %.sink.idx.i = select i1 %i.an, i64 0, i64 %i.ao
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sink.idx.i ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink.i, i64 4
  %17 = load float, ptr %i.ap, align 4, !tbaa !62 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !62 ; 2 uses
  %i.as = shl i64 %i.ao, 1
  %.sink.idx.i68 = select i1 %i.an, i64 0, i64 %i.as
  %.sink.i69 = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sink.idx.i68 ; 3 uses
  %i.at = load float, ptr %.sink.i69, align 4, !tbaa !62 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sink.i69, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !62 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sink.i69, i64 8
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !62 ; 2 uses
  %18 = fadd float %17, 0.000000e+00              ; 2 uses
  %i.ay = fadd float %i.ax, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.bg = fmul float %i.av, 0.000000e+00
  %i.bh = load <2 x float>, ptr %i.ak, align 4, !tbaa !62 ; 3 uses
  %i.bi = load float, ptr %.sink.i, align 4, !tbaa !62 ; 3 uses
  %19 = insertelement <2 x float> %i.bh, float %i.bi, i64 1
  %20 = fadd <2 x float> %19, <float 0.000000e+00, float -0.000000e+00> ; 2 uses
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %22 = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %23 = insertelement <2 x float> %22, float %18, i64 1
  %24 = fmul <2 x float> %23, zeroinitializer
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bj = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.ab, i64 2 ; 2 uses
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.bl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %21, <4 x float> %i.bk, <4 x float> %25)
  %i.bm = insertelement <2 x float> poison, float %i.at, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bo = shufflevector <4 x float> %i.bj, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.bp = insertelement <2 x float> %i.bo, float 0.000000e+00, i64 0 ; 2 uses
  %i.bq = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bp, <2 x float> %i.br)
  %i.bt = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bv = fadd <2 x float> %i.bu, %i.bs
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.by = fmul float %i.av, %i.ac
  %i.bz = load <2 x float>, ptr %i.am, align 4, !tbaa !62 ; 4 uses
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cb = insertelement <4 x float> %i.ca, float %i.ar, i64 1
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cd = fadd <4 x float> %i.cc, %i.bl
  %i.ce = fdiv <4 x float> %i.cd, %i.bw
  store <4 x float> %i.ce, ptr %7, align 16, !tbaa !62
  %i.cf = insertelement <2 x float> %i.bz, float %18, i64 1
  %i.cg = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ci = fmul <2 x float> %i.cf, %i.ch
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %26 = insertelement <2 x float> %20, float %i.bi, i64 1
  %27 = shufflevector <2 x float> %26, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ck = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.ab, i64 0 ; 2 uses
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3> ; 2 uses
  %i.cm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %27, <4 x float> %i.cl, <4 x float> %i.cj)
  %i.cn = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.co = insertelement <2 x float> %i.cn, float %i.ar, i64 1 ; 2 uses
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cq = fadd <4 x float> %i.cp, %i.cm
  %i.cr = shufflevector <4 x float> %i.ck, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.cs = insertelement <2 x float> poison, float %i.by, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.cr, <2 x float> %i.ct)
  %i.cv = fadd <2 x float> %i.bu, %i.cu
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cx = fdiv <4 x float> %i.cq, %i.cw
  store <4 x float> %i.cx, ptr %i.bx, align 16, !tbaa !62
  store float %i.ae, ptr %6, align 16
  store float %i.ag, ptr %i.az, align 4
  %i.cy = fsub float %i.ab, %i.ae                 ; 4 uses
  store float %i.cy, ptr %i.ba, align 8
  store float %i.ag, ptr %i.bb, align 4
  %i.cz = fsub float %i.ac, %i.ag                 ; 4 uses
  store float %i.cy, ptr %i.bc, align 16
  store float %i.cz, ptr %i.bd, align 4
  store float %i.ae, ptr %i.be, align 8
  store float %i.cz, ptr %i.bf, align 4
  %i.da = call fastcc noundef zeroext i1 @_ZN2cv9videostabL12isRectInsideEPKNS_6Point_IfEES4_(ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %i.da, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dj = extractelement <2 x float> %i.bh, i64 0
  %i.dk = extractelement <2 x float> %i.bz, i64 0
  %i.dl = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.ad unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %.preheader, %bb.p
  %.0107 = phi float [ 1.000000e+00, %.preheader ], [ %..0, %bb.p ] ; 2 uses
  %.036106 = phi float [ 0.000000e+00, %.preheader ], [ %.036., %bb.p ] ; 2 uses
  %i.dn = fadd float %.036106, %.0107
  %i.do = fmul float %i.dn, 5.000000e-01          ; 6 uses
  %i.dp = fsub float 1.000000e+00, %i.do          ; 8 uses
  %i.dq = call float @llvm.fmuladd.f32(float %i.dj, float %i.dp, float %i.do)
  %i.dr = fmul float %i.dk, %i.dp
  %i.ds = fmul float %i.bi, %i.dp
  %i.dt = call float @llvm.fmuladd.f32(float %17, float %i.dp, float %i.do)
  %i.du = fmul float %i.at, %i.dp
  %i.dv = fmul float %i.av, %i.dp                 ; 2 uses
  %i.dw = call float @llvm.fmuladd.f32(float %i.ax, float %i.dp, float %i.do)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.dx = fmul float %i.dv, 0.000000e+00
  %i.dy = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ea = fmul <4 x float> %i.dl, %i.dz           ; 2 uses
  %28 = insertelement <2 x float> poison, float %i.dr, i64 0
  %29 = insertelement <2 x float> %28, float %i.dt, i64 1 ; 2 uses
  %30 = fmul <2 x float> %29, zeroinitializer
  %i.eb = shufflevector <2 x float> %30, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ec = insertelement <4 x float> poison, float %i.dq, i64 0
  %i.ed = insertelement <4 x float> %i.ec, float %i.ds, i64 1
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ef = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ee, <4 x float> %i.bk, <4 x float> %i.eb)
  %i.eg = fadd <4 x float> %i.ea, %i.ef
  %i.eh = insertelement <2 x float> poison, float %i.du, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ej = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.bp, <2 x float> %i.ek)
  %i.em = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eo = fadd <2 x float> %i.en, %i.el
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.eq = fdiv <4 x float> %i.eg, %i.ep
  store <4 x float> %i.eq, ptr %5, align 16, !tbaa !62
  %i.er = fmul float %i.dv, %i.ac
  %i.es = fmul <2 x float> %29, %i.ch
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.eu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ee, <4 x float> %i.cl, <4 x float> %i.et)
  %i.ev = fadd <4 x float> %i.ea, %i.eu
  %i.ew = insertelement <2 x float> poison, float %i.er, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ey = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.cr, <2 x float> %i.ex)
  %i.ez = fadd <2 x float> %i.en, %i.ey
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.fb = fdiv <4 x float> %i.ev, %i.fa
  store <4 x float> %i.fb, ptr %i.di, align 16, !tbaa !62
  store float %i.ae, ptr %4, align 16
  store float %i.ag, ptr %i.db, align 4
  store float %i.cy, ptr %i.dc, align 8
  store float %i.ag, ptr %i.dd, align 4
  store float %i.cy, ptr %i.de, align 16
  store float %i.cz, ptr %i.df, align 4
  store float %i.ae, ptr %i.dg, align 8
  store float %i.cz, ptr %i.dh, align 4
  %i.fc = call fastcc noundef zeroext i1 @_ZN2cv9videostabL12isRectInsideEPKNS_6Point_IfEES4_(ptr noundef %4, ptr noundef %5) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %.036. = select i1 %i.fc, float %.036106, float %i.do ; 2 uses
  %..0 = select i1 %i.fc, float %i.do, float %.0107 ; 4 uses
  %i.fd = fsub float %..0, %.036.
  %i.fe = fcmp ogt float %i.fd, 1.000000e-03
  br i1 %i.fe, label %bb.p, label %bb.q, !llvm.loop !104

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.ff = fsub float 1.000000e+00, %..0
  %i.fg = fpext float %i.ff to double
  invoke void @_ZN2cvmlEdRKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %14, double noundef %i.fg, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  invoke void @_ZN2cv3Mat3eyeEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %16, i32 noundef 3, i32 noundef 3, i32 noundef 5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.fh = fpext float %..0 to double
  invoke void @_ZN2cvmlEdRKNS_7MatExprE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %15, double noundef %i.fh, ptr noundef nonnull align 8 dereferenceable(688) %16)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN2cvplERKNS_7MatExprES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %13, ptr noundef nonnull align 8 dereferenceable(688) %14, ptr noundef nonnull align 8 dereferenceable(688) %15)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #22
  %i.fi = load ptr, ptr %13, align 8, !tbaa !21, !noalias !105 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !35
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  invoke void %i.fl(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef nonnull align 8 dereferenceable(688) %13, ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body74

.body74:                                          ; preds = %bb.u
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #22
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %13) #22
  br label %bb.z

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.u
  %i.fn = getelementptr inbounds nuw i8, ptr %13, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fn) #22
  %i.fo = getelementptr inbounds nuw i8, ptr %13, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fo) #22
  %i.fp = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fp) #22
  %i.fq = getelementptr inbounds nuw i8, ptr %15, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fq) #22
  %i.fr = getelementptr inbounds nuw i8, ptr %15, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fr) #22
  %i.fs = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fs) #22
  %i.ft = getelementptr inbounds nuw i8, ptr %16, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ft) #22
  %i.fu = getelementptr inbounds nuw i8, ptr %16, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fu) #22
  %i.fv = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fv) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.fw = getelementptr inbounds nuw i8, ptr %14, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fw) #22
  %i.fx = getelementptr inbounds nuw i8, ptr %14, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fx) #22
  %i.fy = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fy) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ad

bb.v:                                             ; preds = %bb.q
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.w:                                             ; preds = %bb.r
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.x:                                             ; preds = %bb.s
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.y:                                             ; preds = %bb.t
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.body74, %bb.y
  %.pn50 = phi { ptr, i32 } [ %i.fm, %.body74 ], [ %i.gc, %bb.y ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %15) #22
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %.pn50.pn = phi { ptr, i32 } [ %.pn50, %bb.z ], [ %i.gb, %bb.x ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %16) #22
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.w
  %.pn50.pn.pn = phi { ptr, i32 } [ %.pn50.pn, %bb.aa ], [ %i.ga, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %14) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.v
  %.pn50.pn.pn.pn = phi { ptr, i32 } [ %.pn50.pn.pn, %bb.ab ], [ %i.fz, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %.body

bb.ad:                                            ; preds = %bb.n, %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !108
  %.not.i76 = icmp eq i32 %i.ge, 0
  br i1 %.not.i76, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %10)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #26
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  ret void

.body:                                            ; preds = %bb.ac, %bb.o, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn57.pn.pn = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.t, %bb.h ], [ %.pn50.pn.pn.pn, %bb.ac ], [ %i.dm, %bb.o ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  resume { ptr, i32 } %.pn57.pn.pn
}

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare void @_ZN2cvplERKNS_7MatExprES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(688), ptr noundef nonnull align 8 dereferenceable(688)) local_unnamed_addr #2

declare void @_ZN2cvmlEdRKNS_7MatExprE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, double noundef, ptr noundef nonnull align 8 dereferenceable(688)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !108
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZN2cv9videostab24estimateOptimalTrimRatioERKNS_3MatENS_5Size_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
