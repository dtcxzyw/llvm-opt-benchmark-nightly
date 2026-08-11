inline.NumInlined: 288
inline.NumDeleted: 140
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2cv11xfeatures2dL11pixelTests2ERKNS_3MatERKSt6vectorINS_8KeyPointESaIS5_EERKNS_12_OutputArrayERKS4_IiSaIiEEbi:bb.a
vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next89, %vector.body77 ] ; 2 uses
  %vec.phi79 = phi <4 x i32> [ %i.ju, %vector.ph75 ], [ %i.kn, %vector.body77 ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph75 ], [ %i.ko, %vector.body77 ]
  %vec.phi81 = phi <4 x i32> [ %i.jv, %vector.ph75 ], [ %i.lb, %vector.body77 ]
  %vec.phi82 = phi <4 x i32> [ zeroinitializer, %vector.ph75 ], [ %i.lc, %vector.body77 ]
  %i.jw = add i64 %index78, %i.s                  ; 3 uses
  %i.jx = getelementptr i8, ptr %gep142.i, i64 %i.jw ; 2 uses
  %i.jy = getelementptr i8, ptr %i.jx, i64 4
  %wide.load83 = load <4 x i8>, ptr %i.jx, align 1, !tbaa !37
  %wide.load84 = load <4 x i8>, ptr %i.jy, align 1, !tbaa !37
  %i.jz = zext <4 x i8> %wide.load83 to <4 x i32>
  %i.ka = zext <4 x i8> %wide.load84 to <4 x i32>
  %i.kb = getelementptr i8, ptr %gep143.i, i64 %i.jw ; 2 uses
  %i.kc = getelementptr i8, ptr %i.kb, i64 4
  %wide.load85 = load <4 x i8>, ptr %i.kb, align 1, !tbaa !37
  %wide.load86 = load <4 x i8>, ptr %i.kc, align 1, !tbaa !37
  %i.kd = zext <4 x i8> %wide.load85 to <4 x i32> ; 2 uses
  %i.ke = zext <4 x i8> %wide.load86 to <4 x i32> ; 2 uses
  %i.kf = sub nsw <4 x i32> %i.jz, %i.kd
  %i.kg = sub nsw <4 x i32> %i.ka, %i.ke
  %i.kh = sitofp <4 x i32> %i.kf to <4 x double>  ; 2 uses
  %i.ki = sitofp <4 x i32> %i.kg to <4 x double>  ; 2 uses
  %i.kj = fmul nnan <4 x double> %i.kh, %i.kh
  %i.kk = fmul nnan <4 x double> %i.ki, %i.ki
  %i.kl = fptosi <4 x double> %i.kj to <4 x i32>
  %i.km = fptosi <4 x double> %i.kk to <4 x i32>
  %i.kn = add <4 x i32> %vec.phi79, %i.kl         ; 2 uses
  %i.ko = add <4 x i32> %vec.phi80, %i.km         ; 2 uses
  %i.kp = getelementptr i8, ptr %gep145.i, i64 %i.jw ; 2 uses
  %i.kq = getelementptr i8, ptr %i.kp, i64 4
  %wide.load87 = load <4 x i8>, ptr %i.kp, align 1, !tbaa !37
  %wide.load88 = load <4 x i8>, ptr %i.kq, align 1, !tbaa !37
  %i.kr = zext <4 x i8> %wide.load87 to <4 x i32>
  %i.ks = zext <4 x i8> %wide.load88 to <4 x i32>
  %i.kt = sub nsw <4 x i32> %i.kr, %i.kd
  %i.ku = sub nsw <4 x i32> %i.ks, %i.ke
  %i.kv = sitofp <4 x i32> %i.kt to <4 x double>  ; 2 uses
  %i.kw = sitofp <4 x i32> %i.ku to <4 x double>  ; 2 uses
  %i.kx = fmul nnan <4 x double> %i.kv, %i.kv
  %i.ky = fmul nnan <4 x double> %i.kw, %i.kw
  %i.kz = fptosi <4 x double> %i.kx to <4 x i32>
  %i.la = fptosi <4 x double> %i.ky to <4 x i32>
  %i.lb = add <4 x i32> %vec.phi81, %i.kz         ; 2 uses
  %i.lc = add <4 x i32> %vec.phi82, %i.la         ; 2 uses
  %index.next89 = add nuw i64 %index78, 8         ; 2 uses
  %i.ld = icmp eq i64 %index.next89, %n.vec76
  br i1 %i.ld, label %middle.block90, label %vector.body77, !llvm.loop !93

middle.block90:                                   ; preds = %vector.body77
  %bin.rdx91 = add <4 x i32> %i.ko, %i.kn
  %i.le = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx91)
  %bin.rdx92 = add <4 x i32> %i.lc, %i.lb
  %i.lf = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx92)
  %i.lg = insertelement <2 x i32> poison, i32 %i.le, i64 0
  %i.lh = insertelement <2 x i32> %i.lg, i32 %i.lf, i64 1
  br label %scalar.ph73.preheader

._crit_edge.i:                                    ; preds = %scalar.ph73
  %indvars.iv.next131.i = add nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %lftr.wideiv133.i = trunc i64 %indvars.iv.next131.i to i32
  %exitcond134.not.i = icmp eq i32 %i.t, %lftr.wideiv133.i
  br i1 %exitcond134.not.i, label %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit.loopexit, label %.lr.ph.i, !llvm.loop !51

scalar.ph73:                                      ; preds = %scalar.ph73.preheader, %scalar.ph73
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph73 ], [ %indvars.iv.i.ph, %scalar.ph73.preheader ] ; 4 uses
  %i.li = phi <2 x i32> [ %i.ly, %scalar.ph73 ], [ %.ph98, %scalar.ph73.preheader ]
  %gep.i = getelementptr i8, ptr %gep142.i, i64 %indvars.iv.i
  %i.lj = load i8, ptr %gep.i, align 1, !tbaa !37
  %gep138.i = getelementptr i8, ptr %gep143.i, i64 %indvars.iv.i
  %i.lk = load i8, ptr %gep138.i, align 1, !tbaa !37
  %i.ll = zext i8 %i.lk to i32                    ; 2 uses
  %gep140.i = getelementptr i8, ptr %gep145.i, i64 %indvars.iv.i
  %i.lm = load i8, ptr %gep140.i, align 1, !tbaa !37
  %i.ln = zext i8 %i.lm to i32
  %i.lo = zext i8 %i.lj to i32
  %i.lp = sub nsw i32 %i.ln, %i.ll
  %i.lq = sub nsw i32 %i.lo, %i.ll
  %i.lr = trunc nsw i32 %i.lq to i16
  %i.ls = insertelement <2 x i16> poison, i16 %i.lr, i64 0
  %i.lt = trunc nsw i32 %i.lp to i16
  %i.lu = insertelement <2 x i16> %i.ls, i16 %i.lt, i64 1
  %i.lv = sitofp <2 x i16> %i.lu to <2 x double>  ; 2 uses
  %i.lw = fmul nnan <2 x double> %i.lv, %i.lv
  %i.lx = fptosi <2 x double> %i.lw to <2 x i32>
  %i.ly = add nsw <2 x i32> %i.li, %i.lx          ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.t, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph73, !llvm.loop !94

_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit.loopexit: ; preds = %._crit_edge.i
  %shift97 = shufflevector <2 x i32> %i.ly, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.lz = icmp slt <2 x i32> %i.ly, %shift97
  %i.ma = extractelement <2 x i1> %i.lz, i64 0
  %i.mb = zext i1 %i.ma to i32
  br label %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit

_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit: ; preds = %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit.loopexit, %bb.l
  %.240 = phi i32 [ 0, %bb.l ], [ %i.mb, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit.loopexit ]
  %i.mc = shl nuw i32 %.240, %.03043
  %i.md = trunc i32 %i.mc to i8
  %i.me = add i8 %i.gt, %i.md                     ; 2 uses
  store i8 %i.me, ptr %i.ae, align 1, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 6
  %i.mf = add nsw i32 %.03043, -1
  %.not = icmp eq i32 %.03043, 0
  br i1 %.not, label %bb.e, label %bb.j, !llvm.loop !91
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv11xfeatures2dL11pixelTests4ERKNS_3MatERKSt6vectorINS_8KeyPointESaIS5_EERKNS_12_OutputArrayERKS4_IiSaIiEEbi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, i1 noundef zeroext %4, i32 noundef %5) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !95
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70, !noalias !95
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.g = load ptr, ptr %1, align 8, !tbaa !76     ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 28
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 128
  %.not124.i = icmp slt i32 %5, 0
  %i.p = sub nsw i32 0, %5
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = sext i32 %i.p to i64                     ; 4 uses
  %i.t = add nuw i32 %5, 1                        ; 2 uses
  %min.iters.check = icmp ult i32 %5, 4
  %i.u = shl nuw i32 %5, 1
  %i.v = and i32 %i.u, -8
  %n.vec = zext i32 %i.v to i64                   ; 2 uses
  %i.w = add nsw i64 %n.vec, %i.s
  br label %bb.d

._crit_edge:                                      ; preds = %bb.e, %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv53 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next54, %bb.e ] ; 3 uses
  %i.x = phi ptr [ %i.g, %.lr.ph ], [ %i.ar, %bb.e ]
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.z = load i64, ptr %i.o, align 8, !tbaa !50
  %i.aa = mul i64 %i.z, %indvars.iv53
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [28 x i8], ptr %i.x, i64 %indvars.iv53 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !77
  %i.af = fmul float %i.ae, f0x3C8EFA35
  %i.ag = fpext float %i.af to double             ; 2 uses
  %i.ah = call double @cos(double noundef %i.ag) #21
  %i.ai = call double @sin(double noundef %i.ag) #21
  %i.aj = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.ah, i64 1
  %i.al = fptrunc <2 x double> %i.ak to <2 x float> ; 4 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.an = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.ao = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.f

bb.e:                                             ; preds = %bb.g
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.ar = load ptr, ptr %1, align 8, !tbaa !76    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 28
  %sext = shl i64 %i.av, 32
  %i.aw = ashr exact i64 %sext, 32
  %i.ax = icmp slt i64 %indvars.iv.next54, %i.aw
  br i1 %i.ax, label %bb.d, label %._crit_edge, !llvm.loop !98

bb.f:                                             ; preds = %bb.d, %bb.g
  %indvars.iv50 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next51, %bb.g ] ; 2 uses
  %.03244 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.a, %bb.g ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv50 ; 2 uses
  store i8 0, ptr %i.ay, align 1, !tbaa !37
  br label %bb.h

bb.g:                                             ; preds = %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next51, 4
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !99

