Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/game?download=true
inline.NumInlined: 6214
inline.NumDeleted: 2423
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4Game18updatePointedThingERKN4core6line3dIfEEbRKSt8optionalI14PointabilitiesEbRKNS0_8vector3dIsEE:bb.a
  %i.gw = fadd nsz float %.sroa.09.4.vec.extract.i, %i.gv
  %i.gx = fdiv nsz float %i.gw, 1.000000e+01
  %i.gy = fptosi float %i.gx to i16               ; 7 uses
  %i.gz = insertelement <2 x float> %.sroa.01.0.copyload.i, float %.sroa.22.0.copyload.i, i64 1 ; 2 uses
  %i.ha = fcmp nsz ogt <2 x float> %i.gz, zeroinitializer
  %i.hb = select <2 x i1> %i.ha, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.hc = fadd nsz <2 x float> %i.gz, %i.hb
  %i.hd = fdiv nsz <2 x float> %i.hc, splat (float 1.000000e+01) ; 2 uses
  %i.he = extractelement <2 x float> %i.hd, i64 0
  %i.hf = fptosi float %i.he to i16               ; 7 uses
  %i.hg = extractelement <2 x float> %i.hd, i64 1
  %i.hh = fptosi float %i.hg to i16               ; 7 uses
  %.sroa.3.0.insert.ext.i = zext i16 %i.hh to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %.sroa.2.0.insert.ext.i = zext i16 %i.gy to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %.sroa.0.0.insert.ext.i = zext i16 %i.hf to i48
  %i.hi = or disjoint i48 %.sroa.3.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or disjoint i48 %i.hi, %.sroa.2.0.insert.shift.i
  %i.hj = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i, ptr noundef null)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.hk = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.hj, i32 noundef -1, ptr noundef %i.w)
          to label %.preheader.preheader unwind label %bb.bg

.preheader.preheader:                             ; preds = %bb.be
  %i.hl = load i16, ptr @g_6dirs, align 16, !tbaa !792
  %i.hm = add i16 %i.hl, %i.hf
  %i.hn = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 2), align 2, !tbaa !793
  %i.ho = add i16 %i.hn, %i.gy
  %i.hp = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 4), align 4, !tbaa !794
  %i.hq = add i16 %i.hp, %i.hh
  %.sroa.3.0.insert.ext.i169 = zext i16 %i.hq to i48
  %.sroa.3.0.insert.shift.i170 = shl nuw i48 %.sroa.3.0.insert.ext.i169, 32
  %.sroa.2.0.insert.ext.i171 = zext i16 %i.ho to i48
  %.sroa.2.0.insert.shift.i172 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i171, 16
  %.sroa.2.0.insert.insert.i173 = or disjoint i48 %.sroa.3.0.insert.shift.i170, %.sroa.2.0.insert.shift.i172
  %.sroa.0.0.insert.ext.i174 = zext i16 %i.hm to i48
  %.sroa.0.0.insert.insert.i175 = or disjoint i48 %.sroa.2.0.insert.insert.i173, %.sroa.0.0.insert.ext.i174
  %i.hr = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i175, ptr noundef null)
          to label %bb.bh unwind label %bb.bo

bb.bf:                                            ; preds = %bb.bd
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bg:                                            ; preds = %bb.be
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bh:                                            ; preds = %.preheader.preheader
  %i.hu = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.hr, i32 noundef -1, ptr noundef %i.w)
          to label %.preheader.1 unwind label %bb.bp

.preheader.1:                                     ; preds = %bb.bh
  %spec.select = call i16 @llvm.umax.i16(i16 %i.hu, i16 %i.hk)
  %i.hv = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 6), align 2, !tbaa !792
  %i.hw = add i16 %i.hv, %i.hf
  %i.hx = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 8), align 8, !tbaa !793
  %i.hy = add i16 %i.hx, %i.gy
  %i.hz = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 10), align 2, !tbaa !794
  %i.ia = add i16 %i.hz, %i.hh
  %.sroa.3.0.insert.ext.i169.1 = zext i16 %i.ia to i48
  %.sroa.3.0.insert.shift.i170.1 = shl nuw i48 %.sroa.3.0.insert.ext.i169.1, 32
  %.sroa.2.0.insert.ext.i171.1 = zext i16 %i.hy to i48
  %.sroa.2.0.insert.shift.i172.1 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i171.1, 16
  %.sroa.2.0.insert.insert.i173.1 = or disjoint i48 %.sroa.3.0.insert.shift.i170.1, %.sroa.2.0.insert.shift.i172.1
  %.sroa.0.0.insert.ext.i174.1 = zext i16 %i.hw to i48
  %.sroa.0.0.insert.insert.i175.1 = or disjoint i48 %.sroa.2.0.insert.insert.i173.1, %.sroa.0.0.insert.ext.i174.1
  %i.ib = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i175.1, ptr noundef null)
          to label %bb.bi unwind label %bb.bo

