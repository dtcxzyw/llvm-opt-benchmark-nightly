inline.NumInlined: 1420
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZL12extract3DBoxRKN2cv3MatERS0_S3_S2_S2_S2_RKSt6vectorINS_7Point3_IfEESaIS6_EEib:bb.a
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !204
  %i.ik = insertelement <4 x float> poison, float %i.ij, i64 0
  %i.il = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ik)
  %.sroa.2.0.insert.ext.i280 = zext i32 %i.il to i64
  %.sroa.2.0.insert.shift.i281 = shl nuw i64 %.sroa.2.0.insert.ext.i280, 32
  %.sroa.0.0.insert.ext.i282 = zext i32 %i.ih to i64
  %.sroa.0.0.insert.insert.i283 = or disjoint i64 %.sroa.2.0.insert.shift.i281, %.sroa.0.0.insert.ext.i282
  %i.im = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.in = load float, ptr %i.im, align 4, !tbaa !202
  %i.io = insertelement <4 x float> poison, float %i.in, i64 0
  %i.ip = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.io)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ie, i64 12
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !204
  %i.is = insertelement <4 x float> poison, float %i.ir, i64 0
  %i.it = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.is)
  %.sroa.2.0.insert.ext.i284 = zext i32 %i.it to i64
  %.sroa.2.0.insert.shift.i285 = shl nuw i64 %.sroa.2.0.insert.ext.i284, 32
  %.sroa.0.0.insert.ext.i286 = zext i32 %i.ip to i64
  %.sroa.0.0.insert.insert.i287 = or disjoint i64 %.sroa.2.0.insert.shift.i285, %.sroa.0.0.insert.ext.i286
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  store <2 x double> <double 0.000000e+00, double 2.550000e+02>, ptr %36, align 16, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ff, i8 0, i64 16, i1 false)
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %35, i64 %.sroa.0.0.insert.insert.i283, i64 %.sroa.0.0.insert.insert.i287, ptr noundef nonnull align 8 dereferenceable(32) %36, i32 noundef 3, i32 noundef 16, i32 noundef 0)
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  store i64 0, ptr %i.fb, align 8
  store i32 50397184, ptr %33, align 8, !tbaa !109
  store ptr %1, ptr %i.fa, align 8, !tbaa !111
  %i.iu = load ptr, ptr %16, align 8, !tbaa !130  ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !202
  %i.ix = insertelement <4 x float> poison, float %i.iw, i64 0
  %i.iy = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ix)
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iu, i64 12
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !204
  %i.jb = insertelement <4 x float> poison, float %i.ja, i64 0
  %i.jc = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.jb)
  %.sroa.2.0.insert.ext.i276.1 = zext i32 %i.jc to i64
  %.sroa.2.0.insert.shift.i277.1 = shl nuw i64 %.sroa.2.0.insert.ext.i276.1, 32
  %.sroa.0.0.insert.ext.i278.1 = zext i32 %i.iy to i64
  %.sroa.0.0.insert.insert.i279.1 = or disjoint i64 %.sroa.2.0.insert.shift.i277.1, %.sroa.0.0.insert.ext.i278.1
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  store <2 x double> <double 0.000000e+00, double 2.550000e+02>, ptr %34, align 16, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fc, i8 0, i64 16, i1 false)
  invoke void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %33, i64 %.sroa.0.0.insert.insert.i279.1, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %34, i32 noundef -1, i32 noundef 16, i32 noundef 0)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  store i64 0, ptr %i.fe, align 8
  store i32 50397184, ptr %35, align 8, !tbaa !109
  store ptr %1, ptr %i.fd, align 8, !tbaa !111
  %i.jd = load ptr, ptr %16, align 8, !tbaa !130  ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load float, ptr %i.je, align 4, !tbaa !202
  %i.jg = insertelement <4 x float> poison, float %i.jf, i64 0
  %i.jh = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.jg)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 12
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !204
  %i.jk = insertelement <4 x float> poison, float %i.jj, i64 0
  %i.jl = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.jk)
  %.sroa.2.0.insert.ext.i280.1 = zext i32 %i.jl to i64
  %.sroa.2.0.insert.shift.i281.1 = shl nuw i64 %.sroa.2.0.insert.ext.i280.1, 32
  %.sroa.0.0.insert.ext.i282.1 = zext i32 %i.jh to i64
  %.sroa.0.0.insert.insert.i283.1 = or disjoint i64 %.sroa.2.0.insert.shift.i281.1, %.sroa.0.0.insert.ext.i282.1
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !202
  %i.jo = insertelement <4 x float> poison, float %i.jn, i64 0
  %i.jp = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.jo)
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jd, i64 20
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !204
  %i.js = insertelement <4 x float> poison, float %i.jr, i64 0
  %i.jt = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.js)
  %.sroa.2.0.insert.ext.i284.1 = zext i32 %i.jt to i64
  %.sroa.2.0.insert.shift.i285.1 = shl nuw i64 %.sroa.2.0.insert.ext.i284.1, 32
  %.sroa.0.0.insert.ext.i286.1 = zext i32 %i.jp to i64
  %.sroa.0.0.insert.insert.i287.1 = or disjoint i64 %.sroa.2.0.insert.shift.i285.1, %.sroa.0.0.insert.ext.i286.1
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  store <2 x double> <double 0.000000e+00, double 2.550000e+02>, ptr %36, align 16, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ff, i8 0, i64 16, i1 false)
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %35, i64 %.sroa.0.0.insert.insert.i283.1, i64 %.sroa.0.0.insert.insert.i287.1, ptr noundef nonnull align 8 dereferenceable(32) %36, i32 noundef 3, i32 noundef 16, i32 noundef 0)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  store i64 0, ptr %i.fb, align 8
  store i32 50397184, ptr %33, align 8, !tbaa !109
  store ptr %1, ptr %i.fa, align 8, !tbaa !111
  %i.ju = load ptr, ptr %16, align 8, !tbaa !130  ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !202
  %i.jx = insertelement <4 x float> poison, float %i.jw, i64 0
  %i.jy = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.jx)
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 20
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !204
  %i.kb = insertelement <4 x float> poison, float %i.ka, i64 0
  %i.kc = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.kb)
  %.sroa.2.0.insert.ext.i276.2 = zext i32 %i.kc to i64
  %.sroa.2.0.insert.shift.i277.2 = shl nuw i64 %.sroa.2.0.insert.ext.i276.2, 32
  %.sroa.0.0.insert.ext.i278.2 = zext i32 %i.jy to i64
  %.sroa.0.0.insert.insert.i279.2 = or disjoint i64 %.sroa.2.0.insert.shift.i277.2, %.sroa.0.0.insert.ext.i278.2
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  store <2 x double> <double 0.000000e+00, double 2.550000e+02>, ptr %34, align 16, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fc, i8 0, i64 16, i1 false)
  invoke void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %33, i64 %.sroa.0.0.insert.insert.i279.2, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %34, i32 noundef -1, i32 noundef 16, i32 noundef 0)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  store i64 0, ptr %i.fe, align 8
  store i32 50397184, ptr %35, align 8, !tbaa !109
  store ptr %1, ptr %i.fd, align 8, !tbaa !111
  %i.kd = load ptr, ptr %16, align 8, !tbaa !130  ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !202
  %i.kg = insertelement <4 x float> poison, float %i.kf, i64 0
  %i.kh = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.kg)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kd, i64 20
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !204
  %i.kk = insertelement <4 x float> poison, float %i.kj, i64 0
  %i.kl = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.kk)
  %.sroa.2.0.insert.ext.i280.2 = zext i32 %i.kl to i64
  %.sroa.2.0.insert.shift.i281.2 = shl nuw i64 %.sroa.2.0.insert.ext.i280.2, 32
  %.sroa.0.0.insert.ext.i282.2 = zext i32 %i.kh to i64
  %.sroa.0.0.insert.insert.i283.2 = or disjoint i64 %.sroa.2.0.insert.shift.i281.2, %.sroa.0.0.insert.ext.i282.2
  %i.km = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.kn = load float, ptr %i.km, align 4, !tbaa !202
  %i.ko = insertelement <4 x float> poison, float %i.kn, i64 0
  %i.kp = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ko)
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kd, i64 28
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !204
  %i.ks = insertelement <4 x float> poison, float %i.kr, i64 0
  %i.kt = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ks)
  %.sroa.2.0.insert.ext.i284.2 = zext i32 %i.kt to i64
  %.sroa.2.0.insert.shift.i285.2 = shl nuw i64 %.sroa.2.0.insert.ext.i284.2, 32
  %.sroa.0.0.insert.ext.i286.2 = zext i32 %i.kp to i64
  %.sroa.0.0.insert.insert.i287.2 = or disjoint i64 %.sroa.2.0.insert.shift.i285.2, %.sroa.0.0.insert.ext.i286.2
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  store <2 x double> <double 0.000000e+00, double 2.550000e+02>, ptr %36, align 16, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ff, i8 0, i64 16, i1 false)
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %35, i64 %.sroa.0.0.insert.insert.i283.2, i64 %.sroa.0.0.insert.insert.i287.2, ptr noundef nonnull align 8 dereferenceable(32) %36, i32 noundef 3, i32 noundef 16, i32 noundef 0)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  store i64 0, ptr %i.fb, align 8
  store i32 50397184, ptr %33, align 8, !tbaa !109
  store ptr %1, ptr %i.fa, align 8, !tbaa !111
  %i.ku = load ptr, ptr %16, align 8, !tbaa !130  ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !202
  %i.kx = insertelement <4 x float> poison, float %i.kw, i64 0
  %i.ky = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.kx)
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 28
  %i.la = load float, ptr %i.kz, align 4, !tbaa !204
  %i.lb = insertelement <4 x float> poison, float %i.la, i64 0
  %i.lc = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.lb)
  %.sroa.2.0.insert.ext.i276.3 = zext i32 %i.lc to i64
  %.sroa.2.0.insert.shift.i277.3 = shl nuw i64 %.sroa.2.0.insert.ext.i276.3, 32
  %.sroa.0.0.insert.ext.i278.3 = zext i32 %i.ky to i64
  %.sroa.0.0.insert.insert.i279.3 = or disjoint i64 %.sroa.2.0.insert.shift.i277.3, %.sroa.0.0.insert.ext.i278.3
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  store <2 x double> <double 0.000000e+00, double 2.550000e+02>, ptr %34, align 16, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fc, i8 0, i64 16, i1 false)
  invoke void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %33, i64 %.sroa.0.0.insert.insert.i279.3, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %34, i32 noundef -1, i32 noundef 16, i32 noundef 0)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  store i64 0, ptr %i.fe, align 8
  store i32 50397184, ptr %35, align 8, !tbaa !109
  store ptr %1, ptr %i.fd, align 8, !tbaa !111
  %i.ld = load ptr, ptr %16, align 8, !tbaa !130  ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.lf = load float, ptr %i.le, align 4, !tbaa !202
  %i.lg = insertelement <4 x float> poison, float %i.lf, i64 0
  %i.lh = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.lg)
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 28
  %i.lj = load float, ptr %i.li, align 4, !tbaa !204
  %i.lk = insertelement <4 x float> poison, float %i.lj, i64 0
  %i.ll = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.lk)
  %.sroa.2.0.insert.ext.i280.3 = zext i32 %i.ll to i64
  %.sroa.2.0.insert.shift.i281.3 = shl nuw i64 %.sroa.2.0.insert.ext.i280.3, 32
  %.sroa.0.0.insert.ext.i282.3 = zext i32 %i.lh to i64
  %.sroa.0.0.insert.insert.i283.3 = or disjoint i64 %.sroa.2.0.insert.shift.i281.3, %.sroa.0.0.insert.ext.i282.3
  %i.lm = load float, ptr %i.ld, align 4, !tbaa !202
  %i.ln = insertelement <4 x float> poison, float %i.lm, i64 0
  %i.lo = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ln)
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !204
  %i.lr = insertelement <4 x float> poison, float %i.lq, i64 0
  %i.ls = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.lr)
  %.sroa.2.0.insert.ext.i284.3 = zext i32 %i.ls to i64
  %.sroa.2.0.insert.shift.i285.3 = shl nuw i64 %.sroa.2.0.insert.ext.i284.3, 32
  %.sroa.0.0.insert.ext.i286.3 = zext i32 %i.lo to i64
  %.sroa.0.0.insert.insert.i287.3 = or disjoint i64 %.sroa.2.0.insert.shift.i285.3, %.sroa.0.0.insert.ext.i286.3
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  store <2 x double> <double 0.000000e+00, double 2.550000e+02>, ptr %36, align 16, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ff, i8 0, i64 16, i1 false)
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %35, i64 %.sroa.0.0.insert.insert.i283.3, i64 %.sroa.0.0.insert.insert.i287.3, ptr noundef nonnull align 8 dereferenceable(32) %36, i32 noundef 3, i32 noundef 16, i32 noundef 0)
          to label %.loopexit.thread unwind label %bb.ar

