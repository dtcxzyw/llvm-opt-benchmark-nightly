Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng_util?download=true
inline.NumInlined: 864
inline.NumDeleted: 299
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN7lodepngL8parseICCEPNS_10LodePNGICCEPKhm:bb.a
bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.0.i.i306 = phi float [ %i.qu, %bb.bi ], [ 0.000000e+00, %bb.bh ]
  %i.qv = getelementptr inbounds nuw i8, ptr %i.pb, i64 36
  store float %.0.i.i306, ptr %i.qv, align 4, !tbaa !65
  %i.qw = icmp samesign ugt i32 %.0.i298381, 2
  br i1 %i.qw, label %bb.bk, label %.critedge

bb.bk:                                            ; preds = %bb.bj
  %i.qx = add i64 %.2, 32                         ; 3 uses
  %i.qy = icmp ugt i64 %i.qx, %2
  br i1 %i.qy, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 %i.qo
  %i.ra = load i32, ptr %i.qz, align 1
  %i.rb = tail call i32 @llvm.bswap.i32(i32 %i.ra)
  %i.rc = sitofp i32 %i.rb to float
  %i.rd = fmul nnan float %i.rc, f0x37800000
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.0.i.i308 = phi float [ %i.rd, %bb.bl ], [ 0.000000e+00, %bb.bk ]
  %i.re = getelementptr inbounds nuw i8, ptr %i.pb, i64 40
  store float %.0.i.i308, ptr %i.re, align 8, !tbaa !66
  %i.rf = icmp eq i32 %.0.i298381, 4
  br i1 %i.rf, label %bb.bn, label %.critedge

bb.bn:                                            ; preds = %bb.bm
  %i.rg = add i64 %.2, 36                         ; 2 uses
  %i.rh = icmp ugt i64 %i.rg, %2
  br i1 %i.rh, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 %i.qx
  %i.rj = load i32, ptr %i.ri, align 1
  %i.rk = tail call i32 @llvm.bswap.i32(i32 %i.rj)
  %i.rl = sitofp i32 %i.rk to float
  %i.rm = fmul nnan float %i.rl, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311:  ; preds = %bb.bn, %bb.bo
  %.0.i.i310 = phi float [ %i.rm, %bb.bo ], [ 0.000000e+00, %bb.bn ]
  %i.rn = getelementptr inbounds nuw i8, ptr %i.pb, i64 44
  store float %.0.i.i310, ptr %i.rn, align 4, !tbaa !115
  %i.ro = add i64 %.2, 40                         ; 2 uses
  %i.rp = icmp ugt i64 %i.ro, %2
  br i1 %i.rp, label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313, label %bb.bp

bb.bp:                                            ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 %i.rg
  %i.rr = load i32, ptr %i.rq, align 1
  %i.rs = tail call i32 @llvm.bswap.i32(i32 %i.rr)
  %i.rt = sitofp i32 %i.rs to float
  %i.ru = fmul nnan float %i.rt, f0x37800000
  br label %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313

_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313:  ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311, %bb.bp
  %.0.i.i312 = phi float [ %i.ru, %bb.bp ], [ 0.000000e+00, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit311 ]
  %i.rv = getelementptr inbounds nuw i8, ptr %i.pb, i64 48
  store float %.0.i.i312, ptr %i.rv, align 8, !tbaa !67
  br label %.critedge

.critedge:                                        ; preds = %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit301, %bb.bg, %bb.bj, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313, %bb.bm, %.loopexit, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit274, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit290, %bb.as, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.8, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit282, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit266
  %.7 = phi i64 [ %.0.i256, %bb.as ], [ %.2, %.loopexit ], [ %i.fo, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit266 ], [ %i.ln, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit292.8 ], [ %i.ja, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit290 ], [ %i.hw, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit282 ], [ %i.gs, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit274 ], [ %i.ro, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit313 ], [ %i.qx, %bb.bm ], [ %i.qo, %bb.bj ], [ %i.qg, %bb.bg ], [ %i.pp, %_ZN7lodepngL18decodeICC15Fixed16EPKhmPm.exit301 ]
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
  %7 = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %8 = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %9 = shufflevector <4 x float> %i.i, <4 x float> %8, <2 x i32> <i32 1, i32 4>
  %i.m = fpext <2 x float> %9 to <2 x double>     ; 3 uses
  %10 = shufflevector <2 x float> %7, <2 x float> %i.l, <2 x i32> <i32 0, i32 3>
  %i.n = fpext <2 x float> %10 to <2 x double>    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.p = load float, ptr %i.o, align 8, !tbaa !58
  %i.q = fpext float %i.p to double               ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.s = load float, ptr %i.r, align 4, !tbaa !58
  %i.t = fpext float %i.s to double               ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.v = load float, ptr %i.u, align 16, !tbaa !58
  %i.w = fpext float %i.v to double               ; 2 uses
  %min.iters.check = icmp ult i64 %mul.i29, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %.neg = or i64 %mul.i29, -2
  %n.vec = add i64 %.neg, %mul.i29                ; 2 uses
  %broadcast.splat = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat32 = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat34 = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat36 = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat38 = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat40 = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert41 = insertelement <2 x double> poison, double %i.q, i64 0
  %broadcast.splat42 = shufflevector <2 x double> %broadcast.splatinsert41, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert43 = insertelement <2 x double> poison, double %i.t, i64 0
  %broadcast.splat44 = shufflevector <2 x double> %broadcast.splatinsert43, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert45 = insertelement <2 x double> poison, double %i.w, i64 0
  %broadcast.splat46 = shufflevector <2 x double> %broadcast.splatinsert45, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = shl i64 %index, 4
  %i.y = shl i64 %index, 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.x ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.y ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ag = load float, ptr %i.z, align 4, !tbaa !58
  %i.ah = load float, ptr %i.ab, align 4, !tbaa !58
  %i.ai = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.ah, i64 1
  %i.ak = fpext <2 x float> %i.aj to <2 x double> ; 3 uses
  %i.al = load float, ptr %i.ac, align 4, !tbaa !58
  %i.am = load float, ptr %i.ad, align 4, !tbaa !58
  %i.an = insertelement <2 x float> poison, float %i.al, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.am, i64 1
  %i.ap = fpext <2 x float> %i.ao to <2 x double> ; 3 uses
  %i.aq = load float, ptr %i.ae, align 4, !tbaa !58
  %i.ar = load float, ptr %i.af, align 4, !tbaa !58
  %i.as = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.at = insertelement <2 x float> %i.as, float %i.ar, i64 1
  %i.au = fpext <2 x float> %i.at to <2 x double> ; 3 uses
  %i.av = fmul <2 x double> %broadcast.splat32, %i.ap
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %broadcast.splat, <2 x double> %i.av)
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %broadcast.splat34, <2 x double> %i.aw) ; 2 uses
  %i.ay = extractelement <2 x double> %i.ax, i64 0
  %i.az = fptrunc double %i.ay to float
  store float %i.az, ptr %i.z, align 4, !tbaa !58
  %i.ba = fmul <2 x double> %broadcast.splat38, %i.ap
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %broadcast.splat36, <2 x double> %i.ba)
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %broadcast.splat40, <2 x double> %i.bb) ; 2 uses
  %i.bd = extractelement <2 x double> %i.bc, i64 0
  %i.be = fptrunc double %i.bd to float
  store float %i.be, ptr %i.ac, align 4, !tbaa !58
  %i.bf = shufflevector <2 x double> %i.ax, <2 x double> %i.bc, <2 x i32> <i32 1, i32 3>
  %i.bg = fptrunc <2 x double> %i.bf to <2 x float>
  store <2 x float> %i.bg, ptr %i.ab, align 4, !tbaa !58
  %i.bh = fmul <2 x double> %broadcast.splat44, %i.ap
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %broadcast.splat42, <2 x double> %i.bh)
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %broadcast.splat46, <2 x double> %i.bi)
  %i.bk = fptrunc <2 x double> %i.bj to <2 x float> ; 2 uses
  %i.bl = extractelement <2 x float> %i.bk, i64 0
  store float %i.bl, ptr %i.ae, align 4, !tbaa !58
  %i.bm = extractelement <2 x float> %i.bk, i64 1
  store float %i.bm, ptr %i.af, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %scalar.ph.preheader, label %vector.body, !llvm.loop !120

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph
  %.02530.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.02530 = phi i64 [ %i.cl, %scalar.ph ], [ %.02530.ph, %scalar.ph.preheader ] ; 2 uses
  %.idx = shl i64 %.02530, 4
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.br = load float, ptr %i.bp, align 4, !tbaa !58
  %i.bs = load float, ptr %i.bo, align 4, !tbaa !58
  %i.bt = load float, ptr %i.bq, align 4, !tbaa !58
  %i.bu = fpext float %i.br to double             ; 2 uses
  %i.bv = fpext float %i.bs to double             ; 2 uses
  %i.bw = fpext float %i.bt to double             ; 2 uses
  %i.bx = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x double> %i.by, %i.m
  %i.ca = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.k, <2 x double> %i.bz)
  %i.cd = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.n, <2 x double> %i.cc)
  %i.cg = fptrunc <2 x double> %i.cf to <2 x float>
  store <2 x float> %i.cg, ptr %i.bo, align 4, !tbaa !58
  %i.ch = fmul double %i.bu, %i.t
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.q, double %i.ch)
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.w, double %i.ci)
  %i.ck = fptrunc double %i.cj to float
  store float %i.ck, ptr %i.bq, align 4, !tbaa !58
  %i.cl = add nuw i64 %.02530, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, %mul.i29
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
end_hunk_0
begin_hunk_1_@_ZN7lodepng14convertFromXYZEPhPKfjjPK12LodePNGStateS2_j:bb.a
  %.094143.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec152, %middle.block157 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader160, %.preheader
  %.094143 = phi i64 [ %i.eh, %.preheader ], [ %.094143.ph, %.preheader.preheader160 ] ; 3 uses
  %i.du = shl nuw nsw i64 %.094143, 3
  %.idx = shl nuw i64 %.094143, 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.du
  %i.dx = load <4 x float>, ptr %i.dv, align 4, !tbaa !58 ; 3 uses
  %i.dy = fcmp olt <4 x float> %i.dx, zeroinitializer
  %i.dz = fcmp uge <4 x float> %i.dx, splat (float 1.000000e+00)
  %i.ea = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> splat (float 6.553500e+04), <4 x float> splat (float 5.000000e-01))
  %i.eb = fptosi <4 x float> %i.ea to <4 x i32>
  %i.ec = select <4 x i1> %i.dy, <4 x i32> zeroinitializer, <4 x i32> %i.eb
  %i.ed = select <4 x i1> %i.dz, <4 x i32> splat (i32 65535), <4 x i32> %i.ec
  %i.ee = shufflevector <4 x i32> %i.ed, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.ef = lshr <8 x i32> %i.ee, <i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0>
  %i.eg = trunc <8 x i32> %i.ef to <8 x i8>
  store <8 x i8> %i.eg, ptr %i.dw, align 1, !tbaa !21
  %i.eh = add nuw nsw i64 %.094143, 1             ; 2 uses
  %exitcond148.not = icmp eq i64 %i.eh, %mul.i135
  br i1 %exitcond148.not, label %._crit_edge144, label %.preheader, !llvm.loop !128

