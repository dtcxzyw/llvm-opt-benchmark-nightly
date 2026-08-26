Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86?download=true
inline.NumInlined: 399
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 220
begin_hunk_0_@_ZN4ncnnL41conv3x3s1_winograd63_transform_input_tileERKNS_3MatERS0_iiiii.omp_outlined:bb.a
  %i.ael = fmul fast <4 x float> %i.aek, splat (float 5.250000e+00)
  %i.aem = fadd fast <4 x float> %i.ael, %.2212.7
  %i.aen = fsub fast <4 x float> %i.aem, %.3.7
  store <4 x float> %i.aed, ptr %i.bu, align 16, !tbaa !254
  store <4 x float> %i.aee, ptr %i.bv, align 16, !tbaa !254
  store <4 x float> %i.aef, ptr %i.bw, align 16, !tbaa !254
  store <4 x float> %i.aeg, ptr %i.bx, align 16, !tbaa !254
  store <4 x float> %i.aeh, ptr %i.by, align 16, !tbaa !254
  store <4 x float> %i.aei, ptr %i.bz, align 16, !tbaa !254
  store <4 x float> %i.aej, ptr %i.ca, align 16, !tbaa !254
  store <4 x float> %i.aen, ptr %i.cb, align 16, !tbaa !254
  %i.aeo = load ptr, ptr %13, align 8, !tbaa !18
  %i.aep = mul i32 %i.ch, %i.ci
  %i.aeq = sext i32 %i.aep to i64
  %i.aer = getelementptr inbounds [4 x i8], ptr %i.aeo, i64 %i.aeq
  %.idx387 = shl nuw nsw i64 %indvars.iv373, 4
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 %.idx387 ; 8 uses
  %i.aet = shl nsw i32 %i.ci, 2
  %i.aeu = sext i32 %i.aet to i64
  %i.aev = getelementptr inbounds [4 x i8], ptr %i.aes, i64 %i.aeu
  %i.aew = shl nsw i32 %i.ci, 3
  %i.aex = sext i32 %i.aew to i64
  %i.aey = getelementptr inbounds [4 x i8], ptr %i.aes, i64 %i.aex
  %i.aez = mul nsw i32 %i.ci, 12
  %i.afa = sext i32 %i.aez to i64
  %i.afb = getelementptr inbounds [4 x i8], ptr %i.aes, i64 %i.afa
  %i.afc = shl nsw i32 %i.ci, 4
  %i.afd = sext i32 %i.afc to i64
  %i.afe = getelementptr inbounds [4 x i8], ptr %i.aes, i64 %i.afd
  %i.aff = mul nsw i32 %i.ci, 20
  %i.afg = sext i32 %i.aff to i64
  %i.afh = getelementptr inbounds [4 x i8], ptr %i.aes, i64 %i.afg
  %i.afi = mul nsw i32 %i.ci, 24
  %i.afj = sext i32 %i.afi to i64
  %i.afk = getelementptr inbounds [4 x i8], ptr %i.aes, i64 %i.afj
  %i.afl = mul nsw i32 %i.ci, 28
  %i.afm = sext i32 %i.afl to i64
  %i.afn = getelementptr inbounds [4 x i8], ptr %i.aes, i64 %i.afm
  br label %bb.er

bb.eq:                                            ; preds = %bb.er
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %i.afo = sext i32 %i.ahq to i64
  %i.afp = icmp slt i64 %indvars.iv.next374, %i.afo
  br i1 %i.afp, label %.noexc, label %._crit_edge, !llvm.loop !977

bb.er:                                            ; preds = %.thread.7, %bb.er
  %indvars.iv369 = phi i64 [ 0, %.thread.7 ], [ %indvars.iv.next370, %bb.er ] ; 2 uses
  %.0213361 = phi ptr [ %i.aes, %.thread.7 ], [ %i.aht, %bb.er ] ; 2 uses
  %.0214360 = phi ptr [ %i.aev, %.thread.7 ], [ %i.ahu, %bb.er ] ; 2 uses
  %.0215359 = phi ptr [ %i.aey, %.thread.7 ], [ %i.ahv, %bb.er ] ; 2 uses
  %.0216358 = phi ptr [ %i.afb, %.thread.7 ], [ %i.ahw, %bb.er ] ; 2 uses
  %.0217357 = phi ptr [ %i.afe, %.thread.7 ], [ %i.ahx, %bb.er ] ; 2 uses
  %.0218356 = phi ptr [ %i.afh, %.thread.7 ], [ %i.ahy, %bb.er ] ; 2 uses
  %.0220354 = phi ptr [ %i.afn, %.thread.7 ], [ %i.aia, %bb.er ] ; 2 uses
  %.0221353 = phi ptr [ %i.afk, %.thread.7 ], [ %i.ahz, %bb.er ] ; 2 uses
  %i.afq = getelementptr inbounds nuw [128 x i8], ptr %i.e, i64 %indvars.iv369 ; 8 uses
  %i.afr = load <4 x float>, ptr %i.afq, align 16, !tbaa !254
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afq, i64 16
  %i.aft = load <4 x float>, ptr %i.afs, align 16, !tbaa !254 ; 4 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afq, i64 32
  %i.afv = load <4 x float>, ptr %i.afu, align 16, !tbaa !254 ; 4 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afq, i64 48
  %i.afx = load <4 x float>, ptr %i.afw, align 16, !tbaa !254 ; 3 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afq, i64 64
  %i.afz = load <4 x float>, ptr %i.afy, align 16, !tbaa !254 ; 3 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afq, i64 80
  %i.agb = load <4 x float>, ptr %i.aga, align 16, !tbaa !254 ; 4 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afq, i64 96
  %i.agd = load <4 x float>, ptr %i.agc, align 16, !tbaa !254 ; 4 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.afq, i64 112
  %i.agf = load <4 x float>, ptr %i.age, align 16, !tbaa !254
  %i.agg = fmul fast <4 x float> %i.afz, splat (float -4.250000e+00)
  %i.agh = fadd fast <4 x float> %i.agg, %i.afv
  %i.agi = fadd fast <4 x float> %i.agh, %i.agd   ; 2 uses
  %i.agj = fmul fast <4 x float> %i.afx, splat (float -4.250000e+00)
  %i.agk = fadd fast <4 x float> %i.agj, %i.aft
  %i.agl = fadd fast <4 x float> %i.agk, %i.agb   ; 2 uses
  %i.agm = fmul fast <4 x float> %i.afv, splat (float 2.500000e-01)
  %i.agn = fadd fast <4 x float> %i.agm, %i.agd
  %i.ago = fmul fast <4 x float> %i.afz, splat (float -1.250000e+00) ; 2 uses
  %i.agp = fadd fast <4 x float> %i.agn, %i.ago   ; 2 uses
  %i.agq = fmul fast <4 x float> %i.aft, splat (float 5.000000e-01)
  %i.agr = fmul fast <4 x float> %i.afx, splat (float -2.500000e+00) ; 2 uses
  %i.ags = fadd fast <4 x float> %i.agq, %i.agr
  %i.agt = fmul fast <4 x float> %i.agb, splat (float 2.000000e+00)
  %i.agu = fadd fast <4 x float> %i.agt, %i.ags   ; 2 uses
  %i.agv = fadd fast <4 x float> %i.ago, %i.afv
  %i.agw = fmul fast <4 x float> %i.agv, splat (float 4.000000e+00)
  %i.agx = fadd fast <4 x float> %i.agw, %i.agd   ; 2 uses
  %i.agy = fmul fast <4 x float> %i.aft, splat (float 2.000000e+00)
  %i.agz = fadd fast <4 x float> %i.agy, %i.agr
  %i.aha = fmul fast <4 x float> %i.agb, splat (float 5.000000e-01)
  %i.ahb = fadd fast <4 x float> %i.aha, %i.agz   ; 2 uses
  %i.ahc = fsub fast <4 x float> %i.afz, %i.afv
  %i.ahd = fsub fast <4 x float> %i.afr, %i.agd
  %i.ahe = fmul fast <4 x float> %i.ahc, splat (float 5.250000e+00)
  %i.ahf = fadd fast <4 x float> %i.ahd, %i.ahe
  %i.ahg = fadd fast <4 x float> %i.agi, %i.agl
  %i.ahh = fsub fast <4 x float> %i.agi, %i.agl
  %i.ahi = fadd fast <4 x float> %i.agp, %i.agu
  %i.ahj = fsub fast <4 x float> %i.agp, %i.agu
  %i.ahk = fadd fast <4 x float> %i.agx, %i.ahb
  %i.ahl = fsub fast <4 x float> %i.agx, %i.ahb
  %i.ahm = fsub fast <4 x float> %i.afx, %i.agb
  %i.ahn = fsub fast <4 x float> %i.agf, %i.aft
  %i.aho = fmul fast <4 x float> %i.ahm, splat (float 5.250000e+00)
  %i.ahp = fadd fast <4 x float> %i.ahn, %i.aho
  store <4 x float> %i.ahf, ptr %.0213361, align 16, !tbaa !254
  store <4 x float> %i.ahg, ptr %.0214360, align 16, !tbaa !254
  store <4 x float> %i.ahh, ptr %.0215359, align 16, !tbaa !254
  store <4 x float> %i.ahi, ptr %.0216358, align 16, !tbaa !254
  store <4 x float> %i.ahj, ptr %.0217357, align 16, !tbaa !254
  store <4 x float> %i.ahk, ptr %.0218356, align 16, !tbaa !254
  store <4 x float> %i.ahl, ptr %.0221353, align 16, !tbaa !254
  store <4 x float> %i.ahp, ptr %.0220354, align 16, !tbaa !254
  %i.ahq = load i32, ptr %4, align 4, !tbaa !67   ; 4 uses
  %i.ahr = shl nsw i32 %i.ahq, 5
  %i.ahs = sext i32 %i.ahr to i64                 ; 8 uses
  %i.aht = getelementptr inbounds [4 x i8], ptr %.0213361, i64 %i.ahs
  %i.ahu = getelementptr inbounds [4 x i8], ptr %.0214360, i64 %i.ahs
  %i.ahv = getelementptr inbounds [4 x i8], ptr %.0215359, i64 %i.ahs
  %i.ahw = getelementptr inbounds [4 x i8], ptr %.0216358, i64 %i.ahs
  %i.ahx = getelementptr inbounds [4 x i8], ptr %.0217357, i64 %i.ahs
  %i.ahy = getelementptr inbounds [4 x i8], ptr %.0218356, i64 %i.ahs
  %i.ahz = getelementptr inbounds [4 x i8], ptr %.0221353, i64 %i.ahs
  %i.aia = getelementptr inbounds [4 x i8], ptr %.0220354, i64 %i.ahs
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond372.not = icmp eq i64 %indvars.iv.next370, 8
  br i1 %exitcond372.not, label %bb.eq, label %bb.er, !llvm.loop !978