bb.h:                                             ; preds = %bb.f, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit
  %i.az = phi i8 [ 0, %bb.f ], [ %i.gk, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit ]
  %indvars.iv = phi i64 [ %.03244, %bb.f ], [ %indvars.iv.next.a, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit ] ; 2 uses
  %.03043 = phi i32 [ 7, %bb.f ], [ %i.gl, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit ] ; 3 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !38
  %i.bb = getelementptr [4 x i8], ptr %i.ba, i64 %indvars.iv ; 6 uses
  %i.bc = load <2 x i32>, ptr %i.bb, align 4, !tbaa !8
  %i.bd = getelementptr i8, ptr %i.bb, i64 8
  %i.be = getelementptr i8, ptr %i.bb, i64 12
  %i.bf = getelementptr i8, ptr %i.bb, i64 20
  %i.bg = load <4 x i32>, ptr %i.bd, align 4, !tbaa !8 ; 2 uses
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !8
  %i.bi = load i32, ptr %i.be, align 4, !tbaa !8
  %i.bj = shufflevector <4 x i32> %i.bg, <4 x i32> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bk = shufflevector <2 x i32> %i.bc, <2 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.bl = insertelement <4 x i32> %i.bk, i32 %i.bh, i64 0
  %i.bm = insertelement <4 x i32> %i.bl, i32 %i.bi, i64 1
  br i1 %4, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bn = load i32, ptr %i.bb, align 4, !tbaa !8
  %i.bo = getelementptr i8, ptr %i.bb, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !8
  %i.bq = sitofp i32 %i.bn to float
  %i.br = sitofp i32 %i.bp to float               ; 2 uses
  %i.bs = fneg float %i.br
  %i.bt = sitofp <2 x i32> %i.bj to <2 x float>   ; 2 uses
  %i.bu = shufflevector <4 x i32> %i.bg, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.bv = sitofp <2 x i32> %i.bu to <2 x float>   ; 2 uses
  %i.bw = fneg <2 x float> %i.bv
  %i.bx = fmul <2 x float> %i.ao, %i.bw
  %i.by = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.ap, <2 x float> %i.bx)
  %i.bz = fptosi <2 x float> %i.by to <2 x i32>
  %i.ca = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.bz, <2 x i32> splat (i32 -24))
  %i.cb = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ca, <2 x i32> splat (i32 24))
  %i.cc = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.cd = insertelement <4 x float> %i.cc, float %i.bs, i64 2
  %i.ce = insertelement <4 x float> %i.cd, float %i.br, i64 3
  %i.cf = fmul <4 x float> %i.an, %i.ce
  %i.cg = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ch = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.cj = shufflevector <4 x float> %i.cg, <4 x float> %i.ci, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ck = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> %i.am, <4 x float> %i.cf)
  %i.cl = fptosi <4 x float> %i.ck to <4 x i32>
  %i.cm = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cl, <4 x i32> splat (i32 -24))
  %i.cn = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cm, <4 x i32> splat (i32 24))
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.co = phi <2 x i32> [ %i.cb, %bb.i ], [ %i.bj, %bb.h ]
  %i.cp = phi <4 x i32> [ %i.cn, %bb.i ], [ %i.bm, %bb.h ] ; 4 uses
  br i1 %.not124.i, label %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit, label %.lr.ph127.i

.lr.ph127.i:                                      ; preds = %bb.j
  %i.cq = extractelement <4 x i32> %i.cp, i64 0
  %i.cr = load <2 x float>, ptr %i.ac, align 4, !tbaa !41
  %i.cs = fpext <2 x float> %i.cr to <2 x double>
  %i.ct = fadd <2 x double> %i.cs, splat (double 5.000000e-01) ; 2 uses
  %i.cu = extractelement <2 x double> %i.ct, i64 1
  %i.cv = fptosi double %i.cu to i32              ; 3 uses
  %i.cw = add nsw i32 %i.cq, %i.cv
  %i.cx = extractelement <2 x double> %i.ct, i64 0
  %i.cy = fptosi double %i.cx to i32              ; 2 uses
  %i.cz = extractelement <4 x i32> %i.cp, i64 1
  %i.da = add nsw i32 %i.cz, %i.cv
  %i.db = extractelement <4 x i32> %i.cp, i64 3
  %i.dc = add nsw i32 %i.db, %i.cv
  %i.dd = extractelement <4 x i32> %i.cp, i64 2
  %i.de = add nsw i32 %i.dd, %i.cy
  %i.df = load ptr, ptr %i.q, align 8, !tbaa !43  ; 3 uses
  %i.dg = load i64, ptr %i.r, align 8, !tbaa !50  ; 3 uses
  %i.dh = sext i32 %i.de to i64
  %i.di = insertelement <2 x i32> poison, i32 %i.cy, i64 0
  %i.dj = shufflevector <2 x i32> %i.di, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dk = add nsw <2 x i32> %i.co, %i.dj          ; 2 uses
  %i.dl = sext i32 %i.dc to i64
  %i.dm = sext i32 %i.da to i64
  %i.dn = sext i32 %i.cw to i64
  %invariant.gep141.i = getelementptr i8, ptr %i.df, i64 %i.dh
  %i.do = extractelement <2 x i32> %i.dk, i64 0
  %i.dp = sext i32 %i.do to i64
  %invariant.gep.i = getelementptr i8, ptr %i.df, i64 %i.dp
  %i.dq = extractelement <2 x i32> %i.dk, i64 1
  %i.dr = sext i32 %i.dq to i64
  %invariant.gep144.i = getelementptr i8, ptr %i.df, i64 %i.dr
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph127.i
  %indvars.iv130.i = phi i64 [ %i.s, %.lr.ph127.i ], [ %indvars.iv.next131.i, %._crit_edge.i ] ; 4 uses
  %i.ds = phi <2 x i32> [ zeroinitializer, %.lr.ph127.i ], [ %i.ge, %._crit_edge.i ] ; 2 uses
  %i.dt = add nsw i64 %indvars.iv130.i, %i.dl
  %i.du = mul i64 %i.dt, %i.dg
  %i.dv = add nsw i64 %indvars.iv130.i, %i.dm
  %i.dw = mul i64 %i.dv, %i.dg
  %i.dx = add nsw i64 %indvars.iv130.i, %i.dn
  %i.dy = mul i64 %i.dx, %i.dg
  %gep142.i = getelementptr i8, ptr %invariant.gep141.i, i64 %i.du ; 2 uses
  %gep143.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.dw ; 2 uses
  %gep145.i = getelementptr i8, ptr %invariant.gep144.i, i64 %i.dy ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %middle.block, %.lr.ph.i
  %indvars.iv.i.ph = phi i64 [ %i.s, %.lr.ph.i ], [ %i.w, %middle.block ]
  %.ph = phi <2 x i32> [ %i.ds, %.lr.ph.i ], [ %i.fn, %middle.block ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %i.dz = shufflevector <2 x i32> %i.ds, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ea = shufflevector <4 x i32> %i.dz, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.eb = shufflevector <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> %i.dz, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ea, %vector.ph ], [ %i.et, %vector.body ]
  %vec.phi58 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.eu, %vector.body ]
  %vec.phi59 = phi <4 x i32> [ %i.eb, %vector.ph ], [ %i.fh, %vector.body ]
  %vec.phi60 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fi, %vector.body ]
  %i.ec = add i64 %index, %i.s                    ; 3 uses
  %i.ed = getelementptr i8, ptr %gep142.i, i64 %i.ec ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 4
  %wide.load = load <4 x i8>, ptr %i.ed, align 1, !tbaa !37
  %wide.load61 = load <4 x i8>, ptr %i.ee, align 1, !tbaa !37
  %i.ef = zext <4 x i8> %wide.load to <4 x i32>
  %i.eg = zext <4 x i8> %wide.load61 to <4 x i32>
  %i.eh = getelementptr i8, ptr %gep143.i, i64 %i.ec ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 4
  %wide.load62 = load <4 x i8>, ptr %i.eh, align 1, !tbaa !37
  %wide.load63 = load <4 x i8>, ptr %i.ei, align 1, !tbaa !37
  %i.ej = zext <4 x i8> %wide.load62 to <4 x i32> ; 2 uses
  %i.ek = zext <4 x i8> %wide.load63 to <4 x i32> ; 2 uses
  %i.el = sub nsw <4 x i32> %i.ef, %i.ej
  %i.em = sub nsw <4 x i32> %i.eg, %i.ek
  %i.en = sitofp <4 x i32> %i.el to <4 x double>  ; 2 uses
  %i.eo = sitofp <4 x i32> %i.em to <4 x double>  ; 2 uses
  %i.ep = fmul nnan <4 x double> %i.en, %i.en
  %i.eq = fmul nnan <4 x double> %i.eo, %i.eo
  %i.er = fptosi <4 x double> %i.ep to <4 x i32>
  %i.es = fptosi <4 x double> %i.eq to <4 x i32>
  %i.et = add <4 x i32> %vec.phi, %i.er           ; 2 uses
  %i.eu = add <4 x i32> %vec.phi58, %i.es         ; 2 uses
  %i.ev = getelementptr i8, ptr %gep145.i, i64 %i.ec ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 4
  %wide.load64 = load <4 x i8>, ptr %i.ev, align 1, !tbaa !37
  %wide.load65 = load <4 x i8>, ptr %i.ew, align 1, !tbaa !37
  %i.ex = zext <4 x i8> %wide.load64 to <4 x i32>
  %i.ey = zext <4 x i8> %wide.load65 to <4 x i32>
  %i.ez = sub nsw <4 x i32> %i.ex, %i.ej
  %i.fa = sub nsw <4 x i32> %i.ey, %i.ek
  %i.fb = sitofp <4 x i32> %i.ez to <4 x double>  ; 2 uses
  %i.fc = sitofp <4 x i32> %i.fa to <4 x double>  ; 2 uses
  %i.fd = fmul nnan <4 x double> %i.fb, %i.fb
  %i.fe = fmul nnan <4 x double> %i.fc, %i.fc
  %i.ff = fptosi <4 x double> %i.fd to <4 x i32>
  %i.fg = fptosi <4 x double> %i.fe to <4 x i32>
  %i.fh = add <4 x i32> %vec.phi59, %i.ff         ; 2 uses
  %i.fi = add <4 x i32> %vec.phi60, %i.fg         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.eu, %i.et
  %i.fk = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %bin.rdx66 = add <4 x i32> %i.fi, %i.fh
  %i.fl = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx66)
  %i.fm = insertelement <2 x i32> poison, i32 %i.fk, i64 0
  %i.fn = insertelement <2 x i32> %i.fm, i32 %i.fl, i64 1
  br label %scalar.ph.preheader

._crit_edge.i:                                    ; preds = %scalar.ph
  %indvars.iv.next131.i = add nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %lftr.wideiv133.i = trunc i64 %indvars.iv.next131.i to i32
  %exitcond134.not.i = icmp eq i32 %i.t, %lftr.wideiv133.i
  br i1 %exitcond134.not.i, label %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit.loopexit, label %.lr.ph.i, !llvm.loop !51

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.fo = phi <2 x i32> [ %i.ge, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %gep.i = getelementptr i8, ptr %gep142.i, i64 %indvars.iv.i
  %i.fp = load i8, ptr %gep.i, align 1, !tbaa !37
  %gep138.i = getelementptr i8, ptr %gep143.i, i64 %indvars.iv.i
  %i.fq = load i8, ptr %gep138.i, align 1, !tbaa !37
  %i.fr = zext i8 %i.fq to i32                    ; 2 uses
  %gep140.i = getelementptr i8, ptr %gep145.i, i64 %indvars.iv.i
  %i.fs = load i8, ptr %gep140.i, align 1, !tbaa !37
  %i.ft = zext i8 %i.fs to i32
  %i.fu = zext i8 %i.fp to i32
  %i.fv = sub nsw i32 %i.ft, %i.fr
  %i.fw = sub nsw i32 %i.fu, %i.fr
  %i.fx = trunc nsw i32 %i.fw to i16
  %i.fy = insertelement <2 x i16> poison, i16 %i.fx, i64 0
  %i.fz = trunc nsw i32 %i.fv to i16
  %i.ga = insertelement <2 x i16> %i.fy, i16 %i.fz, i64 1
  %i.gb = sitofp <2 x i16> %i.ga to <2 x double>  ; 2 uses
  %i.gc = fmul nnan <2 x double> %i.gb, %i.gb
  %i.gd = fptosi <2 x double> %i.gc to <2 x i32>
  %i.ge = add nsw <2 x i32> %i.fo, %i.gd          ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.t, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !101

_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit.loopexit: ; preds = %._crit_edge.i
  %shift = shufflevector <2 x i32> %i.ge, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.gf = icmp slt <2 x i32> %i.ge, %shift
  %i.gg = extractelement <2 x i1> %i.gf, i64 0
  %i.gh = zext i1 %i.gg to i32
  br label %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit

_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit: ; preds = %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit.loopexit, %bb.j
  %.240 = phi i32 [ 0, %bb.j ], [ %i.gh, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit.loopexit ]
  %i.gi = shl nuw i32 %.240, %.03043
  %i.gj = trunc i32 %i.gi to i8
  %i.gk = add i8 %i.az, %i.gj                     ; 2 uses
  store i8 %i.gk, ptr %i.ay, align 1, !tbaa !37
  %indvars.iv.next.a = add nsw i64 %indvars.iv, 6 ; 2 uses
  %i.gl = add nsw i32 %.03043, -1
  %.not = icmp eq i32 %.03043, 0
  br i1 %.not, label %bb.g, label %bb.h, !llvm.loop !102
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv11xfeatures2dL11pixelTests8ERKNS_3MatERKSt6vectorINS_8KeyPointESaIS5_EERKNS_12_OutputArrayERKS4_IiSaIiEEbi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, i1 noundef zeroext %4, i32 noundef %5) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !103
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70, !noalias !103
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.g = load ptr, ptr %1, align 8, !tbaa !76     ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 28
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 128
  %.not124.i = icmp slt i32 %5, 0
  %i.p = sub nsw i32 0, %5
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = sext i32 %i.p to i64                     ; 4 uses
  %i.t = add nuw i32 %5, 1                        ; 2 uses
  %min.iters.check = icmp ult i32 %5, 4
  %i.u = shl nuw i32 %5, 1
  %i.v = and i32 %i.u, -8
  %n.vec = zext i32 %i.v to i64                   ; 2 uses
  %i.w = add nsw i64 %n.vec, %i.s
  br label %bb.d