._crit_edge144:                                   ; preds = %.preheader, %middle.block157, %bb.j
  %i.ei = call noundef i32 @_Z15lodepng_convertPhPKhPK16LodePNGColorModeS4_jj(ptr noundef %0, ptr noundef %i.ad, ptr noundef nonnull %i.a, ptr noundef nonnull %8, i32 noundef %2, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_Z23lodepng_color_mode_make16LodePNGColorTypej(ptr dead_on_unwind nonnull writable sret(%struct.LodePNGColorMode) align 8 %9, i32 noundef 6, i32 noundef 8)
  br i1 %.not146, label %._crit_edge, label %.preheader139.preheader

.preheader139.preheader:                          ; preds = %bb.k
  %min.iters.check = icmp ult i64 %mul.i135, 4
  br i1 %min.iters.check, label %.preheader139.preheader161, label %vector.ph

vector.ph:                                        ; preds = %.preheader139.preheader
  %n.vec = and i64 %mul.i135, 1152921504606846972 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ej = shl nuw nsw i64 %index, 2               ; 5 uses
  %i.ek = shl i64 %index, 2                       ; 4 uses
  %i.el = shl i64 %index, 2                       ; 4 uses
  %i.em = shl i64 %index, 2                       ; 4 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ej
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ek
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.el
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.em
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.eu = load float, ptr %i.en, align 4, !tbaa !58
  %i.ev = load float, ptr %i.ep, align 4, !tbaa !58
  %i.ew = load float, ptr %i.er, align 4, !tbaa !58
  %i.ex = load float, ptr %i.et, align 4, !tbaa !58
  %i.ey = insertelement <4 x float> poison, float %i.eu, i64 0
  %i.ez = insertelement <4 x float> %i.ey, float %i.ev, i64 1
  %i.fa = insertelement <4 x float> %i.ez, float %i.ew, i64 2
  %i.fb = insertelement <4 x float> %i.fa, float %i.ex, i64 3 ; 3 uses
  %i.fc = fcmp olt <4 x float> %i.fb, zeroinitializer
  %i.fd = fcmp uge <4 x float> %i.fb, splat (float 1.000000e+00) ; 2 uses
  %i.fe = or <4 x i1> %i.fd, %i.fc
  %i.ff = sext <4 x i1> %i.fd to <4 x i8>
  %i.fg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.fh = fptoui <4 x float> %i.fg to <4 x i8>
  %i.fi = select <4 x i1> %i.fe, <4 x i8> %i.ff, <4 x i8> %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ej
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ej
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ek
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 20
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.el
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 36
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.em
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 52
  %i.fs = load float, ptr %i.fl, align 4, !tbaa !58
  %i.ft = load float, ptr %i.fn, align 4, !tbaa !58
  %i.fu = load float, ptr %i.fp, align 4, !tbaa !58
  %i.fv = load float, ptr %i.fr, align 4, !tbaa !58
  %i.fw = insertelement <4 x float> poison, float %i.fs, i64 0
  %i.fx = insertelement <4 x float> %i.fw, float %i.ft, i64 1
  %i.fy = insertelement <4 x float> %i.fx, float %i.fu, i64 2
  %i.fz = insertelement <4 x float> %i.fy, float %i.fv, i64 3 ; 3 uses
  %i.ga = fcmp olt <4 x float> %i.fz, zeroinitializer
  %i.gb = fcmp uge <4 x float> %i.fz, splat (float 1.000000e+00) ; 2 uses
  %i.gc = or <4 x i1> %i.gb, %i.ga
  %i.gd = sext <4 x i1> %i.gb to <4 x i8>
  %i.ge = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.gf = fptoui <4 x float> %i.ge to <4 x i8>
  %i.gg = select <4 x i1> %i.gc, <4 x i8> %i.gd, <4 x i8> %i.gf
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ej
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ek
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.el
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.em
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 56
  %i.gp = load float, ptr %i.gi, align 4, !tbaa !58
  %i.gq = load float, ptr %i.gk, align 4, !tbaa !58
  %i.gr = load float, ptr %i.gm, align 4, !tbaa !58
  %i.gs = load float, ptr %i.go, align 4, !tbaa !58
  %i.gt = insertelement <4 x float> poison, float %i.gp, i64 0
  %i.gu = insertelement <4 x float> %i.gt, float %i.gq, i64 1
  %i.gv = insertelement <4 x float> %i.gu, float %i.gr, i64 2
  %i.gw = insertelement <4 x float> %i.gv, float %i.gs, i64 3 ; 3 uses
  %i.gx = fcmp olt <4 x float> %i.gw, zeroinitializer
  %i.gy = fcmp uge <4 x float> %i.gw, splat (float 1.000000e+00) ; 2 uses
  %i.gz = or <4 x i1> %i.gy, %i.gx
  %i.ha = sext <4 x i1> %i.gy to <4 x i8>
  %i.hb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gw, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.hc = fptoui <4 x float> %i.hb to <4 x i8>
  %i.hd = select <4 x i1> %i.gz, <4 x i8> %i.ha, <4 x i8> %i.hc
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ej
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ek
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 28
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.el
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 44
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.em
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 60
  %i.hm = load float, ptr %i.hf, align 4, !tbaa !58
  %i.hn = load float, ptr %i.hh, align 4, !tbaa !58
  %i.ho = load float, ptr %i.hj, align 4, !tbaa !58
  %i.hp = load float, ptr %i.hl, align 4, !tbaa !58
  %i.hq = insertelement <4 x float> poison, float %i.hm, i64 0
  %i.hr = insertelement <4 x float> %i.hq, float %i.hn, i64 1
  %i.hs = insertelement <4 x float> %i.hr, float %i.ho, i64 2
  %i.ht = insertelement <4 x float> %i.hs, float %i.hp, i64 3 ; 3 uses
  %i.hu = fcmp olt <4 x float> %i.ht, zeroinitializer
  %i.hv = fcmp uge <4 x float> %i.ht, splat (float 1.000000e+00) ; 2 uses
  %i.hw = or <4 x i1> %i.hv, %i.hu
  %i.hx = sext <4 x i1> %i.hv to <4 x i8>
  %i.hy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ht, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.hz = fptoui <4 x float> %i.hy to <4 x i8>
  %i.ia = select <4 x i1> %i.hw, <4 x i8> %i.hx, <4 x i8> %i.hz
  %i.ib = shufflevector <4 x i8> %i.fi, <4 x i8> %i.gg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ic = shufflevector <4 x i8> %i.hd, <4 x i8> %i.ia, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x i8> %i.ib, <8 x i8> %i.ic, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.fj, align 1, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.id = icmp eq i64 %index.next, %n.vec
  br i1 %i.id, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %mul.i135, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.preheader139.preheader161

.preheader139.preheader161:                       ; preds = %.preheader139.preheader, %middle.block
  %.195141.ph = phi i64 [ 0, %.preheader139.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader139

.preheader139:                                    ; preds = %.preheader139.preheader161, %.preheader139
  %.195141 = phi i64 [ %i.ip, %.preheader139 ], [ %.195141.ph, %.preheader139.preheader161 ] ; 2 uses
  %i.ie = shl nuw nsw i64 %.195141, 2             ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ie
  %i.ih = load <4 x float>, ptr %i.if, align 4, !tbaa !58 ; 3 uses
  %i.ii = fcmp olt <4 x float> %i.ih, zeroinitializer
  %i.ij = fcmp uge <4 x float> %i.ih, splat (float 1.000000e+00) ; 2 uses
  %i.ik = or <4 x i1> %i.ij, %i.ii
  %i.il = sext <4 x i1> %i.ij to <4 x i8>
  %i.im = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ih, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.in = fptoui <4 x float> %i.im to <4 x i8>
  %i.io = select <4 x i1> %i.ik, <4 x i8> %i.il, <4 x i8> %i.in
  store <4 x i8> %i.io, ptr %i.ig, align 1, !tbaa !21
  %i.ip = add nuw nsw i64 %.195141, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ip, %mul.i135
  br i1 %exitcond.not, label %._crit_edge, label %.preheader139, !llvm.loop !130

._crit_edge:                                      ; preds = %.preheader139, %middle.block, %bb.k
  %i.iq = call noundef i32 @_Z15lodepng_convertPhPKhPK16LodePNGColorModeS4_jj(ptr noundef %0, ptr noundef %i.ad, ptr noundef nonnull %i.a, ptr noundef nonnull %9, i32 noundef %2, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %._crit_edge144, %bb.h, %bb.g, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit, %bb.b
  %.4 = phi i32 [ 1, %bb.b ], [ %i.ei, %._crit_edge144 ], [ 92, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit ], [ %i.iq, %._crit_edge ], [ 1, %bb.g ], [ %i.ac, %bb.h ]
  %.091 = phi ptr [ null, %bb.b ], [ %i.aa, %._crit_edge144 ], [ null, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit ], [ %i.aa, %._crit_edge ], [ %i.aa, %bb.g ], [ %i.aa, %bb.h ]
  %.090 = phi ptr [ null, %bb.b ], [ %i.ad, %._crit_edge144 ], [ null, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit ], [ %i.ad, %._crit_edge ], [ null, %bb.g ], [ null, %bb.h ]
  %i.ir = load ptr, ptr %i.f, align 8, !tbaa !48
  call void @free(ptr noundef %i.ir) #28
  %i.is = load ptr, ptr %i.g, align 8, !tbaa !48
  call void @free(ptr noundef %i.is) #28
  %i.it = load ptr, ptr %i.h, align 8, !tbaa !48
  call void @free(ptr noundef %i.it) #28
  call void @free(ptr noundef %.091) #28
  call void @free(ptr noundef %.090) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN7lodepngL19convertFromXYZ_chrmEPfPKfjjPK11LodePNGInfojPKNS_10LodePNGICCES2_j(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef range(i32 0, 2) %5, ptr nofree noundef nonnull readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8) unnamed_addr #10 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = alloca [9 x float], align 16             ; 15 uses
  %i.d = alloca [3 x float], align 4              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.e = zext i32 %2 to i64                       ; 2 uses
  %i.f = zext i32 %3 to i64                       ; 2 uses
  %mul.i46 = mul nuw i64 %i.f, %i.e               ; 6 uses
  %i.g = call fastcc noundef i32 @_ZN7lodepngL7getChrmEPfS0_jPKNS_10LodePNGICCEPK11LodePNGInfo(ptr noundef %i.c, ptr noundef nonnull %i.d, i32 noundef %5, ptr noundef %6, ptr noundef %4)
  %.not42 = icmp eq i32 %i.g, 0
  br i1 %.not42, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = call fastcc noundef i32 @_ZN7lodepngL9invMatrixEPf(ptr noundef %i.c)
  %.not43 = icmp eq i32 %i.h, 0
  br i1 %.not43, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ne i32 %8, 3                        ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load float, ptr %7, align 4, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !58
  %i.o = load float, ptr %i.d, align 4, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.q = fpext float %i.j to double
  %i.r = fpext float %i.l to double
  %i.s = fpext float %i.n to double
  %i.t = fpext float %i.o to double
  %i.u = load <2 x float>, ptr %i.p, align 4, !tbaa !58
  %i.v = fpext <2 x float> %i.u to <2 x double>   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.y = load float, ptr %i.x, align 8, !tbaa !58
  %i.z = fpext float %i.y to double               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !58
  %i.ac = fpext float %i.ab to double             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 16, !tbaa !58
  %i.af = fpext float %i.ae to double             ; 2 uses
  %i.ag = insertelement <3 x double> poison, double %i.r, i64 0
  %i.ah = shufflevector <3 x double> %i.ag, <3 x double> poison, <3 x i32> zeroinitializer
  %i.ai = fmul <3 x double> %i.ah, <double f0xBFB1893740000000, double f0x3FD10CB2A0000000, double f0x3FFB6A7F00000000>
  %i.aj = insertelement <3 x double> poison, double %i.q, i64 0
  %i.ak = shufflevector <3 x double> %i.aj, <3 x double> poison, <3 x i32> zeroinitializer
  %i.al = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.ak, <3 x double> <double f0x3FA3EAB360000000, double f0x3FECA4A8C0000000, double f0xBFE801A360000000>, <3 x double> %i.ai)
  %i.am = insertelement <3 x double> poison, double %i.s, i64 0
  %i.an = shufflevector <3 x double> %i.am, <3 x double> poison, <3 x i32> zeroinitializer
  %i.ao = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.an, <3 x double> <double f0x3FF0793DE0000000, double f0xBFC4A8C160000000, double f0x3FA2CA57A0000000>, <3 x double> %i.al)
  %i.ap = fptrunc <3 x double> %i.ao to <3 x float>
  %i.aq = shufflevector <2 x double> %i.v, <2 x double> poison, <3 x i32> zeroinitializer
  %i.ar = fmul <3 x double> %i.aq, <double f0xBFB1893740000000, double f0x3FD10CB2A0000000, double f0x3FFB6A7F00000000>
  %i.as = insertelement <3 x double> poison, double %i.t, i64 0
  %i.at = shufflevector <3 x double> %i.as, <3 x double> poison, <3 x i32> zeroinitializer
  %i.au = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.at, <3 x double> <double f0x3FA3EAB360000000, double f0x3FECA4A8C0000000, double f0xBFE801A360000000>, <3 x double> %i.ar)
  %i.av = shufflevector <2 x double> %i.v, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.aw = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.av, <3 x double> <double f0x3FF0793DE0000000, double f0xBFC4A8C160000000, double f0x3FA2CA57A0000000>, <3 x double> %i.au)
  %i.ax = fptrunc <3 x double> %i.aw to <3 x float>
  %i.ay = fdiv <3 x float> %i.ax, %i.ap           ; 3 uses
  %i.az = shufflevector <3 x float> %i.ay, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ba = fmul <4 x float> %i.az, <float f0x3F652546, float 2.664000e-01, float -1.614000e-01, float f0x3F652546>
  %i.bb = shufflevector <3 x float> %i.ay, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bc = fmul <4 x float> %i.bb, <float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02, float f0xBF400D1B>
  %i.bd = shufflevector <3 x float> %i.ay, <3 x float> poison, <4 x i32> zeroinitializer
  %i.be = fmul <4 x float> %i.bd, <float 3.890000e-02, float -6.850000e-02, float 1.029600e+00, float 3.890000e-02>
  %i.bf = fpext <4 x float> %i.ba to <4 x double> ; 2 uses
  %i.bg = fpext <4 x float> %i.bc to <4 x double> ; 2 uses
  %i.bh = fpext <4 x float> %i.be to <4 x double> ; 2 uses
  %i.bi = shufflevector <4 x double> %i.bg, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.bj = fmul <4 x double> %i.bi, splat (double f0xBFC2D2ACE0000000)
  %i.bk = shufflevector <4 x double> %i.bf, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.bl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bk, <4 x double> splat (double f0x3FEF957220000000), <4 x double> %i.bj)
  %i.bm = shufflevector <4 x double> %i.bh, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.bn = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bm, <4 x double> splat (double f0x3FC479A860000000), <4 x double> %i.bl)
  %i.bo = fptrunc <4 x double> %i.bn to <4 x float>
  %i.bp = fmul <4 x double> %i.bi, splat (double f0x3FE0966860000000)
  %i.bq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bk, <4 x double> splat (double f0x3FDBAAE3E0000000), <4 x double> %i.bp)
  %i.br = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bm, <4 x double> splat (double f0x3FA93CB240000000), <4 x double> %i.bq)
  %i.bs = fptrunc <4 x double> %i.br to <4 x float>
  %i.bt = fmul <4 x double> %i.bg, splat (double f0x3FA4807D60000000)
  %i.bu = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bf, <4 x double> splat (double f0xBF81777EC0000000), <4 x double> %i.bt)
  %i.bv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bh, <4 x double> splat (double f0x3FEEFDD7E0000000), <4 x double> %i.bu)
  %i.bw = fptrunc <4 x double> %i.bv to <4 x float>
  %i.bx = load <4 x float>, ptr %i.c, align 16, !tbaa !58 ; 3 uses
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bz = fpext <2 x float> %i.by to <2 x double> ; 2 uses
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cb = load <2 x float>, ptr %i.w, align 16, !tbaa !58 ; 2 uses
  %i.cc = shufflevector <4 x float> %i.bx, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.cd = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x float> %i.bx, <4 x float> %i.cd, <2 x i32> <i32 1, i32 4>
  %i.cf = fpext <2 x float> %i.ce to <2 x double> ; 2 uses
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ch = shufflevector <2 x float> %i.cc, <2 x float> %i.cb, <2 x i32> <i32 0, i32 3>
  %i.ci = fpext <2 x float> %i.ch to <2 x double> ; 2 uses
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ck = fpext <4 x float> %i.bs to <4 x double> ; 3 uses
  %i.cl = fpext <4 x float> %i.bo to <4 x double> ; 3 uses
  %i.cm = fpext <4 x float> %i.bw to <4 x double> ; 3 uses
  %i.cn = fmul <4 x double> %i.cg, %i.ck
  %i.co = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cl, <4 x double> %i.ca, <4 x double> %i.cn)
  %i.cp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cm, <4 x double> %i.cj, <4 x double> %i.co)
  %i.cq = fptrunc <4 x double> %i.cp to <4 x float>
  %i.cr = extractelement <4 x double> %i.ck, i64 2
  %i.cs = extractelement <4 x double> %i.cl, i64 2
  %i.ct = extractelement <4 x double> %i.cm, i64 2
  %i.cu = fmul double %i.cr, %i.ac
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.z, double %i.cu)
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.af, double %i.cv)
  %i.cx = fptrunc double %i.cw to float
  store <4 x float> %i.cq, ptr %i.c, align 16, !tbaa !58
  %i.cy = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cz = insertelement <2 x double> %i.cy, double %i.ac, i64 1
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.db = shufflevector <4 x double> %i.ck, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.dc = fmul <4 x double> %i.da, %i.db
  %i.dd = shufflevector <4 x double> %i.cl, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.de = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.df = insertelement <2 x double> %i.de, double %i.z, i64 1
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dh = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dd, <4 x double> %i.dg, <4 x double> %i.dc)
  %i.di = shufflevector <4 x double> %i.cm, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.dj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dk = insertelement <2 x double> %i.dj, double %i.af, i64 1
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.di, <4 x double> %i.dl, <4 x double> %i.dh)
  %i.dn = fptrunc <4 x double> %i.dm to <4 x float>
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.do, ptr %i.w, align 16, !tbaa !58
  store float %i.cx, ptr %i.ad, align 16, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not44 = icmp eq i32 %5, 0
  br i1 %.not44, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dp = load i32, ptr %6, align 8, !tbaa !54
  %i.dq = icmp eq i32 %i.dp, 2
  %or.cond = or i1 %i.i, %i.dq
  br i1 %or.cond, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.dr = shl i64 %mul.i46, 2                     ; 5 uses
  %.not = icmp eq i64 %i.dr, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.dr, 8
  %i.ds = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ds, -32
  %or.cond85 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond85, label %.lr.ph.preheader86, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.dr, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %wide.load = load <4 x float>, ptr %i.dt, align 4, !tbaa !58
  %wide.load56 = load <4 x float>, ptr %i.du, align 4, !tbaa !58
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store <4 x float> %wide.load, ptr %i.dv, align 4, !tbaa !58
  store <4 x float> %wide.load56, ptr %i.dw, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !131

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader86