.loopexit.thread:                                 ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  br label %bb.az

bb.aq:                                            ; preds = %bb.ao, %bb.am, %bb.ak, %.preheader411
  %i.lt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  br label %bb.dj

bb.ar:                                            ; preds = %bb.ap, %bb.an, %bb.al, %bb.aj
  %i.lu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  br label %bb.dj

bb.as:                                            ; preds = %.preheader, %bb.av
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.av ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23
  store i64 0, ptr %i.fp, align 8
  store i32 50397184, ptr %37, align 8, !tbaa !109
  store ptr %1, ptr %i.fo, align 8, !tbaa !111
  %i.lv = load ptr, ptr %16, align 8, !tbaa !130
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %indvars.iv ; 2 uses
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !202
  %i.ly = insertelement <4 x float> poison, float %i.lx, i64 0
  %i.lz = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ly)
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !204
  %i.mc = insertelement <4 x float> poison, float %i.mb, i64 0
  %i.md = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.mc)
  %.sroa.2.0.insert.ext.i288 = zext i32 %i.md to i64
  %.sroa.2.0.insert.shift.i289 = shl nuw i64 %.sroa.2.0.insert.ext.i288, 32
  %.sroa.0.0.insert.ext.i290 = zext i32 %i.lz to i64
  %.sroa.0.0.insert.insert.i291 = or disjoint i64 %.sroa.2.0.insert.shift.i289, %.sroa.0.0.insert.ext.i290
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #23
  store <2 x double> <double 0.000000e+00, double 2.550000e+02>, ptr %38, align 16, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fq, i8 0, i64 16, i1 false)
  invoke void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %37, i64 %.sroa.0.0.insert.insert.i291, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %38, i32 noundef -1, i32 noundef 16, i32 noundef 0)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #23
  store i64 0, ptr %i.fs, align 8
  store i32 50397184, ptr %39, align 8, !tbaa !109
  store ptr %1, ptr %i.fr, align 8, !tbaa !111
  %i.me = load ptr, ptr %16, align 8, !tbaa !130  ; 2 uses
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %indvars.iv ; 2 uses
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !202
  %i.mh = insertelement <4 x float> poison, float %i.mg, i64 0
  %i.mi = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.mh)
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !204
  %i.ml = insertelement <4 x float> poison, float %i.mk, i64 0
  %i.mm = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ml)
  %.sroa.2.0.insert.ext.i292 = zext i32 %i.mm to i64
  %.sroa.2.0.insert.shift.i293 = shl nuw i64 %.sroa.2.0.insert.ext.i292, 32
  %.sroa.0.0.insert.ext.i294 = zext i32 %i.mi to i64
  %.sroa.0.0.insert.insert.i295 = or disjoint i64 %.sroa.2.0.insert.shift.i293, %.sroa.0.0.insert.ext.i294
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.mn = and i64 %indvars.iv.next, 3
  %i.mo = and i64 %indvars.iv, 4
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %i.mn
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %i.mo ; 2 uses
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !202
  %i.ms = insertelement <4 x float> poison, float %i.mr, i64 0
  %i.mt = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ms)
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !204
  %i.mw = insertelement <4 x float> poison, float %i.mv, i64 0
  %i.mx = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.mw)
  %.sroa.2.0.insert.ext.i296 = zext i32 %i.mx to i64
  %.sroa.2.0.insert.shift.i297 = shl nuw i64 %.sroa.2.0.insert.ext.i296, 32
  %.sroa.0.0.insert.ext.i298 = zext i32 %i.mt to i64
  %.sroa.0.0.insert.insert.i299 = or disjoint i64 %.sroa.2.0.insert.shift.i297, %.sroa.0.0.insert.ext.i298
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #23
  store <2 x double> <double 0.000000e+00, double 2.550000e+02>, ptr %40, align 16, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ft, i8 0, i64 16, i1 false)
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %39, i64 %.sroa.0.0.insert.insert.i295, i64 %.sroa.0.0.insert.insert.i299, ptr noundef nonnull align 8 dereferenceable(32) %40, i32 noundef 3, i32 noundef 16, i32 noundef 0)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #23
  store i64 0, ptr %i.fv, align 8
  store i32 50397184, ptr %41, align 8, !tbaa !109
  store ptr %1, ptr %i.fu, align 8, !tbaa !111
  %i.my = load ptr, ptr %16, align 8, !tbaa !130  ; 2 uses
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %indvars.iv ; 2 uses
  %i.na = load float, ptr %i.mz, align 4, !tbaa !202
  %i.nb = insertelement <4 x float> poison, float %i.na, i64 0
  %i.nc = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.nb)
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !204
  %i.nf = insertelement <4 x float> poison, float %i.ne, i64 0
  %i.ng = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.nf)
  %.sroa.2.0.insert.ext.i300 = zext i32 %i.ng to i64
  %.sroa.2.0.insert.shift.i301 = shl nuw i64 %.sroa.2.0.insert.ext.i300, 32
  %.sroa.0.0.insert.ext.i302 = zext i32 %i.nc to i64
  %.sroa.0.0.insert.insert.i303 = or disjoint i64 %.sroa.2.0.insert.shift.i301, %.sroa.0.0.insert.ext.i302
  %i.nh = and i64 %indvars.iv, 3
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %i.nh ; 2 uses
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !202
  %i.nk = insertelement <4 x float> poison, float %i.nj, i64 0
  %i.nl = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.nk)
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !204
  %i.no = insertelement <4 x float> poison, float %i.nn, i64 0
  %i.np = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.no)
  %.sroa.2.0.insert.ext.i304 = zext i32 %i.np to i64
  %.sroa.2.0.insert.shift.i305 = shl nuw i64 %.sroa.2.0.insert.ext.i304, 32
  %.sroa.0.0.insert.ext.i306 = zext i32 %i.nl to i64
  %.sroa.0.0.insert.insert.i307 = or disjoint i64 %.sroa.2.0.insert.shift.i305, %.sroa.0.0.insert.ext.i306
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #23
  store <2 x double> <double 0.000000e+00, double 2.550000e+02>, ptr %42, align 16, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fw, i8 0, i64 16, i1 false)
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %41, i64 %.sroa.0.0.insert.insert.i303, i64 %.sroa.0.0.insert.insert.i307, ptr noundef nonnull align 8 dereferenceable(32) %42, i32 noundef 3, i32 noundef 16, i32 noundef 0)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.loopexit, label %bb.as, !llvm.loop !205

