Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/AKAZEFeatures?download=true
inline.NumInlined: 1054
inline.NumDeleted: 331
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

declare void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #5

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv11xfeatures2d38Upright_MLDB_Descriptor_Subset_InvokerD2Ev(ptr noundef nonnull align 8 dead_on_return(456) dereferenceable(456) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv11xfeatures2d38Upright_MLDB_Descriptor_Subset_InvokerE, i64 16), ptr %0, align 8, !tbaa !94
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #23
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv11xfeatures2d30MLDB_Descriptor_Subset_InvokerD2Ev(ptr noundef nonnull align 8 dead_on_return(456) dereferenceable(456) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv11xfeatures2d30MLDB_Descriptor_Subset_InvokerE, i64 16), ptr %0, align 8, !tbaa !94
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #23
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2cv11xfeatures2d35MSURF_Upright_Descriptor_64_Invoker31Get_MSURF_Upright_Descriptor_64ERKNS_8KeyPointEPfi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.31", align 1 ; 3 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.31", align 1 ; 3 uses
  %i.a = icmp eq i32 %3, 64
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv11xfeatures2d35MSURF_Upright_Descriptor_64_Invoker31Get_MSURF_Upright_Descriptor_64ERKNS_8KeyPointEPfi, ptr noundef nonnull @.str.1, i32 noundef 1490) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %4, align 8, !tbaa !52     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.g = load i64, ptr %i.e, align 8, !tbaa !53
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.b, %bb.e ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.c, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.w

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !132  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !160
  %i.m = shl nuw i32 1, %i.l
  %i.n = sitofp i32 %i.m to float                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !161
  %i.q = fmul float %i.p, 5.000000e-01
  %i.r = fdiv float %i.q, %i.n
  %i.s = insertelement <4 x float> poison, float %i.r, i64 0
  %i.t = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.s) ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i32, ptr %i.u, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !76
  %i.y = getelementptr inbounds nuw [1080 x i8], ptr %i.x, i64 %i.w
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw [1080 x i8], ptr %i.z, i64 %i.w
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 208
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %i.ab)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ac = load <2 x float>, ptr %1, align 4, !tbaa !16
  %i.ad = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fdiv <2 x float> %i.ac, %i.ae           ; 3 uses
  %i.ag = sitofp i32 %i.t to float
  %i.ah = fmul nnan float %i.ag, 2.500000e+00     ; 2 uses
  %i.ai = fmul nnan float %i.ah, 2.000000e+00
  %i.aj = fmul float %i.ah, %i.ai                 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = icmp slt i32 %i.ap, 2                   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp slt i32 %i.aw, 2                   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  %i.bc = extractelement <2 x float> %i.af, i64 1 ; 2 uses
  %i.bd = insertelement <8 x i32> poison, i32 %i.t, i64 0
  %i.be = shufflevector <8 x i32> %i.bd, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bf = extractelement <2 x float> %i.af, i64 0 ; 2 uses
  %i.bg = shufflevector <2 x float> %i.af, <2 x float> poison, <8 x i32> zeroinitializer
  %i.bh = insertelement <8 x float> poison, float %i.aj, i64 0
  %i.bi = shufflevector <8 x float> %i.bh, <8 x float> poison, <8 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.o
  %indvars.iv242 = phi i32 [ -3, %bb.h ], [ %indvars.iv.next243, %bb.o ] ; 2 uses
  %.0159238 = phi float [ -5.000000e-01, %bb.h ], [ %i.bk, %bb.o ]
  %.0160237 = phi i64 [ 0, %bb.h ], [ %indvars.iv.next246, %bb.o ]
  %.0162236 = phi i32 [ -8, %bb.h ], [ %i.he, %bb.o ] ; 4 uses
  %.0164235 = phi float [ 0.000000e+00, %bb.h ], [ %i.em, %bb.o ]
  %i.bj = add nsw i32 %.0162236, -4
  %i.bk = fadd float %.0159238, 1.000000e+00      ; 2 uses
  %i.bl = add nsw i32 %.0162236, 1
  %i.bm = mul nsw i32 %i.bl, %i.t
  %i.bn = sitofp i32 %i.bm to float
  %i.bo = fadd float %i.bc, %i.bn
  %i.bp = fadd float %i.bk, -2.000000e+00         ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.k
  %indvars.iv245 = phi i64 [ %.0160237, %bb.i ], [ %indvars.iv.next246, %bb.k ] ; 2 uses
  %indvars.iv = phi i32 [ -3, %bb.i ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.0158234 = phi float [ -5.000000e-01, %bb.i ], [ %i.du, %bb.k ]
  %.0161232 = phi i32 [ -8, %bb.i ], [ %i.en, %bb.k ] ; 5 uses
  %.1165231 = phi float [ %.0164235, %bb.i ], [ %i.em, %bb.k ]
  %i.bq = insertelement <8 x i32> poison, i32 %.0161232, i64 0
  %i.br = shufflevector <8 x i32> %i.bq, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bs = add nsw <8 x i32> %i.br, <i32 -4, i32 -3, i32 -2, i32 -1, i32 0, i32 1, i32 2, i32 3>
  %i.bt = add nsw i32 %.0161232, -4
  %i.bu = mul nsw <8 x i32> %i.bs, %i.be
  %i.bv = sitofp <8 x i32> %i.bu to <8 x float>
  %i.bw = fadd <8 x float> %i.bg, %i.bv           ; 3 uses
  %i.bx = shufflevector <8 x float> %i.bw, <8 x float> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.by = fsub <8 x float> %i.bx, %i.bw           ; 2 uses
  %i.bz = add nsw i32 %.0161232, 4
  %i.ca = mul nsw i32 %i.bz, %i.t
  %i.cb = sitofp i32 %i.ca to float
  %i.cc = fadd float %i.bf, %i.cb
  %i.cd = extractelement <8 x float> %i.bw, i64 5 ; 2 uses
  %i.ce = fsub float %i.cd, %i.cc                 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.j, %.split.us
  %.0157230 = phi i32 [ %i.bj, %bb.j ], [ %i.er, %.split.us ] ; 2 uses
  %i.cf = phi <4 x float> [ zeroinitializer, %bb.j ], [ %i.eq, %.split.us ] ; 2 uses
  %i.cg = mul nsw i32 %.0157230, %i.t
  %i.ch = sitofp i32 %i.cg to float
  %i.ci = fadd float %i.bc, %i.ch                 ; 3 uses
  %i.cj = fsub float %i.bo, %i.ci                 ; 2 uses
  %i.ck = fmul float %i.cj, %i.cj                 ; 3 uses
  %i.cl = call float @llvm.floor.f32(float %i.ci)
  %i.cm = fptosi float %i.cl to i32               ; 4 uses
  %i.cn = add nsw i32 %i.cm, 1                    ; 2 uses
  %.not193 = icmp slt i32 %i.cn, %i.an
  %i.co = uitofp nneg i32 %i.cm to float
  %i.cp = fsub float %i.ci, %i.co                 ; 3 uses
  %10 = sext i32 %i.cm to i64                     ; 2 uses
  %i.cq = mul i64 %i.au, %10
  %.sink.idx.i = select i1 %i.aq, i64 0, i64 %i.cq
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sink.idx.i ; 2 uses
  %11 = sext i32 %i.cn to i64                     ; 2 uses
  %i.cr = mul i64 %i.au, %11
  %.sink.idx.i203 = select i1 %i.aq, i64 0, i64 %i.cr
  %.sink.i204 = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sink.idx.i203 ; 2 uses
  %i.cs = fsub float 1.000000e+00, %i.cp          ; 2 uses
  %i.ct = mul i64 %i.bb, %10
  %.sink.idx.i207 = select i1 %i.ax, i64 0, i64 %i.ct
  %.sink.i208 = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sink.idx.i207 ; 2 uses
  %i.cu = mul i64 %i.bb, %11
  %.sink.idx.i211 = select i1 %i.ax, i64 0, i64 %i.cu
  %.sink.i212 = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sink.idx.i211 ; 2 uses
  %.not193.fr = freeze i1 %.not193
  br i1 %.not193.fr, label %.preheader.split, label %.preheader.split.us.preheader

.preheader.split.us.preheader:                    ; preds = %.preheader
  %i.cv = insertelement <8 x float> poison, float %i.ck, i64 0
  %i.cw = shufflevector <8 x float> %i.cv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cx = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.by, <8 x float> %i.by, <8 x float> %i.cw)
  %i.cy = fneg <8 x float> %i.cx
  %i.cz = fdiv <8 x float> %i.cy, %i.bi           ; 8 uses
  %i.da = extractelement <8 x float> %i.cz, i64 0
  %i.db = call noundef float @expf(float noundef %i.da) #23 ; 0 uses
  %i.dc = extractelement <8 x float> %i.cz, i64 1
  %i.dd = call noundef float @expf(float noundef %i.dc) #23 ; 0 uses
  %i.de = extractelement <8 x float> %i.cz, i64 2
  %i.df = call noundef float @expf(float noundef %i.de) #23 ; 0 uses
  %i.dg = extractelement <8 x float> %i.cz, i64 3
  %i.dh = call noundef float @expf(float noundef %i.dg) #23 ; 0 uses
  %i.di = extractelement <8 x float> %i.cz, i64 4
  %i.dj = call noundef float @expf(float noundef %i.di) #23 ; 0 uses
  %i.dk = extractelement <8 x float> %i.cz, i64 5
  %i.dl = call noundef float @expf(float noundef %i.dk) #23 ; 0 uses
  %i.dm = extractelement <8 x float> %i.cz, i64 6
  %i.dn = call noundef float @expf(float noundef %i.dm) #23 ; 0 uses
  %i.do = extractelement <8 x float> %i.cz, i64 7
  %i.dp = call noundef float @expf(float noundef %i.do) #23 ; 0 uses
  %i.dq = call float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.ck)
  %i.dr = fneg float %i.dq
  %i.ds = fdiv float %i.dr, %i.aj
  %i.dt = call noundef float @expf(float noundef %i.ds) #23 ; 0 uses
  br label %.split.us

bb.k:                                             ; preds = %.split.us
  %i.du = fadd float %.0158234, 1.000000e+00      ; 2 uses
  %i.dv = fadd float %i.du, -2.000000e+00         ; 2 uses
  %i.dw = fmul float %i.dv, %i.dv
  %i.dx = call float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %i.dw)
  %i.dy = fdiv float %i.dx, -4.500000e+00
  %i.dz = call noundef float @expf(float noundef %i.dy) #23 ; 3 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv245
  %indvars.iv.next246 = add nsw i64 %indvars.iv245, 4 ; 3 uses
  %i.eb = insertelement <4 x float> poison, float %i.dz, i64 0
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ed = fmul <4 x float> %i.eq, %i.ec
  store <4 x float> %i.ed, ptr %i.ea, align 4, !tbaa !16
  %foldExtExtBinop = fmul <4 x float> %i.eq, %i.eq
  %i.ee = extractelement <4 x float> %foldExtExtBinop, i64 1
  %i.ef = extractelement <4 x float> %i.eq, i64 0 ; 2 uses
  %i.eg = call float @llvm.fmuladd.f32(float %i.ef, float %i.ef, float %i.ee)
  %i.eh = extractelement <4 x float> %i.eq, i64 2 ; 2 uses
  %i.ei = call float @llvm.fmuladd.f32(float %i.eh, float %i.eh, float %i.eg)
  %i.ej = extractelement <4 x float> %i.eq, i64 3 ; 2 uses
  %i.ek = call float @llvm.fmuladd.f32(float %i.ej, float %i.ej, float %i.ei)
  %i.el = fmul float %i.ek, %i.dz
  %i.em = call float @llvm.fmuladd.f32(float %i.el, float %i.dz, float %.1165231) ; 3 uses
  %i.en = add nsw i32 %.0161232, 5
  %i.eo = icmp slt i32 %.0161232, 7
  %indvars.iv.next = add nsw i32 %indvars.iv, 5
  br i1 %i.eo, label %bb.j, label %bb.o, !llvm.loop !259