.lr.ph.preheader86:                               ; preds = %.lr.ph.preheader, %middle.block
  %.14148.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not51 = icmp eq i64 %mul.i46, 0
  br i1 %.not51, label %.loopexit, label %.lr.ph50

.lr.ph50:                                         ; preds = %bb.g
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dz = load <4 x float>, ptr %i.c, align 16, !tbaa !58 ; 3 uses
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.eb = fpext <2 x float> %i.ea to <2 x double> ; 2 uses
  %i.ec = load <2 x float>, ptr %i.dy, align 16, !tbaa !58 ; 2 uses
  %9 = shufflevector <4 x float> %i.dz, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %10 = shufflevector <2 x float> %i.ec, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %11 = shufflevector <4 x float> %i.dz, <4 x float> %10, <2 x i32> <i32 1, i32 4>
  %i.ed = fpext <2 x float> %11 to <2 x double>   ; 2 uses
  %12 = shufflevector <2 x float> %9, <2 x float> %i.ec, <2 x i32> <i32 0, i32 3>
  %i.ee = fpext <2 x float> %12 to <2 x double>   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.eg = load float, ptr %i.ef, align 8, !tbaa !58
  %i.eh = fpext float %i.eg to double             ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !58
  %i.ek = fpext float %i.ej to double             ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.em = load float, ptr %i.el, align 16, !tbaa !58
  %i.en = fpext float %i.em to double             ; 2 uses
  %min.iters.check60 = icmp eq i64 %mul.i46, 1
  br i1 %min.iters.check60, label %scalar.ph59.preheader, label %vector.memcheck57

