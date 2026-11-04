Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/qrcode_encoder?download=true
inline.NumInlined: 1688
inline.NumDeleted: 594
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN2cv17QRCodeEncoderImpl12fillReservedERKSt6vectorIhSaIhEERNS_3MatE:.preheader96
  %.sink.idx.i91.1.5 = select i1 %i.wf, i64 0, i64 %i.wi
  %.sink.i92.1.5 = getelementptr inbounds nuw i8, ptr %i.wg, i64 %.sink.idx.i91.1.5
  %i.wj = sext i32 %i.mj to i64
  %i.wk = getelementptr inbounds i8, ptr %.sink.i92.1.5, i64 %i.wj
  %.255.5 = sext i1 %i.wd to i8
  store i8 %.255.5, ptr %i.wk, align 1, !tbaa !16
  %i.wl = load ptr, ptr %i.mk, align 8, !tbaa !62
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 11
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !16
  %i.wo = icmp eq i8 %i.wn, 0
  %i.wp = load i32, ptr %i.b, align 4, !tbaa !116
  %i.wq = icmp slt i32 %i.wp, 2
  %i.wr = load ptr, ptr %i.c, align 8, !tbaa !117
  %i.ws = load i64, ptr %i.d, align 8
  %i.wt = mul i64 %i.ws, 3
  %.sink.idx.i91.1.6 = select i1 %i.wq, i64 0, i64 %i.wt
  %.sink.i92.1.6 = getelementptr inbounds nuw i8, ptr %i.wr, i64 %.sink.idx.i91.1.6
  %i.wu = sext i32 %i.mh to i64
  %i.wv = getelementptr inbounds i8, ptr %.sink.i92.1.6, i64 %i.wu
  %.255.6 = sext i1 %i.wo to i8
  store i8 %.255.6, ptr %i.wv, align 1, !tbaa !16
  %i.ww = load ptr, ptr %i.mk, align 8, !tbaa !62
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 10
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !16
  %i.wz = icmp eq i8 %i.wy, 0
  %i.xa = load i32, ptr %i.b, align 4, !tbaa !116
  %i.xb = icmp slt i32 %i.xa, 2
  %i.xc = load ptr, ptr %i.c, align 8, !tbaa !117
  %i.xd = load i64, ptr %i.d, align 8
  %i.xe = mul i64 %i.xd, 3
  %.sink.idx.i91.1.7 = select i1 %i.xb, i64 0, i64 %i.xe
  %.sink.i92.1.7 = getelementptr inbounds nuw i8, ptr %i.xc, i64 %.sink.idx.i91.1.7
  %i.xf = sext i32 %i.mi to i64
  %i.xg = getelementptr inbounds i8, ptr %.sink.i92.1.7, i64 %i.xf
  %.255.7 = sext i1 %i.wz to i8
  store i8 %.255.7, ptr %i.xg, align 1, !tbaa !16
  %i.xh = load ptr, ptr %i.mk, align 8, !tbaa !62
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 9
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !16
  %i.xk = icmp eq i8 %i.xj, 0
  %i.xl = load i32, ptr %i.b, align 4, !tbaa !116
  %i.xm = icmp slt i32 %i.xl, 2
  %i.xn = load ptr, ptr %i.c, align 8, !tbaa !117
  %i.xo = load i64, ptr %i.d, align 8
  %i.xp = mul i64 %i.xo, 3
  %.sink.idx.i91.1.8 = select i1 %i.xm, i64 0, i64 %i.xp
  %.sink.i92.1.8 = getelementptr inbounds nuw i8, ptr %i.xn, i64 %.sink.idx.i91.1.8
  %i.xq = sext i32 %i.mj to i64
  %i.xr = getelementptr inbounds i8, ptr %.sink.i92.1.8, i64 %i.xq
  %.255.8 = sext i1 %i.xk to i8
  store i8 %.255.8, ptr %i.xr, align 1, !tbaa !16
  %i.xs = load ptr, ptr %i.mk, align 8, !tbaa !62
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !16
  %i.xv = icmp eq i8 %i.xu, 0
  %i.xw = load i32, ptr %i.b, align 4, !tbaa !116
  %i.xx = icmp slt i32 %i.xw, 2
  %i.xy = load ptr, ptr %i.c, align 8, !tbaa !117
  %i.xz = load i64, ptr %i.d, align 8
  %i.ya = shl i64 %i.xz, 1
  %.sink.idx.i91.1.9 = select i1 %i.xx, i64 0, i64 %i.ya
  %.sink.i92.1.9 = getelementptr inbounds nuw i8, ptr %i.xy, i64 %.sink.idx.i91.1.9
  %i.yb = sext i32 %i.mh to i64
  %i.yc = getelementptr inbounds i8, ptr %.sink.i92.1.9, i64 %i.yb
  %.255.9 = sext i1 %i.xv to i8
  store i8 %.255.9, ptr %i.yc, align 1, !tbaa !16
  %i.yd = load ptr, ptr %i.mk, align 8, !tbaa !62
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 7
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !16
  %i.yg = icmp eq i8 %i.yf, 0
  %i.yh = load i32, ptr %i.b, align 4, !tbaa !116
  %i.yi = icmp slt i32 %i.yh, 2
  %i.yj = load ptr, ptr %i.c, align 8, !tbaa !117
  %i.yk = load i64, ptr %i.d, align 8
  %i.yl = shl i64 %i.yk, 1
  %.sink.idx.i91.1.10 = select i1 %i.yi, i64 0, i64 %i.yl
  %.sink.i92.1.10 = getelementptr inbounds nuw i8, ptr %i.yj, i64 %.sink.idx.i91.1.10
  %i.ym = sext i32 %i.mi to i64
  %i.yn = getelementptr inbounds i8, ptr %.sink.i92.1.10, i64 %i.ym
  %.255.10 = sext i1 %i.yg to i8
  store i8 %.255.10, ptr %i.yn, align 1, !tbaa !16
  %i.yo = load ptr, ptr %i.mk, align 8, !tbaa !62
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 6
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !16
  %i.yr = icmp eq i8 %i.yq, 0
  %i.ys = load i32, ptr %i.b, align 4, !tbaa !116
  %i.yt = icmp slt i32 %i.ys, 2
  %i.yu = load ptr, ptr %i.c, align 8, !tbaa !117
  %i.yv = load i64, ptr %i.d, align 8
  %i.yw = shl i64 %i.yv, 1
  %.sink.idx.i91.1.11 = select i1 %i.yt, i64 0, i64 %i.yw
  %.sink.i92.1.11 = getelementptr inbounds nuw i8, ptr %i.yu, i64 %.sink.idx.i91.1.11
  %i.yx = sext i32 %i.mj to i64
  %i.yy = getelementptr inbounds i8, ptr %.sink.i92.1.11, i64 %i.yx
  %.255.11 = sext i1 %i.yr to i8
  store i8 %.255.11, ptr %i.yy, align 1, !tbaa !16
  %i.yz = load ptr, ptr %i.mk, align 8, !tbaa !62
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 5
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !16
  %i.zc = icmp eq i8 %i.zb, 0
  %i.zd = load i32, ptr %i.b, align 4, !tbaa !116
  %i.ze = icmp slt i32 %i.zd, 2
  %i.zf = load ptr, ptr %i.c, align 8, !tbaa !117
  %i.zg = load i64, ptr %i.d, align 8
  %.sink.idx.i91.1.12 = select i1 %i.ze, i64 0, i64 %i.zg
  %.sink.i92.1.12 = getelementptr inbounds nuw i8, ptr %i.zf, i64 %.sink.idx.i91.1.12
  %i.zh = sext i32 %i.mh to i64
  %i.zi = getelementptr inbounds i8, ptr %.sink.i92.1.12, i64 %i.zh
  %.255.12 = sext i1 %i.zc to i8
  store i8 %.255.12, ptr %i.zi, align 1, !tbaa !16
  %i.zj = load ptr, ptr %i.mk, align 8, !tbaa !62
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 4
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !16
  %i.zm = icmp eq i8 %i.zl, 0
  %i.zn = load i32, ptr %i.b, align 4, !tbaa !116
  %i.zo = icmp slt i32 %i.zn, 2
  %i.zp = load ptr, ptr %i.c, align 8, !tbaa !117
  %i.zq = load i64, ptr %i.d, align 8
  %.sink.idx.i91.1.13 = select i1 %i.zo, i64 0, i64 %i.zq
  %.sink.i92.1.13 = getelementptr inbounds nuw i8, ptr %i.zp, i64 %.sink.idx.i91.1.13
  %i.zr = sext i32 %i.mi to i64
  %i.zs = getelementptr inbounds i8, ptr %.sink.i92.1.13, i64 %i.zr
  %.255.13 = sext i1 %i.zm to i8
  store i8 %.255.13, ptr %i.zs, align 1, !tbaa !16
  %i.zt = load ptr, ptr %i.mk, align 8, !tbaa !62
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 3
  %i.zv = load i8, ptr %i.zu, align 1, !tbaa !16
  %i.zw = icmp eq i8 %i.zv, 0
  %i.zx = load i32, ptr %i.b, align 4, !tbaa !116
  %i.zy = icmp slt i32 %i.zx, 2
  %i.zz = load ptr, ptr %i.c, align 8, !tbaa !117
  %i.aaa = load i64, ptr %i.d, align 8
  %.sink.idx.i91.1.14 = select i1 %i.zy, i64 0, i64 %i.aaa
  %.sink.i92.1.14 = getelementptr inbounds nuw i8, ptr %i.zz, i64 %.sink.idx.i91.1.14
  %i.aab = sext i32 %i.mj to i64
  %i.aac = getelementptr inbounds i8, ptr %.sink.i92.1.14, i64 %i.aab
  %.255.14 = sext i1 %i.zw to i8
  store i8 %.255.14, ptr %i.aac, align 1, !tbaa !16
  %i.aad = load ptr, ptr %i.mk, align 8, !tbaa !62
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 2
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !16
  %i.aag = icmp eq i8 %i.aaf, 0
  %i.aah = load ptr, ptr %i.c, align 8, !tbaa !117
  %i.aai = sext i32 %i.mh to i64
  %i.aaj = getelementptr inbounds i8, ptr %i.aah, i64 %i.aai
  %.255.15 = sext i1 %i.aag to i8
  store i8 %.255.15, ptr %i.aaj, align 1, !tbaa !16
  %i.aak = load ptr, ptr %i.mk, align 8, !tbaa !62
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 1
  %i.aam = load i8, ptr %i.aal, align 1, !tbaa !16
  %i.aan = icmp eq i8 %i.aam, 0
  %i.aao = load ptr, ptr %i.c, align 8, !tbaa !117
  %i.aap = sext i32 %i.mi to i64
  %i.aaq = getelementptr inbounds i8, ptr %i.aao, i64 %i.aap
  %.255.16 = sext i1 %i.aan to i8
  store i8 %.255.16, ptr %i.aaq, align 1, !tbaa !16
  %i.aar = load ptr, ptr %i.mk, align 8, !tbaa !62
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !16
  %i.aat = icmp eq i8 %i.aas, 0
  %i.aau = load ptr, ptr %i.c, align 8, !tbaa !117
  %i.aav = sext i32 %i.mj to i64
  %i.aaw = getelementptr inbounds i8, ptr %i.aau, i64 %i.aav
  %.255.17 = sext i1 %i.aat to i8
  store i8 %.255.17, ptr %i.aaw, align 1, !tbaa !16
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %.preheader96
  ret void
}