bb.aw:                                            ; preds = %bb.as
  %i.nq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  br label %bb.dj

bb.ax:                                            ; preds = %bb.at
  %i.nr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  br label %bb.dj

bb.ay:                                            ; preds = %bb.au
  %i.ns = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  br label %bb.dj

.loopexit:                                        ; preds = %bb.av, %bb.u
  %i.nt = icmp slt i32 %7, 3
  br i1 %i.nt, label %.thread, label %bb.az

bb.az:                                            ; preds = %.loopexit.thread, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #23
  store i32 1124024357, ptr %46, align 8, !tbaa !64
  %i.nu = getelementptr inbounds nuw i8, ptr %46, i64 4
  store i32 1, ptr %i.nu, align 4, !tbaa !107
  %i.nv = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i32 1, ptr %i.nv, align 8, !tbaa !121
  %i.nw = getelementptr inbounds nuw i8, ptr %46, i64 12 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !127
  %i.nz = load ptr, ptr %16, align 8, !tbaa !130
  %i.oa = ptrtoint ptr %i.ny to i64
  %i.ob = ptrtoint ptr %i.nz to i64
  %i.oc = sub i64 %i.oa, %i.ob
  %i.od = lshr exact i64 %i.oc, 3
  %i.oe = trunc i64 %i.od to i32
  store i32 %i.oe, ptr %i.nw, align 4, !tbaa !122
  %i.of = getelementptr inbounds nuw i8, ptr %46, i64 16
  store i32 153, ptr %i.of, align 8, !tbaa !123
  %i.og = getelementptr inbounds nuw i8, ptr %46, i64 24 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %46, i64 32
  %i.oi = getelementptr inbounds nuw i8, ptr %46, i64 40
  %i.oj = getelementptr inbounds nuw i8, ptr %46, i64 48
  %i.ok = getelementptr inbounds nuw i8, ptr %46, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.og, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.ok, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc308 unwind label %bb.cl