._crit_edge:                                      ; preds = %bb.eq, %.lr.ph.split
  %i.aib = phi i32 [ %i.cc, %.lr.ph.split ], [ %i.ahq, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %i.aic = add i32 %.0364, 1
  %exitcond376.not = icmp eq i32 %.0364, %i.k
  br i1 %exitcond376.not, label %._crit_edge366, label %.lr.ph.split, !llvm.loop !979

._crit_edge366:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.es

bb.es:                                            ; preds = %._crit_edge366, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL23convolution_im2col_gemmERKNS_3MatERS0_S2_S2_iiiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not86 = icmp sgt i32 %i.k, %i.j
  br i1 %.not86, label %._crit_edge, label %_ZN4ncnn3MatD2Ev.exit36.lr.ph

_ZN4ncnn3MatD2Ev.exit36.lr.ph:                    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 33 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  br label %_ZN4ncnn3MatD2Ev.exit36

_ZN4ncnn3MatD2Ev.exit36:                          ; preds = %_ZN4ncnn3MatD2Ev.exit36.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.087 = phi i32 [ %i.k, %_ZN4ncnn3MatD2Ev.exit36.lr.ph ], [ %i.tz, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.s = sdiv i32 %.087, %i.r                     ; 2 uses
  %i.t = srem i32 %.087, %i.r                     ; 2 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.v = mul nsw i32 %i.u, %i.s                   ; 14 uses
  %i.w = load i32, ptr %5, align 4, !tbaa !67     ; 2 uses
  %i.x = mul i32 %i.w, %i.t                       ; 18 uses
  %i.y = load i32, ptr %6, align 4, !tbaa !67
  %i.z = sub nsw i32 %i.y, %i.v
  %.sroa.speculated64 = call i32 @llvm.smin.i32(i32 %i.u, i32 %i.z) ; 18 uses
  %i.aa = load i32, ptr %7, align 4, !tbaa !67
  %i.ab = sub i32 %i.aa, %i.x
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.ab) ; 39 uses
  %i.ac = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !980
  %i.ad = load ptr, ptr %8, align 8, !tbaa !18, !noalias !980
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !980
  %i.af = sext i32 %i.s to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !980 ; 2 uses
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = sext i32 %i.ac to i64
  %i.al = sext i32 %i.t to i64
  %i.am = mul nsw i64 %i.ak, %i.al
  %i.an = mul i64 %i.am, %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an ; 13 uses
  %i.ap = load i32, ptr %10, align 4, !tbaa !67   ; 5 uses
  %i.aq = load i32, ptr %11, align 4, !tbaa !67   ; 5 uses
  %i.ar = load i32, ptr %12, align 4, !tbaa !67   ; 2 uses
  %i.as = load i32, ptr %13, align 4, !tbaa !67   ; 2 uses
  %i.at = load i32, ptr %14, align 4, !tbaa !67   ; 3 uses
  %i.au = load i32, ptr %15, align 4, !tbaa !67   ; 3 uses
  %i.av = icmp eq i32 %i.ap, 1
  %i.aw = icmp eq i32 %i.aq, 1
  %or.cond.i = and i1 %i.av, %i.aw                ; 2 uses
  %i.ax = icmp eq i32 %i.ar, 1                    ; 4 uses
  %or.cond3.i = and i1 %or.cond.i, %i.ax
  %i.ay = icmp eq i32 %i.as, 1                    ; 4 uses
  %or.cond5.i = and i1 %or.cond3.i, %i.ay
  %i.az = icmp eq i32 %i.at, 1                    ; 3 uses
  %or.cond7.i = and i1 %or.cond5.i, %i.az
  %i.ba = icmp eq i32 %i.au, 1                    ; 3 uses
  %or.cond9.i = and i1 %or.cond7.i, %i.ba
  br i1 %or.cond9.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit36
  %i.bb = load i32, ptr %i.o, align 8, !tbaa !66  ; 5 uses
  %i.bc = icmp sgt i32 %.sroa.speculated64, 11
  br i1 %i.bc, label %.lr.ph172.i.i, label %.preheader159.i.i

.lr.ph172.i.i:                                    ; preds = %bb.c
  %i.bd = sdiv i32 %i.x, 4
  %i.be = sext i32 %i.bd to i64
  %i.bf = lshr i32 %.sroa.speculated, 2
  %i.bg = sext i32 %i.x to i64
  %i.bh = sext i32 %i.v to i64                    ; 2 uses
  %i.bi = zext nneg i32 %.sroa.speculated64 to i64 ; 5 uses
  switch i32 %i.bb, label %.loopexit160.i.preheader.i [
    i32 4, label %.lr.ph172.i.split.us.i
    i32 1, label %.lr.ph172.i.split.us18.i
  ]

.loopexit160.i.preheader.i:                       ; preds = %.lr.ph172.i.i
  %i.bj = call i64 @llvm.umax.i64(i64 %i.bi, i64 23) ; 2 uses
  %16 = trunc nuw nsw i64 %i.bj to i32
  %.lhs.trunc.i = add nsw i32 %16, -12
  %17 = urem i32 %.lhs.trunc.i, 12
  %.zext.i = zext nneg i32 %17 to i64
  %18 = sub nuw nsw i64 %i.bj, %.zext.i
  br label %.preheader159.loopexit.i.i

.lr.ph172.i.split.us.i:                           ; preds = %.lr.ph172.i.i
  %i.bk = icmp sgt i32 %.sroa.speculated, 3
  br i1 %i.bk, label %_ZN4ncnn3MatD2Ev.exit375.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit375.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit375.i.us.preheader.i:        ; preds = %.lr.ph172.i.split.us.i
  %i.bl = call i64 @llvm.umax.i64(i64 %i.bi, i64 23) ; 2 uses
  %19 = trunc nuw nsw i64 %i.bl to i32
  %.lhs.trunc81.i = add nsw i32 %19, -12
  %20 = urem i32 %.lhs.trunc81.i, 12
  %.zext82.i = zext nneg i32 %20 to i64
  %21 = sub nuw nsw i64 %i.bl, %.zext82.i
  br label %.preheader159.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit375.i.us.us.preheader.i:     ; preds = %.lr.ph172.i.split.us.i
  %.pre74.i.a = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !983
  br label %_ZN4ncnn3MatD2Ev.exit375.i.us.us.i

_ZN4ncnn3MatD2Ev.exit375.i.us.us.i:               ; preds = %.loopexit160.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit375.i.us.us.preheader.i
  %i.bm = phi i64 [ %i.eb, %.loopexit160.i.loopexit.us.us.i ], [ %.pre74.i.a, %_ZN4ncnn3MatD2Ev.exit375.i.us.us.preheader.i ]
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.loopexit160.i.loopexit.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit375.i.us.us.preheader.i ] ; 3 uses
  %.0334171.i.us.us.i = phi ptr [ %i.ea, %.loopexit160.i.loopexit.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit375.i.us.us.preheader.i ]
  %i.bn = load ptr, ptr %9, align 8, !tbaa !18, !noalias !983
  %i.bo = mul i64 %i.bm, %i.be
  %i.bp = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !983
  %i.bq = mul i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bq
  %i.bs = add nsw i64 %indvars.iv.i.us.us.i, %i.bh
  %.idx.i.us.us.i = shl nsw i64 %i.bs, 4
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 %.idx.i.us.us.i
  br label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %.lr.ph.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit375.i.us.us.i
  %.1164.i.us.us.i = phi ptr [ %i.ea, %.lr.ph.i.us.us.i ], [ %.0334171.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit375.i.us.us.i ] ; 13 uses
  %.0340163.i.us.us.i = phi ptr [ %i.ec, %.lr.ph.i.us.us.i ], [ %i.bt, %_ZN4ncnn3MatD2Ev.exit375.i.us.us.i ] ; 13 uses
  %.0341162.i.us.us.i = phi i32 [ %i.ed, %.lr.ph.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit375.i.us.us.i ]
  %i.bu = load <4 x float>, ptr %.0340163.i.us.us.i, align 16, !tbaa !254 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 16
  %i.bw = load <4 x float>, ptr %i.bv, align 16, !tbaa !254 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 32
  %i.by = load <4 x float>, ptr %i.bx, align 16, !tbaa !254 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 48
  %i.ca = load <4 x float>, ptr %i.bz, align 16, !tbaa !254 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 64
  %i.cc = load <4 x float>, ptr %i.cb, align 16, !tbaa !254 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 80
  %i.ce = load <4 x float>, ptr %i.cd, align 16, !tbaa !254 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 96
  %i.cg = load <4 x float>, ptr %i.cf, align 16, !tbaa !254 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 112
  %i.ci = load <4 x float>, ptr %i.ch, align 16, !tbaa !254 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 128
  %i.ck = load <4 x float>, ptr %i.cj, align 16, !tbaa !254 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 144
  %i.cm = load <4 x float>, ptr %i.cl, align 16, !tbaa !254 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 160
  %i.co = load <4 x float>, ptr %i.cn, align 16, !tbaa !254 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 176
  %i.cq = load <4 x float>, ptr %i.cp, align 16, !tbaa !254 ; 2 uses
  %i.cr = shufflevector <4 x float> %i.bu, <4 x float> %i.bw, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cs = shufflevector <4 x float> %i.by, <4 x float> %i.ca, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ct = shufflevector <4 x float> %i.bu, <4 x float> %i.bw, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.cu = shufflevector <4 x float> %i.by, <4 x float> %i.ca, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.cv = shufflevector <4 x float> %i.cr, <4 x float> %i.cs, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cw = shufflevector <4 x float> %i.cs, <4 x float> %i.cr, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.cx = shufflevector <4 x float> %i.ct, <4 x float> %i.cu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cy = shufflevector <4 x float> %i.cu, <4 x float> %i.ct, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.cz = shufflevector <4 x float> %i.cc, <4 x float> %i.ce, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.da = shufflevector <4 x float> %i.cg, <4 x float> %i.ci, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.db = shufflevector <4 x float> %i.cc, <4 x float> %i.ce, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dc = shufflevector <4 x float> %i.cg, <4 x float> %i.ci, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dd = shufflevector <4 x float> %i.cz, <4 x float> %i.da, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.de = shufflevector <4 x float> %i.da, <4 x float> %i.cz, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.df = shufflevector <4 x float> %i.db, <4 x float> %i.dc, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dg = shufflevector <4 x float> %i.dc, <4 x float> %i.db, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.dh = shufflevector <4 x float> %i.ck, <4 x float> %i.cm, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.di = shufflevector <4 x float> %i.co, <4 x float> %i.cq, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dj = shufflevector <4 x float> %i.ck, <4 x float> %i.cm, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dk = shufflevector <4 x float> %i.co, <4 x float> %i.cq, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dl = shufflevector <4 x float> %i.dh, <4 x float> %i.di, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dm = shufflevector <4 x float> %i.di, <4 x float> %i.dh, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.dn = shufflevector <4 x float> %i.dj, <4 x float> %i.dk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.do = shufflevector <4 x float> %i.dk, <4 x float> %i.dj, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.cv, ptr %.1164.i.us.us.i, align 16, !tbaa !254
  %i.dp = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 16
  store <4 x float> %i.dd, ptr %i.dp, align 16, !tbaa !254
  %i.dq = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 32
  store <4 x float> %i.dl, ptr %i.dq, align 16, !tbaa !254
  %i.dr = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 48
  store <4 x float> %i.cw, ptr %i.dr, align 16, !tbaa !254
  %i.ds = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 64
  store <4 x float> %i.de, ptr %i.ds, align 16, !tbaa !254
  %i.dt = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 80
  store <4 x float> %i.dm, ptr %i.dt, align 16, !tbaa !254
  %i.du = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 96
  store <4 x float> %i.cx, ptr %i.du, align 16, !tbaa !254
  %i.dv = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 112
  store <4 x float> %i.df, ptr %i.dv, align 16, !tbaa !254
  %i.dw = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 128
  store <4 x float> %i.dn, ptr %i.dw, align 16, !tbaa !254
  %i.dx = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 144
  store <4 x float> %i.cy, ptr %i.dx, align 16, !tbaa !254
  %i.dy = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 160
  store <4 x float> %i.dg, ptr %i.dy, align 16, !tbaa !254
  %i.dz = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 176
  store <4 x float> %i.do, ptr %i.dz, align 16, !tbaa !254
  %i.ea = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 192 ; 3 uses
  %i.eb = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx357.i.us.us.i = shl i64 %i.eb, 4
  %i.ec = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 %.idx357.i.us.us.i
  %i.ed = add nuw nsw i32 %.0341162.i.us.us.i, 1  ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i32 %i.ed, %i.bf
  br i1 %exitcond.not.i.us.us.i, label %.loopexit160.i.loopexit.us.us.i, label %.lr.ph.i.us.us.i, !llvm.loop !986

