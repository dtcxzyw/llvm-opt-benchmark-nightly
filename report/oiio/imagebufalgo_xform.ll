inline.NumInlined: 5677
inline.NumDeleted: 1666
begin_hunk_0_@_ZN11OpenImageIO4v3_1L9warp_implERNS0_8ImageBufERKS1_RKN9Imath_3_18Matrix33IfEEPKNS0_8Filter2DEbNS1_8WrapModeEbNS0_3ROIEi:bb.a
  %28 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 5 uses
  %29 = alloca %"class.std::shared_ptr.17", align 8 ; 8 uses
  %30 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %31 = alloca %"class.OpenImageIO::v3_1::ImageBuf", align 8 ; 8 uses
  %32 = alloca %"class.OpenImageIO::v3_1::ImageBuf", align 8 ; 8 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #33
  store ptr @.str.83, ptr %22, align 8, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 9, ptr %i.s, align 8, !tbaa !41
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(68) %21, ptr noundef nonnull dead_on_return %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #33
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8roi_fullEv(ptr dead_on_unwind nonnull writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4 %23, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #33
  store i32 -2147483648, ptr %24, align 8, !tbaa !71
  %i.t = getelementptr inbounds nuw i8, ptr %24, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.t, i8 0, i64 28, i1 false)
  %i.u = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf11initializedEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  br i1 %i.u, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #33
  %i.v = load i32, ptr %7, align 8, !tbaa !71
  %.not457 = icmp eq i32 %i.v, -2147483648
  br i1 %.not457, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !73
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf3roiEv(ptr dead_on_unwind nonnull writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4 %25, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 4 dereferenceable(32) %25, i64 32, i1 false), !tbaa.struct !73
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #33
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8roi_fullEv(ptr dead_on_unwind nonnull writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4 %26, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #33
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
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #33
  br label %bb.dl

bb.l:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #33
  br label %bb.dl

bb.m:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #33
  %i.aa = load i32, ptr %7, align 8, !tbaa !71
  %.not456 = icmp eq i32 %i.aa, -2147483648
  br i1 %.not456, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !73
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  br i1 %4, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf3roiEv(ptr dead_on_unwind nonnull writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4 %28, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %.sroa.0301.0.copyload = load i32, ptr %28, align 8
  %.sroa.4302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 4
  %.sroa.4302.0.copyload = load i32, ptr %.sroa.4302.0..sroa_idx, align 4
  %.sroa.5303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 8
  %.sroa.7305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ab = sitofp i32 %.sroa.0301.0.copyload to float
  %i.ac = fadd float %i.ab, 5.000000e-01
  %i.ad = sitofp i32 %.sroa.4302.0.copyload to float
  %i.ae = fadd float %i.ad, -5.000000e-01         ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !77, !noalias !74 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ak = load <4 x float>, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.am = load float, ptr %i.al, align 4, !tbaa !77, !noalias !74 ; 3 uses
  %i.an = load <2 x i32>, ptr %.sroa.5303.0..sroa_idx, align 8
  %i.ao = sitofp <2 x i32> %i.an to <2 x float>
  %i.ap = fadd <2 x float> %i.ao, <float 5.000000e-01, float -5.000000e-01> ; 2 uses
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.ar = load <2 x float>, ptr %2, align 4, !tbaa !77, !noalias !74 ; 3 uses
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.at = load <2 x float>, ptr %i.af, align 4, !tbaa !77, !noalias !74
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.av = load <2 x float>, ptr %i.ag, align 4, !tbaa !77, !noalias !74 ; 3 uses
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ax = fmul <4 x float> %i.aq, %i.au           ; 5 uses
  %i.ay = extractelement <2 x float> %i.ar, i64 0 ; 2 uses
  %i.az = extractelement <4 x float> %i.ax, i64 2
  %i.ba = call float @llvm.fmuladd.f32(float %i.ae, float %i.ay, float %i.az)
  %i.bb = extractelement <2 x float> %i.av, i64 0 ; 2 uses
  %i.bc = fadd float %i.bb, %i.ba
  %i.bd = extractelement <2 x float> %i.ar, i64 1 ; 2 uses
  %i.be = extractelement <4 x float> %i.ax, i64 3
  %i.bf = call float @llvm.fmuladd.f32(float %i.ae, float %i.bd, float %i.be)
  %i.bg = extractelement <2 x float> %i.av, i64 1 ; 2 uses
  %i.bh = fadd float %i.bg, %i.bf
  %i.bi = shufflevector <4 x float> %i.ak, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bj = fmul <2 x float> %i.ap, %i.bi           ; 3 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 0
  %i.bl = call float @llvm.fmuladd.f32(float %i.ae, float %i.ai, float %i.bk)
  %i.bm = fadd float %i.am, %i.bl                 ; 2 uses
  %i.bn = fdiv float %i.bc, %i.bm                 ; 4 uses
  %i.bo = fdiv float %i.bh, %i.bm                 ; 4 uses
  %i.bp = insertelement <4 x float> poison, float %i.ac, i64 0 ; 2 uses
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.br = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> %i.as, <4 x float> %i.ax)
  %i.bs = fadd <4 x float> %i.aw, %i.br
  %i.bt = shufflevector <4 x float> %i.bp, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bu = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.bv, <2 x float> %i.bj)
  %i.bx = insertelement <2 x float> poison, float %i.am, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bz = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.ca = fadd <4 x float> %i.by, %i.bz
  %i.cb = fdiv <4 x float> %i.bs, %i.ca           ; 6 uses
  %i.cc = extractelement <4 x float> %i.ax, i64 0
  %i.cd = call float @llvm.fmuladd.f32(float %i.ae, float %i.ay, float %i.cc)
  %i.ce = fadd float %i.bb, %i.cd
  %i.cf = extractelement <4 x float> %i.ax, i64 1
  %i.cg = call float @llvm.fmuladd.f32(float %i.ae, float %i.bd, float %i.cf)
  %i.ch = fadd float %i.bg, %i.cg
  %i.ci = extractelement <2 x float> %i.bj, i64 1
  %i.cj = call float @llvm.fmuladd.f32(float %i.ae, float %i.ai, float %i.ci)
  %i.ck = fadd float %i.am, %i.cj                 ; 2 uses
  %i.cl = fdiv float %i.ce, %i.ck                 ; 4 uses
  %i.cm = fdiv float %i.ch, %i.ck                 ; 4 uses
  %i.cn = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.co = fcmp ogt <4 x float> %i.cb, %i.cn       ; 4 uses
  %i.cp = extractelement <4 x i1> %i.co, i64 2
  %i.cq = extractelement <4 x float> %i.cb, i64 0 ; 2 uses
  %i.cr = extractelement <4 x float> %i.cb, i64 2 ; 2 uses
  %.sroa.0.0.i = select i1 %i.cp, float %i.cq, float %i.cr ; 2 uses
  %i.cs = extractelement <4 x i1> %i.co, i64 0
  %.sroa.18.0.i = select i1 %i.cs, float %i.cq, float %i.cr ; 2 uses
  %i.ct = extractelement <4 x i1> %i.co, i64 3
  %i.cu = extractelement <4 x float> %i.cb, i64 1 ; 2 uses
  %i.cv = extractelement <4 x float> %i.cb, i64 3 ; 2 uses
  %.sroa.10.0.i = select i1 %i.ct, float %i.cu, float %i.cv ; 2 uses
  %i.cw = extractelement <4 x i1> %i.co, i64 1
  %.sroa.26.0.i = select i1 %i.cw, float %i.cu, float %i.cv ; 2 uses
  %i.cx = fcmp olt float %i.bn, %.sroa.0.0.i
  %.sroa.0.1.i = select i1 %i.cx, float %i.bn, float %.sroa.0.0.i ; 2 uses
  %i.cy = fcmp ogt float %i.bn, %.sroa.18.0.i
  %.sroa.18.1.i = select i1 %i.cy, float %i.bn, float %.sroa.18.0.i ; 2 uses
  %i.cz = fcmp olt float %i.bo, %.sroa.10.0.i
  %.sroa.10.1.i = select i1 %i.cz, float %i.bo, float %.sroa.10.0.i ; 2 uses
  %i.da = fcmp ogt float %i.bo, %.sroa.26.0.i
  %.sroa.26.1.i = select i1 %i.da, float %i.bo, float %.sroa.26.0.i ; 2 uses
  %i.db = fcmp olt float %i.cl, %.sroa.0.1.i
  %.sroa.0.2.i = select i1 %i.db, float %i.cl, float %.sroa.0.1.i
  %i.dc = fcmp ogt float %i.cl, %.sroa.18.1.i
  %.sroa.18.2.i = select i1 %i.dc, float %i.cl, float %.sroa.18.1.i
  %i.dd = fcmp olt float %i.cm, %.sroa.10.1.i
  %.sroa.10.2.i = select i1 %i.dd, float %i.cm, float %.sroa.10.1.i
  %i.de = fcmp ogt float %i.cm, %.sroa.26.1.i
  %.sroa.26.2.i = select i1 %i.de, float %i.cm, float %.sroa.26.1.i
  %i.df = call float @llvm.floor.f32(float %.sroa.0.2.i)
  %i.dg = call float @llvm.floor.f32(float %.sroa.10.2.i)
  %i.dh = call float @llvm.floor.f32(float %.sroa.18.2.i)
  %i.di = call float @llvm.floor.f32(float %.sroa.26.2.i)
  %i.dj = insertelement <4 x float> poison, float %i.df, i64 0
  %i.dk = insertelement <4 x float> %i.dj, float %i.dh, i64 1
  %i.dl = insertelement <4 x float> %i.dk, float %i.dg, i64 2
  %i.dm = insertelement <4 x float> %i.dl, float %i.di, i64 3
  %i.dn = fptosi <4 x float> %i.dm to <4 x i32>
  %i.do = add <4 x i32> %i.dn, <i32 0, i32 1, i32 0, i32 1>
  store <4 x i32> %i.do, ptr %27, align 16, !tbaa !3, !alias.scope !74
  %i.dp = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.dq = load <4 x i32>, ptr %.sroa.7305.0..sroa_idx, align 8
  store <4 x i32> %i.dq, ptr %i.dp, align 16, !tbaa !3, !alias.scope !74
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf3roiEv(ptr dead_on_unwind nonnull writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4 %27, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 16 dereferenceable(32) %27, i64 32, i1 false), !tbaa.struct !73
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #33
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.p
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #33
  br label %bb.dl