vector.memcheck57:                                ; preds = %.lr.ph50
  %i.eo = mul nuw i64 %i.f, %i.e
  %i.ep = shl i64 %i.eo, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.ep
  %scevgep58 = getelementptr i8, ptr %1, i64 %i.ep
  %bound0 = icmp ult ptr %0, %scevgep58
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph59.preheader, label %vector.ph61

vector.ph61:                                      ; preds = %vector.memcheck57
  %n.vec62 = and i64 %mul.i46, -2                 ; 3 uses
  %broadcast.splatinsert73 = insertelement <2 x double> poison, double %i.eh, i64 0
  %broadcast.splat74 = shufflevector <2 x double> %broadcast.splatinsert73, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert75 = insertelement <2 x double> poison, double %i.ek, i64 0
  %broadcast.splat76 = shufflevector <2 x double> %broadcast.splatinsert75, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert77 = insertelement <2 x double> poison, double %i.en, i64 0
  %broadcast.splat78 = shufflevector <2 x double> %broadcast.splatinsert77, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = shufflevector <2 x double> %i.ee, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.er = shufflevector <2 x double> %i.eb, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.es = shufflevector <2 x double> %i.ed, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br label %vector.body79

vector.body79:                                    ; preds = %vector.body79, %vector.ph61
  %index80 = phi i64 [ 0, %vector.ph61 ], [ %index.next81, %vector.body79 ] ; 3 uses
  %i.et = shl i64 %index80, 2                     ; 5 uses
  %i.eu = shl i64 %index80, 2                     ; 4 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.et
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.et
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eu
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load float, ptr %i.ew, align 4, !tbaa !58, !alias.scope !138
  %i.fa = load float, ptr %i.ey, align 4, !tbaa !58, !alias.scope !138
  %i.fb = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fc = insertelement <2 x float> %i.fb, float %i.fa, i64 1
  %i.fd = fpext <2 x float> %i.fc to <2 x double> ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.et
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eu
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 20
  %i.fi = load float, ptr %i.ff, align 4, !tbaa !58, !alias.scope !138
  %i.fj = load float, ptr %i.fh, align 4, !tbaa !58, !alias.scope !138
  %i.fk = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.fl = insertelement <2 x float> %i.fk, float %i.fj, i64 1
  %i.fm = fpext <2 x float> %i.fl to <2 x double> ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.et
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eu
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load float, ptr %i.fo, align 4, !tbaa !58, !alias.scope !138
  %i.fs = load float, ptr %i.fq, align 4, !tbaa !58, !alias.scope !138
  %i.ft = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.fu = insertelement <2 x float> %i.ft, float %i.fs, i64 1
  %i.fv = fpext <2 x float> %i.fu to <2 x double> ; 2 uses
  %i.fw = fmul <2 x double> %broadcast.splat76, %i.fm
  %i.fx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %broadcast.splat74, <2 x double> %i.fw)
  %i.fy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %broadcast.splat78, <2 x double> %i.fx)
  %i.fz = fptrunc <2 x double> %i.fy to <2 x float>
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.et
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eu
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 28
  %i.ge = load float, ptr %i.gb, align 4, !tbaa !58, !alias.scope !138
  %i.gf = load float, ptr %i.gd, align 4, !tbaa !58, !alias.scope !138
  %i.gg = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gh = insertelement <2 x float> %i.gg, float %i.gf, i64 1
  %i.gi = shufflevector <2 x double> %i.fv, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gj = shufflevector <2 x double> %i.fd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gk = shufflevector <2 x double> %i.fm, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gl = fmul <4 x double> %i.es, %i.gk
  %i.gm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gj, <4 x double> %i.er, <4 x double> %i.gl)
  %i.gn = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gi, <4 x double> %i.eq, <4 x double> %i.gm)
  %i.go = fptrunc <4 x double> %i.gn to <4 x float>
  %i.gp = shufflevector <2 x float> %i.fz, <2 x float> %i.gh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x float> %i.go, <4 x float> %i.gp, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.ev, align 4, !tbaa !58, !alias.scope !139, !noalias !138
  %index.next81 = add nuw i64 %index80, 2         ; 2 uses
  %i.gq = icmp eq i64 %index.next81, %n.vec62
  br i1 %i.gq, label %middle.block82, label %vector.body79, !llvm.loop !135

middle.block82:                                   ; preds = %vector.body79
  %cmp.n83 = icmp eq i64 %mul.i46, %n.vec62
  br i1 %cmp.n83, label %.loopexit, label %scalar.ph59.preheader

scalar.ph59.preheader:                            ; preds = %vector.memcheck57, %.lr.ph50, %middle.block82
  %.04049.ph = phi i64 [ 0, %vector.memcheck57 ], [ 0, %.lr.ph50 ], [ %n.vec62, %middle.block82 ]
  br label %scalar.ph59

