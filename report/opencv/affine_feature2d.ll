Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/affine_feature2d?download=true
inline.NumInlined: 720
inline.NumDeleted: 255
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv11xfeatures2d20AffineFeature2D_Impl16detectAndComputeERKNS_11_InputArrayES4_RSt6vectorINS0_17Elliptic_KeyPointESaIS6_EERKNS_12_OutputArrayEb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.o

bb.n:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn18 = phi { ptr, i32 } [ %i.u, %bb.n ], [ %.pn.pn, %bb.m ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.o ], [ %i.r, %bb.j ]
  %i.v = load ptr, ptr %6, align 8, !tbaa !28     ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit26, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #20
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit26

_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit26:   ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.z

bb.r:                                             ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit, %bb.a
  %i.ab = call noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
  br i1 %i.ab, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.ac = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !123
  %i.ad = icmp eq i32 %i.ac, 65536
  br i1 %i.ad, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !24, !noalias !123
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %i.af)
  br label %_ZNK2cv11_InputArray6getMatEi.exit27

bb.u:                                             ; preds = %bb.s
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit27

_ZNK2cv11_InputArray6getMatEi.exit27:             ; preds = %bb.t, %bb.u
  %i.ag = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv12_OutputArray9getMatRefEi(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef -1)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit27
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_ZN12_GLOBAL__N_130calcAffineCovariantDescriptorsERKN2cv3PtrINS0_9Feature2DEEERKNS0_3MatERSt6vectorINS0_11xfeatures2d17Elliptic_KeyPointESaISB_EERS6_(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(208) %i.ag)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.y

bb.x:                                             ; preds = %bb.v, %_ZNK2cv11_InputArray6getMatEi.exit27
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %bb.r
  ret void

bb.z:                                             ; preds = %bb.x, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit26
  %.pn21 = phi { ptr, i32 } [ %i.ai, %bb.x ], [ %.pn18.pn, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit26 ]
  resume { ptr, i32 } %.pn21
}