bb.u:                                             ; preds = %bb.s, %bb.h
  %i.ds = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dt = getelementptr inbounds nuw i8, ptr %24, i64 28 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3
  %.sroa.speculated290 = call i32 @llvm.smin.i32(i32 %i.ds, i32 %i.du)
  store i32 %.sroa.speculated290, ptr %i.dt, align 4, !tbaa !78
  %i.dv = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.w unwind label %bb.y       ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.dw = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_S7_S7_PNS0_9ImageSpecEi(ptr noundef nonnull align 4 dereferenceable(32) %24, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 16)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_i.exit unwind label %bb.j

_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_i.exit: ; preds = %bb.w
  br i1 %i.dw, label %bb.z, label %bb.dk

bb.x:                                             ; preds = %bb.u
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.y:                                             ; preds = %bb.v
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.z:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo7IBAprepERNS0_3ROIEPNS0_8ImageBufEPKS4_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #33
  %i.dz = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  %i.ea = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34
          to label %bb.af unwind label %bb.aa     ; 6 uses

bb.aa:                                            ; preds = %bb.z
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  %i.ed = call ptr @__cxa_begin_catch(ptr %i.ec) #33 ; 0 uses
  invoke void @_ZN11OpenImageIO4v3_18Filter2D7destroyEPS1_(ptr noundef null)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_rethrow() #35
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #36
  unreachable

