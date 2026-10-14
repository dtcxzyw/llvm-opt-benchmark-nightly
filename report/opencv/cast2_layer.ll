Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/cast2_layer?download=true
inline.NumInlined: 571
inline.NumDeleted: 302
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv3dnn12_GLOBAL__N_118truncateFloatToIntERKNS_3MatERS2_:bb.a
  br i1 %niter172.ncmp.1, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit136.unr-lcssa, label %.lr.ph23.i49, !llvm.loop !175

bb.m:                                             ; preds = %bb.k
  br i1 %i.fp, label %.lr.ph.preheader.i41, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit

.lr.ph.preheader.i41:                             ; preds = %bb.m
  %wide.trip.count.i42 = zext nneg i32 %i.fi to i64 ; 2 uses
  %xtraiter161 = and i64 %wide.trip.count.i42, 1
  %i.gj = icmp eq i32 %i.fi, 1
  br i1 %i.gj, label %.lr.ph.i43.epil.preheader, label %.lr.ph.preheader.i41.new

.lr.ph.preheader.i41.new:                         ; preds = %.lr.ph.preheader.i41
  %unroll_iter165 = and i64 %wide.trip.count.i42, 2147483646
  br label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %.lr.ph.i43, %.lr.ph.preheader.i41.new
  %indvars.iv.i44 = phi i64 [ 0, %.lr.ph.preheader.i41.new ], [ %indvars.iv.next.i45.1, %.lr.ph.i43 ] ; 4 uses
  %niter166 = phi i64 [ 0, %.lr.ph.preheader.i41.new ], [ %niter166.next.1, %.lr.ph.i43 ]
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv.i44
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !81
  %i.gm = tail call double @llvm.trunc.f64(double %i.gl)
  %i.gn = insertelement <2 x double> poison, double %i.gm, i64 0
  %i.go = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.gn)
  %i.gp = tail call i32 @llvm.smax.i32(i32 %i.go, i32 -32768)
  %i.gq = tail call i32 @llvm.smin.i32(i32 %i.gp, i32 32767)
  %i.gr = trunc nsw i32 %i.gq to i16
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.fk, i64 %indvars.iv.i44
  store i16 %i.gr, ptr %i.gs, align 2, !tbaa !91
  %indvars.iv.next.i45 = or disjoint i64 %indvars.iv.i44, 1 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv.next.i45
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !81
  %i.gv = tail call double @llvm.trunc.f64(double %i.gu)
  %i.gw = insertelement <2 x double> poison, double %i.gv, i64 0
  %i.gx = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.gw)
  %i.gy = tail call i32 @llvm.smax.i32(i32 %i.gx, i32 -32768)
  %i.gz = tail call i32 @llvm.smin.i32(i32 %i.gy, i32 32767)
  %i.ha = trunc nsw i32 %i.gz to i16
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.fk, i64 %indvars.iv.next.i45
  store i16 %i.ha, ptr %i.hb, align 2, !tbaa !91
  %indvars.iv.next.i45.1 = add nuw nsw i64 %indvars.iv.i44, 2 ; 2 uses
  %niter166.next.1 = add i64 %niter166, 2         ; 2 uses
  %niter166.ncmp.1 = icmp eq i64 %niter166.next.1, %unroll_iter165
  br i1 %niter166.ncmp.1, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit137.unr-lcssa, label %.lr.ph.i43, !llvm.loop !176

bb.n:                                             ; preds = %bb.a
  %i.hc = tail call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.hd = trunc i64 %i.hc to i32
  %i.he = load i32, ptr %0, align 8, !tbaa !66    ; 2 uses
  %i.hf = lshr i32 %i.he, 5
  %i.hg = and i32 %i.hf, 127
  %i.hh = add nuw nsw i32 %i.hg, 1
  %i.hi = mul i32 %i.hh, %i.hd                    ; 5 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !89 ; 10 uses
  %i.hl = and i32 %i.he, 31
  %i.hm = icmp eq i32 %i.hl, 5
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !89 ; 10 uses
  %i.hp = icmp sgt i32 %i.hi, 0                   ; 2 uses
  br i1 %i.hm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br i1 %i.hp, label %.lr.ph23.preheader.i59, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit

.lr.ph23.preheader.i59:                           ; preds = %bb.o
  %wide.trip.count29.i60 = zext nneg i32 %i.hi to i64 ; 2 uses
  %xtraiter155 = and i64 %wide.trip.count29.i60, 3 ; 3 uses
  %i.hq = icmp ult i32 %i.hi, 4
  br i1 %i.hq, label %.lr.ph23.i61.epil.preheader, label %.lr.ph23.preheader.i59.new

.lr.ph23.preheader.i59.new:                       ; preds = %.lr.ph23.preheader.i59
  %unroll_iter159 = and i64 %wide.trip.count29.i60, 2147483644
  br label %.lr.ph23.i61