.loopexit160.i.loopexit.us.us.i:                  ; preds = %.lr.ph.i.us.us.i
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 12 ; 2 uses
  %i.ee = add nuw nsw i64 %indvars.iv.i.us.us.i, 23
  %i.ef = icmp samesign ult i64 %i.ee, %i.bi
  br i1 %i.ef, label %_ZN4ncnn3MatD2Ev.exit375.i.us.us.i, label %.preheader159.loopexit.i.i, !llvm.loop !987

.lr.ph172.i.split.us18.i:                         ; preds = %.lr.ph172.i.i
  %i.eg = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.eg, label %_ZN4ncnn3MatD2Ev.exit374.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit374.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit374.i.us.preheader.i:        ; preds = %.lr.ph172.i.split.us18.i
  %i.eh = call i64 @llvm.umax.i64(i64 %i.bi, i64 23) ; 2 uses
  %22 = trunc nuw nsw i64 %i.eh to i32
  %.lhs.trunc83.i = add nsw i32 %22, -12
  %23 = urem i32 %.lhs.trunc83.i, 12
  %.zext84.i = zext nneg i32 %23 to i64
  %24 = sub nuw nsw i64 %i.eh, %.zext84.i
  br label %.preheader159.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit374.i.us.us.preheader.i:     ; preds = %.lr.ph172.i.split.us18.i
  %.pre.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !988
  %xtraiter = and i32 %.sroa.speculated, 1
  %i.ei = icmp eq i32 %.sroa.speculated, 1
  %unroll_iter = and i32 %.sroa.speculated, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod169 = trunc i32 %.sroa.speculated to i1
  br label %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i