bb.l:                                             ; preds = %bb.g
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.split.us:                                        ; preds = %bb.n, %.preheader.split.us.preheader
  %i.eq = phi <4 x float> [ %i.cf, %.preheader.split.us.preheader ], [ %i.hc, %bb.n ] ; 7 uses
  %i.er = add nsw i32 %.0157230, 1                ; 2 uses
  %exitcond244.not = icmp eq i32 %i.er, %indvars.iv242
  br i1 %exitcond244.not, label %bb.k, label %.preheader, !llvm.loop !260

.preheader.split:                                 ; preds = %.preheader, %bb.n
  %.0222 = phi i32 [ %i.hd, %bb.n ], [ %i.bt, %.preheader ] ; 2 uses
  %i.es = phi <4 x float> [ %i.hc, %bb.n ], [ %i.cf, %.preheader ] ; 2 uses
  %i.et = mul nsw i32 %.0222, %i.t
  %i.eu = sitofp i32 %i.et to float
  %i.ev = fadd float %i.bf, %i.eu                 ; 3 uses
  %i.ew = fsub float %i.cd, %i.ev                 ; 2 uses
  %i.ex = call float @llvm.fmuladd.f32(float %i.ew, float %i.ew, float %i.ck)
  %i.ey = fneg float %i.ex
  %i.ez = fdiv float %i.ey, %i.aj
  %i.fa = call noundef float @expf(float noundef %i.ez) #23
  %i.fb = call float @llvm.floor.f32(float %i.ev)
  %i.fc = fptosi float %i.fb to i32               ; 4 uses
  %i.fd = add nsw i32 %i.fc, 1                    ; 2 uses
  %i.fe = or i32 %i.fc, %i.cm
  %or.cond.not = icmp sgt i32 %i.fe, -1
  %.not = icmp slt i32 %i.fd, %i.al
  %or.cond = select i1 %or.cond.not, i1 %.not, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.preheader.split
  %i.ff = uitofp nneg i32 %i.fc to float
  %i.fg = fsub float %i.ev, %i.ff                 ; 3 uses
  %12 = sext i32 %i.fc to i64                     ; 4 uses
  %i.fh = getelementptr inbounds [4 x i8], ptr %.sink.i, i64 %12
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !16
  %13 = sext i32 %i.fd to i64                     ; 4 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %.sink.i, i64 %13
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !16
  %i.fl = getelementptr inbounds [4 x i8], ptr %.sink.i204, i64 %12
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !16
  %i.fn = getelementptr inbounds [4 x i8], ptr %.sink.i204, i64 %13
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !16
  %i.fp = fsub float 1.000000e+00, %i.fg          ; 2 uses
  %i.fq = fmul float %i.cs, %i.fp
  %i.fr = fmul float %i.cs, %i.fg
  %i.fs = fmul float %i.cp, %i.fp
  %i.ft = fmul float %i.cp, %i.fg
  %i.fu = getelementptr inbounds [4 x i8], ptr %.sink.i208, i64 %12
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !16
  %i.fw = getelementptr inbounds [4 x i8], ptr %.sink.i208, i64 %13
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !16
  %i.fy = getelementptr inbounds [4 x i8], ptr %.sink.i212, i64 %12
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !16
  %i.ga = getelementptr inbounds [4 x i8], ptr %.sink.i212, i64 %13
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !16
  %i.gc = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ge = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.gf = insertelement <2 x float> %i.ge, float %i.fx, i64 1
  %i.gg = fmul <2 x float> %i.gd, %i.gf
  %i.gh = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gj = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.gk = insertelement <2 x float> %i.gj, float %i.fv, i64 1
  %i.gl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gi, <2 x float> %i.gk, <2 x float> %i.gg)
  %i.gm = insertelement <2 x float> poison, float %i.fs, i64 0
  %i.gn = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.go = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.gp = insertelement <2 x float> %i.go, float %i.fz, i64 1
  %i.gq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gn, <2 x float> %i.gp, <2 x float> %i.gl)
  %i.gr = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gt = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.gu = insertelement <2 x float> %i.gt, float %i.gb, i64 1
  %i.gv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gs, <2 x float> %i.gu, <2 x float> %i.gq)
  %i.gw = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gy = fmul <2 x float> %i.gx, %i.gv           ; 2 uses
  %i.gz = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gy)
  %i.ha = shufflevector <2 x float> %i.gy, <2 x float> %i.gz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hb = fadd <4 x float> %i.es, %i.ha
  br label %bb.n

bb.n:                                             ; preds = %.preheader.split, %bb.m
  %i.hc = phi <4 x float> [ %i.es, %.preheader.split ], [ %i.hb, %bb.m ] ; 2 uses
  %i.hd = add nsw i32 %.0222, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.hd, %indvars.iv
  br i1 %exitcond.not, label %.split.us, label %.preheader.split, !llvm.loop !261

bb.o:                                             ; preds = %bb.k
  %i.he = add nsw i32 %.0162236, 5
  %i.hf = icmp slt i32 %.0162236, 7
  %indvars.iv.next243 = add nsw i32 %indvars.iv242, 5
  br i1 %i.hf, label %bb.i, label %bb.p, !llvm.loop !262

bb.p:                                             ; preds = %bb.o
  %i.hg = icmp eq i64 %indvars.iv.next246, 64
  br i1 %i.hg, label %vector.ph, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv11xfeatures2d35MSURF_Upright_Descriptor_64_Invoker31Get_MSURF_Upright_Descriptor_64ERKNS_8KeyPointEPfi, ptr noundef nonnull @.str.1, i32 noundef 1599) #25
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217

bb.u:                                             ; preds = %bb.r
  %i.hi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hj = load ptr, ptr %8, align 8, !tbaa !52    ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215: ; preds = %bb.u
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !53
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215, %bb.t
  %.pn191 = phi { ptr, i32 } [ %i.hh, %bb.t ], [ %i.hi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215 ], [ %i.hi, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #23
  br label %bb.v

vector.ph:                                        ; preds = %bb.p
  %i.ho = call noundef float @sqrtf(float noundef %i.em) #23
  %i.hp = fdiv float 1.000000e+00, %i.ho
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.hp, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 16 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %2, align 4, !tbaa !16
  %wide.load258 = load <4 x float>, ptr %i.hq, align 4, !tbaa !16
  %i.hr = fmul <4 x float> %broadcast.splat, %wide.load
  %i.hs = fmul <4 x float> %broadcast.splat, %wide.load258
  store <4 x float> %i.hr, ptr %2, align 4, !tbaa !16
  store <4 x float> %i.hs, ptr %i.hq, align 4, !tbaa !16
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.ht, align 4, !tbaa !16
  %wide.load258.1 = load <4 x float>, ptr %i.hu, align 4, !tbaa !16
  %i.hv = fmul <4 x float> %broadcast.splat, %wide.load.1
  %i.hw = fmul <4 x float> %broadcast.splat, %wide.load258.1
  store <4 x float> %i.hv, ptr %i.ht, align 4, !tbaa !16
  store <4 x float> %i.hw, ptr %i.hu, align 4, !tbaa !16
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.load.2 = load <4 x float>, ptr %i.hx, align 4, !tbaa !16
  %wide.load258.2 = load <4 x float>, ptr %i.hy, align 4, !tbaa !16
  %i.hz = fmul <4 x float> %broadcast.splat, %wide.load.2
  %i.ia = fmul <4 x float> %broadcast.splat, %wide.load258.2
  store <4 x float> %i.hz, ptr %i.hx, align 4, !tbaa !16
  store <4 x float> %i.ia, ptr %i.hy, align 4, !tbaa !16
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %wide.load.3 = load <4 x float>, ptr %i.ib, align 4, !tbaa !16
  %wide.load258.3 = load <4 x float>, ptr %i.ic, align 4, !tbaa !16
  %i.id = fmul <4 x float> %broadcast.splat, %wide.load.3
  %i.ie = fmul <4 x float> %broadcast.splat, %wide.load258.3
  store <4 x float> %i.id, ptr %i.ib, align 4, !tbaa !16
  store <4 x float> %i.ie, ptr %i.ic, align 4, !tbaa !16
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %wide.load.4 = load <4 x float>, ptr %i.if, align 4, !tbaa !16
  %wide.load258.4 = load <4 x float>, ptr %i.ig, align 4, !tbaa !16
  %i.ih = fmul <4 x float> %broadcast.splat, %wide.load.4
  %i.ii = fmul <4 x float> %broadcast.splat, %wide.load258.4
  store <4 x float> %i.ih, ptr %i.if, align 4, !tbaa !16
  store <4 x float> %i.ii, ptr %i.ig, align 4, !tbaa !16
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %wide.load.5 = load <4 x float>, ptr %i.ij, align 4, !tbaa !16
  %wide.load258.5 = load <4 x float>, ptr %i.ik, align 4, !tbaa !16
  %i.il = fmul <4 x float> %broadcast.splat, %wide.load.5
  %i.im = fmul <4 x float> %broadcast.splat, %wide.load258.5
  store <4 x float> %i.il, ptr %i.ij, align 4, !tbaa !16
  store <4 x float> %i.im, ptr %i.ik, align 4, !tbaa !16
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %wide.load.6 = load <4 x float>, ptr %i.in, align 4, !tbaa !16
  %wide.load258.6 = load <4 x float>, ptr %i.io, align 4, !tbaa !16
  %i.ip = fmul <4 x float> %broadcast.splat, %wide.load.6
  %i.iq = fmul <4 x float> %broadcast.splat, %wide.load258.6
  store <4 x float> %i.ip, ptr %i.in, align 4, !tbaa !16
  store <4 x float> %i.iq, ptr %i.io, align 4, !tbaa !16
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %wide.load.7 = load <4 x float>, ptr %i.ir, align 4, !tbaa !16
  %wide.load258.7 = load <4 x float>, ptr %i.is, align 4, !tbaa !16
  %i.it = fmul <4 x float> %broadcast.splat, %wide.load.7
  %i.iu = fmul <4 x float> %broadcast.splat, %wide.load258.7
  store <4 x float> %i.it, ptr %i.ir, align 4, !tbaa !16
  store <4 x float> %i.iu, ptr %i.is, align 4, !tbaa !16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, %bb.l
  %.pn194.pn = phi { ptr, i32 } [ %.pn191, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217 ], [ %i.ep, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn194.pn.pn = phi { ptr, i32 } [ %.pn194.pn, %bb.v ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn194.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2cv11xfeatures2d27MSURF_Descriptor_64_Invoker23Get_MSURF_Descriptor_64ERKNS_8KeyPointEPfi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.31", align 1 ; 3 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.31", align 1 ; 3 uses
  %i.a = icmp eq i32 %3, 64
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv11xfeatures2d27MSURF_Descriptor_64_Invoker23Get_MSURF_Descriptor_64ERKNS_8KeyPointEPfi, ptr noundef nonnull @.str.1, i32 noundef 1623) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_0
begin_hunk_1_@_ZNK2cv11xfeatures2d27MSURF_Descriptor_64_Invoker23Get_MSURF_Descriptor_64ERKNS_8KeyPointEPfi:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.g = load i64, ptr %i.e, align 8, !tbaa !53
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.b, %bb.e ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.c, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.y

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !136  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !160
  %i.m = shl nuw i32 1, %i.l
  %i.n = sitofp i32 %i.m to float                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !161
  %i.q = fmul float %i.p, 5.000000e-01
  %i.r = fdiv float %i.q, %i.n
  %i.s = insertelement <4 x float> poison, float %i.r, i64 0
  %i.t = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.s) ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load float, ptr %i.u, align 4, !tbaa !162
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i32, ptr %i.w, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw [1080 x i8], ptr %i.z, i64 %i.y
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !76
  %i.ac = getelementptr inbounds nuw [1080 x i8], ptr %i.ab, i64 %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 208
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %i.ad)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ae = fmul float %i.v, f0x3C8EFA35            ; 2 uses
  %i.af = load <2 x float>, ptr %1, align 4, !tbaa !16
  %i.ag = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fdiv <2 x float> %i.af, %i.ah           ; 2 uses
  %i.aj = call noundef float @cosf(float noundef %i.ae) #23
  %i.ak = call noundef float @sinf(float noundef %i.ae) #23
  %i.al = sitofp i32 %i.t to float
  %i.am = fmul nnan float %i.al, 2.500000e+00     ; 2 uses
  %i.an = fmul nnan float %i.am, 2.000000e+00
  %i.ao = fmul float %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.au = load i32, ptr %i.at, align 4
  %i.av = icmp slt i32 %i.au, 2                   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = icmp slt i32 %i.bb, 2                   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.bi = insertelement <2 x float> %i.bh, float %i.ak, i64 1 ; 4 uses
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.q
  %indvars.iv263 = phi i32 [ -3, %bb.h ], [ %indvars.iv.next264, %bb.q ] ; 2 uses
  %.0184260 = phi float [ -5.000000e-01, %bb.h ], [ %i.bl, %bb.q ]
  %.0185259 = phi i64 [ 0, %bb.h ], [ %indvars.iv.next267, %bb.q ]
  %.0187258 = phi i32 [ -8, %bb.h ], [ %i.gi, %bb.q ] ; 4 uses
  %.0189257 = phi float [ 0.000000e+00, %bb.h ], [ %i.db, %bb.q ]
  %i.bk = add nsw i32 %.0187258, -4
  %i.bl = fadd float %.0184260, 1.000000e+00      ; 2 uses
  %i.bm = add nsw i32 %.0187258, 1
  %i.bn = mul nsw i32 %i.bm, %i.t
  %i.bo = sitofp i32 %i.bn to float
  %i.bp = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x float> %i.bi, %i.bq
  %i.bs = fadd float %i.bl, -2.000000e+00         ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.k
  %indvars.iv266 = phi i64 [ %.0185259, %bb.i ], [ %indvars.iv.next267, %bb.k ] ; 2 uses
  %indvars.iv = phi i32 [ -3, %bb.i ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.0183256 = phi float [ -5.000000e-01, %bb.i ], [ %i.cj, %bb.k ]
  %.0186254 = phi i32 [ -8, %bb.i ], [ %i.dc, %bb.k ] ; 5 uses
  %.1190253 = phi float [ %.0189257, %bb.i ], [ %i.db, %bb.k ]
  %i.bt = add nsw i32 %.0186254, -4
  %i.bu = add nsw i32 %.0186254, 1
  %i.bv = xor i32 %.0186254, -1
  %i.bw = mul nsw i32 %i.t, %i.bv
  %i.bx = mul nsw i32 %i.bu, %i.t
  %i.by = insertelement <2 x i32> poison, i32 %i.bw, i64 0
  %i.bz = insertelement <2 x i32> %i.by, i32 %i.bx, i64 1
  %i.ca = sitofp <2 x i32> %i.bz to <2 x float>
  %i.cb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.bj, <2 x float> %i.br)
  %i.cc = fadd <2 x float> %i.ai, %i.cb           ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.j, %bb.m
  %.0182252 = phi i32 [ %i.bk, %bb.j ], [ %i.df, %bb.m ] ; 2 uses
  %i.cd = phi <4 x float> [ zeroinitializer, %bb.j ], [ %i.gg, %bb.m ]
  %i.ce = mul nsw i32 %.0182252, %i.t
  %i.cf = sitofp i32 %i.ce to float
  %i.cg = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x float> %i.bi, %i.ch
  br label %bb.n