declare void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #27
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #9

declare void @_ZN2cvneERKNS_3MatES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #8

declare noundef i32 @_ZN2cv12countNonZeroERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv17QRCodeEncoderImpl17writeReservedAreaEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(608) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #30 ; 13 uses
  %.sroa.5254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.a, align 4
  store i32 9, ptr %.sroa.5254.0..sroa_idx, align 4, !tbaa !28
  %.sroa.6255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 9, ptr %.sroa.6255.0..sroa_idx, align 4, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 28 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !73   ; 6 uses
  %i.d = add i32 %i.c, -8                         ; 3 uses
  %i.e = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %i.d) ; 3 uses
  %i.f = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %i.c)
  %i.g = sub nsw i32 %i.f, %i.e                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i32 0, ptr %i.h, align 4, !tbaa !28
  %.sroa.4241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.e, ptr %.sroa.4241.0..sroa_idx, align 4, !tbaa !28
  %.sroa.5242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 9, ptr %.sroa.5242.0..sroa_idx, align 4, !tbaa !28
  %.sroa.6243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %i.g, ptr %.sroa.6243.0..sroa_idx, align 4, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i32 %i.e, ptr %i.i, align 4, !tbaa !28
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !28
  %.sroa.5231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %i.g, ptr %.sroa.5231.0..sroa_idx, align 4, !tbaa !28
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 9, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !28
  %i.j = add nsw i32 %i.c, -4                     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 20 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 20 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 20 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 32 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 33 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 32 uses
  %1 = icmp eq i32 %i.j, 3
  %i.q = add nsw i32 %i.c, -9                     ; 2 uses
  %i.r = icmp slt i32 %i.c, 9
  %i.s = zext nneg i32 %i.q to i64
  br label %bb.b

bb.b:                                             ; preds = %.loopexit281.1, %bb.a
  %i.t = phi i1 [ false, %bb.a ], [ true, %.loopexit281.1 ] ; 2 uses
  %i.u = phi i1 [ true, %bb.a ], [ false, %.loopexit281.1 ]
  %.sroa.speculated = select i1 %i.t, i32 %i.j, i32 3 ; 2 uses
  %i.v = icmp eq i32 %.sroa.speculated, %i.j
  br label %.preheader280

.preheader280:                                    ; preds = %bb.b, %.split
  %.0129286 = phi i32 [ -5, %bb.b ], [ %i.ag, %.split ] ; 5 uses
  %i.w = add nsw i32 %.0129286, %.sroa.speculated ; 13 uses
  %i.x = icmp slt i32 %i.w, 0
  %i.y = add nsw i32 %.0129286, 2
  %i.z = icmp ult i32 %i.y, 5                     ; 2 uses
  %i.aa = tail call i32 @llvm.abs.i32(i32 %.0129286, i1 true) ; 6 uses
  %i.ab = icmp eq i32 %i.aa, 4                    ; 3 uses
  %i.ac = zext nneg i32 %i.w to i64               ; 17 uses
  %i.ad = icmp eq i32 %.0129286, -5
  %or.cond5 = and i1 %i.v, %i.ad                  ; 9 uses
  br i1 %i.x, label %.split, label %.preheader280.split

.preheader280.split:                              ; preds = %.preheader280
  %i.ae = load i32, ptr %i.b, align 8, !tbaa !73
  %i.af = icmp slt i32 %i.w, %i.ae
  br i1 %i.af, label %.preheader280.split.split, label %.split

.split:                                           ; preds = %.preheader280.split.split.9, %bb.aj, %bb.ak, %.preheader280.split, %.preheader280
  %i.ag = add nsw i32 %.0129286, 1                ; 2 uses
  %exitcond310.not = icmp eq i32 %i.ag, 6
  br i1 %exitcond310.not, label %.loopexit281, label %.preheader280, !llvm.loop !220

.preheader280.split.split:                        ; preds = %.preheader280.split
  %i.ah = load i32, ptr %i.b, align 8, !tbaa !73
  %.not163 = icmp slt i32 %i.w, %i.ah             ; 0 uses
  %i.ai = load i32, ptr %i.b, align 8, !tbaa !73  ; 2 uses
  %.not163.1449 = icmp slt i32 %i.w, %i.ai
  %.not164.1451 = icmp sgt i32 %i.ai, 0
  %or.cond = and i1 %.not163.1449, %.not164.1451
  br i1 %or.cond, label %bb.c, label %.preheader280.split.split.2

bb.c:                                             ; preds = %.preheader280.split.split
  br i1 %i.ab, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i32, ptr %i.k, align 4, !tbaa !116
  %i.ak = icmp slt i32 %i.aj, 2
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.am = load i64, ptr %i.m, align 8
  %i.an = mul i64 %i.am, %i.ac
  %.sink.idx.i184.1457 = select i1 %i.ak, i64 0, i64 %i.an
  %.sink.i185.1458 = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sink.idx.i184.1457
  store i8 0, ptr %.sink.i185.1458, align 1, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %or.cond5, label %.preheader280.split.split.2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load i32, ptr %i.n, align 4, !tbaa !116
  %i.ap = icmp slt i32 %i.ao, 2
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.ar = load i64, ptr %i.p, align 8
  %i.as = mul i64 %i.ar, %i.ac
  %.sink.idx.i186.1459 = select i1 %i.ap, i64 0, i64 %i.as
  %.sink.i187.1460 = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sink.idx.i186.1459
  store i8 110, ptr %.sink.i187.1460, align 1, !tbaa !16
  br label %.preheader280.split.split.2

.preheader280.split.split.2:                      ; preds = %bb.f, %bb.e, %.preheader280.split.split
  %i.at = load i32, ptr %i.b, align 8, !tbaa !73  ; 2 uses
  %.not163.2 = icmp slt i32 %i.w, %i.at
  %.not164.2 = icmp sgt i32 %i.at, 1
  %or.cond463 = and i1 %.not163.2, %.not164.2
  br i1 %or.cond463, label %bb.g, label %.preheader280.split.split.3