scalar.ph59:                                      ; preds = %scalar.ph59.preheader, %scalar.ph59
  %.04049 = phi i64 [ %i.hx, %scalar.ph59 ], [ %.04049.ph, %scalar.ph59.preheader ] ; 2 uses
  %i.gr = shl i64 %.04049, 2                      ; 5 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gr
  %i.gt = or disjoint i64 %i.gr, 2                ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gt
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gr
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gr
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gt
  %i.gz = load float, ptr %i.gx, align 4, !tbaa !58
  %i.ha = load float, ptr %i.gv, align 4, !tbaa !58
  %i.hb = load float, ptr %i.gy, align 4, !tbaa !58
  %i.hc = fpext float %i.gz to double             ; 2 uses
  %i.hd = fpext float %i.ha to double             ; 2 uses
  %i.he = fpext float %i.hb to double             ; 2 uses
  %i.hf = insertelement <2 x double> poison, double %i.hc, i64 0
  %i.hg = shufflevector <2 x double> %i.hf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hh = fmul <2 x double> %i.hg, %i.ed
  %i.hi = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.hj = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hj, <2 x double> %i.eb, <2 x double> %i.hh)
  %i.hl = insertelement <2 x double> poison, double %i.he, i64 0
  %i.hm = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hm, <2 x double> %i.ee, <2 x double> %i.hk)
  %i.ho = fptrunc <2 x double> %i.hn to <2 x float>
  store <2 x float> %i.ho, ptr %i.gs, align 4, !tbaa !58
  %i.hp = fmul double %i.hc, %i.ek
  %i.hq = tail call double @llvm.fmuladd.f64(double %i.hd, double %i.eh, double %i.hp)
  %i.hr = tail call double @llvm.fmuladd.f64(double %i.he, double %i.en, double %i.hq)
  %i.hs = fptrunc double %i.hr to float
  store float %i.hs, ptr %i.gu, align 4, !tbaa !58
  %i.ht = or disjoint i64 %i.gr, 3                ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ht
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !58
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ht
  store float %i.hv, ptr %i.hw, align 4, !tbaa !58
  %i.hx = add nuw i64 %.04049, 1                  ; 2 uses
  %exitcond53.not = icmp eq i64 %i.hx, %mul.i46
  br i1 %exitcond53.not, label %.loopexit, label %scalar.ph59, !llvm.loop !136

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader86
  %.14148 = phi i64 [ %.14148.ph, %.lr.ph.preheader86 ], [ %i.in, %.lr.ph ] ; 6 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.14148
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !58
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.14148
  store float %i.hz, ptr %i.ia, align 4, !tbaa !58
  %i.ib = or disjoint i64 %.14148, 1              ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ib
  %i.id = load float, ptr %i.ic, align 4, !tbaa !58
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ib
  store float %i.id, ptr %i.ie, align 4, !tbaa !58
  %i.if = or disjoint i64 %.14148, 2              ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.if
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !58
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.if
  store float %i.ih, ptr %i.ii, align 4, !tbaa !58
  %i.ij = or disjoint i64 %.14148, 3              ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ij
  %i.il = load float, ptr %i.ik, align 4, !tbaa !58
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ij
  store float %i.il, ptr %i.im, align 4, !tbaa !58
  %i.in = add nuw i64 %.14148, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.in, %i.dr
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !137

.loopexit:                                        ; preds = %.lr.ph, %scalar.ph59, %middle.block, %middle.block82, %.preheader, %bb.g, %bb.b, %bb.a
  %.1 = phi i32 [ 1, %bb.b ], [ 0, %bb.g ], [ 1, %bb.a ], [ 0, %.preheader ], [ 0, %middle.block82 ], [ 0, %middle.block ], [ 0, %scalar.ph59 ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  ret i32 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 93) i32 @_ZN7lodepngL20convertFromXYZ_gammaEPfjjPK11LodePNGInfojPKNS_10LodePNGICCE(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, 2) %4, ptr nofree noundef nonnull readonly captures(none) %5) unnamed_addr #9 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = zext i32 %2 to i64
  %mul.i60 = mul nuw i64 %i.b, %i.a               ; 6 uses
  %.not52 = icmp eq i32 %4, 0
  br i1 %.not52, label %bb.z, label %.preheader64

.preheader64:                                     ; preds = %bb.a
  %.not = icmp eq i64 %mul.i60, 0
  br i1 %.not, label %.loopexit, label %.preheader63.lr.ph

.preheader63.lr.ph:                               ; preds = %.preheader64
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 128
  br label %.preheader63

.preheader63:                                     ; preds = %.preheader63.lr.ph, %bb.y
  %.04469 = phi i64 [ 0, %.preheader63.lr.ph ], [ %i.dq, %bb.y ] ; 2 uses
  %.idx57 = shl i64 %.04469, 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.idx57
  br label %bb.b

bb.b:                                             ; preds = %.preheader63, %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit
  %.068 = phi i64 [ 0, %.preheader63 ], [ %i.dp, %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit ] ; 3 uses
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %.068 ; 26 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.068 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN7lodepngL12lodepng_powfEff:bb.a
  %i.ah = and i32 %.0, 1
  %.not127 = icmp eq i32 %i.ah, 0
  %i.ai = select i1 %.not127, float +inf, float -inf
  br label %common.ret233

bb.x:                                             ; preds = %bb.u
  %i.aj = fneg float %0
  %i.ak = fcmp oeq float %0, -1.000000e+00
  br i1 %i.ak, label %common.ret233, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.g
  %.0121 = phi float [ %0, %bb.g ], [ %i.aj, %bb.x ] ; 2 uses
  %or.cond11 = fcmp ogt float %i.f, f0x7F7FFFFF
  br i1 %or.cond11, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.al = fcmp olt float %.0121, 1.000000e+00
  %i.am = fcmp ule float %1, 0.000000e+00
  %.not128 = xor i1 %i.am, %i.al
  br i1 %.not128, label %common.ret233, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.an = fcmp olt float %1, 0.000000e+00
  %i.ao = fneg float %1
  %i.ap = select i1 %i.an, float %i.ao, float %1
  br label %common.ret233

bb.ab:                                            ; preds = %bb.y, %bb.c
  %.1122 = phi float [ %0, %bb.c ], [ %.0121, %bb.y ] ; 4 uses
  %i.aq = fcmp olt float %.1122, f0x37800000
  br i1 %i.aq, label %.lr.ph, label %.preheader132

.preheader132:                                    ; preds = %.lr.ph, %bb.ab
  %.0116.lcssa = phi float [ 0.000000e+00, %bb.ab ], [ %i.as, %.lr.ph ] ; 2 uses
  %.0111.lcssa = phi float [ %.1122, %bb.ab ], [ %i.at, %.lr.ph ] ; 3 uses
  %i.ar = fcmp ogt float %.0111.lcssa, 6.553600e+04
  br i1 %i.ar, label %.lr.ph138, label %.preheader131

.lr.ph:                                           ; preds = %bb.ab, %.lr.ph
  %.0111134 = phi float [ %i.at, %.lr.ph ], [ %.1122, %bb.ab ]
  %.0116133 = phi float [ %i.as, %.lr.ph ], [ 0.000000e+00, %bb.ab ]
  %i.as = fadd float %.0116133, -1.600000e+01     ; 2 uses
  %i.at = fmul nnan float %.0111134, 6.553600e+04 ; 3 uses
  %i.au = fcmp olt float %i.at, f0x37800000
  br i1 %i.au, label %.lr.ph, label %.preheader132, !llvm.loop !148

.preheader131:                                    ; preds = %.lr.ph138, %.preheader132
  %.1117.lcssa = phi float [ %.0116.lcssa, %.preheader132 ], [ %i.aw, %.lr.ph138 ] ; 2 uses
  %.1112.lcssa = phi float [ %.0111.lcssa, %.preheader132 ], [ %i.ax, %.lr.ph138 ] ; 3 uses
  %i.av = fcmp olt float %.1112.lcssa, 1.000000e+00
  br i1 %i.av, label %.lr.ph143, label %.preheader130

.lr.ph138:                                        ; preds = %.preheader132, %.lr.ph138
  %.1112137 = phi float [ %i.ax, %.lr.ph138 ], [ %.0111.lcssa, %.preheader132 ]
  %.1117136 = phi float [ %i.aw, %.lr.ph138 ], [ %.0116.lcssa, %.preheader132 ]
  %i.aw = fadd float %.1117136, 1.600000e+01      ; 2 uses
  %i.ax = fmul nnan float %.1112137, f0x37800000  ; 3 uses
  %i.ay = fcmp ogt float %i.ax, 6.553600e+04
  br i1 %i.ay, label %.lr.ph138, label %.preheader131, !llvm.loop !149

.preheader130:                                    ; preds = %.lr.ph143, %.preheader131
  %.2118.lcssa = phi float [ %.1117.lcssa, %.preheader131 ], [ %i.ba, %.lr.ph143 ] ; 2 uses
  %.2113.lcssa = phi float [ %.1112.lcssa, %.preheader131 ], [ %i.bb, %.lr.ph143 ] ; 3 uses
  %i.az = fcmp ogt float %.2113.lcssa, 2.000000e+00
  br i1 %i.az, label %.lr.ph148, label %._crit_edge

.lr.ph143:                                        ; preds = %.preheader131, %.lr.ph143
  %.2113142 = phi float [ %i.bb, %.lr.ph143 ], [ %.1112.lcssa, %.preheader131 ]
  %.2118141 = phi float [ %i.ba, %.lr.ph143 ], [ %.1117.lcssa, %.preheader131 ]
  %i.ba = fadd float %.2118141, -1.000000e+00     ; 2 uses
  %i.bb = fmul nnan float %.2113142, 2.000000e+00 ; 3 uses
  %i.bc = fcmp olt float %i.bb, 1.000000e+00
  br i1 %i.bc, label %.lr.ph143, label %.preheader130, !llvm.loop !150

.lr.ph148:                                        ; preds = %.preheader130, %.lr.ph148
  %.3147 = phi float [ %i.be, %.lr.ph148 ], [ %.2113.lcssa, %.preheader130 ]
  %.3119146 = phi float [ %i.bd, %.lr.ph148 ], [ %.2118.lcssa, %.preheader130 ]
  %i.bd = fadd float %.3119146, 1.000000e+00      ; 2 uses
  %i.be = fmul nnan float %.3147, 5.000000e-01    ; 3 uses
  %i.bf = fcmp ogt float %i.be, 2.000000e+00
  br i1 %i.bf, label %.lr.ph148, label %._crit_edge, !llvm.loop !151