bb.k:                                             ; preds = %bb.m
  %i.cj = fadd float %.0183256, 1.000000e+00      ; 2 uses
  %i.ck = fadd float %i.cj, -2.000000e+00         ; 2 uses
  %i.cl = fmul float %i.ck, %i.ck
  %i.cm = call float @llvm.fmuladd.f32(float %i.bs, float %i.bs, float %i.cl)
  %i.cn = fdiv float %i.cm, -4.500000e+00
  %i.co = call noundef float @expf(float noundef %i.cn) #23 ; 3 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv266
  %indvars.iv.next267 = add nsw i64 %indvars.iv266, 4 ; 3 uses
  %i.cq = insertelement <4 x float> poison, float %i.co, i64 0
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cs = fmul <4 x float> %i.gg, %i.cr
  store <4 x float> %i.cs, ptr %i.cp, align 4, !tbaa !16
  %foldExtExtBinop = fmul <4 x float> %i.gg, %i.gg
  %i.ct = extractelement <4 x float> %foldExtExtBinop, i64 1
  %i.cu = extractelement <4 x float> %i.gg, i64 0 ; 2 uses
  %i.cv = call float @llvm.fmuladd.f32(float %i.cu, float %i.cu, float %i.ct)
  %i.cw = extractelement <4 x float> %i.gg, i64 2 ; 2 uses
  %i.cx = call float @llvm.fmuladd.f32(float %i.cw, float %i.cw, float %i.cv)
  %i.cy = extractelement <4 x float> %i.gg, i64 3 ; 2 uses
  %i.cz = call float @llvm.fmuladd.f32(float %i.cy, float %i.cy, float %i.cx)
  %i.da = fmul float %i.cz, %i.co
  %i.db = call float @llvm.fmuladd.f32(float %i.da, float %i.co, float %.1190253) ; 3 uses
  %i.dc = add nsw i32 %.0186254, 5
  %i.dd = icmp slt i32 %.0186254, 7
  %indvars.iv.next = add nsw i32 %indvars.iv, 5
  br i1 %i.dd, label %bb.j, label %bb.q, !llvm.loop !263

bb.l:                                             ; preds = %bb.g
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.m:                                             ; preds = %bb.p
  %i.df = add nsw i32 %.0182252, 1                ; 2 uses
  %exitcond265.not = icmp eq i32 %i.df, %indvars.iv263
  br i1 %exitcond265.not, label %bb.k, label %.preheader, !llvm.loop !264

bb.n:                                             ; preds = %.preheader, %bb.p
  %.0247 = phi i32 [ %i.bt, %.preheader ], [ %i.gh, %bb.p ] ; 2 uses
  %i.dg = phi <4 x float> [ %i.cd, %.preheader ], [ %i.gg, %bb.p ] ; 2 uses
  %i.dh = mul nsw i32 %.0247, %i.t                ; 2 uses
  %i.di = sub i32 0, %i.dh
  %i.dj = insertelement <2 x i32> poison, i32 %i.di, i64 0
  %i.dk = insertelement <2 x i32> %i.dj, i32 %i.dh, i64 1
  %i.dl = sitofp <2 x i32> %i.dk to <2 x float>
  %i.dm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.bj, <2 x float> %i.ci)
  %i.dn = fadd <2 x float> %i.ai, %i.dm           ; 5 uses
  %i.do = extractelement <2 x float> %i.dn, i64 0
  %foldExtExtBinop282 = fsub <2 x float> %i.cc, %i.dn
  %i.dp = extractelement <2 x float> %foldExtExtBinop282, i64 0 ; 2 uses
  %i.dq = extractelement <2 x float> %i.dn, i64 1
  %foldExtExtBinop284 = fsub <2 x float> %i.cc, %i.dn ; 2 uses
  %foldExtExtBinop286 = fmul <2 x float> %foldExtExtBinop284, %foldExtExtBinop284
  %i.dr = extractelement <2 x float> %foldExtExtBinop286, i64 1
  %i.ds = call float @llvm.fmuladd.f32(float %i.dp, float %i.dp, float %i.dr)
  %i.dt = fneg float %i.ds
  %i.du = fdiv float %i.dt, %i.ao
  %i.dv = call noundef float @expf(float noundef %i.du) #23
  %i.dw = call float @llvm.floor.f32(float %i.dq)
  %i.dx = call float @llvm.floor.f32(float %i.do)
  %i.dy = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %i.dw, i64 1
  %i.ea = fptosi <2 x float> %i.dz to <2 x i32>   ; 3 uses
  %i.eb = extractelement <2 x i32> %i.ea, i64 1   ; 3 uses
  %i.ec = add nsw i32 %i.eb, 1                    ; 2 uses
  %i.ed = extractelement <2 x i32> %i.ea, i64 0   ; 3 uses
  %i.ee = add nsw i32 %i.ed, 1                    ; 2 uses
  %i.ef = or i32 %i.ed, %i.eb
  %or.cond.not = icmp sgt i32 %i.ef, -1
  %.not = icmp slt i32 %i.ee, %i.aq
  %or.cond = select i1 %or.cond.not, i1 %.not, i1 false
  %.not218 = icmp slt i32 %i.ec, %i.as
  %or.cond225 = select i1 %or.cond, i1 %.not218, i1 false
  br i1 %or.cond225, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eg = uitofp <2 x i32> %i.ea to <2 x float>
  %i.eh = fsub <2 x float> %i.dn, %i.eg           ; 3 uses
  %10 = sext i32 %i.eb to i64                     ; 2 uses
  %i.ei = mul i64 %i.az, %10
  %.sink.idx.i = select i1 %i.av, i64 0, i64 %i.ei
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sink.idx.i ; 2 uses
  %11 = sext i32 %i.ed to i64                     ; 4 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %.sink.i, i64 %11
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !16
  %12 = sext i32 %i.ee to i64                     ; 4 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %.sink.i, i64 %12
  %i.em = load float, ptr %i.el, align 4, !tbaa !16
  %13 = sext i32 %i.ec to i64                     ; 2 uses
  %i.en = mul i64 %i.az, %13
  %.sink.idx.i228 = select i1 %i.av, i64 0, i64 %i.en
  %.sink.i229 = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sink.idx.i228 ; 2 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %.sink.i229, i64 %11
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !16
  %i.eq = getelementptr inbounds [4 x i8], ptr %.sink.i229, i64 %12
  %i.er = load float, ptr %i.eq, align 4, !tbaa !16
  %i.es = extractelement <2 x float> %i.eh, i64 0 ; 2 uses
  %i.et = extractelement <2 x float> %i.eh, i64 1 ; 2 uses
  %i.eu = fsub <2 x float> splat (float 1.000000e+00), %i.eh ; 2 uses
  %i.ev = extractelement <2 x float> %i.eu, i64 0 ; 2 uses
  %i.ew = extractelement <2 x float> %i.eu, i64 1 ; 2 uses
  %i.ex = fmul float %i.ev, %i.ew                 ; 2 uses
  %i.ey = fmul float %i.es, %i.ew                 ; 2 uses
  %i.ez = fmul float %i.ey, %i.em
  %i.fa = call float @llvm.fmuladd.f32(float %i.ex, float %i.ek, float %i.ez)
  %i.fb = fmul float %i.et, %i.ev                 ; 2 uses
  %i.fc = call float @llvm.fmuladd.f32(float %i.fb, float %i.ep, float %i.fa)
  %i.fd = fmul float %i.es, %i.et                 ; 2 uses
  %i.fe = call float @llvm.fmuladd.f32(float %i.fd, float %i.er, float %i.fc) ; 2 uses
  %i.ff = mul i64 %i.bg, %10
  %.sink.idx.i232 = select i1 %i.bc, i64 0, i64 %i.ff
  %.sink.i233 = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sink.idx.i232 ; 2 uses
  %i.fg = getelementptr inbounds [4 x i8], ptr %.sink.i233, i64 %11
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !16
  %i.fi = getelementptr inbounds [4 x i8], ptr %.sink.i233, i64 %12
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !16
  %i.fk = mul i64 %i.bg, %13
  %.sink.idx.i236 = select i1 %i.bc, i64 0, i64 %i.fk
  %.sink.i237 = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sink.idx.i236 ; 2 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %.sink.i237, i64 %11
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !16
  %i.fn = getelementptr inbounds [4 x i8], ptr %.sink.i237, i64 %12
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !16
  %i.fp = fmul float %i.ey, %i.fj
  %i.fq = call float @llvm.fmuladd.f32(float %i.ex, float %i.fh, float %i.fp)
  %i.fr = call float @llvm.fmuladd.f32(float %i.fb, float %i.fm, float %i.fq)
  %i.fs = call float @llvm.fmuladd.f32(float %i.fd, float %i.fo, float %i.fr)
  %i.ft = fneg float %i.fe
  %i.fu = insertelement <2 x float> poison, float %i.fs, i64 0
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = fmul <2 x float> %i.bi, %i.fv
  %i.fx = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fy = insertelement <2 x float> %i.fx, float %i.fe, i64 1
  %i.fz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.bj, <2 x float> %i.fw)
  %i.ga = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = fmul <2 x float> %i.gb, %i.fz           ; 2 uses
  %i.gd = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gc)
  %i.ge = shufflevector <2 x float> %i.gc, <2 x float> %i.gd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gf = fadd <4 x float> %i.dg, %i.ge
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.gg = phi <4 x float> [ %i.dg, %bb.n ], [ %i.gf, %bb.o ] ; 8 uses
  %i.gh = add nsw i32 %.0247, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.gh, %indvars.iv
  br i1 %exitcond.not, label %bb.m, label %bb.n, !llvm.loop !265