._crit_edge:                                      ; preds = %bb.e, %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv53 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next54, %bb.e ] ; 3 uses
  %i.x = phi ptr [ %i.g, %.lr.ph ], [ %i.ar, %bb.e ]
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.z = load i64, ptr %i.o, align 8, !tbaa !50
  %i.aa = mul i64 %i.z, %indvars.iv53
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [28 x i8], ptr %i.x, i64 %indvars.iv53 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !77
  %i.af = fmul float %i.ae, f0x3C8EFA35
  %i.ag = fpext float %i.af to double             ; 2 uses
  %i.ah = call double @cos(double noundef %i.ag) #21
  %i.ai = call double @sin(double noundef %i.ag) #21
  %i.aj = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.ah, i64 1
  %i.al = fptrunc <2 x double> %i.ak to <2 x float> ; 4 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.an = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.ao = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.f

bb.e:                                             ; preds = %bb.g
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.ar = load ptr, ptr %1, align 8, !tbaa !76    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 28
  %sext = shl i64 %i.av, 32
  %i.aw = ashr exact i64 %sext, 32
  %i.ax = icmp slt i64 %indvars.iv.next54, %i.aw
  br i1 %i.ax, label %bb.d, label %._crit_edge, !llvm.loop !106

bb.f:                                             ; preds = %bb.d, %bb.g
  %indvars.iv50 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next51, %bb.g ] ; 2 uses
  %.03244 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.a, %bb.g ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv50 ; 2 uses
  store i8 0, ptr %i.ay, align 1, !tbaa !37
  br label %bb.h

bb.g:                                             ; preds = %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next51, 8
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !107

bb.h:                                             ; preds = %bb.f, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit
  %i.az = phi i8 [ 0, %bb.f ], [ %i.gk, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit ]
  %indvars.iv = phi i64 [ %.03244, %bb.f ], [ %indvars.iv.next.a, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit ] ; 2 uses
  %.03043 = phi i32 [ 7, %bb.f ], [ %i.gl, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit ] ; 3 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !38
  %i.bb = getelementptr [4 x i8], ptr %i.ba, i64 %indvars.iv ; 6 uses
  %i.bc = load <2 x i32>, ptr %i.bb, align 4, !tbaa !8
  %i.bd = getelementptr i8, ptr %i.bb, i64 8
  %i.be = getelementptr i8, ptr %i.bb, i64 12
  %i.bf = getelementptr i8, ptr %i.bb, i64 20
  %i.bg = load <4 x i32>, ptr %i.bd, align 4, !tbaa !8 ; 2 uses
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !8
  %i.bi = load i32, ptr %i.be, align 4, !tbaa !8
  %i.bj = shufflevector <4 x i32> %i.bg, <4 x i32> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bk = shufflevector <2 x i32> %i.bc, <2 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.bl = insertelement <4 x i32> %i.bk, i32 %i.bh, i64 0
  %i.bm = insertelement <4 x i32> %i.bl, i32 %i.bi, i64 1
  br i1 %4, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bn = load i32, ptr %i.bb, align 4, !tbaa !8
  %i.bo = getelementptr i8, ptr %i.bb, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !8
  %i.bq = sitofp i32 %i.bn to float
  %i.br = sitofp i32 %i.bp to float               ; 2 uses
  %i.bs = fneg float %i.br
  %i.bt = sitofp <2 x i32> %i.bj to <2 x float>   ; 2 uses
  %i.bu = shufflevector <4 x i32> %i.bg, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.bv = sitofp <2 x i32> %i.bu to <2 x float>   ; 2 uses
  %i.bw = fneg <2 x float> %i.bv
  %i.bx = fmul <2 x float> %i.ao, %i.bw
  %i.by = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.ap, <2 x float> %i.bx)
  %i.bz = fptosi <2 x float> %i.by to <2 x i32>
  %i.ca = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.bz, <2 x i32> splat (i32 -24))
  %i.cb = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ca, <2 x i32> splat (i32 24))
  %i.cc = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.cd = insertelement <4 x float> %i.cc, float %i.bs, i64 2
  %i.ce = insertelement <4 x float> %i.cd, float %i.br, i64 3
  %i.cf = fmul <4 x float> %i.an, %i.ce
  %i.cg = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ch = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.cj = shufflevector <4 x float> %i.cg, <4 x float> %i.ci, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ck = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> %i.am, <4 x float> %i.cf)
  %i.cl = fptosi <4 x float> %i.ck to <4 x i32>
  %i.cm = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cl, <4 x i32> splat (i32 -24))
  %i.cn = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cm, <4 x i32> splat (i32 24))
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.co = phi <2 x i32> [ %i.cb, %bb.i ], [ %i.bj, %bb.h ]
  %i.cp = phi <4 x i32> [ %i.cn, %bb.i ], [ %i.bm, %bb.h ] ; 4 uses
  br i1 %.not124.i, label %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit, label %.lr.ph127.i

.lr.ph127.i:                                      ; preds = %bb.j
  %i.cq = extractelement <4 x i32> %i.cp, i64 0
  %i.cr = load <2 x float>, ptr %i.ac, align 4, !tbaa !41
  %i.cs = fpext <2 x float> %i.cr to <2 x double>
  %i.ct = fadd <2 x double> %i.cs, splat (double 5.000000e-01) ; 2 uses
  %i.cu = extractelement <2 x double> %i.ct, i64 1
  %i.cv = fptosi double %i.cu to i32              ; 3 uses
  %i.cw = add nsw i32 %i.cq, %i.cv
  %i.cx = extractelement <2 x double> %i.ct, i64 0
  %i.cy = fptosi double %i.cx to i32              ; 2 uses
  %i.cz = extractelement <4 x i32> %i.cp, i64 1
  %i.da = add nsw i32 %i.cz, %i.cv
  %i.db = extractelement <4 x i32> %i.cp, i64 3
  %i.dc = add nsw i32 %i.db, %i.cv
  %i.dd = extractelement <4 x i32> %i.cp, i64 2
  %i.de = add nsw i32 %i.dd, %i.cy
  %i.df = load ptr, ptr %i.q, align 8, !tbaa !43  ; 3 uses
  %i.dg = load i64, ptr %i.r, align 8, !tbaa !50  ; 3 uses
  %i.dh = sext i32 %i.de to i64
  %i.di = insertelement <2 x i32> poison, i32 %i.cy, i64 0
  %i.dj = shufflevector <2 x i32> %i.di, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dk = add nsw <2 x i32> %i.co, %i.dj          ; 2 uses
  %i.dl = sext i32 %i.dc to i64
  %i.dm = sext i32 %i.da to i64
  %i.dn = sext i32 %i.cw to i64
  %invariant.gep141.i = getelementptr i8, ptr %i.df, i64 %i.dh
  %i.do = extractelement <2 x i32> %i.dk, i64 0
  %i.dp = sext i32 %i.do to i64
  %invariant.gep.i = getelementptr i8, ptr %i.df, i64 %i.dp
  %i.dq = extractelement <2 x i32> %i.dk, i64 1
  %i.dr = sext i32 %i.dq to i64
  %invariant.gep144.i = getelementptr i8, ptr %i.df, i64 %i.dr
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph127.i
  %indvars.iv130.i = phi i64 [ %i.s, %.lr.ph127.i ], [ %indvars.iv.next131.i, %._crit_edge.i ] ; 4 uses
  %i.ds = phi <2 x i32> [ zeroinitializer, %.lr.ph127.i ], [ %i.ge, %._crit_edge.i ] ; 2 uses
  %i.dt = add nsw i64 %indvars.iv130.i, %i.dl
  %i.du = mul i64 %i.dt, %i.dg
  %i.dv = add nsw i64 %indvars.iv130.i, %i.dm
  %i.dw = mul i64 %i.dv, %i.dg
  %i.dx = add nsw i64 %indvars.iv130.i, %i.dn
  %i.dy = mul i64 %i.dx, %i.dg
  %gep142.i = getelementptr i8, ptr %invariant.gep141.i, i64 %i.du ; 2 uses
  %gep143.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.dw ; 2 uses
  %gep145.i = getelementptr i8, ptr %invariant.gep144.i, i64 %i.dy ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %middle.block, %.lr.ph.i
  %indvars.iv.i.ph = phi i64 [ %i.s, %.lr.ph.i ], [ %i.w, %middle.block ]
  %.ph = phi <2 x i32> [ %i.ds, %.lr.ph.i ], [ %i.fn, %middle.block ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %i.dz = shufflevector <2 x i32> %i.ds, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ea = shufflevector <4 x i32> %i.dz, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.eb = shufflevector <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> %i.dz, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ea, %vector.ph ], [ %i.et, %vector.body ]
  %vec.phi58 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.eu, %vector.body ]
  %vec.phi59 = phi <4 x i32> [ %i.eb, %vector.ph ], [ %i.fh, %vector.body ]
  %vec.phi60 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fi, %vector.body ]
  %i.ec = add i64 %index, %i.s                    ; 3 uses
  %i.ed = getelementptr i8, ptr %gep142.i, i64 %i.ec ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 4
  %wide.load = load <4 x i8>, ptr %i.ed, align 1, !tbaa !37
  %wide.load61 = load <4 x i8>, ptr %i.ee, align 1, !tbaa !37
  %i.ef = zext <4 x i8> %wide.load to <4 x i32>
  %i.eg = zext <4 x i8> %wide.load61 to <4 x i32>
  %i.eh = getelementptr i8, ptr %gep143.i, i64 %i.ec ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 4
  %wide.load62 = load <4 x i8>, ptr %i.eh, align 1, !tbaa !37
  %wide.load63 = load <4 x i8>, ptr %i.ei, align 1, !tbaa !37
  %i.ej = zext <4 x i8> %wide.load62 to <4 x i32> ; 2 uses
  %i.ek = zext <4 x i8> %wide.load63 to <4 x i32> ; 2 uses
  %i.el = sub nsw <4 x i32> %i.ef, %i.ej
  %i.em = sub nsw <4 x i32> %i.eg, %i.ek
  %i.en = sitofp <4 x i32> %i.el to <4 x double>  ; 2 uses
  %i.eo = sitofp <4 x i32> %i.em to <4 x double>  ; 2 uses
  %i.ep = fmul nnan <4 x double> %i.en, %i.en
  %i.eq = fmul nnan <4 x double> %i.eo, %i.eo
  %i.er = fptosi <4 x double> %i.ep to <4 x i32>
  %i.es = fptosi <4 x double> %i.eq to <4 x i32>
  %i.et = add <4 x i32> %vec.phi, %i.er           ; 2 uses
  %i.eu = add <4 x i32> %vec.phi58, %i.es         ; 2 uses
  %i.ev = getelementptr i8, ptr %gep145.i, i64 %i.ec ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 4
  %wide.load64 = load <4 x i8>, ptr %i.ev, align 1, !tbaa !37
  %wide.load65 = load <4 x i8>, ptr %i.ew, align 1, !tbaa !37
  %i.ex = zext <4 x i8> %wide.load64 to <4 x i32>
  %i.ey = zext <4 x i8> %wide.load65 to <4 x i32>
  %i.ez = sub nsw <4 x i32> %i.ex, %i.ej
  %i.fa = sub nsw <4 x i32> %i.ey, %i.ek
  %i.fb = sitofp <4 x i32> %i.ez to <4 x double>  ; 2 uses
  %i.fc = sitofp <4 x i32> %i.fa to <4 x double>  ; 2 uses
  %i.fd = fmul nnan <4 x double> %i.fb, %i.fb
  %i.fe = fmul nnan <4 x double> %i.fc, %i.fc
  %i.ff = fptosi <4 x double> %i.fd to <4 x i32>
  %i.fg = fptosi <4 x double> %i.fe to <4 x i32>
  %i.fh = add <4 x i32> %vec.phi59, %i.ff         ; 2 uses
  %i.fi = add <4 x i32> %vec.phi60, %i.fg         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.eu, %i.et
  %i.fk = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %bin.rdx66 = add <4 x i32> %i.fi, %i.fh
  %i.fl = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx66)
  %i.fm = insertelement <2 x i32> poison, i32 %i.fk, i64 0
  %i.fn = insertelement <2 x i32> %i.fm, i32 %i.fl, i64 1
  br label %scalar.ph.preheader