._crit_edge:                                      ; preds = %.lr.ph148, %.preheader130
  %.3119.lcssa = phi float [ %.2118.lcssa, %.preheader130 ], [ %i.bd, %.lr.ph148 ]
  %.3.lcssa = phi float [ %.2113.lcssa, %.preheader130 ], [ %i.be, %.lr.ph148 ]
  %i.bg = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.3.lcssa, i64 0 ; 2 uses
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> <float f0x3C7B5381, float 0.000000e+00>, <2 x float> <float f0x3EEEAA40, float f0x3E0C8592>)
  %i.bi = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bh, <2 x float> <float f0xBDB4F828, float f0x3EC71CDB>)
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bj, <2 x float> <float f0xBEC946D1, float f0x3DB9D868>) ; 2 uses
  %i.bl = extractelement <2 x float> %i.bk, i64 0
  %i.bm = extractelement <2 x float> %i.bk, i64 1
  %i.bn = fdiv float %i.bl, %i.bm
  %i.bo = fadd float %.3119.lcssa, %i.bn
  %i.bp = fmul float %1, %i.bo                    ; 3 uses
  %i.bq = tail call float @llvm.fabs.f32(float %i.bp)
  %or.cond13 = fcmp ult float %i.bq, 1.280000e+02
  br i1 %or.cond13, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  %i.br = fcmp ogt float %.1122, 1.000000e+00
  %i.bs = fcmp ule float %1, 0.000000e+00
  %i.bt = xor i1 %i.bs, %i.br
  %i.bu = select i1 %i.bt, float +inf, float 0.000000e+00
  br label %common.ret233

bb.ad:                                            ; preds = %._crit_edge
  %i.bv = fptosi float %i.bp to i32               ; 8 uses
  %i.bw = sitofp i32 %i.bv to float
  %i.bx = fsub float %i.bp, %i.bw                 ; 5 uses
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bx, float f0x3BB8A601, float f0x3D953178)
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.by, float f0x3ED5E70B)
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.bz, float 1.000000e+00) ; 4 uses
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bx, float f0x3CC0861B, float f0xBE8CFD51)
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.cb, float 1.000000e+00) ; 2 uses
  %i.cd = icmp slt i32 %i.bv, -30
  br i1 %i.cd, label %.lr.ph154, label %.preheader

.preheader:                                       ; preds = %bb.ad
  %i.ce = icmp sgt i32 %i.bv, 30
  br i1 %i.ce, label %.lr.ph159.preheader, label %._crit_edge160

.lr.ph159.preheader:                              ; preds = %.preheader
  %i.cf = add nsw i32 %i.bv, -31                  ; 2 uses
  %i.cg = udiv i32 %i.cf, 31
  %i.ch = add nuw nsw i32 %i.cg, 1
  %xtraiter = and i32 %i.ch, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph159.prol.loopexit, label %.lr.ph159.prol

.lr.ph159.prol:                                   ; preds = %.lr.ph159.preheader, %.lr.ph159.prol
  %.2158.prol = phi i32 [ %i.cj, %.lr.ph159.prol ], [ %i.bv, %.lr.ph159.preheader ]
  %.1115157.prol = phi float [ %i.ci, %.lr.ph159.prol ], [ %i.ca, %.lr.ph159.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph159.prol ], [ 0, %.lr.ph159.preheader ]
  %i.ci = fmul float %.1115157.prol, f0x4F000000  ; 3 uses
  %i.cj = add nsw i32 %.2158.prol, -31            ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph159.prol.loopexit, label %.lr.ph159.prol, !llvm.loop !152

.lr.ph159.prol.loopexit:                          ; preds = %.lr.ph159.prol, %.lr.ph159.preheader
  %.2158.unr = phi i32 [ %i.bv, %.lr.ph159.preheader ], [ %i.cj, %.lr.ph159.prol ]
  %.1115157.unr = phi float [ %i.ca, %.lr.ph159.preheader ], [ %i.ci, %.lr.ph159.prol ]
  %.lcssa211.unr = phi float [ poison, %.lr.ph159.preheader ], [ %i.ci, %.lr.ph159.prol ]
  %.lcssa210.unr = phi i32 [ poison, %.lr.ph159.preheader ], [ %i.cj, %.lr.ph159.prol ]
  %i.ck = icmp ult i32 %i.cf, 217
  br i1 %i.ck, label %._crit_edge160.thread, label %.lr.ph159

.lr.ph154:                                        ; preds = %bb.ad, %.lr.ph154
  %.1152 = phi i32 [ %i.cm, %.lr.ph154 ], [ %i.bv, %bb.ad ] ; 2 uses
  %.0114151 = phi float [ %i.cl, %.lr.ph154 ], [ %i.ca, %bb.ad ]
  %i.cl = fmul float %.0114151, f0x30000000       ; 2 uses
  %i.cm = add nsw i32 %.1152, 31                  ; 2 uses
  %i.cn = icmp samesign ult i32 %.1152, -61
  br i1 %i.cn, label %.lr.ph154, label %._crit_edge160, !llvm.loop !153

.lr.ph159:                                        ; preds = %.lr.ph159.prol.loopexit, %.lr.ph159
  %.2158 = phi i32 [ %i.cw, %.lr.ph159 ], [ %.2158.unr, %.lr.ph159.prol.loopexit ] ; 2 uses
  %.1115157 = phi float [ %i.cv, %.lr.ph159 ], [ %.1115157.unr, %.lr.ph159.prol.loopexit ]
  %i.co = fmul float %.1115157, f0x4F000000
  %i.cp = fmul float %i.co, f0x4F000000
  %i.cq = fmul float %i.cp, f0x4F000000
  %i.cr = fmul float %i.cq, f0x4F000000
  %i.cs = fmul float %i.cr, f0x4F000000
  %i.ct = fmul float %i.cs, f0x4F000000
  %i.cu = fmul float %i.ct, f0x4F000000
  %i.cv = fmul float %i.cu, f0x4F000000           ; 2 uses
  %i.cw = add nsw i32 %.2158, -248                ; 2 uses
  %i.cx = icmp sgt i32 %.2158, 278
  br i1 %i.cx, label %.lr.ph159, label %._crit_edge160.thread, !llvm.loop !154

._crit_edge160:                                   ; preds = %.lr.ph154, %.preheader
  %.1115.lcssa = phi float [ %i.ca, %.preheader ], [ %i.cl, %.lr.ph154 ] ; 2 uses
  %.2.lcssa = phi i32 [ %i.bv, %.preheader ], [ %i.cm, %.lr.ph154 ] ; 3 uses
  %i.cy = icmp slt i32 %.2.lcssa, 0
  br i1 %i.cy, label %bb.ae, label %._crit_edge160.thread

bb.ae:                                            ; preds = %._crit_edge160
  %i.cz = sub nsw i32 0, %.2.lcssa
  %i.da = shl nuw nsw i32 1, %i.cz
  %i.db = uitofp nneg i32 %i.da to float
  %i.dc = fmul float %i.cc, %i.db
  %i.dd = fdiv float %.1115.lcssa, %i.dc
  br label %common.ret233