bb.q:                                             ; preds = %bb.k
  %i.gi = add nsw i32 %.0187258, 5
  %i.gj = icmp slt i32 %.0187258, 7
  %indvars.iv.next264 = add nsw i32 %indvars.iv263, 5
  br i1 %i.gj, label %bb.i, label %bb.r, !llvm.loop !266

bb.r:                                             ; preds = %bb.q
  %i.gk = icmp eq i64 %indvars.iv.next267, 64
  br i1 %i.gk, label %vector.ph, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv11xfeatures2d27MSURF_Descriptor_64_Invoker23Get_MSURF_Descriptor_64ERKNS_8KeyPointEPfi, ptr noundef nonnull @.str.1, i32 noundef 1736) #25
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

bb.w:                                             ; preds = %bb.t
  %i.gm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gn = load ptr, ptr %8, align 8, !tbaa !52    ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %bb.w
  %i.gq = load i64, ptr %i.go, align 8, !tbaa !53
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240, %bb.v
  %.pn216 = phi { ptr, i32 } [ %i.gl, %bb.v ], [ %i.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240 ], [ %i.gm, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #23
  br label %bb.x

vector.ph:                                        ; preds = %bb.r
  %i.gs = call noundef float @sqrtf(float noundef %i.db) #23
  %i.gt = fdiv float 1.000000e+00, %i.gs
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gt, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 16 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %2, align 4, !tbaa !16
  %wide.load280 = load <4 x float>, ptr %i.gu, align 4, !tbaa !16
  %i.gv = fmul <4 x float> %broadcast.splat, %wide.load
  %i.gw = fmul <4 x float> %broadcast.splat, %wide.load280
  store <4 x float> %i.gv, ptr %2, align 4, !tbaa !16
  store <4 x float> %i.gw, ptr %i.gu, align 4, !tbaa !16
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.gx, align 4, !tbaa !16
  %wide.load280.1 = load <4 x float>, ptr %i.gy, align 4, !tbaa !16
  %i.gz = fmul <4 x float> %broadcast.splat, %wide.load.1
  %i.ha = fmul <4 x float> %broadcast.splat, %wide.load280.1
  store <4 x float> %i.gz, ptr %i.gx, align 4, !tbaa !16
  store <4 x float> %i.ha, ptr %i.gy, align 4, !tbaa !16
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.load.2 = load <4 x float>, ptr %i.hb, align 4, !tbaa !16
  %wide.load280.2 = load <4 x float>, ptr %i.hc, align 4, !tbaa !16
  %i.hd = fmul <4 x float> %broadcast.splat, %wide.load.2
  %i.he = fmul <4 x float> %broadcast.splat, %wide.load280.2
  store <4 x float> %i.hd, ptr %i.hb, align 4, !tbaa !16
  store <4 x float> %i.he, ptr %i.hc, align 4, !tbaa !16
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %wide.load.3 = load <4 x float>, ptr %i.hf, align 4, !tbaa !16
  %wide.load280.3 = load <4 x float>, ptr %i.hg, align 4, !tbaa !16
  %i.hh = fmul <4 x float> %broadcast.splat, %wide.load.3
  %i.hi = fmul <4 x float> %broadcast.splat, %wide.load280.3
  store <4 x float> %i.hh, ptr %i.hf, align 4, !tbaa !16
  store <4 x float> %i.hi, ptr %i.hg, align 4, !tbaa !16
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %wide.load.4 = load <4 x float>, ptr %i.hj, align 4, !tbaa !16
  %wide.load280.4 = load <4 x float>, ptr %i.hk, align 4, !tbaa !16
  %i.hl = fmul <4 x float> %broadcast.splat, %wide.load.4
  %i.hm = fmul <4 x float> %broadcast.splat, %wide.load280.4
  store <4 x float> %i.hl, ptr %i.hj, align 4, !tbaa !16
  store <4 x float> %i.hm, ptr %i.hk, align 4, !tbaa !16
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %wide.load.5 = load <4 x float>, ptr %i.hn, align 4, !tbaa !16
  %wide.load280.5 = load <4 x float>, ptr %i.ho, align 4, !tbaa !16
  %i.hp = fmul <4 x float> %broadcast.splat, %wide.load.5
  %i.hq = fmul <4 x float> %broadcast.splat, %wide.load280.5
  store <4 x float> %i.hp, ptr %i.hn, align 4, !tbaa !16
  store <4 x float> %i.hq, ptr %i.ho, align 4, !tbaa !16
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %wide.load.6 = load <4 x float>, ptr %i.hr, align 4, !tbaa !16
  %wide.load280.6 = load <4 x float>, ptr %i.hs, align 4, !tbaa !16
  %i.ht = fmul <4 x float> %broadcast.splat, %wide.load.6
  %i.hu = fmul <4 x float> %broadcast.splat, %wide.load280.6
  store <4 x float> %i.ht, ptr %i.hr, align 4, !tbaa !16
  store <4 x float> %i.hu, ptr %i.hs, align 4, !tbaa !16
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %wide.load.7 = load <4 x float>, ptr %i.hv, align 4, !tbaa !16
  %wide.load280.7 = load <4 x float>, ptr %i.hw, align 4, !tbaa !16
  %i.hx = fmul <4 x float> %broadcast.splat, %wide.load.7
  %i.hy = fmul <4 x float> %broadcast.splat, %wide.load280.7
  store <4 x float> %i.hx, ptr %i.hv, align 4, !tbaa !16
  store <4 x float> %i.hy, ptr %i.hw, align 4, !tbaa !16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, %bb.l
  %.pn219.pn = phi { ptr, i32 } [ %.pn216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ], [ %i.de, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn219.pn.pn = phi { ptr, i32 } [ %.pn219.pn, %bb.x ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn219.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2cv11xfeatures2d36Upright_MLDB_Full_Descriptor_Invoker32Get_Upright_MLDB_Full_DescriptorERKNS_8KeyPointEPhi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.31", align 1 ; 3 uses
  %i.a = alloca [48 x float], align 16            ; 35 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.31", align 1 ; 3 uses
  %i.b = alloca [3 x i32], align 4                ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.31", align 1 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.31", align 1 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !142
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.h = load i32, ptr %i.g, align 4, !tbaa !163
  %i.i = icmp slt i32 %i.h, 4
  br i1 %i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv11xfeatures2d36Upright_MLDB_Full_Descriptor_Invoker32Get_Upright_MLDB_Full_DescriptorERKNS_8KeyPointEPhi, ptr noundef nonnull @.str.1, i32 noundef 1761) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_ZNK2cv11xfeatures2d30MLDB_Descriptor_Subset_Invoker26Get_MLDB_Descriptor_SubsetERKNS_8KeyPointEPhi:bb.a
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %7, align 8, !tbaa !52    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.au = load i64, ptr %i.as, align 8, !tbaa !53
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.i ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aq, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.av

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(348) %i.a, i8 0, i64 348, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !164 ; 4 uses
  %i.ay = and i32 %i.ax, 1
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv11xfeatures2d30MLDB_Descriptor_Subset_Invoker26Get_MLDB_Descriptor_SubsetERKNS_8KeyPointEPhi, ptr noundef nonnull @.str.1, i32 noundef 2030) #25
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

bb.p:                                             ; preds = %bb.m
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %9, align 8, !tbaa !52    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.p
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !53
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164, %bb.o
  %.pn145 = phi { ptr, i32 } [ %i.ba, %bb.o ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ], [ %i.bb, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.au

bb.q:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 %i.ax, ptr %i.b, align 4, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bi = shl nsw i32 %i.ax, 1
  %i.bj = or disjoint i32 %i.bi, 2
  %i.bk = udiv i32 %i.bj, 3
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bm = lshr exact i32 %i.ax, 1
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !14
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !293 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !62 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !100 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.bv = load i32, ptr %i.bu, align 4            ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bx = load i32, ptr %i.bw, align 8            ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bz = load i32, ptr %i.by, align 4
  %.fr = freeze i32 %i.bz
  %i.ca = icmp slt i32 %.fr, 2                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8            ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.ce = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cf = icmp sgt i32 %.fr234, 1
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = icmp slt i32 %i.ch, 2
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = icmp slt i32 %i.co, 2
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.ct = load i64, ptr %i.cs, align 8
  %wide.trip.count250 = zext nneg i32 %i.bo to i64 ; 3 uses
  br i1 %i.cf, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.cu = zext nneg i32 %.fr234 to i64
  %i.cv = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.cw = insertelement <2 x float> %i.cv, float %i.aj, i64 1 ; 3 uses
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cy = icmp eq i32 %.fr234, 2
  %i.cz = icmp eq i32 %.fr234, 2
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.y
  %indvars.iv247 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next248, %bb.y ] ; 3 uses
  %i.da = mul i64 %i.bt, %indvars.iv247
  %i.db = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.da ; 3 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !14 ; 2 uses
  %or.cond.us = icmp ult i32 %i.dc, 3
  br i1 %or.cond.us, label %bb.r, label %.split.us

bb.r:                                             ; preds = %.lr.ph.split.us
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !14 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 4 ; 2 uses
  %i.dh = icmp sgt i32 %i.df, 0
  br i1 %i.dh, label %.lr.ph190.us, label %._crit_edge191.split.us.us

.lr.ph190.us:                                     ; preds = %bb.r
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !14
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph190.us, %._crit_edge.split.us.us.us
  %.0113188.us.us = phi i32 [ %i.di, %.lr.ph190.us ], [ %i.fk, %._crit_edge.split.us.us.us ] ; 2 uses
  %.0114187.us.us = phi float [ 0.000000e+00, %.lr.ph190.us ], [ %.3.us.us.us, %._crit_edge.split.us.us.us ] ; 2 uses
  %.0115186.us.us = phi float [ 0.000000e+00, %.lr.ph190.us ], [ %.3118.us.us.us, %._crit_edge.split.us.us.us ] ; 2 uses
  %.0119185.us.us = phi float [ 0.000000e+00, %.lr.ph190.us ], [ %.2121.us.us.us, %._crit_edge.split.us.us.us ]
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !14 ; 2 uses
  %i.dl = mul nsw i32 %.0113188.us.us, %i.p
  %i.dm = sitofp i32 %i.dl to float
  %i.dn = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = fmul <2 x float> %i.cw, %i.do
  %i.dq = insertelement <2 x float> poison, float %.0114187.us.us, i64 0
  %i.dr = insertelement <2 x float> %i.dq, float %.0115186.us.us, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.w, %.lr.ph.us.us
  %i.ds = phi i32 [ %i.dk, %.lr.ph.us.us ], [ %i.fe, %bb.w ] ; 2 uses
  %.0112180.us.us.us = phi i32 [ %i.dk, %.lr.ph.us.us ], [ %i.ff, %bb.w ] ; 2 uses
  %.1179.us.us.us = phi float [ %.0114187.us.us, %.lr.ph.us.us ], [ %.3.us.us.us, %bb.w ] ; 2 uses
  %.1116178.us.us.us = phi float [ %.0115186.us.us, %.lr.ph.us.us ], [ %.3118.us.us.us, %bb.w ] ; 2 uses
  %.1120177.us.us.us = phi float [ %.0119185.us.us, %.lr.ph.us.us ], [ %.2121.us.us.us, %bb.w ] ; 2 uses
  %i.dt = phi <2 x float> [ %i.dr, %.lr.ph.us.us ], [ %i.fj, %bb.w ]
  %i.du = mul i32 %.0112180.us.us.us, %i.p        ; 2 uses
  %i.dv = sub i32 0, %i.du
  %i.dw = insertelement <2 x i32> poison, i32 %i.dv, i64 0
  %i.dx = insertelement <2 x i32> %i.dw, i32 %i.du, i64 1
  %i.dy = sitofp <2 x i32> %i.dx to <2 x float>
  %i.dz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %i.cx, <2 x float> %i.dp)
  %i.ea = fadd <2 x float> %i.ah, %i.dz           ; 2 uses
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ec = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.eb) ; 3 uses
  %i.ed = shufflevector <2 x float> %i.ea, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ee = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ed) ; 3 uses
  %i.ef = or i32 %i.ee, %i.ec
  %or.cond.not.us.us.us = icmp sgt i32 %i.ef, -1
  %.not.us.us.us = icmp slt i32 %i.ee, %i.bv
  %or.cond161.us.us.us = select i1 %or.cond.not.us.us.us, i1 %.not.us.us.us, i1 false
  %.not151.us.us.us = icmp slt i32 %i.ec, %i.bx
  %or.cond163.us.us.us = select i1 %or.cond161.us.us.us, i1 %.not151.us.us.us, i1 false
  br i1 %or.cond163.us.us.us, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %15 = sext i32 %i.ec to i64                     ; 3 uses
  %i.eg = mul i64 %i.ce, %15
  %.sink.idx.i.us.us.us = select i1 %i.ca, i64 0, i64 %i.eg
  %.sink.i.us.us.us = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sink.idx.i.us.us.us
  %16 = sext i32 %i.ee to i64                     ; 3 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %.sink.i.us.us.us, i64 %16
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !16
  %i.ej = fadd float %.1120177.us.us.us, %i.ei    ; 2 uses
  %i.ek = mul i64 %i.cm, %15
  %.sink.idx.i170.us.us.us = select i1 %i.ci, i64 0, i64 %i.ek
  %.sink.i171.us.us.us = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sink.idx.i170.us.us.us
  %i.el = getelementptr inbounds [4 x i8], ptr %.sink.i171.us.us.us, i64 %16
  %i.em = load float, ptr %i.el, align 4, !tbaa !16 ; 4 uses
  %i.en = mul i64 %i.ct, %15
  %.sink.idx.i172.us.us.us = select i1 %i.cp, i64 0, i64 %i.en
  %.sink.i173.us.us.us = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sink.idx.i172.us.us.us
  %i.eo = getelementptr inbounds [4 x i8], ptr %.sink.i173.us.us.us, i64 %16
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !16 ; 3 uses
  br i1 %i.cy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eq = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = fmul <2 x float> %i.cw, %i.er
  %i.et = fneg float %i.em
  %i.eu = insertelement <2 x float> poison, float %i.et, i64 0
  %i.ev = insertelement <2 x float> %i.eu, float %i.em, i64 1
  %i.ew = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ev, <2 x float> %i.cx, <2 x float> %i.es)
  %i.ex = fadd <2 x float> %i.dt, %i.ew           ; 2 uses
  %i.ey = extractelement <2 x float> %i.ex, i64 0
  %i.ez = extractelement <2 x float> %i.ex, i64 1
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.fa = fmul float %i.ep, %i.ep
  %i.fb = call float @llvm.fmuladd.f32(float %i.em, float %i.em, float %i.fa)
  %i.fc = call float @sqrtf(float noundef %i.fb) #23
  %i.fd = fadd float %.1116178.us.us.us, %i.fc
  %.pre = load i32, ptr %i.dj, align 4, !tbaa !14
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s
  %i.fe = phi i32 [ %i.ds, %bb.s ], [ %i.ds, %bb.u ], [ %.pre, %bb.v ] ; 2 uses
  %.2121.us.us.us = phi float [ %.1120177.us.us.us, %bb.s ], [ %i.ej, %bb.u ], [ %i.ej, %bb.v ] ; 3 uses
  %.3118.us.us.us = phi float [ %.1116178.us.us.us, %bb.s ], [ %i.ez, %bb.u ], [ %i.fd, %bb.v ] ; 4 uses
  %.3.us.us.us = phi float [ %.1179.us.us.us, %bb.s ], [ %i.ey, %bb.u ], [ %.1179.us.us.us, %bb.v ] ; 4 uses
  %i.ff = add nsw i32 %.0112180.us.us.us, 1       ; 2 uses
  %i.fg = add nsw i32 %i.fe, %i.df
  %i.fh = icmp slt i32 %i.ff, %i.fg
  %i.fi = insertelement <2 x float> poison, float %.3.us.us.us, i64 0
  %i.fj = insertelement <2 x float> %i.fi, float %.3118.us.us.us, i64 1
  br i1 %i.fh, label %bb.s, label %._crit_edge.split.us.us.us, !llvm.loop !289