.lr.ph23.i61:                                     ; preds = %.lr.ph23.i61, %.lr.ph23.preheader.i59.new
  %indvars.iv26.i62 = phi i64 [ 0, %.lr.ph23.preheader.i59.new ], [ %indvars.iv.next27.i63.3, %.lr.ph23.i61 ] ; 6 uses
  %niter160 = phi i64 [ 0, %.lr.ph23.preheader.i59.new ], [ %niter160.next.3, %.lr.ph23.i61 ]
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv26.i62
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !87
  %i.ht = tail call noundef float @llvm.trunc.f32(float %i.hs)
  %i.hu = insertelement <4 x float> poison, float %i.ht, i64 0
  %i.hv = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.hu)
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv26.i62
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !56
  %indvars.iv.next27.i63 = or disjoint i64 %indvars.iv26.i62, 1 ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv.next27.i63
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !87
  %i.hz = tail call noundef float @llvm.trunc.f32(float %i.hy)
  %i.ia = insertelement <4 x float> poison, float %i.hz, i64 0
  %i.ib = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ia)
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv.next27.i63
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !56
  %indvars.iv.next27.i63.1 = or disjoint i64 %indvars.iv26.i62, 2 ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv.next27.i63.1
  %i.ie = load float, ptr %i.id, align 4, !tbaa !87
  %i.if = tail call noundef float @llvm.trunc.f32(float %i.ie)
  %i.ig = insertelement <4 x float> poison, float %i.if, i64 0
  %i.ih = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ig)
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv.next27.i63.1
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !56
  %indvars.iv.next27.i63.2 = or disjoint i64 %indvars.iv26.i62, 3 ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv.next27.i63.2
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !87
  %i.il = tail call noundef float @llvm.trunc.f32(float %i.ik)
  %i.im = insertelement <4 x float> poison, float %i.il, i64 0
  %i.in = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.im)
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv.next27.i63.2
  store i32 %i.in, ptr %i.io, align 4, !tbaa !56
  %indvars.iv.next27.i63.3 = add nuw nsw i64 %indvars.iv26.i62, 4 ; 2 uses
  %niter160.next.3 = add i64 %niter160, 4         ; 2 uses
  %niter160.ncmp.3 = icmp eq i64 %niter160.next.3, %unroll_iter159
  br i1 %niter160.ncmp.3, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit138.unr-lcssa, label %.lr.ph23.i61, !llvm.loop !177

bb.p:                                             ; preds = %bb.n
  br i1 %i.hp, label %.lr.ph.preheader.i53, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit

.lr.ph.preheader.i53:                             ; preds = %bb.p
  %wide.trip.count.i54 = zext nneg i32 %i.hi to i64 ; 2 uses
  %xtraiter149 = and i64 %wide.trip.count.i54, 3  ; 3 uses
  %i.ip = icmp ult i32 %i.hi, 4
  br i1 %i.ip, label %.lr.ph.i55.epil.preheader, label %.lr.ph.preheader.i53.new

.lr.ph.preheader.i53.new:                         ; preds = %.lr.ph.preheader.i53
  %unroll_iter153 = and i64 %wide.trip.count.i54, 2147483644
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55, %.lr.ph.preheader.i53.new
  %indvars.iv.i56 = phi i64 [ 0, %.lr.ph.preheader.i53.new ], [ %indvars.iv.next.i57.3, %.lr.ph.i55 ] ; 6 uses
  %niter154 = phi i64 [ 0, %.lr.ph.preheader.i53.new ], [ %niter154.next.3, %.lr.ph.i55 ]
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv.i56
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !81
  %i.is = tail call double @llvm.trunc.f64(double %i.ir)
  %i.it = insertelement <2 x double> poison, double %i.is, i64 0
  %i.iu = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.it)
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv.i56
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !56
  %indvars.iv.next.i57 = or disjoint i64 %indvars.iv.i56, 1 ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv.next.i57
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !81
  %i.iy = tail call double @llvm.trunc.f64(double %i.ix)
  %i.iz = insertelement <2 x double> poison, double %i.iy, i64 0
  %i.ja = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.iz)
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv.next.i57
  store i32 %i.ja, ptr %i.jb, align 4, !tbaa !56
  %indvars.iv.next.i57.1 = or disjoint i64 %indvars.iv.i56, 2 ; 2 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv.next.i57.1
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !81
  %i.je = tail call double @llvm.trunc.f64(double %i.jd)
  %i.jf = insertelement <2 x double> poison, double %i.je, i64 0
  %i.jg = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.jf)
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv.next.i57.1
  store i32 %i.jg, ptr %i.jh, align 4, !tbaa !56
  %indvars.iv.next.i57.2 = or disjoint i64 %indvars.iv.i56, 3 ; 2 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv.next.i57.2
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !81
  %i.jk = tail call double @llvm.trunc.f64(double %i.jj)
  %i.jl = insertelement <2 x double> poison, double %i.jk, i64 0
  %i.jm = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.jl)
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv.next.i57.2
  store i32 %i.jm, ptr %i.jn, align 4, !tbaa !56
  %indvars.iv.next.i57.3 = add nuw nsw i64 %indvars.iv.i56, 4 ; 2 uses
  %niter154.next.3 = add i64 %niter154, 4         ; 2 uses
  %niter154.ncmp.3 = icmp eq i64 %niter154.next.3, %unroll_iter153
  br i1 %niter154.ncmp.3, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit139.unr-lcssa, label %.lr.ph.i55, !llvm.loop !178

