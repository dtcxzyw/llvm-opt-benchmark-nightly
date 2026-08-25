Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebufalgo_xform?download=true
inline.NumInlined: 5677
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZNSt12__shared_ptrIKN11OpenImageIO4v3_18Filter2DELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #33, !inline_history !70
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #33, !inline_history !70
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !25

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #33
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare noundef ptr @_ZNK11OpenImageIO4v3_114ParamValueSpan4findENS0_7ustringENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i1 noundef zeroext) local_unnamed_addr #5

declare noundef i32 @_ZN11OpenImageIO4v3_18ImageBuf20WrapMode_from_stringENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef dead_on_return) local_unnamed_addr #5

declare ptr @_ZNK11OpenImageIO4v3_110ParamValue11get_ustringEi(ptr noundef nonnull align 8 dereferenceable(39), i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK11OpenImageIO4v3_110ParamValue7get_intEi(ptr noundef nonnull align 8 dereferenceable(39), i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK11OpenImageIO4v3_114ParamValueSpan7get_intENS0_7ustringEibb(ptr noundef nonnull align 8 dereferenceable(16), ptr, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN11OpenImageIO4v3_1L9warp_implERNS0_8ImageBufERKS1_RKN9Imath_3_18Matrix33IfEEPKNS0_8Filter2DEbNS1_8WrapModeEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(36) %2, ptr noundef %3, i1 noundef zeroext %4, i32 noundef %5, i1 noundef zeroext %6, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %7, i32 noundef %8) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %10 = alloca %"class.std::function", align 8    ; 11 uses
  %11 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %12 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %13 = alloca %"class.std::function", align 8    ; 11 uses
  %14 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %15 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %16 = alloca %"class.std::function", align 8    ; 11 uses
  %17 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %18 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %19 = alloca %"class.std::function", align 8    ; 11 uses
  %20 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i8, align 1                       ; 4 uses
  %21 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %22 = alloca %"class.std::function", align 8    ; 11 uses
  %23 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = alloca i8, align 1                       ; 4 uses
  %24 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %25 = alloca %"class.std::function", align 8    ; 11 uses
  %26 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %27 = alloca %"class.OpenImageIO::v3_1::pvt::LoggedTimer", align 8 ; 6 uses
  %28 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %29 = alloca %"struct.OpenImageIO::v3_1::ROI", align 4 ; 4 uses
  %30 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 16 uses
  %31 = alloca %"struct.OpenImageIO::v3_1::ROI", align 4 ; 6 uses
  %32 = alloca %"struct.OpenImageIO::v3_1::ROI", align 4 ; 4 uses
  %33 = alloca %"struct.OpenImageIO::v3_1::ROI", align 16 ; 8 uses
  %34 = alloca %"struct.OpenImageIO::v3_1::ROI", align 16 ; 3 uses
  %35 = alloca %"class.std::shared_ptr.17", align 8 ; 8 uses
  %36 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %37 = alloca %"class.OpenImageIO::v3_1::ImageBuf", align 8 ; 8 uses
  %38 = alloca %"class.OpenImageIO::v3_1::ImageBuf", align 8 ; 8 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #33
  store ptr @.str.83, ptr %28, align 8, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 9, ptr %i.s, align 8, !tbaa !41
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(68) %27, ptr noundef nonnull dead_on_return %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #33
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8roi_fullEv(ptr dead_on_unwind nonnull writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4 %29, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #33
  store i32 -2147483648, ptr %30, align 8, !tbaa !71
  %i.t = getelementptr inbounds nuw i8, ptr %30, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.t, i8 0, i64 28, i1 false)
  %i.u = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf11initializedEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  br i1 %i.u, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #33
  %i.v = load i32, ptr %7, align 8, !tbaa !71
  %.not457 = icmp eq i32 %i.v, -2147483648
  br i1 %.not457, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !73
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf3roiEv(ptr dead_on_unwind nonnull writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4 %31, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 4 dereferenceable(32) %31, i64 32, i1 false), !tbaa.struct !73
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #33
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8roi_fullEv(ptr dead_on_unwind nonnull writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4 %32, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #33
  br label %bb.u

bb.i:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.j:                                             ; preds = %bb.w, %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.k:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #33
  br label %bb.dl

bb.l:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #33
  br label %bb.dl

bb.m:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #33
  %i.aa = load i32, ptr %7, align 8, !tbaa !71
  %.not456 = icmp eq i32 %i.aa, -2147483648
  br i1 %.not456, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !73
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  br i1 %4, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf3roiEv(ptr dead_on_unwind nonnull writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4 %34, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %.sroa.7305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.ab = load <4 x i32>, ptr %34, align 16
  %i.ac = sitofp <4 x i32> %i.ab to <4 x float>   ; 4 uses
  %i.ad = extractelement <4 x float> %i.ac, i64 0
  %i.ae = fadd float %i.ad, 5.000000e-01
  %i.af = extractelement <4 x float> %i.ac, i64 2
  %i.ag = fadd float %i.af, 5.000000e-01
  %i.ah = extractelement <4 x float> %i.ac, i64 1
  %i.ai = fadd float %i.ah, -5.000000e-01
  %i.aj = extractelement <4 x float> %i.ac, i64 3
  %i.ak = fadd float %i.aj, -5.000000e-01
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %40 = load float, ptr %i.an, align 4, !tbaa !77, !noalias !74
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 20
  %41 = load float, ptr %i.ao, align 4, !tbaa !77, !noalias !74
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !77, !noalias !74 ; 3 uses
  %i.ar = load <2 x float>, ptr %2, align 4, !tbaa !77, !noalias !74 ; 3 uses
  %i.as = load <2 x float>, ptr %i.al, align 4, !tbaa !77, !noalias !74 ; 2 uses
  %i.at = load <2 x float>, ptr %i.am, align 4, !tbaa !77, !noalias !74 ; 3 uses
  %i.au = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aw = fmul <2 x float> %i.av, %i.as           ; 2 uses
  %i.ax = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.az = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.ar, <2 x float> %i.aw)
  %i.ba = fadd <2 x float> %i.at, %i.az
  %42 = insertelement <2 x float> %i.av, float %i.ak, i64 0 ; 2 uses
  %i.bb = insertelement <2 x float> poison, float %41, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x float> %42, %i.bc             ; 2 uses
  %i.be = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x float> %i.be, %i.as           ; 2 uses
  %i.bg = insertelement <4 x float> poison, float %i.ae, i64 0 ; 2 uses
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bi = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bj = shufflevector <2 x float> %i.bf, <2 x float> %i.aw, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %i.bi, <4 x float> %i.bj)
  %i.bl = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bm = fadd <4 x float> %i.bl, %i.bk
  %i.bn = shufflevector <4 x float> %i.bg, <4 x float> poison, <2 x i32> zeroinitializer
  %43 = insertelement <2 x float> poison, float %40, i64 0
  %i.bo = shufflevector <2 x float> %43, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bo, <2 x float> %i.bd)
  %i.bq = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bs = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bt = fadd <4 x float> %i.br, %i.bs
  %i.bu = fdiv <4 x float> %i.bm, %i.bt           ; 4 uses
  %i.bv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.ar, <2 x float> %i.bf)
  %i.bw = fadd <2 x float> %i.at, %i.bv
  %i.bx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.bo, <2 x float> %i.bd) ; 2 uses
  %i.by = extractelement <2 x float> %i.bx, i64 1
  %i.bz = fadd float %i.aq, %i.by
  %i.ca = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cb = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cc = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cd = fdiv <4 x float> %i.cb, %i.cc           ; 3 uses
  %i.ce = extractelement <2 x float> %i.bx, i64 0
  %i.cf = fadd float %i.aq, %i.ce
  %i.cg = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ch = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ci = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cj = fdiv <4 x float> %i.ch, %i.ci           ; 3 uses
  %i.ck = shufflevector <4 x float> %i.bu, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.cl = fcmp olt <4 x float> %i.bu, %i.ck
  %i.cm = shufflevector <4 x float> %i.bu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.cn = shufflevector <4 x float> %i.bu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.co = select <4 x i1> %i.cl, <4 x float> %i.cm, <4 x float> %i.cn ; 3 uses
  %i.cp = fcmp olt <4 x float> %i.cd, %i.co
  %i.cq = fcmp ogt <4 x float> %i.cd, %i.co
  %i.cr = shufflevector <4 x i1> %i.cp, <4 x i1> %i.cq, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.cs = select <4 x i1> %i.cr, <4 x float> %i.cd, <4 x float> %i.co ; 3 uses
  %i.ct = fcmp olt <4 x float> %i.cj, %i.cs
  %i.cu = fcmp ogt <4 x float> %i.cj, %i.cs
  %i.cv = shufflevector <4 x i1> %i.ct, <4 x i1> %i.cu, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.cw = select <4 x i1> %i.cv, <4 x float> %i.cj, <4 x float> %i.cs
  %i.cx = call <4 x float> @llvm.floor.v4f32(<4 x float> %i.cw)
  %i.cy = fptosi <4 x float> %i.cx to <4 x i32>
  %i.cz = add nsw <4 x i32> %i.cy, <i32 0, i32 1, i32 0, i32 1>
  store <4 x i32> %i.cz, ptr %33, align 16, !tbaa !3, !alias.scope !74
  %i.da = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.db = load <4 x i32>, ptr %.sroa.7305.0..sroa_idx, align 16
  store <4 x i32> %i.db, ptr %i.da, align 16, !tbaa !3, !alias.scope !74
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf3roiEv(ptr dead_on_unwind nonnull writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4 %33, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 16 dereferenceable(32) %33, i64 32, i1 false), !tbaa.struct !73
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #33
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.p
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #33
  br label %bb.dl