end_hunk_0
begin_hunk_1_@_ZNK2cv8internal14VecReaderProxyINS_7Point3_IfEELi1EEclERSt6vectorIS3_SaIS3_EEm:bb.a
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE6resizeEm.exit
  %i.ai = phi ptr [ %i.ag, %.noexc ], [ %i.ad, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE6resizeEm.exit ] ; 2 uses
  switch i64 %i.ae, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i
  store i8 51, ptr %i.ai, align 1, !tbaa !16
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr nonnull align 1 %i.b, i64 %i.ae, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !13
  %i.al = load ptr, ptr %5, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.an = load ptr, ptr %1, align 8, !tbaa !132   ; 2 uses
  %i.ao = load ptr, ptr %i.r, align 8, !tbaa !132
  %i.ap = icmp eq ptr %i.an, %i.ao
  %spec.select = select i1 %i.ap, ptr null, ptr %i.an
  %i.aq = mul i64 %i.q, 12
  %i.ar = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN2cv16FileNodeIterator7readRawERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvm(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %spec.select, i64 noundef %i.aq)
          to label %bb.n unwind label %bb.p       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ad
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.n
  %i.au = load i64, ptr %i.ad, align 8, !tbaa !16
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret void

bb.o:                                             ; preds = %.noexc.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.p:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ad
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.p
  %i.ba = load i64, ptr %i.ad, align 8, !tbaa !16
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.o
  %.pn24 = phi { ptr, i32 } [ %i.aw, %bb.o ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.ax, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  resume { ptr, i32 } %.pn24.pn
}