._crit_edge160.thread:                            ; preds = %.lr.ph159.prol.loopexit, %.lr.ph159, %._crit_edge160
  %.2.lcssa186 = phi i32 [ %.2.lcssa, %._crit_edge160 ], [ %.lcssa210.unr, %.lr.ph159.prol.loopexit ], [ %i.cw, %.lr.ph159 ]
  %.1115.lcssa185 = phi float [ %.1115.lcssa, %._crit_edge160 ], [ %.lcssa211.unr, %.lr.ph159.prol.loopexit ], [ %i.cv, %.lr.ph159 ]
  %i.de = shl nuw nsw i32 1, %.2.lcssa186
  %i.df = uitofp nneg i32 %i.de to float
  %i.dg = fmul float %.1115.lcssa185, %i.df
  %i.dh = fdiv float %i.dg, %i.cc
  br label %common.ret233
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN7lodepngL7getChrmEPfS0_jPKNS_10LodePNGICCEPK11LodePNGInfo(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #17 {
bb.a:
  %i.a = alloca [9 x float], align 16             ; 9 uses
  %i.b = alloca [9 x float], align 16             ; 11 uses
  %i.c = alloca [9 x float], align 16             ; 11 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %3, align 8, !tbaa !54
  %i.e = icmp eq i32 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !59
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load float, ptr %i.h, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.k = load float, ptr %i.j, align 4, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = load float, ptr %i.l, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.p = fpext float %i.i to double
  %i.q = fpext float %i.k to double
  %i.r = fpext float %i.m to double
  %i.s = load <2 x float>, ptr %i.n, align 8, !tbaa !58 ; 2 uses
  %i.t = load float, ptr %i.o, align 8, !tbaa !58 ; 2 uses
  %i.u = insertelement <3 x double> poison, double %i.q, i64 0
  %i.v = shufflevector <3 x double> %i.u, <3 x double> poison, <3 x i32> zeroinitializer
  %i.w = fmul <3 x double> %i.v, <double f0x3FD10CB2A0000000, double f0x3FFB6A7F00000000, double f0xBFB1893740000000>
  %i.x = insertelement <3 x double> poison, double %i.p, i64 0
  %i.y = shufflevector <3 x double> %i.x, <3 x double> poison, <3 x i32> zeroinitializer
  %i.z = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.y, <3 x double> <double f0x3FECA4A8C0000000, double f0xBFE801A360000000, double f0x3FA3EAB360000000>, <3 x double> %i.w)
  %i.aa = insertelement <3 x double> poison, double %i.r, i64 0
  %i.ab = shufflevector <3 x double> %i.aa, <3 x double> poison, <3 x i32> zeroinitializer
  %i.ac = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.ab, <3 x double> <double f0xBFC4A8C160000000, double f0x3FA2CA57A0000000, double f0x3FF0793DE0000000>, <3 x double> %i.z)
  %i.ad = fptrunc <3 x double> %i.ac to <3 x float>
  %i.ae = fpext <2 x float> %i.s to <2 x double>  ; 2 uses
  %i.af = fpext float %i.t to double
  %i.ag = shufflevector <2 x double> %i.ae, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ah = fmul <3 x double> %i.ag, <double f0x3FD10CB2A0000000, double f0x3FFB6A7F00000000, double f0xBFB1893740000000>
  %i.ai = shufflevector <2 x double> %i.ae, <2 x double> poison, <3 x i32> zeroinitializer
  %i.aj = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.ai, <3 x double> <double f0x3FECA4A8C0000000, double f0xBFE801A360000000, double f0x3FA3EAB360000000>, <3 x double> %i.ah)
  %i.ak = insertelement <3 x double> poison, double %i.af, i64 0
  %i.al = shufflevector <3 x double> %i.ak, <3 x double> poison, <3 x i32> zeroinitializer
  %i.am = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.al, <3 x double> <double f0xBFC4A8C160000000, double f0x3FA2CA57A0000000, double f0x3FF0793DE0000000>, <3 x double> %i.aj)
  %i.an = fptrunc <3 x double> %i.am to <3 x float>
  %i.ao = fdiv <3 x float> %i.an, %i.ad
  %i.ap = shufflevector <3 x float> %i.ao, <3 x float> poison, <9 x i32> <i32 2, i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.aq = fmul <9 x float> %i.ap, <float 1.029600e+00, float -1.614000e-01, float 3.670000e-02, float 3.890000e-02, float f0x3F652546, float f0xBF400D1B, float -6.850000e-02, float 2.664000e-01, float 1.713500e+00>
  %i.ar = fpext <9 x float> %i.aq to <9 x double> ; 15 uses
  %i.as = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 5, i32 5>
  %i.at = fmul <2 x double> %i.as, <double f0xBFC2D2ACE0000000, double f0x3FE0966860000000>
  %i.au = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 4, i32 4>
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> <double f0x3FEF957220000000, double f0x3FDBAAE3E0000000>, <2 x double> %i.at)
  %i.aw = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> <double f0x3FC479A860000000, double f0x3FA93CB240000000>, <2 x double> %i.av)
  %i.ay = fptrunc <2 x double> %i.ax to <2 x float>
  %i.az = extractelement <9 x double> %i.ar, i64 5
  %i.ba = fmul double %i.az, f0x3FA4807D60000000
  %i.bb = extractelement <9 x double> %i.ar, i64 4
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double f0xBF81777EC0000000, double %i.ba)
  %i.bd = extractelement <9 x double> %i.ar, i64 3
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bd, double f0x3FEEFDD7E0000000, double %i.bc)
  %i.bf = fptrunc double %i.be to float
  %i.bg = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 8, i32 8>
  %i.bh = fmul <2 x double> %i.bg, <double f0xBFC2D2ACE0000000, double f0x3FE0966860000000>
  %i.bi = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 7, i32 7>
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> <double f0x3FEF957220000000, double f0x3FDBAAE3E0000000>, <2 x double> %i.bh)
  %i.bk = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 6, i32 6>
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> <double f0x3FC479A860000000, double f0x3FA93CB240000000>, <2 x double> %i.bj)
  %i.bm = fptrunc <2 x double> %i.bl to <2 x float>
  %i.bn = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bo = fmul <2 x double> %i.bn, <double f0xBFC2D2ACE0000000, double f0x3FE0966860000000>
  %i.bp = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> <double f0x3FEF957220000000, double f0x3FDBAAE3E0000000>, <2 x double> %i.bo)
  %i.br = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> zeroinitializer
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> <double f0x3FC479A860000000, double f0x3FA93CB240000000>, <2 x double> %i.bq)
  %i.bt = fptrunc <2 x double> %i.bs to <2 x float>
  %i.bu = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 8, i32 2>
  %i.bv = fmul <2 x double> %i.bu, splat (double f0x3FA4807D60000000)
  %i.bw = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 7, i32 1>
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> splat (double f0xBF81777EC0000000), <2 x double> %i.bv)
  %i.by = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 6, i32 0>
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> splat (double f0x3FEEFDD7E0000000), <2 x double> %i.bx)
  %i.ca = fptrunc <2 x double> %i.bz to <2 x float>
  %i.cb = fpext <2 x float> %i.ay to <2 x double>
  %i.cc = fpext <2 x float> %i.bm to <2 x double>
  %i.cd = fpext <2 x float> %i.bt to <2 x double>
  %.pre86.i = fpext float %i.bf to double
  %i.ce = fpext <2 x float> %i.ca to <2 x double>
  br label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %6 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(36) %i.cf, i64 36, i1 false), !tbaa !58
  %i.cg = call fastcc noundef i32 @_ZN7lodepngL9invMatrixEPf(ptr noundef %i.c) ; 0 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 72
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %8 = load <4 x float>, ptr %i.c, align 16, !tbaa !58
  %9 = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %10 = load <4 x float>, ptr %i.cj, align 8, !tbaa !58
  %11 = load float, ptr %i.ck, align 8, !tbaa !58
  %i.cm = fpext <2 x float> %9 to <2 x double>    ; 2 uses
  %i.cn = load <4 x float>, ptr %i.ci, align 4, !tbaa !58
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.cp = shufflevector <4 x float> %10, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.cq = fpext <2 x float> %i.cp to <2 x double> ; 2 uses
  %i.cr = fpext <2 x float> %i.co to <2 x double> ; 2 uses
  %i.cs = fpext float %11 to double               ; 2 uses
  %i.ct = load <2 x float>, ptr %i.cl, align 4, !tbaa !58
  %12 = load float, ptr %6, align 16, !tbaa !58
  %13 = insertelement <2 x float> %i.ct, float %12, i64 1
  %i.cu = fpext <2 x float> %13 to <2 x double>   ; 3 uses
  %14 = load float, ptr %5, align 4, !tbaa !58
  %15 = load float, ptr %i.ch, align 8, !tbaa !58
  %16 = load float, ptr %7, align 8, !tbaa !58
  %17 = fpext float %14 to double                 ; 2 uses
  %18 = fpext float %15 to double                 ; 2 uses
  %19 = fpext float %16 to double                 ; 2 uses
  %20 = insertelement <2 x double> poison, double %17, i64 0
  %21 = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> zeroinitializer
  %22 = fmul <2 x double> %21, %i.cr
  %i.cv = extractelement <2 x double> %i.cu, i64 0
  %i.cw = fmul double %i.cv, %17
  %23 = insertelement <2 x double> poison, double %18, i64 0
  %24 = shufflevector <2 x double> %23, <2 x double> poison, <2 x i32> zeroinitializer
  %25 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %24, <2 x double> %i.cm, <2 x double> %22)
  %i.cx = tail call double @llvm.fmuladd.f64(double %18, double %i.cs, double %i.cw)
  %26 = insertelement <2 x double> poison, double %19, i64 0
  %27 = shufflevector <2 x double> %26, <2 x double> poison, <2 x i32> zeroinitializer
  %28 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %27, <2 x double> %i.cq, <2 x double> %25)
  %i.cy = extractelement <2 x double> %i.cu, i64 1
  %i.cz = tail call double @llvm.fmuladd.f64(double %19, double %i.cy, double %i.cx)
  %i.da = fptrunc <2 x double> %28 to <2 x float>
  %i.db = fptrunc double %i.cz to float
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.d, %.preheader.i
  %.pre-phi87.i = phi double [ %.pre86.i, %.preheader.i ], [ %i.cs, %bb.d ] ; 2 uses
  %.sroa.8.0.i = phi float [ %i.t, %.preheader.i ], [ %i.db, %bb.d ] ; 2 uses
  %i.dc = phi <2 x double> [ %i.cd, %.preheader.i ], [ %i.cq, %bb.d ] ; 2 uses
  %i.dd = phi <2 x double> [ %i.cb, %.preheader.i ], [ %i.cm, %bb.d ] ; 2 uses
  %i.de = phi <2 x double> [ %i.cc, %.preheader.i ], [ %i.cr, %bb.d ] ; 2 uses
  %i.df = phi <2 x float> [ %i.s, %.preheader.i ], [ %i.da, %bb.d ] ; 2 uses
  %i.dg = phi <2 x double> [ %i.ce, %.preheader.i ], [ %i.cu, %bb.d ] ; 4 uses
  %i.dh = shufflevector <2 x double> %i.de, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.di = shufflevector <2 x double> %i.dd, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dj = shufflevector <2 x double> %i.dc, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.dm = load float, ptr %i.dl, align 8, !tbaa !58
  %i.dn = load <8 x float>, ptr %i.dk, align 8, !tbaa !58 ; 3 uses
  %i.do = shufflevector <8 x float> %i.dn, <8 x float> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 1>
  %i.dp = fpext <4 x float> %i.do to <4 x double> ; 3 uses
  %i.dq = shufflevector <8 x float> %i.dn, <8 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 0>
  %i.dr = fpext <4 x float> %i.dq to <4 x double> ; 3 uses
  %i.ds = shufflevector <8 x float> %i.dn, <8 x float> poison, <3 x i32> <i32 5, i32 poison, i32 2>
  %i.dt = insertelement <3 x float> %i.ds, float %i.dm, i64 1
  %i.du = shufflevector <3 x float> %i.dt, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.dv = fpext <4 x float> %i.du to <4 x double> ; 3 uses
  %i.dw = fmul <4 x double> %i.dh, %i.dp
  %i.dx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dr, <4 x double> %i.di, <4 x double> %i.dw)
  %i.dy = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dv, <4 x double> %i.dj, <4 x double> %i.dx)
  %i.dz = fptrunc <4 x double> %i.dy to <4 x float> ; 2 uses
  %i.ea = extractelement <4 x double> %i.dp, i64 2
  %i.eb = extractelement <4 x double> %i.dr, i64 2
  %i.ec = extractelement <4 x double> %i.dv, i64 2
  %i.ed = shufflevector <2 x double> %i.de, <2 x double> %i.dg, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.ee = shufflevector <4 x double> %i.dp, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.ef = fmul <4 x double> %i.ed, %i.ee
  %i.eg = shufflevector <4 x double> %i.dr, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.eh = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ei = insertelement <2 x double> %i.eh, double %.pre-phi87.i, i64 1
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ek = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.eg, <4 x double> %i.ej, <4 x double> %i.ef)
  %i.el = shufflevector <4 x double> %i.dv, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.em = shufflevector <2 x double> %i.dc, <2 x double> %i.dg, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.en = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.el, <4 x double> %i.em, <4 x double> %i.ek)
  %i.eo = fptrunc <4 x double> %i.en to <4 x float> ; 2 uses
  %i.ep = extractelement <2 x double> %i.dg, i64 0
  %i.eq = fmul double %i.ep, %i.ea
  %i.er = tail call double @llvm.fmuladd.f64(double %i.eb, double %.pre-phi87.i, double %i.eq)
  %i.es = extractelement <2 x double> %i.dg, i64 1
  %i.et = tail call double @llvm.fmuladd.f64(double %i.ec, double %i.es, double %i.er)
  %i.eu = fptrunc double %i.et to float           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store <4 x float> %i.dz, ptr %i.a, align 16, !tbaa !58
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ew = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.ew, ptr %i.ev, align 16, !tbaa !58
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store float %i.eu, ptr %i.ex, align 16, !tbaa !58
  %i.ey = call fastcc noundef i32 @_ZN7lodepngL9invMatrixEPf(ptr noundef %i.a)
  %.not.i46 = icmp eq i32 %i.ey, 0
  br i1 %.not.i46, label %bb.e, label %_ZN7lodepngL10getICCChrmEPfS0_PKNS_10LodePNGICCE.exit