bb.q:                                             ; preds = %bb.a
  %i.jo = tail call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.jp = trunc i64 %i.jo to i32
  %i.jq = load i32, ptr %0, align 8, !tbaa !66    ; 2 uses
  %i.jr = lshr i32 %i.jq, 5
  %i.js = and i32 %i.jr, 127
  %i.jt = add nuw nsw i32 %i.js, 1
  %i.ju = mul i32 %i.jt, %i.jp                    ; 5 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !89 ; 10 uses
  %i.jx = and i32 %i.jq, 31
  %i.jy = icmp eq i32 %i.jx, 5
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !89 ; 10 uses
  %i.kb = icmp sgt i32 %i.ju, 0                   ; 2 uses
  br i1 %i.jy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  br i1 %i.kb, label %.lr.ph23.preheader.i71, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit

.lr.ph23.preheader.i71:                           ; preds = %bb.r
  %wide.trip.count29.i72 = zext nneg i32 %i.ju to i64 ; 2 uses
  %xtraiter143 = and i64 %wide.trip.count29.i72, 3 ; 3 uses
  %i.kc = icmp ult i32 %i.ju, 4
  br i1 %i.kc, label %.lr.ph23.i73.epil.preheader, label %.lr.ph23.preheader.i71.new

.lr.ph23.preheader.i71.new:                       ; preds = %.lr.ph23.preheader.i71
  %unroll_iter147 = and i64 %wide.trip.count29.i72, 2147483644
  br label %.lr.ph23.i73

.lr.ph23.i73:                                     ; preds = %.lr.ph23.i73, %.lr.ph23.preheader.i71.new
  %indvars.iv26.i74 = phi i64 [ 0, %.lr.ph23.preheader.i71.new ], [ %indvars.iv.next27.i75.3, %.lr.ph23.i73 ] ; 6 uses
  %niter148 = phi i64 [ 0, %.lr.ph23.preheader.i71.new ], [ %niter148.next.3, %.lr.ph23.i73 ]
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %indvars.iv26.i74
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !87
  %3 = tail call noundef float @llvm.trunc.f32(float %i.ke)
  %i.kf = fptosi float %3 to i64
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv26.i74
  store i64 %i.kf, ptr %i.kg, align 8, !tbaa !46
  %indvars.iv.next27.i75 = or disjoint i64 %indvars.iv26.i74, 1 ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %indvars.iv.next27.i75
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !87
  %4 = tail call noundef float @llvm.trunc.f32(float %i.ki)
  %i.kj = fptosi float %4 to i64
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next27.i75
  store i64 %i.kj, ptr %i.kk, align 8, !tbaa !46
  %indvars.iv.next27.i75.1 = or disjoint i64 %indvars.iv26.i74, 2 ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %indvars.iv.next27.i75.1
  %i.km = load float, ptr %i.kl, align 4, !tbaa !87
  %5 = tail call noundef float @llvm.trunc.f32(float %i.km)
  %i.kn = fptosi float %5 to i64
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next27.i75.1
  store i64 %i.kn, ptr %i.ko, align 8, !tbaa !46
  %indvars.iv.next27.i75.2 = or disjoint i64 %indvars.iv26.i74, 3 ; 2 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %indvars.iv.next27.i75.2
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !87
  %6 = tail call noundef float @llvm.trunc.f32(float %i.kq)
  %i.kr = fptosi float %6 to i64
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next27.i75.2
  store i64 %i.kr, ptr %i.ks, align 8, !tbaa !46
  %indvars.iv.next27.i75.3 = add nuw nsw i64 %indvars.iv26.i74, 4 ; 2 uses
  %niter148.next.3 = add i64 %niter148, 4         ; 2 uses
  %niter148.ncmp.3 = icmp eq i64 %niter148.next.3, %unroll_iter147
  br i1 %niter148.ncmp.3, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit140.unr-lcssa, label %.lr.ph23.i73, !llvm.loop !179

bb.s:                                             ; preds = %bb.q
  br i1 %i.kb, label %.lr.ph.preheader.i65, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit

.lr.ph.preheader.i65:                             ; preds = %bb.s
  %wide.trip.count.i66 = zext nneg i32 %i.ju to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i66, 3     ; 3 uses
  %i.kt = icmp ult i32 %i.ju, 4
  br i1 %i.kt, label %.lr.ph.i67.epil.preheader, label %.lr.ph.preheader.i65.new

.lr.ph.preheader.i65.new:                         ; preds = %.lr.ph.preheader.i65
  %unroll_iter = and i64 %wide.trip.count.i66, 2147483644
  br label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %.lr.ph.i67, %.lr.ph.preheader.i65.new
  %indvars.iv.i68 = phi i64 [ 0, %.lr.ph.preheader.i65.new ], [ %indvars.iv.next.i69.3, %.lr.ph.i67 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i65.new ], [ %niter.next.3, %.lr.ph.i67 ]
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %indvars.iv.i68
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !81
  %7 = tail call double @llvm.trunc.f64(double %i.kv)
  %i.kw = fptosi double %7 to i64
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.i68
  store i64 %i.kw, ptr %i.kx, align 8, !tbaa !46
  %indvars.iv.next.i69 = or disjoint i64 %indvars.iv.i68, 1 ; 2 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %indvars.iv.next.i69
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !81
  %8 = tail call double @llvm.trunc.f64(double %i.kz)
  %i.la = fptosi double %8 to i64
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i69
  store i64 %i.la, ptr %i.lb, align 8, !tbaa !46
  %indvars.iv.next.i69.1 = or disjoint i64 %indvars.iv.i68, 2 ; 2 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %indvars.iv.next.i69.1
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !81
  %9 = tail call double @llvm.trunc.f64(double %i.ld)
  %i.le = fptosi double %9 to i64
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i69.1
  store i64 %i.le, ptr %i.lf, align 8, !tbaa !46
  %indvars.iv.next.i69.2 = or disjoint i64 %indvars.iv.i68, 3 ; 2 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %indvars.iv.next.i69.2
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !81
  %10 = tail call double @llvm.trunc.f64(double %i.lh)
  %i.li = fptosi double %10 to i64
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.next.i69.2
  store i64 %i.li, ptr %i.lj, align 8, !tbaa !46
  %indvars.iv.next.i69.3 = add nuw nsw i64 %indvars.iv.i68, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit141.unr-lcssa, label %.lr.ph.i67, !llvm.loop !180

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.lk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ll = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.ll, align 8
  store i32 33619968, ptr %2, align 8, !tbaa !70
  store ptr %1, ptr %i.lk, align 8, !tbaa !71
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.b, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit

_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph23.i
  %lcmp.mod205.not = icmp eq i64 %xtraiter203, 0
  br i1 %lcmp.mod205.not, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit, label %.lr.ph23.i.epil.preheader

.lr.ph23.i.epil.preheader:                        ; preds = %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit.unr-lcssa, %.lr.ph23.preheader.i
  %indvars.iv26.i.epil.init = phi i64 [ 0, %.lr.ph23.preheader.i ], [ %indvars.iv.next27.i.1, %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod206 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod206)
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv26.i.epil.init
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !87
  %i.lo = tail call noundef float @llvm.trunc.f32(float %i.ln)
  %i.lp = insertelement <4 x float> poison, float %i.lo, i64 0
  %i.lq = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.lp)
  %i.lr = tail call i32 @llvm.smax.i32(i32 %i.lq, i32 0)
  %i.ls = tail call i32 @llvm.umin.i32(i32 %i.lr, i32 255)
  %i.lt = trunc nuw i32 %i.ls to i8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv26.i.epil.init
  store i8 %i.lt, ptr %i.lu, align 1, !tbaa !15
  br label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit

_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit131.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod199.not = icmp eq i64 %xtraiter197, 0
  br i1 %lcmp.mod199.not, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit131.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit131.unr-lcssa ] ; 2 uses
  %lcmp.mod200 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod200)
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.epil.init
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !81
  %i.lx = tail call double @llvm.trunc.f64(double %i.lw)
  %i.ly = insertelement <2 x double> poison, double %i.lx, i64 0
  %i.lz = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ly)
  %i.ma = tail call i32 @llvm.smax.i32(i32 %i.lz, i32 0)
  %i.mb = tail call i32 @llvm.umin.i32(i32 %i.ma, i32 255)
  %i.mc = trunc nuw i32 %i.mb to i8
  %i.md = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.i.epil.init
  store i8 %i.mc, ptr %i.md, align 1, !tbaa !15
  br label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit

_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit132.unr-lcssa: ; preds = %.lr.ph23.i25
  %lcmp.mod193.not = icmp eq i64 %xtraiter191, 0
  br i1 %lcmp.mod193.not, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit, label %.lr.ph23.i25.epil.preheader