._crit_edge.i:                                    ; preds = %scalar.ph
  %indvars.iv.next131.i = add nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %lftr.wideiv133.i = trunc i64 %indvars.iv.next131.i to i32
  %exitcond134.not.i = icmp eq i32 %i.t, %lftr.wideiv133.i
  br i1 %exitcond134.not.i, label %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit.loopexit, label %.lr.ph.i, !llvm.loop !51

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.fo = phi <2 x i32> [ %i.ge, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %gep.i = getelementptr i8, ptr %gep142.i, i64 %indvars.iv.i
  %i.fp = load i8, ptr %gep.i, align 1, !tbaa !37
  %gep138.i = getelementptr i8, ptr %gep143.i, i64 %indvars.iv.i
  %i.fq = load i8, ptr %gep138.i, align 1, !tbaa !37
  %i.fr = zext i8 %i.fq to i32                    ; 2 uses
  %gep140.i = getelementptr i8, ptr %gep145.i, i64 %indvars.iv.i
  %i.fs = load i8, ptr %gep140.i, align 1, !tbaa !37
  %i.ft = zext i8 %i.fs to i32
  %i.fu = zext i8 %i.fp to i32
  %i.fv = sub nsw i32 %i.ft, %i.fr
  %i.fw = sub nsw i32 %i.fu, %i.fr
  %i.fx = trunc nsw i32 %i.fw to i16
  %i.fy = insertelement <2 x i16> poison, i16 %i.fx, i64 0
  %i.fz = trunc nsw i32 %i.fv to i16
  %i.ga = insertelement <2 x i16> %i.fy, i16 %i.fz, i64 1
  %i.gb = sitofp <2 x i16> %i.ga to <2 x double>  ; 2 uses
  %i.gc = fmul nnan <2 x double> %i.gb, %i.gb
  %i.gd = fptosi <2 x double> %i.gc to <2 x i32>
  %i.ge = add nsw <2 x i32> %i.fo, %i.gd          ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.t, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !109

_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit.loopexit: ; preds = %._crit_edge.i
  %shift = shufflevector <2 x i32> %i.ge, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.gf = icmp slt <2 x i32> %i.ge, %shift
  %i.gg = extractelement <2 x i1> %i.gf, i64 0
  %i.gh = zext i1 %i.gg to i32
  br label %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit

_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit: ; preds = %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit.loopexit, %bb.j
  %.240 = phi i32 [ 0, %bb.j ], [ %i.gh, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit.loopexit ]
  %i.gi = shl nuw i32 %.240, %.03043
  %i.gj = trunc i32 %i.gi to i8
  %i.gk = add i8 %i.az, %i.gj                     ; 2 uses
  store i8 %i.gk, ptr %i.ay, align 1, !tbaa !37
  %indvars.iv.next.a = add nsw i64 %indvars.iv, 6 ; 2 uses
  %i.gl = add nsw i32 %.03043, -1
  %.not = icmp eq i32 %.03043, 0
  br i1 %.not, label %bb.g, label %bb.h, !llvm.loop !110
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv11xfeatures2dL12pixelTests16ERKNS_3MatERKSt6vectorINS_8KeyPointESaIS5_EERKNS_12_OutputArrayERKS4_IiSaIiEEbi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, i1 noundef zeroext %4, i32 noundef %5) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !111
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70, !noalias !111
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.g = load ptr, ptr %1, align 8, !tbaa !76     ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 28
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 128
  %.not124.i = icmp slt i32 %5, 0
  %i.p = sub nsw i32 0, %5
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = sext i32 %i.p to i64                     ; 4 uses
  %i.t = add nuw i32 %5, 1                        ; 2 uses
  %min.iters.check = icmp ult i32 %5, 4
  %i.u = shl nuw i32 %5, 1
  %i.v = and i32 %i.u, -8
  %n.vec = zext i32 %i.v to i64                   ; 2 uses
  %i.w = add nsw i64 %n.vec, %i.s
  br label %bb.d

._crit_edge:                                      ; preds = %bb.e, %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv53 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next54, %bb.e ] ; 3 uses
  %i.x = phi ptr [ %i.g, %.lr.ph ], [ %i.ar, %bb.e ]
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.z = load i64, ptr %i.o, align 8, !tbaa !50
  %i.aa = mul i64 %i.z, %indvars.iv53
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [28 x i8], ptr %i.x, i64 %indvars.iv53 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !77
  %i.af = fmul float %i.ae, f0x3C8EFA35
  %i.ag = fpext float %i.af to double             ; 2 uses
  %i.ah = call double @cos(double noundef %i.ag) #21
  %i.ai = call double @sin(double noundef %i.ag) #21
  %i.aj = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.ah, i64 1
  %i.al = fptrunc <2 x double> %i.ak to <2 x float> ; 4 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.an = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.ao = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.f

bb.e:                                             ; preds = %bb.g
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.ar = load ptr, ptr %1, align 8, !tbaa !76    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 28
  %sext = shl i64 %i.av, 32
  %i.aw = ashr exact i64 %sext, 32
  %i.ax = icmp slt i64 %indvars.iv.next54, %i.aw
  br i1 %i.ax, label %bb.d, label %._crit_edge, !llvm.loop !114

bb.f:                                             ; preds = %bb.d, %bb.g
  %indvars.iv50 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next51, %bb.g ] ; 2 uses
  %.03244 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.a, %bb.g ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv50 ; 2 uses
  store i8 0, ptr %i.ay, align 1, !tbaa !37
  br label %bb.h

bb.g:                                             ; preds = %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next51, 16
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !115

bb.h:                                             ; preds = %bb.f, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit
  %i.az = phi i8 [ 0, %bb.f ], [ %i.gk, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit ]
  %indvars.iv = phi i64 [ %.03244, %bb.f ], [ %indvars.iv.next.a, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit ] ; 2 uses
  %.03043 = phi i32 [ 7, %bb.f ], [ %i.gl, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit ] ; 3 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !38
  %i.bb = getelementptr [4 x i8], ptr %i.ba, i64 %indvars.iv ; 6 uses
  %i.bc = load <2 x i32>, ptr %i.bb, align 4, !tbaa !8
  %i.bd = getelementptr i8, ptr %i.bb, i64 8
  %i.be = getelementptr i8, ptr %i.bb, i64 12
  %i.bf = getelementptr i8, ptr %i.bb, i64 20
  %i.bg = load <4 x i32>, ptr %i.bd, align 4, !tbaa !8 ; 2 uses
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !8
  %i.bi = load i32, ptr %i.be, align 4, !tbaa !8
  %i.bj = shufflevector <4 x i32> %i.bg, <4 x i32> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bk = shufflevector <2 x i32> %i.bc, <2 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.bl = insertelement <4 x i32> %i.bk, i32 %i.bh, i64 0
  %i.bm = insertelement <4 x i32> %i.bl, i32 %i.bi, i64 1
  br i1 %4, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bn = load i32, ptr %i.bb, align 4, !tbaa !8
  %i.bo = getelementptr i8, ptr %i.bb, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !8
  %i.bq = sitofp i32 %i.bn to float
  %i.br = sitofp i32 %i.bp to float               ; 2 uses
  %i.bs = fneg float %i.br
  %i.bt = sitofp <2 x i32> %i.bj to <2 x float>   ; 2 uses
  %i.bu = shufflevector <4 x i32> %i.bg, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.bv = sitofp <2 x i32> %i.bu to <2 x float>   ; 2 uses
  %i.bw = fneg <2 x float> %i.bv
  %i.bx = fmul <2 x float> %i.ao, %i.bw
  %i.by = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.ap, <2 x float> %i.bx)
  %i.bz = fptosi <2 x float> %i.by to <2 x i32>
  %i.ca = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.bz, <2 x i32> splat (i32 -24))
  %i.cb = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ca, <2 x i32> splat (i32 24))
  %i.cc = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.cd = insertelement <4 x float> %i.cc, float %i.bs, i64 2
  %i.ce = insertelement <4 x float> %i.cd, float %i.br, i64 3
  %i.cf = fmul <4 x float> %i.an, %i.ce
  %i.cg = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ch = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.cj = shufflevector <4 x float> %i.cg, <4 x float> %i.ci, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ck = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> %i.am, <4 x float> %i.cf)
  %i.cl = fptosi <4 x float> %i.ck to <4 x i32>
  %i.cm = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cl, <4 x i32> splat (i32 -24))
  %i.cn = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cm, <4 x i32> splat (i32 24))
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.co = phi <2 x i32> [ %i.cb, %bb.i ], [ %i.bj, %bb.h ]
  %i.cp = phi <4 x i32> [ %i.cn, %bb.i ], [ %i.bm, %bb.h ] ; 4 uses
  br i1 %.not124.i, label %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit, label %.lr.ph127.i