_ZN4ncnn3MatD2Ev.exit374.i.us.us.i:               ; preds = %.loopexit160.i.loopexit5.us.us.i, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.preheader.i
  %i.ej = phi i64 [ %.lcssa, %.loopexit160.i.loopexit5.us.us.i ], [ %.pre.i, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.preheader.i ]
  %indvars.iv.i.us19.us.i = phi i64 [ %indvars.iv.next.i.us23.us.i, %.loopexit160.i.loopexit5.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.preheader.i ] ; 3 uses
  %.0334171.i.us20.us.i = phi ptr [ %.lcssa153, %.loopexit160.i.loopexit5.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.preheader.i ] ; 2 uses
  %i.ek = load ptr, ptr %9, align 8, !tbaa !18, !noalias !988
  %i.el = mul i64 %i.ej, %i.bg
  %i.em = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !988
  %i.en = mul i64 %i.el, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.en
  %i.ep = getelementptr [4 x i8], ptr %i.eo, i64 %indvars.iv.i.us19.us.i
  %i.eq = getelementptr [4 x i8], ptr %i.ep, i64 %i.bh ; 2 uses
  br i1 %i.ei, label %.lr.ph168.i.us.us.i.epil.preheader, label %.lr.ph168.i.us.us.i

.lr.ph168.i.us.us.i:                              ; preds = %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i, %.lr.ph168.i.us.us.i
  %.3167.i.us.us.i = phi ptr [ %i.fi, %.lr.ph168.i.us.us.i ], [ %.0334171.i.us20.us.i, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i ] ; 7 uses
  %.0346166.i.us.us.i = phi ptr [ %i.fk, %.lr.ph168.i.us.us.i ], [ %i.eq, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i ] ; 4 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph168.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i ]
  %i.er = load <4 x float>, ptr %.0346166.i.us.us.i, align 1, !tbaa !254
  %i.es = getelementptr inbounds nuw i8, ptr %.0346166.i.us.us.i, i64 16
  %i.et = load <4 x float>, ptr %i.es, align 1, !tbaa !254
  %i.eu = getelementptr inbounds nuw i8, ptr %.0346166.i.us.us.i, i64 32
  %i.ev = load <4 x float>, ptr %i.eu, align 1, !tbaa !254
  store <4 x float> %i.er, ptr %.3167.i.us.us.i, align 1, !tbaa !254
  %i.ew = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i, i64 16
  store <4 x float> %i.et, ptr %i.ew, align 1, !tbaa !254
  %i.ex = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i, i64 32
  store <4 x float> %i.ev, ptr %i.ex, align 1, !tbaa !254
  %i.ey = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i, i64 48
  %i.ez = load i64, ptr %i.p, align 8, !tbaa !20
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.0346166.i.us.us.i, i64 %i.ez ; 4 uses
  %i.fb = load <4 x float>, ptr %i.fa, align 1, !tbaa !254
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fd = load <4 x float>, ptr %i.fc, align 1, !tbaa !254
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.ff = load <4 x float>, ptr %i.fe, align 1, !tbaa !254
  store <4 x float> %i.fb, ptr %i.ey, align 1, !tbaa !254
  %i.fg = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i, i64 64
  store <4 x float> %i.fd, ptr %i.fg, align 1, !tbaa !254
  %i.fh = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i, i64 80
  store <4 x float> %i.ff, ptr %i.fh, align 1, !tbaa !254
  %i.fi = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i, i64 96 ; 3 uses
  %i.fj = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.fj ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit160.i.loopexit5.us.us.i.unr-lcssa, label %.lr.ph168.i.us.us.i, !llvm.loop !991

.loopexit160.i.loopexit5.us.us.i.unr-lcssa:       ; preds = %.lr.ph168.i.us.us.i
  br i1 %lcmp.mod.not, label %.loopexit160.i.loopexit5.us.us.i, label %.lr.ph168.i.us.us.i.epil.preheader

.lr.ph168.i.us.us.i.epil.preheader:               ; preds = %.loopexit160.i.loopexit5.us.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i
  %.3167.i.us.us.i.epil.init = phi ptr [ %.0334171.i.us20.us.i, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i ], [ %i.fi, %.loopexit160.i.loopexit5.us.us.i.unr-lcssa ] ; 4 uses
  %.0346166.i.us.us.i.epil.init = phi ptr [ %i.eq, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i ], [ %i.fk, %.loopexit160.i.loopexit5.us.us.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod169)
  %i.fl = load <4 x float>, ptr %.0346166.i.us.us.i.epil.init, align 1, !tbaa !254
  %i.fm = getelementptr inbounds nuw i8, ptr %.0346166.i.us.us.i.epil.init, i64 16
  %i.fn = load <4 x float>, ptr %i.fm, align 1, !tbaa !254
  %i.fo = getelementptr inbounds nuw i8, ptr %.0346166.i.us.us.i.epil.init, i64 32
  %i.fp = load <4 x float>, ptr %i.fo, align 1, !tbaa !254
  store <4 x float> %i.fl, ptr %.3167.i.us.us.i.epil.init, align 1, !tbaa !254
  %i.fq = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i.epil.init, i64 16
  store <4 x float> %i.fn, ptr %i.fq, align 1, !tbaa !254
  %i.fr = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i.epil.init, i64 32
  store <4 x float> %i.fp, ptr %i.fr, align 1, !tbaa !254
  %i.fs = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i.epil.init, i64 48
  %i.ft = load i64, ptr %i.p, align 8, !tbaa !20
  br label %.loopexit160.i.loopexit5.us.us.i

.loopexit160.i.loopexit5.us.us.i:                 ; preds = %.loopexit160.i.loopexit5.us.us.i.unr-lcssa, %.lr.ph168.i.us.us.i.epil.preheader
  %.lcssa153 = phi ptr [ %i.fi, %.loopexit160.i.loopexit5.us.us.i.unr-lcssa ], [ %i.fs, %.lr.ph168.i.us.us.i.epil.preheader ] ; 2 uses
  %.lcssa = phi i64 [ %i.fj, %.loopexit160.i.loopexit5.us.us.i.unr-lcssa ], [ %i.ft, %.lr.ph168.i.us.us.i.epil.preheader ]
  %indvars.iv.next.i.us23.us.i = add nuw nsw i64 %indvars.iv.i.us19.us.i, 12 ; 2 uses
  %i.fu = add nuw nsw i64 %indvars.iv.i.us19.us.i, 23
  %i.fv = icmp samesign ult i64 %i.fu, %i.bi
  br i1 %i.fv, label %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i, label %.preheader159.loopexit.i.i, !llvm.loop !987

.preheader159.loopexit.i.i:                       ; preds = %.loopexit160.i.loopexit5.us.us.i, %.loopexit160.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit374.i.us.preheader.i, %_ZN4ncnn3MatD2Ev.exit375.i.us.preheader.i, %.loopexit160.i.preheader.i
  %.us-phi.i = phi ptr [ %i.ao, %_ZN4ncnn3MatD2Ev.exit374.i.us.preheader.i ], [ %i.ao, %.loopexit160.i.preheader.i ], [ %i.ea, %.loopexit160.i.loopexit.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit375.i.us.preheader.i ], [ %.lcssa153, %.loopexit160.i.loopexit5.us.us.i ]
  %.us-phi17.i = phi i64 [ %24, %_ZN4ncnn3MatD2Ev.exit374.i.us.preheader.i ], [ %18, %.loopexit160.i.preheader.i ], [ %indvars.iv.next.i.us.us.i, %.loopexit160.i.loopexit.us.us.i ], [ %21, %_ZN4ncnn3MatD2Ev.exit375.i.us.preheader.i ], [ %indvars.iv.next.i.us23.us.i, %.loopexit160.i.loopexit5.us.us.i ]
  %i.fw = trunc nuw nsw i64 %.us-phi17.i to i32
  br label %.preheader159.i.i