bb.u:                                             ; preds = %bb.s, %bb.h
  %i.dd = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.de = getelementptr inbounds nuw i8, ptr %30, i64 28 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3
  %.sroa.speculated290 = call i32 @llvm.smin.i32(i32 %i.dd, i32 %i.df)
  store i32 %.sroa.speculated290, ptr %i.de, align 4, !tbaa !78
  %i.dg = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.w unwind label %bb.y       ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.dh = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_S7_S7_PNS0_9ImageSpecEi(ptr noundef nonnull align 4 dereferenceable(32) %30, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 16)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_i.exit unwind label %bb.j

_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_i.exit: ; preds = %bb.w
  br i1 %i.dh, label %bb.z, label %bb.dk

bb.x:                                             ; preds = %bb.u
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.y:                                             ; preds = %bb.v
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.z:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #33
  %i.dk = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  %i.dl = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34
          to label %bb.af unwind label %bb.aa     ; 6 uses

bb.aa:                                            ; preds = %bb.z
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  %i.do = call ptr @__cxa_begin_catch(ptr %i.dn) #33 ; 0 uses
  invoke void @_ZN11OpenImageIO4v3_18Filter2D7destroyEPS1_(ptr noundef null)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_rethrow() #35
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #36
  unreachable

bb.ae:                                            ; preds = %bb.ab
  unreachable