._crit_edge.split.us.us.us:                       ; preds = %bb.w
  %.pre255 = load i32, ptr %i.dg, align 4, !tbaa !14
  %i.fk = add nsw i32 %.0113188.us.us, 1          ; 2 uses
  %i.fl = add nsw i32 %.pre255, %i.df
  %i.fm = icmp slt i32 %i.fk, %i.fl
  br i1 %i.fm, label %.lr.ph.us.us, label %._crit_edge191.split.us.us, !llvm.loop !290

._crit_edge191.split.us.us:                       ; preds = %._crit_edge.split.us.us.us, %bb.r
  %.0119.lcssa.us = phi float [ 0.000000e+00, %bb.r ], [ %.2121.us.us.us, %._crit_edge.split.us.us.us ]
  %.0115.lcssa.us = phi float [ 0.000000e+00, %bb.r ], [ %.3118.us.us.us, %._crit_edge.split.us.us.us ]
  %.0114.lcssa.us = phi float [ 0.000000e+00, %bb.r ], [ %.3.us.us.us, %._crit_edge.split.us.us.us ]
  %i.fn = mul nuw nsw i64 %indvars.iv247, %i.cu
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fn ; 3 uses
  store float %.0119.lcssa.us, ptr %i.fo, align 4, !tbaa !16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  store float %.0115.lcssa.us, ptr %i.fp, align 4, !tbaa !16
  br i1 %i.cz, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge191.split.us.us
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store float %.0114.lcssa.us, ptr %i.fq, align 4, !tbaa !16
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge191.split.us.us, %bb.x
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %exitcond251.not = icmp eq i64 %indvars.iv.next248, %wide.trip.count250
  br i1 %exitcond251.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !291

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.fr = sext i32 %.fr234 to i64                 ; 2 uses
  br i1 %i.ca, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %i.fs = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ft = insertelement <2 x float> %i.fs, float %i.aj, i64 1 ; 2 uses
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.fv = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.fw = insertelement <2 x float> %i.fv, float %i.aj, i64 1 ; 2 uses
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %.loopexit
  %indvars.iv242 = phi i64 [ %indvars.iv.next243, %.loopexit ], [ 0, %.lr.ph.split.split.us.preheader ] ; 3 uses
  %i.fy = mul i64 %i.bt, %indvars.iv242
  %i.fz = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.fy ; 3 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !14 ; 2 uses
  %or.cond.us225 = icmp ult i32 %i.ga, 3
  br i1 %or.cond.us225, label %bb.z, label %.split.us

bb.z:                                             ; preds = %.lr.ph.split.split.us
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !14 ; 3 uses
  %i.ge = icmp sgt i32 %i.gd, 0
  br i1 %i.ge, label %.lr.ph190.split.split.us.us, label %.loopexit

.lr.ph190.split.split.us.us:                      ; preds = %bb.z
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !14 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !14 ; 2 uses
  %i.gj = add nsw i32 %i.gg, %i.gd
  %i.gk = add nsw i32 %i.gi, %i.gd
  br label %.lr.ph.us200.us.us

.lr.ph.us200.us.us:                               ; preds = %._crit_edge.split.us.split.us.us.us, %.lr.ph190.split.split.us.us
  %.0113188.us198.us.us = phi i32 [ %i.gg, %.lr.ph190.split.split.us.us ], [ %i.hh, %._crit_edge.split.us.split.us.us.us ] ; 2 uses
  %.0119185.us199.us.us = phi float [ 0.000000e+00, %.lr.ph190.split.split.us.us ], [ %.2121.us.us214.us.us, %._crit_edge.split.us.split.us.us.us ]
  %i.gl = mul nsw i32 %.0113188.us198.us.us, %i.p
  %i.gm = sitofp i32 %i.gl to float
  %i.gn = insertelement <2 x float> poison, float %i.gm, i64 0
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = fmul <2 x float> %i.fw, %i.go
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %.lr.ph.us200.us.us
  %.0112180.us.us207.us.us = phi i32 [ %i.gi, %.lr.ph.us200.us.us ], [ %i.hf, %bb.ac ] ; 2 uses
  %.1120177.us.us208.us.us = phi float [ %.0119185.us199.us.us, %.lr.ph.us200.us.us ], [ %.2121.us.us214.us.us, %bb.ac ] ; 2 uses
  %i.gq = mul i32 %.0112180.us.us207.us.us, %i.p  ; 2 uses
  %i.gr = sub i32 0, %i.gq
  %i.gs = insertelement <2 x i32> poison, i32 %i.gr, i64 0
  %i.gt = insertelement <2 x i32> %i.gs, i32 %i.gq, i64 1
  %i.gu = sitofp <2 x i32> %i.gt to <2 x float>
  %i.gv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gu, <2 x float> %i.fx, <2 x float> %i.gp)
  %i.gw = fadd <2 x float> %i.ah, %i.gv           ; 2 uses
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.gy = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.gx) ; 2 uses
  %i.gz = shufflevector <2 x float> %i.gw, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ha = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.gz) ; 3 uses
  %i.hb = or i32 %i.ha, %i.gy
  %or.cond.not.us.us209.us.us = icmp sgt i32 %i.hb, -1
  %.not.us.us210.us.us = icmp slt i32 %i.ha, %i.bv
  %or.cond161.us.us211.us.us = select i1 %or.cond.not.us.us209.us.us, i1 %.not.us.us210.us.us, i1 false
  %.not151.us.us212.us.us = icmp slt i32 %i.gy, %i.bx
  %or.cond163.us.us213.us.us = select i1 %or.cond161.us.us211.us.us, i1 %.not151.us.us212.us.us, i1 false
  br i1 %or.cond163.us.us213.us.us, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %17 = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %17
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !16
  %i.he = fadd float %.1120177.us.us208.us.us, %i.hd
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.2121.us.us214.us.us = phi float [ %.1120177.us.us208.us.us, %bb.aa ], [ %i.he, %bb.ab ] ; 3 uses
  %i.hf = add nsw i32 %.0112180.us.us207.us.us, 1 ; 2 uses
  %i.hg = icmp slt i32 %i.hf, %i.gk
  br i1 %i.hg, label %bb.aa, label %._crit_edge.split.us.split.us.us.us, !llvm.loop !289