.preheader159.i.i:                                ; preds = %.preheader159.loopexit.i.i, %bb.c
  %.0335.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %i.fw, %.preheader159.loopexit.i.i ] ; 3 uses
  %.0334.lcssa.i.i = phi ptr [ %i.ao, %bb.c ], [ %.us-phi.i, %.preheader159.loopexit.i.i ] ; 6 uses
  %i.fx = add nuw nsw i32 %.0335.lcssa.i.i, 7
  %i.fy = icmp slt i32 %i.fx, %.sroa.speculated64
  br i1 %i.fy, label %.lr.ph187.i.i, label %.preheader156.i.i

.lr.ph187.i.i:                                    ; preds = %.preheader159.i.i
  %i.fz = sdiv i32 %i.x, 4
  %i.ga = sext i32 %i.fz to i64
  %i.gb = lshr i32 %.sroa.speculated, 2
  %i.gc = sext i32 %i.x to i64
  %i.gd = zext i32 %.0335.lcssa.i.i to i64        ; 11 uses
  %i.ge = sext i32 %i.v to i64                    ; 2 uses
  %i.gf = sext i32 %.sroa.speculated64 to i64
  %invariant.op.i.i = add nsw i64 %i.gf, -15      ; 5 uses
  switch i32 %i.bb, label %.loopexit157.i.preheader.i [
    i32 4, label %.lr.ph187.i.split.us.i
    i32 1, label %.lr.ph187.i.split.us34.i
  ]

.loopexit157.i.preheader.i:                       ; preds = %.lr.ph187.i.i
  %smax73.i = call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.gd)
  %reass.sub89 = sub nsw i64 %smax73.i, %i.gd
  %i.gg = add nsw i64 %reass.sub89, 7
  %i.gh = and i64 %i.gg, -8
  %i.gi = add nuw nsw i64 %i.gd, 8
  %i.gj = add i64 %i.gi, %i.gh
  br label %.preheader156.loopexit.i.i

.lr.ph187.i.split.us.i:                           ; preds = %.lr.ph187.i.i
  %i.gk = icmp sgt i32 %.sroa.speculated, 3
  br i1 %i.gk, label %_ZN4ncnn3MatD2Ev.exit373.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit373.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit373.i.us.preheader.i:        ; preds = %.lr.ph187.i.split.us.i
  %smax72.i = call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.gd)
  %reass.sub88 = sub nsw i64 %smax72.i, %i.gd
  %i.gl = add nsw i64 %reass.sub88, 7
  %i.gm = and i64 %i.gl, -8
  %i.gn = add nuw nsw i64 %i.gd, 8
  %i.go = add i64 %i.gn, %i.gm
  br label %.preheader156.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit373.i.us.us.preheader.i:     ; preds = %.lr.ph187.i.split.us.i
  %.pre76.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !992
  br label %_ZN4ncnn3MatD2Ev.exit373.i.us.us.i

_ZN4ncnn3MatD2Ev.exit373.i.us.us.i:               ; preds = %.loopexit157.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit373.i.us.us.preheader.i
  %i.gp = phi i64 [ %i.ik, %.loopexit157.i.loopexit.us.us.i ], [ %.pre76.i, %_ZN4ncnn3MatD2Ev.exit373.i.us.us.preheader.i ]
  %indvars.iv253.i.us.us.i = phi i64 [ %indvars.iv.next254.i.us.us.i, %.loopexit157.i.loopexit.us.us.i ], [ %i.gd, %_ZN4ncnn3MatD2Ev.exit373.i.us.us.preheader.i ] ; 3 uses
  %.5186.i.us.us.i = phi ptr [ %i.ij, %.loopexit157.i.loopexit.us.us.i ], [ %.0334.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit373.i.us.us.preheader.i ]
  %i.gq = load ptr, ptr %9, align 8, !tbaa !18, !noalias !992
  %i.gr = mul i64 %i.gp, %i.ga
  %i.gs = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !992
  %i.gt = mul i64 %i.gr, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gt
  %i.gv = add nsw i64 %indvars.iv253.i.us.us.i, %i.ge
  %.idx285.i.us.us.i = shl nsw i64 %i.gv, 4
  %i.gw = getelementptr inbounds i8, ptr %i.gu, i64 %.idx285.i.us.us.i
  br label %.lr.ph178.i.us.us.i

.lr.ph178.i.us.us.i:                              ; preds = %.lr.ph178.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit373.i.us.us.i
  %.6177.i.us.us.i = phi ptr [ %i.ij, %.lr.ph178.i.us.us.i ], [ %.5186.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit373.i.us.us.i ] ; 9 uses
  %.0348176.i.us.us.i = phi ptr [ %i.il, %.lr.ph178.i.us.us.i ], [ %i.gw, %_ZN4ncnn3MatD2Ev.exit373.i.us.us.i ] ; 9 uses
  %.0349175.i.us.us.i = phi i32 [ %i.im, %.lr.ph178.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit373.i.us.us.i ]
  %i.gx = load <4 x float>, ptr %.0348176.i.us.us.i, align 16, !tbaa !254 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.0348176.i.us.us.i, i64 16
  %i.gz = load <4 x float>, ptr %i.gy, align 16, !tbaa !254 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.0348176.i.us.us.i, i64 32
  %i.hb = load <4 x float>, ptr %i.ha, align 16, !tbaa !254 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.0348176.i.us.us.i, i64 48
  %i.hd = load <4 x float>, ptr %i.hc, align 16, !tbaa !254 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.0348176.i.us.us.i, i64 64
  %i.hf = load <4 x float>, ptr %i.he, align 16, !tbaa !254 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.0348176.i.us.us.i, i64 80
  %i.hh = load <4 x float>, ptr %i.hg, align 16, !tbaa !254 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0348176.i.us.us.i, i64 96
  %i.hj = load <4 x float>, ptr %i.hi, align 16, !tbaa !254 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.0348176.i.us.us.i, i64 112
  %i.hl = load <4 x float>, ptr %i.hk, align 16, !tbaa !254 ; 2 uses
  %i.hm = shufflevector <4 x float> %i.gx, <4 x float> %i.gz, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.hn = shufflevector <4 x float> %i.hb, <4 x float> %i.hd, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ho = shufflevector <4 x float> %i.gx, <4 x float> %i.gz, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.hp = shufflevector <4 x float> %i.hb, <4 x float> %i.hd, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.hq = shufflevector <4 x float> %i.hm, <4 x float> %i.hn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hr = shufflevector <4 x float> %i.hn, <4 x float> %i.hm, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.hs = shufflevector <4 x float> %i.ho, <4 x float> %i.hp, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ht = shufflevector <4 x float> %i.hp, <4 x float> %i.ho, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.hu = shufflevector <4 x float> %i.hf, <4 x float> %i.hh, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.hv = shufflevector <4 x float> %i.hj, <4 x float> %i.hl, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.hw = shufflevector <4 x float> %i.hf, <4 x float> %i.hh, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.hx = shufflevector <4 x float> %i.hj, <4 x float> %i.hl, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.hy = shufflevector <4 x float> %i.hu, <4 x float> %i.hv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hz = shufflevector <4 x float> %i.hv, <4 x float> %i.hu, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ia = shufflevector <4 x float> %i.hw, <4 x float> %i.hx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ib = shufflevector <4 x float> %i.hx, <4 x float> %i.hw, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.hq, ptr %.6177.i.us.us.i, align 16, !tbaa !254
  %i.ic = getelementptr inbounds nuw i8, ptr %.6177.i.us.us.i, i64 16
  store <4 x float> %i.hy, ptr %i.ic, align 16, !tbaa !254
  %i.id = getelementptr inbounds nuw i8, ptr %.6177.i.us.us.i, i64 32
  store <4 x float> %i.hr, ptr %i.id, align 16, !tbaa !254
  %i.ie = getelementptr inbounds nuw i8, ptr %.6177.i.us.us.i, i64 48
  store <4 x float> %i.hz, ptr %i.ie, align 16, !tbaa !254
  %i.if = getelementptr inbounds nuw i8, ptr %.6177.i.us.us.i, i64 64
  store <4 x float> %i.hs, ptr %i.if, align 16, !tbaa !254
  %i.ig = getelementptr inbounds nuw i8, ptr %.6177.i.us.us.i, i64 80
  store <4 x float> %i.ia, ptr %i.ig, align 16, !tbaa !254
  %i.ih = getelementptr inbounds nuw i8, ptr %.6177.i.us.us.i, i64 96
  store <4 x float> %i.ht, ptr %i.ih, align 16, !tbaa !254
  %i.ii = getelementptr inbounds nuw i8, ptr %.6177.i.us.us.i, i64 112
  store <4 x float> %i.ib, ptr %i.ii, align 16, !tbaa !254
  %i.ij = getelementptr inbounds nuw i8, ptr %.6177.i.us.us.i, i64 128 ; 3 uses
  %i.ik = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx356.i.us.us.i = shl i64 %i.ik, 4
  %i.il = getelementptr inbounds nuw i8, ptr %.0348176.i.us.us.i, i64 %.idx356.i.us.us.i
  %i.im = add nuw nsw i32 %.0349175.i.us.us.i, 1  ; 2 uses
  %exitcond251.not.i.us.us.i = icmp eq i32 %i.im, %i.gb
  br i1 %exitcond251.not.i.us.us.i, label %.loopexit157.i.loopexit.us.us.i, label %.lr.ph178.i.us.us.i, !llvm.loop !995