bb.bi:                                            ; preds = %.preheader.1
  %i.ic = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.ib, i32 noundef -1, ptr noundef %i.w)
          to label %.preheader.2 unwind label %bb.bp

.preheader.2:                                     ; preds = %bb.bi
  %spec.select.1 = call i16 @llvm.umax.i16(i16 %i.ic, i16 %spec.select)
  %i.id = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 12), align 4, !tbaa !792
  %i.ie = add i16 %i.id, %i.hf
  %i.if = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 14), align 2, !tbaa !793
  %i.ig = add i16 %i.if, %i.gy
  %i.ih = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 16), align 16, !tbaa !794
  %i.ii = add i16 %i.ih, %i.hh
  %.sroa.3.0.insert.ext.i169.2 = zext i16 %i.ii to i48
  %.sroa.3.0.insert.shift.i170.2 = shl nuw i48 %.sroa.3.0.insert.ext.i169.2, 32
  %.sroa.2.0.insert.ext.i171.2 = zext i16 %i.ig to i48
  %.sroa.2.0.insert.shift.i172.2 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i171.2, 16
  %.sroa.2.0.insert.insert.i173.2 = or disjoint i48 %.sroa.3.0.insert.shift.i170.2, %.sroa.2.0.insert.shift.i172.2
  %.sroa.0.0.insert.ext.i174.2 = zext i16 %i.ie to i48
  %.sroa.0.0.insert.insert.i175.2 = or disjoint i48 %.sroa.2.0.insert.insert.i173.2, %.sroa.0.0.insert.ext.i174.2
  %i.ij = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i175.2, ptr noundef null)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %.preheader.2
  %i.ik = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.ij, i32 noundef -1, ptr noundef %i.w)
          to label %.preheader.3 unwind label %bb.bp

.preheader.3:                                     ; preds = %bb.bj
  %spec.select.2 = call i16 @llvm.umax.i16(i16 %i.ik, i16 %spec.select.1)
  %i.il = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 18), align 2, !tbaa !792
  %i.im = add i16 %i.il, %i.hf
  %i.in = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 20), align 4, !tbaa !793
  %i.io = add i16 %i.in, %i.gy
  %i.ip = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 22), align 2, !tbaa !794
  %i.iq = add i16 %i.ip, %i.hh
  %.sroa.3.0.insert.ext.i169.3 = zext i16 %i.iq to i48
  %.sroa.3.0.insert.shift.i170.3 = shl nuw i48 %.sroa.3.0.insert.ext.i169.3, 32
  %.sroa.2.0.insert.ext.i171.3 = zext i16 %i.io to i48
  %.sroa.2.0.insert.shift.i172.3 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i171.3, 16
  %.sroa.2.0.insert.insert.i173.3 = or disjoint i48 %.sroa.3.0.insert.shift.i170.3, %.sroa.2.0.insert.shift.i172.3
  %.sroa.0.0.insert.ext.i174.3 = zext i16 %i.im to i48
  %.sroa.0.0.insert.insert.i175.3 = or disjoint i48 %.sroa.2.0.insert.insert.i173.3, %.sroa.0.0.insert.ext.i174.3
  %i.ir = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i175.3, ptr noundef null)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %.preheader.3
  %i.is = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.ir, i32 noundef -1, ptr noundef %i.w)
          to label %.preheader.4 unwind label %bb.bp

.preheader.4:                                     ; preds = %bb.bk
  %spec.select.3 = call i16 @llvm.umax.i16(i16 %i.is, i16 %spec.select.2)
  %i.it = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 24), align 8, !tbaa !792
  %i.iu = add i16 %i.it, %i.hf
  %i.iv = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 26), align 2, !tbaa !793
  %i.iw = add i16 %i.iv, %i.gy
  %i.ix = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 28), align 4, !tbaa !794
  %i.iy = add i16 %i.ix, %i.hh
  %.sroa.3.0.insert.ext.i169.4 = zext i16 %i.iy to i48
  %.sroa.3.0.insert.shift.i170.4 = shl nuw i48 %.sroa.3.0.insert.ext.i169.4, 32
  %.sroa.2.0.insert.ext.i171.4 = zext i16 %i.iw to i48
  %.sroa.2.0.insert.shift.i172.4 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i171.4, 16
  %.sroa.2.0.insert.insert.i173.4 = or disjoint i48 %.sroa.3.0.insert.shift.i170.4, %.sroa.2.0.insert.shift.i172.4
  %.sroa.0.0.insert.ext.i174.4 = zext i16 %i.iu to i48
  %.sroa.0.0.insert.insert.i175.4 = or disjoint i48 %.sroa.2.0.insert.insert.i173.4, %.sroa.0.0.insert.ext.i174.4
  %i.iz = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i175.4, ptr noundef null)
          to label %bb.bl unwind label %bb.bo