._crit_edge.split.us.split.us.us.us:              ; preds = %bb.ac
  %i.hh = add nsw i32 %.0113188.us198.us.us, 1    ; 2 uses
  %i.hi = icmp slt i32 %i.hh, %i.gj
  br i1 %i.hi, label %.lr.ph.us200.us.us, label %.loopexit, !llvm.loop !290

.loopexit:                                        ; preds = %._crit_edge.split.us.split.us.us.us, %bb.z
  %.0119.lcssa.us229 = phi float [ 0.000000e+00, %bb.z ], [ %.2121.us.us214.us.us, %._crit_edge.split.us.split.us.us.us ]
  %i.hj = mul nsw i64 %indvars.iv242, %i.fr
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.hj
  store float %.0119.lcssa.us229, ptr %i.hk, align 4, !tbaa !16
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 1 ; 2 uses
  %exitcond246.not = icmp eq i64 %indvars.iv.next243, %wide.trip.count250
  br i1 %exitcond246.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !291

._crit_edge:                                      ; preds = %.loopexit287, %.loopexit, %bb.y, %bb.q
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !62
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !294
  %i.hp = add i32 %i.ho, 7
  %i.hq = lshr i32 %i.hp, 3
  %i.hr = icmp eq i32 %i.hq, %3
  br i1 %i.hr, label %bb.aq, label %bb.al

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %.loopexit287
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit287 ], [ 0, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.hs = mul i64 %i.bt, %indvars.iv
  %i.ht = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.hs ; 3 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !14 ; 2 uses
  %or.cond = icmp ult i32 %i.hu, 3
  br i1 %or.cond, label %bb.ah, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split.split, %.lr.ph.split.split.us, %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %.split.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZNK2cv11xfeatures2d30MLDB_Descriptor_Subset_Invoker26Get_MLDB_Descriptor_SubsetERKNS_8KeyPointEPhi, ptr noundef nonnull @.str.1, i32 noundef 2039) #25
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %.split.us
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

bb.ag:                                            ; preds = %bb.ad
  %i.hw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hx = load ptr, ptr %11, align 8, !tbaa !52   ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %bb.ag
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !53
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ib) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167, %bb.af
  %.pn149 = phi { ptr, i32 } [ %i.hv, %bb.af ], [ %i.hw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ], [ %i.hw, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.at

bb.ah:                                            ; preds = %.lr.ph.split.split
  %i.ic = zext nneg i32 %i.hu to i64
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !14 ; 3 uses
  %i.if = icmp sgt i32 %i.ie, 0
  br i1 %i.if, label %.lr.ph190.split.split.us, label %.loopexit287

.lr.ph190.split.split.us:                         ; preds = %bb.ah
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !14 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !14 ; 2 uses
  %i.ik = add nsw i32 %i.ih, %i.ie
  %i.il = add nsw i32 %i.ij, %i.ie
  br label %.lr.ph.us200

.lr.ph.us200:                                     ; preds = %._crit_edge.split.us.split, %.lr.ph190.split.split.us
  %.0113188.us198 = phi i32 [ %i.ih, %.lr.ph190.split.split.us ], [ %i.jj, %._crit_edge.split.us.split ] ; 2 uses
  %.0119185.us199 = phi float [ 0.000000e+00, %.lr.ph190.split.split.us ], [ %.2121.us, %._crit_edge.split.us.split ]
  %i.im = mul nsw i32 %.0113188.us198, %i.p
  %i.in = sitofp i32 %i.im to float
  %i.io = insertelement <2 x float> poison, float %i.in, i64 0
  %i.ip = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iq = fmul <2 x float> %i.ft, %i.ip
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph.us200
  %.0112180.us = phi i32 [ %i.ij, %.lr.ph.us200 ], [ %i.jh, %bb.ak ] ; 2 uses
  %.1120177.us = phi float [ %.0119185.us199, %.lr.ph.us200 ], [ %.2121.us, %bb.ak ] ; 2 uses
  %i.ir = mul i32 %.0112180.us, %i.p              ; 2 uses
  %i.is = sub i32 0, %i.ir
  %i.it = insertelement <2 x i32> poison, i32 %i.is, i64 0
  %i.iu = insertelement <2 x i32> %i.it, i32 %i.ir, i64 1
  %i.iv = sitofp <2 x i32> %i.iu to <2 x float>
  %i.iw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iv, <2 x float> %i.fu, <2 x float> %i.iq)
  %i.ix = fadd <2 x float> %i.ah, %i.iw           ; 2 uses
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.iz = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.iy) ; 3 uses
  %i.ja = shufflevector <2 x float> %i.ix, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.jb = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ja) ; 3 uses
  %i.jc = or i32 %i.jb, %i.iz
  %or.cond.not.us = icmp sgt i32 %i.jc, -1
  %.not.us = icmp slt i32 %i.jb, %i.bv
  %or.cond161.us = select i1 %or.cond.not.us, i1 %.not.us, i1 false
  %.not151.us = icmp slt i32 %i.iz, %i.bx
  %or.cond163.us = select i1 %or.cond161.us, i1 %.not151.us, i1 false
  br i1 %or.cond163.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %18 = sext i32 %i.iz to i64
  %i.jd = mul i64 %i.ce, %18
  %.sink.i.us = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.jd
  %19 = sext i32 %i.jb to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %.sink.i.us, i64 %19
  %i.jf = load float, ptr %i.je, align 4, !tbaa !16
  %i.jg = fadd float %.1120177.us, %i.jf
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2121.us = phi float [ %.1120177.us, %bb.ai ], [ %i.jg, %bb.aj ] ; 3 uses
  %i.jh = add nsw i32 %.0112180.us, 1             ; 2 uses
  %i.ji = icmp slt i32 %i.jh, %i.il
  br i1 %i.ji, label %bb.ai, label %._crit_edge.split.us.split, !llvm.loop !289

._crit_edge.split.us.split:                       ; preds = %bb.ak
  %i.jj = add nsw i32 %.0113188.us198, 1          ; 2 uses
  %i.jk = icmp slt i32 %i.jj, %i.ik
  br i1 %i.jk, label %.lr.ph.us200, label %.loopexit287, !llvm.loop !290

.loopexit287:                                     ; preds = %._crit_edge.split.us.split, %bb.ah
  %.0119.lcssa = phi float [ 0.000000e+00, %bb.ah ], [ %.2121.us, %._crit_edge.split.us.split ]
  %i.jl = mul nsw i64 %indvars.iv, %i.fr
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.jl
  store float %.0119.lcssa, ptr %i.jm, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count250
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !291

bb.al:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZNK2cv11xfeatures2d30MLDB_Descriptor_Subset_Invoker26Get_MLDB_Descriptor_SubsetERKNS_8KeyPointEPhi, ptr noundef nonnull @.str.1, i32 noundef 2089) #25
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %bb.al
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

bb.ap:                                            ; preds = %bb.am
  %i.jo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jp = load ptr, ptr %13, align 8, !tbaa !52   ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.jr = icmp eq ptr %i.jp, %i.jq
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %bb.ap
  %i.js = load i64, ptr %i.jq, align 8, !tbaa !53
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.jt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174, %bb.ao
  %.pn147 = phi { ptr, i32 } [ %i.jn, %bb.ao ], [ %i.jo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174 ], [ %i.jo, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.at

bb.aq:                                            ; preds = %._crit_edge
  %i.ju = zext nneg i32 %3 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %i.ju, i1 false)
  %i.jv = load i32, ptr %i.hn, align 8, !tbaa !294 ; 2 uses
  %i.jw = icmp sgt i32 %i.jv, 0
  br i1 %i.jw, label %.lr.ph232, label %._crit_edge233

._crit_edge233:                                   ; preds = %bb.as, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

.lr.ph232:                                        ; preds = %bb.aq, %bb.as
  %i.jx = phi i32 [ %i.kr, %bb.as ], [ %i.jv, %bb.aq ]
  %indvars.iv252 = phi i64 [ %indvars.iv.next253, %bb.as ], [ 0, %bb.aq ] ; 4 uses
  %.idx = shl nuw nsw i64 %indvars.iv252, 3
  %i.jy = getelementptr inbounds nuw i8, ptr %i.hm, i64 %.idx ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !14
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ka
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !16
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !14
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.kf
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !16
  %i.ki = fcmp ogt float %i.kc, %i.kh
  br i1 %i.ki, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph232
  %i.kj = trunc i64 %indvars.iv252 to i8
  %i.kk = and i8 %i.kj, 7
  %i.kl = shl nuw i8 1, %i.kk
  %i.km = lshr i64 %indvars.iv252, 3
  %i.kn = and i64 %i.km, 536870911
  %i.ko = getelementptr inbounds nuw i8, ptr %2, i64 %i.kn ; 2 uses
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !53
  %i.kq = or i8 %i.kp, %i.kl
  store i8 %i.kq, ptr %i.ko, align 1, !tbaa !53
  %.pre256 = load i32, ptr %i.hn, align 8, !tbaa !294
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph232, %bb.ar
  %i.kr = phi i32 [ %i.jx, %.lr.ph232 ], [ %.pre256, %bb.ar ] ; 2 uses
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %i.ks = sext i32 %i.kr to i64
  %i.kt = icmp slt i64 %indvars.iv.next253, %i.ks
  br i1 %i.kt, label %.lr.ph232, label %._crit_edge233, !llvm.loop !292

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %.pn152.pn.pn = phi { ptr, i32 } [ %.pn147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %.pn149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  %.pn152.pn.pn.pn = phi { ptr, i32 } [ %.pn152.pn.pn, %bb.at ], [ %.pn145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn152.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn152.pn.pn.pn, %bb.au ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #23
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.e
  %.pn152.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn152.pn.pn.pn.pn, %bb.av ], [ %i.ao, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #23
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.d
  %.pn152.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn152.pn.pn.pn.pn.pn, %bb.aw ], [ %i.an, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn152.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2cv11xfeatures2d38Upright_MLDB_Descriptor_Subset_Invoker34Get_Upright_MLDB_Descriptor_SubsetERKNS_8KeyPointEPhi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(456) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.31", align 1 ; 3 uses
  %i.a = alloca [87 x float], align 16            ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.31", align 1 ; 3 uses
  %i.b = alloca [3 x i32], align 4                ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.31", align 1 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.31", align 1 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !146  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !160
  %i.i = shl nuw i32 1, %i.h
  %i.j = sitofp i32 %i.i to float                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !161
  %i.m = fmul float %i.l, 5.000000e-01
  %i.n = fdiv float %i.m, %i.j
  %i.o = insertelement <4 x float> poison, float %i.n, i64 0
  %i.p = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.o) ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i32, ptr %i.q, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.u = getelementptr inbounds nuw [1080 x i8], ptr %i.t, i64 %i.s
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.w = getelementptr inbounds nuw [1080 x i8], ptr %i.v, i64 %i.s
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 208
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %i.x)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.z = getelementptr inbounds nuw [1080 x i8], ptr %i.y, i64 %i.s
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 416
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.aa)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ab = load <2 x float>, ptr %1, align 4, !tbaa !16
end_hunk_2
begin_hunk_3_@_ZNK2cv11xfeatures2d38Upright_MLDB_Descriptor_Subset_Invoker34Get_Upright_MLDB_Descriptor_SubsetERKNS_8KeyPointEPhi:bb.a
  br i1 %i.ah, label %bb.k, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.e:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv11xfeatures2d38Upright_MLDB_Descriptor_Subset_Invoker34Get_Upright_MLDB_Descriptor_SubsetERKNS_8KeyPointEPhi, ptr noundef nonnull @.str.1, i32 noundef 2130) #25
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %7, align 8, !tbaa !52    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !53
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.i ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.al, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ar

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(348) %i.a, i8 0, i64 348, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !164 ; 4 uses
  %i.at = and i32 %i.as, 1
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv11xfeatures2d38Upright_MLDB_Descriptor_Subset_Invoker34Get_Upright_MLDB_Descriptor_SubsetERKNS_8KeyPointEPhi, ptr noundef nonnull @.str.1, i32 noundef 2134) #25
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

