Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng_util?download=true
inline.NumInlined: 864
inline.NumDeleted: 299
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7lodepngL8parseICCEPNS_10LodePNGICCEPKhm:bb.a
  %i.qu = icmp samesign ugt i32 %.0.i298381, 2
  br i1 %i.qu, label %bb.bk, label %.critedge

bb.bk:                                            ; preds = %bb.bj
  %i.qv = add i64 %.2, 32                         ; 3 uses
  %i.qw = icmp ugt i64 %i.qv, %2
  br i1 %i.qw, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 %i.qm
  %i.qy = load i32, ptr %i.qx, align 1
  %i.qz = tail call i32 @llvm.bswap.i32(i32 %i.qy)
  %i.ra = sitofp i32 %i.qz to float
  %i.rb = fmul nnan float %i.ra, f0x37800000
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.0.i.i308 = phi float [ %i.rb, %bb.bl ], [ 0.000000e+00, %bb.bk ]
  %i.rc = getelementptr inbounds nuw i8, ptr %i.oz, i64 40
  store float %.0.i.i308, ptr %i.rc, align 8, !tbaa !66
  %i.rd = icmp eq i32 %.0.i298381, 4
  br i1 %i.rd, label %bb.bn, label %.critedge

bb.bn:                                            ; preds = %bb.bm
  %i.re = add i64 %.2, 36                         ; 2 uses
  %i.rf = icmp ugt i64 %i.re, %2
  br i1 %i.rf, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 %i.qv
  %i.rh = load i32, ptr %i.rg, align 1
  %i.ri = tail call i32 @llvm.bswap.i32(i32 %i.rh)
  %i.rj = sitofp i32 %i.ri to float
  %i.rk = fmul nnan float %i.rj, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311:  ; preds = %bb.bn, %bb.bo
  %.0.i.i310 = phi float [ %i.rk, %bb.bo ], [ 0.000000e+00, %bb.bn ]
  %i.rl = getelementptr inbounds nuw i8, ptr %i.oz, i64 44
  store float %.0.i.i310, ptr %i.rl, align 4, !tbaa !115
  %i.rm = add i64 %.2, 40                         ; 2 uses
  %i.rn = icmp ugt i64 %i.rm, %2
  br i1 %i.rn, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313, label %bb.bp

bb.bp:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311
  %i.ro = getelementptr inbounds nuw i8, ptr %1, i64 %i.re
  %i.rp = load i32, ptr %i.ro, align 1
  %i.rq = tail call i32 @llvm.bswap.i32(i32 %i.rp)
  %i.rr = sitofp i32 %i.rq to float
  %i.rs = fmul nnan float %i.rr, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311, %bb.bp
  %.0.i.i312 = phi float [ %i.rs, %bb.bp ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311 ]
  %i.rt = getelementptr inbounds nuw i8, ptr %i.oz, i64 48
  store float %.0.i.i312, ptr %i.rt, align 8, !tbaa !67
  br label %.critedge

.critedge:                                        ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit301, %bb.bg, %bb.bj, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313, %bb.bm, %.loopexit, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit274, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit290, %bb.as, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.8, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit282, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit266
  %.7 = phi i64 [ %.0.i256, %bb.as ], [ %.2, %.loopexit ], [ %i.fm, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit266 ], [ %i.ll, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.8 ], [ %i.iy, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit290 ], [ %i.hu, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit282 ], [ %i.gq, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit274 ], [ %i.rm, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313 ], [ %i.qv, %bb.bm ], [ %i.qm, %bb.bj ], [ %i.qe, %bb.bg ], [ %i.pn, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit301 ]
  %.not394 = icmp ugt i64 %.7, %2
  br i1 %.not394, label %.critedge243, label %bb.b

.critedge243:                                     ; preds = %.critedge, %bb.b, %bb.ax, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299, %bb.f, %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit259, %.preheader, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit, %bb.a
  %.8 = phi i32 [ 1, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit ], [ 1, %bb.a ], [ 0, %.preheader ], [ 1, %bb.f ], [ 1, %_ZN7lodepngL15decodeICCUint16EPKhmPm.exit299 ], [ 1, %bb.ax ], [ 0, %bb.b ], [ 1, %.critedge ], [ 1, %_ZN7lodepngL15decodeICCUint32EPKhmPm.exit259 ]
  ret i32 %.8
}

declare noundef i32 @_Z15lodepng_convertPhPKhPK16LodePNGColorModeS4_jj(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE(ptr nofree noundef writeonly captures(none) %0, i64 noundef range(i64 256, 65537) %1, i64 noundef range(i64 0, 3) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, 2) %4, ptr nofree noundef nonnull readonly captures(none) %5) unnamed_addr #9 {
bb.a:
  %i.a = add nsw i64 %1, -1
  %i.b = uitofp nneg i64 %i.a to float
  %i.c = fdiv float 1.000000e+00, %i.b            ; 5 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.c, label %.preheader48