.loopexit157.i.loopexit.us.us.i:                  ; preds = %.lr.ph178.i.us.us.i
  %indvars.iv.next254.i.us.us.i = add nuw nsw i64 %indvars.iv253.i.us.us.i, 8 ; 2 uses
  %i.in = icmp slt i64 %indvars.iv253.i.us.us.i, %invariant.op.i.i
  br i1 %i.in, label %_ZN4ncnn3MatD2Ev.exit373.i.us.us.i, label %.preheader156.loopexit.i.i, !llvm.loop !996

.lr.ph187.i.split.us34.i:                         ; preds = %.lr.ph187.i.i
  %i.io = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.io, label %_ZN4ncnn3MatD2Ev.exit372.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit372.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit372.i.us.preheader.i:        ; preds = %.lr.ph187.i.split.us34.i
  %smax.i = call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.gd)
  %reass.sub = sub nsw i64 %smax.i, %i.gd
  %i.ip = add nsw i64 %reass.sub, 7
  %i.iq = and i64 %i.ip, -8
  %i.ir = add nuw nsw i64 %i.gd, 8
  %i.is = add i64 %i.ir, %i.iq
  br label %.preheader156.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit372.i.us.us.preheader.i:     ; preds = %.lr.ph187.i.split.us34.i
  %.pre75.i.a = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !997
  %i.it = add nsw i32 %.sroa.speculated, -1
  %xtraiter170 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.iu = icmp ult i32 %i.it, 3
  %unroll_iter175 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod171.not = icmp eq i32 %xtraiter170, 0
  %lcmp.mod174 = icmp ne i32 %xtraiter170, 0
  br label %_ZN4ncnn3MatD2Ev.exit372.i.us.us.i

_ZN4ncnn3MatD2Ev.exit372.i.us.us.i:               ; preds = %.loopexit157.i.loopexit4.us.us.i, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.preheader.i
  %i.iv = phi i64 [ %.lcssa156, %.loopexit157.i.loopexit4.us.us.i ], [ %.pre75.i.a, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.preheader.i ]
  %indvars.iv253.i.us35.us.i = phi i64 [ %indvars.iv.next254.i.us39.us.i, %.loopexit157.i.loopexit4.us.us.i ], [ %i.gd, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.preheader.i ] ; 3 uses
  %.5186.i.us36.us.i = phi ptr [ %.lcssa157, %.loopexit157.i.loopexit4.us.us.i ], [ %.0334.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.preheader.i ] ; 2 uses
  %i.iw = load ptr, ptr %9, align 8, !tbaa !18, !noalias !997
  %i.ix = mul i64 %i.iv, %i.gc
  %i.iy = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !997
  %i.iz = mul i64 %i.ix, %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.iz
  %i.jb = getelementptr [4 x i8], ptr %i.ja, i64 %indvars.iv253.i.us35.us.i
  %i.jc = getelementptr [4 x i8], ptr %i.jb, i64 %i.ge ; 2 uses
  br i1 %i.iu, label %.lr.ph183.i.us.us.i.epil.preheader, label %.lr.ph183.i.us.us.i

.lr.ph183.i.us.us.i:                              ; preds = %_ZN4ncnn3MatD2Ev.exit372.i.us.us.i, %.lr.ph183.i.us.us.i
  %.8182.i.us.us.i = phi ptr [ %i.kc, %.lr.ph183.i.us.us.i ], [ %.5186.i.us36.us.i, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.i ] ; 9 uses
  %.0350181.i.us.us.i = phi ptr [ %i.ke, %.lr.ph183.i.us.us.i ], [ %i.jc, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.i ] ; 3 uses
  %niter176 = phi i32 [ %niter176.next.3, %.lr.ph183.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.i ]
  %i.jd = load <4 x float>, ptr %.0350181.i.us.us.i, align 1, !tbaa !254
  %i.je = getelementptr inbounds nuw i8, ptr %.0350181.i.us.us.i, i64 16
  %i.jf = load <4 x float>, ptr %i.je, align 1, !tbaa !254
  store <4 x float> %i.jd, ptr %.8182.i.us.us.i, align 1, !tbaa !254
  %i.jg = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i, i64 16
  store <4 x float> %i.jf, ptr %i.jg, align 1, !tbaa !254
  %i.jh = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i, i64 32
  %i.ji = load i64, ptr %i.p, align 8, !tbaa !20
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.0350181.i.us.us.i, i64 %i.ji ; 3 uses
  %i.jk = load <4 x float>, ptr %i.jj, align 1, !tbaa !254
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jm = load <4 x float>, ptr %i.jl, align 1, !tbaa !254
  store <4 x float> %i.jk, ptr %i.jh, align 1, !tbaa !254
  %i.jn = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i, i64 48
  store <4 x float> %i.jm, ptr %i.jn, align 1, !tbaa !254
  %i.jo = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i, i64 64
  %i.jp = load i64, ptr %i.p, align 8, !tbaa !20
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.jp ; 3 uses
  %i.jr = load <4 x float>, ptr %i.jq, align 1, !tbaa !254
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.jt = load <4 x float>, ptr %i.js, align 1, !tbaa !254
  store <4 x float> %i.jr, ptr %i.jo, align 1, !tbaa !254
  %i.ju = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i, i64 80
  store <4 x float> %i.jt, ptr %i.ju, align 1, !tbaa !254
  %i.jv = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i, i64 96
  %i.jw = load i64, ptr %i.p, align 8, !tbaa !20
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.jw ; 3 uses
  %i.jy = load <4 x float>, ptr %i.jx, align 1, !tbaa !254
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.ka = load <4 x float>, ptr %i.jz, align 1, !tbaa !254
  store <4 x float> %i.jy, ptr %i.jv, align 1, !tbaa !254
  %i.kb = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i, i64 112
  store <4 x float> %i.ka, ptr %i.kb, align 1, !tbaa !254