declare noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_130calcAffineCovariantDescriptorsERKN2cv3PtrINS0_9Feature2DEEERKNS0_3MatERSt6vectorINS0_11xfeatures2d17Elliptic_KeyPointESaISB_EERS6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(208) %3) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Range", align 4         ; 5 uses
  %5 = alloca %"class.cv::Range", align 8         ; 4 uses
  %6 = alloca %"class.cv::Range", align 4         ; 5 uses
  %7 = alloca %"class.cv::Range", align 8         ; 4 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %9 = alloca %"class.cv::Matx", align 8          ; 9 uses
  %10 = alloca %"class.cv::Rect_", align 8        ; 8 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %15 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %16 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %17 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %20 = alloca %"class.std::vector", align 8      ; 10 uses
  %21 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %22 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %23 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %24 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %25 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %26 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.g = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.n = load ptr, ptr %2, align 8, !tbaa !34
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 72
  %.sroa.2222.0.insert.ext = shl i64 %i.r, 32
  %.sroa.0221.0.insert.ext = zext i32 %i.f to i64
  %.sroa.0221.0.insert.insert = or disjoint i64 %.sroa.2222.0.insert.ext, %.sroa.0221.0.insert.ext
  tail call void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %3, i64 %.sroa.0221.0.insert.insert, i32 noundef %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !129
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 -1056833530, ptr %8, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.a, ptr %i.t, align 8, !tbaa !24
  store i64 4294967297, ptr %i.s, align 8
  %i.u = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.v = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.u) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.w = load ptr, ptr %2, align 8, !tbaa !130    ; 2 uses
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !130
  %i.y = icmp ult ptr %i.w, %i.x
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 20
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %22, i64 20
  %i.as = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %25, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit
  %.0229 = phi i32 [ 0, %.lr.ph ], [ %i.ep, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit ] ; 2 uses
  %.sroa.0213.0228 = phi ptr [ %i.w, %.lr.ph ], [ %i.ev, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit ] ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0213.0228, i64 8
  %i.ba = load float, ptr %i.az, align 4, !tbaa !131
  %i.bb = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.bc = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.bb)
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0213.0228, i64 12
  %i.be = load float, ptr %i.bd, align 4, !tbaa !132
  %i.bf = insertelement <4 x float> poison, float %i.be, i64 0
  %i.bg = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.bf)
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0213.0228, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0213.0228, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !tbaa.struct !45
  %i.bj = load float, ptr %i.bh, align 8, !tbaa !43
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0213.0228, i64 44
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.bm = load <2 x float>, ptr %9, align 8, !tbaa !36 ; 5 uses
  %i.bn = load float, ptr %i.z, align 4, !tbaa !36 ; 2 uses
  %i.bo = load <2 x float>, ptr %i.aa, align 4, !tbaa !36 ; 5 uses
  %i.bp = load float, ptr %i.ab, align 8, !tbaa !36 ; 2 uses
  %i.bq = extractelement <2 x float> %i.bo, i64 0
  %i.br = fneg float %i.bq
  %i.bs = fmul float %i.bn, %i.br
  %i.bt = extractelement <2 x float> %i.bm, i64 0
  %i.bu = call float @llvm.fmuladd.f32(float %i.bt, float %i.bp, float %i.bs)
  %i.bv = shufflevector <2 x float> %i.bm, <2 x float> %i.bo, <2 x i32> <i32 0, i32 3>
  %i.bw = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = fdiv <2 x float> %i.bv, %i.bx
  %i.bz = fmul <2 x float> %i.by, splat (float 3.000000e+00)
  %i.ca = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x float> %i.cb, %i.bz
  %i.cd = call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.cc) ; 3 uses
  %i.ce = fptosi <2 x float> %i.cd to <2 x i32>   ; 2 uses
  %i.cf = insertelement <2 x i32> poison, i32 %i.bg, i64 0
  %i.cg = insertelement <2 x i32> %i.cf, i32 %i.bc, i64 1 ; 4 uses
  %i.ch = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.cg, <2 x i32> %i.ce) ; 2 uses
  %i.ci = sub nsw <2 x i32> %i.cg, %i.ce
  %i.cj = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ci, <2 x i32> zeroinitializer)
  %i.ck = shufflevector <2 x i32> %i.cj, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ck, ptr %10, align 8, !tbaa !46
  %i.cl = load <2 x i32>, ptr %i.ac, align 8, !tbaa !46
  %i.cm = xor <2 x i32> %i.cg, splat (i32 -1)
  %i.cn = add <2 x i32> %i.cl, %i.cm
  %i.co = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.cg, <2 x i32> %i.cn)
  %i.cp = sitofp <2 x i32> %i.co to <2 x float>   ; 2 uses
  %i.cq = fcmp olt <2 x float> %i.cd, %i.cp
  %i.cr = select <2 x i1> %i.cq, <2 x float> %i.cd, <2 x float> %i.cp
  %i.cs = fptosi <2 x float> %i.cr to <2 x i32>
  %i.ct = add <2 x i32> %i.ch, splat (i32 1)
  %i.cu = add <2 x i32> %i.ct, %i.cs
  %i.cv = shufflevector <2 x i32> %i.cu, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.cv, ptr %i.ad, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(16) %10)
  %i.cw = load <2 x i32>, ptr %i.ae, align 8, !tbaa !46
  %i.cx = sitofp <2 x i32> %i.cw to <2 x float>   ; 2 uses
  %i.cy = shufflevector <2 x float> %i.bm, <2 x float> %i.bo, <2 x i32> <i32 0, i32 2>
  %i.cz = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.da = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.cz, <2 x float> zeroinitializer)
  %i.db = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %i.bp, i64 1
  %i.dd = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.dd, <2 x float> %i.da) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %13) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  store i32 0, ptr %i.af, align 8, !tbaa !47
  store i32 0, ptr %i.ag, align 4, !tbaa !48
  store i32 16842752, ptr %14, align 8, !tbaa !25
  store ptr %11, ptr %i.ah, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  store i64 0, ptr %i.aj, align 8
  store i32 33619968, ptr %15, align 8, !tbaa !25
  store ptr %12, ptr %i.ai, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  store i32 -1056833531, ptr %16, align 8, !tbaa !25
  store ptr %9, ptr %i.al, align 8, !tbaa !24
  store i64 8589934595, ptr %i.ak, align 8
  %i.df = extractelement <2 x float> %i.de, i64 0
  %i.dg = call float @llvm.ceil.f32(float %i.df)
  %i.dh = fptosi float %i.dg to i32
  %i.di = extractelement <2 x float> %i.de, i64 1
  %i.dj = call float @llvm.ceil.f32(float %i.di)
  %i.dk = fptosi float %i.dj to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 32, i1 false)
  %.sroa.2.0.insert.ext = zext i32 %i.dk to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0138.0.insert.ext = zext i32 %i.dh to i64
  %.sroa.0138.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0138.0.insert.ext
  invoke void @_ZN2cv10warpAffineERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_5Size_IiEEiiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 %.sroa.0138.0.insert.insert, i32 noundef 3, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 0)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.dl = fmul float %i.bj, 5.000000e-01
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.dm = sitofp <2 x i32> %i.ch to <2 x float>   ; 2 uses
  %27 = shufflevector <2 x float> %i.bm, <2 x float> %i.bo, <2 x i32> <i32 0, i32 2>
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.do = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %27, <2 x float> %i.dn, <2 x float> zeroinitializer)
  %i.dp = shufflevector <2 x float> %i.bm, <2 x float> %i.bo, <2 x i32> <i32 1, i32 3>
  %i.dq = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.dq, <2 x float> %i.do) ; 2 uses
  %i.ds = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.du = fsub <2 x float> %i.dr, %i.dt
  %i.dv = call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.du)
  %i.dw = fptosi <2 x float> %i.dv to <2 x i32>
  %i.dx = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.dw, <2 x i32> zeroinitializer) ; 2 uses
  %i.dy = uitofp nneg <2 x i32> %i.dx to <2 x float>
  %i.dz = fsub <2 x float> %i.dr, %i.dy           ; 2 uses
  store <2 x i32> %i.dx, ptr %10, align 8, !tbaa !46
  %i.ea = fadd <2 x float> %i.dt, %i.dz           ; 2 uses
  %i.eb = fcmp olt <2 x float> %i.de, %i.ea
  %i.ec = select <2 x i1> %i.eb, <2 x float> %i.de, <2 x float> %i.ea
  %i.ed = call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ec)
  %i.ee = fptosi <2 x float> %i.ed to <2 x i32>
  store <2 x i32> %i.ee, ptr %i.ad, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 4 dereferenceable(16) %10)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit unwind label %bb.l

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit:               ; preds = %bb.c
  %i.ef = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %18)
          to label %bb.d unwind label %bb.m       ; 0 uses