bb.af:                                            ; preds = %bb.z
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i32 1, ptr %i.ds, align 8, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 1, ptr %i.dt, align 4, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN11OpenImageIO4v3_18Filter2DEPFvS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dl, align 8, !tbaa !21
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store ptr @_ZN11OpenImageIO4v3_18Filter2D7destroyEPS1_, ptr %i.du, align 8, !tbaa !54
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store ptr null, ptr %i.dv, align 8, !tbaa !56
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !17
  %i.dw = icmp eq ptr %3, null
  br i1 %i.dw, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  store ptr @.str.34, ptr %36, align 8, !tbaa !39
  %i.dx = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 8, ptr %i.dx, align 8, !tbaa !41
  %i.dy = invoke noundef ptr @_ZN11OpenImageIO4v3_18Filter2D6createENS0_17basic_string_viewIcSt11char_traitsIcEEEff(ptr noundef nonnull dead_on_return %36, float noundef 6.000000e+00, float noundef 6.000000e+00)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_18Filter2DELN9__gnu_cxx12_Lock_policyE2EE5resetIS2_EENSt9enable_ifIXsr21__sp_is_constructibleIS2_T_EE5valueEvE4typeEPS8_(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef %i.dy)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dz = load ptr, ptr %35, align 8, !tbaa !79
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.ak:                                            ; preds = %bb.ai, %bb.af
  %.0105 = phi ptr [ %i.dz, %bb.ai ], [ %3, %bb.af ] ; 7 uses
  %i.eb = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf11initializedEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.al unwind label %bb.as

bb.al:                                            ; preds = %bb.ak
  br i1 %i.eb, label %bb.an, label %bb.am, !prof !81

bb.am:                                            ; preds = %bb.al
  %i.ec = load ptr, ptr @stderr, align 8, !tbaa !82
  %i.ed = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ec, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 411, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_1L9warp_implERNS0_8ImageBufERKS1_RKN9Imath_3_18Matrix33IfEEPKNS0_8Filter2DEbNS1_8WrapModeEbNS0_3ROIEi, ptr noundef nonnull @.str.20) #38 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #33
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %37)
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #33
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %38)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.ee = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.aq unwind label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  %i.eg = load i64, ptr %i.ef, align 8            ; 4 uses
  %.sroa.0249.0.extract.trunc = trunc i64 %i.eg to i8 ; 4 uses
  %.sroa.14.0.extract.shift = lshr i64 %i.eg, 8
  %.sroa.14.0.extract.trunc = trunc i64 %.sroa.14.0.extract.shift to i8 ; 7 uses
  %.sroa.22.0.extract.shift = lshr i64 %i.eg, 16
  %.sroa.22.0.extract.trunc = trunc i64 %.sroa.22.0.extract.shift to i8 ; 7 uses
  %.sroa.30278.0.extract.shift = lshr i64 %i.eg, 32 ; 7 uses
  %.sroa.30278.0.extract.trunc = trunc nuw i64 %.sroa.30278.0.extract.shift to i32
  %i.eh = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.ar unwind label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  %i.ej = load i64, ptr %i.ei, align 8            ; 4 uses
  %.sroa.0230.0.extract.trunc = trunc i64 %i.ej to i8 ; 5 uses
end_hunk_0