.preheader48:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %2
  br label %bb.b

bb.b:                                             ; preds = %.preheader48, %bb.b
  %.050 = phi i64 [ 0, %.preheader48 ], [ %i.j, %bb.b ] ; 3 uses
  %i.f = uitofp nneg i64 %.050 to float
  %i.g = fmul float %i.c, %i.f
  %i.h = tail call fastcc noundef float @_ZN7lodepngL13iccForwardTRCEPKNS_15LodePNGICCCurveEf(ptr noundef %i.e, float noundef %i.g)
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.050
  store float %i.h, ptr %i.i, align 4, !tbaa !58
  %i.j = add nuw nsw i64 %.050, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !1

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.l = load i32, ptr %i.k, align 8, !tbaa !68
  %.not44 = icmp eq i32 %i.l, 0
  br i1 %.not44, label %.preheader68, label %bb.d

.preheader68:                                     ; preds = %bb.d, %bb.c
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 244
  %i.n = load i32, ptr %i.m, align 4, !tbaa !69
  %.not45 = icmp eq i32 %i.n, 0
  br i1 %.not45, label %bb.e, label %.preheader68

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 204
  %i.p = load i32, ptr %i.o, align 4, !tbaa !70   ; 2 uses
  %i.q = icmp eq i32 %i.p, 100000
  br i1 %i.q, label %vector.ph, label %bb.f

vector.ph:                                        ; preds = %bb.e
  %n.vec = and i64 %1, 131068                     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.r = uitofp nneg <4 x i64> %vec.ind to <4 x float>
  %i.s = fmul <4 x float> %broadcast.splat, %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  store <4 x float> %i.s, ptr %i.t, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %middle.block, %.preheader
  %.152 = phi i64 [ %i.y, %.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.v = uitofp nneg i64 %.152 to float
  %i.w = fmul float %i.c, %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.152
  store float %i.w, ptr %i.x, align 4, !tbaa !58
  %i.y = add nuw nsw i64 %.152, 1                 ; 2 uses
  %exitcond58.not = icmp eq i64 %i.y, %1
  br i1 %exitcond58.not, label %.loopexit, label %.preheader, !llvm.loop !117

bb.f:                                             ; preds = %bb.e
  %i.z = uitofp i32 %i.p to float
  %i.aa = fdiv float 1.000000e+05, %i.z
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.g
  %.251 = phi i64 [ 0, %bb.f ], [ %i.af, %bb.g ]  ; 3 uses
  %i.ab = uitofp nneg i64 %.251 to float
  %i.ac = fmul float %i.c, %i.ab
  %i.ad = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.ac, float noundef %i.aa)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.251
  store float %i.ad, ptr %i.ae, align 4, !tbaa !58
  %i.af = add nuw nsw i64 %.251, 1                ; 2 uses
  %exitcond57.not = icmp eq i64 %i.af, %1
  br i1 %exitcond57.not, label %.loopexit, label %bb.g, !llvm.loop !118

bb.h:                                             ; preds = %.preheader68, %bb.k
  %.353 = phi i64 [ %i.ap, %bb.k ], [ 0, %.preheader68 ] ; 3 uses
  %i.ag = uitofp nneg i64 %.353 to float
  %i.ah = fmul float %i.c, %i.ag                  ; 3 uses
  %i.ai = fcmp olt float %i.ah, 4.045000e-02
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = fdiv float %i.ah, 1.292000e+01
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ak = fadd float %i.ah, 5.500000e-02
  %i.al = fdiv float %i.ak, 1.055000e+00
  %i.am = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.al, float noundef 2.400000e+00)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.an = phi float [ %i.aj, %bb.i ], [ %i.am, %bb.j ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.353
  store float %i.an, ptr %i.ao, align 4, !tbaa !58
  %i.ap = add nuw nsw i64 %.353, 1                ; 2 uses
  %exitcond59.not = icmp eq i64 %i.ap, %1
  br i1 %exitcond59.not, label %.loopexit, label %bb.h, !llvm.loop !119

.loopexit:                                        ; preds = %bb.b, %bb.g, %.preheader, %bb.k, %middle.block
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN7lodepngL17convertToXYZ_chrmEPfjjPK11LodePNGInfojPKNS_10LodePNGICCES0_(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, 2) %4, ptr nofree noundef nonnull readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) unnamed_addr #10 {
bb.a:
  %i.a = alloca [9 x float], align 16             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = zext i32 %1 to i64
  %i.c = zext i32 %2 to i64
  %mul.i29 = mul nuw i64 %i.c, %i.b               ; 6 uses
  %i.d = call fastcc noundef i32 @_ZN7lodepngL7getChrmEPfS0_jPKNS_10LodePNGICCEPK11LodePNGInfo(ptr noundef %i.a, ptr noundef %6, i32 noundef %4, ptr noundef %5, ptr noundef %3)
  %.not27 = icmp eq i32 %i.d, 0
  br i1 %.not27, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i32 %4, 0
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %5, align 8, !tbaa !54
  %i.f = icmp eq i32 %i.e, 2
  %i.g = icmp ne i64 %mul.i29, 0
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit

bb.d:                                             ; preds = %bb.b
  %.old.not = icmp eq i64 %mul.i29, 0
  br i1 %.old.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load <4 x float>, ptr %i.a, align 16, !tbaa !58 ; 3 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.k = fpext <2 x float> %i.j to <2 x double>   ; 3 uses
  %i.l = load <2 x float>, ptr %i.h, align 16, !tbaa !58 ; 2 uses
  %i.m = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.n = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.o = shufflevector <4 x float> %i.i, <4 x float> %i.n, <2 x i32> <i32 1, i32 4>
  %i.p = fpext <2 x float> %i.o to <2 x double>   ; 3 uses
  %i.q = shufflevector <2 x float> %i.m, <2 x float> %i.l, <2 x i32> <i32 0, i32 3>
  %i.r = fpext <2 x float> %i.q to <2 x double>   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.t = load float, ptr %i.s, align 8, !tbaa !58
  %i.u = fpext float %i.t to double               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.w = load float, ptr %i.v, align 4, !tbaa !58
  %i.x = fpext float %i.w to double               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.z = load float, ptr %i.y, align 16, !tbaa !58
  %i.aa = fpext float %i.z to double              ; 2 uses
  %min.iters.check = icmp ult i64 %mul.i29, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %.neg = or i64 %mul.i29, -2
  %n.vec = add i64 %.neg, %mul.i29                ; 2 uses
  %broadcast.splat = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat32 = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat34 = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat36 = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat38 = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat40 = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert41 = insertelement <2 x double> poison, double %i.u, i64 0
  %broadcast.splat42 = shufflevector <2 x double> %broadcast.splatinsert41, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert43 = insertelement <2 x double> poison, double %i.x, i64 0
  %broadcast.splat44 = shufflevector <2 x double> %broadcast.splatinsert43, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert45 = insertelement <2 x double> poison, double %i.aa, i64 0
  %broadcast.splat46 = shufflevector <2 x double> %broadcast.splatinsert45, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ab = shl i64 %index, 4
  %i.ac = shl i64 %index, 4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ak = load float, ptr %i.ad, align 4, !tbaa !58
  %i.al = load float, ptr %i.af, align 4, !tbaa !58
  %i.am = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.al, i64 1
  %i.ao = fpext <2 x float> %i.an to <2 x double> ; 3 uses
  %i.ap = load float, ptr %i.ag, align 4, !tbaa !58
  %i.aq = load float, ptr %i.ah, align 4, !tbaa !58
  %i.ar = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.as = insertelement <2 x float> %i.ar, float %i.aq, i64 1
  %i.at = fpext <2 x float> %i.as to <2 x double> ; 3 uses
  %i.au = load float, ptr %i.ai, align 4, !tbaa !58
  %i.av = load float, ptr %i.aj, align 4, !tbaa !58
  %i.aw = insertelement <2 x float> poison, float %i.au, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.av, i64 1
  %i.ay = fpext <2 x float> %i.ax to <2 x double> ; 3 uses
  %i.az = fmul <2 x double> %broadcast.splat32, %i.at
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %broadcast.splat, <2 x double> %i.az)
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %broadcast.splat34, <2 x double> %i.ba) ; 2 uses
  %i.bc = extractelement <2 x double> %i.bb, i64 0
  %i.bd = fptrunc double %i.bc to float
  store float %i.bd, ptr %i.ad, align 4, !tbaa !58
  %i.be = fmul <2 x double> %broadcast.splat38, %i.at
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %broadcast.splat36, <2 x double> %i.be)
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %broadcast.splat40, <2 x double> %i.bf) ; 2 uses
  %i.bh = extractelement <2 x double> %i.bg, i64 0
  %i.bi = fptrunc double %i.bh to float
  store float %i.bi, ptr %i.ag, align 4, !tbaa !58
  %i.bj = shufflevector <2 x double> %i.bb, <2 x double> %i.bg, <2 x i32> <i32 1, i32 3>
  %i.bk = fptrunc <2 x double> %i.bj to <2 x float>
  store <2 x float> %i.bk, ptr %i.af, align 4, !tbaa !58
  %i.bl = fmul <2 x double> %broadcast.splat44, %i.at
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %broadcast.splat42, <2 x double> %i.bl)
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %broadcast.splat46, <2 x double> %i.bm)
  %i.bo = fptrunc <2 x double> %i.bn to <2 x float> ; 2 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 0
  store float %i.bp, ptr %i.ai, align 4, !tbaa !58
  %i.bq = extractelement <2 x float> %i.bo, i64 1
  store float %i.bq, ptr %i.aj, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %scalar.ph.preheader, label %vector.body, !llvm.loop !120

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph
  %.02530.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.02530 = phi i64 [ %i.cp, %scalar.ph ], [ %.02530.ph, %scalar.ph.preheader ] ; 2 uses
  %.idx = shl i64 %.02530, 4
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bv = load float, ptr %i.bs, align 4, !tbaa !58
  %i.bw = fpext float %i.bv to double             ; 2 uses
  %i.bx = load float, ptr %i.bt, align 4, !tbaa !58
  %i.by = fpext float %i.bx to double             ; 2 uses
  %i.bz = load float, ptr %i.bu, align 4, !tbaa !58
  %i.ca = fpext float %i.bz to double             ; 2 uses
  %i.cb = insertelement <2 x double> poison, double %i.by, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x double> %i.cc, %i.p
  %i.ce = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.k, <2 x double> %i.cd)
  %i.ch = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.r, <2 x double> %i.cg)
  %i.ck = fptrunc <2 x double> %i.cj to <2 x float>
  store <2 x float> %i.ck, ptr %i.bs, align 4, !tbaa !58
  %i.cl = fmul double %i.by, %i.x
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.u, double %i.cl)
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.aa, double %i.cm)
  %i.co = fptrunc double %i.cn to float
  store float %i.co, ptr %i.bu, align 4, !tbaa !58
  %i.cp = add nuw i64 %.02530, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cp, %mul.i29
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !121