.lr.ph127.i:                                      ; preds = %bb.j
  %i.cq = extractelement <4 x i32> %i.cp, i64 0
  %i.cr = load <2 x float>, ptr %i.ac, align 4, !tbaa !41
  %i.cs = fpext <2 x float> %i.cr to <2 x double>
  %i.ct = fadd <2 x double> %i.cs, splat (double 5.000000e-01) ; 2 uses
  %i.cu = extractelement <2 x double> %i.ct, i64 1
  %i.cv = fptosi double %i.cu to i32              ; 3 uses
  %i.cw = add nsw i32 %i.cq, %i.cv
  %i.cx = extractelement <2 x double> %i.ct, i64 0
  %i.cy = fptosi double %i.cx to i32              ; 2 uses
  %i.cz = extractelement <4 x i32> %i.cp, i64 1
  %i.da = add nsw i32 %i.cz, %i.cv
  %i.db = extractelement <4 x i32> %i.cp, i64 3
  %i.dc = add nsw i32 %i.db, %i.cv
  %i.dd = extractelement <4 x i32> %i.cp, i64 2
  %i.de = add nsw i32 %i.dd, %i.cy
  %i.df = load ptr, ptr %i.q, align 8, !tbaa !43  ; 3 uses
  %i.dg = load i64, ptr %i.r, align 8, !tbaa !50  ; 3 uses
  %i.dh = sext i32 %i.de to i64
  %i.di = insertelement <2 x i32> poison, i32 %i.cy, i64 0
  %i.dj = shufflevector <2 x i32> %i.di, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dk = add nsw <2 x i32> %i.co, %i.dj          ; 2 uses
  %i.dl = sext i32 %i.dc to i64
  %i.dm = sext i32 %i.da to i64
  %i.dn = sext i32 %i.cw to i64
  %invariant.gep141.i = getelementptr i8, ptr %i.df, i64 %i.dh
  %i.do = extractelement <2 x i32> %i.dk, i64 0
  %i.dp = sext i32 %i.do to i64
  %invariant.gep.i = getelementptr i8, ptr %i.df, i64 %i.dp
  %i.dq = extractelement <2 x i32> %i.dk, i64 1
  %i.dr = sext i32 %i.dq to i64
  %invariant.gep144.i = getelementptr i8, ptr %i.df, i64 %i.dr
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph127.i
  %indvars.iv130.i = phi i64 [ %i.s, %.lr.ph127.i ], [ %indvars.iv.next131.i, %._crit_edge.i ] ; 4 uses
  %i.ds = phi <2 x i32> [ zeroinitializer, %.lr.ph127.i ], [ %i.ge, %._crit_edge.i ] ; 2 uses
  %i.dt = add nsw i64 %indvars.iv130.i, %i.dl
  %i.du = mul i64 %i.dt, %i.dg
  %i.dv = add nsw i64 %indvars.iv130.i, %i.dm
  %i.dw = mul i64 %i.dv, %i.dg
  %i.dx = add nsw i64 %indvars.iv130.i, %i.dn
  %i.dy = mul i64 %i.dx, %i.dg
  %gep142.i = getelementptr i8, ptr %invariant.gep141.i, i64 %i.du ; 2 uses
  %gep143.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.dw ; 2 uses
  %gep145.i = getelementptr i8, ptr %invariant.gep144.i, i64 %i.dy ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %middle.block, %.lr.ph.i
  %indvars.iv.i.ph = phi i64 [ %i.s, %.lr.ph.i ], [ %i.w, %middle.block ]
  %.ph = phi <2 x i32> [ %i.ds, %.lr.ph.i ], [ %i.fn, %middle.block ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %i.dz = shufflevector <2 x i32> %i.ds, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ea = shufflevector <4 x i32> %i.dz, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.eb = shufflevector <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> %i.dz, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ea, %vector.ph ], [ %i.et, %vector.body ]
  %vec.phi58 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.eu, %vector.body ]
  %vec.phi59 = phi <4 x i32> [ %i.eb, %vector.ph ], [ %i.fh, %vector.body ]
  %vec.phi60 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fi, %vector.body ]
  %i.ec = add i64 %index, %i.s                    ; 3 uses
  %i.ed = getelementptr i8, ptr %gep142.i, i64 %i.ec ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 4
  %wide.load = load <4 x i8>, ptr %i.ed, align 1, !tbaa !37
  %wide.load61 = load <4 x i8>, ptr %i.ee, align 1, !tbaa !37
  %i.ef = zext <4 x i8> %wide.load to <4 x i32>
  %i.eg = zext <4 x i8> %wide.load61 to <4 x i32>
  %i.eh = getelementptr i8, ptr %gep143.i, i64 %i.ec ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 4
  %wide.load62 = load <4 x i8>, ptr %i.eh, align 1, !tbaa !37
  %wide.load63 = load <4 x i8>, ptr %i.ei, align 1, !tbaa !37
  %i.ej = zext <4 x i8> %wide.load62 to <4 x i32> ; 2 uses
  %i.ek = zext <4 x i8> %wide.load63 to <4 x i32> ; 2 uses
  %i.el = sub nsw <4 x i32> %i.ef, %i.ej
  %i.em = sub nsw <4 x i32> %i.eg, %i.ek
  %i.en = sitofp <4 x i32> %i.el to <4 x double>  ; 2 uses
  %i.eo = sitofp <4 x i32> %i.em to <4 x double>  ; 2 uses
  %i.ep = fmul nnan <4 x double> %i.en, %i.en
  %i.eq = fmul nnan <4 x double> %i.eo, %i.eo
  %i.er = fptosi <4 x double> %i.ep to <4 x i32>
  %i.es = fptosi <4 x double> %i.eq to <4 x i32>
  %i.et = add <4 x i32> %vec.phi, %i.er           ; 2 uses
  %i.eu = add <4 x i32> %vec.phi58, %i.es         ; 2 uses
  %i.ev = getelementptr i8, ptr %gep145.i, i64 %i.ec ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 4
  %wide.load64 = load <4 x i8>, ptr %i.ev, align 1, !tbaa !37
  %wide.load65 = load <4 x i8>, ptr %i.ew, align 1, !tbaa !37
  %i.ex = zext <4 x i8> %wide.load64 to <4 x i32>
  %i.ey = zext <4 x i8> %wide.load65 to <4 x i32>
  %i.ez = sub nsw <4 x i32> %i.ex, %i.ej
  %i.fa = sub nsw <4 x i32> %i.ey, %i.ek
  %i.fb = sitofp <4 x i32> %i.ez to <4 x double>  ; 2 uses
  %i.fc = sitofp <4 x i32> %i.fa to <4 x double>  ; 2 uses
  %i.fd = fmul nnan <4 x double> %i.fb, %i.fb
  %i.fe = fmul nnan <4 x double> %i.fc, %i.fc
  %i.ff = fptosi <4 x double> %i.fd to <4 x i32>
  %i.fg = fptosi <4 x double> %i.fe to <4 x i32>
  %i.fh = add <4 x i32> %vec.phi59, %i.ff         ; 2 uses
  %i.fi = add <4 x i32> %vec.phi60, %i.fg         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.eu, %i.et
  %i.fk = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %bin.rdx66 = add <4 x i32> %i.fi, %i.fh
  %i.fl = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx66)
  %i.fm = insertelement <2 x i32> poison, i32 %i.fk, i64 0
  %i.fn = insertelement <2 x i32> %i.fm, i32 %i.fl, i64 1
  br label %scalar.ph.preheader

._crit_edge.i:                                    ; preds = %scalar.ph
  %indvars.iv.next131.i = add nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %lftr.wideiv133.i = trunc i64 %indvars.iv.next131.i to i32
  %exitcond134.not.i = icmp eq i32 %i.t, %lftr.wideiv133.i
  br i1 %exitcond134.not.i, label %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit.loopexit, label %.lr.ph.i, !llvm.loop !51

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.fo = phi <2 x i32> [ %i.ge, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %gep.i = getelementptr i8, ptr %gep142.i, i64 %indvars.iv.i
  %i.fp = load i8, ptr %gep.i, align 1, !tbaa !37
  %gep138.i = getelementptr i8, ptr %gep143.i, i64 %indvars.iv.i
  %i.fq = load i8, ptr %gep138.i, align 1, !tbaa !37
  %i.fr = zext i8 %i.fq to i32                    ; 2 uses
  %gep140.i = getelementptr i8, ptr %gep145.i, i64 %indvars.iv.i
  %i.fs = load i8, ptr %gep140.i, align 1, !tbaa !37
  %i.ft = zext i8 %i.fs to i32
  %i.fu = zext i8 %i.fp to i32
  %i.fv = sub nsw i32 %i.ft, %i.fr
  %i.fw = sub nsw i32 %i.fu, %i.fr
  %i.fx = trunc nsw i32 %i.fw to i16
  %i.fy = insertelement <2 x i16> poison, i16 %i.fx, i64 0
  %i.fz = trunc nsw i32 %i.fv to i16
  %i.ga = insertelement <2 x i16> %i.fy, i16 %i.fz, i64 1
  %i.gb = sitofp <2 x i16> %i.ga to <2 x double>  ; 2 uses
  %i.gc = fmul nnan <2 x double> %i.gb, %i.gb
  %i.gd = fptosi <2 x double> %i.gc to <2 x i32>
  %i.ge = add nsw <2 x i32> %i.fo, %i.gd          ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.t, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !117

_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit.loopexit: ; preds = %._crit_edge.i
  %shift = shufflevector <2 x i32> %i.ge, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.gf = icmp slt <2 x i32> %i.ge, %shift
  %i.gg = extractelement <2 x i1> %i.gf, i64 0
  %i.gh = zext i1 %i.gg to i32
  br label %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit

_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit: ; preds = %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit.loopexit, %bb.j
  %.240 = phi i32 [ 0, %bb.j ], [ %i.gh, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit.loopexit ]
  %i.gi = shl nuw i32 %.240, %.03043
  %i.gj = trunc i32 %i.gi to i8
  %i.gk = add i8 %i.az, %i.gj                     ; 2 uses
  store i8 %i.gk, ptr %i.ay, align 1, !tbaa !37
  %indvars.iv.next.a = add nsw i64 %indvars.iv, 6 ; 2 uses
  %i.gl = add nsw i32 %.03043, -1
  %.not = icmp eq i32 %.03043, 0
  br i1 %.not, label %bb.g, label %bb.h, !llvm.loop !118
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv11xfeatures2dL12pixelTests32ERKNS_3MatERKSt6vectorINS_8KeyPointESaIS5_EERKNS_12_OutputArrayERKS4_IiSaIiEEbi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, i1 noundef zeroext %4, i32 noundef %5) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !119
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70, !noalias !119
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.g = load ptr, ptr %1, align 8, !tbaa !76     ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 28
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 128
  %.not124.i = icmp slt i32 %5, 0
  %i.p = sub nsw i32 0, %5
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = sext i32 %i.p to i64                     ; 4 uses
  %i.t = add nuw i32 %5, 1                        ; 2 uses
  %min.iters.check = icmp ult i32 %5, 4
  %i.u = shl nuw i32 %5, 1
  %i.v = and i32 %i.u, -8
  %n.vec = zext i32 %i.v to i64                   ; 2 uses
  %i.w = add nsw i64 %n.vec, %i.s
  br label %bb.d

._crit_edge:                                      ; preds = %bb.e, %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv53 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next54, %bb.e ] ; 3 uses
  %i.x = phi ptr [ %i.g, %.lr.ph ], [ %i.ar, %bb.e ]
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.z = load i64, ptr %i.o, align 8, !tbaa !50
  %i.aa = mul i64 %i.z, %indvars.iv53
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [28 x i8], ptr %i.x, i64 %indvars.iv53 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !77
  %i.af = fmul float %i.ae, f0x3C8EFA35
  %i.ag = fpext float %i.af to double             ; 2 uses
  %i.ah = call double @cos(double noundef %i.ag) #21
  %i.ai = call double @sin(double noundef %i.ag) #21
  %i.aj = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.ah, i64 1
  %i.al = fptrunc <2 x double> %i.ak to <2 x float> ; 4 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.an = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.ao = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.f

bb.e:                                             ; preds = %bb.g
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.ar = load ptr, ptr %1, align 8, !tbaa !76    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 28
  %sext = shl i64 %i.av, 32
  %i.aw = ashr exact i64 %sext, 32
  %i.ax = icmp slt i64 %indvars.iv.next54, %i.aw
  br i1 %i.ax, label %bb.d, label %._crit_edge, !llvm.loop !122

bb.f:                                             ; preds = %bb.d, %bb.g
  %indvars.iv50 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next51, %bb.g ] ; 2 uses
  %.03244 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.a, %bb.g ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv50 ; 2 uses
  store i8 0, ptr %i.ay, align 1, !tbaa !37
  br label %bb.h

bb.g:                                             ; preds = %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next51, 32
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !123