bb.bl:                                            ; preds = %.preheader.4
  %i.ja = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.iz, i32 noundef -1, ptr noundef %i.w)
          to label %.preheader.5 unwind label %bb.bp

.preheader.5:                                     ; preds = %bb.bl
  %spec.select.4 = call i16 @llvm.umax.i16(i16 %i.ja, i16 %spec.select.3)
  %i.jb = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 30), align 2, !tbaa !792
  %i.jc = add i16 %i.jb, %i.hf
  %i.jd = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 32), align 16, !tbaa !793
  %i.je = add i16 %i.jd, %i.gy
  %i.jf = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_6dirs, i64 34), align 2, !tbaa !794
  %i.jg = add i16 %i.jf, %i.hh
  %.sroa.3.0.insert.ext.i169.5 = zext i16 %i.jg to i48
  %.sroa.3.0.insert.shift.i170.5 = shl nuw i48 %.sroa.3.0.insert.ext.i169.5, 32
  %.sroa.2.0.insert.ext.i171.5 = zext i16 %i.je to i48
  %.sroa.2.0.insert.shift.i172.5 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i171.5, 16
  %.sroa.2.0.insert.insert.i173.5 = or disjoint i48 %.sroa.3.0.insert.shift.i170.5, %.sroa.2.0.insert.shift.i172.5
  %.sroa.0.0.insert.ext.i174.5 = zext i16 %i.jc to i48
  %.sroa.0.0.insert.insert.i175.5 = or disjoint i48 %.sroa.2.0.insert.insert.i173.5, %.sroa.0.0.insert.ext.i174.5
  %i.jh = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i48 %.sroa.0.0.insert.insert.i175.5, ptr noundef null)
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %.preheader.5
  %i.ji = invoke noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %i.jh, i32 noundef -1, ptr noundef %i.w)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.jj = load ptr, ptr %i.r, align 8, !tbaa !265
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 128
  %i.jl = invoke noundef i32 @_ZN11Environment16getDayNightRatioEv(ptr noundef nonnull align 8 dereferenceable(88) %i.jk)
          to label %bb.bq unwind label %bb.bs