bb.ae:                                            ; preds = %bb.ab
  unreachable

bb.af:                                            ; preds = %bb.z
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i32 1, ptr %i.eh, align 8, !tbaa !18
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 1, ptr %i.ei, align 4, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN11OpenImageIO4v3_18Filter2DEPFvS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ea, align 8, !tbaa !21
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store ptr @_ZN11OpenImageIO4v3_18Filter2D7destroyEPS1_, ptr %i.ej, align 8, !tbaa !54
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store ptr null, ptr %i.ek, align 8, !tbaa !56
  store ptr %i.ea, ptr %i.dz, align 8, !tbaa !17
  %i.el = icmp eq ptr %3, null
  br i1 %i.el, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  store ptr @.str.34, ptr %30, align 8, !tbaa !39
  %i.em = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 8, ptr %i.em, align 8, !tbaa !41
  %i.en = invoke noundef ptr @_ZN11OpenImageIO4v3_18Filter2D6createENS0_17basic_string_viewIcSt11char_traitsIcEEEff(ptr noundef nonnull dead_on_return %30, float noundef 6.000000e+00, float noundef 6.000000e+00)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_18Filter2DELN9__gnu_cxx12_Lock_policyE2EE5resetIS2_EENSt9enable_ifIXsr21__sp_is_constructibleIS2_T_EE5valueEvE4typeEPS8_(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef %i.en)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eo = load ptr, ptr %29, align 8, !tbaa !79
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.ak:                                            ; preds = %bb.ai, %bb.af
  %.0105 = phi ptr [ %i.eo, %bb.ai ], [ %3, %bb.af ] ; 7 uses
  %i.eq = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf11initializedEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.al unwind label %bb.as