bb.h:                                             ; preds = %bb.f, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit
  %i.az = phi i8 [ 0, %bb.f ], [ %i.gk, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit ]
  %indvars.iv = phi i64 [ %.03244, %bb.f ], [ %indvars.iv.next.a, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit ] ; 2 uses
  %.03043 = phi i32 [ 7, %bb.f ], [ %i.gl, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit ] ; 3 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !38
  %i.bb = getelementptr [4 x i8], ptr %i.ba, i64 %indvars.iv ; 6 uses
  %i.bc = load <2 x i32>, ptr %i.bb, align 4, !tbaa !8
  %i.bd = getelementptr i8, ptr %i.bb, i64 8
  %i.be = getelementptr i8, ptr %i.bb, i64 12
  %i.bf = getelementptr i8, ptr %i.bb, i64 20
  %i.bg = load <4 x i32>, ptr %i.bd, align 4, !tbaa !8 ; 2 uses
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !8
  %i.bi = load i32, ptr %i.be, align 4, !tbaa !8
  %i.bj = shufflevector <4 x i32> %i.bg, <4 x i32> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bk = shufflevector <2 x i32> %i.bc, <2 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.bl = insertelement <4 x i32> %i.bk, i32 %i.bh, i64 0
  %i.bm = insertelement <4 x i32> %i.bl, i32 %i.bi, i64 1
  br i1 %4, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bn = load i32, ptr %i.bb, align 4, !tbaa !8
  %i.bo = getelementptr i8, ptr %i.bb, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !8
  %i.bq = sitofp i32 %i.bn to float
  %i.br = sitofp i32 %i.bp to float               ; 2 uses
  %i.bs = fneg float %i.br
  %i.bt = sitofp <2 x i32> %i.bj to <2 x float>   ; 2 uses
  %i.bu = shufflevector <4 x i32> %i.bg, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.bv = sitofp <2 x i32> %i.bu to <2 x float>   ; 2 uses
  %i.bw = fneg <2 x float> %i.bv
  %i.bx = fmul <2 x float> %i.ao, %i.bw
  %i.by = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.ap, <2 x float> %i.bx)
  %i.bz = fptosi <2 x float> %i.by to <2 x i32>
  %i.ca = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.bz, <2 x i32> splat (i32 -24))
  %i.cb = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ca, <2 x i32> splat (i32 24))
  %i.cc = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.cd = insertelement <4 x float> %i.cc, float %i.bs, i64 2
  %i.ce = insertelement <4 x float> %i.cd, float %i.br, i64 3
  %i.cf = fmul <4 x float> %i.an, %i.ce
  %i.cg = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ch = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.cj = shufflevector <4 x float> %i.cg, <4 x float> %i.ci, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ck = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> %i.am, <4 x float> %i.cf)
  %i.cl = fptosi <4 x float> %i.ck to <4 x i32>
  %i.cm = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cl, <4 x i32> splat (i32 -24))
  %i.cn = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cm, <4 x i32> splat (i32 24))
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.co = phi <2 x i32> [ %i.cb, %bb.i ], [ %i.bj, %bb.h ]
  %i.cp = phi <4 x i32> [ %i.cn, %bb.i ], [ %i.bm, %bb.h ] ; 4 uses
  br i1 %.not124.i, label %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit, label %.lr.ph127.i

.lr.ph127.i:                                      ; preds = %bb.j
  %i.cq = extractelement <4 x i32> %i.cp, i64 0
  %i.cr = load <2 x float>, ptr %i.ac, align 4, !tbaa !41
  %i.cs = fpext <2 x float> %i.cr to <2 x double>
  %i.ct = fadd <2 x double> %i.cs, splat (double 5.000000e-01) ; 2 uses
  %i.cu = extractelement <2 x double> %i.ct, i64 1
  %i.cv = fptosi double %i.cu to i32              ; 3 uses
  %i.cw = add nsw i32 %i.cq, %i.cv
  %i.cx = extractelement <2 x double> %i.ct, i64 0
  %i.cy = fptosi double %i.cx to i32              ; 2 uses
  %i.cz = extractelement <4 x i32> %i.cp, i64 1
  %i.da = add nsw i32 %i.cz, %i.cv
  %i.db = extractelement <4 x i32> %i.cp, i64 3
  %i.dc = add nsw i32 %i.db, %i.cv
  %i.dd = extractelement <4 x i32> %i.cp, i64 2
  %i.de = add nsw i32 %i.dd, %i.cy
  %i.df = load ptr, ptr %i.q, align 8, !tbaa !43  ; 3 uses
  %i.dg = load i64, ptr %i.r, align 8, !tbaa !50  ; 3 uses
  %i.dh = sext i32 %i.de to i64
  %i.di = insertelement <2 x i32> poison, i32 %i.cy, i64 0
  %i.dj = shufflevector <2 x i32> %i.di, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dk = add nsw <2 x i32> %i.co, %i.dj          ; 2 uses
  %i.dl = sext i32 %i.dc to i64
  %i.dm = sext i32 %i.da to i64
  %i.dn = sext i32 %i.cw to i64
  %invariant.gep141.i = getelementptr i8, ptr %i.df, i64 %i.dh
  %i.do = extractelement <2 x i32> %i.dk, i64 0
  %i.dp = sext i32 %i.do to i64
  %invariant.gep.i = getelementptr i8, ptr %i.df, i64 %i.dp
  %i.dq = extractelement <2 x i32> %i.dk, i64 1
  %i.dr = sext i32 %i.dq to i64
  %invariant.gep144.i = getelementptr i8, ptr %i.df, i64 %i.dr
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph127.i
  %indvars.iv130.i = phi i64 [ %i.s, %.lr.ph127.i ], [ %indvars.iv.next131.i, %._crit_edge.i ] ; 4 uses
  %i.ds = phi <2 x i32> [ zeroinitializer, %.lr.ph127.i ], [ %i.ge, %._crit_edge.i ] ; 2 uses
  %i.dt = add nsw i64 %indvars.iv130.i, %i.dl
  %i.du = mul i64 %i.dt, %i.dg
  %i.dv = add nsw i64 %indvars.iv130.i, %i.dm
  %i.dw = mul i64 %i.dv, %i.dg
  %i.dx = add nsw i64 %indvars.iv130.i, %i.dn
  %i.dy = mul i64 %i.dx, %i.dg
  %gep142.i = getelementptr i8, ptr %invariant.gep141.i, i64 %i.du ; 2 uses
  %gep143.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.dw ; 2 uses
  %gep145.i = getelementptr i8, ptr %invariant.gep144.i, i64 %i.dy ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %middle.block, %.lr.ph.i
  %indvars.iv.i.ph = phi i64 [ %i.s, %.lr.ph.i ], [ %i.w, %middle.block ]
  %.ph = phi <2 x i32> [ %i.ds, %.lr.ph.i ], [ %i.fn, %middle.block ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %i.dz = shufflevector <2 x i32> %i.ds, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ea = shufflevector <4 x i32> %i.dz, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.eb = shufflevector <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> %i.dz, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ea, %vector.ph ], [ %i.et, %vector.body ]
  %vec.phi58 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.eu, %vector.body ]
  %vec.phi59 = phi <4 x i32> [ %i.eb, %vector.ph ], [ %i.fh, %vector.body ]
  %vec.phi60 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fi, %vector.body ]
  %i.ec = add i64 %index, %i.s                    ; 3 uses
  %i.ed = getelementptr i8, ptr %gep142.i, i64 %i.ec ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 4
  %wide.load = load <4 x i8>, ptr %i.ed, align 1, !tbaa !37
  %wide.load61 = load <4 x i8>, ptr %i.ee, align 1, !tbaa !37
  %i.ef = zext <4 x i8> %wide.load to <4 x i32>
  %i.eg = zext <4 x i8> %wide.load61 to <4 x i32>
  %i.eh = getelementptr i8, ptr %gep143.i, i64 %i.ec ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 4
  %wide.load62 = load <4 x i8>, ptr %i.eh, align 1, !tbaa !37
  %wide.load63 = load <4 x i8>, ptr %i.ei, align 1, !tbaa !37
  %i.ej = zext <4 x i8> %wide.load62 to <4 x i32> ; 2 uses
  %i.ek = zext <4 x i8> %wide.load63 to <4 x i32> ; 2 uses
  %i.el = sub nsw <4 x i32> %i.ef, %i.ej
  %i.em = sub nsw <4 x i32> %i.eg, %i.ek
  %i.en = sitofp <4 x i32> %i.el to <4 x double>  ; 2 uses
  %i.eo = sitofp <4 x i32> %i.em to <4 x double>  ; 2 uses
  %i.ep = fmul nnan <4 x double> %i.en, %i.en
  %i.eq = fmul nnan <4 x double> %i.eo, %i.eo
  %i.er = fptosi <4 x double> %i.ep to <4 x i32>
  %i.es = fptosi <4 x double> %i.eq to <4 x i32>
  %i.et = add <4 x i32> %vec.phi, %i.er           ; 2 uses
  %i.eu = add <4 x i32> %vec.phi58, %i.es         ; 2 uses
  %i.ev = getelementptr i8, ptr %gep145.i, i64 %i.ec ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 4
  %wide.load64 = load <4 x i8>, ptr %i.ev, align 1, !tbaa !37
  %wide.load65 = load <4 x i8>, ptr %i.ew, align 1, !tbaa !37
  %i.ex = zext <4 x i8> %wide.load64 to <4 x i32>
  %i.ey = zext <4 x i8> %wide.load65 to <4 x i32>
  %i.ez = sub nsw <4 x i32> %i.ex, %i.ej
  %i.fa = sub nsw <4 x i32> %i.ey, %i.ek
  %i.fb = sitofp <4 x i32> %i.ez to <4 x double>  ; 2 uses
  %i.fc = sitofp <4 x i32> %i.fa to <4 x double>  ; 2 uses
  %i.fd = fmul nnan <4 x double> %i.fb, %i.fb
  %i.fe = fmul nnan <4 x double> %i.fc, %i.fc
  %i.ff = fptosi <4 x double> %i.fd to <4 x i32>
  %i.fg = fptosi <4 x double> %i.fe to <4 x i32>
  %i.fh = add <4 x i32> %vec.phi59, %i.ff         ; 2 uses
  %i.fi = add <4 x i32> %vec.phi60, %i.fg         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.eu, %i.et
  %i.fk = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %bin.rdx66 = add <4 x i32> %i.fi, %i.fh
  %i.fl = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx66)
  %i.fm = insertelement <2 x i32> poison, i32 %i.fk, i64 0
  %i.fn = insertelement <2 x i32> %i.fm, i32 %i.fl, i64 1
  br label %scalar.ph.preheader