.lr.ph23.i25.epil.preheader:                      ; preds = %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit132.unr-lcssa, %.lr.ph23.preheader.i23
  %indvars.iv26.i26.epil.init = phi i64 [ 0, %.lr.ph23.preheader.i23 ], [ %indvars.iv.next27.i27.1, %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit132.unr-lcssa ] ; 2 uses
  %lcmp.mod194 = trunc i32 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod194)
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv26.i26.epil.init
  %i.mf = load float, ptr %i.me, align 4, !tbaa !87
  %i.mg = tail call noundef float @llvm.trunc.f32(float %i.mf)
  %i.mh = insertelement <4 x float> poison, float %i.mg, i64 0
  %i.mi = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.mh)
  %i.mj = tail call i32 @llvm.smax.i32(i32 %i.mi, i32 -128)
  %i.mk = tail call i32 @llvm.smin.i32(i32 %i.mj, i32 127)
  %i.ml = trunc nsw i32 %i.mk to i8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv26.i26.epil.init
  store i8 %i.ml, ptr %i.mm, align 1, !tbaa !15
  br label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit

_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit133.unr-lcssa: ; preds = %.lr.ph.i19
  %lcmp.mod187.not = icmp eq i64 %xtraiter185, 0
  br i1 %lcmp.mod187.not, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit, label %.lr.ph.i19.epil.preheader

.lr.ph.i19.epil.preheader:                        ; preds = %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit133.unr-lcssa, %.lr.ph.preheader.i17
  %indvars.iv.i20.epil.init = phi i64 [ 0, %.lr.ph.preheader.i17 ], [ %indvars.iv.next.i21.1, %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit133.unr-lcssa ] ; 2 uses
  %lcmp.mod188 = trunc i32 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod188)
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i20.epil.init
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !81
  %i.mp = tail call double @llvm.trunc.f64(double %i.mo)
  %i.mq = insertelement <2 x double> poison, double %i.mp, i64 0
  %i.mr = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.mq)
  %i.ms = tail call i32 @llvm.smax.i32(i32 %i.mr, i32 -128)
  %i.mt = tail call i32 @llvm.smin.i32(i32 %i.ms, i32 127)
  %i.mu = trunc nsw i32 %i.mt to i8
  %i.mv = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv.i20.epil.init
  store i8 %i.mu, ptr %i.mv, align 1, !tbaa !15
  br label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit

_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit134.unr-lcssa: ; preds = %.lr.ph23.i37
  %lcmp.mod181.not = icmp eq i64 %xtraiter179, 0
  br i1 %lcmp.mod181.not, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit, label %.lr.ph23.i37.epil.preheader

.lr.ph23.i37.epil.preheader:                      ; preds = %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit134.unr-lcssa, %.lr.ph23.preheader.i35
  %indvars.iv26.i38.epil.init = phi i64 [ 0, %.lr.ph23.preheader.i35 ], [ %indvars.iv.next27.i39.1, %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit134.unr-lcssa ] ; 2 uses
  %lcmp.mod182 = trunc i32 %i.di to i1
  tail call void @llvm.assume(i1 %lcmp.mod182)
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv26.i38.epil.init
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !87
  %i.my = tail call noundef float @llvm.trunc.f32(float %i.mx)
  %i.mz = insertelement <4 x float> poison, float %i.my, i64 0
  %i.na = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.mz)
  %i.nb = tail call i32 @llvm.smax.i32(i32 %i.na, i32 0)
  %i.nc = tail call i32 @llvm.umin.i32(i32 %i.nb, i32 65535)
  %i.nd = trunc nuw i32 %i.nc to i16
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %indvars.iv26.i38.epil.init
  store i16 %i.nd, ptr %i.ne, align 2, !tbaa !91
  br label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit

_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit135.unr-lcssa: ; preds = %.lr.ph.i31
  %lcmp.mod175.not = icmp eq i64 %xtraiter173, 0
  br i1 %lcmp.mod175.not, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit, label %.lr.ph.i31.epil.preheader

.lr.ph.i31.epil.preheader:                        ; preds = %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit135.unr-lcssa, %.lr.ph.preheader.i29
  %indvars.iv.i32.epil.init = phi i64 [ 0, %.lr.ph.preheader.i29 ], [ %indvars.iv.next.i33.1, %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit135.unr-lcssa ] ; 2 uses
  %lcmp.mod176 = trunc i32 %i.di to i1
  tail call void @llvm.assume(i1 %lcmp.mod176)
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.i32.epil.init
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !81
  %i.nh = tail call double @llvm.trunc.f64(double %i.ng)
  %i.ni = insertelement <2 x double> poison, double %i.nh, i64 0
  %i.nj = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ni)
  %i.nk = tail call i32 @llvm.smax.i32(i32 %i.nj, i32 0)
  %i.nl = tail call i32 @llvm.umin.i32(i32 %i.nk, i32 65535)
  %i.nm = trunc nuw i32 %i.nl to i16
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %indvars.iv.i32.epil.init
  store i16 %i.nm, ptr %i.nn, align 2, !tbaa !91
  br label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit

_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit136.unr-lcssa: ; preds = %.lr.ph23.i49
  %lcmp.mod169.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod169.not, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit, label %.lr.ph23.i49.epil.preheader

.lr.ph23.i49.epil.preheader:                      ; preds = %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit136.unr-lcssa, %.lr.ph23.preheader.i47
  %indvars.iv26.i50.epil.init = phi i64 [ 0, %.lr.ph23.preheader.i47 ], [ %indvars.iv.next27.i51.1, %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit136.unr-lcssa ] ; 2 uses
  %lcmp.mod170 = trunc i32 %i.fi to i1
  tail call void @llvm.assume(i1 %lcmp.mod170)
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv26.i50.epil.init
  %i.np = load float, ptr %i.no, align 4, !tbaa !87
  %i.nq = tail call noundef float @llvm.trunc.f32(float %i.np)
  %i.nr = insertelement <4 x float> poison, float %i.nq, i64 0
  %i.ns = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.nr)
  %i.nt = tail call i32 @llvm.smax.i32(i32 %i.ns, i32 -32768)
  %i.nu = tail call i32 @llvm.smin.i32(i32 %i.nt, i32 32767)
  %i.nv = trunc nsw i32 %i.nu to i16
  %i.nw = getelementptr inbounds nuw [2 x i8], ptr %i.fk, i64 %indvars.iv26.i50.epil.init
  store i16 %i.nv, ptr %i.nw, align 2, !tbaa !91
  br label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit

_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit137.unr-lcssa: ; preds = %.lr.ph.i43
  %lcmp.mod163.not = icmp eq i64 %xtraiter161, 0
  br i1 %lcmp.mod163.not, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit, label %.lr.ph.i43.epil.preheader

.lr.ph.i43.epil.preheader:                        ; preds = %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit137.unr-lcssa, %.lr.ph.preheader.i41
  %indvars.iv.i44.epil.init = phi i64 [ 0, %.lr.ph.preheader.i41 ], [ %indvars.iv.next.i45.1, %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit137.unr-lcssa ] ; 2 uses
  %lcmp.mod164 = trunc i32 %i.fi to i1
  tail call void @llvm.assume(i1 %lcmp.mod164)
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv.i44.epil.init
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !81
  %i.nz = tail call double @llvm.trunc.f64(double %i.ny)
  %i.oa = insertelement <2 x double> poison, double %i.nz, i64 0
  %i.ob = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.oa)
  %i.oc = tail call i32 @llvm.smax.i32(i32 %i.ob, i32 -32768)
  %i.od = tail call i32 @llvm.smin.i32(i32 %i.oc, i32 32767)
  %i.oe = trunc nsw i32 %i.od to i16
  %i.of = getelementptr inbounds nuw [2 x i8], ptr %i.fk, i64 %indvars.iv.i44.epil.init
  store i16 %i.oe, ptr %i.of, align 2, !tbaa !91
  br label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit

_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit138.unr-lcssa: ; preds = %.lr.ph23.i61
  %lcmp.mod157.not = icmp eq i64 %xtraiter155, 0
  br i1 %lcmp.mod157.not, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit, label %.lr.ph23.i61.epil.preheader

.lr.ph23.i61.epil.preheader:                      ; preds = %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit138.unr-lcssa, %.lr.ph23.preheader.i59
  %indvars.iv26.i62.epil.init = phi i64 [ 0, %.lr.ph23.preheader.i59 ], [ %indvars.iv.next27.i63.3, %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit138.unr-lcssa ]
  %lcmp.mod158 = icmp ne i64 %xtraiter155, 0
  tail call void @llvm.assume(i1 %lcmp.mod158)
  br label %.lr.ph23.i61.epil

.lr.ph23.i61.epil:                                ; preds = %.lr.ph23.i61.epil, %.lr.ph23.i61.epil.preheader
  %indvars.iv26.i62.epil = phi i64 [ %indvars.iv26.i62.epil.init, %.lr.ph23.i61.epil.preheader ], [ %indvars.iv.next27.i63.epil, %.lr.ph23.i61.epil ] ; 3 uses
  %epil.iter156 = phi i64 [ 0, %.lr.ph23.i61.epil.preheader ], [ %epil.iter156.next, %.lr.ph23.i61.epil ]
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv26.i62.epil
  %i.oh = load float, ptr %i.og, align 4, !tbaa !87
  %i.oi = tail call noundef float @llvm.trunc.f32(float %i.oh)
  %i.oj = insertelement <4 x float> poison, float %i.oi, i64 0
  %i.ok = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.oj)
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv26.i62.epil
  store i32 %i.ok, ptr %i.ol, align 4, !tbaa !56
  %indvars.iv.next27.i63.epil = add nuw nsw i64 %indvars.iv26.i62.epil, 1
  %epil.iter156.next = add i64 %epil.iter156, 1   ; 2 uses
  %epil.iter156.cmp.not = icmp eq i64 %epil.iter156.next, %xtraiter155
  br i1 %epil.iter156.cmp.not, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit, label %.lr.ph23.i61.epil, !llvm.loop !181