bb.d:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %19) #21
  %i.eg = load float, ptr %i.bh, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %i.eh = invoke noalias noundef nonnull dereferenceable(28) ptr @_Znwm(i64 noundef 28) #19
          to label %.noexc unwind label %bb.o     ; 7 uses

.noexc:                                           ; preds = %bb.d
  %i.ei = fptosi <2 x float> %i.dz to <2 x i32>
  %i.ej = sitofp <2 x i32> %i.ei to <2 x float>
  store ptr %i.eh, ptr %20, align 8, !tbaa !28
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 28 ; 2 uses
  store ptr %i.ek, ptr %i.an, align 8, !tbaa !29
  store <2 x float> %i.ej, ptr %i.eh, align 4
  %.sroa.5111.0..09.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store float %i.eg, ptr %.sroa.5111.0..09.i.i.i.i.i.i.sroa_idx, align 4, !tbaa !36
  %.sroa.6.0..09.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %.sroa.6.0..09.i.i.i.i.i.i.sroa_idx, align 4, !tbaa !36
  %.sroa.8.0..09.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 20
  store i32 0, ptr %.sroa.8.0..09.i.i.i.i.i.i.sroa_idx, align 4, !tbaa !46
  %.sroa.9.0..09.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  store i32 -1, ptr %.sroa.9.0..09.i.i.i.i.i.i.sroa_idx, align 4, !tbaa !46
  store ptr %i.ek, ptr %i.am, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  store i64 0, ptr %i.ap, align 8
  store i32 33619968, ptr %21, align 8, !tbaa !25
  store ptr %13, ptr %i.ao, align 8, !tbaa !24
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(24) %21, i32 noundef 0, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  %i.el = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  store i32 0, ptr %i.aq, align 8, !tbaa !47
  store i32 0, ptr %i.ar, align 4, !tbaa !48
  store i32 16842752, ptr %22, align 8, !tbaa !25
  store ptr %13, ptr %i.as, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  store i64 0, ptr %i.au, align 8
  store i32 33619968, ptr %23, align 8, !tbaa !25
  store ptr %19, ptr %i.at, align 8, !tbaa !24
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !14
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 80
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !133
  store i32 0, ptr %6, align 4, !tbaa !135, !noalias !133
  store i32 1, ptr %i.av, align 4, !tbaa !136, !noalias !133
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21, !noalias !133
  store i64 9223372034707292160, ptr %7, align 8, !noalias !133
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !133
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !137
  %i.ep = add nuw nsw i32 %.0229, 1               ; 2 uses
  store i32 %.0229, ptr %4, align 4, !tbaa !135, !noalias !137
  store i32 %i.ep, ptr %i.aw, align 4, !tbaa !136, !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !137
  store i64 9223372034707292160, ptr %5, align 8, !noalias !137
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %26, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.s

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !137
  store i64 0, ptr %i.ay, align 8
  store i32 -1040121856, ptr %25, align 8, !tbaa !25
  store ptr %26, ptr %i.ax, align 8, !tbaa !24
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %bb.i unwind label %bb.t

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  %i.eq = load ptr, ptr %20, align 8, !tbaa !28   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.er = load ptr, ptr %i.an, align 8, !tbaa !29
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.eq to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.eu) #20
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit:     ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0213.0228, i64 72 ; 2 uses
  %i.ew = load ptr, ptr %i.l, align 8, !tbaa !130
  %i.ex = icmp ult ptr %i.ev, %i.ew
  br i1 %i.ex, label %bb.b, label %._crit_edge, !llvm.loop !128

bb.k:                                             ; preds = %bb.b
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.y

bb.l:                                             ; preds = %bb.c
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn69 = phi { ptr, i32 } [ %i.fa, %bb.m ], [ %i.ez, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.y

bb.o:                                             ; preds = %bb.d
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EED2Ev.exit108

bb.p:                                             ; preds = %.noexc
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %bb.w

bb.q:                                             ; preds = %bb.e
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %bb.w

bb.r:                                             ; preds = %bb.f
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %bb.g
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.u
end_hunk_0