declare noundef i64 @_ZNK2cv16FileNodeIterator9remainingEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN2cv16FileNodeIterator7readRawERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN2cv9RodriguesERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #17

declare void @_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_d(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #17

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare void @_ZN2cvplERKNS_7MatExprERKNS_3MatE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(688), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare void @_ZN2cvmlERKNS_3MatEd(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), double noundef) local_unnamed_addr #3

declare void @_ZN2cvmlERKNS_7MatExprERKNS_3MatE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(688), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare void @_ZNK2cv7MatExpr3invEi(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(688), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #17

declare void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3MatC2IdEESt16initializer_listIiES2_IT_E(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  tail call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #23
  %.not34 = icmp eq i64 %2, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = add i64 %2, 4611686018427387903
  %i.b = and i64 %i.a, 4611686018427387903        ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 1                  ; 2 uses
  %xtraiter = and i64 %i.c, 7                     ; 3 uses
  %i.d = icmp samesign ult i64 %i.b, 7
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.c, 9223372036854775800
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01636.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ]
  %.01735.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.an, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod42 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod42)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.01636.epil = phi i64 [ %i.g, %.lr.ph.epil ], [ %.01636.epil.init, %.lr.ph.epil.preheader ]
  %.01735.epil = phi ptr [ %i.h, %.lr.ph.epil ], [ %.01735.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.e = load i32, ptr %.01735.epil, align 4, !tbaa !49
  %i.f = sext i32 %i.e to i64
  %i.g = mul i64 %.01636.epil, %i.f               ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01735.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !228

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.016.lcssa = phi i64 [ 1, %bb.a ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ], [ %i.g, %.lr.ph.epil ]
  %.not18 = icmp eq i64 %4, 0
  br i1 %.not18, label %bb.b, label %bb.g

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01636 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.am, %.lr.ph ]
  %.01735 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.an, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.i = load i32, ptr %.01735, align 4, !tbaa !49
  %i.j = sext i32 %i.i to i64
  %i.k = mul i64 %.01636, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.01735, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !49
  %i.n = sext i32 %i.m to i64
  %i.o = mul i64 %i.k, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %.01735, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !49
  %i.r = sext i32 %i.q to i64
  %i.s = mul i64 %i.o, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %.01735, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !49
  %i.v = sext i32 %i.u to i64
  %i.w = mul i64 %i.s, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %.01735, i64 16
  %i.y = load i32, ptr %i.x, align 4, !tbaa !49
  %i.z = sext i32 %i.y to i64
  %i.aa = mul i64 %i.w, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.01735, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !49
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul i64 %i.aa, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.01735, i64 24
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !49
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul i64 %i.ae, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.01735, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !49
  %i.al = sext i32 %i.ak to i64
  %i.am = mul i64 %i.ai, %i.al                    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01735, i64 32 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.48, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3MatC2IdEESt16initializer_listIiES2_IT_E, ptr noundef nonnull @.str.35, i32 noundef 622) #24
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !16
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.e ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ap, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.s