.loopexit:                                        ; preds = %scalar.ph, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %scalar.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define noundef range(i32 0, 2) i32 @_ZN7lodepng17convertToXYZFloatEPfS0_PKfjjPK12LodePNGState(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #11 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %6 = alloca %"struct.lodepng::LodePNGICC", align 8 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 208
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 248 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 460
  %i.h = load i32, ptr %i.g, align 4, !tbaa !50
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 472
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 480
  %i.l = load i32, ptr %i.k, align 8, !tbaa !52
  %i.m = zext i32 %i.l to i64
  %i.n = call fastcc noundef i32 @_ZN7lodepngL8parseICCEPNS_10LodePNGICCEPKhm(ptr noundef %6, ptr noundef %i.j, i64 noundef %i.m)
  %.not21 = icmp eq i32 %i.n, 0
  br i1 %.not21, label %bb.c, label %bb.aa

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %6, align 8, !tbaa !54     ; 2 uses
  switch i32 %i.o, label %bb.e [
    i32 0, label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 84
  %i.q = load i32, ptr %i.p, align 4, !tbaa !55
  %.not.i = icmp eq i32 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 68
  %i.s = load i32, ptr %i.r, align 4
  %.not6.i = icmp eq i32 %i.s, 0
  %or.cond = select i1 %.not.i, i1 true, i1 %.not6.i
  br i1 %or.cond, label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  %.old = getelementptr inbounds nuw i8, ptr %6, i64 68
  %.old24 = load i32, ptr %.old, align 4, !tbaa !56
  %.not6.i.old = icmp eq i32 %.old24, 0
  br i1 %.not6.i.old, label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 124
  %i.u = load i32, ptr %i.t, align 4, !tbaa !57
  %.not7.i = icmp ne i32 %i.u, 0
  %..i = zext i1 %.not7.i to i32
  br label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit

_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.o, %bb.c ], [ 0, %bb.e ], [ %..i, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %i.v = zext i32 %3 to i64
  %i.w = zext i32 %4 to i64
  %mul.i68.i = mul nuw i64 %i.w, %i.v             ; 7 uses
  %i.x = shl i64 %mul.i68.i, 2                    ; 5 uses
  %.not.i23 = icmp eq i64 %i.x, 0
  br i1 %.not.i23, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit
  %min.iters.check = icmp ult i64 %i.x, 8
  %i.y = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond50 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond50, label %.lr.ph.i.preheader53, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.x, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <4 x float>, ptr %i.z, align 4, !tbaa !58
  %wide.load48 = load <4 x float>, ptr %i.aa, align 4, !tbaa !58
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <4 x float> %wide.load, ptr %i.ab, align 4, !tbaa !58
  store <4 x float> %wide.load48, ptr %i.ac, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
end_hunk_0