end_hunk_0
begin_hunk_1_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.nk = fcmp fast olt <4 x float> %i.nh, %i.nj
  %i.nl = select <4 x i1> %i.nk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.nm = fsub fast <4 x float> %i.nj, %i.nl      ; 2 uses
  %i.nn = fmul fast <4 x float> %i.nm, splat (float f0x3F317218)
  %i.no = fsub fast <4 x float> %i.nf, %i.nn      ; 8 uses
  %i.np = fmul fast <4 x float> %i.no, %i.no
  %i.nq = fmul fast <4 x float> %i.no, splat (float f0x39506967)
  %i.nr = fadd fast <4 x float> %i.nq, splat (float f0x3AB743CE)
  %i.ns = fmul fast <4 x float> %i.nr, %i.no
  %i.nt = fadd fast <4 x float> %i.ns, splat (float f0x3C088908)
  %i.nu = fmul fast <4 x float> %i.nt, %i.no
  %i.nv = fadd fast <4 x float> %i.nu, splat (float f0x3D2AA9C1)
  %i.nw = fmul fast <4 x float> %i.nv, %i.no
  %i.nx = fadd fast <4 x float> %i.nw, splat (float f0x3E2AAAAA)
  %i.ny = fmul fast <4 x float> %i.nx, %i.no
  %i.nz = fadd fast <4 x float> %i.ny, splat (float 5.000000e-01)
  %i.oa = fmul fast <4 x float> %i.np, %i.nz
  %i.ob = fadd fast <4 x float> %i.no, %i.oa
  %i.oc = fadd fast <4 x float> %i.ob, splat (float 1.000000e+00)
  %i.od = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nm)
  %i.oe = shl <4 x i32> %i.od, splat (i32 23)
  %i.of = add <4 x i32> %i.oe, splat (i32 1065353216)
  %i.og = bitcast <4 x i32> %i.of to <4 x float>
  %i.oh = fmul fast <4 x float> %i.oc, %i.og
  %i.oi = fadd fast <4 x float> %i.oh, splat (float 1.000000e+00) ; 2 uses
  %i.oj = fcmp fast ole <4 x float> %i.oi, zeroinitializer
  %i.ok = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.oi, <4 x float> splat (float f0x00800000))
  %i.ol = bitcast <4 x float> %i.ok to <4 x i32>  ; 2 uses
  %i.om = lshr <4 x i32> %i.ol, splat (i32 23)
  %i.on = and <4 x i32> %i.ol, splat (i32 -2139095041)
  %i.oo = or disjoint <4 x i32> %i.on, splat (i32 1056964608)
  %i.op = bitcast <4 x i32> %i.oo to <4 x float>  ; 3 uses
  %i.oq = add nsw <4 x i32> %i.om, splat (i32 -127)
  %i.or = sitofp fast <4 x i32> %i.oq to <4 x float> ; 2 uses
  %i.os = fadd fast <4 x float> %i.or, splat (float 1.000000e+00)
  %i.ot = fcmp fast olt <4 x float> %i.op, splat (float f0x3F3504F3) ; 2 uses
  %i.ou = select <4 x i1> %i.ot, <4 x float> %i.op, <4 x float> zeroinitializer
  %i.ov = fadd fast <4 x float> %i.op, splat (float -1.000000e+00)
  %i.ow = select fast <4 x i1> %i.ot, <4 x float> %i.or, <4 x float> %i.os
  %i.ox = fadd fast <4 x float> %i.ov, %i.ou      ; 12 uses
  %i.oy = fmul fast <4 x float> %i.ox, %i.ox      ; 2 uses
  %i.oz = fmul fast <4 x float> %i.ox, splat (float f0x3D9021BB)
  %i.pa = fadd fast <4 x float> %i.oz, splat (float f0xBDEBD1B8)
  %i.pb = fmul fast <4 x float> %i.pa, %i.ox
  %i.pc = fadd fast <4 x float> %i.pb, splat (float f0x3DEF251A)
  %i.pd = fmul fast <4 x float> %i.pc, %i.ox
  %i.pe = fadd fast <4 x float> %i.pd, splat (float f0xBDFE5D4F)
  %i.pf = fmul fast <4 x float> %i.pe, %i.ox
  %i.pg = fadd fast <4 x float> %i.pf, splat (float f0x3E11E9BF)
  %i.ph = fmul fast <4 x float> %i.pg, %i.ox
  %i.pi = fadd fast <4 x float> %i.ph, splat (float f0xBE2AAE50)
  %i.pj = fmul fast <4 x float> %i.pi, %i.ox
  %i.pk = fadd fast <4 x float> %i.pj, splat (float f0x3E4CCEAC)
  %i.pl = fmul fast <4 x float> %i.pk, %i.ox
  %i.pm = fadd fast <4 x float> %i.pl, splat (float f0xBE7FFFFC)
  %i.pn = fmul fast <4 x float> %i.pm, %i.ox
  %i.po = fadd fast <4 x float> %i.pn, splat (float f0x3EAAAAAA)
  %i.pp = fmul fast <4 x float> %i.oy, %i.ox
  %i.pq = fmul fast <4 x float> %i.pp, %i.po
  %.neg433 = fmul fast <4 x float> %i.oy, splat (float -5.000000e-01)
  %reass.mul = fmul fast <4 x float> %i.ow, splat (float f0x3F317218)
  %i.pr = fadd fast <4 x float> %i.ox, %.neg433
  %i.ps = fadd fast <4 x float> %i.pq, %i.pr
  %i.pt = fadd fast <4 x float> %i.ps, %reass.mul
  %.neg = fmul fast <4 x float> %i.pt, splat (float -2.000000e+00)
  %i.pu = select fast <4 x i1> %i.oj, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.pv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.pu, <4 x float> splat (float f0x42B0C0A5))
  %i.pw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.pv, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.px = fmul fast <4 x float> %i.pw, splat (float f0x3FB8AA3B)
  %i.py = fadd fast <4 x float> %i.px, splat (float 5.000000e-01) ; 2 uses
  %i.pz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.py)
  %i.qa = sitofp fast <4 x i32> %i.pz to <4 x float> ; 2 uses
  %i.qb = fcmp fast olt <4 x float> %i.py, %i.qa
  %i.qc = select <4 x i1> %i.qb, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.qd = fsub fast <4 x float> %i.qa, %i.qc      ; 2 uses
  %i.qe = fmul fast <4 x float> %i.qd, splat (float f0x3F317218)
  %i.qf = fsub fast <4 x float> %i.pw, %i.qe      ; 8 uses
  %i.qg = fmul fast <4 x float> %i.qf, %i.qf
  %i.qh = fmul fast <4 x float> %i.qf, splat (float f0x39506967)
  %i.qi = fadd fast <4 x float> %i.qh, splat (float f0x3AB743CE)
  %i.qj = fmul fast <4 x float> %i.qi, %i.qf
  %i.qk = fadd fast <4 x float> %i.qj, splat (float f0x3C088908)
  %i.ql = fmul fast <4 x float> %i.qk, %i.qf
  %i.qm = fadd fast <4 x float> %i.ql, splat (float f0x3D2AA9C1)
  %i.qn = fmul fast <4 x float> %i.qm, %i.qf
  %i.qo = fadd fast <4 x float> %i.qn, splat (float f0x3E2AAAAA)
  %i.qp = fmul fast <4 x float> %i.qo, %i.qf
  %i.qq = fadd fast <4 x float> %i.qp, splat (float 5.000000e-01)
  %i.qr = fmul fast <4 x float> %i.qg, %i.qq
  %i.qs = fadd fast <4 x float> %i.qf, %i.qr
  %i.qt = fadd fast <4 x float> %i.qs, splat (float 1.000000e+00)
  %i.qu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qd)
  %i.qv = shl <4 x i32> %i.qu, splat (i32 23)
  %i.qw = add <4 x i32> %i.qv, splat (i32 1065353216)
  %i.qx = bitcast <4 x i32> %i.qw to <4 x float>
  %i.qy = fmul fast <4 x float> %i.qt, %i.qx
  %i.qz = fadd fast <4 x float> %i.qy, splat (float 1.000000e+00)
  %i.ra = fdiv fast <4 x float> splat (float 2.000000e+00), %i.qz
  %i.rb = fadd fast <4 x float> %i.ra, splat (float -1.000000e+00)
  %i.rc = fmul fast <4 x float> %i.rb, %i.lc
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.k:                                             ; preds = %._crit_edge508
  %i.rd = load ptr, ptr %14, align 8, !tbaa !18   ; 2 uses
  %i.re = load float, ptr %i.rd, align 4, !tbaa !39
  %i.rf = insertelement <4 x float> poison, float %i.re, i64 0
  %i.rg = shufflevector <4 x float> %i.rf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rd, i64 4
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !39
  %i.rj = insertelement <4 x float> poison, float %i.ri, i64 0
  %i.rk = shufflevector <4 x float> %i.rj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rl = fmul fast <4 x float> %i.rg, %i.lc
  %i.rm = fadd fast <4 x float> %i.rl, %i.rk
  %i.rn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rm, <4 x float> zeroinitializer)
  %i.ro = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.rn, <4 x float> splat (float 1.000000e+00))
  %i.rp = fmul fast <4 x float> %i.ro, %i.lc
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.k, %.noexc179, %.noexc178, %bb.j, %.noexc177, %bb.i, %._crit_edge508
  %.0.i = phi nsz <4 x float> [ %i.rp, %bb.k ], [ %i.le, %bb.i ], [ %i.lm, %.noexc177 ], [ %i.lw, %bb.j ], [ %i.nd, %.noexc178 ], [ %i.rc, %.noexc179 ], [ %i.lc, %._crit_edge508 ] ; 2 uses
  switch i32 %i.af, label %bb.m [
    i32 4, label %.thread
    i32 1, label %bb.l
  ]