bb.g:                                             ; preds = %._crit_edge
  %i.av = icmp eq i64 %.016.lcssa, %4
  br i1 %i.av, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv3MatC2IdEESt16initializer_listIiES2_IT_E, ptr noundef nonnull @.str.35, i32 noundef 623) #24
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.l:                                             ; preds = %bb.i
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.l
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !16
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.k
  %.pn20 = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.ax, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.s

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.bd = trunc i64 %2 to i32
  invoke void @_ZN2cv3MatC1EiPKiiPvPKm(ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef %i.bd, ptr noundef %1, i32 noundef 6, ptr noundef %3, ptr noundef null)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.bf, align 8
  store i32 33619968, ptr %10, align 8, !tbaa !109
  store ptr %0, ptr %i.be, align 8, !tbaa !111
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  ret void

bb.p:                                             ; preds = %bb.m
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn22.pn = phi { ptr, i32 } [ %i.bh, %bb.q ], [ %i.bg, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %bb.r ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #23
  resume { ptr, i32 } %.pn22.pn.pn
}

declare void @_ZN2cv3MatC1EiPKiiPvPKm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24), i64, i64, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv10convexHullERKNS_11_InputArrayERKNS_12_OutputArrayEbb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #6

declare void @_ZN2cv14fillConvexPolyERKNS_17_InputOutputArrayEPKNS_6Point_IiEEiRKNS_7Scalar_IdEEii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) local_unnamed_addr #3

declare { i64, i64 } @_ZN2cv12boundingRectERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN2cv7grabCutERKNS_11_InputArrayERKNS_17_InputOutputArrayENS_5Rect_IiEES5_S5_ii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64, i64, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv11bitwise_andERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse.cvtss2si(<4 x float>) #18

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_INS_6Point_IiEEEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !64
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 36
  store i32 %i.d, ptr %0, align 8, !tbaa !64
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !64     ; 2 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 36
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 4
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !107
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 2, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
end_hunk_1