bb.p:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %9, align 8, !tbaa !52    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %bb.p
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !53
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144, %bb.o
  %.pn126 = phi { ptr, i32 } [ %i.av, %bb.o ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144 ], [ %i.aw, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.aq

bb.q:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 %i.as, ptr %i.b, align 4, !tbaa !14
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bd = shl nsw i32 %i.as, 1
  %i.be = or disjoint i32 %i.bd, 2
  %i.bf = udiv i32 %i.be, 3
  store i32 %i.bf, ptr %i.bc, align 4, !tbaa !14
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bh = lshr exact i32 %i.as, 1
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !299 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !62 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !100 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.bq = load i32, ptr %i.bp, align 4
  %.fr228 = freeze i32 %i.bq                      ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bs = load i32, ptr %i.br, align 8            ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bu = load i32, ptr %i.bt, align 4
  %.fr = freeze i32 %i.bu
  %i.bv = icmp slt i32 %.fr, 2                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.bz = load i64, ptr %i.by, align 8            ; 2 uses
  %i.ca = icmp sgt i32 %.fr227, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = icmp slt i32 %i.cc, 2
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = icmp slt i32 %i.cj, 2
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.co = load i64, ptr %i.cn, align 8
  %wide.trip.count239 = zext nneg i32 %i.bj to i64 ; 2 uses
  br i1 %i.ca, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.cp = sext i32 %.fr227 to i64
  %i.cq = extractelement <2 x float> %i.ae, i64 0
  %i.cr = extractelement <2 x float> %i.ae, i64 1
  %i.cs = extractelement <2 x float> %i.ae, i64 1
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ct = zext nneg i32 %.fr227 to i64
  %i.cu = extractelement <2 x float> %i.ae, i64 0
  %i.cv = extractelement <2 x float> %i.ae, i64 1
  %i.cw = icmp eq i32 %.fr227, 2
  %i.cx = icmp eq i32 %.fr227, 2
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.x
  %indvars.iv236 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next237, %bb.x ] ; 3 uses
  %i.cy = mul i64 %i.bo, %indvars.iv236
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.cy ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !14 ; 2 uses
  %or.cond.us = icmp ult i32 %i.da, 3
  br i1 %or.cond.us, label %bb.r, label %.split.us

bb.r:                                             ; preds = %.lr.ph.split.us
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !14 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 2 uses
  %i.df = icmp sgt i32 %i.dd, 0
  br i1 %i.df, label %.lr.ph187.us, label %._crit_edge188.split.us.us

.lr.ph187.us:                                     ; preds = %bb.r
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !14 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %.pre = load i32, ptr %i.dh, align 4, !tbaa !14 ; 2 uses
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph187.us, %._crit_edge.us.us
  %i.di = phi i32 [ %i.dg, %.lr.ph187.us ], [ %i.eo, %._crit_edge.us.us ]
  %i.dj = phi i32 [ %.pre, %.lr.ph187.us ], [ %i.ep, %._crit_edge.us.us ] ; 2 uses
  %i.dk = phi i32 [ %.pre, %.lr.ph187.us ], [ %i.eq, %._crit_edge.us.us ] ; 2 uses
  %.096185.us.us = phi i32 [ %i.dg, %.lr.ph187.us ], [ %i.er, %._crit_edge.us.us ] ; 2 uses
  %.0109184.us.us = phi float [ 0.000000e+00, %.lr.ph187.us ], [ %.1110.lcssa.us.us, %._crit_edge.us.us ] ; 2 uses
  %.0112183.us.us = phi float [ 0.000000e+00, %.lr.ph187.us ], [ %.1113.lcssa.us.us, %._crit_edge.us.us ] ; 2 uses
  %.0115182.us.us = phi float [ 0.000000e+00, %.lr.ph187.us ], [ %.1116.lcssa.us.us, %._crit_edge.us.us ] ; 2 uses
  %i.dl = mul nsw i32 %.096185.us.us, %i.p
  %i.dm = sitofp i32 %i.dl to float
  %i.dn = fadd float %i.cu, %i.dm
  %i.do = insertelement <4 x float> poison, float %i.dn, i64 0
  %i.dp = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.do) ; 3 uses
  %.not.us.us = icmp slt i32 %i.dp, %.fr228
  %15 = sext i32 %i.dp to i64                     ; 3 uses
  %invariant.gep.us.us = getelementptr [4 x i8], ptr %i.bx, i64 %15
  %invariant.gep163.us.us = getelementptr [4 x i8], ptr %i.cf, i64 %15
  %invariant.gep165.us.us = getelementptr [4 x i8], ptr %i.cm, i64 %15
  br i1 %.not.us.us, label %.lr.ph.split.us192.us, label %._crit_edge.us.us

.lr.ph.split.us192.us:                            ; preds = %.lr.ph.us.us, %bb.v
  %i.dq = phi i32 [ %i.ek, %bb.v ], [ %i.dj, %.lr.ph.us.us ] ; 2 uses
  %.095160.us169.us.us = phi i32 [ %i.el, %bb.v ], [ %i.dk, %.lr.ph.us.us ] ; 2 uses
  %.1110159.us170.us.us = phi float [ %.2111.us175.us.us, %bb.v ], [ %.0109184.us.us, %.lr.ph.us.us ] ; 3 uses
  %.1113158.us171.us.us = phi float [ %.2114.us174.us.us, %bb.v ], [ %.0112183.us.us, %.lr.ph.us.us ] ; 3 uses
  %.1116157.us172.us.us = phi float [ %.2117.us173.us.us, %bb.v ], [ %.0115182.us.us, %.lr.ph.us.us ] ; 2 uses
  %i.dr = mul nsw i32 %.095160.us169.us.us, %i.p
  %i.ds = sitofp i32 %i.dr to float
  %i.dt = fadd float %i.cv, %i.ds
  %i.du = insertelement <4 x float> poison, float %i.dt, i64 0
  %i.dv = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.du) ; 3 uses
  %i.dw = or i32 %i.dp, %i.dv
  %or.cond.not.us.us.us = icmp sgt i32 %i.dw, -1
  %.not132.us.us.us = icmp slt i32 %i.dv, %i.bs
  %or.cond143.us.us.us = select i1 %or.cond.not.us.us.us, i1 %.not132.us.us.us, i1 false
  br i1 %or.cond143.us.us.us, label %bb.s, label %bb.v

bb.s:                                             ; preds = %.lr.ph.split.us192.us
  %16 = sext i32 %i.dv to i64                     ; 3 uses
  %i.dx = mul i64 %i.bz, %16
  %.sink.idx.i.us.us.us = select i1 %i.bv, i64 0, i64 %i.dx
  %gep.us.us.us = getelementptr i8, ptr %invariant.gep.us.us, i64 %.sink.idx.i.us.us.us
  %i.dy = load float, ptr %gep.us.us.us, align 4, !tbaa !16
  %i.dz = fadd float %.1116157.us172.us.us, %i.dy ; 2 uses
  %i.ea = mul i64 %i.ch, %16
  %.sink.idx.i150.us.us.us = select i1 %i.cd, i64 0, i64 %i.ea
  %gep164.us.us.us = getelementptr i8, ptr %invariant.gep163.us.us, i64 %.sink.idx.i150.us.us.us
  %i.eb = load float, ptr %gep164.us.us.us, align 4, !tbaa !16 ; 3 uses
  %i.ec = mul i64 %i.co, %16
  %.sink.idx.i152.us.us.us = select i1 %i.ck, i64 0, i64 %i.ec
  %gep166.us.us.us = getelementptr i8, ptr %invariant.gep165.us.us, i64 %.sink.idx.i152.us.us.us
  %i.ed = load float, ptr %gep166.us.us.us, align 4, !tbaa !16 ; 3 uses
  br i1 %i.cw, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ee = fadd float %.1113158.us171.us.us, %i.eb
  %i.ef = fadd float %.1110159.us170.us.us, %i.ed
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.eg = fmul float %i.ed, %i.ed
  %i.eh = call float @llvm.fmuladd.f32(float %i.eb, float %i.eb, float %i.eg)
  %i.ei = call float @sqrtf(float noundef %i.eh) #23
  %i.ej = fadd float %.1113158.us171.us.us, %i.ei
  %.pre244 = load i32, ptr %i.dh, align 4, !tbaa !14
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.lr.ph.split.us192.us
  %i.ek = phi i32 [ %i.dq, %.lr.ph.split.us192.us ], [ %i.dq, %bb.t ], [ %.pre244, %bb.u ] ; 4 uses
  %.2117.us173.us.us = phi float [ %.1116157.us172.us.us, %.lr.ph.split.us192.us ], [ %i.dz, %bb.t ], [ %i.dz, %bb.u ] ; 2 uses
  %.2114.us174.us.us = phi float [ %.1113158.us171.us.us, %.lr.ph.split.us192.us ], [ %i.ee, %bb.t ], [ %i.ej, %bb.u ] ; 2 uses
  %.2111.us175.us.us = phi float [ %.1110159.us170.us.us, %.lr.ph.split.us192.us ], [ %i.ef, %bb.t ], [ %.1110159.us170.us.us, %bb.u ] ; 2 uses
  %i.el = add nsw i32 %.095160.us169.us.us, 1     ; 2 uses
  %i.em = add nsw i32 %i.ek, %i.dd
  %i.en = icmp slt i32 %i.el, %i.em
  br i1 %i.en, label %.lr.ph.split.us192.us, label %._crit_edge.us.us.loopexit, !llvm.loop !295

._crit_edge.us.us.loopexit:                       ; preds = %bb.v
  %.pre245 = load i32, ptr %i.de, align 4, !tbaa !14
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %.lr.ph.us.us, %._crit_edge.us.us.loopexit
  %i.eo = phi i32 [ %.pre245, %._crit_edge.us.us.loopexit ], [ %i.di, %.lr.ph.us.us ] ; 2 uses
  %i.ep = phi i32 [ %i.ek, %._crit_edge.us.us.loopexit ], [ %i.dj, %.lr.ph.us.us ]
  %i.eq = phi i32 [ %i.ek, %._crit_edge.us.us.loopexit ], [ %i.dk, %.lr.ph.us.us ]
  %.1116.lcssa.us.us = phi float [ %.2117.us173.us.us, %._crit_edge.us.us.loopexit ], [ %.0115182.us.us, %.lr.ph.us.us ] ; 2 uses
  %.1113.lcssa.us.us = phi float [ %.2114.us174.us.us, %._crit_edge.us.us.loopexit ], [ %.0112183.us.us, %.lr.ph.us.us ] ; 2 uses
  %.1110.lcssa.us.us = phi float [ %.2111.us175.us.us, %._crit_edge.us.us.loopexit ], [ %.0109184.us.us, %.lr.ph.us.us ] ; 2 uses
  %i.er = add nsw i32 %.096185.us.us, 1           ; 2 uses
  %i.es = add nsw i32 %i.eo, %i.dd
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %.lr.ph.us.us, label %._crit_edge188.split.us.us, !llvm.loop !296