.thread:                                          ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.rq = bitcast <4 x float> %.0.i to <8 x i16>
  %i.rr = shufflevector <8 x i16> %i.rq, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.rs = bitcast <8 x i16> %i.rr to <4 x float>
  %i.rt = shufflevector <4 x float> %i.rs, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ru = bitcast <4 x float> %i.rt to <2 x i64>
  %i.rv = extractelement <2 x i64> %i.ru, i64 0
  store i64 %i.rv, ptr %.1518, align 1, !tbaa !254
  %i.rw = getelementptr inbounds nuw i8, ptr %.1518, i64 8
  br label %bb.m

bb.l:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.rx = bitcast <4 x float> %.0.i to <8 x i16>  ; 4 uses
  %i.ry = extractelement <8 x i16> %i.rx, i64 1
  store i16 %i.ry, ptr %.1518, align 2, !tbaa !394
  %i.rz = extractelement <8 x i16> %i.rx, i64 3
  %i.sa = load i64, ptr %15, align 8, !tbaa !233  ; 3 uses
  %i.sb = getelementptr inbounds nuw [2 x i8], ptr %.1518, i64 %i.sa
  store i16 %i.rz, ptr %i.sb, align 2, !tbaa !394
  %i.sc = extractelement <8 x i16> %i.rx, i64 5
  %.idx = shl i64 %i.sa, 2
  %i.sd = getelementptr inbounds nuw i8, ptr %.1518, i64 %.idx
  store i16 %i.sc, ptr %i.sd, align 2, !tbaa !394
  %i.se = extractelement <8 x i16> %i.rx, i64 7
  %.idx138 = mul i64 %i.sa, 6
  %i.sf = getelementptr inbounds nuw i8, ptr %.1518, i64 %.idx138
  store i16 %i.se, ptr %i.sf, align 2, !tbaa !394
  %i.sg = getelementptr inbounds nuw i8, ptr %.1518, i64 2
  br label %bb.m

bb.m:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.thread, %bb.l
  %.3 = phi ptr [ %i.sg, %bb.l ], [ %.1518, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.rw, %.thread ] ; 2 uses
  %i.sh = add nuw nsw i32 %.0127517, 1            ; 2 uses
  %exitcond576.not = icmp eq i32 %i.sh, %i.ae
  br i1 %exitcond576.not, label %._crit_edge, label %bb.c, !llvm.loop !1985

._crit_edge526:                                   ; preds = %._crit_edge523.split, %_ZN4ncnn3MatD2Ev.exit150.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge526, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tanh.v2f32(<2 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.log.v8f32(<8 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.tanh.v8f32(<8 x float>) #22

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nofree nounwind }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { cold nounwind }
attributes #30 = { noreturn }
attributes #31 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !14, i64 8}
!12 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !14, i64 8, !15, i64 16, !6, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !15, i64 64}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!17 = !{!12, !16, i64 32}
!18 = !{!12, !13, i64 0}
!19 = distinct !{null}
!20 = !{!12, !15, i64 64}
!21 = !{!22, !6, i64 344}
!22 = !{!"_ZTSN4ncnn11ConvolutionE", !23, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !37, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !12, i64 272, !6, i64 344, !12, i64 352, !12, i64 424, !12, i64 496, !12, i64 568, !12, i64 640}
!23 = !{!"_ZTSN4ncnn5LayerE", !24, i64 8, !24, i64 9, !24, i64 10, !24, i64 11, !24, i64 12, !24, i64 13, !24, i64 14, !24, i64 15, !24, i64 16, !24, i64 17, !24, i64 18, !24, i64 19, !24, i64 20, !24, i64 21, !24, i64 22, !24, i64 23, !24, i64 24, !24, i64 25, !24, i64 26, !24, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !25, i64 48, !25, i64 80, !28, i64 112, !28, i64 136, !32, i64 160, !32, i64 184}
!24 = !{!"bool", !7, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !15, i64 8, !7, i64 16}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !27, i64 0}
!27 = !{!"p1 omnipotent char", !13, i64 0}
!28 = !{!"_ZTSSt6vectorIiSaIiEE", !29, i64 0}
!29 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!32 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !33, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !34, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!36 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!37 = !{!"float", !7, i64 0}
!38 = !{!22, !6, i64 268}
!39 = !{!37, !37, i64 0}
!40 = distinct !{null}
!41 = !{!42, !43, i64 712}
!42 = !{!"_ZTSN4ncnn15Convolution_x86E", !22, i64 0, !43, i64 712, !6, i64 720, !12, i64 728, !12, i64 800, !12, i64 872, !12, i64 944, !12, i64 1016, !43, i64 1088, !12, i64 1096}
!43 = !{!"p1 _ZTSN4ncnn5LayerE", !13, i64 0}
!44 = !{!45, !6, i64 4}
!45 = !{!"_ZTSN4ncnn6OptionE", !24, i64 0, !24, i64 1, !24, i64 2, !24, i64 3, !6, i64 4, !16, i64 8, !16, i64 16, !6, i64 24, !24, i64 28, !24, i64 29, !24, i64 30, !24, i64 31, !24, i64 32, !24, i64 33, !24, i64 34, !24, i64 35, !24, i64 36, !24, i64 37, !24, i64 38, !24, i64 39, !6, i64 40, !24, i64 44, !24, i64 45, !24, i64 46, !24, i64 47, !7, i64 48, !24, i64 49, !24, i64 50, !24, i64 51, !24, i64 52, !24, i64 53, !24, i64 54, !24, i64 55, !24, i64 56, !24, i64 57, !24, i64 58, !24, i64 59, !24, i64 60, !24, i64 61, !24, i64 62, !24, i64 63}
!46 = !{!42, !6, i64 720}
!47 = !{!45, !24, i64 30}
!48 = !{i8 0, i8 2}
!49 = !{}
!50 = !{!22, !15, i64 368}
!51 = !{!45, !24, i64 32}
!52 = !{!22, !6, i64 212}
!53 = !{!22, !6, i64 216}
!54 = !{!22, !6, i64 260}
!55 = !{!22, !6, i64 208}
!56 = !{!45, !24, i64 39}
!57 = !{!22, !6, i64 220}
!58 = !{!22, !6, i64 224}
!59 = !{!22, !6, i64 228}
!60 = !{!22, !6, i64 232}
!61 = !{!42, !43, i64 1088}
!62 = !{!22, !6, i64 256}
!63 = distinct !{null}
!64 = !{!13, !13, i64 0}
!65 = !{!12, !15, i64 16}
!66 = !{!12, !6, i64 24}
!67 = !{!6, !6, i64 0}
!68 = !{!12, !6, i64 56}
!69 = !{!45, !24, i64 0}
!70 = !{!45, !24, i64 55}
!71 = !{!45, !24, i64 56}
!72 = !{!45, !24, i64 57}
!73 = !{!45, !24, i64 28}
!74 = !{!36, !36, i64 0}
!75 = !{!12, !6, i64 44}
!76 = !{!12, !6, i64 48}
!77 = !{!22, !6, i64 236}
!78 = !{!22, !6, i64 240}
!79 = !{!22, !6, i64 244}
!80 = !{!22, !6, i64 248}
!81 = !{!45, !24, i64 29}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.mustprogress"}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = distinct !{!86, !83}
!87 = distinct !{!87, !83}
!88 = distinct !{!88, !83}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!91 = distinct !{!91, !"_ZN4ncnn3Mat7channelEi"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!94 = distinct !{!94, !"_ZN4ncnn3Mat7channelEi"}
!95 = distinct !{!95, !83}
!96 = distinct !{!96, !83}
!97 = !{!98}
!98 = distinct !{!98, !99}
!99 = distinct !{!99, !"LVerDomain"}
!100 = !{!101}
!101 = distinct !{!101, !99}
!102 = !{!103}
!103 = distinct !{!103, !99}
!104 = !{!105}
!105 = distinct !{!105, !99}
!106 = !{!107}
!107 = distinct !{!107, !99}
!108 = !{!109}
!109 = distinct !{!109, !99}
!110 = !{!111}
!111 = distinct !{!111, !99}
end_hunk_1