bb.bo:                                            ; preds = %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bp:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bq:                                            ; preds = %bb.bn
  %spec.select.5 = call i16 @llvm.umax.i16(i16 %i.ji, i16 %spec.select.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  store i32 0, ptr %15, align 4, !tbaa !903
  invoke void @_Z17final_color_blendPN5video6SColorEtj(ptr noundef nonnull %15, i16 noundef zeroext %spec.select.5, i32 noundef %i.jl)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jo = load ptr, ptr %i.r, align 8, !tbaa !265
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 544
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !920
  %i.jr = urem i64 %i.jq, 5000
  %i.js = trunc nuw nsw i64 %i.jr to i32
  %i.jt = uitofp nsz nneg i32 %i.js to double
  %i.ju = fdiv nnan nsz double %i.jt, 2.500000e+03
  %i.jv = fadd nnan nsz double %i.ju, -5.000000e-01
  %i.jw = fmul nnan nsz double %i.jv, f0x400921FB60000000
  %16 = fptrunc nsz double %i.jw to float         ; 3 uses
  %17 = fadd nsz float %16, f0x40490FDB
  %18 = call nsz noundef float @llvm.sin.f32(float %17)
  %19 = fmul nsz float %18, 8.000000e-02
  %i.jx = load i32, ptr %15, align 4, !tbaa !903  ; 4 uses
  %i.jy = and i32 %i.jx, 255
  %i.jz = uitofp nsz nneg i32 %i.jy to double
  %20 = fpext nsz float %19 to double
  %21 = fadd nsz double %20, 8.000000e-01
  %22 = fmul nsz double %21, %i.jz
  %23 = fptrunc nsz double %22 to float
  %i.ka = fadd nsz float %23, 5.000000e-01
  %i.kb = call nsz noundef float @llvm.floor.f32(float %i.ka)
  %24 = fptosi float %i.kb to i32
  %25 = call nsz noundef float @llvm.sin.f32(float %16)
  %26 = fadd nsz float %16, f0x3FC90FDB
  %27 = call nsz noundef float @llvm.sin.f32(float %26)
  %28 = insertelement <2 x float> poison, float %25, i64 0
  %29 = insertelement <2 x float> %28, float %27, i64 1
  %30 = fmul nsz <2 x float> %29, splat (float 8.000000e-02)
  %i.kc = lshr i32 %i.jx, 16
  %i.kd = and i32 %i.kc, 255
  %i.ke = uitofp nsz nneg i32 %i.kd to double
  %i.kf = and i32 %i.jx, -16777216
  %i.kg = lshr i32 %i.jx, 8
  %i.kh = and i32 %i.kg, 255
  %i.ki = uitofp nsz nneg i32 %i.kh to double
  %i.kj = fpext <2 x float> %30 to <2 x double>
  %i.kk = fadd nsz <2 x double> %i.kj, splat (double 8.000000e-01)
  %i.kl = insertelement <2 x double> poison, double %i.ke, i64 0
  %i.km = insertelement <2 x double> %i.kl, double %i.ki, i64 1
  %i.kn = fmul nsz <2 x double> %i.kk, %i.km
  %i.ko = fptrunc <2 x double> %i.kn to <2 x float>
  %i.kp = fadd nsz <2 x float> %i.ko, splat (float 5.000000e-01)
  %i.kq = call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.kp)
  %i.kr = insertelement <4 x i32> poison, i32 %24, i64 2
  %i.ks = insertelement <4 x i32> %i.kr, i32 %i.kf, i64 3
  %i.kt = shufflevector <2 x float> %i.kq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ku = fptosi <4 x float> %i.kt to <4 x i32>
  %i.kv = shufflevector <4 x i32> %i.ku, <4 x i32> %i.ks, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.kw = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.kv, <4 x i32> <i32 0, i32 0, i32 0, i32 -2147483648>)
  %i.kx = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.kw, <4 x i32> <i32 255, i32 255, i32 255, i32 -1>)
  %i.ky = shl nuw nsw <4 x i32> %i.kx, <i32 16, i32 8, i32 0, i32 0>
  %i.kz = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ky)
  %i.la = load ptr, ptr %i.a, align 8, !tbaa !267
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 288
  store i32 %i.kz, ptr %i.lb, align 8, !tbaa !546
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.bu

bb.bs:                                            ; preds = %bb.bn
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bt:                                            ; preds = %bb.bq
  %i.ld = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.bx

bb.bu:                                            ; preds = %bb.br, %bb.bc
  %i.le = getelementptr inbounds nuw i8, ptr %9, i64 368 ; 2 uses
  %i.lf = load i8, ptr %i.le, align 8, !tbaa !921, !range !307, !noundef !213
  %i.lg = trunc nuw i8 %i.lf to i1
  store i8 0, ptr %i.le, align 8, !tbaa !921
  br i1 %i.lg, label %bb.bv, label %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit.i

bb.bv:                                            ; preds = %bb.bu
  %i.lh = getelementptr inbounds nuw i8, ptr %9, i64 144
  call void @_ZN14PointabilitiesD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(232) %i.lh) #34
  br label %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit.i: ; preds = %bb.bv, %bb.bu
  %i.li = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !924 ; 3 uses
  %.not.i.i.i.i.i176 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i.i.i.i176, label %_ZN12RaycastStateD2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit.i
  %i.lk = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !925
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = ptrtoint ptr %i.lj to i64
  %i.lo = sub i64 %i.lm, %i.ln
  call void @_ZdlPvm(ptr noundef nonnull %i.lj, i64 noundef %i.lo) #36
  br label %_ZN12RaycastStateD2Ev.exit

_ZN12RaycastStateD2Ev.exit:                       ; preds = %_ZNSt14_Optional_baseI14PointabilitiesLb0ELb0EED2Ev.exit.i, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  ret void

bb.bx:                                            ; preds = %bb.bg, %bb.bs, %bb.bt, %bb.bo, %bb.bp, %bb.bf, %bb.bb, %bb.ak, %bb.x
  %.pn134.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn117.pn.pn, %bb.bb ], [ %.pn121.pn, %bb.ak ], [ %i.df, %bb.x ], [ %i.lc, %bb.bs ], [ %i.hs, %bb.bf ], [ %i.ht, %bb.bg ], [ %i.jm, %bb.bo ], [ %i.jn, %bb.bp ], [ %i.ld, %bb.bt ]
  call void @_ZN12RaycastStateD2Ev(ptr noundef nonnull align 8 dead_on_return(389) dereferenceable(389) %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %.pn134.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn134.pn.pn.pn.pn.pn, %bb.bx ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ]
  resume { ptr, i32 } %.pn134.pn.pn.pn.pn.pn.pn
}