._crit_edge.i:                                    ; preds = %scalar.ph
  %indvars.iv.next131.i = add nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %lftr.wideiv133.i = trunc i64 %indvars.iv.next131.i to i32
  %exitcond134.not.i = icmp eq i32 %i.t, %lftr.wideiv133.i
  br i1 %exitcond134.not.i, label %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit.loopexit, label %.lr.ph.i, !llvm.loop !51

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.fo = phi <2 x i32> [ %i.ge, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %gep.i = getelementptr i8, ptr %gep142.i, i64 %indvars.iv.i
  %i.fp = load i8, ptr %gep.i, align 1, !tbaa !37
  %gep138.i = getelementptr i8, ptr %gep143.i, i64 %indvars.iv.i
  %i.fq = load i8, ptr %gep138.i, align 1, !tbaa !37
  %i.fr = zext i8 %i.fq to i32                    ; 2 uses
  %gep140.i = getelementptr i8, ptr %gep145.i, i64 %indvars.iv.i
  %i.fs = load i8, ptr %gep140.i, align 1, !tbaa !37
  %i.ft = zext i8 %i.fs to i32
  %i.fu = zext i8 %i.fp to i32
  %i.fv = sub nsw i32 %i.ft, %i.fr
  %i.fw = sub nsw i32 %i.fu, %i.fr
  %i.fx = trunc nsw i32 %i.fw to i16
  %i.fy = insertelement <2 x i16> poison, i16 %i.fx, i64 0
  %i.fz = trunc nsw i32 %i.fv to i16
  %i.ga = insertelement <2 x i16> %i.fy, i16 %i.fz, i64 1
  %i.gb = sitofp <2 x i16> %i.ga to <2 x double>  ; 2 uses
  %i.gc = fmul nnan <2 x double> %i.gb, %i.gb
  %i.gd = fptosi <2 x double> %i.gc to <2 x i32>
  %i.ge = add nsw <2 x i32> %i.fo, %i.gd          ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.t, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !125

_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit.loopexit: ; preds = %._crit_edge.i
  %shift = shufflevector <2 x i32> %i.ge, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.gf = icmp slt <2 x i32> %i.ge, %shift
  %i.gg = extractelement <2 x i1> %i.gf, i64 0
  %i.gh = zext i1 %i.gg to i32
  br label %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit

_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit: ; preds = %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit.loopexit, %bb.j
  %.240 = phi i32 [ 0, %bb.j ], [ %i.gh, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit.loopexit ]
  %i.gi = shl nuw i32 %.240, %.03043
  %i.gj = trunc i32 %i.gi to i8
  %i.gk = add i8 %i.az, %i.gj                     ; 2 uses
  store i8 %i.gk, ptr %i.ay, align 1, !tbaa !37
  %indvars.iv.next.a = add nsw i64 %indvars.iv, 6 ; 2 uses
  %i.gl = add nsw i32 %.03043, -1
  %.not = icmp eq i32 %.03043, 0
  br i1 %.not, label %bb.g, label %bb.h, !llvm.loop !126
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv11xfeatures2dL12pixelTests64ERKNS_3MatERKSt6vectorINS_8KeyPointESaIS5_EERKNS_12_OutputArrayERKS4_IiSaIiEEbi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, i1 noundef zeroext %4, i32 noundef %5) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !127
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70, !noalias !127
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.g = load ptr, ptr %1, align 8, !tbaa !76     ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 28
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 128
  %.not124.i = icmp slt i32 %5, 0
  %i.p = sub nsw i32 0, %5
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = sext i32 %i.p to i64                     ; 4 uses
  %i.t = add nuw i32 %5, 1                        ; 2 uses
  %min.iters.check = icmp ult i32 %5, 4
  %i.u = shl nuw i32 %5, 1
  %i.v = and i32 %i.u, -8
  %n.vec = zext i32 %i.v to i64                   ; 2 uses
  %i.w = add nsw i64 %n.vec, %i.s
  br label %bb.d

._crit_edge:                                      ; preds = %bb.e, %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv53 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next54, %bb.e ] ; 3 uses
  %i.x = phi ptr [ %i.g, %.lr.ph ], [ %i.ar, %bb.e ]
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.z = load i64, ptr %i.o, align 8, !tbaa !50
  %i.aa = mul i64 %i.z, %indvars.iv53
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [28 x i8], ptr %i.x, i64 %indvars.iv53 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !77
  %i.af = fmul float %i.ae, f0x3C8EFA35
  %i.ag = fpext float %i.af to double             ; 2 uses
  %i.ah = call double @cos(double noundef %i.ag) #21
  %i.ai = call double @sin(double noundef %i.ag) #21
  %i.aj = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.ah, i64 1
  %i.al = fptrunc <2 x double> %i.ak to <2 x float> ; 4 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.an = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.ao = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.f

bb.e:                                             ; preds = %bb.g
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.ar = load ptr, ptr %1, align 8, !tbaa !76    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 28
  %sext = shl i64 %i.av, 32
  %i.aw = ashr exact i64 %sext, 32
  %i.ax = icmp slt i64 %indvars.iv.next54, %i.aw
  br i1 %i.ax, label %bb.d, label %._crit_edge, !llvm.loop !130

bb.f:                                             ; preds = %bb.d, %bb.g
  %indvars.iv50 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next51, %bb.g ] ; 2 uses
  %.03244 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.a, %bb.g ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv50 ; 2 uses
  store i8 0, ptr %i.ay, align 1, !tbaa !37
  br label %bb.h

bb.g:                                             ; preds = %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next51, 64
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !131

bb.h:                                             ; preds = %bb.f, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit
  %i.az = phi i8 [ 0, %bb.f ], [ %i.gk, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit ]
  %indvars.iv = phi i64 [ %.03244, %bb.f ], [ %indvars.iv.next.a, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit ] ; 2 uses
  %.03043 = phi i32 [ 7, %bb.f ], [ %i.gl, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit ] ; 3 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !38
  %i.bb = getelementptr [4 x i8], ptr %i.ba, i64 %indvars.iv ; 6 uses
  %i.bc = load <2 x i32>, ptr %i.bb, align 4, !tbaa !8
  %i.bd = getelementptr i8, ptr %i.bb, i64 8
  %i.be = getelementptr i8, ptr %i.bb, i64 12
  %i.bf = getelementptr i8, ptr %i.bb, i64 20
  %i.bg = load <4 x i32>, ptr %i.bd, align 4, !tbaa !8 ; 2 uses
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !8
  %i.bi = load i32, ptr %i.be, align 4, !tbaa !8
  %i.bj = shufflevector <4 x i32> %i.bg, <4 x i32> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bk = shufflevector <2 x i32> %i.bc, <2 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.bl = insertelement <4 x i32> %i.bk, i32 %i.bh, i64 0
  %i.bm = insertelement <4 x i32> %i.bl, i32 %i.bi, i64 1
  br i1 %4, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bn = load i32, ptr %i.bb, align 4, !tbaa !8
  %i.bo = getelementptr i8, ptr %i.bb, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !8
  %i.bq = sitofp i32 %i.bn to float
  %i.br = sitofp i32 %i.bp to float               ; 2 uses
  %i.bs = fneg float %i.br
  %i.bt = sitofp <2 x i32> %i.bj to <2 x float>   ; 2 uses
  %i.bu = shufflevector <4 x i32> %i.bg, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.bv = sitofp <2 x i32> %i.bu to <2 x float>   ; 2 uses
  %i.bw = fneg <2 x float> %i.bv
  %i.bx = fmul <2 x float> %i.ao, %i.bw
  %i.by = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.ap, <2 x float> %i.bx)
  %i.bz = fptosi <2 x float> %i.by to <2 x i32>
  %i.ca = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.bz, <2 x i32> splat (i32 -24))
  %i.cb = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ca, <2 x i32> splat (i32 24))
  %i.cc = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.cd = insertelement <4 x float> %i.cc, float %i.bs, i64 2
  %i.ce = insertelement <4 x float> %i.cd, float %i.br, i64 3
  %i.cf = fmul <4 x float> %i.an, %i.ce
  %i.cg = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ch = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.cj = shufflevector <4 x float> %i.cg, <4 x float> %i.ci, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ck = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> %i.am, <4 x float> %i.cf)
  %i.cl = fptosi <4 x float> %i.ck to <4 x i32>
  %i.cm = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cl, <4 x i32> splat (i32 -24))
  %i.cn = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cm, <4 x i32> splat (i32 24))
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.co = phi <2 x i32> [ %i.cb, %bb.i ], [ %i.bj, %bb.h ]
  %i.cp = phi <4 x i32> [ %i.cn, %bb.i ], [ %i.bm, %bb.h ] ; 4 uses
  br i1 %.not124.i, label %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit, label %.lr.ph127.i

.lr.ph127.i:                                      ; preds = %bb.j
  %i.cq = extractelement <4 x i32> %i.cp, i64 0
  %i.cr = load <2 x float>, ptr %i.ac, align 4, !tbaa !41
  %i.cs = fpext <2 x float> %i.cr to <2 x double>
  %i.ct = fadd <2 x double> %i.cs, splat (double 5.000000e-01) ; 2 uses
  %i.cu = extractelement <2 x double> %i.ct, i64 1
  %i.cv = fptosi double %i.cu to i32              ; 3 uses
  %i.cw = add nsw i32 %i.cq, %i.cv
  %i.cx = extractelement <2 x double> %i.ct, i64 0
  %i.cy = fptosi double %i.cx to i32              ; 2 uses
  %i.cz = extractelement <4 x i32> %i.cp, i64 1
  %i.da = add nsw i32 %i.cz, %i.cv
  %i.db = extractelement <4 x i32> %i.cp, i64 3
  %i.dc = add nsw i32 %i.db, %i.cv
  %i.dd = extractelement <4 x i32> %i.cp, i64 2
  %i.de = add nsw i32 %i.dd, %i.cy
  %i.df = load ptr, ptr %i.q, align 8, !tbaa !43  ; 3 uses
  %i.dg = load i64, ptr %i.r, align 8, !tbaa !50  ; 3 uses
  %i.dh = sext i32 %i.de to i64
  %i.di = insertelement <2 x i32> poison, i32 %i.cy, i64 0
  %i.dj = shufflevector <2 x i32> %i.di, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dk = add nsw <2 x i32> %i.co, %i.dj          ; 2 uses
  %i.dl = sext i32 %i.dc to i64
  %i.dm = sext i32 %i.da to i64
  %i.dn = sext i32 %i.cw to i64
  %invariant.gep141.i = getelementptr i8, ptr %i.df, i64 %i.dh
  %i.do = extractelement <2 x i32> %i.dk, i64 0
  %i.dp = sext i32 %i.do to i64
  %invariant.gep.i = getelementptr i8, ptr %i.df, i64 %i.dp
  %i.dq = extractelement <2 x i32> %i.dk, i64 1
  %i.dr = sext i32 %i.dq to i64
  %invariant.gep144.i = getelementptr i8, ptr %i.df, i64 %i.dr
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph127.i
  %indvars.iv130.i = phi i64 [ %i.s, %.lr.ph127.i ], [ %indvars.iv.next131.i, %._crit_edge.i ] ; 4 uses
  %i.ds = phi <2 x i32> [ zeroinitializer, %.lr.ph127.i ], [ %i.ge, %._crit_edge.i ] ; 2 uses
  %i.dt = add nsw i64 %indvars.iv130.i, %i.dl
  %i.du = mul i64 %i.dt, %i.dg
  %i.dv = add nsw i64 %indvars.iv130.i, %i.dm
  %i.dw = mul i64 %i.dv, %i.dg
  %i.dx = add nsw i64 %indvars.iv130.i, %i.dn
  %i.dy = mul i64 %i.dx, %i.dg
  %gep142.i = getelementptr i8, ptr %invariant.gep141.i, i64 %i.du ; 2 uses
  %gep143.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.dw ; 2 uses
  %gep145.i = getelementptr i8, ptr %invariant.gep144.i, i64 %i.dy ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %middle.block, %.lr.ph.i
  %indvars.iv.i.ph = phi i64 [ %i.s, %.lr.ph.i ], [ %i.w, %middle.block ]
  %.ph = phi <2 x i32> [ %i.ds, %.lr.ph.i ], [ %i.fn, %middle.block ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %i.dz = shufflevector <2 x i32> %i.ds, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ea = shufflevector <4 x i32> %i.dz, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.eb = shufflevector <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> %i.dz, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ea, %vector.ph ], [ %i.et, %vector.body ]
  %vec.phi58 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.eu, %vector.body ]
  %vec.phi59 = phi <4 x i32> [ %i.eb, %vector.ph ], [ %i.fh, %vector.body ]
  %vec.phi60 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fi, %vector.body ]
  %i.ec = add i64 %index, %i.s                    ; 3 uses
  %i.ed = getelementptr i8, ptr %gep142.i, i64 %i.ec ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 4
  %wide.load = load <4 x i8>, ptr %i.ed, align 1, !tbaa !37
  %wide.load61 = load <4 x i8>, ptr %i.ee, align 1, !tbaa !37
  %i.ef = zext <4 x i8> %wide.load to <4 x i32>
  %i.eg = zext <4 x i8> %wide.load61 to <4 x i32>
  %i.eh = getelementptr i8, ptr %gep143.i, i64 %i.ec ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 4
  %wide.load62 = load <4 x i8>, ptr %i.eh, align 1, !tbaa !37
  %wide.load63 = load <4 x i8>, ptr %i.ei, align 1, !tbaa !37
  %i.ej = zext <4 x i8> %wide.load62 to <4 x i32> ; 2 uses
  %i.ek = zext <4 x i8> %wide.load63 to <4 x i32> ; 2 uses
  %i.el = sub nsw <4 x i32> %i.ef, %i.ej
  %i.em = sub nsw <4 x i32> %i.eg, %i.ek
  %i.en = sitofp <4 x i32> %i.el to <4 x double>  ; 2 uses
  %i.eo = sitofp <4 x i32> %i.em to <4 x double>  ; 2 uses
  %i.ep = fmul nnan <4 x double> %i.en, %i.en
  %i.eq = fmul nnan <4 x double> %i.eo, %i.eo
  %i.er = fptosi <4 x double> %i.ep to <4 x i32>
  %i.es = fptosi <4 x double> %i.eq to <4 x i32>
  %i.et = add <4 x i32> %vec.phi, %i.er           ; 2 uses
  %i.eu = add <4 x i32> %vec.phi58, %i.es         ; 2 uses
  %i.ev = getelementptr i8, ptr %gep145.i, i64 %i.ec ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 4
  %wide.load64 = load <4 x i8>, ptr %i.ev, align 1, !tbaa !37
  %wide.load65 = load <4 x i8>, ptr %i.ew, align 1, !tbaa !37
  %i.ex = zext <4 x i8> %wide.load64 to <4 x i32>
  %i.ey = zext <4 x i8> %wide.load65 to <4 x i32>
  %i.ez = sub nsw <4 x i32> %i.ex, %i.ej
  %i.fa = sub nsw <4 x i32> %i.ey, %i.ek
  %i.fb = sitofp <4 x i32> %i.ez to <4 x double>  ; 2 uses
  %i.fc = sitofp <4 x i32> %i.fa to <4 x double>  ; 2 uses
  %i.fd = fmul nnan <4 x double> %i.fb, %i.fb
  %i.fe = fmul nnan <4 x double> %i.fc, %i.fc
  %i.ff = fptosi <4 x double> %i.fd to <4 x i32>
  %i.fg = fptosi <4 x double> %i.fe to <4 x i32>
  %i.fh = add <4 x i32> %vec.phi59, %i.ff         ; 2 uses
  %i.fi = add <4 x i32> %vec.phi60, %i.fg         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.eu, %i.et
  %i.fk = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %bin.rdx66 = add <4 x i32> %i.fi, %i.fh
  %i.fl = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx66)
  %i.fm = insertelement <2 x i32> poison, i32 %i.fk, i64 0
  %i.fn = insertelement <2 x i32> %i.fm, i32 %i.fl, i64 1
  br label %scalar.ph.preheader