_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit139.unr-lcssa: ; preds = %.lr.ph.i55
  %lcmp.mod151.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod151.not, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit, label %.lr.ph.i55.epil.preheader

.lr.ph.i55.epil.preheader:                        ; preds = %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit139.unr-lcssa, %.lr.ph.preheader.i53
  %indvars.iv.i56.epil.init = phi i64 [ 0, %.lr.ph.preheader.i53 ], [ %indvars.iv.next.i57.3, %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit139.unr-lcssa ]
  %lcmp.mod152 = icmp ne i64 %xtraiter149, 0
  tail call void @llvm.assume(i1 %lcmp.mod152)
  br label %.lr.ph.i55.epil

.lr.ph.i55.epil:                                  ; preds = %.lr.ph.i55.epil, %.lr.ph.i55.epil.preheader
  %indvars.iv.i56.epil = phi i64 [ %indvars.iv.i56.epil.init, %.lr.ph.i55.epil.preheader ], [ %indvars.iv.next.i57.epil, %.lr.ph.i55.epil ] ; 3 uses
  %epil.iter150 = phi i64 [ 0, %.lr.ph.i55.epil.preheader ], [ %epil.iter150.next, %.lr.ph.i55.epil ]
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv.i56.epil
  %i.on = load double, ptr %i.om, align 8, !tbaa !81
  %i.oo = tail call double @llvm.trunc.f64(double %i.on)
  %i.op = insertelement <2 x double> poison, double %i.oo, i64 0
  %i.oq = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.op)
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv.i56.epil
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !56
  %indvars.iv.next.i57.epil = add nuw nsw i64 %indvars.iv.i56.epil, 1
  %epil.iter150.next = add i64 %epil.iter150, 1   ; 2 uses
  %epil.iter150.cmp.not = icmp eq i64 %epil.iter150.next, %xtraiter149
  br i1 %epil.iter150.cmp.not, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit, label %.lr.ph.i55.epil, !llvm.loop !182

_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit140.unr-lcssa: ; preds = %.lr.ph23.i73
  %lcmp.mod145.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod145.not, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit, label %.lr.ph23.i73.epil.preheader

.lr.ph23.i73.epil.preheader:                      ; preds = %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit140.unr-lcssa, %.lr.ph23.preheader.i71
  %indvars.iv26.i74.epil.init = phi i64 [ 0, %.lr.ph23.preheader.i71 ], [ %indvars.iv.next27.i75.3, %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit140.unr-lcssa ]
  %lcmp.mod146 = icmp ne i64 %xtraiter143, 0
  tail call void @llvm.assume(i1 %lcmp.mod146)
  br label %.lr.ph23.i73.epil

.lr.ph23.i73.epil:                                ; preds = %.lr.ph23.i73.epil, %.lr.ph23.i73.epil.preheader
  %indvars.iv26.i74.epil = phi i64 [ %indvars.iv26.i74.epil.init, %.lr.ph23.i73.epil.preheader ], [ %indvars.iv.next27.i75.epil, %.lr.ph23.i73.epil ] ; 3 uses
  %epil.iter144 = phi i64 [ 0, %.lr.ph23.i73.epil.preheader ], [ %epil.iter144.next, %.lr.ph23.i73.epil ]
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %indvars.iv26.i74.epil
  %i.ot = load float, ptr %i.os, align 4, !tbaa !87
  %11 = tail call noundef float @llvm.trunc.f32(float %i.ot)
  %i.ou = fptosi float %11 to i64
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv26.i74.epil
  store i64 %i.ou, ptr %i.ov, align 8, !tbaa !46
  %indvars.iv.next27.i75.epil = add nuw nsw i64 %indvars.iv26.i74.epil, 1
  %epil.iter144.next = add i64 %epil.iter144, 1   ; 2 uses
  %epil.iter144.cmp.not = icmp eq i64 %epil.iter144.next, %xtraiter143
  br i1 %epil.iter144.cmp.not, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit, label %.lr.ph23.i73.epil, !llvm.loop !183

_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit141.unr-lcssa: ; preds = %.lr.ph.i67
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit, label %.lr.ph.i67.epil.preheader

