Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCOpenings?download=true
inline.NumInlined: 3954
inline.NumDeleted: 1464
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp3IFC16GenerateOpeningsERSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshEbbRK10aiVector3tIdE:bb.a
bb.cx:                                            ; preds = %.lr.ph.i.i.i259
  %i.xt = getelementptr inbounds nuw i8, ptr %.05.i.i.i260, i64 88
  %i.xu = load ptr, ptr %i.xt, align 8            ; 2 uses
  %i.xv = ptrtoint ptr %i.xu to i64
  %i.xw = ptrtoint ptr %i.xs to i64
  %i.xx = sub i64 %i.xv, %i.xw                    ; 2 uses
  %i.xy = ashr exact i64 %i.xx, 3
  %i.xz = sub nsw i64 0, %i.xy
  %i.ya = getelementptr inbounds [8 x i8], ptr %i.xu, i64 %i.xz
  call void @_ZdlPvm(ptr noundef %i.ya, i64 noundef %i.xx) #26
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i:   ; preds = %bb.cx, %.lr.ph.i.i.i259
  %i.yb = load ptr, ptr %.05.i.i.i260, align 8    ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.yb, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i
  %i.yc = getelementptr inbounds nuw i8, ptr %.05.i.i.i260, i64 16
  %i.yd = load ptr, ptr %i.yc, align 8
  %i.ye = ptrtoint ptr %i.yd to i64
  %i.yf = ptrtoint ptr %i.yb to i64
  %i.yg = sub i64 %i.ye, %i.yf
  call void @_ZdlPvm(ptr noundef nonnull %i.yb, i64 noundef %i.yg) #26
  br label %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i.i: ; preds = %bb.cy, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i
  %i.yh = getelementptr inbounds nuw i8, ptr %.05.i.i.i260, i64 104 ; 2 uses
  %.not.i.i.i262 = icmp eq ptr %i.yh, %i.xq
  br i1 %.not.i.i.i262, label %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i259, !llvm.loop !7

_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i.i
  %.pr.i263 = load ptr, ptr %11, align 8
  br label %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257
  %i.yi = phi ptr [ %.pr.i263, %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.xo, %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit257 ] ; 3 uses
  %.not.i.i1.i264 = icmp eq ptr %i.yi, null
  br i1 %.not.i.i1.i264, label %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EED2Ev.exit, label %bb.cz