._crit_edge188.split.us.us:                       ; preds = %._crit_edge.us.us, %bb.r
  %.0115.lcssa.us = phi float [ 0.000000e+00, %bb.r ], [ %.1116.lcssa.us.us, %._crit_edge.us.us ]
  %.0112.lcssa.us = phi float [ 0.000000e+00, %bb.r ], [ %.1113.lcssa.us.us, %._crit_edge.us.us ]
  %.0109.lcssa.us = phi float [ 0.000000e+00, %bb.r ], [ %.1110.lcssa.us.us, %._crit_edge.us.us ]
  %i.eu = mul nuw nsw i64 %indvars.iv236, %i.ct
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eu ; 3 uses
  store float %.0115.lcssa.us, ptr %i.ev, align 4, !tbaa !16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store float %.0112.lcssa.us, ptr %i.ew, align 4, !tbaa !16
  br i1 %i.cx, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge188.split.us.us
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store float %.0109.lcssa.us, ptr %i.ex, align 4, !tbaa !16
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge188.split.us.us, %bb.w
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %exitcond240.not = icmp eq i64 %indvars.iv.next237, %wide.trip.count239
  br i1 %exitcond240.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !297

._crit_edge:                                      ; preds = %.loopexit, %bb.x, %bb.q
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !62
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !300
  %i.fc = add i32 %i.fb, 7
  %i.fd = lshr i32 %i.fc, 3
  %i.fe = icmp eq i32 %i.fd, %3
  br i1 %i.fe, label %bb.am, label %bb.ah

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %i.ff = mul i64 %i.bo, %indvars.iv
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ff ; 3 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !14 ; 2 uses
  %or.cond = icmp ult i32 %i.fh, 3
  br i1 %or.cond, label %bb.ac, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %.split.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZNK2cv11xfeatures2d38Upright_MLDB_Descriptor_Subset_Invoker34Get_Upright_MLDB_Descriptor_SubsetERKNS_8KeyPointEPhi, ptr noundef nonnull @.str.1, i32 noundef 2143) #25
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %.split.us
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

bb.ab:                                            ; preds = %bb.y
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fk = load ptr, ptr %11, align 8, !tbaa !52   ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.ab
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !53
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %bb.aa
  %.pn130 = phi { ptr, i32 } [ %i.fi, %bb.aa ], [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ], [ %i.fj, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.ap

bb.ac:                                            ; preds = %.lr.ph.split
  %i.fp = zext nneg i32 %i.fh to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !14 ; 3 uses
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %.lr.ph.us199.preheader, label %.loopexit

.lr.ph.us199.preheader:                           ; preds = %bb.ac
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !14 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !14 ; 3 uses
  %i.fx = add nsw i32 %i.fu, %i.fr
  %i.fy = add nsw i32 %i.fw, %i.fr                ; 2 uses
  br label %.lr.ph.us199

.lr.ph.us199:                                     ; preds = %.lr.ph.us199.preheader, %._crit_edge.us208
  %.096185.us197 = phi i32 [ %i.gz, %._crit_edge.us208 ], [ %i.fu, %.lr.ph.us199.preheader ] ; 2 uses
  %.0115182.us198 = phi float [ %.us-phi.us209, %._crit_edge.us208 ], [ 0.000000e+00, %.lr.ph.us199.preheader ] ; 3 uses
  %i.fz = mul nsw i32 %.096185.us197, %i.p
  %i.ga = sitofp i32 %i.fz to float
  %i.gb = fadd float %i.cq, %i.ga
  %i.gc = insertelement <4 x float> poison, float %i.gb, i64 0
  %i.gd = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.gc) ; 4 uses
  %.not.us200 = icmp slt i32 %i.gd, %.fr228
  %17 = sext i32 %i.gd to i64
  %invariant.gep.us201 = getelementptr [4 x i8], ptr %i.bx, i64 %17 ; 2 uses
  br i1 %.not.us200, label %.lr.ph.split.us206, label %._crit_edge.us208

.lr.ph.split.us206:                               ; preds = %.lr.ph.us199
  br i1 %i.bv, label %.lr.ph.split.us206.split.us, label %.lr.ph.split.us206.split

.lr.ph.split.us206.split.us:                      ; preds = %.lr.ph.split.us206, %bb.ae
  %.095160.us207.us = phi i32 [ %i.gm, %bb.ae ], [ %i.fw, %.lr.ph.split.us206 ] ; 2 uses
  %.1116157.us.us = phi float [ %.2117.us.us, %bb.ae ], [ %.0115182.us198, %.lr.ph.split.us206 ] ; 2 uses
  %i.ge = mul nsw i32 %.095160.us207.us, %i.p
  %i.gf = sitofp i32 %i.ge to float
  %i.gg = fadd float %i.cs, %i.gf
  %i.gh = insertelement <4 x float> poison, float %i.gg, i64 0
  %i.gi = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.gh) ; 2 uses
  %i.gj = or i32 %i.gd, %i.gi
  %or.cond.not.us.us217 = icmp sgt i32 %i.gj, -1
  %.not132.us.us218 = icmp slt i32 %i.gi, %i.bs
  %or.cond143.us.us219 = select i1 %or.cond.not.us.us217, i1 %.not132.us.us218, i1 false
  br i1 %or.cond143.us.us219, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.split.us206.split.us
  %i.gk = load float, ptr %invariant.gep.us201, align 4, !tbaa !16
  %i.gl = fadd float %.1116157.us.us, %i.gk
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.split.us206.split.us
  %.2117.us.us = phi float [ %.1116157.us.us, %.lr.ph.split.us206.split.us ], [ %i.gl, %bb.ad ] ; 2 uses
  %i.gm = add nsw i32 %.095160.us207.us, 1        ; 2 uses
  %i.gn = icmp slt i32 %i.gm, %i.fy
  br i1 %i.gn, label %.lr.ph.split.us206.split.us, label %._crit_edge.us208, !llvm.loop !295

.lr.ph.split.us206.split:                         ; preds = %.lr.ph.split.us206, %bb.ag
  %.095160.us207 = phi i32 [ %i.gx, %bb.ag ], [ %i.fw, %.lr.ph.split.us206 ] ; 2 uses
  %.1116157.us = phi float [ %.2117.us, %bb.ag ], [ %.0115182.us198, %.lr.ph.split.us206 ] ; 2 uses
  %i.go = mul nsw i32 %.095160.us207, %i.p
  %i.gp = sitofp i32 %i.go to float
  %i.gq = fadd float %i.cr, %i.gp
  %i.gr = insertelement <4 x float> poison, float %i.gq, i64 0
  %i.gs = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.gr) ; 3 uses
  %i.gt = or i32 %i.gd, %i.gs
  %or.cond.not.us = icmp sgt i32 %i.gt, -1
  %.not132.us = icmp slt i32 %i.gs, %i.bs
  %or.cond143.us = select i1 %or.cond.not.us, i1 %.not132.us, i1 false
  br i1 %or.cond143.us, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.split.us206.split
  %18 = sext i32 %i.gs to i64
  %i.gu = mul i64 %i.bz, %18
  %gep.us = getelementptr i8, ptr %invariant.gep.us201, i64 %i.gu
  %i.gv = load float, ptr %gep.us, align 4, !tbaa !16
  %i.gw = fadd float %.1116157.us, %i.gv
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph.split.us206.split
  %.2117.us = phi float [ %.1116157.us, %.lr.ph.split.us206.split ], [ %i.gw, %bb.af ] ; 2 uses
  %i.gx = add nsw i32 %.095160.us207, 1           ; 2 uses
  %i.gy = icmp slt i32 %i.gx, %i.fy
  br i1 %i.gy, label %.lr.ph.split.us206.split, label %._crit_edge.us208, !llvm.loop !295

._crit_edge.us208:                                ; preds = %bb.ag, %bb.ae, %.lr.ph.us199
  %.us-phi.us209 = phi float [ %.2117.us.us, %bb.ae ], [ %.0115182.us198, %.lr.ph.us199 ], [ %.2117.us, %bb.ag ] ; 2 uses
  %i.gz = add nsw i32 %.096185.us197, 1           ; 2 uses
  %i.ha = icmp slt i32 %i.gz, %i.fx
  br i1 %i.ha, label %.lr.ph.us199, label %.loopexit, !llvm.loop !296

.loopexit:                                        ; preds = %._crit_edge.us208, %bb.ac
  %.0115.lcssa = phi float [ 0.000000e+00, %bb.ac ], [ %.us-phi.us209, %._crit_edge.us208 ]
  %i.hb = mul nsw i64 %indvars.iv, %i.cp
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.hb
  store float %.0115.lcssa, ptr %i.hc, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count239
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !297

bb.ah:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZNK2cv11xfeatures2d38Upright_MLDB_Descriptor_Subset_Invoker34Get_Upright_MLDB_Descriptor_SubsetERKNS_8KeyPointEPhi, ptr noundef nonnull @.str.1, i32 noundef 2192) #25
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

bb.al:                                            ; preds = %bb.ai
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hf = load ptr, ptr %13, align 8, !tbaa !52   ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %bb.al
  %i.hi = load i64, ptr %i.hg, align 8, !tbaa !53
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154, %bb.ak
  %.pn128 = phi { ptr, i32 } [ %i.hd, %bb.ak ], [ %i.he, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154 ], [ %i.he, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.ap

bb.am:                                            ; preds = %._crit_edge
  %i.hk = zext nneg i32 %3 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %i.hk, i1 false)
  %i.hl = load i32, ptr %i.fa, align 8, !tbaa !300 ; 2 uses
  %i.hm = icmp sgt i32 %i.hl, 0
  br i1 %i.hm, label %.lr.ph225, label %._crit_edge226

._crit_edge226:                                   ; preds = %bb.ao, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

.lr.ph225:                                        ; preds = %bb.am, %bb.ao
  %i.hn = phi i32 [ %i.ih, %bb.ao ], [ %i.hl, %bb.am ]
  %indvars.iv241 = phi i64 [ %indvars.iv.next242, %bb.ao ], [ 0, %bb.am ] ; 4 uses
  %.idx = shl nuw nsw i64 %indvars.iv241, 3
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.idx ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !14
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.hq
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !16
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !14
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.hv
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !16
  %i.hy = fcmp ogt float %i.hs, %i.hx
  br i1 %i.hy, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph225
  %i.hz = trunc i64 %indvars.iv241 to i8
  %i.ia = and i8 %i.hz, 7
  %i.ib = shl nuw i8 1, %i.ia
  %i.ic = lshr i64 %indvars.iv241, 3
  %i.id = and i64 %i.ic, 536870911
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 %i.id ; 2 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !53
  %i.ig = or i8 %i.if, %i.ib
  store i8 %i.ig, ptr %i.ie, align 1, !tbaa !53
  %.pre246 = load i32, ptr %i.fa, align 8, !tbaa !300
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph225, %bb.an
  %i.ih = phi i32 [ %i.hn, %.lr.ph225 ], [ %.pre246, %bb.an ] ; 2 uses
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 2 uses
  %i.ii = sext i32 %i.ih to i64
  %i.ij = icmp slt i64 %indvars.iv.next242, %i.ii
  br i1 %i.ij, label %.lr.ph225, label %._crit_edge226, !llvm.loop !298

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  %.pn133.pn = phi { ptr, i32 } [ %.pn128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156 ], [ %.pn130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %.pn133.pn.pn = phi { ptr, i32 } [ %.pn133.pn, %bb.ap ], [ %.pn126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn133.pn.pn.pn = phi { ptr, i32 } [ %.pn133.pn.pn, %bb.aq ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #23
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.e
  %.pn133.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn133.pn.pn.pn, %bb.ar ], [ %i.aj, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #23
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.d
  %.pn133.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn133.pn.pn.pn.pn, %bb.as ], [ %i.ai, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn133.pn.pn.pn.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #2

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse.cvtss2si(<4 x float>) #12

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv11xfeatures2d22FindKeypointsSameScaleD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv11xfeatures2d22FindKeypointsSameScaleclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.31", align 1 ; 3 uses
  %4 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !59     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !60
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph91, label %._crit_edge92
end_hunk_3
