Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/color_lab?download=true
inline.NumInlined: 629
inline.NumDeleted: 167
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZNK2cv9Luv2RGB_bclEPKhPhi:bb.a
bb.ab:                                            ; preds = %bb.aa, %bb.c
  %.pn51 = phi { ptr, i32 } [ %i.f, %bb.c ], [ %.pn, %bb.aa ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn51
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv14Luv2RGBintegerclEPKhPhi(ptr noundef nonnull align 4 dereferenceable(41) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK2cv14Luv2RGBintegerclEPKhPhiE26__cv_trace_location_fn3754)
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = load i32, ptr %0, align 4, !tbaa !217
  %.fr20 = freeze i32 %i.e                        ; 2 uses
  %i.f = icmp eq i32 %.fr20, 4
  %i.g = sext i32 %.fr20 to i64                   ; 2 uses
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.019.us = phi i32 [ %i.ab, %.lr.ph.split.us ], [ 0, %.lr.ph ]
  %.01518.us = phi ptr [ %i.ac, %.lr.ph.split.us ], [ %1, %.lr.ph ] ; 4 uses
  %.01617.us = phi ptr [ %i.ad, %.lr.ph.split.us ], [ %2, %.lr.ph ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.h = load i8, ptr %.01518.us, align 1, !tbaa !122
  %i.i = getelementptr inbounds nuw i8, ptr %.01518.us, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !122
  %i.k = getelementptr inbounds nuw i8, ptr %.01518.us, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !122
  call void @_ZNK2cv14Luv2RGBinteger7processEhhhRiS1_S1_(ptr noundef nonnull align 4 dereferenceable(41) %0, i8 noundef zeroext %i.h, i8 noundef zeroext %i.j, i8 noundef zeroext %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.m = load i32, ptr %i.c, align 4, !tbaa !10
  %i.n = call i32 @llvm.smax.i32(i32 %i.m, i32 0)
  %i.o = call i32 @llvm.umin.i32(i32 %i.n, i32 255)
  %i.p = trunc nuw i32 %i.o to i8
  store i8 %i.p, ptr %.01617.us, align 1, !tbaa !122
  %i.q = load i32, ptr %i.b, align 4, !tbaa !10
  %i.r = call i32 @llvm.smax.i32(i32 %i.q, i32 0)
  %i.s = call i32 @llvm.umin.i32(i32 %i.r, i32 255)
  %i.t = trunc nuw i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %.01617.us, i64 1
  store i8 %i.t, ptr %i.u, align 1, !tbaa !122
  %i.v = load i32, ptr %i.a, align 4, !tbaa !10
  %i.w = call i32 @llvm.smax.i32(i32 %i.v, i32 0)
  %i.x = call i32 @llvm.umin.i32(i32 %i.w, i32 255)
  %i.y = trunc nuw i32 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %.01617.us, i64 2
  store i8 %i.y, ptr %i.z, align 1, !tbaa !122
  %i.aa = getelementptr inbounds nuw i8, ptr %.01617.us, i64 3
  store i8 -1, ptr %i.aa, align 1, !tbaa !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ab = add nuw nsw i32 %.019.us, 1             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01518.us, i64 3
  %i.ad = getelementptr inbounds nuw i8, ptr %.01617.us, i64 %i.g
  %exitcond22.not = icmp eq i32 %i.ab, %3
  br i1 %exitcond22.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !533

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.019 = phi i32 [ %i.ax, %.lr.ph.split ], [ 0, %.lr.ph ]
  %.01518 = phi ptr [ %i.ay, %.lr.ph.split ], [ %1, %.lr.ph ] ; 4 uses
  %.01617 = phi ptr [ %i.az, %.lr.ph.split ], [ %2, %.lr.ph ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.ae = load i8, ptr %.01518, align 1, !tbaa !122
  %i.af = getelementptr inbounds nuw i8, ptr %.01518, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !122
  %i.ah = getelementptr inbounds nuw i8, ptr %.01518, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !122
  call void @_ZNK2cv14Luv2RGBinteger7processEhhhRiS1_S1_(ptr noundef nonnull align 4 dereferenceable(41) %0, i8 noundef zeroext %i.ae, i8 noundef zeroext %i.ag, i8 noundef zeroext %i.ai, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.aj = load i32, ptr %i.c, align 4, !tbaa !10
  %i.ak = call i32 @llvm.smax.i32(i32 %i.aj, i32 0)
  %i.al = call i32 @llvm.umin.i32(i32 %i.ak, i32 255)
  %i.am = trunc nuw i32 %i.al to i8
  store i8 %i.am, ptr %.01617, align 1, !tbaa !122
  %i.an = load i32, ptr %i.b, align 4, !tbaa !10
  %i.ao = call i32 @llvm.smax.i32(i32 %i.an, i32 0)
  %i.ap = call i32 @llvm.umin.i32(i32 %i.ao, i32 255)
  %i.aq = trunc nuw i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %.01617, i64 1
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !122
  %i.as = load i32, ptr %i.a, align 4, !tbaa !10
  %i.at = call i32 @llvm.smax.i32(i32 %i.as, i32 0)
  %i.au = call i32 @llvm.umin.i32(i32 %i.at, i32 255)
  %i.av = trunc nuw i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %.01617, i64 2
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ax = add nuw nsw i32 %.019, 1                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01518, i64 3
  %i.az = getelementptr inbounds i8, ptr %.01617, i64 %i.g
  %exitcond.not = icmp eq i32 %i.ax, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !533

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !51
  %.not.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #20
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv12Luv2RGBfloatclEPKfPfi(ptr noundef nonnull align 4 dereferenceable(49) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK2cv12Luv2RGBfloatclEPKfPfiE26__cv_trace_location_fn3100)
  %i.a = load ptr, ptr @_ZN2cvL15sRGBInvGammaTabE, align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load float, ptr %i.b, align 4, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load float, ptr %i.d, align 4, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = load float, ptr %i.f, align 4, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load float, ptr %i.h, align 4, !tbaa !215
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load float, ptr %i.j, align 4, !tbaa !216
  %i.l = icmp sgt i32 %3, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load <2 x float>, ptr %i.m, align 4, !tbaa !41 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load <4 x float>, ptr %i.o, align 4, !tbaa !41 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i8, ptr %i.q, align 4, !tbaa !214, !range !127, !noundef !128
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = load i32, ptr %0, align 4, !tbaa !213    ; 2 uses
  %.not90 = icmp ne ptr %i.a, null
  %.not.not = select i1 %i.s, i1 %.not90, i1 false
  %i.u = icmp eq i32 %i.t, 4
  %i.v = sext i32 %i.t to i64
  %i.w = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.x = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.y = shufflevector <2 x float> %i.x, <2 x float> %i.n, <2 x i32> <i32 0, i32 3>
  %i.z = shufflevector <2 x float> %i.n, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aa = shufflevector <4 x float> %i.p, <4 x float> %i.z, <2 x i32> <i32 1, i32 4>
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.097 = phi ptr [ %1, %.lr.ph ], [ %i.dp, %bb.i ] ; 4 uses
  %.07996 = phi ptr [ %2, %.lr.ph ], [ %i.dq, %bb.i ] ; 4 uses
  %.08495 = phi i32 [ 0, %.lr.ph ], [ %i.do, %bb.i ]
  %i.ab = load float, ptr %.097, align 4, !tbaa !41 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.097, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %.097, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !41
  %i.ag = fcmp ult float %i.ab, 8.000000e+00
  br i1 %i.ag, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = fadd nnan float %i.ab, 1.600000e+01
  %i.ai = fmul nnan float %i.ah, 8.620690e-03     ; 3 uses
  %i.aj = fmul float %i.ai, %i.ai
  %i.ak = fmul float %i.ai, %i.aj
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.al = fmul float %i.ab, f0x3A911A80
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.083 = phi float [ %i.ak, %bb.c ], [ %i.al, %bb.d ] ; 4 uses
  %i.am = call float @llvm.fmuladd.f32(float %i.ab, float %i.i, float %i.ad)
  %i.an = fmul float %i.am, 3.000000e+00          ; 2 uses
  %i.ao = call float @llvm.fmuladd.f32(float %i.ab, float %i.k, float %i.af)
  %i.ap = fdiv float 2.500000e-01, %i.ao          ; 2 uses
  %i.aq = fcmp ogt float %i.ap, 2.500000e-01
  %spec.store.select = select i1 %i.aq, float 2.500000e-01, float %i.ap ; 2 uses
  %i.ar = fcmp olt float %spec.store.select, -2.500000e-01
  %spec.store.select1 = select i1 %i.ar, float -2.500000e-01, float %spec.store.select ; 2 uses
  %i.as = fmul float %.083, 3.000000e+00
  %i.at = fmul float %i.an, %i.as
  %i.au = fneg float %i.an
  %i.av = insertelement <2 x float> poison, float %.083, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x float> %i.aa, %i.aw
  %i.ay = fmul float %i.e, %.083
  %i.az = fmul float %spec.store.select1, %i.at   ; 2 uses
  %i.ba = call float @llvm.fmuladd.f32(float %i.ab, float 1.560000e+02, float %i.au)
  %i.bb = call float @llvm.fmuladd.f32(float %i.ba, float %spec.store.select1, float -5.000000e+00)
  %i.bc = fmul float %i.bb, %.083                 ; 2 uses
  %i.bd = insertelement <2 x float> poison, float %i.az, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.w, <2 x float> %i.ax)
  %i.bg = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.y, <2 x float> %i.bf) ; 3 uses
  %i.bj = call float @llvm.fmuladd.f32(float %i.az, float %i.c, float %i.ay)
  %i.bk = call float @llvm.fmuladd.f32(float %i.bc, float %i.g, float %i.bj) ; 3 uses
  %i.bl = fcmp olt <2 x float> %i.bi, zeroinitializer
  %i.bm = fcmp ole <2 x float> %i.bi, splat (float 1.000000e+00)
  %i.bn = select <2 x i1> %i.bm, <2 x float> %i.bi, <2 x float> splat (float 1.000000e+00)
  %i.bo = select <2 x i1> %i.bl, <2 x float> zeroinitializer, <2 x float> %i.bn ; 2 uses
  %i.bp = fcmp olt float %i.bk, 0.000000e+00
  %i.bq = fcmp ole float %i.bk, 1.000000e+00
  %i.br = select i1 %i.bq, float %i.bk, float 1.000000e+00
  %i.bs = select i1 %i.bp, float 0.000000e+00, float %i.br ; 2 uses
  br i1 %.not.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bt = fmul <2 x float> %i.bo, splat (float 1.024000e+03) ; 2 uses
  %i.bu = fptosi <2 x float> %i.bt to <2 x i32>
  %i.bv = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.bu, <2 x i32> zeroinitializer)
  %i.bw = call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.bv, <2 x i32> splat (i32 1023)) ; 3 uses
  %i.bx = extractelement <2 x i32> %i.bw, i64 0
  %i.by = shl nuw nsw i32 %i.bx, 2
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load <2 x float>, ptr %i.cb, align 4, !tbaa !41 ; 2 uses
  %i.cd = load <2 x float>, ptr %i.ca, align 4, !tbaa !41 ; 2 uses
  %i.ce = uitofp nneg <2 x i32> %i.bw to <2 x float>
  %i.cf = fsub <2 x float> %i.bt, %i.ce           ; 3 uses
  %i.cg = extractelement <2 x i32> %i.bw, i64 1
  %i.ch = shl nuw nsw i32 %i.cg, 2
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load <2 x float>, ptr %i.ck, align 4, !tbaa !41 ; 2 uses
  %i.cm = shufflevector <2 x float> %i.cc, <2 x float> %i.cl, <2 x i32> <i32 1, i32 3>
  %i.cn = shufflevector <2 x float> %i.cc, <2 x float> %i.cl, <2 x i32> <i32 0, i32 2>
  %i.co = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.cf, <2 x float> %i.cn)
  %i.cp = load <2 x float>, ptr %i.cj, align 4, !tbaa !41 ; 2 uses
  %i.cq = shufflevector <2 x float> %i.cd, <2 x float> %i.cp, <2 x i32> <i32 1, i32 3>
  %i.cr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.co, <2 x float> %i.cf, <2 x float> %i.cq)
  %i.cs = shufflevector <2 x float> %i.cd, <2 x float> %i.cp, <2 x i32> <i32 0, i32 2>
  %i.ct = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.cf, <2 x float> %i.cs)
  %i.cu = fmul float %i.bs, 1.024000e+03          ; 2 uses
  %i.cv = fptosi float %i.cu to i32
  %.sroa.speculated14.i93 = call i32 @llvm.smax.i32(i32 %i.cv, i32 0)
  %.sroa.speculated.i94 = call i32 @llvm.umin.i32(i32 %.sroa.speculated14.i93, i32 1023) ; 2 uses
  %i.cw = uitofp nneg i32 %.sroa.speculated.i94 to float
  %i.cx = fsub float %i.cu, %i.cw                 ; 3 uses
  %i.cy = shl nuw nsw i32 %.sroa.speculated.i94, 2
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cz ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.dc = load float, ptr %i.db, align 4, !tbaa !41
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.de = load float, ptr %i.dd, align 4, !tbaa !41
  %i.df = call float @llvm.fmuladd.f32(float %i.dc, float %i.cx, float %i.de)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !41
  %i.di = call float @llvm.fmuladd.f32(float %i.df, float %i.cx, float %i.dh)
  %i.dj = load float, ptr %i.da, align 4, !tbaa !41
  %i.dk = call noundef float @llvm.fmuladd.f32(float %i.di, float %i.cx, float %i.dj)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.080 = phi float [ %i.bs, %bb.e ], [ %i.dk, %bb.f ]
  %i.dl = phi <2 x float> [ %i.bo, %bb.e ], [ %i.ct, %bb.f ]
  store <2 x float> %i.dl, ptr %.07996, align 4, !tbaa !41
  %i.dm = getelementptr inbounds nuw i8, ptr %.07996, i64 8
  store float %.080, ptr %i.dm, align 4, !tbaa !41
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dn = getelementptr inbounds nuw i8, ptr %.07996, i64 12
  store float 1.000000e+00, ptr %i.dn, align 4, !tbaa !41
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.do = add nuw nsw i32 %.08495, 1              ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.097, i64 12
  %i.dq = getelementptr inbounds [4 x i8], ptr %.07996, i64 %i.v
  %exitcond.not = icmp eq i32 %i.do, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !534

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !51
  %.not.i = icmp eq i32 %i.ds, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #20
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %._crit_edge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv14Luv2RGBinteger7processEhhhRiS1_S1_(ptr noundef nonnull align 4 dereferenceable(41) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = zext i8 %1 to i32                        ; 2 uses
  %i.b = shl nuw nsw i32 %i.a, 1
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [2 x i8], ptr @_ZN2cvL9LabToYF_bE, i64 %i.c
  %i.e = load i16, ptr %i.d, align 4, !tbaa !198  ; 2 uses
  %i.f = load ptr, ptr @_ZN2cvL6LUVLUTE.0, align 8, !tbaa !536
  %i.g = shl nuw nsw i32 %i.a, 8                  ; 2 uses
  %i.h = zext i8 %2 to i32
  %i.i = or disjoint i32 %i.g, %i.h
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !10
  %i.m = load ptr, ptr @_ZN2cvL6LUVLUTE.1, align 8, !tbaa !537
  %i.n = zext i8 %3 to i32
  %i.o = or disjoint i32 %i.g, %i.n
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !10
  %i.s = sext i32 %i.l to i64
  %i.t = sext i32 %i.r to i64
  %i.u = mul nsw i64 %i.t, %i.s                   ; 2 uses
  %i.v = sdiv i64 %i.u, 16384
  %i.w = zext i16 %i.e to i64                     ; 2 uses
  %sext = shl i64 %i.v, 32
  %i.x = ashr exact i64 %sext, 32
  %i.y = mul nsw i64 %i.x, %i.w
  %i.z = sdiv i64 %i.y, 16384
  %i.aa = trunc i64 %i.z to i32
  %i.ab = load ptr, ptr @_ZN2cvL6LUVLUTE.2, align 8, !tbaa !538
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.p
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !202
  %.neg = mul i64 %i.u, -85
  %i.ae = add i64 %.neg, %i.ad
  %i.af = sdiv i64 %i.ae, 16384
  %i.ag = add nsw i64 %i.af, -20889600
  %i.ah = mul nsw i64 %i.ag, %i.w
  %i.ai = sdiv i64 %i.ah, 16384
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = sdiv i32 %i.aj, 256
  %i.al = sdiv i32 %i.aj, 65536
  %i.am = add nsw i32 %i.ak, %i.al
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 0)
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.an, i32 32768) ; 3 uses
  %i.ap = tail call i32 @llvm.smax.i32(i32 %i.am, i32 0)
  %i.aq = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 32768) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !10
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !10
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !10
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !10
  %i.bj = mul nsw i32 %i.ao, %i.as
  %i.bk = zext i16 %i.e to i32                    ; 3 uses
  %i.bl = mul nsw i32 %i.au, %i.bk
  %i.bm = mul nsw i32 %i.aq, %i.aw
  %i.bn = add i32 %i.bl, 8192
  %i.bo = add i32 %i.bn, %i.bj
  %i.bp = add i32 %i.bo, %i.bm
  %i.bq = ashr i32 %i.bp, 14
  store i32 %i.bq, ptr %4, align 4, !tbaa !10
  %i.br = mul nsw i32 %i.ao, %i.ay
  %i.bs = mul nsw i32 %i.ba, %i.bk
  %i.bt = mul nsw i32 %i.aq, %i.bc
  %i.bu = add i32 %i.bs, 8192
  %i.bv = add i32 %i.bu, %i.br
  %i.bw = add i32 %i.bv, %i.bt
  %i.bx = ashr i32 %i.bw, 14
  store i32 %i.bx, ptr %5, align 4, !tbaa !10
  %i.by = mul nsw i32 %i.ao, %i.be
  %i.bz = mul nsw i32 %i.bg, %i.bk
  %i.ca = mul nsw i32 %i.aq, %i.bi
  %i.cb = add i32 %i.bz, 8192
end_hunk_0