bb.al:                                            ; preds = %bb.ak
  br i1 %i.eq, label %bb.an, label %bb.am, !prof !81

bb.am:                                            ; preds = %bb.al
  %i.er = load ptr, ptr @stderr, align 8, !tbaa !82
  %i.es = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.er, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 411, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_1L9warp_implERNS0_8ImageBufERKS1_RKN9Imath_3_18Matrix33IfEEPKNS0_8Filter2DEbNS1_8WrapModeEbNS0_3ROIEi, ptr noundef nonnull @.str.20) #38 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #33
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #33
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %32)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.et = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.aq unwind label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  %i.ev = load i64, ptr %i.eu, align 8            ; 4 uses
  %.sroa.0249.0.extract.trunc = trunc i64 %i.ev to i8 ; 4 uses
  %.sroa.14.0.extract.shift = lshr i64 %i.ev, 8
  %.sroa.14.0.extract.trunc = trunc i64 %.sroa.14.0.extract.shift to i8 ; 7 uses
  %.sroa.22.0.extract.shift = lshr i64 %i.ev, 16
  %.sroa.22.0.extract.trunc = trunc i64 %.sroa.22.0.extract.shift to i8 ; 7 uses
  %.sroa.30278.0.extract.shift = lshr i64 %i.ev, 32 ; 7 uses
  %.sroa.30278.0.extract.trunc = trunc nuw i64 %.sroa.30278.0.extract.shift to i32
  %i.ew = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.ar unwind label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %i.ey = load i64, ptr %i.ex, align 8            ; 4 uses
  %.sroa.0230.0.extract.trunc = trunc i64 %i.ey to i8 ; 5 uses
  %.sroa.11.0.extract.shift = lshr i64 %i.ey, 8
  %.sroa.11.0.extract.trunc = trunc i64 %.sroa.11.0.extract.shift to i8 ; 4 uses
  %.sroa.13.0.extract.shift = lshr i64 %i.ey, 16
  %.sroa.13.0.extract.trunc = trunc i64 %.sroa.13.0.extract.shift to i8 ; 4 uses
  %.sroa.15245.0.extract.shift = lshr i64 %i.ey, 32
  %.sroa.15245.0.extract.trunc = trunc nuw i64 %.sroa.15245.0.extract.shift to i32 ; 4 uses
  switch i8 %.sroa.0230.0.extract.trunc, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit [
    i8 11, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit.thread
    i8 4, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit.thread
    i8 2, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit.thread
    i8 10, label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit.thread
  ]

_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit: ; preds = %bb.ar
  %i.ez = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18ImageBuf4copyERKS1_NS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 267)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo20is_common_pixel_typeENS0_8TypeDescE.exit.thread unwind label %bb.aw ; 0 uses

bb.as:                                            ; preds = %bb.ak
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.at:                                            ; preds = %bb.an
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.au:                                            ; preds = %bb.ao
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.av:                                            ; preds = %bb.ap
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body139

end_hunk_0