.lr.ph.i67.epil.preheader:                        ; preds = %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit141.unr-lcssa, %.lr.ph.preheader.i65
  %indvars.iv.i68.epil.init = phi i64 [ 0, %.lr.ph.preheader.i65 ], [ %indvars.iv.next.i69.3, %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit141.unr-lcssa ]
  %lcmp.mod142 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod142)
  br label %.lr.ph.i67.epil

.lr.ph.i67.epil:                                  ; preds = %.lr.ph.i67.epil, %.lr.ph.i67.epil.preheader
  %indvars.iv.i68.epil = phi i64 [ %indvars.iv.i68.epil.init, %.lr.ph.i67.epil.preheader ], [ %indvars.iv.next.i69.epil, %.lr.ph.i67.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i67.epil.preheader ], [ %epil.iter.next, %.lr.ph.i67.epil ]
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %indvars.iv.i68.epil
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !81
  %12 = tail call double @llvm.trunc.f64(double %i.ox)
  %i.oy = fptosi double %12 to i64
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.i68.epil
  store i64 %i.oy, ptr %i.oz, align 8, !tbaa !46
  %indvars.iv.next.i69.epil = add nuw nsw i64 %indvars.iv.i68.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit, label %.lr.ph.i67.epil, !llvm.loop !184

_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit: ; preds = %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit141.unr-lcssa, %.lr.ph.i67.epil, %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit140.unr-lcssa, %.lr.ph23.i73.epil, %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit139.unr-lcssa, %.lr.ph.i55.epil, %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit138.unr-lcssa, %.lr.ph23.i61.epil, %.lr.ph.i43.epil.preheader, %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit137.unr-lcssa, %.lr.ph23.i49.epil.preheader, %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit136.unr-lcssa, %.lr.ph.i31.epil.preheader, %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit135.unr-lcssa, %.lr.ph23.i37.epil.preheader, %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit134.unr-lcssa, %.lr.ph.i19.epil.preheader, %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit133.unr-lcssa, %.lr.ph23.i25.epil.preheader, %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit132.unr-lcssa, %.lr.ph.i.epil.preheader, %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit131.unr-lcssa, %.lr.ph23.i.epil.preheader, %_ZN2cv3dnn12_GLOBAL__N_117truncateToIntImplIhEEvRKNS_3MatERS3_.exit.loopexit.unr-lcssa, %bb.s, %bb.r, %bb.p, %bb.o, %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.c, %bb.t
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i) #22
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 208 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !50
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit:  ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #21
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !73
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
  tail call void @__clang_call_terminate(ptr %i.d) #23
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #8

declare void @_ZN2cv3MatC1ENS_5Size_IiEEiPvm(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv16MatConstIteratorC2EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  store ptr %1, ptr %0, align 8, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !66     ; 3 uses
  %i.c = lshr i32 %i.b, 5
  %i.d = and i32 %i.c, 127
  %i.e = add nuw nsw i32 %i.d, 1
  %i.f = shl i32 %i.b, 2
  %i.g = and i32 %i.f, 124
  %i.h = zext nneg i32 %i.g to i64
  %i.i = lshr i64 1275511473185297, %i.h
  %i.j = trunc i64 %i.i to i32
  %i.k = and i32 %i.j, 15
  %i.l = mul nuw nsw i32 %i.k, %i.e
  %i.m = zext nneg i32 %i.l to i64
  store i64 %i.m, ptr %i.a, align 8, !tbaa !84
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = and i32 %i.b, 16384
  %.not = icmp eq i32 %i.q, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.r, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv16MatConstIteratorC2EPKNS_3MatE, ptr noundef nonnull @.str.26, i32 noundef 2491) #24
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %2, align 8, !tbaa !43     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.u, align 8, !tbaa !15
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.s

bb.f:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %0, align 8, !tbaa !83     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !89  ; 2 uses
  store ptr %i.aa, ptr %i.o, align 8, !tbaa !85
  %i.ab = tail call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.y)
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !84
  %i.ad = mul i64 %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  store ptr %i.ae, ptr %i.p, align 8, !tbaa !88
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  tail call void @_ZN2cv16MatConstIterator4seekEPKib(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef null, i1 noundef zeroext false)
  ret void
}

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #6

declare void @_ZN2cv16MatConstIterator4seekEPKib(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZN2cv16MatConstIterator4seekElb(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse.cvtss2si(<4 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.trunc.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse2.cvtsd2si(<2 x double>) #16

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(52) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.127", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.c = load ptr, ptr %0, align 8, !tbaa !77     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 52
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EEC2EmRKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(52) %2, ptr noundef nonnull align 1 dereferenceable(1) %0)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !92
  %i.k = load <2 x ptr>, ptr %0, align 8, !tbaa !187
  %i.l = load ptr, ptr %0, align 8, !tbaa !77     ; 3 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !92   ; 2 uses
end_hunk_0