._crit_edge.i:                                    ; preds = %scalar.ph
  %indvars.iv.next131.i = add nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %lftr.wideiv133.i = trunc i64 %indvars.iv.next131.i to i32
  %exitcond134.not.i = icmp eq i32 %i.t, %lftr.wideiv133.i
  br i1 %exitcond134.not.i, label %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit.loopexit, label %.lr.ph.i, !llvm.loop !51

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.fo = phi <2 x i32> [ %i.ge, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %gep.i = getelementptr i8, ptr %gep142.i, i64 %indvars.iv.i
  %i.fp = load i8, ptr %gep.i, align 1, !tbaa !37
  %gep138.i = getelementptr i8, ptr %gep143.i, i64 %indvars.iv.i
  %i.fq = load i8, ptr %gep138.i, align 1, !tbaa !37
  %i.fr = zext i8 %i.fq to i32                    ; 2 uses
  %gep140.i = getelementptr i8, ptr %gep145.i, i64 %indvars.iv.i
  %i.fs = load i8, ptr %gep140.i, align 1, !tbaa !37
  %i.ft = zext i8 %i.fs to i32
  %i.fu = zext i8 %i.fp to i32
  %i.fv = sub nsw i32 %i.ft, %i.fr
  %i.fw = sub nsw i32 %i.fu, %i.fr
  %i.fx = trunc nsw i32 %i.fw to i16
  %i.fy = insertelement <2 x i16> poison, i16 %i.fx, i64 0
  %i.fz = trunc nsw i32 %i.fv to i16
  %i.ga = insertelement <2 x i16> %i.fy, i16 %i.fz, i64 1
  %i.gb = sitofp <2 x i16> %i.ga to <2 x double>  ; 2 uses
  %i.gc = fmul nnan <2 x double> %i.gb, %i.gb
  %i.gd = fptosi <2 x double> %i.gc to <2 x i32>
  %i.ge = add nsw <2 x i32> %i.fo, %i.gd          ; 4 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.t, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !133

_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit.loopexit: ; preds = %._crit_edge.i
  %shift = shufflevector <2 x i32> %i.ge, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.gf = icmp slt <2 x i32> %i.ge, %shift
  %i.gg = extractelement <2 x i1> %i.gf, i64 0
  %i.gh = zext i1 %i.gg to i32
  br label %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit

_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit: ; preds = %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit.loopexit, %bb.j
  %.240 = phi i32 [ 0, %bb.j ], [ %i.gh, %_ZN2cv11xfeatures2d12CalcuateSumsEiRKSt6vectorIiSaIiEEbRKNS_3MatERKNS_8KeyPointERiSC_ffi.exit.loopexit ]
  %i.gi = shl nuw i32 %.240, %.03043
  %i.gj = trunc i32 %i.gi to i8
  %i.gk = add i8 %i.az, %i.gj                     ; 2 uses
  store i8 %i.gk, ptr %i.ay, align 1, !tbaa !37
  %indvars.iv.next.a = add nsw i64 %indvars.iv, 6 ; 2 uses
  %i.gl = add nsw i32 %.03043, -1
  %.not = icmp eq i32 %.03043, 0
  br i1 %.not, label %bb.g, label %bb.h, !llvm.loop !134
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !35
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.11) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.d, ptr %i.a, align 8, !tbaa !50
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !36
  %i.g = load i64, ptr %i.a, align 8, !tbaa !50
  store i64 %i.g, ptr %i.b, align 8, !tbaa !37
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !37
  store i8 %i.i, ptr %i.h, align 1, !tbaa !37
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !30
  %i.l = load ptr, ptr %0, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv11xfeatures2d28LATCHDescriptorExtractorImpl17setSamplingPointsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !38   ; 7 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp ult i64 %i.g, 12288
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noalias noundef nonnull dereferenceable(12288) ptr @_Znwm(i64 noundef 12288) #24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12288) %i.i, ptr noundef nonnull align 16 dereferenceable(12288) @__const._ZN2cv11xfeatures2d28LATCHDescriptorExtractorImpl17setSamplingPointsEv.sampling_points_arr, i64 12288, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #23
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.c, %bb.b
  store ptr %i.i, ptr %i.a, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 12288 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !64
  store ptr %i.k, ptr %i.b, align 8, !tbaa !63
  br label %_ZNSt6vectorIiSaIiEE13_M_assign_auxIPiEEvT_S4_St20forward_iterator_tag.exit

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64   ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.f                       ; 9 uses
  %.not.i = icmp ult i64 %i.o, 12288
  br i1 %.not.i, label %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12288) %i.d, ptr noundef nonnull align 16 dereferenceable(12288) @__const._ZN2cv11xfeatures2d28LATCHDescriptorExtractorImpl17setSamplingPointsEv.sampling_points_arr, i64 12288, i1 false)
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 12288 ; 2 uses
  %.not.i16.i = icmp eq ptr %.pre.i, %i.p
  br i1 %.not.i16.i, label %_ZNSt6vectorIiSaIiEE13_M_assign_auxIPiEEvT_S4_St20forward_iterator_tag.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.p, ptr %i.l, align 8, !tbaa !64
  br label %_ZNSt6vectorIiSaIiEE13_M_assign_auxIPiEEvT_S4_St20forward_iterator_tag.exit

_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.d
  %.sink.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN2cv11xfeatures2d28LATCHDescriptorExtractorImpl17setSamplingPointsEv.sampling_points_arr, i64 %i.o ; 2 uses
  %i.q = icmp samesign ugt i64 %i.o, 4
  br i1 %i.q, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit17.i, label %bb.f, !prof !65

bb.f:                                             ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.r = icmp eq i64 %i.o, 4
  br i1 %i.r, label %bb.g, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit17.i.thread

bb.g:                                             ; preds = %bb.f
  store i32 13, ptr %i.d, align 4, !tbaa !8
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit17.i.thread

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit17.i.thread:      ; preds = %bb.g, %bb.f
  %gepdiff4 = sub nuw nsw i64 12288, %i.o
  br label %bb.h

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit17.i:             ; preds = %_ZSt9__advanceIPilEvRT_T0_St26random_access_iterator_tag.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 16 @__const._ZN2cv11xfeatures2d28LATCHDescriptorExtractorImpl17setSamplingPointsEv.sampling_points_arr, i64 %i.o, i1 false)
  %.pre21.i = load ptr, ptr %i.l, align 8, !tbaa !64 ; 4 uses
  %gepdiff = sub nuw nsw i64 12288, %i.o          ; 2 uses
  %i.s = icmp samesign ult i64 %i.o, 12284
  br i1 %i.s, label %bb.h, label %bb.i, !prof !66

bb.h:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit17.i.thread, %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit17.i
  %gepdiff5 = phi i64 [ %gepdiff4, %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit17.i.thread ], [ %gepdiff, %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit17.i ] ; 2 uses
  %i.t = phi ptr [ %i.m, %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit17.i.thread ], [ %.pre21.i, %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit17.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.t, ptr nonnull align 4 %.sink.i.i, i64 %gepdiff5, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E.exit.i

bb.i:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit17.i
  %i.u = icmp eq i64 %i.o, 12284
  br i1 %i.u, label %bb.j, label %_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E.exit.i

bb.j:                                             ; preds = %bb.i
  %i.v = load i32, ptr %.sink.i.i, align 4, !tbaa !8
  store i32 %i.v, ptr %.pre21.i, align 4, !tbaa !8
  br label %_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E.exit.i

_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %gepdiff6 = phi i64 [ 4, %bb.j ], [ %gepdiff, %bb.i ], [ %gepdiff5, %bb.h ]
  %i.w = phi ptr [ %.pre21.i, %bb.j ], [ %.pre21.i, %bb.i ], [ %i.t, %bb.h ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %gepdiff6
  store ptr %i.x, ptr %i.l, align 8, !tbaa !64
  br label %_ZNSt6vectorIiSaIiEE13_M_assign_auxIPiEEvT_S4_St20forward_iterator_tag.exit

_ZNSt6vectorIiSaIiEE13_M_assign_auxIPiEEvT_S4_St20forward_iterator_tag.exit: ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %bb.e, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv11xfeatures2d28LATCHDescriptorExtractorImplC2Eibid(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3, double noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %2 to i8
  tail call void @_ZN2cv9AlgorithmC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 192) (i8, ptr @_ZTVN2cv11xfeatures2d28LATCHDescriptorExtractorImplE, i64 16), ptr %0, align 8, !tbaa !135
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.b, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.a, ptr %i.d, align 8, !tbaa !137
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %3, ptr %i.e, align 4, !tbaa !138
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %4, ptr %i.f, align 8, !tbaa !139
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  invoke void @_ZN2cv11xfeatures2d28LATCHDescriptorExtractorImpl8setBytesEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #23
end_hunk_0