declare void @_ZNK12PointedThing4dumpB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #3

declare noundef zeroext i8 @_ZNK16TouchInteraction7getModeERK14ItemDefinition16PointedThingType(ptr noundef nonnull align 1 dereferenceable(3), ptr noundef nonnull align 8 dereferenceable(982), i8 noundef zeroext) local_unnamed_addr #3

declare void @_ZN13TouchControls20applyContextControlsERK20TouchInteractionMode(ptr noundef nonnull align 8 dereferenceable(712), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

declare void @_ZN3Hud19updateSelectionMeshERKN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(572), ptr noundef nonnull align 2 dereferenceable(6)) local_unnamed_addr #3

declare void @_ZN6Client8interactE14InteractActionRK12PointedThing(ptr noundef nonnull align 8 dereferenceable(1674), i8 noundef zeroext, ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #3

declare void @_ZN6Client8setCrackEiN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(1674), i32 noundef, i48) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN15ScriptApiClient11on_item_useERK9ItemStackRK12PointedThing(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(296), ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local void @_ZN4Game20handlePointingAtNodeERK12PointedThingRK9ItemStackS5_f(ptr noundef nonnull align 8 dereferenceable(688) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(296) %2, ptr noundef nonnull align 8 dereferenceable(296) %3, float noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string.67", align 8 ; 10 uses
  %6 = alloca %"class.core::vector3d", align 8    ; 7 uses
  %7 = alloca %"class.core::vector3d", align 2    ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string.67", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string.67", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string.67", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %struct.SoundSpec, align 8         ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %6, ptr noundef nonnull align 2 dereferenceable(6) %i.c, i64 6, i1 false), !tbaa.struct !1601
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %7, ptr noundef nonnull align 4 dereferenceable(6) %i.d, i64 6, i1 false), !tbaa.struct !1601
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !265
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.g) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.j = load float, ptr %i.i, align 4, !tbaa !563
  %i.k = fcmp nsz ugt float %i.j, 0.000000e+00
  br i1 %i.k, label %.critedge71.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !305  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(512) %i.m, i32 noundef 8), !inline_history !15
  br i1 %i.q, label %bb.c, label %.critedge71.thread

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.s = load i8, ptr %i.r, align 8, !tbaa !790, !range !307, !noundef !213
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.critedge71.thread, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !265
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.v, ptr %8, align 8, !tbaa !189
  store i64 8386654075050290793, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 8, ptr %i.w, align 8, !tbaa !193
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %i.x, align 8, !tbaa !54
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 1384
  %i.z = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.critedge unwind label %bb.e

.critedge:                                        ; preds = %._crit_edge.i.i
  %.not.i.i.i.not = icmp eq ptr %i.z, null
  %i.aa = load ptr, ptr %8, align 8, !tbaa !192   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.v
  br i1 %i.ab, label %.critedge71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.ac = load i64, ptr %i.v, align 8, !tbaa !54
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #36
  br label %.critedge71

.critedge71:                                      ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br i1 %.not.i.i.i.not, label %.critedge71.thread, label %bb.d

bb.d:                                             ; preds = %.critedge71
  call void @_ZN4Game13handleDiggingERK12PointedThingRKN4core8vector3dIsEERK9ItemStackSA_f(ptr noundef nonnull align 8 dereferenceable(688) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 2 dereferenceable(6) %6, ptr noundef nonnull align 8 dereferenceable(296) %2, ptr noundef nonnull align 8 dereferenceable(296) %3, float noundef %4)
  br label %.critedge71.thread

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %8, align 8, !tbaa !192   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.v
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.e
  %i.ah = load i64, ptr %i.v, align 8, !tbaa !54
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.ab

.critedge71.thread:                               ; preds = %bb.c, %bb.b, %bb.a, %bb.d, %.critedge71
  %.sroa.015.0.copyload = load i48, ptr %6, align 8, !tbaa !579 ; 2 uses
  %i.aj = call noundef ptr @_ZN3Map15getNodeMetadataEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.h, i48 %.sroa.015.0.copyload) ; 4 uses
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %bb.k, label %._crit_edge.i.i80

._crit_edge.i.i80:                                ; preds = %.critedge71.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.am, ptr %11, align 8, !tbaa !189
  store i64 8392569456364514921, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 8, ptr %i.an, align 8, !tbaa !193
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i8 0, ptr %i.ao, align 8, !tbaa !54
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !47
  %i.aq = getelementptr i8, ptr %i.ap, i64 -80
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %i.aj, i64 %i.ar
end_hunk_0