bb.g:                                             ; preds = %.preheader280.split.split.2
  br i1 %i.z, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i32 %i.aa, label %bb.i [
    i32 4, label %bb.j
    i32 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.au = load i32, ptr %i.k, align 4, !tbaa !116
  %i.av = icmp slt i32 %i.au, 2
  %i.aw = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.ax = load i64, ptr %i.m, align 8
  %i.ay = mul i64 %i.ax, %i.ac
  %.sink.idx.i184.2 = select i1 %i.av, i64 0, i64 %i.ay
  %.sink.i185.2 = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sink.idx.i184.2
  %i.az = getelementptr inbounds nuw i8, ptr %.sink.i185.2, i64 1
  store i8 0, ptr %i.az, align 1, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.i, %bb.g
  br i1 %or.cond5, label %.preheader280.split.split.3, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = load i32, ptr %i.n, align 4, !tbaa !116
  %i.bb = icmp slt i32 %i.ba, 2
  %i.bc = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.bd = load i64, ptr %i.p, align 8
  %i.be = mul i64 %i.bd, %i.ac
  %.sink.idx.i186.2 = select i1 %i.bb, i64 0, i64 %i.be
  %.sink.i187.2 = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sink.idx.i186.2
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink.i187.2, i64 1
  store i8 110, ptr %i.bf, align 1, !tbaa !16
  br label %.preheader280.split.split.3

.preheader280.split.split.3:                      ; preds = %bb.k, %bb.j, %.preheader280.split.split.2
  %i.bg = load i32, ptr %i.b, align 8, !tbaa !73  ; 2 uses
  %.not163.3 = icmp slt i32 %i.w, %i.bg
  %.not164.3 = icmp sgt i32 %i.bg, 2
  %or.cond464 = and i1 %.not163.3, %.not164.3
  br i1 %or.cond464, label %bb.l, label %.preheader280.split.split.4

bb.l:                                             ; preds = %.preheader280.split.split.3
  switch i32 %i.aa, label %bb.m [
    i32 4, label %bb.n
    i32 2, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.bh = load i32, ptr %i.k, align 4, !tbaa !116
  %i.bi = icmp slt i32 %i.bh, 2
  %i.bj = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.bk = load i64, ptr %i.m, align 8
  %i.bl = mul i64 %i.bk, %i.ac
  %.sink.idx.i184.3 = select i1 %i.bi, i64 0, i64 %i.bl
  %.sink.i185.3 = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sink.idx.i184.3
  %i.bm = getelementptr inbounds nuw i8, ptr %.sink.i185.3, i64 2
  store i8 0, ptr %i.bm, align 1, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.m
  br i1 %or.cond5, label %.preheader280.split.split.4, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = load i32, ptr %i.n, align 4, !tbaa !116
  %i.bo = icmp slt i32 %i.bn, 2
  %i.bp = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.bq = load i64, ptr %i.p, align 8
  %i.br = mul i64 %i.bq, %i.ac
  %.sink.idx.i186.3 = select i1 %i.bo, i64 0, i64 %i.br
  %.sink.i187.3 = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sink.idx.i186.3
  %i.bs = getelementptr inbounds nuw i8, ptr %.sink.i187.3, i64 2
  store i8 110, ptr %i.bs, align 1, !tbaa !16
  br label %.preheader280.split.split.4

.preheader280.split.split.4:                      ; preds = %bb.o, %bb.n, %.preheader280.split.split.3
  %i.bt = load i32, ptr %i.b, align 8, !tbaa !73  ; 2 uses
  %.not163.4 = icmp slt i32 %i.w, %i.bt
  %.not164.4 = icmp sgt i32 %i.bt, 3
  %or.cond465 = and i1 %.not163.4, %.not164.4
  br i1 %or.cond465, label %bb.p, label %.preheader280.split.split.5

bb.p:                                             ; preds = %.preheader280.split.split.4
  switch i32 %i.aa, label %bb.q [
    i32 4, label %bb.r
    i32 2, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.bu = load i32, ptr %i.k, align 4, !tbaa !116
  %i.bv = icmp slt i32 %i.bu, 2
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.bx = load i64, ptr %i.m, align 8
  %i.by = mul i64 %i.bx, %i.ac
  %.sink.idx.i184.4 = select i1 %i.bv, i64 0, i64 %i.by
  %.sink.i185.4 = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.sink.idx.i184.4
  %i.bz = getelementptr inbounds nuw i8, ptr %.sink.i185.4, i64 3
  store i8 0, ptr %i.bz, align 1, !tbaa !16
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.p, %bb.q
  br i1 %or.cond5, label %.preheader280.split.split.5, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = load i32, ptr %i.n, align 4, !tbaa !116
  %i.cb = icmp slt i32 %i.ca, 2
  %i.cc = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.cd = load i64, ptr %i.p, align 8
  %i.ce = mul i64 %i.cd, %i.ac
  %.sink.idx.i186.4 = select i1 %i.cb, i64 0, i64 %i.ce
  %.sink.i187.4 = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sink.idx.i186.4
  %i.cf = getelementptr inbounds nuw i8, ptr %.sink.i187.4, i64 3
  store i8 110, ptr %i.cf, align 1, !tbaa !16
  br label %.preheader280.split.split.5

.preheader280.split.split.5:                      ; preds = %bb.s, %bb.r, %.preheader280.split.split.4
  %i.cg = load i32, ptr %i.b, align 8, !tbaa !73  ; 2 uses
  %.not163.5 = icmp slt i32 %i.w, %i.cg
  %.not164.5 = icmp sgt i32 %i.cg, 4
  %or.cond466 = and i1 %.not163.5, %.not164.5
  br i1 %or.cond466, label %bb.t, label %.preheader280.split.split.6

bb.t:                                             ; preds = %.preheader280.split.split.5
  switch i32 %i.aa, label %bb.u [
    i32 4, label %bb.v
    i32 2, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.ch = load i32, ptr %i.k, align 4, !tbaa !116
  %i.ci = icmp slt i32 %i.ch, 2
  %i.cj = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.ck = load i64, ptr %i.m, align 8
  %i.cl = mul i64 %i.ck, %i.ac
  %.sink.idx.i184.5 = select i1 %i.ci, i64 0, i64 %i.cl
  %.sink.i185.5 = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sink.idx.i184.5
  %i.cm = getelementptr inbounds nuw i8, ptr %.sink.i185.5, i64 4
  store i8 0, ptr %i.cm, align 1, !tbaa !16
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.t, %bb.u
  br i1 %or.cond5, label %.preheader280.split.split.6, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = load i32, ptr %i.n, align 4, !tbaa !116
  %i.co = icmp slt i32 %i.cn, 2
  %i.cp = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.cq = load i64, ptr %i.p, align 8
  %i.cr = mul i64 %i.cq, %i.ac
  %.sink.idx.i186.5 = select i1 %i.co, i64 0, i64 %i.cr
  %.sink.i187.5 = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.sink.idx.i186.5
  %i.cs = getelementptr inbounds nuw i8, ptr %.sink.i187.5, i64 4
  store i8 110, ptr %i.cs, align 1, !tbaa !16
  br label %.preheader280.split.split.6

.preheader280.split.split.6:                      ; preds = %bb.w, %bb.v, %.preheader280.split.split.5
  %i.ct = load i32, ptr %i.b, align 8, !tbaa !73  ; 2 uses
  %.not163.6 = icmp slt i32 %i.w, %i.ct
  %.not164.6 = icmp sgt i32 %i.ct, 5
  %or.cond467 = and i1 %.not163.6, %.not164.6
  br i1 %or.cond467, label %bb.x, label %.preheader280.split.split.7

bb.x:                                             ; preds = %.preheader280.split.split.6
  br i1 %i.z, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  switch i32 %i.aa, label %bb.z [
    i32 4, label %bb.aa
    i32 2, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.cu = load i32, ptr %i.k, align 4, !tbaa !116
  %i.cv = icmp slt i32 %i.cu, 2
  %i.cw = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.cx = load i64, ptr %i.m, align 8
  %i.cy = mul i64 %i.cx, %i.ac
  %.sink.idx.i184.6 = select i1 %i.cv, i64 0, i64 %i.cy
  %.sink.i185.6 = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sink.idx.i184.6
  %i.cz = getelementptr inbounds nuw i8, ptr %.sink.i185.6, i64 5
  store i8 0, ptr %i.cz, align 1, !tbaa !16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.y, %bb.z, %bb.x
  br i1 %or.cond5, label %.preheader280.split.split.7, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load i32, ptr %i.n, align 4, !tbaa !116
  %i.db = icmp slt i32 %i.da, 2
  %i.dc = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.dd = load i64, ptr %i.p, align 8
  %i.de = mul i64 %i.dd, %i.ac
  %.sink.idx.i186.6 = select i1 %i.db, i64 0, i64 %i.de
  %.sink.i187.6 = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.sink.idx.i186.6
  %i.df = getelementptr inbounds nuw i8, ptr %.sink.i187.6, i64 5
  store i8 110, ptr %i.df, align 1, !tbaa !16
  br label %.preheader280.split.split.7

.preheader280.split.split.7:                      ; preds = %bb.ab, %bb.aa, %.preheader280.split.split.6
  %i.dg = load i32, ptr %i.b, align 8, !tbaa !73  ; 2 uses
  %.not163.7 = icmp slt i32 %i.w, %i.dg
  %.not164.7 = icmp sgt i32 %i.dg, 6
  %or.cond468 = and i1 %.not163.7, %.not164.7
  br i1 %or.cond468, label %bb.ac, label %.preheader280.split.split.8

bb.ac:                                            ; preds = %.preheader280.split.split.7
  br i1 %i.ab, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dh = load i32, ptr %i.k, align 4, !tbaa !116
  %i.di = icmp slt i32 %i.dh, 2
  %i.dj = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.dk = load i64, ptr %i.m, align 8
  %i.dl = mul i64 %i.dk, %i.ac
  %.sink.idx.i184.7 = select i1 %i.di, i64 0, i64 %i.dl
  %.sink.i185.7 = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.sink.idx.i184.7
  %i.dm = getelementptr inbounds nuw i8, ptr %.sink.i185.7, i64 6
  store i8 0, ptr %i.dm, align 1, !tbaa !16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %or.cond5, label %.preheader280.split.split.8, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dn = load i32, ptr %i.n, align 4, !tbaa !116
  %i.do = icmp slt i32 %i.dn, 2
  %i.dp = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.dq = load i64, ptr %i.p, align 8
  %i.dr = mul i64 %i.dq, %i.ac
  %.sink.idx.i186.7 = select i1 %i.do, i64 0, i64 %i.dr
  %.sink.i187.7 = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sink.idx.i186.7
  %i.ds = getelementptr inbounds nuw i8, ptr %.sink.i187.7, i64 6
  store i8 110, ptr %i.ds, align 1, !tbaa !16
  br label %.preheader280.split.split.8

.preheader280.split.split.8:                      ; preds = %bb.af, %bb.ae, %.preheader280.split.split.7
  %i.dt = load i32, ptr %i.b, align 8, !tbaa !73  ; 2 uses
  %.not163.8 = icmp slt i32 %i.w, %i.dt
  %.not164.8 = icmp sgt i32 %i.dt, 7
  %or.cond469 = and i1 %.not163.8, %.not164.8
  %or.cond469.not = xor i1 %or.cond469, true
  %brmerge470 = select i1 %or.cond469.not, i1 true, i1 %or.cond5
  br i1 %brmerge470, label %.preheader280.split.split.9, label %bb.ag

bb.ag:                                            ; preds = %.preheader280.split.split.8
  %i.du = load i32, ptr %i.n, align 4, !tbaa !116
  %i.dv = icmp slt i32 %i.du, 2
  %i.dw = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.dx = load i64, ptr %i.p, align 8
  %i.dy = mul i64 %i.dx, %i.ac
  %.sink.idx.i186.8 = select i1 %i.dv, i64 0, i64 %i.dy
  %.sink.i187.8 = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.sink.idx.i186.8
  %i.dz = getelementptr inbounds nuw i8, ptr %.sink.i187.8, i64 7
  store i8 110, ptr %i.dz, align 1, !tbaa !16
  br label %.preheader280.split.split.9

.preheader280.split.split.9:                      ; preds = %.preheader280.split.split.8, %bb.ag
  %i.ea = load i32, ptr %i.b, align 8, !tbaa !73  ; 2 uses
  %.not163.9 = icmp slt i32 %i.w, %i.ea
  %.not164.9 = icmp sgt i32 %i.ea, 8
  %or.cond471 = and i1 %.not163.9, %.not164.9
  br i1 %or.cond471, label %bb.ah, label %.split

bb.ah:                                            ; preds = %.preheader280.split.split.9
  br i1 %i.ab, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eb = load i32, ptr %i.k, align 4, !tbaa !116
  %i.ec = icmp slt i32 %i.eb, 2
  %i.ed = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.ee = load i64, ptr %i.m, align 8
  %i.ef = mul i64 %i.ee, %i.ac
  %.sink.idx.i184.9 = select i1 %i.ec, i64 0, i64 %i.ef
  %.sink.i185.9 = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.sink.idx.i184.9
  %i.eg = getelementptr inbounds nuw i8, ptr %.sink.i185.9, i64 8
  store i8 0, ptr %i.eg, align 1, !tbaa !16
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  br i1 %or.cond5, label %.split, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eh = load i32, ptr %i.n, align 4, !tbaa !116
  %i.ei = icmp slt i32 %i.eh, 2
  %i.ej = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.ek = load i64, ptr %i.p, align 8
  %i.el = mul i64 %i.ek, %i.ac
  %.sink.idx.i186.9 = select i1 %i.ei, i64 0, i64 %i.el
  %.sink.i187.9 = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sink.idx.i186.9
  %i.em = getelementptr inbounds nuw i8, ptr %.sink.i187.9, i64 8
  store i8 110, ptr %i.em, align 1, !tbaa !16
  br label %.split

.loopexit281:                                     ; preds = %.split
  br i1 %i.t, label %.loopexit281.1.thread, label %.preheader280.1

.preheader280.1:                                  ; preds = %.loopexit281, %.split.1
  %.0129286.1 = phi i32 [ %i.ga, %.split.1 ], [ -5, %.loopexit281 ] ; 6 uses
  %i.en = add nsw i32 %.0129286.1, 3              ; 3 uses
  %i.eo = icmp slt i32 %.0129286.1, -3
  %i.ep = add nsw i32 %.0129286.1, 2
  %i.eq = icmp ult i32 %i.ep, 5
  %i.er = tail call i32 @llvm.abs.i32(i32 %.0129286.1, i1 true) ; 2 uses
  %i.es = icmp eq i32 %i.er, 2
  %i.et = icmp eq i32 %i.er, 4                    ; 2 uses
  %i.eu = zext nneg i32 %i.en to i64              ; 3 uses
  %i.ev = icmp eq i32 %.0129286.1, -5
  %or.cond5.1 = and i1 %1, %i.ev
  br i1 %i.eo, label %.split.1, label %.preheader280.split.1

.preheader280.split.1:                            ; preds = %.preheader280.1
  %i.ew = load i32, ptr %i.b, align 8, !tbaa !73  ; 2 uses
  %i.ex = icmp slt i32 %i.en, %i.ew
  br i1 %i.ex, label %.preheader280.split.split.preheader.1, label %.split.1

.preheader280.split.split.preheader.1:            ; preds = %.preheader280.split.1
  %.not164.peel.1 = icmp sge i32 %i.q, %i.ew
  %or.cond168.peel.1.not443 = or i1 %i.r, %.not164.peel.1
  %brmerge = select i1 %or.cond168.peel.1.not443, i1 true, i1 %i.et
  br i1 %brmerge, label %.preheader280.split.split.1.preheader, label %bb.al

bb.al:                                            ; preds = %.preheader280.split.split.preheader.1
  %i.ey = load i32, ptr %i.k, align 4, !tbaa !116
  %i.ez = icmp slt i32 %i.ey, 2
  %i.fa = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.fb = load i64, ptr %i.m, align 8
  %i.fc = mul i64 %i.fb, %i.eu
  %.sink.idx.i184.peel.1 = select i1 %i.ez, i64 0, i64 %i.fc
  %.sink.i185.peel.1 = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.sink.idx.i184.peel.1
  %i.fd = getelementptr inbounds nuw i8, ptr %.sink.i185.peel.1, i64 %i.s
  store i8 0, ptr %i.fd, align 1, !tbaa !16
  br label %.preheader280.split.split.1.preheader

.preheader280.split.split.1.preheader:            ; preds = %.preheader280.split.split.preheader.1, %bb.al
  br label %.preheader280.split.split.1

.preheader280.split.split.1:                      ; preds = %.preheader280.split.split.1.preheader, %bb.as
  %.0128283.1 = phi i32 [ %i.fz, %bb.as ], [ -4, %.preheader280.split.split.1.preheader ] ; 3 uses
  %i.fe = load i32, ptr %i.b, align 8, !tbaa !73  ; 2 uses
  %.not163.1 = icmp slt i32 %i.en, %i.fe
  br i1 %.not163.1, label %bb.am, label %bb.as

bb.am:                                            ; preds = %.preheader280.split.split.1
  %i.ff = add nsw i32 %.0128283.1, %i.j           ; 4 uses
  %i.fg = icmp sgt i32 %i.ff, -1
  %.not164.1 = icmp slt i32 %i.ff, %i.fe
  %or.cond168.1 = and i1 %i.fg, %.not164.1
  br i1 %or.cond168.1, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.fh = tail call i32 @llvm.abs.i32(i32 %.0128283.1, i1 true) ; 3 uses
  %i.fi = icmp eq i32 %i.fh, 2
  %or.cond170.1 = and i1 %i.eq, %i.fi
  br i1 %or.cond170.1, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fj = icmp samesign ult i32 %i.fh, 3
  %or.cond172.1 = select i1 %i.fj, i1 %i.es, i1 false
  %or.cond174.1 = select i1 %or.cond172.1, i1 true, i1 %i.et
  %i.fk = icmp eq i32 %i.fh, 4
  %or.cond175.1 = or i1 %i.fk, %or.cond174.1
  br i1 %or.cond175.1, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fl = load i32, ptr %i.k, align 4, !tbaa !116
  %i.fm = icmp slt i32 %i.fl, 2
  %i.fn = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.fo = load i64, ptr %i.m, align 8
  %i.fp = mul i64 %i.fo, %i.eu
  %.sink.idx.i184.1 = select i1 %i.fm, i64 0, i64 %i.fp
  %.sink.i185.1 = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.sink.idx.i184.1
  %i.fq = zext nneg i32 %i.ff to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %.sink.i185.1, i64 %i.fq
  store i8 0, ptr %i.fr, align 1, !tbaa !16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  br i1 %or.cond5.1, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fs = load i32, ptr %i.n, align 4, !tbaa !116
  %i.ft = icmp slt i32 %i.fs, 2
  %i.fu = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.fv = load i64, ptr %i.p, align 8
  %i.fw = mul i64 %i.fv, %i.eu
  %.sink.idx.i186.1 = select i1 %i.ft, i64 0, i64 %i.fw
  %.sink.i187.1 = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.sink.idx.i186.1
  %i.fx = zext nneg i32 %i.ff to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %.sink.i187.1, i64 %i.fx
  store i8 110, ptr %i.fy, align 1, !tbaa !16
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.am, %.preheader280.split.split.1
  %i.fz = add nsw i32 %.0128283.1, 1              ; 2 uses
  %exitcond.1.not = icmp eq i32 %i.fz, 6
  br i1 %exitcond.1.not, label %.split.1, label %.preheader280.split.split.1, !llvm.loop !221

.split.1:                                         ; preds = %bb.as, %.preheader280.split.1, %.preheader280.1
  %i.ga = add nsw i32 %.0129286.1, 1              ; 2 uses
  %exitcond310.1.not = icmp eq i32 %i.ga, 6
  br i1 %exitcond310.1.not, label %.loopexit281.1, label %.preheader280.1, !llvm.loop !220

.loopexit281.1:                                   ; preds = %.split.1
  br i1 %i.u, label %bb.b, label %.loopexit281.1.thread, !llvm.loop !222

.loopexit281.1.thread:                            ; preds = %.loopexit281, %.loopexit281.1
  %i.gb = load i32, ptr %i.k, align 4, !tbaa !116
  %i.gc = icmp slt i32 %i.gb, 2
  %i.gd = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.ge = load i64, ptr %i.m, align 8
  %i.gf = sext i32 %i.d to i64                    ; 2 uses
  %i.gg = mul i64 %i.ge, %i.gf
  %.sink.idx.i = select i1 %i.gc, i64 0, i64 %i.gg
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.sink.idx.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  store i8 0, ptr %i.gh, align 1, !tbaa !16
  %i.gi = load i32, ptr %i.n, align 4, !tbaa !116
  %i.gj = icmp slt i32 %i.gi, 2
  %i.gk = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.gl = load i64, ptr %i.p, align 8
  %i.gm = mul i64 %i.gl, %i.gf
  %.sink.idx.i188 = select i1 %i.gj, i64 0, i64 %i.gm
  %.sink.i189 = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.sink.idx.i188
  %i.gn = getelementptr inbounds nuw i8, ptr %.sink.i189, i64 8
  store i8 110, ptr %i.gn, align 1, !tbaa !16
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !72
  %i.gq = icmp sgt i32 %i.gp, 6
  %i.gr = load i32, ptr %i.b, align 8, !tbaa !73  ; 2 uses
  br i1 %i.gq, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.loopexit281.1.thread
  %i.gs = add i32 %i.gr, -11
  %i.gt = sext i32 %i.gs to i64
  br label %bb.ay

.lr.ph.1:                                         ; preds = %bb.ay
  %i.gu = load i32, ptr %i.b, align 8, !tbaa !73
  %i.gv = add i32 %i.gu, -11
  %i.gw = sext i32 %i.gv to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.lr.ph.1
  %indvars.iv313.1 = phi i64 [ %i.gw, %.lr.ph.1 ], [ %indvars.iv.next314.1, %bb.at ] ; 4 uses
  %i.gx = load i32, ptr %i.n, align 4, !tbaa !116
  %i.gy = icmp slt i32 %i.gx, 2
  %i.gz = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.ha = load i64, ptr %i.p, align 8
  %.sink.idx.i190.1 = select i1 %i.gy, i64 0, i64 %i.ha
  %.sink.i191.1 = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.sink.idx.i190.1
  %i.hb = getelementptr inbounds i8, ptr %.sink.i191.1, i64 %indvars.iv313.1
  store i8 110, ptr %i.hb, align 1, !tbaa !16
  %i.hc = load i32, ptr %i.n, align 4, !tbaa !116
  %i.hd = icmp slt i32 %i.hc, 2
  %i.he = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.hf = load i64, ptr %i.p, align 8
  %i.hg = mul i64 %i.hf, %indvars.iv313.1
  %.sink.idx.i192.1 = select i1 %i.hd, i64 0, i64 %i.hg
  %.sink.i193.1 = getelementptr inbounds nuw i8, ptr %i.he, i64 %.sink.idx.i192.1
  %i.hh = getelementptr inbounds nuw i8, ptr %.sink.i193.1, i64 1
  store i8 110, ptr %i.hh, align 1, !tbaa !16
  %indvars.iv.next314.1 = add nsw i64 %indvars.iv313.1, 1
  %i.hi = load i32, ptr %i.b, align 8, !tbaa !73
  %i.hj = add nsw i32 %i.hi, -8
  %i.hk = sext i32 %i.hj to i64
  %.not160.not.1 = icmp slt i64 %indvars.iv313.1, %i.hk
  br i1 %.not160.not.1, label %bb.at, label %.lr.ph.2, !llvm.loop !223

.lr.ph.2:                                         ; preds = %bb.at
  %i.hl = load i32, ptr %i.b, align 8, !tbaa !73
  %i.hm = add i32 %i.hl, -11
  %i.hn = sext i32 %i.hm to i64
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.lr.ph.2
  %indvars.iv313.2 = phi i64 [ %i.hn, %.lr.ph.2 ], [ %indvars.iv.next314.2, %bb.au ] ; 4 uses
  %i.ho = load i32, ptr %i.n, align 4, !tbaa !116
  %i.hp = icmp slt i32 %i.ho, 2
  %i.hq = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.hr = load i64, ptr %i.p, align 8
  %i.hs = shl i64 %i.hr, 1
  %.sink.idx.i190.2 = select i1 %i.hp, i64 0, i64 %i.hs
  %.sink.i191.2 = getelementptr inbounds nuw i8, ptr %i.hq, i64 %.sink.idx.i190.2
  %i.ht = getelementptr inbounds i8, ptr %.sink.i191.2, i64 %indvars.iv313.2
  store i8 110, ptr %i.ht, align 1, !tbaa !16
  %i.hu = load i32, ptr %i.n, align 4, !tbaa !116
  %i.hv = icmp slt i32 %i.hu, 2
  %i.hw = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.hx = load i64, ptr %i.p, align 8
  %i.hy = mul i64 %i.hx, %indvars.iv313.2
  %.sink.idx.i192.2 = select i1 %i.hv, i64 0, i64 %i.hy
  %.sink.i193.2 = getelementptr inbounds nuw i8, ptr %i.hw, i64 %.sink.idx.i192.2
  %i.hz = getelementptr inbounds nuw i8, ptr %.sink.i193.2, i64 2
  store i8 110, ptr %i.hz, align 1, !tbaa !16
  %indvars.iv.next314.2 = add nsw i64 %indvars.iv313.2, 1
  %i.ia = load i32, ptr %i.b, align 8, !tbaa !73
  %i.ib = add nsw i32 %i.ia, -8
  %i.ic = sext i32 %i.ib to i64
  %.not160.not.2 = icmp slt i64 %indvars.iv313.2, %i.ic
  br i1 %.not160.not.2, label %bb.au, label %.lr.ph.3, !llvm.loop !223

.lr.ph.3:                                         ; preds = %bb.au
  %i.id = load i32, ptr %i.b, align 8, !tbaa !73
  %i.ie = add i32 %i.id, -11
  %i.if = sext i32 %i.ie to i64
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph.3
end_hunk_0
begin_hunk_1_@_ZN2cv17QRCodeEncoderImpl17writeReservedAreaEv:bb.a
  %i.jf = icmp slt i32 %i.je, 2
  %i.jg = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.jh = load i64, ptr %i.p, align 8
  %i.ji = mul i64 %i.jh, %indvars.iv313.4
  %.sink.idx.i192.4 = select i1 %i.jf, i64 0, i64 %i.ji
  %.sink.i193.4 = getelementptr inbounds nuw i8, ptr %i.jg, i64 %.sink.idx.i192.4
  %i.jj = getelementptr inbounds nuw i8, ptr %.sink.i193.4, i64 4
  store i8 110, ptr %i.jj, align 1, !tbaa !16
  %indvars.iv.next314.4 = add nsw i64 %indvars.iv313.4, 1
  %i.jk = load i32, ptr %i.b, align 8, !tbaa !73
  %i.jl = add nsw i32 %i.jk, -8
  %i.jm = sext i32 %i.jl to i64
  %.not160.not.4 = icmp slt i64 %indvars.iv313.4, %i.jm
  br i1 %.not160.not.4, label %bb.aw, label %.lr.ph.5, !llvm.loop !223

.lr.ph.5:                                         ; preds = %bb.aw
  %i.jn = load i32, ptr %i.b, align 8, !tbaa !73
  %i.jo = add i32 %i.jn, -11
  %i.jp = sext i32 %i.jo to i64
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.lr.ph.5
  %indvars.iv313.5 = phi i64 [ %i.jp, %.lr.ph.5 ], [ %indvars.iv.next314.5, %bb.ax ] ; 4 uses
  %i.jq = load i32, ptr %i.n, align 4, !tbaa !116
  %i.jr = icmp slt i32 %i.jq, 2
  %i.js = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.jt = load i64, ptr %i.p, align 8
  %i.ju = mul i64 %i.jt, 5
  %.sink.idx.i190.5 = select i1 %i.jr, i64 0, i64 %i.ju
  %.sink.i191.5 = getelementptr inbounds nuw i8, ptr %i.js, i64 %.sink.idx.i190.5
  %i.jv = getelementptr inbounds i8, ptr %.sink.i191.5, i64 %indvars.iv313.5
  store i8 110, ptr %i.jv, align 1, !tbaa !16
  %i.jw = load i32, ptr %i.n, align 4, !tbaa !116
  %i.jx = icmp slt i32 %i.jw, 2
  %i.jy = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.jz = load i64, ptr %i.p, align 8
  %i.ka = mul i64 %i.jz, %indvars.iv313.5
  %.sink.idx.i192.5 = select i1 %i.jx, i64 0, i64 %i.ka
  %.sink.i193.5 = getelementptr inbounds nuw i8, ptr %i.jy, i64 %.sink.idx.i192.5
  %i.kb = getelementptr inbounds nuw i8, ptr %.sink.i193.5, i64 5
  store i8 110, ptr %i.kb, align 1, !tbaa !16
  %indvars.iv.next314.5 = add nsw i64 %indvars.iv313.5, 1
  %i.kc = load i32, ptr %i.b, align 8, !tbaa !73  ; 2 uses
  %i.kd = add nsw i32 %i.kc, -8
  %i.ke = sext i32 %i.kd to i64
  %.not160.not.5 = icmp slt i64 %indvars.iv313.5, %i.ke
  br i1 %.not160.not.5, label %bb.ax, label %.loopexit, !llvm.loop !223

bb.ay:                                            ; preds = %.lr.ph, %bb.ay
  %indvars.iv313 = phi i64 [ %i.gt, %.lr.ph ], [ %indvars.iv.next314, %bb.ay ] ; 4 uses
  %i.kf = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 %indvars.iv313
  store i8 110, ptr %i.kg, align 1, !tbaa !16
  %i.kh = load i32, ptr %i.n, align 4, !tbaa !116
  %i.ki = icmp slt i32 %i.kh, 2
  %i.kj = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.kk = load i64, ptr %i.p, align 8
  %i.kl = mul i64 %i.kk, %indvars.iv313
  %.sink.idx.i192 = select i1 %i.ki, i64 0, i64 %i.kl
  %.sink.i193 = getelementptr inbounds nuw i8, ptr %i.kj, i64 %.sink.idx.i192
  store i8 110, ptr %.sink.i193, align 1, !tbaa !16
  %indvars.iv.next314 = add nsw i64 %indvars.iv313, 1
  %i.km = load i32, ptr %i.b, align 8, !tbaa !73
  %i.kn = add nsw i32 %i.km, -8
  %i.ko = sext i32 %i.kn to i64
  %.not160.not = icmp slt i64 %indvars.iv313, %i.ko
  br i1 %.not160.not, label %bb.ay, label %.lr.ph.1, !llvm.loop !223

.loopexit:                                        ; preds = %bb.ax, %.loopexit281.1.thread
  %i.kp = phi i32 [ %i.gr, %.loopexit281.1.thread ], [ %i.kc, %bb.ax ] ; 2 uses
  %i.kq = icmp sgt i32 %i.kp, 0
  br i1 %i.kq, label %.preheader278, label %.preheader277

.preheader278:                                    ; preds = %.loopexit, %._crit_edge294
  %i.kr = phi i32 [ %i.me, %._crit_edge294 ], [ %i.kp, %.loopexit ] ; 8 uses
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %._crit_edge294 ], [ 0, %.loopexit ] ; 5 uses
  %i.ks = icmp sgt i32 %i.kr, 0
  br i1 %i.ks, label %.lr.ph293, label %._crit_edge294

.lr.ph293:                                        ; preds = %.preheader278
  %i.kt = icmp eq i64 %indvars.iv369, 6
  %.not159 = trunc i64 %indvars.iv369 to i1
  br i1 %i.kt, label %.lr.ph293.split.us, label %.lr.ph293.split.preheader

.lr.ph293.split.preheader:                        ; preds = %.lr.ph293
  %i.ku = load i32, ptr %i.n, align 4, !tbaa !116
  %i.kv = icmp slt i32 %i.ku, 2
  %i.kw = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.kx = load i64, ptr %i.p, align 8
  %i.ky = mul i64 %i.kx, %indvars.iv369
  %.sink.idx.i194.peel = select i1 %i.kv, i64 0, i64 %i.ky
  %.sink.i195.peel = getelementptr inbounds nuw i8, ptr %i.kw, i64 %.sink.idx.i194.peel
  %.not430 = icmp eq i32 %i.kr, 1
  br i1 %.not430, label %._crit_edge294, label %.lr.ph293.split.peel.next

.lr.ph293.split.peel.next:                        ; preds = %.lr.ph293.split.preheader
  %i.kz = icmp samesign ugt i32 %i.kr, 2
  br i1 %i.kz, label %.lr.ph293.split.peel.next323, label %._crit_edge294

.lr.ph293.split.peel.next323:                     ; preds = %.lr.ph293.split.peel.next
  %.not431 = icmp eq i32 %i.kr, 3
  br i1 %.not431, label %._crit_edge294, label %.lr.ph293.split.peel.next330

.lr.ph293.split.peel.next330:                     ; preds = %.lr.ph293.split.peel.next323
  %i.la = icmp samesign ugt i32 %i.kr, 4
  br i1 %i.la, label %.lr.ph293.split.peel.next337, label %._crit_edge294

.lr.ph293.split.peel.next337:                     ; preds = %.lr.ph293.split.peel.next330
  %.not432 = icmp eq i32 %i.kr, 5
  br i1 %.not432, label %._crit_edge294, label %.lr.ph293.split.peel.next344

.lr.ph293.split.peel.next344:                     ; preds = %.lr.ph293.split.peel.next337
  %i.lb = icmp samesign ugt i32 %i.kr, 6
  br i1 %i.lb, label %.lr.ph293.split.peel.next351, label %._crit_edge294

.lr.ph293.split.peel.next351:                     ; preds = %.lr.ph293.split.peel.next344
  %i.lc = getelementptr inbounds nuw i8, ptr %.sink.i195.peel, i64 6 ; 2 uses
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !16
  %i.le = icmp eq i8 %i.ld, 110
  br i1 %i.le, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %.lr.ph293.split.peel.next351
  store i8 110, ptr %i.lc, align 1, !tbaa !16
  br i1 %.not159, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lf = load i32, ptr %i.k, align 4, !tbaa !116
  %i.lg = icmp slt i32 %i.lf, 2
  %i.lh = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.li = load i64, ptr %i.m, align 8
  %i.lj = mul i64 %i.li, %indvars.iv369
  %.sink.idx.i198.peel362 = select i1 %i.lg, i64 0, i64 %i.lj
  %.sink.i199.peel363 = getelementptr inbounds nuw i8, ptr %i.lh, i64 %.sink.idx.i198.peel362
  %i.lk = getelementptr inbounds nuw i8, ptr %.sink.i199.peel363, i64 6
  store i8 0, ptr %i.lk, align 1, !tbaa !16
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %.lr.ph293.split.peel.next351
  %i.ll = load i32, ptr %i.b, align 8, !tbaa !73
  br label %._crit_edge294

.lr.ph293.split.us:                               ; preds = %.lr.ph293, %bb.be
  %indvars.iv366 = phi i64 [ %indvars.iv.next367, %bb.be ], [ 0, %.lr.ph293 ] ; 4 uses
  %i.lm = load i32, ptr %i.n, align 4, !tbaa !116
  %i.ln = icmp slt i32 %i.lm, 2
  %i.lo = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.lp = load i64, ptr %i.p, align 8
  %i.lq = mul i64 %i.lp, 6
  %.sink.idx.i194.us = select i1 %i.ln, i64 0, i64 %i.lq
  %.sink.i195.us = getelementptr inbounds nuw i8, ptr %i.lo, i64 %.sink.idx.i194.us
  %i.lr = getelementptr inbounds nuw i8, ptr %.sink.i195.us, i64 %indvars.iv366 ; 2 uses
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !16
  %i.lt = icmp eq i8 %i.ls, 110
  br i1 %i.lt, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph293.split.us
  store i8 110, ptr %i.lr, align 1, !tbaa !16
  %.not158.us = trunc i64 %indvars.iv366 to i1
  br i1 %.not158.us, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lu = load i32, ptr %i.k, align 4, !tbaa !116
  %i.lv = icmp slt i32 %i.lu, 2
  %i.lw = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.lx = load i64, ptr %i.m, align 8
  %i.ly = mul i64 %i.lx, 6
  %.sink.idx.i198.us = select i1 %i.lv, i64 0, i64 %i.ly
  %.sink.i199.us = getelementptr inbounds nuw i8, ptr %i.lw, i64 %.sink.idx.i198.us
  %i.lz = getelementptr inbounds nuw i8, ptr %.sink.i199.us, i64 %indvars.iv366
  store i8 0, ptr %i.lz, align 1, !tbaa !16
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %.lr.ph293.split.us
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %i.ma = load i32, ptr %i.b, align 8, !tbaa !73  ; 2 uses
  %i.mb = sext i32 %i.ma to i64
  %i.mc = icmp slt i64 %indvars.iv.next367, %i.mb
  br i1 %i.mc, label %.lr.ph293.split.us, label %._crit_edge294, !llvm.loop !224

.preheader277:                                    ; preds = %._crit_edge294, %.loopexit
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  br label %bb.bf

._crit_edge294:                                   ; preds = %bb.be, %bb.bb, %.lr.ph293.split.preheader, %.lr.ph293.split.peel.next, %.lr.ph293.split.peel.next323, %.lr.ph293.split.peel.next330, %.lr.ph293.split.peel.next337, %.lr.ph293.split.peel.next344, %.preheader278
  %i.me = phi i32 [ 2, %.lr.ph293.split.peel.next ], [ %i.kr, %.preheader278 ], [ 1, %.lr.ph293.split.preheader ], [ %i.ll, %bb.bb ], [ 6, %.lr.ph293.split.peel.next344 ], [ 5, %.lr.ph293.split.peel.next337 ], [ 4, %.lr.ph293.split.peel.next330 ], [ 3, %.lr.ph293.split.peel.next323 ], [ %i.ma, %bb.be ] ; 2 uses
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %i.mf = sext i32 %i.me to i64
  %i.mg = icmp slt i64 %indvars.iv.next370, %i.mf
  br i1 %i.mg, label %.preheader278, label %.preheader277, !llvm.loop !225

bb.bf:                                            ; preds = %.preheader277, %.critedge9
  %indvars.iv389 = phi i64 [ 0, %.preheader277 ], [ %indvars.iv.next390, %.critedge9 ] ; 3 uses
  %i.mh = load ptr, ptr %i.md, align 8, !tbaa !74
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv389
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !28
  %.not = icmp eq i32 %i.mk, 0
  br i1 %.not, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit, label %.preheader276

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit:     ; preds = %.critedge9, %bb.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #29
  ret void

.preheader276:                                    ; preds = %bb.bf, %.thread269
  %indvars.iv385 = phi i64 [ %indvars.iv.next386, %.thread269 ], [ 0, %bb.bf ] ; 2 uses
  %i.ml = load ptr, ptr %i.md, align 8, !tbaa !74
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 4 ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %indvars.iv385
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !28 ; 8 uses
  %.not148 = icmp eq i32 %i.mo, 0
  br i1 %.not148, label %.critedge9, label %bb.bg

.critedge9:                                       ; preds = %.thread269, %.preheader276
  %indvars.iv.next390 = add nuw nsw i64 %indvars.iv389, 1 ; 2 uses
  %exitcond392.not = icmp eq i64 %indvars.iv.next390, 7
  br i1 %exitcond392.not, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit, label %bb.bf, !llvm.loop !226

bb.bg:                                            ; preds = %.preheader276
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %indvars.iv389
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !28 ; 7 uses
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 4, !tbaa !28 ; 2 uses
  %.sroa.028.0.extract.trunc = trunc i64 %.sroa.0.0.copyload to i32 ; 2 uses
  %.not149 = icmp slt i32 %i.mq, %.sroa.028.0.extract.trunc
  br i1 %.not149, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.sroa.0.sroa.8.0.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.0.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.0.sroa.8.0.extract.shift to i32 ; 2 uses
  %i.mr = add nsw i32 %.sroa.028.0.extract.trunc, 9
  %i.ms = add nsw i32 %.sroa.0.sroa.8.0.extract.trunc, 9
  %.not150 = icmp sgt i32 %i.mq, %i.mr
  %.not151 = icmp slt i32 %i.mo, %.sroa.0.sroa.8.0.extract.trunc
  %or.cond271 = or i1 %.not150, %.not151
  %.not155 = icmp sgt i32 %i.mo, %i.ms
  %or.cond272 = or i1 %.not155, %or.cond271
  br i1 %or.cond272, label %bb.bi, label %.thread269

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %.sroa.0.0.copyload.1 = load i64, ptr %i.h, align 4, !tbaa !28 ; 2 uses
  %.sroa.028.0.extract.trunc.1 = trunc i64 %.sroa.0.0.copyload.1 to i32 ; 2 uses
  %.not149.1 = icmp slt i32 %i.mq, %.sroa.028.0.extract.trunc.1
  br i1 %.not149.1, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.sroa.0.sroa.8.0.extract.shift.1 = lshr i64 %.sroa.0.0.copyload.1, 32
  %.sroa.0.sroa.8.0.extract.trunc.1 = trunc nuw i64 %.sroa.0.sroa.8.0.extract.shift.1 to i32 ; 2 uses
  %i.mt = add nsw i32 %.sroa.028.0.extract.trunc.1, 9
  %i.mu = add nsw i32 %i.g, %.sroa.0.sroa.8.0.extract.trunc.1
  %.not150.1 = icmp sgt i32 %i.mq, %i.mt
  %.not151.1 = icmp slt i32 %i.mo, %.sroa.0.sroa.8.0.extract.trunc.1
  %or.cond271.1 = or i1 %.not150.1, %.not151.1
  %.not155.1 = icmp sgt i32 %i.mo, %i.mu
  %or.cond272.1 = or i1 %.not155.1, %or.cond271.1
  br i1 %or.cond272.1, label %bb.bk, label %.thread269

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.sroa.0.0.copyload.2 = load i64, ptr %i.i, align 4, !tbaa !28 ; 2 uses
  %.sroa.028.0.extract.trunc.2 = trunc i64 %.sroa.0.0.copyload.2 to i32 ; 2 uses
  %.not149.2 = icmp slt i32 %i.mq, %.sroa.028.0.extract.trunc.2
  br i1 %.not149.2, label %.preheader.preheader, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.sroa.0.sroa.8.0.extract.shift.2 = lshr i64 %.sroa.0.0.copyload.2, 32
  %.sroa.0.sroa.8.0.extract.trunc.2 = trunc nuw i64 %.sroa.0.sroa.8.0.extract.shift.2 to i32 ; 2 uses
  %i.mv = add nsw i32 %i.g, %.sroa.028.0.extract.trunc.2
  %i.mw = add nsw i32 %.sroa.0.sroa.8.0.extract.trunc.2, 9
  %.not150.2 = icmp sgt i32 %i.mq, %i.mv
  %.not151.2 = icmp slt i32 %i.mo, %.sroa.0.sroa.8.0.extract.trunc.2
  %or.cond271.2 = or i1 %.not150.2, %.not151.2
  %.not155.2 = icmp sgt i32 %i.mo, %i.mw
  %or.cond272.2 = or i1 %.not155.2, %or.cond271.2
  br i1 %or.cond272.2, label %.preheader.preheader, label %.thread269

.preheader.preheader:                             ; preds = %bb.bl, %bb.bk
  %i.mx = sext i32 %i.mo to i64                   ; 11 uses
  %i.my = sext i32 %i.mq to i64
  %i.mz = add nsw i64 %i.mx, -2                   ; 2 uses
  %i.na = add nsw i64 %i.mx, -2                   ; 2 uses
  %i.nb = add nsw i64 %i.mx, -1                   ; 2 uses
  %i.nc = add nsw i64 %i.mx, 1                    ; 2 uses
  %.sink440 = add nsw i64 %i.mx, 2                ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.split299.us
  %indvars.iv381 = phi i64 [ -2, %.preheader.preheader ], [ %indvars.iv.next382, %.split299.us ] ; 4 uses
  %i.nd = add nsw i64 %indvars.iv381, %i.my       ; 15 uses
  %i.ne = trunc nsw i64 %indvars.iv381 to i32
  %i.nf = tail call i32 @llvm.abs.i32(i32 %i.ne, i1 false)
  %i.ng = icmp eq i32 %i.nf, 2
  %i.nh = load i32, ptr %i.n, align 4, !tbaa !116
  %i.ni = icmp slt i32 %i.nh, 2
  %i.nj = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.nk = load i64, ptr %i.p, align 8
  %i.nl = mul i64 %i.nk, %i.nd
  %.sink.idx.i204.us = select i1 %i.ni, i64 0, i64 %i.nl
  %.sink.i205.us = getelementptr inbounds nuw i8, ptr %i.nj, i64 %.sink.idx.i204.us ; 2 uses
  br i1 %i.ng, label %.preheader.split.us.preheader, label %.preheader.split.2

.preheader.split.us.preheader:                    ; preds = %.preheader
  %i.nm = getelementptr inbounds i8, ptr %.sink.i205.us, i64 %i.na
  store i8 110, ptr %i.nm, align 1, !tbaa !16
  %i.nn = load i32, ptr %i.k, align 4, !tbaa !116
  %i.no = icmp slt i32 %i.nn, 2
  %i.np = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.nq = load i64, ptr %i.m, align 8
  %i.nr = mul i64 %i.nq, %i.nd
  %.sink.idx.i206.us = select i1 %i.no, i64 0, i64 %i.nr
  %.sink.i207.us = getelementptr inbounds nuw i8, ptr %i.np, i64 %.sink.idx.i206.us
  %i.ns = getelementptr inbounds i8, ptr %.sink.i207.us, i64 %i.na
  store i8 0, ptr %i.ns, align 1, !tbaa !16
  %i.nt = load i32, ptr %i.n, align 4, !tbaa !116
  %i.nu = icmp slt i32 %i.nt, 2
  %i.nv = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.nw = load i64, ptr %i.p, align 8
  %i.nx = mul i64 %i.nw, %i.nd
  %.sink.idx.i204.us.1 = select i1 %i.nu, i64 0, i64 %i.nx
  %.sink.i205.us.1 = getelementptr inbounds nuw i8, ptr %i.nv, i64 %.sink.idx.i204.us.1
  %i.ny = getelementptr inbounds i8, ptr %.sink.i205.us.1, i64 %i.nb
  store i8 110, ptr %i.ny, align 1, !tbaa !16
  %i.nz = load i32, ptr %i.k, align 4, !tbaa !116
  %i.oa = icmp slt i32 %i.nz, 2
  %i.ob = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.oc = load i64, ptr %i.m, align 8
  %i.od = mul i64 %i.oc, %i.nd
  %.sink.idx.i206.us.1 = select i1 %i.oa, i64 0, i64 %i.od
  %.sink.i207.us.1 = getelementptr inbounds nuw i8, ptr %i.ob, i64 %.sink.idx.i206.us.1
  %i.oe = getelementptr inbounds i8, ptr %.sink.i207.us.1, i64 %i.nb
  store i8 0, ptr %i.oe, align 1, !tbaa !16
  %i.of = load i32, ptr %i.n, align 4, !tbaa !116
  %i.og = icmp slt i32 %i.of, 2
  %i.oh = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.oi = load i64, ptr %i.p, align 8
  %i.oj = mul i64 %i.oi, %i.nd
  %.sink.idx.i204.us.2 = select i1 %i.og, i64 0, i64 %i.oj
  %.sink.i205.us.2 = getelementptr inbounds nuw i8, ptr %i.oh, i64 %.sink.idx.i204.us.2
  %i.ok = getelementptr inbounds i8, ptr %.sink.i205.us.2, i64 %i.mx
  store i8 110, ptr %i.ok, align 1, !tbaa !16
  %i.ol = load i32, ptr %i.k, align 4, !tbaa !116
  %i.om = icmp slt i32 %i.ol, 2
  %i.on = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.oo = load i64, ptr %i.m, align 8
  %i.op = mul i64 %i.oo, %i.nd
  %.sink.idx.i206.us.2 = select i1 %i.om, i64 0, i64 %i.op
  %.sink.i207.us.2 = getelementptr inbounds nuw i8, ptr %i.on, i64 %.sink.idx.i206.us.2
  %i.oq = getelementptr inbounds i8, ptr %.sink.i207.us.2, i64 %i.mx
  store i8 0, ptr %i.oq, align 1, !tbaa !16
  %i.or = load i32, ptr %i.n, align 4, !tbaa !116
  %i.os = icmp slt i32 %i.or, 2
  %i.ot = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.ou = load i64, ptr %i.p, align 8
  %i.ov = mul i64 %i.ou, %i.nd
  %.sink.idx.i204.us.3 = select i1 %i.os, i64 0, i64 %i.ov
  %.sink.i205.us.3 = getelementptr inbounds nuw i8, ptr %i.ot, i64 %.sink.idx.i204.us.3
  %i.ow = getelementptr inbounds i8, ptr %.sink.i205.us.3, i64 %i.nc
  store i8 110, ptr %i.ow, align 1, !tbaa !16
  %i.ox = load i32, ptr %i.k, align 4, !tbaa !116
  %i.oy = icmp slt i32 %i.ox, 2
  %i.oz = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.pa = load i64, ptr %i.m, align 8
  %i.pb = mul i64 %i.pa, %i.nd
  %.sink.idx.i206.us.3 = select i1 %i.oy, i64 0, i64 %i.pb
  %.sink.i207.us.3 = getelementptr inbounds nuw i8, ptr %i.oz, i64 %.sink.idx.i206.us.3
  %i.pc = getelementptr inbounds i8, ptr %.sink.i207.us.3, i64 %i.nc
  store i8 0, ptr %i.pc, align 1, !tbaa !16
  br label %.split299.us

.split299.us:                                     ; preds = %.split299.us.loopexit304, %.preheader.split.us.preheader
  %.pre406.sink = load ptr, ptr %i.o, align 8, !tbaa !117
  %.sink.in = load i32, ptr %i.n, align 4, !tbaa !116
  %.sink = icmp slt i32 %.sink.in, 2
  %.pre407.sink = load i64, ptr %i.p, align 8
  %i.pd = mul i64 %.pre407.sink, %i.nd
  %.sink.idx.i204.4 = select i1 %.sink, i64 0, i64 %i.pd
  %.sink.i205.4 = getelementptr inbounds nuw i8, ptr %.pre406.sink, i64 %.sink.idx.i204.4
  %i.pe = getelementptr inbounds i8, ptr %.sink.i205.4, i64 %.sink440
  store i8 110, ptr %i.pe, align 1, !tbaa !16
  %i.pf = load i32, ptr %i.k, align 4, !tbaa !116
  %i.pg = icmp slt i32 %i.pf, 2
  %i.ph = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.pi = load i64, ptr %i.m, align 8
  %i.pj = mul i64 %i.pi, %i.nd
  %.sink.idx.i206.4 = select i1 %i.pg, i64 0, i64 %i.pj
  %.sink.i207.4 = getelementptr inbounds nuw i8, ptr %i.ph, i64 %.sink.idx.i206.4
  %i.pk = getelementptr inbounds i8, ptr %.sink.i207.4, i64 %.sink440
  store i8 0, ptr %i.pk, align 1, !tbaa !16
  %indvars.iv.next382 = add nsw i64 %indvars.iv381, 1 ; 2 uses
  %exitcond384.not = icmp eq i64 %indvars.iv.next382, 3
  br i1 %exitcond384.not, label %.thread269, label %.preheader, !llvm.loop !227

.preheader.split.2:                               ; preds = %.preheader
  %i.pl = getelementptr inbounds i8, ptr %.sink.i205.us, i64 %i.mz
  store i8 110, ptr %i.pl, align 1, !tbaa !16
  %i.pm = load i32, ptr %i.k, align 4, !tbaa !116
  %i.pn = icmp slt i32 %i.pm, 2
  %i.po = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.pp = load i64, ptr %i.m, align 8
  %i.pq = mul i64 %i.pp, %i.nd
  %.sink.idx.i206 = select i1 %i.pn, i64 0, i64 %i.pq
  %.sink.i207 = getelementptr inbounds nuw i8, ptr %i.po, i64 %.sink.idx.i206
  %i.pr = getelementptr inbounds i8, ptr %.sink.i207, i64 %i.mz
end_hunk_1