bb.e:                                             ; preds = %.loopexit.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.fa = fpext <2 x float> %i.df to <2 x double> ; 2 uses
  %i.fb = fpext float %.sroa.8.0.i to double
  %i.fc = load <4 x float>, ptr %i.a, align 16, !tbaa !58 ; 3 uses
  %i.fd = load <4 x float>, ptr %i.ez, align 4, !tbaa !58 ; 2 uses
  %i.fe = shufflevector <4 x float> %i.fc, <4 x float> %i.fd, <4 x i32> <i32 0, i32 3, i32 5, i32 0>
  %i.ff = fpext <4 x float> %i.fe to <4 x double>
  %i.fg = load <4 x float>, ptr %i.ev, align 16, !tbaa !58
  %i.fh = shufflevector <4 x float> %i.fc, <4 x float> %i.fg, <4 x i32> <i32 1, i32 4, i32 7, i32 1>
  %i.fi = fpext <4 x float> %i.fh to <4 x double>
  %i.fj = shufflevector <2 x double> %i.fa, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fk = fmul <4 x double> %i.fj, %i.fi
  %i.fl = shufflevector <2 x double> %i.fa, <2 x double> poison, <4 x i32> zeroinitializer
  %i.fm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fl, <4 x double> %i.ff, <4 x double> %i.fk)
  %i.fn = shufflevector <4 x float> %i.fd, <4 x float> %i.fc, <4 x i32> <i32 6, i32 0, i32 3, i32 6>
  %i.fo = fpext <4 x float> %i.fn to <4 x double>
  %i.fp = insertelement <4 x double> poison, double %i.fb, i64 0
  %i.fq = shufflevector <4 x double> %i.fp, <4 x double> poison, <4 x i32> zeroinitializer
  %i.fr = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fq, <4 x double> %i.fo, <4 x double> %i.fm)
  %i.fs = fptrunc <4 x double> %i.fr to <4 x float> ; 3 uses
  %i.ft = fmul <4 x float> %i.dz, %i.fs
  store <4 x float> %i.ft, ptr %0, align 4, !tbaa !58
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fv = extractelement <4 x float> %i.fs, i64 2
  %i.fw = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.fx = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.fy = fmul <4 x float> %i.fw, %i.fx
  store <4 x float> %i.fy, ptr %i.fu, align 4, !tbaa !58
  %i.fz = fmul float %i.fv, %i.eu
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.fz, ptr %i.ga, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  store <2 x float> %i.df, ptr %1, align 4, !tbaa !58
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %.sroa.8.0.i, ptr %i.gb, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.critedge

bb.f:                                             ; preds = %bb.b
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 1.000000e+00, ptr %i.gc, align 4, !tbaa !58
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gd, align 4, !tbaa !58
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 4, !tbaa !58
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 1.000000e+00, ptr %i.ge, align 4, !tbaa !58
  store <2 x float> splat (float 1.000000e+00), ptr %1, align 4, !tbaa !58
  br label %.critedge

_ZN7lodepngL10getICCChrmEPfS0_PKNS_10LodePNGICCE.exit: ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.critedge

bb.g:                                             ; preds = %bb.a
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !73
  %.not42 = icmp eq i32 %i.gg, 0
  br i1 %.not42, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 244
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !69
  %.not43 = icmp eq i32 %i.gi, 0
  br i1 %.not43, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.gk = load <2 x i32>, ptr %i.gj, align 4, !tbaa !15
  %i.gl = uitofp <2 x i32> %i.gk to <2 x float>
  %i.gm = fdiv <2 x float> %i.gl, splat (float 1.000000e+05) ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !75
  %i.gp = uitofp i32 %i.go to float
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !77
  %i.gs = uitofp i32 %i.gr to float
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !79
  %i.gv = uitofp i32 %i.gu to float
  %i.gw = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.gp, i64 0
  %i.gx = insertelement <4 x float> %i.gw, float %i.gs, i64 1
  %i.gy = insertelement <4 x float> %i.gx, float %i.gv, i64 2
  %i.gz = fdiv <4 x float> %i.gy, <float 1.000000e+05, float 1.000000e+05, float 1.000000e+05, float 1.000000e+00> ; 4 uses
  %i.ha = shufflevector <2 x float> %i.gm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hb = shufflevector <4 x float> %i.gz, <4 x float> %i.ha, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.hc = fcmp oeq <4 x float> %i.hb, zeroinitializer
  %i.hd = bitcast <4 x i1> %i.hc to i4
  %.not61 = icmp eq i4 %i.hd, 0
  br i1 %.not61, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.he = getelementptr inbounds nuw i8, ptr %4, i64 236
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !78
  %i.hg = uitofp i32 %i.hf to float
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !76
  %i.hj = uitofp i32 %i.hi to float
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 220
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !74
  %i.hm = uitofp i32 %i.hl to float
  %i.hn = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.hm, i64 0
  %i.ho = insertelement <4 x float> %i.hn, float %i.hj, i64 1
  %i.hp = insertelement <4 x float> %i.ho, float %i.hg, i64 2
  %i.hq = fdiv <4 x float> %i.hp, <float 1.000000e+05, float 1.000000e+05, float 1.000000e+05, float 1.000000e+00> ; 2 uses
  %i.hr = fdiv <4 x float> %i.hq, %i.gz           ; 2 uses
  %i.hs = shufflevector <4 x float> %i.hq, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 2>
  %i.ht = fsub <4 x float> splat (float 1.000000e+00), %i.hs
  %i.hu = shufflevector <4 x float> %i.gz, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 2>
  %i.hv = fsub <4 x float> %i.ht, %i.hu
  %i.hw = shufflevector <4 x float> %i.gz, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 2>
  %i.hx = fdiv <4 x float> %i.hv, %i.hw           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.hy = insertelement <4 x float> %i.hr, float 1.000000e+00, i64 3
  store <4 x float> %i.hy, ptr %i.b, align 16, !tbaa !58
  %i.hz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ia = shufflevector <4 x float> %i.hx, <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 1, i32 2>
  store <4 x float> %i.ia, ptr %i.hz, align 16, !tbaa !58
  %i.ib = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ic = extractelement <4 x float> %i.hx, i64 3
  store float %i.ic, ptr %i.ib, align 16, !tbaa !58
  %i.id = call fastcc noundef i32 @_ZN7lodepngL9invMatrixEPf(ptr noundef %i.b)
  %.not.i.i = icmp eq i32 %i.id, 0
  br i1 %.not.i.i, label %bb.k, label %_ZN7lodepngL15getChrmMatrixXYEPfffffffff.exit

_ZN7lodepngL15getChrmMatrixXYEPfffffffff.exit:    ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.ie = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.if = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ih = extractelement <2 x float> %i.gm, i64 0
  %i.ii = fsub float 1.000000e+00, %i.ih
  %i.ij = extractelement <2 x float> %i.gm, i64 1
  %i.ik = fsub float %i.ii, %i.ij
end_hunk_2