bb.cz:                                            ; preds = %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exit.i
  %i.yj = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.yk = load ptr, ptr %i.yj, align 8
  %i.yl = ptrtoint ptr %i.yk to i64
  %i.ym = ptrtoint ptr %i.yi to i64
  %i.yn = sub i64 %i.yl, %i.ym
  call void @_ZdlPvm(ptr noundef nonnull %i.yi, i64 noundef %i.yn) #26
  br label %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourES2_EvT_S4_RSaIT0_E.exit.i, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.dd

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit254: ; preds = %.loopexit468, %.loopexit.split-lp469, %bb.cn, %_ZNSt6vectorIjSaIjEED2Ev.exit252, %bb.f
  %.pn172 = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %.pn164.pn.pn.pn.pn, %bb.cn ], [ %.pn164.pn.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit252 ], [ %lpad.loopexit470, %.loopexit468 ], [ %lpad.loopexit.split-lp471, %.loopexit.split-lp469 ]
  %.sroa.0419.0..sroa.0419.0..sroa.0419.0..sroa.0419.0.423 = load ptr, ptr %.sroa.0419, align 8 ; 3 uses
  %.not.i.i.i265 = icmp eq ptr %.sroa.0419.0..sroa.0419.0..sroa.0419.0..sroa.0419.0.423, null
  br i1 %.not.i.i.i265, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit266, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit254
  %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.16.428 = load ptr, ptr %.sroa.18, align 8
  %i.yo = ptrtoint ptr %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.16.428 to i64
  %i.yp = ptrtoint ptr %.sroa.0419.0..sroa.0419.0..sroa.0419.0..sroa.0419.0.423 to i64
  %i.yq = sub i64 %i.yo, %i.yp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0419.0..sroa.0419.0..sroa.0419.0..sroa.0419.0.423, i64 noundef %i.yq) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit266

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit266: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit254, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0419)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11424)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  %i.yr = load ptr, ptr %12, align 8              ; 3 uses
  %.not.i.i.i267 = icmp eq ptr %i.yr, null
  br i1 %.not.i.i.i267, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit268, label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit266
  %i.ys = load ptr, ptr %..sroa.gep418, align 8
  %i.yt = ptrtoint ptr %i.ys to i64
  %i.yu = ptrtoint ptr %i.yr to i64
  %i.yv = sub i64 %i.yt, %i.yu
  call void @_ZdlPvm(ptr noundef nonnull %i.yr, i64 noundef %i.yv) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit268

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit268: ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit266, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit268, %bb.e
  %.pn172.pn = phi { ptr, i32 } [ %.pn172, %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit268 ], [ %i.z, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.dh

bb.dd:                                            ; preds = %bb.b, %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EED2Ev.exit
  %.11 = phi i1 [ %.10905, %_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EED2Ev.exit ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.yw = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i269 = icmp eq ptr %i.yw, null
  br i1 %.not.i.i.i269, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit270, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.yx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.yy = load ptr, ptr %i.yx, align 8
  %i.yz = ptrtoint ptr %i.yy to i64
  %i.za = ptrtoint ptr %i.yw to i64
  %i.zb = sub i64 %i.yz, %i.za
  call void @_ZdlPvm(ptr noundef nonnull %i.yw, i64 noundef %i.zb) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit270

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit270: ; preds = %bb.dd, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.zc = load ptr, ptr %5, align 8               ; 3 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ze = load ptr, ptr %i.zd, align 8            ; 2 uses
  %.not4.i.i.i271 = icmp eq ptr %i.zc, %i.ze
  br i1 %.not4.i.i.i271, label %_ZSt8_DestroyIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i272

.lr.ph.i.i.i272:                                  ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit270, %_ZSt8_DestroyISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i273 = phi ptr [ %i.zl, %_ZSt8_DestroyISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEEvPT_.exit.i.i.i ], [ %i.zc, %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit270 ] ; 3 uses
  %i.zf = load ptr, ptr %.05.i.i.i273, align 8    ; 3 uses
  %.not.i.i.i.i.i.i.i274 = icmp eq ptr %i.zf, null
  br i1 %.not.i.i.i.i.i.i.i274, label %_ZSt8_DestroyISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEEvPT_.exit.i.i.i, label %bb.df

bb.df:                                            ; preds = %.lr.ph.i.i.i272
  %i.zg = getelementptr inbounds nuw i8, ptr %.05.i.i.i273, i64 16
  %i.zh = load ptr, ptr %i.zg, align 8
  %i.zi = ptrtoint ptr %i.zh to i64
  %i.zj = ptrtoint ptr %i.zf to i64
  %i.zk = sub i64 %i.zi, %i.zj
  call void @_ZdlPvm(ptr noundef nonnull %i.zf, i64 noundef %i.zk) #26
  br label %_ZSt8_DestroyISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEEvPT_.exit.i.i.i: ; preds = %bb.df, %.lr.ph.i.i.i272
  %i.zl = getelementptr inbounds nuw i8, ptr %.05.i.i.i273, i64 24 ; 2 uses
  %.not.i.i.i275 = icmp eq ptr %i.zl, %i.ze
  br i1 %.not.i.i.i275, label %_ZSt8_DestroyIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i272, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EEEvPT_.exit.i.i.i
  %.pr.i276 = load ptr, ptr %5, align 8
  br label %_ZSt8_DestroyIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit270
  %i.zm = phi ptr [ %.pr.i276, %_ZSt8_DestroyIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.zc, %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit270 ] ; 3 uses
  %.not.i.i1.i277 = icmp eq ptr %i.zm, null
  br i1 %.not.i.i1.i277, label %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EED2Ev.exit, label %bb.dg

bb.dg:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.zn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.zo = load ptr, ptr %i.zn, align 8
  %i.zp = ptrtoint ptr %i.zo to i64
  %i.zq = ptrtoint ptr %i.zm to i64
  %i.zr = sub i64 %i.zp, %i.zq
  call void @_ZdlPvm(ptr noundef nonnull %i.zm, i64 noundef %i.zr) #26
  br label %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EED2Ev.exit

_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret i1 %.11

bb.dh:                                            ; preds = %bb.dc, %bb.c
  %.pn172.pn.pn = phi { ptr, i32 } [ %.pn172.pn, %bb.dc ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.zs = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i278 = icmp eq ptr %i.zs, null
  br i1 %.not.i.i.i278, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit279, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.zt = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.zu = load ptr, ptr %i.zt, align 8
  %i.zv = ptrtoint ptr %i.zu to i64
  %i.zw = ptrtoint ptr %i.zs to i64
  %i.zx = sub i64 %i.zv, %i.zw
  call void @_ZdlPvm(ptr noundef nonnull %i.zs, i64 noundef %i.zx) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit279

_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit279: ; preds = %bb.dh, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn172.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(128) ptr @_ZN12aiMatrix4x4tIdE7InverseEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8             ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = load double, ptr %i.i, align 8           ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load <2 x double>, ptr %i.b, align 8     ; 6 uses
  %i.o = extractelement <2 x double> %i.n, i64 0
  %i.p = fmul double %i.a, %i.o                   ; 2 uses
  %i.q = load <3 x double>, ptr %i.f, align 8     ; 9 uses
  %i.r = load double, ptr %i.f, align 8           ; 6 uses
  %i.s = extractelement <3 x double> %i.q, i64 1  ; 3 uses
  %i.t = fmul double %i.p, %i.s
  %i.u = extractelement <3 x double> %i.q, i64 2  ; 5 uses
  %i.v = fmul double %i.p, %i.u
  %i.w = load <3 x double>, ptr %i.e, align 8     ; 7 uses
  %i.x = load double, ptr %i.c, align 8           ; 7 uses
  %i.y = extractelement <3 x double> %i.w, i64 2  ; 6 uses
  %i.z = extractelement <3 x double> %i.w, i64 0  ; 7 uses
  %i.aa = fneg double %i.r                        ; 5 uses
  %i.ab = shufflevector <3 x double> %i.q, <3 x double> poison, <2 x i32> <i32 poison, i32 1> ; 2 uses
  %i.ac = insertelement <2 x double> %i.ab, double %i.x, i64 0 ; 3 uses
  %i.ad = fneg <2 x double> %i.ac                 ; 5 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 0
  %i.af = fmul double %i.v, %i.ae
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.t, double %i.y, double %i.af)
  %i.ah = extractelement <2 x double> %i.ad, i64 1 ; 3 uses
  %i.ai = load <2 x double>, ptr %i.h, align 8    ; 6 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0
  %i.ak = fneg double %i.u                        ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load <2 x double>, ptr %i.d, align 8    ; 8 uses
  %i.an = extractelement <2 x double> %i.am, i64 0
  %i.ao = fmul double %i.a, %i.an                 ; 2 uses
  %i.ap = fmul double %i.u, %i.ao
  %i.aq = fmul double %i.ao, %i.aa
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.z, double %i.ag)
  %i.as = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.y, double %i.ar)
  %foldExtExtBinop = fmul <2 x double> %i.am, %i.ai
  %i.at = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.au = fmul double %i.at, %i.ak
  %i.av = load <2 x double>, ptr %i.m, align 8    ; 8 uses
  %i.aw = load <2 x double>, ptr %i.g, align 8    ; 7 uses
  %i.ax = load double, ptr %i.k, align 8          ; 7 uses
  %i.ay = fneg double %i.ax                       ; 4 uses
  %i.az = load <2 x double>, ptr %i.al, align 8   ; 7 uses
  %i.ba = load double, ptr %i.l, align 8          ; 4 uses
  %i.bb = fmul double %i.aj, %i.ba                ; 2 uses
  %i.bc = fmul double %i.bb, %i.ah
  %i.bd = fmul double %i.u, %i.bb
  %i.be = extractelement <2 x double> %i.aw, i64 0
  %i.bf = fmul double %i.a, %i.be                 ; 2 uses
  %i.bg = fmul double %i.r, %i.bf
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.x, double %i.as)
  %i.bi = fmul double %i.bf, %i.ah
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.z, double %i.bh)
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.au, double %i.j, double %i.bj)
  %i.bl = fmul double %i.at, %i.ax
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.y, double %i.bk)
  %foldExtExtBinop47 = fmul <2 x double> %i.aw, %i.ai
  %i.bn = extractelement <2 x double> %foldExtExtBinop47, i64 0 ; 2 uses
  %i.bo = fmul double %i.bn, %i.ay
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.x, double %i.bm)
  %i.bq = fmul double %i.s, %i.bn
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.j, double %i.bp)
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.y, double %i.br)
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.x, double %i.bs)
  %i.bu = extractelement <2 x double> %i.av, i64 0
  %foldExtExtBinop49 = fmul <2 x double> %i.aw, %i.av
  %i.bv = extractelement <2 x double> %foldExtExtBinop49, i64 0 ; 2 uses
  %i.bw = fmul double %i.ax, %i.bv
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.z, double %i.bt)
  %i.by = fmul double %i.bv, %i.aa
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.by, double %i.j, double %i.bx)
  %i.ca = fmul double %i.ba, %i.bu                ; 2 uses
  %i.cb = fmul double %i.r, %i.ca
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.y, double %i.bz)
  %i.cd = fmul double %i.ca, %i.ak
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.z, double %i.cc)
  %foldExtExtBinop51 = fmul <2 x double> %i.n, %i.av
  %i.cf = extractelement <2 x double> %foldExtExtBinop51, i64 0 ; 2 uses
  %i.cg = fmul double %i.u, %i.cf
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.j, double %i.ce)
  %i.ci = fmul double %i.cf, %i.ay
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.y, double %i.ch)
  %i.ck = extractelement <2 x double> %i.az, i64 0
  %i.cl = fmul double %i.ba, %i.ck                ; 2 uses
  %i.cm = fmul double %i.cl, %i.aa
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.x, double %i.cj)
  %i.co = fmul double %i.s, %i.cl
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.co, double %i.z, double %i.cn)
  %foldExtExtBinop53 = fmul <2 x double> %i.n, %i.az
  %i.cq = extractelement <2 x double> %foldExtExtBinop53, i64 0 ; 2 uses
  %i.cr = fmul double %i.cq, %i.ah
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.j, double %i.cp)
  %i.ct = fmul double %i.ax, %i.cq
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.x, double %i.cs)
  %foldExtExtBinop55 = fmul <2 x double> %i.am, %i.az
  %i.cv = extractelement <2 x double> %foldExtExtBinop55, i64 0 ; 2 uses
  %i.cw = fmul double %i.cv, %i.ay
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.z, double %i.cu)
  %i.cy = fmul double %i.r, %i.cv
  %i.cz = tail call noundef double @llvm.fmuladd.f64(double %i.cy, double %i.j, double %i.cx) ; 2 uses
  %i.da = fcmp oeq double %i.cz, 0.000000e+00
  br i1 %i.da, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.db = shufflevector <3 x double> %i.q, <3 x double> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.dc = fdiv double 1.000000e+00, %i.cz         ; 3 uses
  %i.dd = fneg double %i.dc                       ; 2 uses
  %i.de = shufflevector <2 x double> %i.ad, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.df = shufflevector <2 x double> %i.n, <2 x double> %i.ai, <2 x i32> <i32 1, i32 3>
  %i.dg = shufflevector <2 x double> %i.n, <2 x double> %i.ai, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.dh = shufflevector <2 x double> %i.av, <2 x double> %i.am, <2 x i32> <i32 3, i32 1>
  %i.di = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.dd, i64 1 ; 4 uses
  %i.dk = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dl = fmul <2 x double> %i.dk, %i.ad
  %i.dm = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.dn = shufflevector <3 x double> %i.w, <3 x double> %i.q, <2 x i32> <i32 2, i32 5> ; 2 uses
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.dn, <2 x double> %i.dl) ; 2 uses
  %i.dp = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.dq = shufflevector <3 x double> %i.w, <3 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.dr = insertelement <2 x double> %i.dq, double %i.r, i64 1 ; 2 uses
  %i.ds = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dt = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.du = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dv = shufflevector <2 x double> %i.am, <2 x double> %i.av, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dw = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dx = insertelement <2 x double> %i.dw, double %i.a, i64 1 ; 2 uses
  %i.dy = shufflevector <2 x double> %i.am, <2 x double> %i.av, <2 x i32> <i32 1, i32 3>
  %i.dz = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.ea = insertelement <2 x double> %i.dz, double %i.dc, i64 1 ; 4 uses
  %i.eb = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ec = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ed = insertelement <2 x double> poison, double %i.j, i64 0
  %i.ee = insertelement <2 x double> %i.aw, double %i.j, i64 0
  %i.ef = insertelement <2 x double> poison, double %i.a, i64 0
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.eh = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ei = insertelement <3 x double> poison, double %i.j, i64 0
  %i.ej = shufflevector <3 x double> %i.ei, <3 x double> %i.w, <3 x i32> <i32 0, i32 3, i32 5> ; 2 uses
  %i.ek = fneg <3 x double> %i.ej                 ; 6 uses
  %i.el = fneg double %i.z
  %i.em = shufflevector <3 x double> %i.ek, <3 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.en = insertelement <2 x double> %i.em, double %i.aa, i64 1
  %i.eo = fmul <2 x double> %i.dm, %i.en
  %i.ep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.ac, <2 x double> %i.eo) ; 2 uses
  %i.eq = shufflevector <3 x double> %i.ek, <3 x double> poison, <3 x i32> <i32 2, i32 1, i32 poison>
  %i.er = shufflevector <3 x double> %i.eq, <3 x double> %i.de, <3 x i32> <i32 0, i32 1, i32 3>
  %i.es = fmul <3 x double> %i.q, %i.er
  %i.et = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.db, <3 x double> %i.w, <3 x double> %i.es) ; 3 uses
  %i.eu = shufflevector <3 x double> %i.et, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ev = fmul <2 x double> %i.df, %i.eu
  %i.ew = shufflevector <3 x double> %i.et, <3 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.ex = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %i.ew, <2 x double> %i.ev)
  %i.ey = shufflevector <3 x double> %i.et, <3 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ez = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> %i.ey, <2 x double> %i.ex)
  %i.fa = fmul <2 x double> %i.ez, %i.dj
  %i.fb = shufflevector <3 x double> %i.ek, <3 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.fc = insertelement <2 x double> %i.fb, double %i.ak, i64 1 ; 2 uses
  %i.fd = fmul <2 x double> %i.dp, %i.fc
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.dr, <2 x double> %i.fd)
  %i.ff = fmul <2 x double> %i.fe, %i.ds
  %i.fg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.do, <2 x double> %i.ff)
  %i.fh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.ep, <2 x double> %i.fg)
  %i.fi = fmul <2 x double> %i.fh, %i.dj
  %i.fj = shufflevector <3 x double> %i.q, <3 x double> poison, <3 x i32> <i32 poison, i32 2, i32 poison>
  %i.fk = insertelement <3 x double> %i.fj, double %i.r, i64 0
  %i.fl = shufflevector <2 x double> %i.aw, <2 x double> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.fm = shufflevector <3 x double> %i.fk, <3 x double> %i.fl, <3 x i32> <i32 0, i32 1, i32 4> ; 2 uses
  %i.fn = fmul <3 x double> %i.fm, %i.ek
  %i.fo = shufflevector <3 x double> %i.w, <3 x double> %i.q, <3 x i32> <i32 0, i32 2, i32 5>
  %1 = shufflevector <3 x double> %i.fm, <3 x double> %i.ej, <3 x i32> <i32 2, i32 0, i32 3>
  %i.fp = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.fo, <3 x double> %1, <3 x double> %i.fn) ; 4 uses
  %i.fq = shufflevector <3 x double> %i.fp, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.fr = shufflevector <3 x double> %i.fp, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.fs = fmul <2 x double> %i.dv, %i.fr
  %i.ft = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> %i.ew, <2 x double> %i.fs)
  %i.fu = fmul <2 x double> %i.eb, %i.fc
  %i.fv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ec, <2 x double> %i.ee, <2 x double> %i.fu) ; 2 uses
  %i.fw = fmul <2 x double> %i.ds, %i.fv
  %i.fx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.do, <2 x double> %i.fw)
  %i.fy = shufflevector <3 x double> %i.ek, <3 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.fz = insertelement <2 x double> %i.fy, double %i.ay, i64 1 ; 2 uses
  %i.ga = fmul <2 x double> %i.dm, %i.fz
  %i.gb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.ac, <2 x double> %i.ga)
  %i.gc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %i.gb, <2 x double> %i.fx)
  %i.gd = fmul <2 x double> %i.gc, %i.ea
  %i.ge = fmul <2 x double> %i.dg, %i.fq
  %i.gf = shufflevector <3 x double> %i.fp, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> %i.gf, <2 x double> %i.ge)
  %i.gh = shufflevector <2 x double> %i.aw, <2 x double> %i.az, <2 x i32> <i32 0, i32 2>
  %i.gi = shufflevector <3 x double> %i.fp, <3 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gh, <2 x double> %i.gi, <2 x double> %i.gg)
  %i.gk = fmul <2 x double> %i.gj, %i.dj
  %i.gl = insertelement <2 x double> poison, double %i.el, i64 0
  %i.gm = insertelement <2 x double> %i.gl, double %i.aa, i64 1
  %i.gn = fmul <2 x double> %i.ec, %i.gm
  %i.go = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.dn, <2 x double> %i.gn)
  %i.gp = fmul <2 x double> %i.dt, %i.fv
  %i.gq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.go, <2 x double> %i.gp)
  %i.gr = fmul <2 x double> %i.dp, %i.fz
  %i.gs = insertelement <2 x double> poison, double %i.ba, i64 0 ; 2 uses
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %i.dr, <2 x double> %i.gr) ; 2 uses
  %i.gv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %i.gu, <2 x double> %i.gq)
  %i.gw = fmul <2 x double> %i.gv, %i.dj
  %i.gx = shufflevector <3 x double> %i.q, <3 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gy = insertelement <2 x double> %i.gx, double %i.ax, i64 1
  %i.gz = shufflevector <3 x double> %i.ek, <3 x double> %i.de, <2 x i32> <i32 0, i32 3>
  %i.ha = fmul <2 x double> %i.gy, %i.gz
  %i.hb = insertelement <2 x double> %i.ab, double %i.ax, i64 0
  %i.hc = insertelement <2 x double> poison, double %i.x, i64 0
  %i.hd = insertelement <2 x double> %i.hc, double %i.j, i64 1
  %i.he = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> %i.hd, <2 x double> %i.ha) ; 2 uses
  %i.hf = shufflevector <2 x double> %i.he, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.hf, <2 x double> %i.ft)
  %i.hh = fmul <2 x double> %i.hg, %i.ea
  %i.hi = shufflevector <2 x double> %i.he, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hj = fmul <2 x double> %i.dg, %i.hi
  %i.hk = insertelement <2 x double> %i.gs, double %i.a, i64 1
  %i.hl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hk, <2 x double> %i.ey, <2 x double> %i.hj)
  %i.hm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %i.gi, <2 x double> %i.hl)
  %i.hn = fmul <2 x double> %i.hm, %i.ea
  %i.ho = fmul <2 x double> %i.gt, %i.ad
  %i.hp = insertelement <2 x double> %i.ed, double %i.ax, i64 1
  %i.hq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.hp, <2 x double> %i.ho)
  %i.hr = fmul <2 x double> %i.dt, %i.hq
  %i.hs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.ep, <2 x double> %i.hr)
  %i.ht = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.gu, <2 x double> %i.hs)
  %i.hu = fmul <2 x double> %i.ht, %i.ea
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.hv = phi <2 x double> [ %i.fa, %bb.b ], [ splat (double +qnan), %bb.a ]
  %i.hw = phi <2 x double> [ %i.fi, %bb.b ], [ splat (double +qnan), %bb.a ]
  %i.hx = phi <2 x double> [ %i.hh, %bb.b ], [ splat (double +qnan), %bb.a ]
  %i.hy = phi <2 x double> [ %i.gd, %bb.b ], [ splat (double +qnan), %bb.a ]
  %i.hz = phi <2 x double> [ %i.gk, %bb.b ], [ splat (double +qnan), %bb.a ]
  %i.ia = phi <2 x double> [ %i.gw, %bb.b ], [ splat (double +qnan), %bb.a ]
  %i.ib = phi <2 x double> [ %i.hn, %bb.b ], [ splat (double +qnan), %bb.a ]
  %i.ic = phi <2 x double> [ %i.hu, %bb.b ], [ splat (double +qnan), %bb.a ]
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x double> %i.hv, ptr %0, align 8
  store <2 x double> %i.hw, ptr %i.m, align 8
  store <2 x double> %i.hx, ptr %i.l, align 8
  store <2 x double> %i.hy, ptr %i.d, align 8
  store <2 x double> %i.hz, ptr %i.k, align 8
  store <2 x double> %i.ia, ptr %i.id, align 8
  store <2 x double> %i.ib, ptr %i.i, align 8
  store <2 x double> %i.ic, ptr %i.c, align 8
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3IFC23TryAddOpenings_Poly2TriERKSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %2 = alloca %class.aiVector3t, align 8          ; 6 uses
  %3 = alloca %class.aiMatrix3x3t, align 16       ; 14 uses
  %4 = alloca %"class.std::vector.43", align 8    ; 15 uses
  %5 = alloca %"class.std::vector.43", align 8    ; 17 uses
  %6 = alloca %class.aiVector3t, align 8          ; 5 uses
  %i.g = alloca i8, align 1                       ; 5 uses
  %7 = alloca %"class.ClipperLib::Clipper", align 8 ; 45 uses
  %8 = alloca %"class.std::vector.119", align 8   ; 11 uses
  %9 = alloca %"class.std::vector.10", align 8    ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 41 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::vector.10", align 8   ; 16 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::vector.132", align 8  ; 13 uses
  %17 = alloca %"class.std::vector.137", align 8  ; 11 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::allocator.86", align 1 ; 4 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"class.std::allocator.86", align 1 ; 4 uses
  %26 = alloca %"class.std::vector.147", align 8  ; 9 uses
  %i.i = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.i, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA65_KcEEEvDpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.k = tail call noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
  store ptr %i.k, ptr %i.e, align 8
  call void @_ZN6Assimp6Logger4warnIJPKcRA65_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(65) @.str.31)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA65_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA65_KcEEEvDpOT_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZN6Assimp3IFC26DerivePlaneCoordinateSpaceERKNS0_8TempMeshERbR10aiVector3tIdE(ptr dead_on_unwind nonnull writable sret(%class.aiMatrix3x3t) align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.l = load i8, ptr %i.f, align 1, !range !22, !noundef !23
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit

bb.c:                                             ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA65_KcEEEvDpOT_.exit
  %.sroa.8603.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.8603.0.copyload = load double, ptr %.sroa.8603.0..sroa_idx, align 16 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.12608.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load <2 x double>, ptr %3, align 16      ; 6 uses
  %i.o = load <2 x double>, ptr %.sroa.10.0..sroa_idx, align 8 ; 5 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.14.0.copyload = load double, ptr %.sroa.14.0..sroa_idx, align 8 ; 3 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %.sroa.16.0.copyload = load double, ptr %.sroa.16.0..sroa_idx, align 16 ; 3 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %.sroa.18.0.copyload = load double, ptr %.sroa.18.0..sroa_idx, align 8 ; 3 uses
  %.sroa.20617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %.sroa.20617.0.copyload = load double, ptr %.sroa.20617.0..sroa_idx, align 16 ; 3 uses
  %i.p = extractelement <2 x double> %i.n, i64 0  ; 3 uses
  %i.q = extractelement <2 x double> %i.o, i64 1  ; 3 uses
  %i.r = fmul double %i.p, %i.q
  %i.s = fmul double %i.p, %.sroa.14.0.copyload
  %i.t = fneg double %.sroa.18.0.copyload         ; 2 uses
  %i.u = fmul double %i.s, %i.t
  %i.v = call double @llvm.fmuladd.f64(double %i.r, double %.sroa.20617.0.copyload, double %i.u)
  %i.w = extractelement <2 x double> %i.n, i64 1  ; 2 uses
  %i.x = fmul double %i.w, %.sroa.14.0.copyload
  %i.y = call double @llvm.fmuladd.f64(double %i.x, double %.sroa.16.0.copyload, double %i.v)
  %i.z = extractelement <2 x double> %i.o, i64 0  ; 2 uses
  %i.aa = fneg double %i.z                        ; 2 uses
  %i.ab = fmul double %i.w, %i.aa                 ; 2 uses
  %i.ac = call double @llvm.fmuladd.f64(double %i.ab, double %.sroa.20617.0.copyload, double %i.y)
  %i.ad = fmul double %.sroa.8603.0.copyload, %i.z
  %i.ae = call double @llvm.fmuladd.f64(double %i.ad, double %.sroa.18.0.copyload, double %i.ac)
  %i.af = fneg double %i.q
  %i.ag = fmul double %.sroa.8603.0.copyload, %i.af ; 2 uses
  %i.ah = call noundef double @llvm.fmuladd.f64(double %i.ag, double %.sroa.16.0.copyload, double %i.ae) ; 2 uses
  %i.ai = fcmp oeq double %i.ah, 0.000000e+00
  br i1 %i.ai, label %_ZN12aiMatrix3x3tIdE7InverseEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = fdiv double 1.000000e+00, %i.ah         ; 4 uses
  %i.ak = fneg double %i.aj                       ; 2 uses
  %i.al = fneg double %.sroa.16.0.copyload
  %i.am = fmul double %.sroa.8603.0.copyload, %i.aa
  %i.an = insertelement <2 x double> poison, double %.sroa.14.0.copyload, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ap = insertelement <2 x double> poison, double %i.al, i64 0 ; 2 uses
  %i.aq = insertelement <2 x double> %i.ap, double %i.t, i64 1 ; 2 uses
  %i.ar = fmul <2 x double> %i.ao, %i.aq
  %i.as = insertelement <2 x double> poison, double %.sroa.20617.0.copyload, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.au = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.at, <2 x double> %i.ar)
  %i.av = insertelement <2 x double> poison, double %.sroa.8603.0.copyload, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x double> %i.aw, %i.aq
  %i.ay = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.at, <2 x double> %i.ax)
  %i.az = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.ag, i64 1
  %i.bb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.ao, <2 x double> %i.ba)
  %i.bc = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.aj, i64 1 ; 3 uses
  %i.be = fmul <2 x double> %i.au, %i.bd
  %i.bf = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bg = fmul <2 x double> %i.ay, %i.bf
end_hunk_0
