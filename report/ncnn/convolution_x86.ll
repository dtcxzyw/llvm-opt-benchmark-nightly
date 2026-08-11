inline.NumInlined: 399
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 220
begin_hunk_0_@_ZN4ncnnL41conv3x3s1_winograd63_transform_input_tileERKNS_3MatERS0_iiiii.omp_outlined:bb.a
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
  %i.agn = fmul fast <4 x float> %i.afz, splat (float -1.250000e+00) ; 2 uses
  %i.ago = fadd fast <4 x float> %i.agn, %i.agm
  %i.agp = fadd fast <4 x float> %i.ago, %i.agd   ; 2 uses
  %i.agq = fmul fast <4 x float> %i.aft, splat (float 5.000000e-01)
  %i.agr = fmul fast <4 x float> %i.afx, splat (float -2.500000e+00) ; 2 uses
  %i.ags = fadd fast <4 x float> %i.agr, %i.agq
  %i.agt = fmul fast <4 x float> %i.agb, splat (float 2.000000e+00)
  %i.agu = fadd fast <4 x float> %i.ags, %i.agt   ; 2 uses
  %i.agv = fadd fast <4 x float> %i.agn, %i.afv
  %i.agw = fmul fast <4 x float> %i.agv, splat (float 4.000000e+00)
  %i.agx = fadd fast <4 x float> %i.agw, %i.agd   ; 2 uses
  %i.agy = fmul fast <4 x float> %i.aft, splat (float 2.000000e+00)
  %i.agz = fadd fast <4 x float> %i.agr, %i.agy
  %i.aha = fmul fast <4 x float> %i.agb, splat (float 5.000000e-01)
  %i.ahb = fadd fast <4 x float> %i.agz, %i.aha   ; 2 uses
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
  %.087 = phi i32 [ %i.k, %_ZN4ncnn3MatD2Ev.exit36.lr.ph ], [ %i.ul, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.s = sdiv i32 %.087, %i.r                     ; 2 uses
  %i.t = srem i32 %.087, %i.r                     ; 2 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.v = mul nsw i32 %i.u, %i.s                   ; 14 uses
  %i.w = load i32, ptr %5, align 4, !tbaa !67     ; 2 uses
  %i.x = mul i32 %i.w, %i.t                       ; 18 uses
  %i.y = load i32, ptr %6, align 4, !tbaa !67
  %i.z = sub nsw i32 %i.y, %i.v
  %.sroa.speculated64 = call i32 @llvm.smin.i32(i32 %i.u, i32 %i.z) ; 21 uses
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
  %16 = sdiv i32 %.sroa.speculated, 4
  %i.bf = sext i32 %i.x to i64
  %i.bg = sext i32 %i.v to i64                    ; 2 uses
  %i.bh = zext nneg i32 %.sroa.speculated64 to i64 ; 5 uses
  switch i32 %i.bb, label %.loopexit160.i.preheader.i [
    i32 4, label %.lr.ph172.i.split.us.i
    i32 1, label %.lr.ph172.i.split.us18.i
  ]

.loopexit160.i.preheader.i:                       ; preds = %.lr.ph172.i.i
  %i.bi = call i64 @llvm.usub.sat.i64(i64 %i.bh, i64 23)
  %i.bj = icmp samesign ugt i32 %.sroa.speculated64, 23
  %umin71.i = zext i1 %i.bj to i64                ; 2 uses
  %i.bk = sub nsw i64 %i.bi, %umin71.i
  %i.bl = udiv i64 %i.bk, 12
  %i.bm = add nuw nsw i64 %i.bl, %umin71.i
  %i.bn = mul i64 %i.bm, 12
  %i.bo = add i64 %i.bn, 12
  br label %.preheader159.loopexit.i.i

.lr.ph172.i.split.us.i:                           ; preds = %.lr.ph172.i.i
  %i.bp = icmp sgt i32 %.sroa.speculated, 3
  br i1 %i.bp, label %_ZN4ncnn3MatD2Ev.exit375.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit375.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit375.i.us.preheader.i:        ; preds = %.lr.ph172.i.split.us.i
  %i.bq = call i64 @llvm.usub.sat.i64(i64 %i.bh, i64 23)
  %i.br = icmp samesign ugt i32 %.sroa.speculated64, 23
  %umin69.i = zext i1 %i.br to i64                ; 2 uses
  %i.bs = sub nsw i64 %i.bq, %umin69.i
  %i.bt = udiv i64 %i.bs, 12
  %i.bu = add nuw nsw i64 %i.bt, %umin69.i
  %i.bv = mul i64 %i.bu, 12
  %i.bw = add i64 %i.bv, 12
  br label %.preheader159.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit375.i.us.us.preheader.i:     ; preds = %.lr.ph172.i.split.us.i
  %.pre74.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !983
  br label %_ZN4ncnn3MatD2Ev.exit375.i.us.us.i

_ZN4ncnn3MatD2Ev.exit375.i.us.us.i:               ; preds = %.loopexit160.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit375.i.us.us.preheader.i
  %i.bx = phi i64 [ %i.em, %.loopexit160.i.loopexit.us.us.i ], [ %.pre74.i, %_ZN4ncnn3MatD2Ev.exit375.i.us.us.preheader.i ]
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.loopexit160.i.loopexit.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit375.i.us.us.preheader.i ] ; 3 uses
  %.0334171.i.us.us.i = phi ptr [ %i.el, %.loopexit160.i.loopexit.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit375.i.us.us.preheader.i ]
  %i.by = load ptr, ptr %9, align 8, !tbaa !18, !noalias !983
  %i.bz = mul i64 %i.bx, %i.be
  %i.ca = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !983
  %i.cb = mul i64 %i.bz, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cb
  %i.cd = add nsw i64 %indvars.iv.i.us.us.i, %i.bg
  %.idx.i.us.us.i = shl nsw i64 %i.cd, 4
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 %.idx.i.us.us.i
  br label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %.lr.ph.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit375.i.us.us.i
  %.1164.i.us.us.i = phi ptr [ %i.el, %.lr.ph.i.us.us.i ], [ %.0334171.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit375.i.us.us.i ] ; 13 uses
  %.0340163.i.us.us.i = phi ptr [ %i.en, %.lr.ph.i.us.us.i ], [ %i.ce, %_ZN4ncnn3MatD2Ev.exit375.i.us.us.i ] ; 13 uses
  %.0341162.i.us.us.i = phi i32 [ %i.eo, %.lr.ph.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit375.i.us.us.i ]
  %i.cf = load <4 x float>, ptr %.0340163.i.us.us.i, align 16, !tbaa !254 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 16
  %i.ch = load <4 x float>, ptr %i.cg, align 16, !tbaa !254 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 32
  %i.cj = load <4 x float>, ptr %i.ci, align 16, !tbaa !254 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 48
  %i.cl = load <4 x float>, ptr %i.ck, align 16, !tbaa !254 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 64
  %i.cn = load <4 x float>, ptr %i.cm, align 16, !tbaa !254 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 80
  %i.cp = load <4 x float>, ptr %i.co, align 16, !tbaa !254 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 96
  %i.cr = load <4 x float>, ptr %i.cq, align 16, !tbaa !254 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 112
  %i.ct = load <4 x float>, ptr %i.cs, align 16, !tbaa !254 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 128
  %i.cv = load <4 x float>, ptr %i.cu, align 16, !tbaa !254 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 144
  %i.cx = load <4 x float>, ptr %i.cw, align 16, !tbaa !254 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 160
  %i.cz = load <4 x float>, ptr %i.cy, align 16, !tbaa !254 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 176
  %i.db = load <4 x float>, ptr %i.da, align 16, !tbaa !254 ; 2 uses
  %i.dc = shufflevector <4 x float> %i.cf, <4 x float> %i.ch, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dd = shufflevector <4 x float> %i.cj, <4 x float> %i.cl, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.de = shufflevector <4 x float> %i.cf, <4 x float> %i.ch, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.df = shufflevector <4 x float> %i.cj, <4 x float> %i.cl, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dg = shufflevector <4 x float> %i.dc, <4 x float> %i.dd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dh = shufflevector <4 x float> %i.dd, <4 x float> %i.dc, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.di = shufflevector <4 x float> %i.de, <4 x float> %i.df, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dj = shufflevector <4 x float> %i.df, <4 x float> %i.de, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.dk = shufflevector <4 x float> %i.cn, <4 x float> %i.cp, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dl = shufflevector <4 x float> %i.cr, <4 x float> %i.ct, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dm = shufflevector <4 x float> %i.cn, <4 x float> %i.cp, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dn = shufflevector <4 x float> %i.cr, <4 x float> %i.ct, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.do = shufflevector <4 x float> %i.dk, <4 x float> %i.dl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dp = shufflevector <4 x float> %i.dl, <4 x float> %i.dk, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.dq = shufflevector <4 x float> %i.dm, <4 x float> %i.dn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dr = shufflevector <4 x float> %i.dn, <4 x float> %i.dm, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ds = shufflevector <4 x float> %i.cv, <4 x float> %i.cx, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dt = shufflevector <4 x float> %i.cz, <4 x float> %i.db, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.du = shufflevector <4 x float> %i.cv, <4 x float> %i.cx, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dv = shufflevector <4 x float> %i.cz, <4 x float> %i.db, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dw = shufflevector <4 x float> %i.ds, <4 x float> %i.dt, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dx = shufflevector <4 x float> %i.dt, <4 x float> %i.ds, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.dy = shufflevector <4 x float> %i.du, <4 x float> %i.dv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dz = shufflevector <4 x float> %i.dv, <4 x float> %i.du, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.dg, ptr %.1164.i.us.us.i, align 16, !tbaa !254
  %i.ea = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 16
  store <4 x float> %i.do, ptr %i.ea, align 16, !tbaa !254
  %i.eb = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 32
  store <4 x float> %i.dw, ptr %i.eb, align 16, !tbaa !254
  %i.ec = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 48
  store <4 x float> %i.dh, ptr %i.ec, align 16, !tbaa !254
  %i.ed = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 64
  store <4 x float> %i.dp, ptr %i.ed, align 16, !tbaa !254
  %i.ee = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 80
  store <4 x float> %i.dx, ptr %i.ee, align 16, !tbaa !254
  %i.ef = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 96
  store <4 x float> %i.di, ptr %i.ef, align 16, !tbaa !254
  %i.eg = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 112
  store <4 x float> %i.dq, ptr %i.eg, align 16, !tbaa !254
  %i.eh = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 128
  store <4 x float> %i.dy, ptr %i.eh, align 16, !tbaa !254
  %i.ei = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 144
  store <4 x float> %i.dj, ptr %i.ei, align 16, !tbaa !254
  %i.ej = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 160
  store <4 x float> %i.dr, ptr %i.ej, align 16, !tbaa !254
  %i.ek = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 176
  store <4 x float> %i.dz, ptr %i.ek, align 16, !tbaa !254
  %i.el = getelementptr inbounds nuw i8, ptr %.1164.i.us.us.i, i64 192 ; 3 uses
  %i.em = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx357.i.us.us.i = shl i64 %i.em, 4
  %i.en = getelementptr inbounds nuw i8, ptr %.0340163.i.us.us.i, i64 %.idx357.i.us.us.i
  %i.eo = add nuw nsw i32 %.0341162.i.us.us.i, 1  ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i32 %i.eo, %16
  br i1 %exitcond.not.i.us.us.i, label %.loopexit160.i.loopexit.us.us.i, label %.lr.ph.i.us.us.i, !llvm.loop !986

.loopexit160.i.loopexit.us.us.i:                  ; preds = %.lr.ph.i.us.us.i
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 12 ; 2 uses
  %i.ep = add nuw nsw i64 %indvars.iv.i.us.us.i, 23
  %i.eq = icmp samesign ult i64 %i.ep, %i.bh
  br i1 %i.eq, label %_ZN4ncnn3MatD2Ev.exit375.i.us.us.i, label %.preheader159.loopexit.i.i, !llvm.loop !987

.lr.ph172.i.split.us18.i:                         ; preds = %.lr.ph172.i.i
  %i.er = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.er, label %_ZN4ncnn3MatD2Ev.exit374.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit374.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit374.i.us.preheader.i:        ; preds = %.lr.ph172.i.split.us18.i
  %i.es = call i64 @llvm.usub.sat.i64(i64 %i.bh, i64 23)
  %i.et = icmp samesign ugt i32 %.sroa.speculated64, 23
  %umin.i = zext i1 %i.et to i64                  ; 2 uses
  %i.eu = sub nsw i64 %i.es, %umin.i
  %i.ev = udiv i64 %i.eu, 12
  %i.ew = add nuw nsw i64 %i.ev, %umin.i
  %i.ex = mul i64 %i.ew, 12
  %i.ey = add i64 %i.ex, 12
  br label %.preheader159.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit374.i.us.us.preheader.i:     ; preds = %.lr.ph172.i.split.us18.i
  %.pre.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !988
  %xtraiter = and i32 %.sroa.speculated, 1
  %i.ez = icmp eq i32 %.sroa.speculated, 1
  %unroll_iter = and i32 %.sroa.speculated, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod169 = trunc i32 %.sroa.speculated to i1
  br label %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i

_ZN4ncnn3MatD2Ev.exit374.i.us.us.i:               ; preds = %.loopexit160.i.loopexit5.us.us.i, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.preheader.i
  %i.fa = phi i64 [ %.lcssa, %.loopexit160.i.loopexit5.us.us.i ], [ %.pre.i, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.preheader.i ]
  %indvars.iv.i.us19.us.i = phi i64 [ %indvars.iv.next.i.us23.us.i, %.loopexit160.i.loopexit5.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.preheader.i ] ; 3 uses
  %.0334171.i.us20.us.i = phi ptr [ %.lcssa153, %.loopexit160.i.loopexit5.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.preheader.i ] ; 2 uses
  %i.fb = load ptr, ptr %9, align 8, !tbaa !18, !noalias !988
  %i.fc = mul i64 %i.fa, %i.bf
  %i.fd = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !988
  %i.fe = mul i64 %i.fc, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fe
  %i.fg = getelementptr [4 x i8], ptr %i.ff, i64 %indvars.iv.i.us19.us.i
  %i.fh = getelementptr [4 x i8], ptr %i.fg, i64 %i.bg ; 2 uses
  br i1 %i.ez, label %.lr.ph168.i.us.us.i.epil.preheader, label %.lr.ph168.i.us.us.i

.lr.ph168.i.us.us.i:                              ; preds = %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i, %.lr.ph168.i.us.us.i
  %.3167.i.us.us.i = phi ptr [ %i.fz, %.lr.ph168.i.us.us.i ], [ %.0334171.i.us20.us.i, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i ] ; 7 uses
  %.0346166.i.us.us.i = phi ptr [ %i.gb, %.lr.ph168.i.us.us.i ], [ %i.fh, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i ] ; 4 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph168.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i ]
  %i.fi = load <4 x float>, ptr %.0346166.i.us.us.i, align 1, !tbaa !254
  %i.fj = getelementptr inbounds nuw i8, ptr %.0346166.i.us.us.i, i64 16
  %i.fk = load <4 x float>, ptr %i.fj, align 1, !tbaa !254
  %i.fl = getelementptr inbounds nuw i8, ptr %.0346166.i.us.us.i, i64 32
  %i.fm = load <4 x float>, ptr %i.fl, align 1, !tbaa !254
  store <4 x float> %i.fi, ptr %.3167.i.us.us.i, align 1, !tbaa !254
  %i.fn = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i, i64 16
  store <4 x float> %i.fk, ptr %i.fn, align 1, !tbaa !254
  %i.fo = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i, i64 32
  store <4 x float> %i.fm, ptr %i.fo, align 1, !tbaa !254
  %i.fp = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i, i64 48
  %i.fq = load i64, ptr %i.p, align 8, !tbaa !20
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.0346166.i.us.us.i, i64 %i.fq ; 4 uses
  %i.fs = load <4 x float>, ptr %i.fr, align 1, !tbaa !254
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.fu = load <4 x float>, ptr %i.ft, align 1, !tbaa !254
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.fw = load <4 x float>, ptr %i.fv, align 1, !tbaa !254
  store <4 x float> %i.fs, ptr %i.fp, align 1, !tbaa !254
  %i.fx = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i, i64 64
  store <4 x float> %i.fu, ptr %i.fx, align 1, !tbaa !254
  %i.fy = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i, i64 80
  store <4 x float> %i.fw, ptr %i.fy, align 1, !tbaa !254
  %i.fz = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i, i64 96 ; 3 uses
  %i.ga = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.ga ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit160.i.loopexit5.us.us.i.unr-lcssa, label %.lr.ph168.i.us.us.i, !llvm.loop !991

.loopexit160.i.loopexit5.us.us.i.unr-lcssa:       ; preds = %.lr.ph168.i.us.us.i
  br i1 %lcmp.mod.not, label %.loopexit160.i.loopexit5.us.us.i, label %.lr.ph168.i.us.us.i.epil.preheader

.lr.ph168.i.us.us.i.epil.preheader:               ; preds = %.loopexit160.i.loopexit5.us.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i
  %.3167.i.us.us.i.epil.init = phi ptr [ %.0334171.i.us20.us.i, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i ], [ %i.fz, %.loopexit160.i.loopexit5.us.us.i.unr-lcssa ] ; 4 uses
  %.0346166.i.us.us.i.epil.init = phi ptr [ %i.fh, %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i ], [ %i.gb, %.loopexit160.i.loopexit5.us.us.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod169)
  %i.gc = load <4 x float>, ptr %.0346166.i.us.us.i.epil.init, align 1, !tbaa !254
  %i.gd = getelementptr inbounds nuw i8, ptr %.0346166.i.us.us.i.epil.init, i64 16
  %i.ge = load <4 x float>, ptr %i.gd, align 1, !tbaa !254
  %i.gf = getelementptr inbounds nuw i8, ptr %.0346166.i.us.us.i.epil.init, i64 32
  %i.gg = load <4 x float>, ptr %i.gf, align 1, !tbaa !254
  store <4 x float> %i.gc, ptr %.3167.i.us.us.i.epil.init, align 1, !tbaa !254
  %i.gh = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i.epil.init, i64 16
  store <4 x float> %i.ge, ptr %i.gh, align 1, !tbaa !254
  %i.gi = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i.epil.init, i64 32
  store <4 x float> %i.gg, ptr %i.gi, align 1, !tbaa !254
  %i.gj = getelementptr inbounds nuw i8, ptr %.3167.i.us.us.i.epil.init, i64 48
  %i.gk = load i64, ptr %i.p, align 8, !tbaa !20
  br label %.loopexit160.i.loopexit5.us.us.i

.loopexit160.i.loopexit5.us.us.i:                 ; preds = %.loopexit160.i.loopexit5.us.us.i.unr-lcssa, %.lr.ph168.i.us.us.i.epil.preheader
  %.lcssa153 = phi ptr [ %i.fz, %.loopexit160.i.loopexit5.us.us.i.unr-lcssa ], [ %i.gj, %.lr.ph168.i.us.us.i.epil.preheader ] ; 2 uses
  %.lcssa = phi i64 [ %i.ga, %.loopexit160.i.loopexit5.us.us.i.unr-lcssa ], [ %i.gk, %.lr.ph168.i.us.us.i.epil.preheader ]
  %indvars.iv.next.i.us23.us.i = add nuw nsw i64 %indvars.iv.i.us19.us.i, 12 ; 2 uses
  %i.gl = add nuw nsw i64 %indvars.iv.i.us19.us.i, 23
  %i.gm = icmp samesign ult i64 %i.gl, %i.bh
  br i1 %i.gm, label %_ZN4ncnn3MatD2Ev.exit374.i.us.us.i, label %.preheader159.loopexit.i.i, !llvm.loop !987

.preheader159.loopexit.i.i:                       ; preds = %.loopexit160.i.loopexit5.us.us.i, %.loopexit160.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit374.i.us.preheader.i, %_ZN4ncnn3MatD2Ev.exit375.i.us.preheader.i, %.loopexit160.i.preheader.i
  %.us-phi.i = phi ptr [ %i.ao, %_ZN4ncnn3MatD2Ev.exit374.i.us.preheader.i ], [ %i.ao, %.loopexit160.i.preheader.i ], [ %i.el, %.loopexit160.i.loopexit.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit375.i.us.preheader.i ], [ %.lcssa153, %.loopexit160.i.loopexit5.us.us.i ]
  %.us-phi17.i = phi i64 [ %i.ey, %_ZN4ncnn3MatD2Ev.exit374.i.us.preheader.i ], [ %i.bo, %.loopexit160.i.preheader.i ], [ %indvars.iv.next.i.us.us.i, %.loopexit160.i.loopexit.us.us.i ], [ %i.bw, %_ZN4ncnn3MatD2Ev.exit375.i.us.preheader.i ], [ %indvars.iv.next.i.us23.us.i, %.loopexit160.i.loopexit5.us.us.i ]
  %i.gn = trunc nuw nsw i64 %.us-phi17.i to i32
  br label %.preheader159.i.i

.preheader159.i.i:                                ; preds = %.preheader159.loopexit.i.i, %bb.c
  %.0335.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %i.gn, %.preheader159.loopexit.i.i ] ; 3 uses
  %.0334.lcssa.i.i = phi ptr [ %i.ao, %bb.c ], [ %.us-phi.i, %.preheader159.loopexit.i.i ] ; 6 uses
  %i.go = add nuw nsw i32 %.0335.lcssa.i.i, 7
  %i.gp = icmp slt i32 %i.go, %.sroa.speculated64
  br i1 %i.gp, label %.lr.ph187.i.i, label %.preheader156.i.i

.lr.ph187.i.i:                                    ; preds = %.preheader159.i.i
  %i.gq = sdiv i32 %i.x, 4
  %i.gr = sext i32 %i.gq to i64
  %17 = sdiv i32 %.sroa.speculated, 4
  %i.gs = sext i32 %i.x to i64
  %i.gt = zext i32 %.0335.lcssa.i.i to i64        ; 11 uses
  %i.gu = sext i32 %i.v to i64                    ; 2 uses
  %i.gv = sext i32 %.sroa.speculated64 to i64
  %invariant.op.i.i = add nsw i64 %i.gv, -15      ; 5 uses
  switch i32 %i.bb, label %.loopexit157.i.preheader.i [
    i32 4, label %.lr.ph187.i.split.us.i
    i32 1, label %.lr.ph187.i.split.us34.i
  ]

.loopexit157.i.preheader.i:                       ; preds = %.lr.ph187.i.i
  %smax73.i = call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.gt)
  %reass.sub89 = sub nsw i64 %smax73.i, %i.gt
  %i.gw = add nsw i64 %reass.sub89, 7
  %i.gx = and i64 %i.gw, -8
  %i.gy = add nuw nsw i64 %i.gt, 8
  %i.gz = add i64 %i.gy, %i.gx
  br label %.preheader156.loopexit.i.i

.lr.ph187.i.split.us.i:                           ; preds = %.lr.ph187.i.i
  %i.ha = icmp sgt i32 %.sroa.speculated, 3
  br i1 %i.ha, label %_ZN4ncnn3MatD2Ev.exit373.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit373.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit373.i.us.preheader.i:        ; preds = %.lr.ph187.i.split.us.i
  %smax72.i = call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.gt)
  %reass.sub88 = sub nsw i64 %smax72.i, %i.gt
  %i.hb = add nsw i64 %reass.sub88, 7
  %i.hc = and i64 %i.hb, -8
  %i.hd = add nuw nsw i64 %i.gt, 8
  %i.he = add i64 %i.hd, %i.hc
  br label %.preheader156.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit373.i.us.us.preheader.i:     ; preds = %.lr.ph187.i.split.us.i
  %.pre76.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !992
  br label %_ZN4ncnn3MatD2Ev.exit373.i.us.us.i

_ZN4ncnn3MatD2Ev.exit373.i.us.us.i:               ; preds = %.loopexit157.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit373.i.us.us.preheader.i
  %i.hf = phi i64 [ %i.ja, %.loopexit157.i.loopexit.us.us.i ], [ %.pre76.i, %_ZN4ncnn3MatD2Ev.exit373.i.us.us.preheader.i ]
  %indvars.iv253.i.us.us.i = phi i64 [ %indvars.iv.next254.i.us.us.i, %.loopexit157.i.loopexit.us.us.i ], [ %i.gt, %_ZN4ncnn3MatD2Ev.exit373.i.us.us.preheader.i ] ; 3 uses
  %.5186.i.us.us.i = phi ptr [ %i.iz, %.loopexit157.i.loopexit.us.us.i ], [ %.0334.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit373.i.us.us.preheader.i ]
  %i.hg = load ptr, ptr %9, align 8, !tbaa !18, !noalias !992
  %i.hh = mul i64 %i.hf, %i.gr
  %i.hi = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !992
  %i.hj = mul i64 %i.hh, %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hj
  %i.hl = add nsw i64 %indvars.iv253.i.us.us.i, %i.gu
  %.idx285.i.us.us.i = shl nsw i64 %i.hl, 4
  %i.hm = getelementptr inbounds i8, ptr %i.hk, i64 %.idx285.i.us.us.i
  br label %.lr.ph178.i.us.us.i

.lr.ph178.i.us.us.i:                              ; preds = %.lr.ph178.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit373.i.us.us.i
  %.6177.i.us.us.i = phi ptr [ %i.iz, %.lr.ph178.i.us.us.i ], [ %.5186.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit373.i.us.us.i ] ; 9 uses
  %.0348176.i.us.us.i = phi ptr [ %i.jb, %.lr.ph178.i.us.us.i ], [ %i.hm, %_ZN4ncnn3MatD2Ev.exit373.i.us.us.i ] ; 9 uses
  %.0349175.i.us.us.i = phi i32 [ %i.jc, %.lr.ph178.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit373.i.us.us.i ]
  %i.hn = load <4 x float>, ptr %.0348176.i.us.us.i, align 16, !tbaa !254 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.0348176.i.us.us.i, i64 16
  %i.hp = load <4 x float>, ptr %i.ho, align 16, !tbaa !254 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.0348176.i.us.us.i, i64 32
  %i.hr = load <4 x float>, ptr %i.hq, align 16, !tbaa !254 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.0348176.i.us.us.i, i64 48
  %i.ht = load <4 x float>, ptr %i.hs, align 16, !tbaa !254 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.0348176.i.us.us.i, i64 64
  %i.hv = load <4 x float>, ptr %i.hu, align 16, !tbaa !254 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.0348176.i.us.us.i, i64 80
  %i.hx = load <4 x float>, ptr %i.hw, align 16, !tbaa !254 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.0348176.i.us.us.i, i64 96
  %i.hz = load <4 x float>, ptr %i.hy, align 16, !tbaa !254 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.0348176.i.us.us.i, i64 112
  %i.ib = load <4 x float>, ptr %i.ia, align 16, !tbaa !254 ; 2 uses
  %i.ic = shufflevector <4 x float> %i.hn, <4 x float> %i.hp, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.id = shufflevector <4 x float> %i.hr, <4 x float> %i.ht, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ie = shufflevector <4 x float> %i.hn, <4 x float> %i.hp, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.if = shufflevector <4 x float> %i.hr, <4 x float> %i.ht, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ig = shufflevector <4 x float> %i.ic, <4 x float> %i.id, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ih = shufflevector <4 x float> %i.id, <4 x float> %i.ic, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ii = shufflevector <4 x float> %i.ie, <4 x float> %i.if, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ij = shufflevector <4 x float> %i.if, <4 x float> %i.ie, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ik = shufflevector <4 x float> %i.hv, <4 x float> %i.hx, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.il = shufflevector <4 x float> %i.hz, <4 x float> %i.ib, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.im = shufflevector <4 x float> %i.hv, <4 x float> %i.hx, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.in = shufflevector <4 x float> %i.hz, <4 x float> %i.ib, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.io = shufflevector <4 x float> %i.ik, <4 x float> %i.il, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ip = shufflevector <4 x float> %i.il, <4 x float> %i.ik, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.iq = shufflevector <4 x float> %i.im, <4 x float> %i.in, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ir = shufflevector <4 x float> %i.in, <4 x float> %i.im, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.ig, ptr %.6177.i.us.us.i, align 16, !tbaa !254
  %i.is = getelementptr inbounds nuw i8, ptr %.6177.i.us.us.i, i64 16
  store <4 x float> %i.io, ptr %i.is, align 16, !tbaa !254
  %i.it = getelementptr inbounds nuw i8, ptr %.6177.i.us.us.i, i64 32
  store <4 x float> %i.ih, ptr %i.it, align 16, !tbaa !254
  %i.iu = getelementptr inbounds nuw i8, ptr %.6177.i.us.us.i, i64 48
  store <4 x float> %i.ip, ptr %i.iu, align 16, !tbaa !254
  %i.iv = getelementptr inbounds nuw i8, ptr %.6177.i.us.us.i, i64 64
  store <4 x float> %i.ii, ptr %i.iv, align 16, !tbaa !254
  %i.iw = getelementptr inbounds nuw i8, ptr %.6177.i.us.us.i, i64 80
  store <4 x float> %i.iq, ptr %i.iw, align 16, !tbaa !254
  %i.ix = getelementptr inbounds nuw i8, ptr %.6177.i.us.us.i, i64 96
  store <4 x float> %i.ij, ptr %i.ix, align 16, !tbaa !254
  %i.iy = getelementptr inbounds nuw i8, ptr %.6177.i.us.us.i, i64 112
  store <4 x float> %i.ir, ptr %i.iy, align 16, !tbaa !254
  %i.iz = getelementptr inbounds nuw i8, ptr %.6177.i.us.us.i, i64 128 ; 3 uses
  %i.ja = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx356.i.us.us.i = shl i64 %i.ja, 4
  %i.jb = getelementptr inbounds nuw i8, ptr %.0348176.i.us.us.i, i64 %.idx356.i.us.us.i
  %i.jc = add nuw nsw i32 %.0349175.i.us.us.i, 1  ; 2 uses
  %exitcond251.not.i.us.us.i = icmp eq i32 %i.jc, %17
  br i1 %exitcond251.not.i.us.us.i, label %.loopexit157.i.loopexit.us.us.i, label %.lr.ph178.i.us.us.i, !llvm.loop !995

.loopexit157.i.loopexit.us.us.i:                  ; preds = %.lr.ph178.i.us.us.i
  %indvars.iv.next254.i.us.us.i = add nuw nsw i64 %indvars.iv253.i.us.us.i, 8 ; 2 uses
  %i.jd = icmp slt i64 %indvars.iv253.i.us.us.i, %invariant.op.i.i
  br i1 %i.jd, label %_ZN4ncnn3MatD2Ev.exit373.i.us.us.i, label %.preheader156.loopexit.i.i, !llvm.loop !996

.lr.ph187.i.split.us34.i:                         ; preds = %.lr.ph187.i.i
  %i.je = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.je, label %_ZN4ncnn3MatD2Ev.exit372.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit372.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit372.i.us.preheader.i:        ; preds = %.lr.ph187.i.split.us34.i
  %smax.i = call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.gt)
  %reass.sub = sub nsw i64 %smax.i, %i.gt
  %i.jf = add nsw i64 %reass.sub, 7
  %i.jg = and i64 %i.jf, -8
  %i.jh = add nuw nsw i64 %i.gt, 8
  %i.ji = add i64 %i.jh, %i.jg
  br label %.preheader156.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit372.i.us.us.preheader.i:     ; preds = %.lr.ph187.i.split.us34.i
  %.pre75.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !997
  %i.jj = add nsw i32 %.sroa.speculated, -1
  %xtraiter170 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.jk = icmp ult i32 %i.jj, 3
  %unroll_iter175 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod171.not = icmp eq i32 %xtraiter170, 0
  %lcmp.mod174 = icmp ne i32 %xtraiter170, 0
  br label %_ZN4ncnn3MatD2Ev.exit372.i.us.us.i

_ZN4ncnn3MatD2Ev.exit372.i.us.us.i:               ; preds = %.loopexit157.i.loopexit4.us.us.i, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.preheader.i
  %i.jl = phi i64 [ %.lcssa156, %.loopexit157.i.loopexit4.us.us.i ], [ %.pre75.i, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.preheader.i ]
  %indvars.iv253.i.us35.us.i = phi i64 [ %indvars.iv.next254.i.us39.us.i, %.loopexit157.i.loopexit4.us.us.i ], [ %i.gt, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.preheader.i ] ; 3 uses
  %.5186.i.us36.us.i = phi ptr [ %.lcssa157, %.loopexit157.i.loopexit4.us.us.i ], [ %.0334.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.preheader.i ] ; 2 uses
  %i.jm = load ptr, ptr %9, align 8, !tbaa !18, !noalias !997
  %i.jn = mul i64 %i.jl, %i.gs
  %i.jo = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !997
  %i.jp = mul i64 %i.jn, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jp
  %i.jr = getelementptr [4 x i8], ptr %i.jq, i64 %indvars.iv253.i.us35.us.i
  %i.js = getelementptr [4 x i8], ptr %i.jr, i64 %i.gu ; 2 uses
  br i1 %i.jk, label %.lr.ph183.i.us.us.i.epil.preheader, label %.lr.ph183.i.us.us.i

.lr.ph183.i.us.us.i:                              ; preds = %_ZN4ncnn3MatD2Ev.exit372.i.us.us.i, %.lr.ph183.i.us.us.i
  %.8182.i.us.us.i = phi ptr [ %i.ks, %.lr.ph183.i.us.us.i ], [ %.5186.i.us36.us.i, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.i ] ; 9 uses
  %.0350181.i.us.us.i = phi ptr [ %i.ku, %.lr.ph183.i.us.us.i ], [ %i.js, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.i ] ; 3 uses
  %niter176 = phi i32 [ %niter176.next.3, %.lr.ph183.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.i ]
  %i.jt = load <4 x float>, ptr %.0350181.i.us.us.i, align 1, !tbaa !254
  %i.ju = getelementptr inbounds nuw i8, ptr %.0350181.i.us.us.i, i64 16
  %i.jv = load <4 x float>, ptr %i.ju, align 1, !tbaa !254
  store <4 x float> %i.jt, ptr %.8182.i.us.us.i, align 1, !tbaa !254
  %i.jw = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i, i64 16
  store <4 x float> %i.jv, ptr %i.jw, align 1, !tbaa !254
  %i.jx = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i, i64 32
  %i.jy = load i64, ptr %i.p, align 8, !tbaa !20
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.0350181.i.us.us.i, i64 %i.jy ; 3 uses
  %i.ka = load <4 x float>, ptr %i.jz, align 1, !tbaa !254
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kc = load <4 x float>, ptr %i.kb, align 1, !tbaa !254
  store <4 x float> %i.ka, ptr %i.jx, align 1, !tbaa !254
  %i.kd = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i, i64 48
  store <4 x float> %i.kc, ptr %i.kd, align 1, !tbaa !254
  %i.ke = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i, i64 64
  %i.kf = load i64, ptr %i.p, align 8, !tbaa !20
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.kf ; 3 uses
  %i.kh = load <4 x float>, ptr %i.kg, align 1, !tbaa !254
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.kj = load <4 x float>, ptr %i.ki, align 1, !tbaa !254
  store <4 x float> %i.kh, ptr %i.ke, align 1, !tbaa !254
  %i.kk = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i, i64 80
  store <4 x float> %i.kj, ptr %i.kk, align 1, !tbaa !254
  %i.kl = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i, i64 96
  %i.km = load i64, ptr %i.p, align 8, !tbaa !20
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %i.km ; 3 uses
  %i.ko = load <4 x float>, ptr %i.kn, align 1, !tbaa !254
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kq = load <4 x float>, ptr %i.kp, align 1, !tbaa !254
  store <4 x float> %i.ko, ptr %i.kl, align 1, !tbaa !254
  %i.kr = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i, i64 112
  store <4 x float> %i.kq, ptr %i.kr, align 1, !tbaa !254
  %i.ks = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i, i64 128 ; 3 uses
  %i.kt = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %i.kt ; 2 uses
  %niter176.next.3 = add i32 %niter176, 4         ; 2 uses
  %niter176.ncmp.3 = icmp eq i32 %niter176.next.3, %unroll_iter175
  br i1 %niter176.ncmp.3, label %.loopexit157.i.loopexit4.us.us.i.unr-lcssa, label %.lr.ph183.i.us.us.i, !llvm.loop !1000

.loopexit157.i.loopexit4.us.us.i.unr-lcssa:       ; preds = %.lr.ph183.i.us.us.i
  br i1 %lcmp.mod171.not, label %.loopexit157.i.loopexit4.us.us.i, label %.lr.ph183.i.us.us.i.epil.preheader

.lr.ph183.i.us.us.i.epil.preheader:               ; preds = %.loopexit157.i.loopexit4.us.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.i
  %.8182.i.us.us.i.epil.init = phi ptr [ %.5186.i.us36.us.i, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.i ], [ %i.ks, %.loopexit157.i.loopexit4.us.us.i.unr-lcssa ]
  %.0350181.i.us.us.i.epil.init = phi ptr [ %i.js, %_ZN4ncnn3MatD2Ev.exit372.i.us.us.i ], [ %i.ku, %.loopexit157.i.loopexit4.us.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod174)
  br label %.lr.ph183.i.us.us.i.epil

.lr.ph183.i.us.us.i.epil:                         ; preds = %.lr.ph183.i.us.us.i.epil, %.lr.ph183.i.us.us.i.epil.preheader
  %.8182.i.us.us.i.epil = phi ptr [ %i.kz, %.lr.ph183.i.us.us.i.epil ], [ %.8182.i.us.us.i.epil.init, %.lr.ph183.i.us.us.i.epil.preheader ] ; 3 uses
  %.0350181.i.us.us.i.epil = phi ptr [ %i.lb, %.lr.ph183.i.us.us.i.epil ], [ %.0350181.i.us.us.i.epil.init, %.lr.ph183.i.us.us.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph183.i.us.us.i.epil ], [ 0, %.lr.ph183.i.us.us.i.epil.preheader ]
  %i.kv = load <4 x float>, ptr %.0350181.i.us.us.i.epil, align 1, !tbaa !254
  %i.kw = getelementptr inbounds nuw i8, ptr %.0350181.i.us.us.i.epil, i64 16
  %i.kx = load <4 x float>, ptr %i.kw, align 1, !tbaa !254
  store <4 x float> %i.kv, ptr %.8182.i.us.us.i.epil, align 1, !tbaa !254
  %i.ky = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i.epil, i64 16
  store <4 x float> %i.kx, ptr %i.ky, align 1, !tbaa !254
  %i.kz = getelementptr inbounds nuw i8, ptr %.8182.i.us.us.i.epil, i64 32 ; 2 uses
  %i.la = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.0350181.i.us.us.i.epil, i64 %i.la
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter170
  br i1 %epil.iter.cmp.not, label %.loopexit157.i.loopexit4.us.us.i, label %.lr.ph183.i.us.us.i.epil, !llvm.loop !1001

.loopexit157.i.loopexit4.us.us.i:                 ; preds = %.lr.ph183.i.us.us.i.epil, %.loopexit157.i.loopexit4.us.us.i.unr-lcssa
  %.lcssa157 = phi ptr [ %i.ks, %.loopexit157.i.loopexit4.us.us.i.unr-lcssa ], [ %i.kz, %.lr.ph183.i.us.us.i.epil ] ; 2 uses
  %.lcssa156 = phi i64 [ %i.kt, %.loopexit157.i.loopexit4.us.us.i.unr-lcssa ], [ %i.la, %.lr.ph183.i.us.us.i.epil ]
  %indvars.iv.next254.i.us39.us.i = add nuw nsw i64 %indvars.iv253.i.us35.us.i, 8 ; 2 uses
  %i.lc = icmp slt i64 %indvars.iv253.i.us35.us.i, %invariant.op.i.i
  br i1 %i.lc, label %_ZN4ncnn3MatD2Ev.exit372.i.us.us.i, label %.preheader156.loopexit.i.i, !llvm.loop !996

.preheader156.loopexit.i.i:                       ; preds = %.loopexit157.i.loopexit4.us.us.i, %.loopexit157.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit372.i.us.preheader.i, %_ZN4ncnn3MatD2Ev.exit373.i.us.preheader.i, %.loopexit157.i.preheader.i
  %.us-phi32.i = phi ptr [ %.0334.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit372.i.us.preheader.i ], [ %.0334.lcssa.i.i, %.loopexit157.i.preheader.i ], [ %i.iz, %.loopexit157.i.loopexit.us.us.i ], [ %.0334.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit373.i.us.preheader.i ], [ %.lcssa157, %.loopexit157.i.loopexit4.us.us.i ]
  %.us-phi33.i = phi i64 [ %i.ji, %_ZN4ncnn3MatD2Ev.exit372.i.us.preheader.i ], [ %i.gz, %.loopexit157.i.preheader.i ], [ %indvars.iv.next254.i.us.us.i, %.loopexit157.i.loopexit.us.us.i ], [ %i.he, %_ZN4ncnn3MatD2Ev.exit373.i.us.preheader.i ], [ %indvars.iv.next254.i.us39.us.i, %.loopexit157.i.loopexit4.us.us.i ]
  %i.ld = trunc nsw i64 %.us-phi33.i to i32
  br label %.preheader156.i.i

.preheader156.i.i:                                ; preds = %.preheader156.loopexit.i.i, %.preheader159.i.i
  %.1336.lcssa.i.i = phi i32 [ %.0335.lcssa.i.i, %.preheader159.i.i ], [ %i.ld, %.preheader156.loopexit.i.i ] ; 3 uses
  %.5.lcssa.i.i = phi ptr [ %.0334.lcssa.i.i, %.preheader159.i.i ], [ %.us-phi32.i, %.preheader156.loopexit.i.i ] ; 2 uses
  %i.le = or disjoint i32 %.1336.lcssa.i.i, 3
  %i.lf = icmp slt i32 %i.le, %.sroa.speculated64
  br i1 %i.lf, label %.lr.ph202.i.i, label %.preheader153.i.i

.lr.ph202.i.i:                                    ; preds = %.preheader156.i.i
  %i.lg = sdiv i32 %i.x, 4
  %i.lh = sext i32 %i.lg to i64
  %18 = sdiv i32 %.sroa.speculated, 4
  %i.li = icmp sgt i32 %.sroa.speculated, 3
  %i.lj = sext i32 %i.x to i64
  %i.lk = icmp sgt i32 %.sroa.speculated, 0
  %i.ll = sext i32 %.1336.lcssa.i.i to i64
  %i.lm = sext i32 %.sroa.speculated64 to i64
  %i.ln = sext i32 %i.v to i64                    ; 2 uses
  %invariant.op309.i.i = add nsw i64 %i.lm, -3
  %i.lo = add i32 %.sroa.speculated, -1
  %xtraiter177 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.lp = icmp ult i32 %i.lo, 3
  %unroll_iter182 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod179.not = icmp eq i32 %xtraiter177, 0
  %lcmp.mod181 = icmp ne i32 %xtraiter177, 0
  br label %bb.d

.preheader153.loopexit.i.i:                       ; preds = %.loopexit154.i.i
  %i.lq = trunc nsw i64 %indvars.iv.next259.i.i to i32
  br label %.preheader153.i.i

.preheader153.i.i:                                ; preds = %.preheader153.loopexit.i.i, %.preheader156.i.i
  %.2337.lcssa.i.i = phi i32 [ %.1336.lcssa.i.i, %.preheader156.i.i ], [ %i.lq, %.preheader153.loopexit.i.i ] ; 3 uses
  %.10.lcssa.i.i = phi ptr [ %.5.lcssa.i.i, %.preheader156.i.i ], [ %.14.i.i, %.preheader153.loopexit.i.i ] ; 2 uses
  %i.lr = or disjoint i32 %.2337.lcssa.i.i, 1
  %i.ls = icmp slt i32 %i.lr, %.sroa.speculated64
  br i1 %i.ls, label %.lr.ph217.i.i, label %.preheader.i.i

.lr.ph217.i.i:                                    ; preds = %.preheader153.i.i
  %i.lt = sdiv i32 %i.x, 4
  %i.lu = sext i32 %i.lt to i64
  %19 = sdiv i32 %.sroa.speculated, 4             ; 3 uses
  %i.lv = icmp sgt i32 %.sroa.speculated, 3
  %i.lw = sext i32 %i.x to i64
  %i.lx = icmp sgt i32 %.sroa.speculated, 0
  %i.ly = sext i32 %.2337.lcssa.i.i to i64
  %i.lz = sext i32 %.sroa.speculated64 to i64
  %i.ma = sext i32 %i.v to i64                    ; 2 uses
  %invariant.op310.i.i = add nsw i64 %i.lz, -1
  %i.mb = add i32 %.sroa.speculated, -1
  %xtraiter184 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.mc = icmp ult i32 %i.mb, 3
  %unroll_iter189 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod186.not = icmp eq i32 %xtraiter184, 0
  %lcmp.mod188 = icmp ne i32 %xtraiter184, 0
  %xtraiter191 = and i32 %19, 1
  %i.md = and i32 %.sroa.speculated, 2147483644
  %20 = icmp eq i32 %i.md, 4
  %unroll_iter196 = and i32 %19, 536870910
  %lcmp.mod193.not = icmp eq i32 %xtraiter191, 0
  %lcmp.mod195 = trunc i32 %19 to i1
  br label %bb.e

bb.d:                                             ; preds = %.loopexit154.i.i, %.lr.ph202.i.i
  %indvars.iv258.i.i = phi i64 [ %i.ll, %.lr.ph202.i.i ], [ %indvars.iv.next259.i.i, %.loopexit154.i.i ] ; 3 uses
  %.10201.i.i = phi ptr [ %.5.lcssa.i.i, %.lr.ph202.i.i ], [ %.14.i.i, %.loopexit154.i.i ] ; 6 uses
  switch i32 %i.bb, label %.loopexit154.i.i [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit371.i.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit370.i.i
  ]

_ZN4ncnn3MatD2Ev.exit371.i.i:                     ; preds = %bb.d
  br i1 %i.li, label %.lr.ph193.preheader.i.i, label %.loopexit154.i.i

.lr.ph193.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit371.i.i
  %i.me = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1002
  %i.mf = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1002
  %i.mg = mul i64 %i.mf, %i.lh
  %i.mh = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1002
  %i.mi = mul i64 %i.mg, %i.mh
  %i.mj = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.mi
  %i.mk = add nsw i64 %indvars.iv258.i.i, %i.ln
  %.idx286.i.i = shl nsw i64 %i.mk, 4
  %i.ml = getelementptr inbounds i8, ptr %i.mj, i64 %.idx286.i.i
  br label %.lr.ph193.i.i

.lr.ph193.i.i:                                    ; preds = %.lr.ph193.i.i, %.lr.ph193.preheader.i.i
  %.11192.i.i = phi ptr [ %i.ne, %.lr.ph193.i.i ], [ %.10201.i.i, %.lr.ph193.preheader.i.i ] ; 5 uses
  %.0352191.i.i = phi ptr [ %i.ng, %.lr.ph193.i.i ], [ %i.ml, %.lr.ph193.preheader.i.i ] ; 5 uses
  %.0353190.i.i = phi i32 [ %i.nh, %.lr.ph193.i.i ], [ 0, %.lr.ph193.preheader.i.i ]
  %i.mm = load <4 x float>, ptr %.0352191.i.i, align 16, !tbaa !254 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.0352191.i.i, i64 16
  %i.mo = load <4 x float>, ptr %i.mn, align 16, !tbaa !254 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.0352191.i.i, i64 32
  %i.mq = load <4 x float>, ptr %i.mp, align 16, !tbaa !254 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.0352191.i.i, i64 48
  %i.ms = load <4 x float>, ptr %i.mr, align 16, !tbaa !254 ; 2 uses
  %i.mt = shufflevector <4 x float> %i.mm, <4 x float> %i.mo, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.mu = shufflevector <4 x float> %i.mq, <4 x float> %i.ms, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.mv = shufflevector <4 x float> %i.mm, <4 x float> %i.mo, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.mw = shufflevector <4 x float> %i.mq, <4 x float> %i.ms, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.mx = shufflevector <4 x float> %i.mt, <4 x float> %i.mu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.my = shufflevector <4 x float> %i.mu, <4 x float> %i.mt, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.mz = shufflevector <4 x float> %i.mv, <4 x float> %i.mw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.na = shufflevector <4 x float> %i.mw, <4 x float> %i.mv, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.mx, ptr %.11192.i.i, align 16, !tbaa !254
  %i.nb = getelementptr inbounds nuw i8, ptr %.11192.i.i, i64 16
  store <4 x float> %i.my, ptr %i.nb, align 16, !tbaa !254
  %i.nc = getelementptr inbounds nuw i8, ptr %.11192.i.i, i64 32
  store <4 x float> %i.mz, ptr %i.nc, align 16, !tbaa !254
  %i.nd = getelementptr inbounds nuw i8, ptr %.11192.i.i, i64 48
  store <4 x float> %i.na, ptr %i.nd, align 16, !tbaa !254
  %i.ne = getelementptr inbounds nuw i8, ptr %.11192.i.i, i64 64 ; 2 uses
  %i.nf = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx355.i.i = shl i64 %i.nf, 4
  %i.ng = getelementptr inbounds nuw i8, ptr %.0352191.i.i, i64 %.idx355.i.i
  %i.nh = add nuw nsw i32 %.0353190.i.i, 1        ; 2 uses
  %exitcond256.not.i.i = icmp eq i32 %i.nh, %18
  br i1 %exitcond256.not.i.i, label %.loopexit154.i.i, label %.lr.ph193.i.i, !llvm.loop !1005

_ZN4ncnn3MatD2Ev.exit370.i.i:                     ; preds = %bb.d
  br i1 %i.lk, label %.lr.ph198.preheader.i.i, label %.loopexit154.i.i

.lr.ph198.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit370.i.i
  %i.ni = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1006
  %i.nj = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1006
  %i.nk = mul i64 %i.nj, %i.lj
  %i.nl = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1006
  %i.nm = mul i64 %i.nk, %i.nl
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.nm
  %i.no = getelementptr [4 x i8], ptr %i.nn, i64 %indvars.iv258.i.i
  %i.np = getelementptr [4 x i8], ptr %i.no, i64 %i.ln ; 2 uses
  br i1 %i.lp, label %.lr.ph198.i.i.epil.preheader, label %.lr.ph198.i.i

.lr.ph198.i.i:                                    ; preds = %.lr.ph198.preheader.i.i, %.lr.ph198.i.i
  %.13197.i.i = phi ptr [ %i.od, %.lr.ph198.i.i ], [ %.10201.i.i, %.lr.ph198.preheader.i.i ] ; 5 uses
  %.0345195.i.i = phi ptr [ %i.of, %.lr.ph198.i.i ], [ %i.np, %.lr.ph198.preheader.i.i ] ; 2 uses
  %niter183 = phi i32 [ %niter183.next.3, %.lr.ph198.i.i ], [ 0, %.lr.ph198.preheader.i.i ]
  %i.nq = load <4 x float>, ptr %.0345195.i.i, align 1, !tbaa !254
  store <4 x float> %i.nq, ptr %.13197.i.i, align 1, !tbaa !254
  %i.nr = getelementptr inbounds nuw i8, ptr %.13197.i.i, i64 16
  %i.ns = load i64, ptr %i.p, align 8, !tbaa !20
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %.0345195.i.i, i64 %i.ns ; 2 uses
  %i.nu = load <4 x float>, ptr %i.nt, align 1, !tbaa !254
  store <4 x float> %i.nu, ptr %i.nr, align 1, !tbaa !254
  %i.nv = getelementptr inbounds nuw i8, ptr %.13197.i.i, i64 32
  %i.nw = load i64, ptr %i.p, align 8, !tbaa !20
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %i.nw ; 2 uses
  %i.ny = load <4 x float>, ptr %i.nx, align 1, !tbaa !254
  store <4 x float> %i.ny, ptr %i.nv, align 1, !tbaa !254
  %i.nz = getelementptr inbounds nuw i8, ptr %.13197.i.i, i64 48
  %i.oa = load i64, ptr %i.p, align 8, !tbaa !20
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %i.oa ; 2 uses
  %i.oc = load <4 x float>, ptr %i.ob, align 1, !tbaa !254
  store <4 x float> %i.oc, ptr %i.nz, align 1, !tbaa !254
  %i.od = getelementptr inbounds nuw i8, ptr %.13197.i.i, i64 64 ; 3 uses
  %i.oe = load i64, ptr %i.p, align 8, !tbaa !20
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.oe ; 2 uses
  %niter183.next.3 = add i32 %niter183, 4         ; 2 uses
  %niter183.ncmp.3 = icmp eq i32 %niter183.next.3, %unroll_iter182
  br i1 %niter183.ncmp.3, label %.loopexit154.i.i.loopexit149.unr-lcssa, label %.lr.ph198.i.i, !llvm.loop !1009

.loopexit154.i.i.loopexit149.unr-lcssa:           ; preds = %.lr.ph198.i.i
  br i1 %lcmp.mod179.not, label %.loopexit154.i.i, label %.lr.ph198.i.i.epil.preheader

.lr.ph198.i.i.epil.preheader:                     ; preds = %.loopexit154.i.i.loopexit149.unr-lcssa, %.lr.ph198.preheader.i.i
  %.13197.i.i.epil.init = phi ptr [ %.10201.i.i, %.lr.ph198.preheader.i.i ], [ %i.od, %.loopexit154.i.i.loopexit149.unr-lcssa ]
  %.0345195.i.i.epil.init = phi ptr [ %i.np, %.lr.ph198.preheader.i.i ], [ %i.of, %.loopexit154.i.i.loopexit149.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod181)
  br label %.lr.ph198.i.i.epil

.lr.ph198.i.i.epil:                               ; preds = %.lr.ph198.i.i.epil, %.lr.ph198.i.i.epil.preheader
  %.13197.i.i.epil = phi ptr [ %i.oh, %.lr.ph198.i.i.epil ], [ %.13197.i.i.epil.init, %.lr.ph198.i.i.epil.preheader ] ; 2 uses
  %.0345195.i.i.epil = phi ptr [ %i.oj, %.lr.ph198.i.i.epil ], [ %.0345195.i.i.epil.init, %.lr.ph198.i.i.epil.preheader ] ; 2 uses
  %epil.iter178 = phi i32 [ %epil.iter178.next, %.lr.ph198.i.i.epil ], [ 0, %.lr.ph198.i.i.epil.preheader ]
  %i.og = load <4 x float>, ptr %.0345195.i.i.epil, align 1, !tbaa !254
  store <4 x float> %i.og, ptr %.13197.i.i.epil, align 1, !tbaa !254
  %i.oh = getelementptr inbounds nuw i8, ptr %.13197.i.i.epil, i64 16 ; 2 uses
  %i.oi = load i64, ptr %i.p, align 8, !tbaa !20
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %.0345195.i.i.epil, i64 %i.oi
  %epil.iter178.next = add i32 %epil.iter178, 1   ; 2 uses
  %epil.iter178.cmp.not = icmp eq i32 %epil.iter178.next, %xtraiter177
  br i1 %epil.iter178.cmp.not, label %.loopexit154.i.i, label %.lr.ph198.i.i.epil, !llvm.loop !1010

.loopexit154.i.i:                                 ; preds = %.loopexit154.i.i.loopexit149.unr-lcssa, %.lr.ph198.i.i.epil, %.lr.ph193.i.i, %_ZN4ncnn3MatD2Ev.exit370.i.i, %_ZN4ncnn3MatD2Ev.exit371.i.i, %bb.d
  %.14.i.i = phi ptr [ %.10201.i.i, %bb.d ], [ %.10201.i.i, %_ZN4ncnn3MatD2Ev.exit370.i.i ], [ %i.ne, %.lr.ph193.i.i ], [ %.10201.i.i, %_ZN4ncnn3MatD2Ev.exit371.i.i ], [ %i.od, %.loopexit154.i.i.loopexit149.unr-lcssa ], [ %i.oh, %.lr.ph198.i.i.epil ] ; 2 uses
  %indvars.iv.next259.i.i = add nuw nsw i64 %indvars.iv258.i.i, 4 ; 3 uses
  %i.ok = icmp slt i64 %indvars.iv.next259.i.i, %invariant.op309.i.i
  br i1 %i.ok, label %bb.d, label %.preheader153.loopexit.i.i, !llvm.loop !1011

.preheader.loopexit.i.i:                          ; preds = %.loopexit151.i.i
  %i.ol = trunc nsw i64 %indvars.iv.next264.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %.preheader153.i.i
  %.3338.lcssa.i.i = phi i32 [ %.2337.lcssa.i.i, %.preheader153.i.i ], [ %i.ol, %.preheader.loopexit.i.i ] ; 3 uses
  %.15.lcssa.i.i = phi ptr [ %.10.lcssa.i.i, %.preheader153.i.i ], [ %.19.i.i, %.preheader.loopexit.i.i ] ; 2 uses
  %i.om = icmp slt i32 %.3338.lcssa.i.i, %.sroa.speculated64
  br i1 %i.om, label %.lr.ph232.i.i, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph232.i.i:                                    ; preds = %.preheader.i.i
  %i.on = sdiv i32 %i.x, 4
  %i.oo = sext i32 %i.on to i64
  %21 = sdiv i32 %.sroa.speculated, 4             ; 3 uses
  %i.op = sext i32 %i.x to i64
  switch i32 %i.bb, label %_ZN4ncnn3MatD2Ev.exit [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit367.us.preheader.i.i
    i32 1, label %.lr.ph232.split.split.i.i
  ]

_ZN4ncnn3MatD2Ev.exit367.us.preheader.i.i:        ; preds = %.lr.ph232.i.i
  %i.oq = icmp sgt i32 %.sroa.speculated, 3
  %i.or = sext i32 %i.v to i64
  %wide.trip.count276.i.i = sext i32 %.sroa.speculated64 to i64
  br i1 %i.oq, label %_ZN4ncnn3MatD2Ev.exit367.us.i.preheader.i, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit367.us.i.preheader.i:        ; preds = %_ZN4ncnn3MatD2Ev.exit367.us.preheader.i.i
  %i.os = sext i32 %.3338.lcssa.i.i to i64
  %.pre77.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1012
  %i.ot = add nsw i32 %21, -1
  %xtraiter206 = and i32 %21, 3                   ; 3 uses
  %i.ou = icmp ult i32 %i.ot, 3
  %unroll_iter212 = and i32 %21, 536870908
  %lcmp.mod208.not = icmp eq i32 %xtraiter206, 0
  %lcmp.mod211 = icmp ne i32 %xtraiter206, 0
  br label %_ZN4ncnn3MatD2Ev.exit367.us.i.i

_ZN4ncnn3MatD2Ev.exit367.us.i.i:                  ; preds = %.loopexit150.us.i.loopexit.i, %_ZN4ncnn3MatD2Ev.exit367.us.i.preheader.i
  %i.ov = phi i64 [ %.lcssa165, %.loopexit150.us.i.loopexit.i ], [ %.pre77.i, %_ZN4ncnn3MatD2Ev.exit367.us.i.preheader.i ]
  %indvars.iv273.i.i = phi i64 [ %indvars.iv.next274.i.i, %.loopexit150.us.i.loopexit.i ], [ %i.os, %_ZN4ncnn3MatD2Ev.exit367.us.i.preheader.i ] ; 2 uses
  %.20231.us.i.i = phi ptr [ %.lcssa166, %.loopexit150.us.i.loopexit.i ], [ %.15.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit367.us.i.preheader.i ] ; 2 uses
  %i.ow = add nsw i64 %indvars.iv273.i.i, %i.or
  %i.ox = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1012
  %i.oy = mul i64 %i.ov, %i.oo
  %i.oz = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1012
  %i.pa = mul i64 %i.oy, %i.oz
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.pa
  %.idx288.i.i = shl nsw i64 %i.ow, 4
  %i.pc = getelementptr inbounds i8, ptr %i.pb, i64 %.idx288.i.i ; 2 uses
  br i1 %i.ou, label %.lr.ph223.us.i.i.epil.preheader, label %.lr.ph223.us.i.i

.lr.ph223.us.i.i:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit367.us.i.i, %.lr.ph223.us.i.i
  %.0331221.us.i.i = phi ptr [ %i.ps, %.lr.ph223.us.i.i ], [ %i.pc, %_ZN4ncnn3MatD2Ev.exit367.us.i.i ] ; 2 uses
  %.21220.us.i.i = phi ptr [ %i.pq, %.lr.ph223.us.i.i ], [ %.20231.us.i.i, %_ZN4ncnn3MatD2Ev.exit367.us.i.i ] ; 5 uses
  %niter213 = phi i32 [ %niter213.next.3, %.lr.ph223.us.i.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit367.us.i.i ]
  %i.pd = load <4 x float>, ptr %.0331221.us.i.i, align 16, !tbaa !254
  store <4 x float> %i.pd, ptr %.21220.us.i.i, align 16, !tbaa !254
  %i.pe = getelementptr inbounds nuw i8, ptr %.21220.us.i.i, i64 16
  %i.pf = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.us.i.i = shl i64 %i.pf, 4
  %i.pg = getelementptr inbounds nuw i8, ptr %.0331221.us.i.i, i64 %.idx.us.i.i ; 2 uses
  %i.ph = load <4 x float>, ptr %i.pg, align 16, !tbaa !254
  store <4 x float> %i.ph, ptr %i.pe, align 16, !tbaa !254
  %i.pi = getelementptr inbounds nuw i8, ptr %.21220.us.i.i, i64 32
  %i.pj = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.us.i.i.1 = shl i64 %i.pj, 4
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pg, i64 %.idx.us.i.i.1 ; 2 uses
  %i.pl = load <4 x float>, ptr %i.pk, align 16, !tbaa !254
  store <4 x float> %i.pl, ptr %i.pi, align 16, !tbaa !254
  %i.pm = getelementptr inbounds nuw i8, ptr %.21220.us.i.i, i64 48
  %i.pn = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.us.i.i.2 = shl i64 %i.pn, 4
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 %.idx.us.i.i.2 ; 2 uses
  %i.pp = load <4 x float>, ptr %i.po, align 16, !tbaa !254
  store <4 x float> %i.pp, ptr %i.pm, align 16, !tbaa !254
  %i.pq = getelementptr inbounds nuw i8, ptr %.21220.us.i.i, i64 64 ; 3 uses
  %i.pr = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx.us.i.i.3 = shl i64 %i.pr, 4
  %i.ps = getelementptr inbounds nuw i8, ptr %i.po, i64 %.idx.us.i.i.3 ; 2 uses
  %niter213.next.3 = add i32 %niter213, 4         ; 2 uses
  %niter213.ncmp.3 = icmp eq i32 %niter213.next.3, %unroll_iter212
  br i1 %niter213.ncmp.3, label %.loopexit150.us.i.loopexit.i.unr-lcssa, label %.lr.ph223.us.i.i, !llvm.loop !1015

.loopexit150.us.i.loopexit.i.unr-lcssa:           ; preds = %.lr.ph223.us.i.i
  br i1 %lcmp.mod208.not, label %.loopexit150.us.i.loopexit.i, label %.lr.ph223.us.i.i.epil.preheader

.lr.ph223.us.i.i.epil.preheader:                  ; preds = %.loopexit150.us.i.loopexit.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit367.us.i.i
  %.0331221.us.i.i.epil.init = phi ptr [ %i.pc, %_ZN4ncnn3MatD2Ev.exit367.us.i.i ], [ %i.ps, %.loopexit150.us.i.loopexit.i.unr-lcssa ]
  %.21220.us.i.i.epil.init = phi ptr [ %.20231.us.i.i, %_ZN4ncnn3MatD2Ev.exit367.us.i.i ], [ %i.pq, %.loopexit150.us.i.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod211)
  br label %.lr.ph223.us.i.i.epil

.lr.ph223.us.i.i.epil:                            ; preds = %.lr.ph223.us.i.i.epil, %.lr.ph223.us.i.i.epil.preheader
  %.0331221.us.i.i.epil = phi ptr [ %i.pw, %.lr.ph223.us.i.i.epil ], [ %.0331221.us.i.i.epil.init, %.lr.ph223.us.i.i.epil.preheader ] ; 2 uses
  %.21220.us.i.i.epil = phi ptr [ %i.pu, %.lr.ph223.us.i.i.epil ], [ %.21220.us.i.i.epil.init, %.lr.ph223.us.i.i.epil.preheader ] ; 2 uses
  %epil.iter207 = phi i32 [ %epil.iter207.next, %.lr.ph223.us.i.i.epil ], [ 0, %.lr.ph223.us.i.i.epil.preheader ]
  %i.pt = load <4 x float>, ptr %.0331221.us.i.i.epil, align 16, !tbaa !254
  store <4 x float> %i.pt, ptr %.21220.us.i.i.epil, align 16, !tbaa !254
  %i.pu = getelementptr inbounds nuw i8, ptr %.21220.us.i.i.epil, i64 16 ; 2 uses
  %i.pv = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx.us.i.i.epil = shl i64 %i.pv, 4
  %i.pw = getelementptr inbounds nuw i8, ptr %.0331221.us.i.i.epil, i64 %.idx.us.i.i.epil
  %epil.iter207.next = add i32 %epil.iter207, 1   ; 2 uses
  %epil.iter207.cmp.not = icmp eq i32 %epil.iter207.next, %xtraiter206
  br i1 %epil.iter207.cmp.not, label %.loopexit150.us.i.loopexit.i, label %.lr.ph223.us.i.i.epil, !llvm.loop !1016

.loopexit150.us.i.loopexit.i:                     ; preds = %.lr.ph223.us.i.i.epil, %.loopexit150.us.i.loopexit.i.unr-lcssa
  %.lcssa166 = phi ptr [ %i.pq, %.loopexit150.us.i.loopexit.i.unr-lcssa ], [ %i.pu, %.lr.ph223.us.i.i.epil ]
  %.lcssa165 = phi i64 [ %i.pr, %.loopexit150.us.i.loopexit.i.unr-lcssa ], [ %i.pv, %.lr.ph223.us.i.i.epil ]
  %indvars.iv.next274.i.i = add nsw i64 %indvars.iv273.i.i, 1 ; 2 uses
  %exitcond277.not.i.i = icmp eq i64 %indvars.iv.next274.i.i, %wide.trip.count276.i.i
  br i1 %exitcond277.not.i.i, label %_ZN4ncnn3MatD2Ev.exit, label %_ZN4ncnn3MatD2Ev.exit367.us.i.i, !llvm.loop !1017

.lr.ph232.split.split.i.i:                        ; preds = %.lr.ph232.i.i
  %i.px = icmp slt i32 %.sroa.speculated, 1
  %i.py = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1018 ; 10 uses
  br i1 %i.px, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph232.split.split.split.i.i

.lr.ph232.split.split.split.i.i:                  ; preds = %.lr.ph232.split.split.i.i
  %i.pz = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1018
  %i.qa = mul i64 %i.py, %i.op
  %i.qb = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1018
  %i.qc = mul i64 %i.qa, %i.qb
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.qc
  %i.qe = sext i32 %.3338.lcssa.i.i to i64
  %i.qf = sext i32 %i.v to i64
  %wide.trip.count.i.i = sext i32 %.sroa.speculated64 to i64
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.qd, i64 %i.qf
  %i.qg = add nsw i32 %.sroa.speculated, -1
  %xtraiter199 = and i32 %.sroa.speculated, 7     ; 3 uses
  %i.qh = icmp ult i32 %i.qg, 7
  %unroll_iter204 = and i32 %.sroa.speculated, 2147483640
  %lcmp.mod201.not = icmp eq i32 %xtraiter199, 0
  %lcmp.mod203 = icmp ne i32 %xtraiter199, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i.i

bb.e:                                             ; preds = %.loopexit151.i.i, %.lr.ph217.i.i
  %indvars.iv263.i.i = phi i64 [ %i.ly, %.lr.ph217.i.i ], [ %indvars.iv.next264.i.i, %.loopexit151.i.i ] ; 3 uses
  %.15216.i.i = phi ptr [ %.10.lcssa.i.i, %.lr.ph217.i.i ], [ %.19.i.i, %.loopexit151.i.i ] ; 7 uses
  switch i32 %i.bb, label %.loopexit151.i.i [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit369.i.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit368.i.i
  ]

_ZN4ncnn3MatD2Ev.exit369.i.i:                     ; preds = %bb.e
  br i1 %i.lv, label %.lr.ph208.preheader.i.i, label %.loopexit151.i.i

.lr.ph208.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit369.i.i
  %i.qi = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1021
  %i.qj = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1021
  %i.qk = mul i64 %i.qj, %i.lu
  %i.ql = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1021
  %i.qm = mul i64 %i.qk, %i.ql
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.qm
  %i.qo = add nsw i64 %indvars.iv263.i.i, %i.ma
  %.idx287.i.i = shl nsw i64 %i.qo, 4
  %i.qp = getelementptr inbounds i8, ptr %i.qn, i64 %.idx287.i.i ; 2 uses
  br i1 %20, label %.lr.ph208.i.i.epil.preheader, label %.lr.ph208.i.i

.lr.ph208.i.i:                                    ; preds = %.lr.ph208.preheader.i.i, %.lr.ph208.i.i
  %.16207.i.i = phi ptr [ %i.rf, %.lr.ph208.i.i ], [ %.15216.i.i, %.lr.ph208.preheader.i.i ] ; 5 uses
  %.0343205.i.i = phi ptr [ %i.rh, %.lr.ph208.i.i ], [ %i.qp, %.lr.ph208.preheader.i.i ] ; 3 uses
  %niter197 = phi i32 [ %niter197.next.1, %.lr.ph208.i.i ], [ 0, %.lr.ph208.preheader.i.i ]
  %i.qq = load <4 x float>, ptr %.0343205.i.i, align 16, !tbaa !254 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.0343205.i.i, i64 16
  %i.qs = load <4 x float>, ptr %i.qr, align 16, !tbaa !254 ; 2 uses
  %i.qt = shufflevector <4 x float> %i.qq, <4 x float> %i.qs, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.qu = shufflevector <4 x float> %i.qq, <4 x float> %i.qs, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.qt, ptr %.16207.i.i, align 16, !tbaa !254
  %i.qv = getelementptr inbounds nuw i8, ptr %.16207.i.i, i64 16
  store <4 x float> %i.qu, ptr %i.qv, align 16, !tbaa !254
  %i.qw = getelementptr inbounds nuw i8, ptr %.16207.i.i, i64 32
  %i.qx = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx354.i.i = shl i64 %i.qx, 4
  %i.qy = getelementptr inbounds nuw i8, ptr %.0343205.i.i, i64 %.idx354.i.i ; 3 uses
  %i.qz = load <4 x float>, ptr %i.qy, align 16, !tbaa !254 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %i.rb = load <4 x float>, ptr %i.ra, align 16, !tbaa !254 ; 2 uses
  %i.rc = shufflevector <4 x float> %i.qz, <4 x float> %i.rb, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.rd = shufflevector <4 x float> %i.qz, <4 x float> %i.rb, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.rc, ptr %i.qw, align 16, !tbaa !254
  %i.re = getelementptr inbounds nuw i8, ptr %.16207.i.i, i64 48
  store <4 x float> %i.rd, ptr %i.re, align 16, !tbaa !254
  %i.rf = getelementptr inbounds nuw i8, ptr %.16207.i.i, i64 64 ; 3 uses
  %i.rg = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx354.i.i.1 = shl i64 %i.rg, 4
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qy, i64 %.idx354.i.i.1 ; 2 uses
  %niter197.next.1 = add i32 %niter197, 2         ; 2 uses
  %niter197.ncmp.1 = icmp eq i32 %niter197.next.1, %unroll_iter196
  br i1 %niter197.ncmp.1, label %.loopexit151.i.i.loopexit.unr-lcssa, label %.lr.ph208.i.i, !llvm.loop !1024

_ZN4ncnn3MatD2Ev.exit368.i.i:                     ; preds = %bb.e
  br i1 %i.lx, label %.lr.ph213.i.i, label %.loopexit151.i.i

.lr.ph213.i.i:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit368.i.i
  %i.ri = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1025
  %i.rj = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1025 ; 6 uses
  %i.rk = mul i64 %i.rj, %i.lw
  %i.rl = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1025
  %i.rm = mul i64 %i.rk, %i.rl
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rm
  %i.ro = getelementptr [4 x i8], ptr %i.rn, i64 %indvars.iv263.i.i
  %i.rp = getelementptr [4 x i8], ptr %i.ro, i64 %i.ma ; 2 uses
  br i1 %i.mc, label %.epil.preheader, label %.lr.ph213.i.i.new

.lr.ph213.i.i.new:                                ; preds = %.lr.ph213.i.i, %.lr.ph213.i.i.new
  %.0333211.i.i = phi ptr [ %i.sn, %.lr.ph213.i.i.new ], [ %i.rp, %.lr.ph213.i.i ] ; 3 uses
  %.18210.i.i = phi ptr [ %i.sm, %.lr.ph213.i.i.new ], [ %.15216.i.i, %.lr.ph213.i.i ] ; 9 uses
  %niter190 = phi i32 [ %niter190.next.3, %.lr.ph213.i.i.new ], [ 0, %.lr.ph213.i.i ]
  %i.rq = load float, ptr %.0333211.i.i, align 4, !tbaa !39
  store float %i.rq, ptr %.18210.i.i, align 4, !tbaa !39
  %i.rr = getelementptr inbounds nuw i8, ptr %.0333211.i.i, i64 4
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !39
  %i.rt = getelementptr inbounds nuw i8, ptr %.18210.i.i, i64 4
  store float %i.rs, ptr %i.rt, align 4, !tbaa !39
  %i.ru = getelementptr inbounds nuw i8, ptr %.18210.i.i, i64 8
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %.0333211.i.i, i64 %i.rj ; 3 uses
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !39
  store float %i.rw, ptr %i.ru, align 4, !tbaa !39
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 4
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !39
  %i.rz = getelementptr inbounds nuw i8, ptr %.18210.i.i, i64 12
  store float %i.ry, ptr %i.rz, align 4, !tbaa !39
  %i.sa = getelementptr inbounds nuw i8, ptr %.18210.i.i, i64 16
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %i.rj ; 3 uses
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !39
  store float %i.sc, ptr %i.sa, align 4, !tbaa !39
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sb, i64 4
  %i.se = load float, ptr %i.sd, align 4, !tbaa !39
  %i.sf = getelementptr inbounds nuw i8, ptr %.18210.i.i, i64 20
  store float %i.se, ptr %i.sf, align 4, !tbaa !39
  %i.sg = getelementptr inbounds nuw i8, ptr %.18210.i.i, i64 24
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.rj ; 3 uses
  %i.si = load float, ptr %i.sh, align 4, !tbaa !39
  store float %i.si, ptr %i.sg, align 4, !tbaa !39
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 4
  %i.sk = load float, ptr %i.sj, align 4, !tbaa !39
  %i.sl = getelementptr inbounds nuw i8, ptr %.18210.i.i, i64 28
  store float %i.sk, ptr %i.sl, align 4, !tbaa !39
  %i.sm = getelementptr inbounds nuw i8, ptr %.18210.i.i, i64 32 ; 3 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %i.rj ; 2 uses
  %niter190.next.3 = add i32 %niter190, 4         ; 2 uses
  %niter190.ncmp.3 = icmp eq i32 %niter190.next.3, %unroll_iter189
  br i1 %niter190.ncmp.3, label %.loopexit151.i.i.loopexit148.unr-lcssa, label %.lr.ph213.i.i.new, !llvm.loop !1028

.loopexit151.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph208.i.i
  br i1 %lcmp.mod193.not, label %.loopexit151.i.i, label %.lr.ph208.i.i.epil.preheader

.lr.ph208.i.i.epil.preheader:                     ; preds = %.loopexit151.i.i.loopexit.unr-lcssa, %.lr.ph208.preheader.i.i
  %.16207.i.i.epil.init = phi ptr [ %.15216.i.i, %.lr.ph208.preheader.i.i ], [ %i.rf, %.loopexit151.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.0343205.i.i.epil.init = phi ptr [ %i.qp, %.lr.ph208.preheader.i.i ], [ %i.rh, %.loopexit151.i.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod195)
  %i.so = load <4 x float>, ptr %.0343205.i.i.epil.init, align 16, !tbaa !254 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.0343205.i.i.epil.init, i64 16
  %i.sq = load <4 x float>, ptr %i.sp, align 16, !tbaa !254 ; 2 uses
  %i.sr = shufflevector <4 x float> %i.so, <4 x float> %i.sq, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ss = shufflevector <4 x float> %i.so, <4 x float> %i.sq, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.sr, ptr %.16207.i.i.epil.init, align 16, !tbaa !254
  %i.st = getelementptr inbounds nuw i8, ptr %.16207.i.i.epil.init, i64 16
  store <4 x float> %i.ss, ptr %i.st, align 16, !tbaa !254
  %i.su = getelementptr inbounds nuw i8, ptr %.16207.i.i.epil.init, i64 32
  br label %.loopexit151.i.i

.loopexit151.i.i.loopexit148.unr-lcssa:           ; preds = %.lr.ph213.i.i.new
  br i1 %lcmp.mod186.not, label %.loopexit151.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit151.i.i.loopexit148.unr-lcssa, %.lr.ph213.i.i
  %.0333211.i.i.epil.init = phi ptr [ %i.rp, %.lr.ph213.i.i ], [ %i.sn, %.loopexit151.i.i.loopexit148.unr-lcssa ]
  %.18210.i.i.epil.init = phi ptr [ %.15216.i.i, %.lr.ph213.i.i ], [ %i.sm, %.loopexit151.i.i.loopexit148.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod188)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.0333211.i.i.epil = phi ptr [ %.0333211.i.i.epil.init, %.epil.preheader ], [ %i.ta, %bb.f ] ; 3 uses
  %.18210.i.i.epil = phi ptr [ %.18210.i.i.epil.init, %.epil.preheader ], [ %i.sz, %bb.f ] ; 3 uses
  %epil.iter185 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter185.next, %bb.f ]
  %i.sv = load float, ptr %.0333211.i.i.epil, align 4, !tbaa !39
  store float %i.sv, ptr %.18210.i.i.epil, align 4, !tbaa !39
  %i.sw = getelementptr inbounds nuw i8, ptr %.0333211.i.i.epil, i64 4
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !39
  %i.sy = getelementptr inbounds nuw i8, ptr %.18210.i.i.epil, i64 4
  store float %i.sx, ptr %i.sy, align 4, !tbaa !39
  %i.sz = getelementptr inbounds nuw i8, ptr %.18210.i.i.epil, i64 8 ; 2 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %.0333211.i.i.epil, i64 %i.rj
  %epil.iter185.next = add i32 %epil.iter185, 1   ; 2 uses
  %epil.iter185.cmp.not = icmp eq i32 %epil.iter185.next, %xtraiter184
  br i1 %epil.iter185.cmp.not, label %.loopexit151.i.i, label %bb.f, !llvm.loop !1029

.loopexit151.i.i:                                 ; preds = %.loopexit151.i.i.loopexit148.unr-lcssa, %bb.f, %.lr.ph208.i.i.epil.preheader, %.loopexit151.i.i.loopexit.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit368.i.i, %_ZN4ncnn3MatD2Ev.exit369.i.i, %bb.e
  %.19.i.i = phi ptr [ %.15216.i.i, %bb.e ], [ %.15216.i.i, %_ZN4ncnn3MatD2Ev.exit368.i.i ], [ %i.su, %.lr.ph208.i.i.epil.preheader ], [ %.15216.i.i, %_ZN4ncnn3MatD2Ev.exit369.i.i ], [ %i.rf, %.loopexit151.i.i.loopexit.unr-lcssa ], [ %i.sm, %.loopexit151.i.i.loopexit148.unr-lcssa ], [ %i.sz, %bb.f ] ; 2 uses
  %indvars.iv.next264.i.i = add nuw nsw i64 %indvars.iv263.i.i, 2 ; 3 uses
  %i.tb = icmp slt i64 %indvars.iv.next264.i.i, %invariant.op310.i.i
  br i1 %i.tb, label %bb.e, label %.preheader.loopexit.i.i, !llvm.loop !1030

_ZN4ncnn3MatD2Ev.exit.i.i:                        ; preds = %..loopexit_crit_edge.i.i, %.lr.ph232.split.split.split.i.i
  %indvars.iv267.i.i = phi i64 [ %i.qe, %.lr.ph232.split.split.split.i.i ], [ %indvars.iv.next268.i.i, %..loopexit_crit_edge.i.i ] ; 2 uses
  %.20231.i.i = phi ptr [ %.15.lcssa.i.i, %.lr.ph232.split.split.split.i.i ], [ %.lcssa164, %..loopexit_crit_edge.i.i ] ; 2 uses
  %gep.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv267.i.i ; 2 uses
  br i1 %i.qh, label %.epil.preheader198, label %_ZN4ncnn3MatD2Ev.exit.i.i.new

_ZN4ncnn3MatD2Ev.exit.i.i.new:                    ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i.new
  %.0329226.i.i = phi ptr [ %i.tz, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ %gep.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 2 uses
  %.23225.i.i = phi ptr [ %i.ty, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ %.20231.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ] ; 9 uses
  %niter205 = phi i32 [ %niter205.next.7, %_ZN4ncnn3MatD2Ev.exit.i.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit.i.i ]
  %i.tc = load float, ptr %.0329226.i.i, align 4, !tbaa !39
  store float %i.tc, ptr %.23225.i.i, align 4, !tbaa !39
  %i.td = getelementptr inbounds nuw i8, ptr %.23225.i.i, i64 4
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %.0329226.i.i, i64 %i.py ; 2 uses
  %i.tf = load float, ptr %i.te, align 4, !tbaa !39
  store float %i.tf, ptr %i.td, align 4, !tbaa !39
  %i.tg = getelementptr inbounds nuw i8, ptr %.23225.i.i, i64 8
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.py ; 2 uses
  %i.ti = load float, ptr %i.th, align 4, !tbaa !39
  store float %i.ti, ptr %i.tg, align 4, !tbaa !39
  %i.tj = getelementptr inbounds nuw i8, ptr %.23225.i.i, i64 12
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.py ; 2 uses
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !39
  store float %i.tl, ptr %i.tj, align 4, !tbaa !39
  %i.tm = getelementptr inbounds nuw i8, ptr %.23225.i.i, i64 16
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %i.py ; 2 uses
  %i.to = load float, ptr %i.tn, align 4, !tbaa !39
  store float %i.to, ptr %i.tm, align 4, !tbaa !39
  %i.tp = getelementptr inbounds nuw i8, ptr %.23225.i.i, i64 20
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %i.py ; 2 uses
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !39
  store float %i.tr, ptr %i.tp, align 4, !tbaa !39
  %i.ts = getelementptr inbounds nuw i8, ptr %.23225.i.i, i64 24
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %i.py ; 2 uses
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !39
  store float %i.tu, ptr %i.ts, align 4, !tbaa !39
  %i.tv = getelementptr inbounds nuw i8, ptr %.23225.i.i, i64 28
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %i.py ; 2 uses
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !39
  store float %i.tx, ptr %i.tv, align 4, !tbaa !39
  %i.ty = getelementptr inbounds nuw i8, ptr %.23225.i.i, i64 32 ; 3 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.tw, i64 %i.py ; 2 uses
  %niter205.next.7 = add i32 %niter205, 8         ; 2 uses
  %niter205.ncmp.7 = icmp eq i32 %niter205.next.7, %unroll_iter204
  br i1 %niter205.ncmp.7, label %..loopexit_crit_edge.i.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit.i.i.new, !llvm.loop !1031

..loopexit_crit_edge.i.i.unr-lcssa:               ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i.new
  br i1 %lcmp.mod201.not, label %..loopexit_crit_edge.i.i, label %.epil.preheader198

.epil.preheader198:                               ; preds = %..loopexit_crit_edge.i.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit.i.i
  %.0329226.i.i.epil.init = phi ptr [ %gep.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.tz, %..loopexit_crit_edge.i.i.unr-lcssa ]
  %.23225.i.i.epil.init = phi ptr [ %.20231.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.ty, %..loopexit_crit_edge.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod203)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader198
  %.0329226.i.i.epil = phi ptr [ %.0329226.i.i.epil.init, %.epil.preheader198 ], [ %i.uc, %bb.g ] ; 2 uses
  %.23225.i.i.epil = phi ptr [ %.23225.i.i.epil.init, %.epil.preheader198 ], [ %i.ub, %bb.g ] ; 2 uses
  %epil.iter200 = phi i32 [ 0, %.epil.preheader198 ], [ %epil.iter200.next, %bb.g ]
  %i.ua = load float, ptr %.0329226.i.i.epil, align 4, !tbaa !39
  store float %i.ua, ptr %.23225.i.i.epil, align 4, !tbaa !39
  %i.ub = getelementptr inbounds nuw i8, ptr %.23225.i.i.epil, i64 4 ; 2 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %.0329226.i.i.epil, i64 %i.py
  %epil.iter200.next = add i32 %epil.iter200, 1   ; 2 uses
  %epil.iter200.cmp.not = icmp eq i32 %epil.iter200.next, %xtraiter199
  br i1 %epil.iter200.cmp.not, label %..loopexit_crit_edge.i.i, label %bb.g, !llvm.loop !1032

..loopexit_crit_edge.i.i:                         ; preds = %bb.g, %..loopexit_crit_edge.i.i.unr-lcssa
  %.lcssa164 = phi ptr [ %i.ty, %..loopexit_crit_edge.i.i.unr-lcssa ], [ %i.ub, %bb.g ]
  %indvars.iv.next268.i.i = add nsw i64 %indvars.iv267.i.i, 1 ; 2 uses
  %exitcond270.not.i.i = icmp eq i64 %indvars.iv.next268.i.i, %wide.trip.count.i.i
  br i1 %exitcond270.not.i.i, label %_ZN4ncnn3MatD2Ev.exit, label %_ZN4ncnn3MatD2Ev.exit.i.i, !llvm.loop !1017

bb.h:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit36
  %i.ud = icmp eq i32 %i.at, 2                    ; 4 uses
  %or.cond13.i = and i1 %or.cond.i, %i.ud
  %i.ue = icmp eq i32 %i.au, 2                    ; 4 uses
  %or.cond15.i = and i1 %or.cond13.i, %i.ue
  br i1 %or.cond15.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call fastcc void @_ZN4ncnnL34convolution_im2col_input_tile_implERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.uf = icmp eq i32 %i.ap, 3
  %i.ug = icmp eq i32 %i.aq, 3
  %or.cond17.i = and i1 %i.uf, %i.ug
  %or.cond19.i = and i1 %or.cond17.i, %i.ax
  %or.cond21.i = and i1 %or.cond19.i, %i.ay       ; 2 uses
  %or.cond23.i = and i1 %or.cond21.i, %i.az
  %or.cond25.i = and i1 %or.cond23.i, %i.ba
  br i1 %or.cond25.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
end_hunk_0
begin_hunk_1_@_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined:bb.a
  %.1.3 = phi <2 x i64> [ zeroinitializer, %.thread.2 ], [ zeroinitializer, %bb.ap ], [ %i.pc, %bb.av ], [ %i.pc, %bb.au ], [ %i.pq, %bb.ba ], [ %i.pq, %bb.bb ]
  %i.qm = bitcast <2 x i64> %.1.3 to <8 x i16>
  %i.qn = bitcast <2 x i64> %.3151.3 to <8 x i16> ; 3 uses
  %i.qo = bitcast <2 x i64> %.3.3 to <8 x i16>    ; 3 uses
  %i.qp = add <8 x i16> %i.qo, %i.qn
  %i.qq = bitcast <2 x i64> %.2154.3 to <8 x i16>
  %i.qr = load ptr, ptr %13, align 8, !tbaa !18
  %i.qs = mul i32 %i.v, %i.w
  %i.qt = sext i32 %i.qs to i64
  %i.qu = getelementptr inbounds [2 x i8], ptr %i.qr, i64 %i.qt
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 %.idx ; 5 uses
  %i.qw = shl nsw i32 %i.w, 3
  %i.qx = sext i32 %i.qw to i64
  %i.qy = getelementptr inbounds [2 x i8], ptr %i.qv, i64 %i.qx ; 2 uses
  %i.qz = shl nsw i32 %i.w, 4
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr inbounds [2 x i8], ptr %i.qv, i64 %i.ra ; 2 uses
  %i.rc = mul nsw i32 %i.w, 24
  %i.rd = sext i32 %i.rc to i64
  %i.re = getelementptr inbounds [2 x i8], ptr %i.qv, i64 %i.rd ; 2 uses
  %i.rf = add <8 x i16> %i.mq, %i.ew
  %i.rg = sub <8 x i16> %i.ev, %i.rf
  %i.rh = add <8 x i16> %i.mq, %i.is
  %i.ri = sub <8 x i16> %i.mq, %i.is
  %i.rj = add <8 x i16> %i.is, %i.qn
  %i.rk = sub <8 x i16> %i.qm, %i.rj
  store <8 x i16> %i.rg, ptr %i.qv, align 16, !tbaa !254
  store <8 x i16> %i.rh, ptr %i.qy, align 16, !tbaa !254
  store <8 x i16> %i.ri, ptr %i.rb, align 16, !tbaa !254
  store <8 x i16> %i.rk, ptr %i.re, align 16, !tbaa !254
  %i.rl = load i32, ptr %4, align 4, !tbaa !67
  %i.rm = shl nsw i32 %i.rl, 5
  %i.rn = sext i32 %i.rm to i64                   ; 4 uses
  %i.ro = getelementptr inbounds [2 x i8], ptr %i.qv, i64 %i.rn ; 2 uses
  %i.rp = getelementptr inbounds [2 x i8], ptr %i.qy, i64 %i.rn ; 2 uses
  %i.rq = getelementptr inbounds [2 x i8], ptr %i.rb, i64 %i.rn ; 2 uses
  %i.rr = getelementptr inbounds [2 x i8], ptr %i.re, i64 %i.rn ; 2 uses
  %i.rs = sub <8 x i16> %i.ey, %i.ms
  %i.rt = add <8 x i16> %i.ms, %i.iu
  %i.ru = sub <8 x i16> %i.ms, %i.iu
  %i.rv = sub <8 x i16> %i.qp, %i.iu
  store <8 x i16> %i.rs, ptr %i.ro, align 16, !tbaa !254
  store <8 x i16> %i.rt, ptr %i.rp, align 16, !tbaa !254
  store <8 x i16> %i.ru, ptr %i.rq, align 16, !tbaa !254
  store <8 x i16> %i.rv, ptr %i.rr, align 16, !tbaa !254
  %i.rw = load i32, ptr %4, align 4, !tbaa !67
  %i.rx = shl nsw i32 %i.rw, 5
  %i.ry = sext i32 %i.rx to i64                   ; 4 uses
  %i.rz = getelementptr inbounds [2 x i8], ptr %i.ro, i64 %i.ry ; 2 uses
  %i.sa = getelementptr inbounds [2 x i8], ptr %i.rp, i64 %i.ry ; 2 uses
  %i.sb = getelementptr inbounds [2 x i8], ptr %i.rq, i64 %i.ry ; 2 uses
  %i.sc = getelementptr inbounds [2 x i8], ptr %i.rr, i64 %i.ry ; 2 uses
  %i.sd = add <8 x i16> %i.mt, %i.ex
  %i.se = sub <8 x i16> %i.ew, %i.sd
  %i.sf = add <8 x i16> %i.mt, %i.iv
  %i.sg = sub <8 x i16> %i.mt, %i.iv
  %i.sh = add <8 x i16> %i.iv, %i.qo
  %i.si = sub <8 x i16> %i.qn, %i.sh
  store <8 x i16> %i.se, ptr %i.rz, align 16, !tbaa !254
  store <8 x i16> %i.sf, ptr %i.sa, align 16, !tbaa !254
  store <8 x i16> %i.sg, ptr %i.sb, align 16, !tbaa !254
  store <8 x i16> %i.si, ptr %i.sc, align 16, !tbaa !254
  %i.sj = load i32, ptr %4, align 4, !tbaa !67
  %i.sk = shl nsw i32 %i.sj, 5
  %i.sl = sext i32 %i.sk to i64                   ; 4 uses
  %i.sm = getelementptr inbounds [2 x i8], ptr %i.rz, i64 %i.sl
  %i.sn = getelementptr inbounds [2 x i8], ptr %i.sa, i64 %i.sl
  %i.so = getelementptr inbounds [2 x i8], ptr %i.sb, i64 %i.sl
  %i.sp = getelementptr inbounds [2 x i8], ptr %i.sc, i64 %i.sl
  %i.sq = add <8 x i16> %i.mv, %i.ex
  %i.sr = sub <8 x i16> %i.ez, %i.sq
  %i.ss = add <8 x i16> %i.mv, %i.ix
  %i.st = sub <8 x i16> %i.mv, %i.ix
  %i.su = add <8 x i16> %i.ix, %i.qo
  %i.sv = sub <8 x i16> %i.qq, %i.su
  store <8 x i16> %i.sr, ptr %i.sm, align 16, !tbaa !254
  store <8 x i16> %i.ss, ptr %i.sn, align 16, !tbaa !254
  store <8 x i16> %i.st, ptr %i.so, align 16, !tbaa !254
  store <8 x i16> %i.sv, ptr %i.sp, align 16, !tbaa !254
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.sw = load i32, ptr %4, align 4, !tbaa !67    ; 3 uses
  %i.sx = sext i32 %i.sw to i64
  %i.sy = icmp slt i64 %indvars.iv.next, %i.sx
  br i1 %i.sy, label %.noexc, label %._crit_edge, !llvm.loop !1428

._crit_edge:                                      ; preds = %.thread.3, %.lr.ph.split
  %i.sz = phi i32 [ %i.q, %.lr.ph.split ], [ %i.sw, %.thread.3 ]
  %i.ta = add i32 %.0187, 1
  %exitcond.not = icmp eq i32 %.0187, %i.j
  br i1 %exitcond.not, label %._crit_edge189, label %.lr.ph.split, !llvm.loop !1429

._crit_edge189:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge189, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ag

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
  %.not126 = icmp sgt i32 %i.k, %i.j
  br i1 %.not126, label %._crit_edge, label %_ZN4ncnn3MatD2Ev.exit36.lr.ph

_ZN4ncnn3MatD2Ev.exit36.lr.ph:                    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  br label %_ZN4ncnn3MatD2Ev.exit36

_ZN4ncnn3MatD2Ev.exit36:                          ; preds = %_ZN4ncnn3MatD2Ev.exit36.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.0127 = phi i32 [ %i.k, %_ZN4ncnn3MatD2Ev.exit36.lr.ph ], [ %i.boy, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.s = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.t = sdiv i32 %.0127, %i.s                    ; 2 uses
  %i.u = srem i32 %.0127, %i.s                    ; 2 uses
  %i.v = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.w = mul nsw i32 %i.v, %i.t                   ; 10 uses
  %i.x = load i32, ptr %5, align 4, !tbaa !67     ; 2 uses
  %i.y = mul i32 %i.x, %i.u                       ; 27 uses
  %i.z = load i32, ptr %6, align 4, !tbaa !67
  %i.aa = sub nsw i32 %i.z, %i.w
  %.sroa.speculated64 = call i32 @llvm.smin.i32(i32 %i.v, i32 %i.aa) ; 17 uses
  %i.ab = load i32, ptr %7, align 4, !tbaa !67
  %i.ac = sub i32 %i.ab, %i.y
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.x, i32 %i.ac) ; 68 uses
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1430
  %i.ae = load ptr, ptr %8, align 8, !tbaa !18, !noalias !1430
  %i.af = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !1430
  %i.ag = sext i32 %i.t to i64
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !1430 ; 2 uses
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %i.al = sext i32 %i.ad to i64
  %i.am = sext i32 %i.u to i64
  %i.an = mul nsw i64 %i.al, %i.am
  %i.ao = mul i64 %i.an, %i.ai
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ao ; 7 uses
  %i.aq = load i32, ptr %10, align 4, !tbaa !67   ; 59 uses
  %i.ar = load i32, ptr %11, align 4, !tbaa !67   ; 2 uses
  %i.as = load i32, ptr %12, align 4, !tbaa !67   ; 30 uses
  %i.at = load i32, ptr %13, align 4, !tbaa !67   ; 5 uses
  %i.au = load i32, ptr %14, align 4, !tbaa !67   ; 7 uses
  %i.av = load i32, ptr %15, align 4, !tbaa !67   ; 5 uses
  %i.aw = icmp eq i32 %i.aq, 1
  %i.ax = icmp eq i32 %i.ar, 1
  %or.cond.i = and i1 %i.aw, %i.ax
  %i.ay = icmp eq i32 %i.as, 1
  %or.cond3.i = and i1 %or.cond.i, %i.ay
  %i.az = icmp eq i32 %i.at, 1
  %or.cond5.i = and i1 %or.cond3.i, %i.az
  %i.ba = icmp eq i32 %i.au, 1                    ; 4 uses
  %i.bb = icmp eq i32 %i.av, 1
  %i.bc = and i1 %or.cond5.i, %i.bb
  %or.cond9.i = and i1 %i.ba, %i.bc
  %i.bd = load i64, ptr %i.o, align 8, !tbaa !20  ; 59 uses
  br i1 %or.cond9.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit36
  %i.be = load i32, ptr %i.q, align 8, !tbaa !66  ; 4 uses
  %i.bf = icmp sgt i32 %.sroa.speculated64, 7
  br i1 %i.bf, label %.lr.ph147.i.i, label %.preheader126.i.i

.lr.ph147.i.i:                                    ; preds = %bb.c
  %i.bg = sdiv i32 %i.y, 8
  %i.bh = sext i32 %i.bg to i64
  %16 = sdiv i32 %.sroa.speculated, 8
  %i.bi = shl i64 %i.bd, 3
  %i.bj = sext i32 %i.y to i64
  %i.bk = icmp sgt i32 %.sroa.speculated, 1
  %i.bl = shl i64 %i.bd, 1
  %i.bm = and i32 %.sroa.speculated, -2
  %i.bn = zext nneg i32 %.sroa.speculated64 to i64 ; 4 uses
  %i.bo = sext i32 %i.w to i64                    ; 2 uses
  switch i32 %i.be, label %.loopexit128.i.preheader.i [
    i32 8, label %.lr.ph147.i.split.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit270.i.us.i
  ]

.loopexit128.i.preheader.i:                       ; preds = %.lr.ph147.i.i
  %umax150.i = call i64 @llvm.umax.i64(i64 %i.bn, i64 15)
  %i.bp = and i64 %umax150.i, 2147483640
  br label %.preheader126.loopexit.i.i

.lr.ph147.i.split.us.i:                           ; preds = %.lr.ph147.i.i
  %i.bq = icmp sgt i32 %.sroa.speculated, 7
  br i1 %i.bq, label %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i, label %_ZN4ncnn3MatD2Ev.exit271.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit271.i.us.preheader.i:        ; preds = %.lr.ph147.i.split.us.i
  %umax.i = call i64 @llvm.umax.i64(i64 %i.bn, i64 15)
  %i.br = and i64 %umax.i, 2147483640
  br label %.preheader126.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit271.i.us.us.i:               ; preds = %.lr.ph147.i.split.us.i, %.loopexit128.i.loopexit.us.us.i
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.loopexit128.i.loopexit.us.us.i ], [ 0, %.lr.ph147.i.split.us.i ] ; 2 uses
  %.0233146.i.us.us.i = phi ptr [ %i.cx, %.loopexit128.i.loopexit.us.us.i ], [ %i.ap, %.lr.ph147.i.split.us.i ]
  %i.bs = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1433
  %i.bt = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !1433
  %i.bu = mul i64 %i.bt, %i.bh
  %i.bv = load i64, ptr %i.r, align 8, !tbaa !65, !noalias !1433
  %i.bw = mul i64 %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bw
  %i.by = add nsw i64 %indvars.iv.i.us.us.i, %i.bo
  %i.bz = shl nsw i64 %i.by, 3
  %i.ca = getelementptr inbounds i8, ptr %i.bx, i64 %i.bz
  br label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %.lr.ph.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i
  %.1132.i.us.us.i = phi ptr [ %i.cx, %.lr.ph.i.us.us.i ], [ %.0233146.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i ] ; 5 uses
  %.0244131.i.us.us.i = phi ptr [ %i.cy, %.lr.ph.i.us.us.i ], [ %i.ca, %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i ] ; 5 uses
  %.0245130.i.us.us.i = phi i32 [ %i.cz, %.lr.ph.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i ]
  %i.cb = load <8 x i16>, ptr %.0244131.i.us.us.i, align 1, !tbaa !254 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0244131.i.us.us.i, i64 16
  %i.cd = load <8 x i16>, ptr %i.cc, align 1, !tbaa !254 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0244131.i.us.us.i, i64 32
  %i.cf = load <8 x i16>, ptr %i.ce, align 1, !tbaa !254 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0244131.i.us.us.i, i64 48
  %i.ch = load <8 x i16>, ptr %i.cg, align 1, !tbaa !254 ; 2 uses
  %i.ci = shufflevector <8 x i16> %i.cb, <8 x i16> %i.cd, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.cj = bitcast <8 x i16> %i.ci to <2 x i64>    ; 2 uses
  %i.ck = shufflevector <8 x i16> %i.cb, <8 x i16> %i.cd, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.cl = bitcast <8 x i16> %i.ck to <2 x i64>    ; 2 uses
  %i.cm = shufflevector <8 x i16> %i.cf, <8 x i16> %i.ch, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.cn = bitcast <8 x i16> %i.cm to <2 x i64>    ; 2 uses
  %i.co = shufflevector <8 x i16> %i.cf, <8 x i16> %i.ch, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.cp = bitcast <8 x i16> %i.co to <2 x i64>    ; 2 uses
  %i.cq = shufflevector <2 x i64> %i.cj, <2 x i64> %i.cn, <2 x i32> <i32 0, i32 2>
  %i.cr = shufflevector <2 x i64> %i.cj, <2 x i64> %i.cn, <2 x i32> <i32 1, i32 3>
  %i.cs = shufflevector <2 x i64> %i.cl, <2 x i64> %i.cp, <2 x i32> <i32 0, i32 2>
  %i.ct = shufflevector <2 x i64> %i.cl, <2 x i64> %i.cp, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.cq, ptr %.1132.i.us.us.i, align 16, !tbaa !254
  %i.cu = getelementptr inbounds nuw i8, ptr %.1132.i.us.us.i, i64 16
  store <2 x i64> %i.cr, ptr %i.cu, align 16, !tbaa !254
  %i.cv = getelementptr inbounds nuw i8, ptr %.1132.i.us.us.i, i64 32
  store <2 x i64> %i.cs, ptr %i.cv, align 16, !tbaa !254
  %i.cw = getelementptr inbounds nuw i8, ptr %.1132.i.us.us.i, i64 48
  store <2 x i64> %i.ct, ptr %i.cw, align 16, !tbaa !254
  %i.cx = getelementptr inbounds nuw i8, ptr %.1132.i.us.us.i, i64 64 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0244131.i.us.us.i, i64 %i.bi
  %i.cz = add nuw nsw i32 %.0245130.i.us.us.i, 1  ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i32 %i.cz, %16
  br i1 %exitcond.not.i.us.us.i, label %.loopexit128.i.loopexit.us.us.i, label %.lr.ph.i.us.us.i, !llvm.loop !1436

.loopexit128.i.loopexit.us.us.i:                  ; preds = %.lr.ph.i.us.us.i
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 8 ; 3 uses
  %i.da = or disjoint i64 %indvars.iv.next.i.us.us.i, 7
  %i.db = icmp samesign ult i64 %i.da, %i.bn
  br i1 %i.db, label %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i, label %.preheader126.loopexit.i.i, !llvm.loop !1437

_ZN4ncnn3MatD2Ev.exit270.i.us.i:                  ; preds = %.lr.ph147.i.i, %.loopexit128.i.us64.i
  %indvars.iv.i.us62.i = phi i64 [ %indvars.iv.next.i.us66.i, %.loopexit128.i.us64.i ], [ 0, %.lr.ph147.i.i ] ; 2 uses
  %.0233146.i.us63.i = phi ptr [ %.5.i.us65.i, %.loopexit128.i.us64.i ], [ %i.ap, %.lr.ph147.i.i ] ; 2 uses
  %i.dc = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1438
  %i.dd = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !1438
  %i.de = mul i64 %i.dd, %i.bj
  %i.df = load i64, ptr %i.r, align 8, !tbaa !65, !noalias !1438
  %i.dg = mul i64 %i.de, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 %indvars.iv.i.us62.i
  %i.dj = getelementptr i8, ptr %i.di, i64 %i.bo  ; 2 uses
  br i1 %i.bk, label %.lr.ph136.i.us.i, label %.preheader127.i.us.i

.lr.ph136.i.us.i:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit270.i.us.i, %.lr.ph136.i.us.i
  %.3135.i.us.i = phi ptr [ %i.ds, %.lr.ph136.i.us.i ], [ %.0233146.i.us63.i, %_ZN4ncnn3MatD2Ev.exit270.i.us.i ] ; 2 uses
  %.0252134.i.us.i = phi ptr [ %i.dt, %.lr.ph136.i.us.i ], [ %i.dj, %_ZN4ncnn3MatD2Ev.exit270.i.us.i ] ; 3 uses
  %.0254133.i.us.i = phi i32 [ %i.du, %.lr.ph136.i.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit270.i.us.i ]
  %i.dk = load i64, ptr %.0252134.i.us.i, align 1, !tbaa !254
  %i.dl = insertelement <2 x i64> poison, i64 %i.dk, i64 0
  %i.dm = getelementptr inbounds nuw i8, ptr %.0252134.i.us.i, i64 %i.bd
  %i.dn = load i64, ptr %i.dm, align 1, !tbaa !254
  %i.do = insertelement <2 x i64> poison, i64 %i.dn, i64 0
  %i.dp = bitcast <2 x i64> %i.dl to <16 x i8>
  %i.dq = bitcast <2 x i64> %i.do to <16 x i8>
  %i.dr = shufflevector <16 x i8> %i.dp, <16 x i8> %i.dq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.dr, ptr %.3135.i.us.i, align 1, !tbaa !254
  %i.ds = getelementptr inbounds nuw i8, ptr %.3135.i.us.i, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0252134.i.us.i, i64 %i.bl ; 2 uses
  %i.du = add nuw nsw i32 %.0254133.i.us.i, 2     ; 2 uses
  %i.dv = or disjoint i32 %i.du, 1
  %i.dw = icmp slt i32 %i.dv, %.sroa.speculated
  br i1 %i.dw, label %.lr.ph136.i.us.i, label %.preheader127.i.us.i, !llvm.loop !1441

.preheader127.i.us.i:                             ; preds = %.lr.ph136.i.us.i, %_ZN4ncnn3MatD2Ev.exit270.i.us.i
  %.0254.lcssa.i.us.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit270.i.us.i ], [ %i.bm, %.lr.ph136.i.us.i ] ; 5 uses
  %.0252.lcssa.i.us.i = phi ptr [ %i.dj, %_ZN4ncnn3MatD2Ev.exit270.i.us.i ], [ %i.dt, %.lr.ph136.i.us.i ] ; 2 uses
  %.3.lcssa.i.us.i = phi ptr [ %.0233146.i.us63.i, %_ZN4ncnn3MatD2Ev.exit270.i.us.i ], [ %i.ds, %.lr.ph136.i.us.i ] ; 3 uses
  %i.dx = icmp slt i32 %.0254.lcssa.i.us.i, %.sroa.speculated
  br i1 %i.dx, label %.lr.ph143.i.us.i.preheader, label %.loopexit128.i.us64.i

.lr.ph143.i.us.i.preheader:                       ; preds = %.preheader127.i.us.i
  %i.dy = sub i32 %.sroa.speculated, %.0254.lcssa.i.us.i
  %xtraiter = and i32 %i.dy, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph143.i.us.i.prol.loopexit, label %.lr.ph143.i.us.i.prol

.lr.ph143.i.us.i.prol:                            ; preds = %.lr.ph143.i.us.i.preheader, %.lr.ph143.i.us.i.prol
  %.4142.i.us.i.prol = phi ptr [ %i.ea, %.lr.ph143.i.us.i.prol ], [ %.3.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ] ; 2 uses
  %.1253141.i.us.i.prol = phi ptr [ %i.eb, %.lr.ph143.i.us.i.prol ], [ %.0252.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ] ; 2 uses
  %.1255140.i.us.i.prol = phi i32 [ %i.ec, %.lr.ph143.i.us.i.prol ], [ %.0254.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph143.i.us.i.prol ], [ 0, %.lr.ph143.i.us.i.preheader ]
  %i.dz = load i64, ptr %.1253141.i.us.i.prol, align 1, !tbaa !254
  store i64 %i.dz, ptr %.4142.i.us.i.prol, align 1, !tbaa !254
  %i.ea = getelementptr inbounds nuw i8, ptr %.4142.i.us.i.prol, i64 8 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.1253141.i.us.i.prol, i64 %i.bd ; 2 uses
  %i.ec = add nuw nsw i32 %.1255140.i.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph143.i.us.i.prol.loopexit, label %.lr.ph143.i.us.i.prol, !llvm.loop !1442

.lr.ph143.i.us.i.prol.loopexit:                   ; preds = %.lr.ph143.i.us.i.prol, %.lr.ph143.i.us.i.preheader
  %.lcssa394.unr = phi ptr [ poison, %.lr.ph143.i.us.i.preheader ], [ %i.ea, %.lr.ph143.i.us.i.prol ]
  %.4142.i.us.i.unr = phi ptr [ %.3.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ], [ %i.ea, %.lr.ph143.i.us.i.prol ]
  %.1253141.i.us.i.unr = phi ptr [ %.0252.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ], [ %i.eb, %.lr.ph143.i.us.i.prol ]
  %.1255140.i.us.i.unr = phi i32 [ %.0254.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ], [ %i.ec, %.lr.ph143.i.us.i.prol ]
  %i.ed = sub i32 %.0254.lcssa.i.us.i, %.sroa.speculated
  %i.ee = icmp ugt i32 %i.ed, -8
  br i1 %i.ee, label %.loopexit128.i.us64.i, label %.lr.ph143.i.us.i

.lr.ph143.i.us.i:                                 ; preds = %.lr.ph143.i.us.i.prol.loopexit, %.lr.ph143.i.us.i
  %.4142.i.us.i = phi ptr [ %i.fb, %.lr.ph143.i.us.i ], [ %.4142.i.us.i.unr, %.lr.ph143.i.us.i.prol.loopexit ] ; 9 uses
  %.1253141.i.us.i = phi ptr [ %i.fc, %.lr.ph143.i.us.i ], [ %.1253141.i.us.i.unr, %.lr.ph143.i.us.i.prol.loopexit ] ; 2 uses
  %.1255140.i.us.i = phi i32 [ %i.fd, %.lr.ph143.i.us.i ], [ %.1255140.i.us.i.unr, %.lr.ph143.i.us.i.prol.loopexit ]
  %i.ef = load i64, ptr %.1253141.i.us.i, align 1, !tbaa !254
  store i64 %i.ef, ptr %.4142.i.us.i, align 1, !tbaa !254
  %i.eg = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.1253141.i.us.i, i64 %i.bd ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 1, !tbaa !254
  store i64 %i.ei, ptr %i.eg, align 1, !tbaa !254
  %i.ej = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.bd ; 2 uses
  %i.el = load i64, ptr %i.ek, align 1, !tbaa !254
  store i64 %i.el, ptr %i.ej, align 1, !tbaa !254
  %i.em = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.bd ; 2 uses
  %i.eo = load i64, ptr %i.en, align 1, !tbaa !254
  store i64 %i.eo, ptr %i.em, align 1, !tbaa !254
  %i.ep = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.bd ; 2 uses
  %i.er = load i64, ptr %i.eq, align 1, !tbaa !254
  store i64 %i.er, ptr %i.ep, align 1, !tbaa !254
  %i.es = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 40
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.bd ; 2 uses
  %i.eu = load i64, ptr %i.et, align 1, !tbaa !254
  store i64 %i.eu, ptr %i.es, align 1, !tbaa !254
  %i.ev = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 48
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.bd ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 1, !tbaa !254
  store i64 %i.ex, ptr %i.ev, align 1, !tbaa !254
  %i.ey = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 56
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.bd ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 1, !tbaa !254
  store i64 %i.fa, ptr %i.ey, align 1, !tbaa !254
  %i.fb = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 64 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.bd
  %i.fd = add nuw nsw i32 %.1255140.i.us.i, 8     ; 2 uses
  %exitcond228.not.i.us.i.7 = icmp eq i32 %i.fd, %.sroa.speculated
  br i1 %exitcond228.not.i.us.i.7, label %.loopexit128.i.us64.i, label %.lr.ph143.i.us.i, !llvm.loop !1443

.loopexit128.i.us64.i:                            ; preds = %.lr.ph143.i.us.i.prol.loopexit, %.lr.ph143.i.us.i, %.preheader127.i.us.i
  %.5.i.us65.i = phi ptr [ %.3.lcssa.i.us.i, %.preheader127.i.us.i ], [ %.lcssa394.unr, %.lr.ph143.i.us.i.prol.loopexit ], [ %i.fb, %.lr.ph143.i.us.i ] ; 2 uses
  %indvars.iv.next.i.us66.i = add nuw nsw i64 %indvars.iv.i.us62.i, 8 ; 3 uses
  %i.fe = or disjoint i64 %indvars.iv.next.i.us66.i, 7
  %i.ff = icmp samesign ult i64 %i.fe, %i.bn
  br i1 %i.ff, label %_ZN4ncnn3MatD2Ev.exit270.i.us.i, label %.preheader126.loopexit.i.i, !llvm.loop !1437

.preheader126.loopexit.i.i:                       ; preds = %.loopexit128.i.us64.i, %.loopexit128.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit271.i.us.preheader.i, %.loopexit128.i.preheader.i
  %.us-phi.i = phi ptr [ %i.cx, %.loopexit128.i.loopexit.us.us.i ], [ %i.ap, %.loopexit128.i.preheader.i ], [ %i.ap, %_ZN4ncnn3MatD2Ev.exit271.i.us.preheader.i ], [ %.5.i.us65.i, %.loopexit128.i.us64.i ]
  %.us-phi60.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.loopexit128.i.loopexit.us.us.i ], [ %i.bp, %.loopexit128.i.preheader.i ], [ %i.br, %_ZN4ncnn3MatD2Ev.exit271.i.us.preheader.i ], [ %indvars.iv.next.i.us66.i, %.loopexit128.i.us64.i ]
  %i.fg = trunc nuw nsw i64 %.us-phi60.i to i32
  br label %.preheader126.i.i

.preheader126.i.i:                                ; preds = %.preheader126.loopexit.i.i, %bb.c
  %.0240.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %i.fg, %.preheader126.loopexit.i.i ] ; 3 uses
  %.0233.lcssa.i.i = phi ptr [ %i.ap, %bb.c ], [ %.us-phi.i, %.preheader126.loopexit.i.i ] ; 5 uses
  %i.fh = or disjoint i32 %.0240.lcssa.i.i, 3
  %i.fi = icmp slt i32 %i.fh, %.sroa.speculated64
  br i1 %i.fi, label %.lr.ph169.i.i, label %.preheader122.i.i

.lr.ph169.i.i:                                    ; preds = %.preheader126.i.i
  %i.fj = sdiv i32 %i.y, 8
  %i.fk = sext i32 %i.fj to i64
  %17 = sdiv i32 %.sroa.speculated, 8
  %i.fl = shl i64 %i.bd, 3
  %i.fm = sext i32 %i.y to i64
  %i.fn = icmp sgt i32 %.sroa.speculated, 1
  %i.fo = shl i64 %i.bd, 1
  %i.fp = and i32 %.sroa.speculated, -2
  %i.fq = zext i32 %.0240.lcssa.i.i to i64        ; 6 uses
  %i.fr = sext i32 %.sroa.speculated64 to i64
  %i.fs = sext i32 %i.w to i64                    ; 2 uses
  %invariant.op.i.i = add nsw i64 %i.fr, -3       ; 4 uses
  switch i32 %i.be, label %.loopexit124.i.preheader.i [
    i32 8, label %.lr.ph169.i.split.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit268.i.us.i.preheader
  ]

_ZN4ncnn3MatD2Ev.exit268.i.us.i.preheader:        ; preds = %.lr.ph169.i.i
  %xtraiter406 = and i32 %.sroa.speculated, 1
  %lcmp.mod407.not = icmp eq i32 %xtraiter406, 0
  br label %_ZN4ncnn3MatD2Ev.exit268.i.us.i

.loopexit124.i.preheader.i:                       ; preds = %.lr.ph169.i.i
  %i.ft = add nuw nsw i64 %i.fq, 4                ; 2 uses
  %smax151.i = call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.ft)
  %i.fu = xor i64 %i.fq, -1
  %i.fv = add nsw i64 %smax151.i, %i.fu
  %i.fw = and i64 %i.fv, -4
  %i.fx = add i64 %i.ft, %i.fw
  br label %.preheader122.loopexit.i.i

.lr.ph169.i.split.us.i:                           ; preds = %.lr.ph169.i.i
  %i.fy = icmp sgt i32 %.sroa.speculated, 7
  br i1 %i.fy, label %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i, label %_ZN4ncnn3MatD2Ev.exit269.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit269.i.us.preheader.i:        ; preds = %.lr.ph169.i.split.us.i
  %i.fz = add nuw nsw i64 %i.fq, 4                ; 2 uses
  %smax.i = call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.fz)
  %i.ga = xor i64 %i.fq, -1
  %i.gb = add nsw i64 %smax.i, %i.ga
  %i.gc = and i64 %i.gb, -4
  %i.gd = add i64 %i.fz, %i.gc
  br label %.preheader122.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit269.i.us.us.i:               ; preds = %.lr.ph169.i.split.us.i, %.loopexit124.i.loopexit.us.us.i
  %indvars.iv232.i.us.us.i = phi i64 [ %indvars.iv.next233.i.us.us.i, %.loopexit124.i.loopexit.us.us.i ], [ %i.fq, %.lr.ph169.i.split.us.i ] ; 2 uses
  %.6168.i.us.us.i = phi ptr [ %i.gt, %.loopexit124.i.loopexit.us.us.i ], [ %.0233.lcssa.i.i, %.lr.ph169.i.split.us.i ]
  %i.ge = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1444
  %i.gf = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !1444
  %i.gg = mul i64 %i.gf, %i.fk
  %i.gh = load i64, ptr %i.r, align 8, !tbaa !65, !noalias !1444
  %i.gi = mul i64 %i.gg, %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gi
  %i.gk = add nsw i64 %indvars.iv232.i.us.us.i, %i.fs
  %i.gl = shl nsw i64 %i.gk, 3
  %i.gm = getelementptr inbounds i8, ptr %i.gj, i64 %i.gl
  br label %.lr.ph153.i.us.us.i

.lr.ph153.i.us.us.i:                              ; preds = %.lr.ph153.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i
  %.7152.i.us.us.i = phi ptr [ %i.gt, %.lr.ph153.i.us.us.i ], [ %.6168.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i ] ; 3 uses
  %.0256151.i.us.us.i = phi ptr [ %i.gu, %.lr.ph153.i.us.us.i ], [ %i.gm, %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i ] ; 3 uses
  %.0257150.i.us.us.i = phi i32 [ %i.gv, %.lr.ph153.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i ]
  %i.gn = load <8 x i16>, ptr %.0256151.i.us.us.i, align 1, !tbaa !254 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.0256151.i.us.us.i, i64 16
  %i.gp = load <8 x i16>, ptr %i.go, align 1, !tbaa !254 ; 2 uses
  %i.gq = shufflevector <8 x i16> %i.gn, <8 x i16> %i.gp, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.gr = shufflevector <8 x i16> %i.gn, <8 x i16> %i.gp, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <8 x i16> %i.gq, ptr %.7152.i.us.us.i, align 16, !tbaa !254
  %i.gs = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i, i64 16
  store <8 x i16> %i.gr, ptr %i.gs, align 16, !tbaa !254
  %i.gt = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i, i64 32 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.0256151.i.us.us.i, i64 %i.fl
  %i.gv = add nuw nsw i32 %.0257150.i.us.us.i, 1  ; 2 uses
  %exitcond230.not.i.us.us.i = icmp eq i32 %i.gv, %17
  br i1 %exitcond230.not.i.us.us.i, label %.loopexit124.i.loopexit.us.us.i, label %.lr.ph153.i.us.us.i, !llvm.loop !1447

.loopexit124.i.loopexit.us.us.i:                  ; preds = %.lr.ph153.i.us.us.i
  %indvars.iv.next233.i.us.us.i = add nuw nsw i64 %indvars.iv232.i.us.us.i, 4 ; 3 uses
  %i.gw = icmp slt i64 %indvars.iv.next233.i.us.us.i, %invariant.op.i.i
  br i1 %i.gw, label %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i, label %.preheader122.loopexit.i.i, !llvm.loop !1448

_ZN4ncnn3MatD2Ev.exit268.i.us.i:                  ; preds = %_ZN4ncnn3MatD2Ev.exit268.i.us.i.preheader, %.loopexit124.i.us78.i
  %indvars.iv232.i.us76.i = phi i64 [ %indvars.iv.next233.i.us80.i, %.loopexit124.i.us78.i ], [ %i.fq, %_ZN4ncnn3MatD2Ev.exit268.i.us.i.preheader ] ; 2 uses
  %.6168.i.us77.i = phi ptr [ %.11.i.us79.i, %.loopexit124.i.us78.i ], [ %.0233.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit268.i.us.i.preheader ] ; 2 uses
  %i.gx = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1449
  %i.gy = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !1449
  %i.gz = mul i64 %i.gy, %i.fm
  %i.ha = load i64, ptr %i.r, align 8, !tbaa !65, !noalias !1449
  %i.hb = mul i64 %i.gz, %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hb
  %i.hd = getelementptr i8, ptr %i.hc, i64 %indvars.iv232.i.us76.i
  %i.he = getelementptr i8, ptr %i.hd, i64 %i.fs  ; 2 uses
  br i1 %i.fn, label %.lr.ph158.i.us.i, label %.preheader123.i.us.i

.lr.ph158.i.us.i:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit268.i.us.i, %.lr.ph158.i.us.i
  %.9157.i.us.i = phi ptr [ %i.ib, %.lr.ph158.i.us.i ], [ %.6168.i.us77.i, %_ZN4ncnn3MatD2Ev.exit268.i.us.i ] ; 9 uses
  %.0248156.i.us.i = phi i32 [ %i.id, %.lr.ph158.i.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit268.i.us.i ]
  %.0250155.i.us.i = phi ptr [ %i.ic, %.lr.ph158.i.us.i ], [ %i.he, %_ZN4ncnn3MatD2Ev.exit268.i.us.i ] ; 6 uses
  %i.hf = load i8, ptr %.0250155.i.us.i, align 1, !tbaa !254
  store i8 %i.hf, ptr %.9157.i.us.i, align 1, !tbaa !254
  %i.hg = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 %i.bd ; 4 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !254
  %i.hi = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 1
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !254
  %i.hj = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 1
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !254
  %i.hl = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 2
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !254
  %i.hm = getelementptr i8, ptr %i.hg, i64 1
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !254
  %i.ho = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 3
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !254
  %i.hp = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 2
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !254
  %i.hr = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 4
  store i8 %i.hq, ptr %i.hr, align 1, !tbaa !254
  %i.hs = getelementptr i8, ptr %i.hg, i64 2
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !254
  %i.hu = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 5
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !254
  %i.hv = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 3
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !254
  %i.hx = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 6
  store i8 %i.hw, ptr %i.hx, align 1, !tbaa !254
  %i.hy = getelementptr i8, ptr %i.hg, i64 3
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !254
  %i.ia = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 7
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !254
  %i.ib = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 8 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 %i.fo ; 2 uses
  %i.id = add nuw nsw i32 %.0248156.i.us.i, 2     ; 2 uses
  %i.ie = or disjoint i32 %i.id, 1
  %i.if = icmp slt i32 %i.ie, %.sroa.speculated
  br i1 %i.if, label %.lr.ph158.i.us.i, label %.preheader123.i.us.i, !llvm.loop !1452

.preheader123.i.us.i:                             ; preds = %.lr.ph158.i.us.i, %_ZN4ncnn3MatD2Ev.exit268.i.us.i
  %.0250.lcssa.i.us.i = phi ptr [ %i.he, %_ZN4ncnn3MatD2Ev.exit268.i.us.i ], [ %i.ic, %.lr.ph158.i.us.i ] ; 6 uses
  %.0248.lcssa.i.us.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit268.i.us.i ], [ %i.fp, %.lr.ph158.i.us.i ] ; 4 uses
  %.9.lcssa.i.us.i = phi ptr [ %.6168.i.us77.i, %_ZN4ncnn3MatD2Ev.exit268.i.us.i ], [ %i.ib, %.lr.ph158.i.us.i ] ; 7 uses
  %i.ig = icmp slt i32 %.0248.lcssa.i.us.i, %.sroa.speculated
  br i1 %i.ig, label %.lr.ph165.i.us.i.preheader, label %.loopexit124.i.us78.i

.lr.ph165.i.us.i.preheader:                       ; preds = %.preheader123.i.us.i
  %.neg = or disjoint i32 %.0248.lcssa.i.us.i, 1
  br i1 %lcmp.mod407.not, label %.lr.ph165.i.us.i.prol.loopexit, label %.lr.ph165.i.us.i.prol

.lr.ph165.i.us.i.prol:                            ; preds = %.lr.ph165.i.us.i.preheader
  %i.ih = load i8, ptr %.0250.lcssa.i.us.i, align 1, !tbaa !254
  store i8 %i.ih, ptr %.9.lcssa.i.us.i, align 1, !tbaa !254
  %i.ii = getelementptr inbounds nuw i8, ptr %.0250.lcssa.i.us.i, i64 1
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !254
  %i.ik = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.i, i64 1
  store i8 %i.ij, ptr %i.ik, align 1, !tbaa !254
  %i.il = getelementptr inbounds nuw i8, ptr %.0250.lcssa.i.us.i, i64 2
  %i.im = load i8, ptr %i.il, align 1, !tbaa !254
  %i.in = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.i, i64 2
  store i8 %i.im, ptr %i.in, align 1, !tbaa !254
  %i.io = getelementptr inbounds nuw i8, ptr %.0250.lcssa.i.us.i, i64 3
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !254
  %i.iq = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.i, i64 3
  store i8 %i.ip, ptr %i.iq, align 1, !tbaa !254
  %i.ir = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.i, i64 4 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.0250.lcssa.i.us.i, i64 %i.bd
  %i.it = or disjoint i32 %.0248.lcssa.i.us.i, 1
  br label %.lr.ph165.i.us.i.prol.loopexit

.lr.ph165.i.us.i.prol.loopexit:                   ; preds = %.lr.ph165.i.us.i.prol, %.lr.ph165.i.us.i.preheader
  %.lcssa398.unr = phi ptr [ poison, %.lr.ph165.i.us.i.preheader ], [ %i.ir, %.lr.ph165.i.us.i.prol ]
  %.10164.i.us.i.unr = phi ptr [ %.9.lcssa.i.us.i, %.lr.ph165.i.us.i.preheader ], [ %i.ir, %.lr.ph165.i.us.i.prol ]
  %.1249163.i.us.i.unr = phi i32 [ %.0248.lcssa.i.us.i, %.lr.ph165.i.us.i.preheader ], [ %i.it, %.lr.ph165.i.us.i.prol ]
  %.1251162.i.us.i.unr = phi ptr [ %.0250.lcssa.i.us.i, %.lr.ph165.i.us.i.preheader ], [ %i.is, %.lr.ph165.i.us.i.prol ]
  %i.iu = icmp eq i32 %.sroa.speculated, %.neg
  br i1 %i.iu, label %.loopexit124.i.us78.i, label %.lr.ph165.i.us.i

.lr.ph165.i.us.i:                                 ; preds = %.lr.ph165.i.us.i.prol.loopexit, %.lr.ph165.i.us.i
  %.10164.i.us.i = phi ptr [ %i.jr, %.lr.ph165.i.us.i ], [ %.10164.i.us.i.unr, %.lr.ph165.i.us.i.prol.loopexit ] ; 9 uses
  %.1249163.i.us.i = phi i32 [ %i.jt, %.lr.ph165.i.us.i ], [ %.1249163.i.us.i.unr, %.lr.ph165.i.us.i.prol.loopexit ]
  %.1251162.i.us.i = phi ptr [ %i.js, %.lr.ph165.i.us.i ], [ %.1251162.i.us.i.unr, %.lr.ph165.i.us.i.prol.loopexit ] ; 5 uses
  %i.iv = load i8, ptr %.1251162.i.us.i, align 1, !tbaa !254
  store i8 %i.iv, ptr %.10164.i.us.i, align 1, !tbaa !254
  %i.iw = getelementptr inbounds nuw i8, ptr %.1251162.i.us.i, i64 1
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !254
  %i.iy = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 1
  store i8 %i.ix, ptr %i.iy, align 1, !tbaa !254
  %i.iz = getelementptr inbounds nuw i8, ptr %.1251162.i.us.i, i64 2
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !254
  %i.jb = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 2
  store i8 %i.ja, ptr %i.jb, align 1, !tbaa !254
  %i.jc = getelementptr inbounds nuw i8, ptr %.1251162.i.us.i, i64 3
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !254
  %i.je = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 3
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !254
  %i.jf = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 4
  %i.jg = getelementptr inbounds nuw i8, ptr %.1251162.i.us.i, i64 %i.bd ; 5 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !254
  store i8 %i.jh, ptr %i.jf, align 1, !tbaa !254
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 1
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !254
  %i.jk = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 5
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !254
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 2
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !254
  %i.jn = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 6
  store i8 %i.jm, ptr %i.jn, align 1, !tbaa !254
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jg, i64 3
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !254
  %i.jq = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 7
  store i8 %i.jp, ptr %i.jq, align 1, !tbaa !254
  %i.jr = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 8 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.bd
  %i.jt = add nuw nsw i32 %.1249163.i.us.i, 2     ; 2 uses
  %exitcond231.not.i.us.i.1 = icmp eq i32 %i.jt, %.sroa.speculated
  br i1 %exitcond231.not.i.us.i.1, label %.loopexit124.i.us78.i, label %.lr.ph165.i.us.i, !llvm.loop !1453

.loopexit124.i.us78.i:                            ; preds = %.lr.ph165.i.us.i.prol.loopexit, %.lr.ph165.i.us.i, %.preheader123.i.us.i
  %.11.i.us79.i = phi ptr [ %.9.lcssa.i.us.i, %.preheader123.i.us.i ], [ %.lcssa398.unr, %.lr.ph165.i.us.i.prol.loopexit ], [ %i.jr, %.lr.ph165.i.us.i ] ; 2 uses
  %indvars.iv.next233.i.us80.i = add nuw nsw i64 %indvars.iv232.i.us76.i, 4 ; 3 uses
  %i.ju = icmp slt i64 %indvars.iv.next233.i.us80.i, %invariant.op.i.i
  br i1 %i.ju, label %_ZN4ncnn3MatD2Ev.exit268.i.us.i, label %.preheader122.loopexit.i.i, !llvm.loop !1448

.preheader122.loopexit.i.i:                       ; preds = %.loopexit124.i.us78.i, %.loopexit124.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit269.i.us.preheader.i, %.loopexit124.i.preheader.i
  %.us-phi73.i = phi ptr [ %i.gt, %.loopexit124.i.loopexit.us.us.i ], [ %.0233.lcssa.i.i, %.loopexit124.i.preheader.i ], [ %.0233.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit269.i.us.preheader.i ], [ %.11.i.us79.i, %.loopexit124.i.us78.i ]
  %.us-phi74.i = phi i64 [ %indvars.iv.next233.i.us.us.i, %.loopexit124.i.loopexit.us.us.i ], [ %i.fx, %.loopexit124.i.preheader.i ], [ %i.gd, %_ZN4ncnn3MatD2Ev.exit269.i.us.preheader.i ], [ %indvars.iv.next233.i.us80.i, %.loopexit124.i.us78.i ]
  %i.jv = trunc nuw nsw i64 %.us-phi74.i to i32
  br label %.preheader122.i.i

.preheader122.i.i:                                ; preds = %.preheader122.loopexit.i.i, %.preheader126.i.i
  %.1241.lcssa.i.i = phi i32 [ %.0240.lcssa.i.i, %.preheader126.i.i ], [ %i.jv, %.preheader122.loopexit.i.i ] ; 3 uses
  %.6.lcssa.i.i = phi ptr [ %.0233.lcssa.i.i, %.preheader126.i.i ], [ %.us-phi73.i, %.preheader122.loopexit.i.i ] ; 2 uses
  %i.jw = or disjoint i32 %.1241.lcssa.i.i, 1
  %i.jx = icmp slt i32 %i.jw, %.sroa.speculated64
  br i1 %i.jx, label %.lr.ph191.i.i, label %.preheader.i.i

.lr.ph191.i.i:                                    ; preds = %.preheader122.i.i
  %i.jy = sdiv i32 %i.y, 8
  %i.jz = sext i32 %i.jy to i64
  %18 = sdiv i32 %.sroa.speculated, 8             ; 3 uses
  %i.ka = icmp sgt i32 %.sroa.speculated, 7
  %i.kb = shl i64 %i.bd, 3                        ; 2 uses
  %i.kc = sext i32 %i.y to i64
  %i.kd = icmp sgt i32 %.sroa.speculated, 1
  %i.ke = shl i64 %i.bd, 1                        ; 3 uses
  %i.kf = and i32 %.sroa.speculated, -2           ; 2 uses
  %i.kg = zext nneg i32 %.1241.lcssa.i.i to i64
  %i.kh = sext i32 %.sroa.speculated64 to i64
  %i.ki = sext i32 %i.w to i64                    ; 2 uses
  %invariant.op277.i.i = add nsw i64 %i.kh, -1
  %i.kj = add i32 %.sroa.speculated, -2           ; 2 uses
  %i.kk = lshr i32 %i.kj, 1                       ; 2 uses
  %i.kl = add nuw i32 %i.kk, 1                    ; 2 uses
  %i.km = icmp eq i32 %i.kk, 0
  %unroll_iter = and i32 %i.kl, -2
  %i.kn = and i32 %i.kj, 2
  %lcmp.mod410.not.not = icmp eq i32 %i.kn, 0
  %lcmp.mod413 = trunc i32 %i.kl to i1
  %xtraiter417 = and i32 %18, 1
  %i.ko = and i32 %.sroa.speculated, 2147483640
  %19 = icmp eq i32 %i.ko, 8
  %unroll_iter421 = and i32 %18, 268435454
  %lcmp.mod418.not = icmp eq i32 %xtraiter417, 0
  %lcmp.mod420 = trunc i32 %18 to i1
  br label %bb.e

.preheader.loopexit.i.i:                          ; preds = %.loopexit120.i.i
  %i.kp = trunc nsw i64 %indvars.iv.next238.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %.preheader122.i.i
  %.2242.lcssa.i.i = phi i32 [ %.1241.lcssa.i.i, %.preheader122.i.i ], [ %i.kp, %.preheader.loopexit.i.i ] ; 3 uses
  %.12.lcssa.i.i = phi ptr [ %.6.lcssa.i.i, %.preheader122.i.i ], [ %.17.i.i, %.preheader.loopexit.i.i ] ; 2 uses
  %i.kq = icmp slt i32 %.2242.lcssa.i.i, %.sroa.speculated64
  br i1 %i.kq, label %.lr.ph206.i.i, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph206.i.i:                                    ; preds = %.preheader.i.i
  %i.kr = sdiv i32 %i.y, 8
  %i.ks = sext i32 %i.kr to i64
  %i.kt = sdiv i32 %.sroa.speculated, 8           ; 3 uses
  %i.ku = shl i64 %i.bd, 3                        ; 9 uses
  %i.kv = sext i32 %i.y to i64
  switch i32 %i.be, label %_ZN4ncnn3MatD2Ev.exit [
    i32 8, label %.lr.ph206.split.us.split.i.i
    i32 1, label %.lr.ph206.split.split.i.i
  ]

.lr.ph206.split.us.split.i.i:                     ; preds = %.lr.ph206.i.i
  %i.kw = icmp sgt i32 %.sroa.speculated, 7
  br i1 %i.kw, label %_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i:        ; preds = %.lr.ph206.split.us.split.i.i
  %i.kx = sext i32 %.2242.lcssa.i.i to i64
  %i.ky = sext i32 %i.w to i64
  %wide.trip.count249.i.i = sext i32 %.sroa.speculated64 to i64
  %i.kz = add nsw i32 %i.kt, -1
  %xtraiter430 = and i32 %i.kt, 7                 ; 3 uses
  %i.la = icmp ult i32 %i.kz, 7
  %unroll_iter435 = and i32 %i.kt, 268435448
  %lcmp.mod432.not = icmp eq i32 %xtraiter430, 0
  %lcmp.mod434 = icmp ne i32 %xtraiter430, 0
  br label %_ZN4ncnn3MatD2Ev.exit265.us.i.i

_ZN4ncnn3MatD2Ev.exit265.us.i.i:                  ; preds = %..loopexit118_crit_edge.us.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i
  %indvars.iv246.i.i = phi i64 [ %i.kx, %_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i ], [ %indvars.iv.next247.i.i, %..loopexit118_crit_edge.us.i.i ] ; 2 uses
  %.18205.us.i.i = phi ptr [ %.12.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i ], [ %.lcssa405, %..loopexit118_crit_edge.us.i.i ] ; 2 uses
  %i.lb = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1454
  %i.lc = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !1454
  %i.ld = mul i64 %i.lc, %i.ks
  %i.le = load i64, ptr %i.r, align 8, !tbaa !65, !noalias !1454
  %i.lf = mul i64 %i.ld, %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.lf
  %i.lh = add nsw i64 %indvars.iv246.i.i, %i.ky
  %i.li = shl nsw i64 %i.lh, 3
  %i.lj = getelementptr inbounds i8, ptr %i.lg, i64 %i.li ; 2 uses
  br i1 %i.la, label %.epil.preheader429, label %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new

_ZN4ncnn3MatD2Ev.exit265.us.i.i.new:              ; preds = %_ZN4ncnn3MatD2Ev.exit265.us.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new
  %.19196.us.i.i = phi ptr [ %i.mg, %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new ], [ %.18205.us.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ] ; 9 uses
  %.0235194.us.i.i = phi ptr [ %i.mh, %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new ], [ %i.lj, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ] ; 2 uses
  %niter436 = phi i32 [ %niter436.next.7, %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ]
  %i.lk = load i64, ptr %.0235194.us.i.i, align 1, !tbaa !254
  store i64 %i.lk, ptr %.19196.us.i.i, align 1, !tbaa !254
  %i.ll = getelementptr inbounds nuw i8, ptr %.19196.us.i.i, i64 8
  %i.lm = getelementptr inbounds nuw i8, ptr %.0235194.us.i.i, i64 %i.ku ; 2 uses
  %i.ln = load i64, ptr %i.lm, align 1, !tbaa !254
  store i64 %i.ln, ptr %i.ll, align 1, !tbaa !254
  %i.lo = getelementptr inbounds nuw i8, ptr %.19196.us.i.i, i64 16
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.ku ; 2 uses
  %i.lq = load i64, ptr %i.lp, align 1, !tbaa !254
  store i64 %i.lq, ptr %i.lo, align 1, !tbaa !254
  %i.lr = getelementptr inbounds nuw i8, ptr %.19196.us.i.i, i64 24
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.ku ; 2 uses
  %i.lt = load i64, ptr %i.ls, align 1, !tbaa !254
  store i64 %i.lt, ptr %i.lr, align 1, !tbaa !254
  %i.lu = getelementptr inbounds nuw i8, ptr %.19196.us.i.i, i64 32
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.ku ; 2 uses
  %i.lw = load i64, ptr %i.lv, align 1, !tbaa !254
  store i64 %i.lw, ptr %i.lu, align 1, !tbaa !254
  %i.lx = getelementptr inbounds nuw i8, ptr %.19196.us.i.i, i64 40
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.ku ; 2 uses
  %i.lz = load i64, ptr %i.ly, align 1, !tbaa !254
  store i64 %i.lz, ptr %i.lx, align 1, !tbaa !254
  %i.ma = getelementptr inbounds nuw i8, ptr %.19196.us.i.i, i64 48
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.ku ; 2 uses
  %i.mc = load i64, ptr %i.mb, align 1, !tbaa !254
  store i64 %i.mc, ptr %i.ma, align 1, !tbaa !254
  %i.md = getelementptr inbounds nuw i8, ptr %.19196.us.i.i, i64 56
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.ku ; 2 uses
  %i.mf = load i64, ptr %i.me, align 1, !tbaa !254
  store i64 %i.mf, ptr %i.md, align 1, !tbaa !254
  %i.mg = getelementptr inbounds nuw i8, ptr %.19196.us.i.i, i64 64 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.ku ; 2 uses
  %niter436.next.7 = add i32 %niter436, 8         ; 2 uses
  %niter436.ncmp.7 = icmp eq i32 %niter436.next.7, %unroll_iter435
  br i1 %niter436.ncmp.7, label %..loopexit118_crit_edge.us.i.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new, !llvm.loop !1457

..loopexit118_crit_edge.us.i.i.unr-lcssa:         ; preds = %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new
  br i1 %lcmp.mod432.not, label %..loopexit118_crit_edge.us.i.i, label %.epil.preheader429

.epil.preheader429:                               ; preds = %..loopexit118_crit_edge.us.i.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit265.us.i.i
  %.19196.us.i.i.epil.init = phi ptr [ %.18205.us.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ], [ %i.mg, %..loopexit118_crit_edge.us.i.i.unr-lcssa ]
  %.0235194.us.i.i.epil.init = phi ptr [ %i.lj, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ], [ %i.mh, %..loopexit118_crit_edge.us.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod434)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader429
  %.19196.us.i.i.epil = phi ptr [ %.19196.us.i.i.epil.init, %.epil.preheader429 ], [ %i.mj, %bb.d ] ; 2 uses
  %.0235194.us.i.i.epil = phi ptr [ %.0235194.us.i.i.epil.init, %.epil.preheader429 ], [ %i.mk, %bb.d ] ; 2 uses
  %epil.iter431 = phi i32 [ 0, %.epil.preheader429 ], [ %epil.iter431.next, %bb.d ]
  %i.mi = load i64, ptr %.0235194.us.i.i.epil, align 1, !tbaa !254
  store i64 %i.mi, ptr %.19196.us.i.i.epil, align 1, !tbaa !254
  %i.mj = getelementptr inbounds nuw i8, ptr %.19196.us.i.i.epil, i64 8 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.0235194.us.i.i.epil, i64 %i.ku
  %epil.iter431.next = add i32 %epil.iter431, 1   ; 2 uses
  %epil.iter431.cmp.not = icmp eq i32 %epil.iter431.next, %xtraiter430
  br i1 %epil.iter431.cmp.not, label %..loopexit118_crit_edge.us.i.i, label %bb.d, !llvm.loop !1458

..loopexit118_crit_edge.us.i.i:                   ; preds = %bb.d, %..loopexit118_crit_edge.us.i.i.unr-lcssa
  %.lcssa405 = phi ptr [ %i.mg, %..loopexit118_crit_edge.us.i.i.unr-lcssa ], [ %i.mj, %bb.d ]
  %indvars.iv.next247.i.i = add nsw i64 %indvars.iv246.i.i, 1 ; 2 uses
  %exitcond250.not.i.i = icmp eq i64 %indvars.iv.next247.i.i, %wide.trip.count249.i.i
  br i1 %exitcond250.not.i.i, label %_ZN4ncnn3MatD2Ev.exit, label %_ZN4ncnn3MatD2Ev.exit265.us.i.i, !llvm.loop !1459

.lr.ph206.split.split.i.i:                        ; preds = %.lr.ph206.i.i
  %i.ml = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.ml, label %_ZN4ncnn3MatD2Ev.exit.preheader.i.i, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit.preheader.i.i:              ; preds = %.lr.ph206.split.split.i.i
  %i.mm = sext i32 %.2242.lcssa.i.i to i64
  %i.mn = sext i32 %i.w to i64
  %wide.trip.count.i.i = sext i32 %.sroa.speculated64 to i64
  %i.mo = add nsw i32 %.sroa.speculated, -1
  %xtraiter423 = and i32 %.sroa.speculated, 7     ; 3 uses
  %i.mp = icmp ult i32 %i.mo, 7
  %unroll_iter427 = and i32 %.sroa.speculated, 2147483640
  %lcmp.mod424.not = icmp eq i32 %xtraiter423, 0
  %lcmp.mod426 = icmp ne i32 %xtraiter423, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i.i

bb.e:                                             ; preds = %.loopexit120.i.i, %.lr.ph191.i.i
  %indvars.iv237.i.i = phi i64 [ %i.kg, %.lr.ph191.i.i ], [ %indvars.iv.next238.i.i, %.loopexit120.i.i ] ; 3 uses
  %.12190.i.i = phi ptr [ %.6.lcssa.i.i, %.lr.ph191.i.i ], [ %.17.i.i, %.loopexit120.i.i ] ; 7 uses
  switch i32 %i.be, label %.loopexit120.i.i [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit267.i.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit266.i.i
  ]

_ZN4ncnn3MatD2Ev.exit267.i.i:                     ; preds = %bb.e
  br i1 %i.ka, label %.lr.ph175.preheader.i.i, label %.loopexit120.i.i

.lr.ph175.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit267.i.i
  %i.mq = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1460
  %i.mr = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !1460
  %i.ms = mul i64 %i.mr, %i.jz
  %i.mt = load i64, ptr %i.r, align 8, !tbaa !65, !noalias !1460
  %i.mu = mul i64 %i.ms, %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.mu
  %i.mw = add nsw i64 %indvars.iv237.i.i, %i.ki
  %i.mx = shl nsw i64 %i.mw, 3
  %i.my = getelementptr inbounds i8, ptr %i.mv, i64 %i.mx ; 2 uses
  br i1 %19, label %.lr.ph175.i.i.epil.preheader, label %.lr.ph175.i.i

.lr.ph175.i.i:                                    ; preds = %.lr.ph175.preheader.i.i, %.lr.ph175.i.i
  %.13174.i.i = phi ptr [ %i.nr, %.lr.ph175.i.i ], [ %.12190.i.i, %.lr.ph175.preheader.i.i ] ; 3 uses
  %.0247172.i.i = phi ptr [ %i.ns, %.lr.ph175.i.i ], [ %i.my, %.lr.ph175.preheader.i.i ] ; 3 uses
  %niter422 = phi i32 [ %niter422.next.1, %.lr.ph175.i.i ], [ 0, %.lr.ph175.preheader.i.i ]
  %i.mz = load i64, ptr %.0247172.i.i, align 1, !tbaa !254
  %i.na = insertelement <2 x i64> poison, i64 %i.mz, i64 0
  %i.nb = getelementptr inbounds nuw i8, ptr %.0247172.i.i, i64 8
  %i.nc = load i64, ptr %i.nb, align 1, !tbaa !254
  %i.nd = insertelement <2 x i64> poison, i64 %i.nc, i64 0
  %i.ne = bitcast <2 x i64> %i.na to <8 x i16>
  %i.nf = bitcast <2 x i64> %i.nd to <8 x i16>
  %i.ng = shufflevector <8 x i16> %i.ne, <8 x i16> %i.nf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.ng, ptr %.13174.i.i, align 1, !tbaa !254
  %i.nh = getelementptr inbounds nuw i8, ptr %.13174.i.i, i64 16
  %i.ni = getelementptr inbounds nuw i8, ptr %.0247172.i.i, i64 %i.kb ; 3 uses
  %i.nj = load i64, ptr %i.ni, align 1, !tbaa !254
  %i.nk = insertelement <2 x i64> poison, i64 %i.nj, i64 0
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nm = load i64, ptr %i.nl, align 1, !tbaa !254
  %i.nn = insertelement <2 x i64> poison, i64 %i.nm, i64 0
  %i.no = bitcast <2 x i64> %i.nk to <8 x i16>
  %i.np = bitcast <2 x i64> %i.nn to <8 x i16>
  %i.nq = shufflevector <8 x i16> %i.no, <8 x i16> %i.np, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.nq, ptr %i.nh, align 1, !tbaa !254
  %i.nr = getelementptr inbounds nuw i8, ptr %.13174.i.i, i64 32 ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.kb ; 2 uses
  %niter422.next.1 = add i32 %niter422, 2         ; 2 uses
  %niter422.ncmp.1 = icmp eq i32 %niter422.next.1, %unroll_iter421
  br i1 %niter422.ncmp.1, label %.loopexit120.i.i.loopexit.unr-lcssa, label %.lr.ph175.i.i, !llvm.loop !1463

_ZN4ncnn3MatD2Ev.exit266.i.i:                     ; preds = %bb.e
  %i.nt = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1464
  %i.nu = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !1464
  %i.nv = mul i64 %i.nu, %i.kc
  %i.nw = load i64, ptr %i.r, align 8, !tbaa !65, !noalias !1464
  %i.nx = mul i64 %i.nv, %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = getelementptr i8, ptr %i.ny, i64 %indvars.iv237.i.i
  %i.oa = getelementptr i8, ptr %i.nz, i64 %i.ki  ; 3 uses
  br i1 %i.kd, label %.lr.ph180.i.i.preheader, label %.preheader119.i.i

.lr.ph180.i.i.preheader:                          ; preds = %_ZN4ncnn3MatD2Ev.exit266.i.i
  br i1 %i.km, label %.lr.ph180.i.i.epil.preheader, label %.lr.ph180.i.i

.preheader119.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph180.i.i
  br i1 %lcmp.mod410.not.not, label %.lr.ph180.i.i.epil.preheader, label %.preheader119.i.i

.lr.ph180.i.i.epil.preheader:                     ; preds = %.preheader119.i.i.loopexit.unr-lcssa, %.lr.ph180.i.i.preheader
  %.15179.i.i.epil.init = phi ptr [ %.12190.i.i, %.lr.ph180.i.i.preheader ], [ %i.pu, %.preheader119.i.i.loopexit.unr-lcssa ] ; 5 uses
  %.0238177.i.i.epil.init = phi ptr [ %i.oa, %.lr.ph180.i.i.preheader ], [ %i.pv, %.preheader119.i.i.loopexit.unr-lcssa ] ; 4 uses
  call void @llvm.assume(i1 %lcmp.mod413)
  %i.ob = load i8, ptr %.0238177.i.i.epil.init, align 1, !tbaa !254
  store i8 %i.ob, ptr %.15179.i.i.epil.init, align 1, !tbaa !254
  %i.oc = getelementptr inbounds nuw i8, ptr %.0238177.i.i.epil.init, i64 %i.bd ; 2 uses
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !254
  %i.oe = getelementptr inbounds nuw i8, ptr %.15179.i.i.epil.init, i64 1
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !254
  %i.of = getelementptr inbounds nuw i8, ptr %.0238177.i.i.epil.init, i64 1
  %i.og = load i8, ptr %i.of, align 1, !tbaa !254
  %i.oh = getelementptr inbounds nuw i8, ptr %.15179.i.i.epil.init, i64 2
  store i8 %i.og, ptr %i.oh, align 1, !tbaa !254
  %i.oi = getelementptr i8, ptr %i.oc, i64 1
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !254
  %i.ok = getelementptr inbounds nuw i8, ptr %.15179.i.i.epil.init, i64 3
  store i8 %i.oj, ptr %i.ok, align 1, !tbaa !254
  %i.ol = getelementptr inbounds nuw i8, ptr %.15179.i.i.epil.init, i64 4
  %i.om = getelementptr inbounds nuw i8, ptr %.0238177.i.i.epil.init, i64 %i.ke
  br label %.preheader119.i.i

.preheader119.i.i:                                ; preds = %.lr.ph180.i.i.epil.preheader, %.preheader119.i.i.loopexit.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit266.i.i
  %.0238.lcssa.i.i = phi ptr [ %i.oa, %_ZN4ncnn3MatD2Ev.exit266.i.i ], [ %i.pv, %.preheader119.i.i.loopexit.unr-lcssa ], [ %i.om, %.lr.ph180.i.i.epil.preheader ] ; 2 uses
  %.0236.lcssa.i.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit266.i.i ], [ %i.kf, %.preheader119.i.i.loopexit.unr-lcssa ], [ %i.kf, %.lr.ph180.i.i.epil.preheader ] ; 5 uses
  %.15.lcssa.i.i = phi ptr [ %.12190.i.i, %_ZN4ncnn3MatD2Ev.exit266.i.i ], [ %i.pu, %.preheader119.i.i.loopexit.unr-lcssa ], [ %i.ol, %.lr.ph180.i.i.epil.preheader ] ; 3 uses
  %i.on = icmp slt i32 %.0236.lcssa.i.i, %.sroa.speculated
  br i1 %i.on, label %.lr.ph187.i.i.preheader, label %.loopexit120.i.i

.lr.ph187.i.i.preheader:                          ; preds = %.preheader119.i.i
  %i.oo = sub i32 %.sroa.speculated, %.0236.lcssa.i.i
  %xtraiter414 = and i32 %i.oo, 3                 ; 2 uses
  %lcmp.mod415.not = icmp eq i32 %xtraiter414, 0
  br i1 %lcmp.mod415.not, label %.lr.ph187.i.i.prol.loopexit, label %.lr.ph187.i.i.prol

.lr.ph187.i.i.prol:                               ; preds = %.lr.ph187.i.i.preheader, %.lr.ph187.i.i.prol
  %.16186.i.i.prol = phi ptr [ %i.ot, %.lr.ph187.i.i.prol ], [ %.15.lcssa.i.i, %.lr.ph187.i.i.preheader ] ; 3 uses
  %.1237185.i.i.prol = phi i32 [ %i.ov, %.lr.ph187.i.i.prol ], [ %.0236.lcssa.i.i, %.lr.ph187.i.i.preheader ]
  %.1239184.i.i.prol = phi ptr [ %i.ou, %.lr.ph187.i.i.prol ], [ %.0238.lcssa.i.i, %.lr.ph187.i.i.preheader ] ; 3 uses
  %prol.iter416 = phi i32 [ %prol.iter416.next, %.lr.ph187.i.i.prol ], [ 0, %.lr.ph187.i.i.preheader ]
  %i.op = load i8, ptr %.1239184.i.i.prol, align 1, !tbaa !254
  store i8 %i.op, ptr %.16186.i.i.prol, align 1, !tbaa !254
  %i.oq = getelementptr inbounds nuw i8, ptr %.1239184.i.i.prol, i64 1
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !254
  %i.os = getelementptr inbounds nuw i8, ptr %.16186.i.i.prol, i64 1
  store i8 %i.or, ptr %i.os, align 1, !tbaa !254
  %i.ot = getelementptr inbounds nuw i8, ptr %.16186.i.i.prol, i64 2 ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.1239184.i.i.prol, i64 %i.bd ; 2 uses
  %i.ov = add nuw nsw i32 %.1237185.i.i.prol, 1   ; 2 uses
  %prol.iter416.next = add i32 %prol.iter416, 1   ; 2 uses
  %prol.iter416.cmp.not = icmp eq i32 %prol.iter416.next, %xtraiter414
  br i1 %prol.iter416.cmp.not, label %.lr.ph187.i.i.prol.loopexit, label %.lr.ph187.i.i.prol, !llvm.loop !1467

.lr.ph187.i.i.prol.loopexit:                      ; preds = %.lr.ph187.i.i.prol, %.lr.ph187.i.i.preheader
  %.lcssa402.unr = phi ptr [ poison, %.lr.ph187.i.i.preheader ], [ %i.ot, %.lr.ph187.i.i.prol ]
  %.16186.i.i.unr = phi ptr [ %.15.lcssa.i.i, %.lr.ph187.i.i.preheader ], [ %i.ot, %.lr.ph187.i.i.prol ]
  %.1237185.i.i.unr = phi i32 [ %.0236.lcssa.i.i, %.lr.ph187.i.i.preheader ], [ %i.ov, %.lr.ph187.i.i.prol ]
  %.1239184.i.i.unr = phi ptr [ %.0238.lcssa.i.i, %.lr.ph187.i.i.preheader ], [ %i.ou, %.lr.ph187.i.i.prol ]
  %i.ow = sub i32 %.0236.lcssa.i.i, %.sroa.speculated
  %i.ox = icmp ugt i32 %i.ow, -4
  br i1 %i.ox, label %.loopexit120.i.i, label %.lr.ph187.i.i

.lr.ph180.i.i:                                    ; preds = %.lr.ph180.i.i.preheader, %.lr.ph180.i.i
  %.15179.i.i = phi ptr [ %i.pu, %.lr.ph180.i.i ], [ %.12190.i.i, %.lr.ph180.i.i.preheader ] ; 9 uses
  %.0238177.i.i = phi ptr [ %i.pv, %.lr.ph180.i.i ], [ %i.oa, %.lr.ph180.i.i.preheader ] ; 4 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph180.i.i ], [ 0, %.lr.ph180.i.i.preheader ]
  %i.oy = load i8, ptr %.0238177.i.i, align 1, !tbaa !254
  store i8 %i.oy, ptr %.15179.i.i, align 1, !tbaa !254
  %i.oz = getelementptr inbounds nuw i8, ptr %.0238177.i.i, i64 %i.bd ; 2 uses
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !254
  %i.pb = getelementptr inbounds nuw i8, ptr %.15179.i.i, i64 1
  store i8 %i.pa, ptr %i.pb, align 1, !tbaa !254
  %i.pc = getelementptr inbounds nuw i8, ptr %.0238177.i.i, i64 1
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !254
  %i.pe = getelementptr inbounds nuw i8, ptr %.15179.i.i, i64 2
  store i8 %i.pd, ptr %i.pe, align 1, !tbaa !254
  %i.pf = getelementptr i8, ptr %i.oz, i64 1
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !254
  %i.ph = getelementptr inbounds nuw i8, ptr %.15179.i.i, i64 3
  store i8 %i.pg, ptr %i.ph, align 1, !tbaa !254
  %i.pi = getelementptr inbounds nuw i8, ptr %.15179.i.i, i64 4
  %i.pj = getelementptr inbounds nuw i8, ptr %.0238177.i.i, i64 %i.ke ; 4 uses
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !254
  store i8 %i.pk, ptr %i.pi, align 1, !tbaa !254
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.bd ; 2 uses
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !254
  %i.pn = getelementptr inbounds nuw i8, ptr %.15179.i.i, i64 5
  store i8 %i.pm, ptr %i.pn, align 1, !tbaa !254
  %i.po = getelementptr inbounds nuw i8, ptr %i.pj, i64 1
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !254
  %i.pq = getelementptr inbounds nuw i8, ptr %.15179.i.i, i64 6
  store i8 %i.pp, ptr %i.pq, align 1, !tbaa !254
  %i.pr = getelementptr i8, ptr %i.pl, i64 1
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !254
  %i.pt = getelementptr inbounds nuw i8, ptr %.15179.i.i, i64 7
  store i8 %i.ps, ptr %i.pt, align 1, !tbaa !254
  %i.pu = getelementptr inbounds nuw i8, ptr %.15179.i.i, i64 8 ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.ke ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader119.i.i.loopexit.unr-lcssa, label %.lr.ph180.i.i, !llvm.loop !1468

.lr.ph187.i.i:                                    ; preds = %.lr.ph187.i.i.prol.loopexit, %.lr.ph187.i.i
  %.16186.i.i = phi ptr [ %i.qs, %.lr.ph187.i.i ], [ %.16186.i.i.unr, %.lr.ph187.i.i.prol.loopexit ] ; 9 uses
  %.1237185.i.i = phi i32 [ %i.qu, %.lr.ph187.i.i ], [ %.1237185.i.i.unr, %.lr.ph187.i.i.prol.loopexit ]
  %.1239184.i.i = phi ptr [ %i.qt, %.lr.ph187.i.i ], [ %.1239184.i.i.unr, %.lr.ph187.i.i.prol.loopexit ] ; 3 uses
  %i.pw = load i8, ptr %.1239184.i.i, align 1, !tbaa !254
  store i8 %i.pw, ptr %.16186.i.i, align 1, !tbaa !254
  %i.px = getelementptr inbounds nuw i8, ptr %.1239184.i.i, i64 1
  %i.py = load i8, ptr %i.px, align 1, !tbaa !254
  %i.pz = getelementptr inbounds nuw i8, ptr %.16186.i.i, i64 1
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !254
  %i.qa = getelementptr inbounds nuw i8, ptr %.16186.i.i, i64 2
  %i.qb = getelementptr inbounds nuw i8, ptr %.1239184.i.i, i64 %i.bd ; 3 uses
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !254
  store i8 %i.qc, ptr %i.qa, align 1, !tbaa !254
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 1
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !254
  %i.qf = getelementptr inbounds nuw i8, ptr %.16186.i.i, i64 3
  store i8 %i.qe, ptr %i.qf, align 1, !tbaa !254
  %i.qg = getelementptr inbounds nuw i8, ptr %.16186.i.i, i64 4
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qb, i64 %i.bd ; 3 uses
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !254
  store i8 %i.qi, ptr %i.qg, align 1, !tbaa !254
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 1
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !254
  %i.ql = getelementptr inbounds nuw i8, ptr %.16186.i.i, i64 5
  store i8 %i.qk, ptr %i.ql, align 1, !tbaa !254
  %i.qm = getelementptr inbounds nuw i8, ptr %.16186.i.i, i64 6
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qh, i64 %i.bd ; 3 uses
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !254
  store i8 %i.qo, ptr %i.qm, align 1, !tbaa !254
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 1
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !254
  %i.qr = getelementptr inbounds nuw i8, ptr %.16186.i.i, i64 7
  store i8 %i.qq, ptr %i.qr, align 1, !tbaa !254
  %i.qs = getelementptr inbounds nuw i8, ptr %.16186.i.i, i64 8 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.bd
  %i.qu = add nuw nsw i32 %.1237185.i.i, 4        ; 2 uses
  %exitcond236.not.i.i.3 = icmp eq i32 %i.qu, %.sroa.speculated
  br i1 %exitcond236.not.i.i.3, label %.loopexit120.i.i, label %.lr.ph187.i.i, !llvm.loop !1469

.loopexit120.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph175.i.i
  br i1 %lcmp.mod418.not, label %.loopexit120.i.i, label %.lr.ph175.i.i.epil.preheader

.lr.ph175.i.i.epil.preheader:                     ; preds = %.loopexit120.i.i.loopexit.unr-lcssa, %.lr.ph175.preheader.i.i
  %.13174.i.i.epil.init = phi ptr [ %.12190.i.i, %.lr.ph175.preheader.i.i ], [ %i.nr, %.loopexit120.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.0247172.i.i.epil.init = phi ptr [ %i.my, %.lr.ph175.preheader.i.i ], [ %i.ns, %.loopexit120.i.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod420)
  %i.qv = load i64, ptr %.0247172.i.i.epil.init, align 1, !tbaa !254
  %i.qw = insertelement <2 x i64> poison, i64 %i.qv, i64 0
  %i.qx = getelementptr inbounds nuw i8, ptr %.0247172.i.i.epil.init, i64 8
  %i.qy = load i64, ptr %i.qx, align 1, !tbaa !254
  %i.qz = insertelement <2 x i64> poison, i64 %i.qy, i64 0
  %i.ra = bitcast <2 x i64> %i.qw to <8 x i16>
  %i.rb = bitcast <2 x i64> %i.qz to <8 x i16>
  %i.rc = shufflevector <8 x i16> %i.ra, <8 x i16> %i.rb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.rc, ptr %.13174.i.i.epil.init, align 1, !tbaa !254
  %i.rd = getelementptr inbounds nuw i8, ptr %.13174.i.i.epil.init, i64 16
  br label %.loopexit120.i.i

.loopexit120.i.i:                                 ; preds = %.lr.ph187.i.i.prol.loopexit, %.lr.ph187.i.i, %.lr.ph175.i.i.epil.preheader, %.loopexit120.i.i.loopexit.unr-lcssa, %.preheader119.i.i, %_ZN4ncnn3MatD2Ev.exit267.i.i, %bb.e
  %.17.i.i = phi ptr [ %.12190.i.i, %bb.e ], [ %.15.lcssa.i.i, %.preheader119.i.i ], [ %i.rd, %.lr.ph175.i.i.epil.preheader ], [ %.12190.i.i, %_ZN4ncnn3MatD2Ev.exit267.i.i ], [ %i.nr, %.loopexit120.i.i.loopexit.unr-lcssa ], [ %.lcssa402.unr, %.lr.ph187.i.i.prol.loopexit ], [ %i.qs, %.lr.ph187.i.i ] ; 2 uses
  %indvars.iv.next238.i.i = add nuw nsw i64 %indvars.iv237.i.i, 2 ; 3 uses
  %i.re = icmp slt i64 %indvars.iv.next238.i.i, %invariant.op277.i.i
  br i1 %i.re, label %bb.e, label %.preheader.loopexit.i.i, !llvm.loop !1470

_ZN4ncnn3MatD2Ev.exit.i.i:                        ; preds = %..loopexit_crit_edge.i.i, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i
  %indvars.iv241.i.i = phi i64 [ %i.mm, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i ], [ %indvars.iv.next242.i.i, %..loopexit_crit_edge.i.i ] ; 2 uses
  %.18205.i.i = phi ptr [ %.12.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i ], [ %.lcssa404, %..loopexit_crit_edge.i.i ] ; 2 uses
  %i.rf = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1471
  %i.rg = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !1471
  %i.rh = mul i64 %i.rg, %i.kv
  %i.ri = load i64, ptr %i.r, align 8, !tbaa !65, !noalias !1471
  %i.rj = mul i64 %i.rh, %i.ri
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.rj
  %i.rl = getelementptr i8, ptr %i.rk, i64 %indvars.iv241.i.i
  %i.rm = getelementptr i8, ptr %i.rl, i64 %i.mn  ; 2 uses
  br i1 %i.mp, label %.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit.i.i.new

_ZN4ncnn3MatD2Ev.exit.i.i.new:                    ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i.new
end_hunk_1
begin_hunk_2_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %.sroa.07.0.vec.extract.i.i = extractelement <4 x i32> %i.axz, i64 0
  %i.ayh = sext i32 %.sroa.07.0.vec.extract.i.i to i64
  %i.ayi = getelementptr inbounds i8, ptr %i.ayg, i64 %i.ayh
  %i.ayj = load i8, ptr %i.ayi, align 1, !tbaa !254
  store i8 %i.ayj, ptr %.17185.i.i, align 1, !tbaa !254
  %i.ayk = load ptr, ptr %9, align 8, !tbaa !18
  %.sroa.7.16.vec.extract.i.i = extractelement <4 x i32> %i.ayf, i64 0
  %i.ayl = sext i32 %.sroa.7.16.vec.extract.i.i to i64
  %i.aym = getelementptr inbounds i8, ptr %i.ayk, i64 %i.ayl
  %i.ayn = load i8, ptr %i.aym, align 1, !tbaa !254
  %i.ayo = getelementptr inbounds nuw i8, ptr %.17185.i.i, i64 1
  store i8 %i.ayn, ptr %i.ayo, align 1, !tbaa !254
  %i.ayp = load ptr, ptr %9, align 8, !tbaa !18
  %.sroa.07.4.vec.extract.i.i = extractelement <4 x i32> %i.axz, i64 1
  %i.ayq = sext i32 %.sroa.07.4.vec.extract.i.i to i64
  %i.ayr = getelementptr inbounds i8, ptr %i.ayp, i64 %i.ayq
  %i.ays = load i8, ptr %i.ayr, align 1, !tbaa !254
  %i.ayt = getelementptr inbounds nuw i8, ptr %.17185.i.i, i64 2
  store i8 %i.ays, ptr %i.ayt, align 1, !tbaa !254
  %i.ayu = load ptr, ptr %9, align 8, !tbaa !18
  %.sroa.7.20.vec.extract.i.i = extractelement <4 x i32> %i.ayf, i64 1
  %i.ayv = sext i32 %.sroa.7.20.vec.extract.i.i to i64
  %i.ayw = getelementptr inbounds i8, ptr %i.ayu, i64 %i.ayv
  %i.ayx = load i8, ptr %i.ayw, align 1, !tbaa !254
  %i.ayy = getelementptr inbounds nuw i8, ptr %.17185.i.i, i64 3
  store i8 %i.ayx, ptr %i.ayy, align 1, !tbaa !254
  %i.ayz = load ptr, ptr %9, align 8, !tbaa !18
  %.sroa.07.8.vec.extract.i.i = extractelement <4 x i32> %i.axz, i64 2
  %i.aza = sext i32 %.sroa.07.8.vec.extract.i.i to i64
  %i.azb = getelementptr inbounds i8, ptr %i.ayz, i64 %i.aza
  %i.azc = load i8, ptr %i.azb, align 1, !tbaa !254
  %i.azd = getelementptr inbounds nuw i8, ptr %.17185.i.i, i64 4
  store i8 %i.azc, ptr %i.azd, align 1, !tbaa !254
  %i.aze = load ptr, ptr %9, align 8, !tbaa !18
  %.sroa.7.24.vec.extract.i.i = extractelement <4 x i32> %i.ayf, i64 2
  %i.azf = sext i32 %.sroa.7.24.vec.extract.i.i to i64
  %i.azg = getelementptr inbounds i8, ptr %i.aze, i64 %i.azf
  %i.azh = load i8, ptr %i.azg, align 1, !tbaa !254
  %i.azi = getelementptr inbounds nuw i8, ptr %.17185.i.i, i64 5
  store i8 %i.azh, ptr %i.azi, align 1, !tbaa !254
  %i.azj = load ptr, ptr %9, align 8, !tbaa !18
  %.sroa.07.12.vec.extract.i.i = extractelement <4 x i32> %i.axz, i64 3
  %i.azk = sext i32 %.sroa.07.12.vec.extract.i.i to i64
  %i.azl = getelementptr inbounds i8, ptr %i.azj, i64 %i.azk
  %i.azm = load i8, ptr %i.azl, align 1, !tbaa !254
  %i.azn = getelementptr inbounds nuw i8, ptr %.17185.i.i, i64 6
  store i8 %i.azm, ptr %i.azn, align 1, !tbaa !254
  %i.azo = load ptr, ptr %9, align 8, !tbaa !18
  %.sroa.7.28.vec.extract.i.i = extractelement <4 x i32> %i.ayf, i64 3
  %i.azp = sext i32 %.sroa.7.28.vec.extract.i.i to i64
  %i.azq = getelementptr inbounds i8, ptr %i.azo, i64 %i.azp
  %i.azr = load i8, ptr %i.azq, align 1, !tbaa !254
  %i.azs = getelementptr inbounds nuw i8, ptr %.17185.i.i, i64 7
  store i8 %i.azr, ptr %i.azs, align 1, !tbaa !254
  %i.azt = getelementptr inbounds nuw i8, ptr %.17185.i.i, i64 8 ; 2 uses
  %i.azu = add nuw nsw i32 %.01109184.i.i, 2      ; 3 uses
  %i.azv = or disjoint i32 %i.azu, 1
  %i.azw = icmp slt i32 %i.azv, %.sroa.speculated
  br i1 %i.azw, label %.lr.ph186.i.i, label %.preheader141.i.i, !llvm.loop !1486

.lr.ph191.i38.i:                                  ; preds = %.preheader141.i.i, %.lr.ph191.i38.i
  %.18190.i.i = phi ptr [ %i.bbd, %.lr.ph191.i38.i ], [ %.17.lcssa.i.i, %.preheader141.i.i ] ; 5 uses
  %.11110189.i.i = phi i32 [ %i.bbe, %.lr.ph191.i38.i ], [ %.01109.lcssa.i.i, %.preheader141.i.i ] ; 2 uses
  %i.azx = add nsw i32 %.11110189.i.i, %i.y       ; 2 uses
  %i.azy = sdiv i32 %i.azx, %i.sv
  %i.azz = srem i32 %i.azx, %i.sv                 ; 2 uses
  %i.baa = sdiv i32 %i.azz, %i.aq
  %i.bab = srem i32 %i.azz, %i.aq
  %i.bac = mul i32 %i.baa, %i.vn
  %i.bad = mul nsw i32 %i.bab, %i.as
  %i.bae = mul i32 %i.azy, %i.vo
  %i.baf = add i32 %i.bac, %i.bae
  %i.bag = add i32 %i.baf, %i.bad
  %i.bah = insertelement <4 x i32> poison, i32 %i.bag, i64 0
  %i.bai = shufflevector <4 x i32> %i.bah, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.baj = add <4 x i32> %i.bai, %i.atc           ; 4 uses
  %i.bak = load ptr, ptr %9, align 8, !tbaa !18
  %.sroa.05.0.vec.extract.i.i = extractelement <4 x i32> %i.baj, i64 0
  %i.bal = sext i32 %.sroa.05.0.vec.extract.i.i to i64
  %i.bam = getelementptr inbounds i8, ptr %i.bak, i64 %i.bal
  %i.ban = load i8, ptr %i.bam, align 1, !tbaa !254
  store i8 %i.ban, ptr %.18190.i.i, align 1, !tbaa !254
  %i.bao = load ptr, ptr %9, align 8, !tbaa !18
  %.sroa.05.4.vec.extract.i.i = extractelement <4 x i32> %i.baj, i64 1
  %i.bap = sext i32 %.sroa.05.4.vec.extract.i.i to i64
  %i.baq = getelementptr inbounds i8, ptr %i.bao, i64 %i.bap
  %i.bar = load i8, ptr %i.baq, align 1, !tbaa !254
  %i.bas = getelementptr inbounds nuw i8, ptr %.18190.i.i, i64 1
  store i8 %i.bar, ptr %i.bas, align 1, !tbaa !254
  %i.bat = load ptr, ptr %9, align 8, !tbaa !18
  %.sroa.05.8.vec.extract.i.i = extractelement <4 x i32> %i.baj, i64 2
  %i.bau = sext i32 %.sroa.05.8.vec.extract.i.i to i64
  %i.bav = getelementptr inbounds i8, ptr %i.bat, i64 %i.bau
  %i.baw = load i8, ptr %i.bav, align 1, !tbaa !254
  %i.bax = getelementptr inbounds nuw i8, ptr %.18190.i.i, i64 2
  store i8 %i.baw, ptr %i.bax, align 1, !tbaa !254
  %i.bay = load ptr, ptr %9, align 8, !tbaa !18
  %.sroa.05.12.vec.extract.i.i = extractelement <4 x i32> %i.baj, i64 3
  %i.baz = sext i32 %.sroa.05.12.vec.extract.i.i to i64
  %i.bba = getelementptr inbounds i8, ptr %i.bay, i64 %i.baz
  %i.bbb = load i8, ptr %i.bba, align 1, !tbaa !254
  %i.bbc = getelementptr inbounds nuw i8, ptr %.18190.i.i, i64 3
  store i8 %i.bbb, ptr %i.bbc, align 1, !tbaa !254
  %i.bbd = getelementptr inbounds nuw i8, ptr %.18190.i.i, i64 4 ; 2 uses
  %i.bbe = add nuw nsw i32 %.11110189.i.i, 1      ; 2 uses
  %exitcond317.not.i.i = icmp eq i32 %i.bbe, %.sroa.speculated
  br i1 %exitcond317.not.i.i, label %.loopexit135.i.i, label %.lr.ph191.i38.i, !llvm.loop !1487

.loopexit142.i.i:                                 ; preds = %bb.t
  br i1 %brmerge272.i.i, label %.loopexit135.i.i, label %.lr.ph195.i.i

.lr.ph195.i.i:                                    ; preds = %.loopexit142.i.i, %.lr.ph195.i.i
  %.20194.i.i = phi ptr [ %i.bdj, %.lr.ph195.i.i ], [ %.11211.i.i, %.loopexit142.i.i ] ; 3 uses
  %.01111193.i.i = phi i32 [ %i.bdk, %.lr.ph195.i.i ], [ 0, %.loopexit142.i.i ] ; 2 uses
  %i.bbf = add nsw i32 %.01111193.i.i, %i.vs      ; 2 uses
  %i.bbg = sdiv i32 %i.bbf, %i.sv
  %i.bbh = srem i32 %i.bbf, %i.sv                 ; 2 uses
  %i.bbi = sdiv i32 %i.bbh, %i.aq
  %i.bbj = srem i32 %i.bbh, %i.aq
  %i.bbk = mul i32 %i.bbi, %i.vn
  %i.bbl = mul nsw i32 %i.bbj, %i.as
  %i.bbm = mul i32 %i.bbg, %i.vo
  %i.bbn = add i32 %i.bbk, %i.bbm
  %i.bbo = add i32 %i.bbn, %i.bbl
  %i.bbp = insertelement <4 x i32> poison, i32 %i.bbo, i64 0
  %i.bbq = shufflevector <4 x i32> %i.bbp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bbr = add <4 x i32> %i.bbq, %i.atc           ; 2 uses
  %i.bbs = bitcast <4 x i32> %i.bbr to <2 x i64>
  %i.bbt = shl <2 x i64> %i.bbs, splat (i64 3)
  %i.bbu = shufflevector <4 x i32> %i.bbr, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.bbv = bitcast <4 x i32> %i.bbu to <2 x i64>
  %i.bbw = shl <2 x i64> %i.bbv, splat (i64 3)
  %i.bbx = bitcast <2 x i64> %i.bbt to <4 x i32>
  %i.bby = and <4 x i32> %i.bbx, <i32 -8, i32 7, i32 -8, i32 7> ; 2 uses
  %i.bbz = bitcast <2 x i64> %i.bbw to <4 x i32>
  %i.bca = and <4 x i32> %i.bbz, <i32 -8, i32 7, i32 -8, i32 7> ; 2 uses
  %i.bcb = shufflevector <4 x i32> %i.bby, <4 x i32> %i.bca, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.bcc = bitcast <4 x i32> %i.bcb to <2 x i64>
  %i.bcd = shufflevector <4 x i32> %i.bby, <4 x i32> %i.bca, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.bce = bitcast <4 x i32> %i.bcd to <2 x i64>
  %i.bcf = shufflevector <2 x i64> %i.bcc, <2 x i64> %i.bce, <2 x i32> <i32 0, i32 2>
  %i.bcg = bitcast <2 x i64> %i.bcf to <4 x i32>  ; 4 uses
  %i.bch = load ptr, ptr %9, align 8, !tbaa !18   ; 4 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <4 x i32> %i.bcg, i64 0
  %i.bci = sext i32 %.sroa.0.0.vec.extract.i.i to i64
  %i.bcj = getelementptr inbounds i8, ptr %i.bch, i64 %i.bci
  %i.bck = load i64, ptr %i.bcj, align 1, !tbaa !254
  %i.bcl = insertelement <2 x i64> poison, i64 %i.bck, i64 0
  %.sroa.0.4.vec.extract.i.i = extractelement <4 x i32> %i.bcg, i64 1
  %i.bcm = sext i32 %.sroa.0.4.vec.extract.i.i to i64
  %i.bcn = getelementptr inbounds i8, ptr %i.bch, i64 %i.bcm
  %i.bco = load i64, ptr %i.bcn, align 1, !tbaa !254
  %i.bcp = insertelement <2 x i64> poison, i64 %i.bco, i64 0
  %.sroa.0.8.vec.extract.i.i = extractelement <4 x i32> %i.bcg, i64 2
  %i.bcq = sext i32 %.sroa.0.8.vec.extract.i.i to i64
  %i.bcr = getelementptr inbounds i8, ptr %i.bch, i64 %i.bcq
  %i.bcs = load i64, ptr %i.bcr, align 1, !tbaa !254
  %i.bct = insertelement <2 x i64> poison, i64 %i.bcs, i64 0
  %.sroa.0.12.vec.extract.i.i = extractelement <4 x i32> %i.bcg, i64 3
  %i.bcu = sext i32 %.sroa.0.12.vec.extract.i.i to i64
  %i.bcv = getelementptr inbounds i8, ptr %i.bch, i64 %i.bcu
  %i.bcw = load i64, ptr %i.bcv, align 1, !tbaa !254
  %i.bcx = insertelement <2 x i64> poison, i64 %i.bcw, i64 0
  %i.bcy = bitcast <2 x i64> %i.bcl to <8 x i16>
  %i.bcz = bitcast <2 x i64> %i.bcp to <8 x i16>
  %i.bda = shufflevector <8 x i16> %i.bcy, <8 x i16> %i.bcz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bdb = bitcast <2 x i64> %i.bct to <8 x i16>
  %i.bdc = bitcast <2 x i64> %i.bcx to <8 x i16>
  %i.bdd = shufflevector <8 x i16> %i.bdb, <8 x i16> %i.bdc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bde = bitcast <8 x i16> %i.bda to <4 x i32>  ; 2 uses
  %i.bdf = bitcast <8 x i16> %i.bdd to <4 x i32>  ; 2 uses
  %i.bdg = shufflevector <4 x i32> %i.bde, <4 x i32> %i.bdf, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bdh = shufflevector <4 x i32> %i.bde, <4 x i32> %i.bdf, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.bdg, ptr %.20194.i.i, align 1, !tbaa !254
  %i.bdi = getelementptr inbounds nuw i8, ptr %.20194.i.i, i64 16
  store <4 x i32> %i.bdh, ptr %i.bdi, align 1, !tbaa !254
  %i.bdj = getelementptr inbounds nuw i8, ptr %.20194.i.i, i64 32 ; 2 uses
  %i.bdk = add nuw nsw i32 %.01111193.i.i, 1      ; 2 uses
  %exitcond318.not.i.i = icmp eq i32 %i.bdk, %i.vq
  br i1 %exitcond318.not.i.i, label %.loopexit135.i.i, label %.lr.ph195.i.i, !llvm.loop !1488

.loopexit135.i.i:                                 ; preds = %.lr.ph195.i.i, %.lr.ph191.i38.i, %bb.s, %bb.r, %.loopexit142.i.i, %.preheader141.i.i, %.loopexit137.i.i, %.preheader136.i.i
  %.21.i.i = phi ptr [ %.11211.i.i, %.loopexit142.i.i ], [ %.12.lcssa.i39.i, %.preheader136.i.i ], [ %.11211.i.i, %.loopexit137.i.i ], [ %i.axd, %bb.s ], [ %i.awe, %bb.r ], [ %.17.lcssa.i.i, %.preheader141.i.i ], [ %i.bbd, %.lr.ph191.i38.i ], [ %i.bdj, %.lr.ph195.i.i ] ; 2 uses
  %i.bdl = add nuw nsw i32 %.11096210.i.i, 4      ; 3 uses
  %i.bdm = or disjoint i32 %i.bdl, 3
  %i.bdn = icmp slt i32 %i.bdm, %.sroa.speculated64
  br i1 %i.bdn, label %bb.o, label %.preheader133.i.i, !llvm.loop !1489

.preheader122.i33.i:                              ; preds = %.loopexit124.i36.i, %.preheader133.i.i
  %.21097.lcssa.i.i = phi i32 [ %.11096.lcssa.i.i, %.preheader133.i.i ], [ %i.blp, %.loopexit124.i36.i ] ; 2 uses
  %.22.lcssa.i.i = phi ptr [ %.11.lcssa.i.i, %.preheader133.i.i ], [ %.33.i.i, %.loopexit124.i36.i ]
  %i.bdo = icmp slt i32 %.21097.lcssa.i.i, %.sroa.speculated64
  br i1 %i.bdo, label %.lr.ph262.i.i, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph262.i.i:                                    ; preds = %.preheader122.i33.i
  %i.bdp = mul i32 %i.so, %i.av
  %i.bdq = icmp eq i32 %i.sp, 1
  %i.bdr = icmp sgt i32 %.sroa.speculated, 1
  %i.bds = mul i32 %i.so, %i.at                   ; 4 uses
  %i.bdt = icmp ne i32 %i.sp, 8
  %20 = sdiv i32 %.sroa.speculated, 8
  %i.bdu = icmp slt i32 %.sroa.speculated, 8
  %i.bdv = sdiv i32 %i.y, 8
  %brmerge279.i.i = or i1 %i.bdu, %i.bdt
  br label %bb.ac

bb.u:                                             ; preds = %.loopexit124.i36.i, %.lr.ph244.i.i
  %.22243.i.i = phi ptr [ %.11.lcssa.i.i, %.lr.ph244.i.i ], [ %.33.i.i, %.loopexit124.i36.i ] ; 8 uses
  %.21097242.i.i = phi i32 [ %.11096.lcssa.i.i, %.lr.ph244.i.i ], [ %i.blp, %.loopexit124.i36.i ] ; 2 uses
  %i.bdw = add nsw i32 %.21097242.i.i, %i.w       ; 3 uses
  %i.bdx = sdiv i32 %i.bdw, %i.su
  %i.bdy = add nsw i32 %i.bdw, 1                  ; 2 uses
  %i.bdz = sdiv i32 %i.bdy, %i.su
  %i.bea = srem i32 %i.bdw, %i.su
  %i.beb = srem i32 %i.bdy, %i.su
  %i.bec = mul nsw i32 %i.bea, %i.au
  %i.bed = mul nsw i32 %i.beb, %i.au
  %i.bee = mul i32 %i.bdx, %i.apz                 ; 2 uses
  %i.bef = mul i32 %i.bdz, %i.apz                 ; 2 uses
  %i.beg = add nsw i32 %i.bec, %i.bee             ; 7 uses
  %i.beh = add nsw i32 %i.bed, %i.bef             ; 4 uses
  %i.bei = icmp eq i32 %i.bee, %i.bef
  %or.cond5.i.i = and i1 %i.ba, %i.bei
  br i1 %or.cond5.i.i, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  br i1 %i.aqa, label %.preheader127.i37.i, label %.loopexit126.i.i

.preheader127.i37.i:                              ; preds = %bb.v
  br i1 %i.aqb, label %.lr.ph231.i.i, label %.preheader125.i.i

.lr.ph231.i.i:                                    ; preds = %.preheader127.i37.i
  %i.bej = sext i32 %i.beg to i64                 ; 2 uses
  br label %bb.w

.preheader125.i.i:                                ; preds = %bb.w, %.preheader127.i37.i
  %.01112.lcssa.i.i = phi i32 [ 0, %.preheader127.i37.i ], [ %i.bfz, %bb.w ] ; 2 uses
  %.23.lcssa.i.i = phi ptr [ %.22243.i.i, %.preheader127.i37.i ], [ %i.bfy, %bb.w ] ; 2 uses
  %i.bek = icmp slt i32 %.01112.lcssa.i.i, %.sroa.speculated
  br i1 %i.bek, label %.lr.ph236.i.i, label %.loopexit124.i36.i

.lr.ph236.i.i:                                    ; preds = %.preheader125.i.i
  %i.bel = sext i32 %i.beg to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.w, %.lr.ph231.i.i
  %.23230.i.i = phi ptr [ %.22243.i.i, %.lr.ph231.i.i ], [ %i.bfy, %bb.w ] ; 5 uses
  %.01112229.i.i = phi i32 [ 0, %.lr.ph231.i.i ], [ %i.bfz, %bb.w ] ; 2 uses
  %i.bem = add nsw i32 %.01112229.i.i, %i.y       ; 3 uses
  %i.ben = sdiv i32 %i.bem, %i.sv
  %i.beo = add nsw i32 %i.bem, 1                  ; 2 uses
  %i.bep = sdiv i32 %i.beo, %i.sv
  %i.beq = srem i32 %i.bem, %i.sv                 ; 2 uses
  %i.ber = srem i32 %i.beo, %i.sv                 ; 2 uses
  %i.bes = sdiv i32 %i.beq, %i.aq
  %i.bet = sdiv i32 %i.ber, %i.aq
  %i.beu = srem i32 %i.beq, %i.aq
  %i.bev = srem i32 %i.ber, %i.aq
  %i.bew = sext i32 %i.ben to i64
  %i.bex = mul i64 %i.bd, %i.bew
  %i.bey = mul i32 %i.bes, %i.aqc
  %i.bez = mul nsw i32 %i.beu, %i.as
  %i.bfa = add nsw i32 %i.bez, %i.bey
  %i.bfb = sext i32 %i.bfa to i64
  %i.bfc = sext i32 %i.bep to i64
  %i.bfd = mul i64 %i.bd, %i.bfc
  %i.bfe = mul i32 %i.bet, %i.aqc
  %i.bff = mul nsw i32 %i.bev, %i.as
  %i.bfg = add nsw i32 %i.bff, %i.bfe
  %i.bfh = sext i32 %i.bfg to i64
  %i.bfi = load ptr, ptr %9, align 8, !tbaa !18   ; 2 uses
  %i.bfj = getelementptr i8, ptr %i.bfi, i64 %i.bex
  %i.bfk = getelementptr i8, ptr %i.bfj, i64 %i.bej
  %i.bfl = getelementptr i8, ptr %i.bfk, i64 %i.bfb ; 2 uses
  %i.bfm = getelementptr i8, ptr %i.bfi, i64 %i.bfd
  %i.bfn = getelementptr i8, ptr %i.bfm, i64 %i.bej
  %i.bfo = getelementptr i8, ptr %i.bfn, i64 %i.bfh ; 2 uses
  %i.bfp = load i8, ptr %i.bfl, align 1, !tbaa !254
  store i8 %i.bfp, ptr %.23230.i.i, align 1, !tbaa !254
  %i.bfq = load i8, ptr %i.bfo, align 1, !tbaa !254
  %i.bfr = getelementptr inbounds nuw i8, ptr %.23230.i.i, i64 1
  store i8 %i.bfq, ptr %i.bfr, align 1, !tbaa !254
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfl, i64 1
  %i.bft = load i8, ptr %i.bfs, align 1, !tbaa !254
  %i.bfu = getelementptr inbounds nuw i8, ptr %.23230.i.i, i64 2
  store i8 %i.bft, ptr %i.bfu, align 1, !tbaa !254
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfo, i64 1
  %i.bfw = load i8, ptr %i.bfv, align 1, !tbaa !254
  %i.bfx = getelementptr inbounds nuw i8, ptr %.23230.i.i, i64 3
  store i8 %i.bfw, ptr %i.bfx, align 1, !tbaa !254
  %i.bfy = getelementptr inbounds nuw i8, ptr %.23230.i.i, i64 4 ; 2 uses
  %i.bfz = add nuw nsw i32 %.01112229.i.i, 2      ; 3 uses
  %i.bga = or disjoint i32 %i.bfz, 1
  %i.bgb = icmp slt i32 %i.bga, %.sroa.speculated
  br i1 %i.bgb, label %bb.w, label %.preheader125.i.i, !llvm.loop !1490

bb.x:                                             ; preds = %bb.x, %.lr.ph236.i.i
  %.24235.i.i = phi ptr [ %.23.lcssa.i.i, %.lr.ph236.i.i ], [ %i.bgv, %bb.x ] ; 3 uses
  %.11113234.i.i = phi i32 [ %.01112.lcssa.i.i, %.lr.ph236.i.i ], [ %i.bgw, %bb.x ] ; 2 uses
  %i.bgc = add nsw i32 %.11113234.i.i, %i.y       ; 2 uses
  %i.bgd = sdiv i32 %i.bgc, %i.sv
  %i.bge = srem i32 %i.bgc, %i.sv                 ; 2 uses
  %i.bgf = sdiv i32 %i.bge, %i.aq
  %i.bgg = srem i32 %i.bge, %i.aq
  %i.bgh = sext i32 %i.bgd to i64
  %i.bgi = mul i64 %i.bd, %i.bgh
  %i.bgj = mul i32 %i.bgf, %i.aqc
  %i.bgk = mul nsw i32 %i.bgg, %i.as
  %i.bgl = add nsw i32 %i.bgk, %i.bgj
  %i.bgm = sext i32 %i.bgl to i64
  %i.bgn = load ptr, ptr %9, align 8, !tbaa !18
  %i.bgo = getelementptr i8, ptr %i.bgn, i64 %i.bgi
  %i.bgp = getelementptr i8, ptr %i.bgo, i64 %i.bel
  %i.bgq = getelementptr i8, ptr %i.bgp, i64 %i.bgm ; 2 uses
  %i.bgr = load i8, ptr %i.bgq, align 1, !tbaa !254
  store i8 %i.bgr, ptr %.24235.i.i, align 1, !tbaa !254
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgq, i64 1
  %i.bgt = load i8, ptr %i.bgs, align 1, !tbaa !254
  %i.bgu = getelementptr inbounds nuw i8, ptr %.24235.i.i, i64 1
  store i8 %i.bgt, ptr %i.bgu, align 1, !tbaa !254
  %i.bgv = getelementptr inbounds nuw i8, ptr %.24235.i.i, i64 2 ; 2 uses
  %i.bgw = add nuw nsw i32 %.11113234.i.i, 1      ; 2 uses
  %exitcond323.not.i.i = icmp eq i32 %i.bgw, %.sroa.speculated
  br i1 %exitcond323.not.i.i, label %.loopexit124.i36.i, label %bb.x, !llvm.loop !1491

.loopexit126.i.i:                                 ; preds = %bb.v
  br i1 %brmerge275.i.i, label %.loopexit124.i36.i, label %.lr.ph240.i.i

.lr.ph240.i.i:                                    ; preds = %.loopexit126.i.i
  %i.bgx = sext i32 %i.beg to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph240.i.i
  %.26239.i.i = phi ptr [ %.22243.i.i, %.lr.ph240.i.i ], [ %i.bhs, %bb.y ] ; 2 uses
  %.01114238.i.i = phi i32 [ 0, %.lr.ph240.i.i ], [ %i.bht, %bb.y ] ; 2 uses
  %i.bgy = add nsw i32 %.01114238.i.i, %i.aqg     ; 2 uses
  %i.bgz = sdiv i32 %i.bgy, %i.sv
  %i.bha = srem i32 %i.bgy, %i.sv                 ; 2 uses
  %i.bhb = sdiv i32 %i.bha, %i.aq
  %i.bhc = srem i32 %i.bha, %i.aq
  %i.bhd = sext i32 %i.bgz to i64
  %i.bhe = mul i64 %i.bd, %i.bhd
  %i.bhf = add i64 %i.bhe, %i.bgx
  %i.bhg = mul i32 %i.bhb, %i.aqc
  %i.bhh = mul nsw i32 %i.bhc, %i.as
  %i.bhi = add nsw i32 %i.bhh, %i.bhg
  %i.bhj = sext i32 %i.bhi to i64
  %i.bhk = add i64 %i.bhf, %i.bhj
  %i.bhl = shl i64 %i.bhk, 3
  %i.bhm = load ptr, ptr %9, align 8, !tbaa !18
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bhm, i64 %i.bhl
  %i.bho = load <4 x i32>, ptr %i.bhn, align 1, !tbaa !254
  %i.bhp = shufflevector <4 x i32> %i.bho, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bhq = bitcast <4 x i32> %i.bhp to <8 x i16>
  %i.bhr = shufflevector <8 x i16> %i.bhq, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  store <8 x i16> %i.bhr, ptr %.26239.i.i, align 1, !tbaa !254
  %i.bhs = getelementptr inbounds nuw i8, ptr %.26239.i.i, i64 16 ; 2 uses
  %i.bht = add nuw nsw i32 %.01114238.i.i, 1      ; 2 uses
  %exitcond324.not.i.i = icmp eq i32 %i.bht, %i.aqf
  br i1 %exitcond324.not.i.i, label %.loopexit124.i36.i, label %bb.y, !llvm.loop !1492

bb.z:                                             ; preds = %bb.u
  br i1 %i.aqa, label %.preheader132.i.i, label %.loopexit131.i.i

.preheader132.i.i:                                ; preds = %bb.z
  br i1 %i.aqb, label %.lr.ph217.i.i, label %.preheader130.i.i

.preheader130.i.i:                                ; preds = %.lr.ph217.i.i, %.preheader132.i.i
  %.01115.lcssa.i.i = phi i32 [ 0, %.preheader132.i.i ], [ %i.bjm, %.lr.ph217.i.i ] ; 2 uses
  %.28.lcssa.i.i = phi ptr [ %.22243.i.i, %.preheader132.i.i ], [ %i.bjl, %.lr.ph217.i.i ] ; 2 uses
  %i.bhu = icmp slt i32 %.01115.lcssa.i.i, %.sroa.speculated
  br i1 %i.bhu, label %.lr.ph222.i.i, label %.loopexit124.i36.i

.lr.ph222.i.i:                                    ; preds = %.preheader130.i.i
  %i.bhv = sext i32 %i.beg to i64
  %i.bhw = sext i32 %i.beh to i64
  br label %bb.aa

.lr.ph217.i.i:                                    ; preds = %.preheader132.i.i, %.lr.ph217.i.i
  %.28216.i.i = phi ptr [ %i.bjl, %.lr.ph217.i.i ], [ %.22243.i.i, %.preheader132.i.i ] ; 5 uses
  %.01115215.i.i = phi i32 [ %i.bjm, %.lr.ph217.i.i ], [ 0, %.preheader132.i.i ] ; 2 uses
  %i.bhx = add nsw i32 %.01115215.i.i, %i.y       ; 3 uses
  %i.bhy = sdiv i32 %i.bhx, %i.sv
  %i.bhz = add nsw i32 %i.bhx, 1                  ; 2 uses
  %i.bia = sdiv i32 %i.bhz, %i.sv
  %i.bib = srem i32 %i.bhx, %i.sv                 ; 2 uses
  %i.bic = srem i32 %i.bhz, %i.sv                 ; 2 uses
  %i.bid = sdiv i32 %i.bib, %i.aq
  %i.bie = sdiv i32 %i.bic, %i.aq
  %i.bif = srem i32 %i.bib, %i.aq
  %i.big = srem i32 %i.bic, %i.aq
  %i.bih = mul i32 %i.bid, %i.aqc
  %i.bii = mul nsw i32 %i.bif, %i.as
  %i.bij = mul i32 %i.bie, %i.aqc
  %i.bik = mul nsw i32 %i.big, %i.as
  %i.bil = mul i32 %i.bhy, %i.aqd
  %i.bim = add i32 %i.bih, %i.bil
  %i.bin = add i32 %i.bim, %i.bii                 ; 2 uses
  %i.bio = add i32 %i.bin, %i.beg
  %i.bip = add i32 %i.bin, %i.beh
  %i.biq = mul i32 %i.bia, %i.aqd
end_hunk_2
begin_hunk_3_@_ZN4ncnnL47conv3x3s1_winograd63_transform_input_tile_bf16sERKNS_3MatERS0_iiiii.omp_outlined:bb.a
  br i1 %i.bdi, label %.noexc, label %._crit_edge, !llvm.loop !1864

bb.er:                                            ; preds = %.thread.7, %bb.er
  %indvars.iv = phi i64 [ 0, %.thread.7 ], [ %indvars.iv.next, %bb.er ] ; 2 uses
  %.0213377 = phi ptr [ %i.bcl, %.thread.7 ], [ %i.bfm, %bb.er ] ; 2 uses
  %.0214376 = phi ptr [ %i.bco, %.thread.7 ], [ %i.bfn, %bb.er ] ; 2 uses
  %.0215375 = phi ptr [ %i.bcr, %.thread.7 ], [ %i.bfo, %bb.er ] ; 2 uses
  %.0216374 = phi ptr [ %i.bcu, %.thread.7 ], [ %i.bfp, %bb.er ] ; 2 uses
  %.0217373 = phi ptr [ %i.bcx, %.thread.7 ], [ %i.bfq, %bb.er ] ; 2 uses
  %.0218372 = phi ptr [ %i.bda, %.thread.7 ], [ %i.bfr, %bb.er ] ; 2 uses
  %.0220370 = phi ptr [ %i.bdg, %.thread.7 ], [ %i.bft, %bb.er ] ; 2 uses
  %.0221369 = phi ptr [ %i.bdd, %.thread.7 ], [ %i.bfs, %bb.er ] ; 2 uses
  %i.bdj = getelementptr inbounds nuw [128 x i8], ptr %i.e, i64 %indvars.iv ; 8 uses
  %i.bdk = load <4 x float>, ptr %i.bdj, align 16, !tbaa !254
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdj, i64 16
  %i.bdm = load <4 x float>, ptr %i.bdl, align 16, !tbaa !254 ; 4 uses
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdj, i64 32
  %i.bdo = load <4 x float>, ptr %i.bdn, align 16, !tbaa !254 ; 4 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdj, i64 48
  %i.bdq = load <4 x float>, ptr %i.bdp, align 16, !tbaa !254 ; 3 uses
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdj, i64 64
  %i.bds = load <4 x float>, ptr %i.bdr, align 16, !tbaa !254 ; 3 uses
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bdj, i64 80
  %i.bdu = load <4 x float>, ptr %i.bdt, align 16, !tbaa !254 ; 4 uses
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdj, i64 96
  %i.bdw = load <4 x float>, ptr %i.bdv, align 16, !tbaa !254 ; 4 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdj, i64 112
  %i.bdy = load <4 x float>, ptr %i.bdx, align 16, !tbaa !254
  %i.bdz = fmul fast <4 x float> %i.bds, splat (float -4.250000e+00)
  %i.bea = fadd fast <4 x float> %i.bdz, %i.bdo
  %i.beb = fadd fast <4 x float> %i.bea, %i.bdw   ; 2 uses
  %i.bec = fmul fast <4 x float> %i.bdq, splat (float -4.250000e+00)
  %i.bed = fadd fast <4 x float> %i.bec, %i.bdm
  %i.bee = fadd fast <4 x float> %i.bed, %i.bdu   ; 2 uses
  %i.bef = fmul fast <4 x float> %i.bdo, splat (float 2.500000e-01)
  %i.beg = fmul fast <4 x float> %i.bds, splat (float -1.250000e+00) ; 2 uses
  %i.beh = fadd fast <4 x float> %i.beg, %i.bef
  %i.bei = fadd fast <4 x float> %i.beh, %i.bdw   ; 2 uses
  %i.bej = fmul fast <4 x float> %i.bdm, splat (float 5.000000e-01)
  %i.bek = fmul fast <4 x float> %i.bdq, splat (float -2.500000e+00) ; 2 uses
  %i.bel = fadd fast <4 x float> %i.bek, %i.bej
  %i.bem = fmul fast <4 x float> %i.bdu, splat (float 2.000000e+00)
  %i.ben = fadd fast <4 x float> %i.bel, %i.bem   ; 2 uses
  %i.beo = fadd fast <4 x float> %i.beg, %i.bdo
  %i.bep = fmul fast <4 x float> %i.beo, splat (float 4.000000e+00)
  %i.beq = fadd fast <4 x float> %i.bep, %i.bdw   ; 2 uses
  %i.ber = fmul fast <4 x float> %i.bdm, splat (float 2.000000e+00)
  %i.bes = fadd fast <4 x float> %i.bek, %i.ber
  %i.bet = fmul fast <4 x float> %i.bdu, splat (float 5.000000e-01)
  %i.beu = fadd fast <4 x float> %i.bes, %i.bet   ; 2 uses
  %i.bev = fsub fast <4 x float> %i.bds, %i.bdo
  %i.bew = fsub fast <4 x float> %i.bdk, %i.bdw
  %i.bex = fmul fast <4 x float> %i.bev, splat (float 5.250000e+00)
  %i.bey = fadd fast <4 x float> %i.bew, %i.bex
  %i.bez = fadd fast <4 x float> %i.beb, %i.bee
  %i.bfa = fsub fast <4 x float> %i.beb, %i.bee
  %i.bfb = fadd fast <4 x float> %i.bei, %i.ben
  %i.bfc = fsub fast <4 x float> %i.bei, %i.ben
  %i.bfd = fadd fast <4 x float> %i.beq, %i.beu
  %i.bfe = fsub fast <4 x float> %i.beq, %i.beu
  %i.bff = fsub fast <4 x float> %i.bdq, %i.bdu
  %i.bfg = fsub fast <4 x float> %i.bdy, %i.bdm
  %i.bfh = fmul fast <4 x float> %i.bff, splat (float 5.250000e+00)
  %i.bfi = fadd fast <4 x float> %i.bfg, %i.bfh
  store <4 x float> %i.bey, ptr %.0213377, align 16, !tbaa !254
  store <4 x float> %i.bez, ptr %.0214376, align 16, !tbaa !254
  store <4 x float> %i.bfa, ptr %.0215375, align 16, !tbaa !254
  store <4 x float> %i.bfb, ptr %.0216374, align 16, !tbaa !254
  store <4 x float> %i.bfc, ptr %.0217373, align 16, !tbaa !254
  store <4 x float> %i.bfd, ptr %.0218372, align 16, !tbaa !254
  store <4 x float> %i.bfe, ptr %.0221369, align 16, !tbaa !254
  store <4 x float> %i.bfi, ptr %.0220370, align 16, !tbaa !254
  %i.bfj = load i32, ptr %4, align 4, !tbaa !67   ; 4 uses
  %i.bfk = shl nsw i32 %i.bfj, 5
  %i.bfl = sext i32 %i.bfk to i64                 ; 8 uses
  %i.bfm = getelementptr inbounds [4 x i8], ptr %.0213377, i64 %i.bfl
  %i.bfn = getelementptr inbounds [4 x i8], ptr %.0214376, i64 %i.bfl
  %i.bfo = getelementptr inbounds [4 x i8], ptr %.0215375, i64 %i.bfl
  %i.bfp = getelementptr inbounds [4 x i8], ptr %.0216374, i64 %i.bfl
  %i.bfq = getelementptr inbounds [4 x i8], ptr %.0217373, i64 %i.bfl
  %i.bfr = getelementptr inbounds [4 x i8], ptr %.0218372, i64 %i.bfl
  %i.bfs = getelementptr inbounds [4 x i8], ptr %.0221369, i64 %i.bfl
  %i.bft = getelementptr inbounds [4 x i8], ptr %.0220370, i64 %i.bfl
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.eq, label %bb.er, !llvm.loop !1865

._crit_edge:                                      ; preds = %bb.eq, %.lr.ph.split
  %i.bfu = phi i32 [ %i.cc, %.lr.ph.split ], [ %i.bfj, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %i.bfv = add i32 %.0380, 1
  %exitcond389.not = icmp eq i32 %.0380, %i.k
  br i1 %exitcond389.not, label %._crit_edge382, label %.lr.ph.split, !llvm.loop !1866

._crit_edge382:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.es

bb.es:                                            ; preds = %._crit_edge382, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.s

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
  %.not79 = icmp sgt i32 %i.k, %i.j
  br i1 %.not79, label %._crit_edge, label %_ZN4ncnn3MatD2Ev.exit36.lr.ph

_ZN4ncnn3MatD2Ev.exit36.lr.ph:                    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 23 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  br label %_ZN4ncnn3MatD2Ev.exit36

_ZN4ncnn3MatD2Ev.exit36:                          ; preds = %_ZN4ncnn3MatD2Ev.exit36.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.080 = phi i32 [ %i.k, %_ZN4ncnn3MatD2Ev.exit36.lr.ph ], [ %i.on, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.s = sdiv i32 %.080, %i.r                     ; 2 uses
  %i.t = srem i32 %.080, %i.r                     ; 2 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.v = mul nsw i32 %i.u, %i.s                   ; 12 uses
  %i.w = load i32, ptr %5, align 4, !tbaa !67     ; 2 uses
  %i.x = mul i32 %i.w, %i.t                       ; 14 uses
  %i.y = load i32, ptr %6, align 4, !tbaa !67
  %i.z = sub nsw i32 %i.y, %i.v
  %.sroa.speculated64 = call i32 @llvm.smin.i32(i32 %i.u, i32 %i.z) ; 16 uses
  %i.aa = load i32, ptr %7, align 4, !tbaa !67
  %i.ab = sub i32 %i.aa, %i.x
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.ab) ; 25 uses
  %i.ac = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1867
  %i.ad = load ptr, ptr %8, align 8, !tbaa !18, !noalias !1867
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !1867
  %i.af = sext i32 %i.s to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !1867 ; 2 uses
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
  br i1 %or.cond9.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit36
  %i.bb = load i32, ptr %i.o, align 8, !tbaa !66  ; 3 uses
  %i.bc = icmp sgt i32 %.sroa.speculated64, 7
  br i1 %i.bc, label %.lr.ph149.i.i, label %.preheader136.i.i

.lr.ph149.i.i:                                    ; preds = %bb.c
  %i.bd = sdiv i32 %i.x, 4
  %i.be = sext i32 %i.bd to i64
  %16 = sdiv i32 %.sroa.speculated, 4
  %i.bf = sext i32 %i.x to i64
  switch i32 %i.bb, label %.lr.ph149.split.split.preheader.i.i [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit158.us.preheader.i.i
    i32 1, label %.lr.ph149.split.split.us.i.i
  ]

_ZN4ncnn3MatD2Ev.exit158.us.preheader.i.i:        ; preds = %.lr.ph149.i.i
  %i.bg = icmp sgt i32 %.sroa.speculated, 3
  %i.bh = sext i32 %i.v to i64
  %i.bi = zext nneg i32 %.sroa.speculated64 to i64 ; 2 uses
  br i1 %i.bg, label %_ZN4ncnn3MatD2Ev.exit158.us.i.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit158.us.i.preheader.i

_ZN4ncnn3MatD2Ev.exit158.us.i.preheader.i:        ; preds = %_ZN4ncnn3MatD2Ev.exit158.us.preheader.i.i
  %umax.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 15)
  %i.bj = and i64 %umax.i, 2147483640
  br label %.preheader136.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit158.us.i.us.preheader.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit158.us.preheader.i.i
  %.pre228.i.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1870
  br label %_ZN4ncnn3MatD2Ev.exit158.us.i.us.i

_ZN4ncnn3MatD2Ev.exit158.us.i.us.i:               ; preds = %.loopexit138.us.i.loopexit.us.i, %_ZN4ncnn3MatD2Ev.exit158.us.i.us.preheader.i
  %i.bk = phi i64 [ %i.fj, %.loopexit138.us.i.loopexit.us.i ], [ %.pre228.i.i, %_ZN4ncnn3MatD2Ev.exit158.us.i.us.preheader.i ]
  %indvars.iv214.i.us.i = phi i64 [ %indvars.iv.next215.i.us.i, %.loopexit138.us.i.loopexit.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit158.us.i.us.preheader.i ] ; 2 uses
  %.0137148.us.i.us.i = phi ptr [ %i.fi, %.loopexit138.us.i.loopexit.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit158.us.i.us.preheader.i ]
  %i.bl = add nsw i64 %indvars.iv214.i.us.i, %i.bh
  %i.bm = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1870
  %i.bn = mul i64 %i.bk, %i.be
  %i.bo = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1870
  %i.bp = mul i64 %i.bn, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bp
  %.idx232.i.us.i = shl nsw i64 %i.bl, 3
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %.idx232.i.us.i
  br label %.lr.ph.us.i.us.i

.lr.ph.us.i.us.i:                                 ; preds = %.lr.ph.us.i.us.i, %_ZN4ncnn3MatD2Ev.exit158.us.i.us.i
  %.1141.us.i.us.i = phi ptr [ %i.fi, %.lr.ph.us.i.us.i ], [ %.0137148.us.i.us.i, %_ZN4ncnn3MatD2Ev.exit158.us.i.us.i ] ; 5 uses
  %.0141140.us.i.us.i = phi ptr [ %i.fk, %.lr.ph.us.i.us.i ], [ %i.br, %_ZN4ncnn3MatD2Ev.exit158.us.i.us.i ] ; 9 uses
  %.0142139.us.i.us.i = phi i32 [ %i.fl, %.lr.ph.us.i.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit158.us.i.us.i ]
  %i.bs = load i64, ptr %.0141140.us.i.us.i, align 1, !tbaa !254
  %i.bt = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %i.bu = bitcast <2 x i64> %i.bt to <8 x i16>
  %i.bv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bw = bitcast <8 x i16> %i.bv to <4 x float>  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0141140.us.i.us.i, i64 8
  %i.by = load i64, ptr %i.bx, align 1, !tbaa !254
  %i.bz = insertelement <2 x i64> poison, i64 %i.by, i64 0
  %i.ca = bitcast <2 x i64> %i.bz to <8 x i16>
  %i.cb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ca, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cc = bitcast <8 x i16> %i.cb to <4 x float>  ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0141140.us.i.us.i, i64 16
  %i.ce = load i64, ptr %i.cd, align 1, !tbaa !254
  %i.cf = insertelement <2 x i64> poison, i64 %i.ce, i64 0
  %i.cg = bitcast <2 x i64> %i.cf to <8 x i16>
  %i.ch = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ci = bitcast <8 x i16> %i.ch to <4 x float>  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0141140.us.i.us.i, i64 24
  %i.ck = load i64, ptr %i.cj, align 1, !tbaa !254
  %i.cl = insertelement <2 x i64> poison, i64 %i.ck, i64 0
  %i.cm = bitcast <2 x i64> %i.cl to <8 x i16>
  %i.cn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.co = bitcast <8 x i16> %i.cn to <4 x float>  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0141140.us.i.us.i, i64 32
  %i.cq = load i64, ptr %i.cp, align 1, !tbaa !254
  %i.cr = insertelement <2 x i64> poison, i64 %i.cq, i64 0
  %i.cs = bitcast <2 x i64> %i.cr to <8 x i16>
  %i.ct = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cu = bitcast <8 x i16> %i.ct to <4 x float>  ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0141140.us.i.us.i, i64 40
  %i.cw = load i64, ptr %i.cv, align 1, !tbaa !254
  %i.cx = insertelement <2 x i64> poison, i64 %i.cw, i64 0
  %i.cy = bitcast <2 x i64> %i.cx to <8 x i16>
  %i.cz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.da = bitcast <8 x i16> %i.cz to <4 x float>  ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0141140.us.i.us.i, i64 48
  %i.dc = load i64, ptr %i.db, align 1, !tbaa !254
  %i.dd = insertelement <2 x i64> poison, i64 %i.dc, i64 0
  %i.de = bitcast <2 x i64> %i.dd to <8 x i16>
  %i.df = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.de, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dg = bitcast <8 x i16> %i.df to <4 x float>  ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0141140.us.i.us.i, i64 56
  %i.di = load i64, ptr %i.dh, align 1, !tbaa !254
  %i.dj = insertelement <2 x i64> poison, i64 %i.di, i64 0
  %i.dk = bitcast <2 x i64> %i.dj to <8 x i16>
  %i.dl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dm = bitcast <8 x i16> %i.dl to <4 x float>  ; 2 uses
  %i.dn = shufflevector <4 x float> %i.bw, <4 x float> %i.cc, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.do = shufflevector <4 x float> %i.ci, <4 x float> %i.co, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dp = shufflevector <4 x float> %i.bw, <4 x float> %i.cc, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dq = shufflevector <4 x float> %i.ci, <4 x float> %i.co, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dr = shufflevector <4 x float> %i.dn, <4 x float> %i.do, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ds = shufflevector <4 x float> %i.do, <4 x float> %i.dn, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.dt = shufflevector <4 x float> %i.dp, <4 x float> %i.dq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.du = shufflevector <4 x float> %i.dq, <4 x float> %i.dp, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.dv = shufflevector <4 x float> %i.cu, <4 x float> %i.da, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dw = shufflevector <4 x float> %i.dg, <4 x float> %i.dm, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dx = shufflevector <4 x float> %i.cu, <4 x float> %i.da, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dy = shufflevector <4 x float> %i.dg, <4 x float> %i.dm, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dz = shufflevector <4 x float> %i.dv, <4 x float> %i.dw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ea = shufflevector <4 x float> %i.dw, <4 x float> %i.dv, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.eb = shufflevector <4 x float> %i.dx, <4 x float> %i.dy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ec = shufflevector <4 x float> %i.dy, <4 x float> %i.dx, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ed = bitcast <4 x float> %i.dr to <8 x i16>
  %i.ee = shufflevector <8 x i16> %i.ed, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ef = bitcast <8 x i16> %i.ee to <4 x float>
  %i.eg = bitcast <4 x float> %i.dz to <8 x i16>
  %i.eh = shufflevector <8 x i16> %i.eg, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ei = bitcast <8 x i16> %i.eh to <4 x float>
  %i.ej = shufflevector <4 x float> %i.ef, <4 x float> %i.ei, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %i.ej, ptr %.1141.us.i.us.i, align 1, !tbaa !254
  %i.ek = getelementptr inbounds nuw i8, ptr %.1141.us.i.us.i, i64 16
  %i.el = bitcast <4 x float> %i.ds to <8 x i16>
  %i.em = shufflevector <8 x i16> %i.el, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.en = bitcast <8 x i16> %i.em to <4 x float>
  %i.eo = bitcast <4 x float> %i.ea to <8 x i16>
  %i.ep = shufflevector <8 x i16> %i.eo, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.eq = bitcast <8 x i16> %i.ep to <4 x float>
  %i.er = shufflevector <4 x float> %i.en, <4 x float> %i.eq, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %i.er, ptr %i.ek, align 1, !tbaa !254
  %i.es = getelementptr inbounds nuw i8, ptr %.1141.us.i.us.i, i64 32
  %i.et = bitcast <4 x float> %i.dt to <8 x i16>
  %i.eu = shufflevector <8 x i16> %i.et, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ev = bitcast <8 x i16> %i.eu to <4 x float>
  %i.ew = bitcast <4 x float> %i.eb to <8 x i16>
  %i.ex = shufflevector <8 x i16> %i.ew, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ey = bitcast <8 x i16> %i.ex to <4 x float>
  %i.ez = shufflevector <4 x float> %i.ev, <4 x float> %i.ey, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %i.ez, ptr %i.es, align 1, !tbaa !254
  %i.fa = getelementptr inbounds nuw i8, ptr %.1141.us.i.us.i, i64 48
  %i.fb = bitcast <4 x float> %i.du to <8 x i16>
  %i.fc = shufflevector <8 x i16> %i.fb, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.fd = bitcast <8 x i16> %i.fc to <4 x float>
  %i.fe = bitcast <4 x float> %i.ec to <8 x i16>
  %i.ff = shufflevector <8 x i16> %i.fe, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.fg = bitcast <8 x i16> %i.ff to <4 x float>
  %i.fh = shufflevector <4 x float> %i.fd, <4 x float> %i.fg, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %i.fh, ptr %i.fa, align 1, !tbaa !254
  %i.fi = getelementptr inbounds nuw i8, ptr %.1141.us.i.us.i, i64 64 ; 3 uses
  %i.fj = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx148.us.i.us.i = shl i64 %i.fj, 3
  %i.fk = getelementptr inbounds nuw i8, ptr %.0141140.us.i.us.i, i64 %.idx148.us.i.us.i
  %i.fl = add nuw nsw i32 %.0142139.us.i.us.i, 1  ; 2 uses
  %exitcond212.not.i.us.i = icmp eq i32 %i.fl, %16
  br i1 %exitcond212.not.i.us.i, label %.loopexit138.us.i.loopexit.us.i, label %.lr.ph.us.i.us.i, !llvm.loop !1873

.loopexit138.us.i.loopexit.us.i:                  ; preds = %.lr.ph.us.i.us.i
  %indvars.iv.next215.i.us.i = add nuw nsw i64 %indvars.iv214.i.us.i, 8 ; 3 uses
  %i.fm = or disjoint i64 %indvars.iv.next215.i.us.i, 7
  %i.fn = icmp samesign ult i64 %i.fm, %i.bi
  br i1 %i.fn, label %_ZN4ncnn3MatD2Ev.exit158.us.i.us.i, label %.preheader136.loopexit.i.i, !llvm.loop !1874

.lr.ph149.split.split.preheader.i.i:              ; preds = %.lr.ph149.i.i
  %i.fo = and i32 %.sroa.speculated64, 2147483640
  br label %.preheader136.i.i

.lr.ph149.split.split.us.i.i:                     ; preds = %.lr.ph149.i.i
  %i.fp = icmp slt i32 %.sroa.speculated, 1
  br i1 %i.fp, label %_ZN4ncnn3MatD2Ev.exit157.us155.preheader.i.i, label %_ZN4ncnn3MatD2Ev.exit157.us155.us.preheader.i.i

_ZN4ncnn3MatD2Ev.exit157.us155.preheader.i.i:     ; preds = %.lr.ph149.split.split.us.i.i
  %i.fq = and i32 %.sroa.speculated64, 2147483640
  br label %.preheader136.i.i

_ZN4ncnn3MatD2Ev.exit157.us155.us.preheader.i.i:  ; preds = %.lr.ph149.split.split.us.i.i
  %i.fr = sext i32 %i.v to i64
  %i.fs = zext nneg i32 %.sroa.speculated64 to i64
  %.pre.i.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1875
  %xtraiter = and i32 %.sroa.speculated, 3        ; 3 uses
  %i.ft = icmp ult i32 %.sroa.speculated, 4
  %unroll_iter = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod132 = icmp ne i32 %xtraiter, 0
  br label %_ZN4ncnn3MatD2Ev.exit157.us155.us.i.i

_ZN4ncnn3MatD2Ev.exit157.us155.us.i.i:            ; preds = %..loopexit137_crit_edge.us163.us.i.i, %_ZN4ncnn3MatD2Ev.exit157.us155.us.preheader.i.i
  %i.fu = phi i64 [ %.pre.i.i, %_ZN4ncnn3MatD2Ev.exit157.us155.us.preheader.i.i ], [ %.lcssa, %..loopexit137_crit_edge.us163.us.i.i ]
  %indvars.iv.i.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit157.us155.us.preheader.i.i ], [ %indvars.iv.next.i.i, %..loopexit137_crit_edge.us163.us.i.i ] ; 2 uses
  %.0137148.us153.us.i.i = phi ptr [ %i.ao, %_ZN4ncnn3MatD2Ev.exit157.us155.us.preheader.i.i ], [ %.lcssa120, %..loopexit137_crit_edge.us163.us.i.i ] ; 2 uses
  %i.fv = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1875
  %i.fw = mul i64 %i.fu, %i.bf
  %i.fx = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1875
  %i.fy = mul i64 %i.fw, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fy
  %i.ga = getelementptr [2 x i8], ptr %i.fz, i64 %indvars.iv.i.i
  %i.gb = getelementptr [2 x i8], ptr %i.ga, i64 %i.fr ; 2 uses
  br i1 %i.ft, label %.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit157.us155.us.i.i.new

_ZN4ncnn3MatD2Ev.exit157.us155.us.i.i.new:        ; preds = %_ZN4ncnn3MatD2Ev.exit157.us155.us.i.i, %_ZN4ncnn3MatD2Ev.exit157.us155.us.i.i.new
  %.3144.us156.us.i.i = phi ptr [ %i.gp, %_ZN4ncnn3MatD2Ev.exit157.us155.us.i.i.new ], [ %.0137148.us153.us.i.i, %_ZN4ncnn3MatD2Ev.exit157.us155.us.i.i ] ; 5 uses
  %.0146142.us158.us.i.i = phi ptr [ %i.gr, %_ZN4ncnn3MatD2Ev.exit157.us155.us.i.i.new ], [ %i.gb, %_ZN4ncnn3MatD2Ev.exit157.us155.us.i.i ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %_ZN4ncnn3MatD2Ev.exit157.us155.us.i.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit157.us155.us.i.i ]
  %i.gc = load <2 x i64>, ptr %.0146142.us158.us.i.i, align 1, !tbaa !254
  store <2 x i64> %i.gc, ptr %.3144.us156.us.i.i, align 1, !tbaa !254
  %i.gd = getelementptr inbounds nuw i8, ptr %.3144.us156.us.i.i, i64 16
  %i.ge = load i64, ptr %i.p, align 8, !tbaa !20
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %.0146142.us158.us.i.i, i64 %i.ge ; 2 uses
  %i.gg = load <2 x i64>, ptr %i.gf, align 1, !tbaa !254
  store <2 x i64> %i.gg, ptr %i.gd, align 1, !tbaa !254
  %i.gh = getelementptr inbounds nuw i8, ptr %.3144.us156.us.i.i, i64 32
  %i.gi = load i64, ptr %i.p, align 8, !tbaa !20
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.gf, i64 %i.gi ; 2 uses
  %i.gk = load <2 x i64>, ptr %i.gj, align 1, !tbaa !254
  store <2 x i64> %i.gk, ptr %i.gh, align 1, !tbaa !254
  %i.gl = getelementptr inbounds nuw i8, ptr %.3144.us156.us.i.i, i64 48
  %i.gm = load i64, ptr %i.p, align 8, !tbaa !20
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.gj, i64 %i.gm ; 2 uses
  %i.go = load <2 x i64>, ptr %i.gn, align 1, !tbaa !254
  store <2 x i64> %i.go, ptr %i.gl, align 1, !tbaa !254
  %i.gp = getelementptr inbounds nuw i8, ptr %.3144.us156.us.i.i, i64 64 ; 3 uses
  %i.gq = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %i.gq ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..loopexit137_crit_edge.us163.us.i.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit157.us155.us.i.i.new, !llvm.loop !1878

..loopexit137_crit_edge.us163.us.i.i.unr-lcssa:   ; preds = %_ZN4ncnn3MatD2Ev.exit157.us155.us.i.i.new
  br i1 %lcmp.mod.not, label %..loopexit137_crit_edge.us163.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit137_crit_edge.us163.us.i.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit157.us155.us.i.i
  %.3144.us156.us.i.i.epil.init = phi ptr [ %.0137148.us153.us.i.i, %_ZN4ncnn3MatD2Ev.exit157.us155.us.i.i ], [ %i.gp, %..loopexit137_crit_edge.us163.us.i.i.unr-lcssa ]
  %.0146142.us158.us.i.i.epil.init = phi ptr [ %i.gb, %_ZN4ncnn3MatD2Ev.exit157.us155.us.i.i ], [ %i.gr, %..loopexit137_crit_edge.us163.us.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod132)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.3144.us156.us.i.i.epil = phi ptr [ %.3144.us156.us.i.i.epil.init, %.epil.preheader ], [ %i.gt, %bb.d ] ; 2 uses
  %.0146142.us158.us.i.i.epil = phi ptr [ %.0146142.us158.us.i.i.epil.init, %.epil.preheader ], [ %i.gv, %bb.d ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.gs = load <2 x i64>, ptr %.0146142.us158.us.i.i.epil, align 1, !tbaa !254
  store <2 x i64> %i.gs, ptr %.3144.us156.us.i.i.epil, align 1, !tbaa !254
  %i.gt = getelementptr inbounds nuw i8, ptr %.3144.us156.us.i.i.epil, i64 16 ; 2 uses
  %i.gu = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %.0146142.us158.us.i.i.epil, i64 %i.gu
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..loopexit137_crit_edge.us163.us.i.i, label %bb.d, !llvm.loop !1879

..loopexit137_crit_edge.us163.us.i.i:             ; preds = %bb.d, %..loopexit137_crit_edge.us163.us.i.i.unr-lcssa
  %.lcssa120 = phi ptr [ %i.gp, %..loopexit137_crit_edge.us163.us.i.i.unr-lcssa ], [ %i.gt, %bb.d ] ; 2 uses
  %.lcssa = phi i64 [ %i.gq, %..loopexit137_crit_edge.us163.us.i.i.unr-lcssa ], [ %i.gu, %bb.d ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 8 ; 3 uses
  %i.gw = or disjoint i64 %indvars.iv.next.i.i, 7
  %i.gx = icmp samesign ult i64 %i.gw, %i.fs
  br i1 %i.gx, label %_ZN4ncnn3MatD2Ev.exit157.us155.us.i.i, label %.preheader136.loopexit197.i.i, !llvm.loop !1874

.preheader136.loopexit.i.i:                       ; preds = %.loopexit138.us.i.loopexit.us.i, %_ZN4ncnn3MatD2Ev.exit158.us.i.preheader.i
  %.us-phi.i = phi ptr [ %i.ao, %_ZN4ncnn3MatD2Ev.exit158.us.i.preheader.i ], [ %i.fi, %.loopexit138.us.i.loopexit.us.i ]
  %.us-phi12.i = phi i64 [ %i.bj, %_ZN4ncnn3MatD2Ev.exit158.us.i.preheader.i ], [ %indvars.iv.next215.i.us.i, %.loopexit138.us.i.loopexit.us.i ]
  %i.gy = trunc nuw nsw i64 %.us-phi12.i to i32
  br label %.preheader136.i.i

.preheader136.loopexit197.i.i:                    ; preds = %..loopexit137_crit_edge.us163.us.i.i
  %i.gz = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %.preheader136.i.i

.preheader136.i.i:                                ; preds = %.preheader136.loopexit197.i.i, %.preheader136.loopexit.i.i, %_ZN4ncnn3MatD2Ev.exit157.us155.preheader.i.i, %.lr.ph149.split.split.preheader.i.i, %bb.c
  %.0138.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %i.fq, %_ZN4ncnn3MatD2Ev.exit157.us155.preheader.i.i ], [ %i.gz, %.preheader136.loopexit197.i.i ], [ %i.gy, %.preheader136.loopexit.i.i ], [ %i.fo, %.lr.ph149.split.split.preheader.i.i ] ; 3 uses
  %.0137.lcssa.i.i = phi ptr [ %i.ao, %bb.c ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit157.us155.preheader.i.i ], [ %.lcssa120, %.preheader136.loopexit197.i.i ], [ %.us-phi.i, %.preheader136.loopexit.i.i ], [ %i.ao, %.lr.ph149.split.split.preheader.i.i ] ; 6 uses
  %i.ha = or disjoint i32 %.0138.lcssa.i.i, 3
  %i.hb = icmp slt i32 %i.ha, %.sroa.speculated64
  br i1 %i.hb, label %.lr.ph181.i.i, label %.preheader.i.i

.lr.ph181.i.i:                                    ; preds = %.preheader136.i.i
  %i.hc = sdiv i32 %i.x, 4
  %i.hd = sext i32 %i.hc to i64
  %17 = sdiv i32 %.sroa.speculated, 4
  %i.he = sext i32 %i.x to i64
  %i.hf = sext i32 %.0138.lcssa.i.i to i64        ; 8 uses
  %i.hg = sext i32 %.sroa.speculated64 to i64
  %i.hh = sext i32 %i.v to i64                    ; 2 uses
  %invariant.op.i.i = add nsw i64 %i.hg, -3       ; 5 uses
  switch i32 %i.bb, label %.loopexit134.i.preheader.i [
    i32 4, label %.lr.ph181.i.split.us.i
    i32 1, label %.lr.ph181.i.split.us15.i
  ]

.loopexit134.i.preheader.i:                       ; preds = %.lr.ph181.i.i
  %i.hi = add nsw i64 %i.hf, 4                    ; 2 uses
  %smax51.i = call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.hi)
  %i.hj = xor i64 %i.hf, -1
  %i.hk = add nsw i64 %smax51.i, %i.hj
  %i.hl = and i64 %i.hk, -4
  %i.hm = add i64 %i.hi, %i.hl
  br label %.preheader.loopexit.i.i

.lr.ph181.i.split.us.i:                           ; preds = %.lr.ph181.i.i
  %i.hn = icmp sgt i32 %.sroa.speculated, 3
  br i1 %i.hn, label %_ZN4ncnn3MatD2Ev.exit156.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit156.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit156.i.us.preheader.i:        ; preds = %.lr.ph181.i.split.us.i
  %i.ho = add nsw i64 %i.hf, 4                    ; 2 uses
  %smax50.i = call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.ho)
  %i.hp = xor i64 %i.hf, -1
  %i.hq = add nsw i64 %smax50.i, %i.hp
  %i.hr = and i64 %i.hq, -4
  %i.hs = add i64 %i.ho, %i.hr
  br label %.preheader.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit156.i.us.us.preheader.i:     ; preds = %.lr.ph181.i.split.us.i
  %.pre52.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1880
  br label %_ZN4ncnn3MatD2Ev.exit156.i.us.us.i

_ZN4ncnn3MatD2Ev.exit156.i.us.us.i:               ; preds = %.loopexit134.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit156.i.us.us.preheader.i
  %i.ht = phi i64 [ %i.jw, %.loopexit134.i.loopexit.us.us.i ], [ %.pre52.i, %_ZN4ncnn3MatD2Ev.exit156.i.us.us.preheader.i ]
  %indvars.iv219.i.us.us.i = phi i64 [ %indvars.iv.next220.i.us.us.i, %.loopexit134.i.loopexit.us.us.i ], [ %i.hf, %_ZN4ncnn3MatD2Ev.exit156.i.us.us.preheader.i ] ; 2 uses
  %.5180.i.us.us.i = phi ptr [ %i.jv, %.loopexit134.i.loopexit.us.us.i ], [ %.0137.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit156.i.us.us.preheader.i ]
  %i.hu = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1880
  %i.hv = mul i64 %i.ht, %i.hd
  %i.hw = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1880
  %i.hx = mul i64 %i.hv, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hx
  %i.hz = add nsw i64 %indvars.iv219.i.us.us.i, %i.hh
  %.idx233.i.us.us.i = shl nsw i64 %i.hz, 3
  %i.ia = getelementptr inbounds i8, ptr %i.hy, i64 %.idx233.i.us.us.i
  br label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %.lr.ph.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit156.i.us.us.i
  %.6173.i.us.us.i = phi ptr [ %i.jv, %.lr.ph.i.us.us.i ], [ %.5180.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit156.i.us.us.i ] ; 3 uses
  %.0143172.i.us.us.i = phi i32 [ %i.jy, %.lr.ph.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit156.i.us.us.i ]
  %.0144171.i.us.us.i = phi ptr [ %i.jx, %.lr.ph.i.us.us.i ], [ %i.ia, %_ZN4ncnn3MatD2Ev.exit156.i.us.us.i ] ; 5 uses
  %i.ib = load i64, ptr %.0144171.i.us.us.i, align 1, !tbaa !254
  %i.ic = insertelement <2 x i64> poison, i64 %i.ib, i64 0
  %i.id = bitcast <2 x i64> %i.ic to <8 x i16>
  %i.ie = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.id, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.if = bitcast <8 x i16> %i.ie to <4 x float>  ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.0144171.i.us.us.i, i64 8
  %i.ih = load i64, ptr %i.ig, align 1, !tbaa !254
  %i.ii = insertelement <2 x i64> poison, i64 %i.ih, i64 0
  %i.ij = bitcast <2 x i64> %i.ii to <8 x i16>
  %i.ik = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ij, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.il = bitcast <8 x i16> %i.ik to <4 x float>  ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.0144171.i.us.us.i, i64 16
  %i.in = load i64, ptr %i.im, align 1, !tbaa !254
  %i.io = insertelement <2 x i64> poison, i64 %i.in, i64 0
  %i.ip = bitcast <2 x i64> %i.io to <8 x i16>
  %i.iq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ip, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ir = bitcast <8 x i16> %i.iq to <4 x float>  ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.0144171.i.us.us.i, i64 24
  %i.it = load i64, ptr %i.is, align 1, !tbaa !254
  %i.iu = insertelement <2 x i64> poison, i64 %i.it, i64 0
  %i.iv = bitcast <2 x i64> %i.iu to <8 x i16>
  %i.iw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.iv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ix = bitcast <8 x i16> %i.iw to <4 x float>  ; 2 uses
  %i.iy = shufflevector <4 x float> %i.if, <4 x float> %i.il, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.iz = shufflevector <4 x float> %i.ir, <4 x float> %i.ix, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ja = shufflevector <4 x float> %i.if, <4 x float> %i.il, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.jb = shufflevector <4 x float> %i.ir, <4 x float> %i.ix, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.jc = shufflevector <4 x float> %i.iy, <4 x float> %i.iz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jd = shufflevector <4 x float> %i.iz, <4 x float> %i.iy, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.je = shufflevector <4 x float> %i.ja, <4 x float> %i.jb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jf = shufflevector <4 x float> %i.jb, <4 x float> %i.ja, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.jg = bitcast <4 x float> %i.jc to <8 x i16>
  %i.jh = shufflevector <8 x i16> %i.jg, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ji = bitcast <8 x i16> %i.jh to <4 x float>
  %i.jj = bitcast <4 x float> %i.jd to <8 x i16>
  %i.jk = shufflevector <8 x i16> %i.jj, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.jl = bitcast <8 x i16> %i.jk to <4 x float>
  %i.jm = shufflevector <4 x float> %i.ji, <4 x float> %i.jl, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %i.jm, ptr %.6173.i.us.us.i, align 1, !tbaa !254
  %i.jn = getelementptr inbounds nuw i8, ptr %.6173.i.us.us.i, i64 16
  %i.jo = bitcast <4 x float> %i.je to <8 x i16>
  %i.jp = shufflevector <8 x i16> %i.jo, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.jq = bitcast <8 x i16> %i.jp to <4 x float>
  %i.jr = bitcast <4 x float> %i.jf to <8 x i16>
  %i.js = shufflevector <8 x i16> %i.jr, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.jt = bitcast <8 x i16> %i.js to <4 x float>
  %i.ju = shufflevector <4 x float> %i.jq, <4 x float> %i.jt, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %i.ju, ptr %i.jn, align 1, !tbaa !254
  %i.jv = getelementptr inbounds nuw i8, ptr %.6173.i.us.us.i, i64 32 ; 3 uses
  %i.jw = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx147.i.us.us.i = shl i64 %i.jw, 3
  %i.jx = getelementptr inbounds nuw i8, ptr %.0144171.i.us.us.i, i64 %.idx147.i.us.us.i
  %i.jy = add nuw nsw i32 %.0143172.i.us.us.i, 1  ; 2 uses
  %exitcond217.not.i.us.us.i = icmp eq i32 %i.jy, %17
  br i1 %exitcond217.not.i.us.us.i, label %.loopexit134.i.loopexit.us.us.i, label %.lr.ph.i.us.us.i, !llvm.loop !1883

.loopexit134.i.loopexit.us.us.i:                  ; preds = %.lr.ph.i.us.us.i
  %indvars.iv.next220.i.us.us.i = add nuw nsw i64 %indvars.iv219.i.us.us.i, 4 ; 3 uses
  %i.jz = icmp slt i64 %indvars.iv.next220.i.us.us.i, %invariant.op.i.i
  br i1 %i.jz, label %_ZN4ncnn3MatD2Ev.exit156.i.us.us.i, label %.preheader.loopexit.i.i, !llvm.loop !1884

.lr.ph181.i.split.us15.i:                         ; preds = %.lr.ph181.i.i
  %i.ka = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.ka, label %_ZN4ncnn3MatD2Ev.exit155.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit155.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit155.i.us.preheader.i:        ; preds = %.lr.ph181.i.split.us15.i
  %i.kb = add nsw i64 %i.hf, 4                    ; 2 uses
  %smax.i = call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.kb)
  %i.kc = xor i64 %i.hf, -1
  %i.kd = add nsw i64 %smax.i, %i.kc
  %i.ke = and i64 %i.kd, -4
  %i.kf = add i64 %i.kb, %i.ke
  br label %.preheader.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit155.i.us.us.preheader.i:     ; preds = %.lr.ph181.i.split.us15.i
  %.pre.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1885
  %xtraiter133 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.kg = icmp ult i32 %.sroa.speculated, 4
  %unroll_iter139 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod135.not = icmp eq i32 %xtraiter133, 0
  %lcmp.mod138 = icmp ne i32 %xtraiter133, 0
  br label %_ZN4ncnn3MatD2Ev.exit155.i.us.us.i

_ZN4ncnn3MatD2Ev.exit155.i.us.us.i:               ; preds = %.loopexit134.i.loopexit2.us.us.i, %_ZN4ncnn3MatD2Ev.exit155.i.us.us.preheader.i
  %i.kh = phi i64 [ %.lcssa123, %.loopexit134.i.loopexit2.us.us.i ], [ %.pre.i, %_ZN4ncnn3MatD2Ev.exit155.i.us.us.preheader.i ]
  %indvars.iv219.i.us16.us.i = phi i64 [ %indvars.iv.next220.i.us20.us.i, %.loopexit134.i.loopexit2.us.us.i ], [ %i.hf, %_ZN4ncnn3MatD2Ev.exit155.i.us.us.preheader.i ] ; 2 uses
  %.5180.i.us17.us.i = phi ptr [ %.lcssa124, %.loopexit134.i.loopexit2.us.us.i ], [ %.0137.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit155.i.us.us.preheader.i ] ; 2 uses
  %i.ki = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1885
  %i.kj = mul i64 %i.kh, %i.he
  %i.kk = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1885
  %i.kl = mul i64 %i.kj, %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kl
  %i.kn = getelementptr [2 x i8], ptr %i.km, i64 %indvars.iv219.i.us16.us.i
  %i.ko = getelementptr [2 x i8], ptr %i.kn, i64 %i.hh ; 2 uses
  br i1 %i.kg, label %.lr.ph177.i.us.us.i.epil.preheader, label %.lr.ph177.i.us.us.i

.lr.ph177.i.us.us.i:                              ; preds = %_ZN4ncnn3MatD2Ev.exit155.i.us.us.i, %.lr.ph177.i.us.us.i
  %.0136175.i.us.us.i = phi ptr [ %i.le, %.lr.ph177.i.us.us.i ], [ %i.ko, %_ZN4ncnn3MatD2Ev.exit155.i.us.us.i ] ; 2 uses
  %.8174.i.us.us.i = phi ptr [ %i.lc, %.lr.ph177.i.us.us.i ], [ %.5180.i.us17.us.i, %_ZN4ncnn3MatD2Ev.exit155.i.us.us.i ] ; 5 uses
  %niter140 = phi i32 [ %niter140.next.3, %.lr.ph177.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit155.i.us.us.i ]
  %i.kp = load i64, ptr %.0136175.i.us.us.i, align 1, !tbaa !254
  store i64 %i.kp, ptr %.8174.i.us.us.i, align 1, !tbaa !254
  %i.kq = getelementptr inbounds nuw i8, ptr %.8174.i.us.us.i, i64 8
  %i.kr = load i64, ptr %i.p, align 8, !tbaa !20
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %.0136175.i.us.us.i, i64 %i.kr ; 2 uses
  %i.kt = load i64, ptr %i.ks, align 1, !tbaa !254
  store i64 %i.kt, ptr %i.kq, align 1, !tbaa !254
  %i.ku = getelementptr inbounds nuw i8, ptr %.8174.i.us.us.i, i64 16
  %i.kv = load i64, ptr %i.p, align 8, !tbaa !20
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.ks, i64 %i.kv ; 2 uses
  %i.kx = load i64, ptr %i.kw, align 1, !tbaa !254
  store i64 %i.kx, ptr %i.ku, align 1, !tbaa !254
  %i.ky = getelementptr inbounds nuw i8, ptr %.8174.i.us.us.i, i64 24
  %i.kz = load i64, ptr %i.p, align 8, !tbaa !20
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %i.kw, i64 %i.kz ; 2 uses
  %i.lb = load i64, ptr %i.la, align 1, !tbaa !254
  store i64 %i.lb, ptr %i.ky, align 1, !tbaa !254
  %i.lc = getelementptr inbounds nuw i8, ptr %.8174.i.us.us.i, i64 32 ; 3 uses
  %i.ld = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.la, i64 %i.ld ; 2 uses
  %niter140.next.3 = add i32 %niter140, 4         ; 2 uses
  %niter140.ncmp.3 = icmp eq i32 %niter140.next.3, %unroll_iter139
  br i1 %niter140.ncmp.3, label %.loopexit134.i.loopexit2.us.us.i.unr-lcssa, label %.lr.ph177.i.us.us.i, !llvm.loop !1888

.loopexit134.i.loopexit2.us.us.i.unr-lcssa:       ; preds = %.lr.ph177.i.us.us.i
  br i1 %lcmp.mod135.not, label %.loopexit134.i.loopexit2.us.us.i, label %.lr.ph177.i.us.us.i.epil.preheader

.lr.ph177.i.us.us.i.epil.preheader:               ; preds = %.loopexit134.i.loopexit2.us.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit155.i.us.us.i
  %.0136175.i.us.us.i.epil.init = phi ptr [ %i.ko, %_ZN4ncnn3MatD2Ev.exit155.i.us.us.i ], [ %i.le, %.loopexit134.i.loopexit2.us.us.i.unr-lcssa ]
  %.8174.i.us.us.i.epil.init = phi ptr [ %.5180.i.us17.us.i, %_ZN4ncnn3MatD2Ev.exit155.i.us.us.i ], [ %i.lc, %.loopexit134.i.loopexit2.us.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod138)
  br label %.lr.ph177.i.us.us.i.epil

.lr.ph177.i.us.us.i.epil:                         ; preds = %.lr.ph177.i.us.us.i.epil, %.lr.ph177.i.us.us.i.epil.preheader
  %.0136175.i.us.us.i.epil = phi ptr [ %i.li, %.lr.ph177.i.us.us.i.epil ], [ %.0136175.i.us.us.i.epil.init, %.lr.ph177.i.us.us.i.epil.preheader ] ; 2 uses
  %.8174.i.us.us.i.epil = phi ptr [ %i.lg, %.lr.ph177.i.us.us.i.epil ], [ %.8174.i.us.us.i.epil.init, %.lr.ph177.i.us.us.i.epil.preheader ] ; 2 uses
  %epil.iter134 = phi i32 [ %epil.iter134.next, %.lr.ph177.i.us.us.i.epil ], [ 0, %.lr.ph177.i.us.us.i.epil.preheader ]
  %i.lf = load i64, ptr %.0136175.i.us.us.i.epil, align 1, !tbaa !254
  store i64 %i.lf, ptr %.8174.i.us.us.i.epil, align 1, !tbaa !254
  %i.lg = getelementptr inbounds nuw i8, ptr %.8174.i.us.us.i.epil, i64 8 ; 2 uses
  %i.lh = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %.0136175.i.us.us.i.epil, i64 %i.lh
  %epil.iter134.next = add i32 %epil.iter134, 1   ; 2 uses
  %epil.iter134.cmp.not = icmp eq i32 %epil.iter134.next, %xtraiter133
  br i1 %epil.iter134.cmp.not, label %.loopexit134.i.loopexit2.us.us.i, label %.lr.ph177.i.us.us.i.epil, !llvm.loop !1889

.loopexit134.i.loopexit2.us.us.i:                 ; preds = %.lr.ph177.i.us.us.i.epil, %.loopexit134.i.loopexit2.us.us.i.unr-lcssa
  %.lcssa124 = phi ptr [ %i.lc, %.loopexit134.i.loopexit2.us.us.i.unr-lcssa ], [ %i.lg, %.lr.ph177.i.us.us.i.epil ] ; 2 uses
  %.lcssa123 = phi i64 [ %i.ld, %.loopexit134.i.loopexit2.us.us.i.unr-lcssa ], [ %i.lh, %.lr.ph177.i.us.us.i.epil ]
  %indvars.iv.next220.i.us20.us.i = add nuw nsw i64 %indvars.iv219.i.us16.us.i, 4 ; 3 uses
  %i.lj = icmp slt i64 %indvars.iv.next220.i.us20.us.i, %invariant.op.i.i
  br i1 %i.lj, label %_ZN4ncnn3MatD2Ev.exit155.i.us.us.i, label %.preheader.loopexit.i.i, !llvm.loop !1884

.preheader.loopexit.i.i:                          ; preds = %.loopexit134.i.loopexit2.us.us.i, %.loopexit134.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit155.i.us.preheader.i, %_ZN4ncnn3MatD2Ev.exit156.i.us.preheader.i, %.loopexit134.i.preheader.i
  %.us-phi13.i = phi ptr [ %.0137.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit155.i.us.preheader.i ], [ %.0137.lcssa.i.i, %.loopexit134.i.preheader.i ], [ %i.jv, %.loopexit134.i.loopexit.us.us.i ], [ %.0137.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit156.i.us.preheader.i ], [ %.lcssa124, %.loopexit134.i.loopexit2.us.us.i ]
  %.us-phi14.i = phi i64 [ %i.kf, %_ZN4ncnn3MatD2Ev.exit155.i.us.preheader.i ], [ %i.hm, %.loopexit134.i.preheader.i ], [ %indvars.iv.next220.i.us.us.i, %.loopexit134.i.loopexit.us.us.i ], [ %i.hs, %_ZN4ncnn3MatD2Ev.exit156.i.us.preheader.i ], [ %indvars.iv.next220.i.us20.us.i, %.loopexit134.i.loopexit2.us.us.i ]
  %i.lk = trunc nsw i64 %.us-phi14.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %.preheader136.i.i
  %.1139.lcssa.i.i = phi i32 [ %.0138.lcssa.i.i, %.preheader136.i.i ], [ %i.lk, %.preheader.loopexit.i.i ] ; 2 uses
  %.5.lcssa.i.i = phi ptr [ %.0137.lcssa.i.i, %.preheader136.i.i ], [ %.us-phi13.i, %.preheader.loopexit.i.i ] ; 2 uses
  %i.ll = icmp slt i32 %.1139.lcssa.i.i, %.sroa.speculated64
  br i1 %i.ll, label %.lr.ph196.i.i, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph196.i.i:                                    ; preds = %.preheader.i.i
  %i.lm = sdiv i32 %i.x, 4
  %i.ln = sext i32 %i.lm to i64
  %18 = sdiv i32 %.sroa.speculated, 4             ; 3 uses
  %i.lo = sext i32 %i.x to i64
  %i.lp = sext i32 %.1139.lcssa.i.i to i64        ; 2 uses
  %i.lq = sext i32 %i.v to i64                    ; 2 uses
  %wide.trip.count.i.i = sext i32 %.sroa.speculated64 to i64 ; 2 uses
  switch i32 %i.bb, label %_ZN4ncnn3MatD2Ev.exit [
    i32 4, label %.lr.ph196.i.split.us.i
    i32 1, label %.lr.ph196.i.split.us29.i
  ]

.lr.ph196.i.split.us.i:                           ; preds = %.lr.ph196.i.i
  %i.lr = icmp sgt i32 %.sroa.speculated, 3
  br i1 %i.lr, label %_ZN4ncnn3MatD2Ev.exit154.i.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit154.i.us.preheader.i:        ; preds = %.lr.ph196.i.split.us.i
  %.pre53.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1890
  %i.ls = add nsw i32 %18, -1
  %xtraiter149 = and i32 %18, 3                   ; 3 uses
  %i.lt = icmp ult i32 %i.ls, 3
  %unroll_iter155 = and i32 %18, 536870908
  %lcmp.mod151.not = icmp eq i32 %xtraiter149, 0
  %lcmp.mod154 = icmp ne i32 %xtraiter149, 0
  br label %_ZN4ncnn3MatD2Ev.exit154.i.us.i

_ZN4ncnn3MatD2Ev.exit154.i.us.i:                  ; preds = %.loopexit.i.loopexit.us.i, %_ZN4ncnn3MatD2Ev.exit154.i.us.preheader.i
  %i.lu = phi i64 [ %.lcssa128, %.loopexit.i.loopexit.us.i ], [ %.pre53.i, %_ZN4ncnn3MatD2Ev.exit154.i.us.preheader.i ]
  %indvars.iv224.i.us.i = phi i64 [ %indvars.iv.next225.i.us.i, %.loopexit.i.loopexit.us.i ], [ %i.lp, %_ZN4ncnn3MatD2Ev.exit154.i.us.preheader.i ] ; 2 uses
  %.10195.i.us.i = phi ptr [ %.lcssa129, %.loopexit.i.loopexit.us.i ], [ %.5.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit154.i.us.preheader.i ] ; 2 uses
  %i.lv = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1890
  %i.lw = mul i64 %i.lu, %i.ln
  %i.lx = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1890
  %i.ly = mul i64 %i.lw, %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.ly
  %i.ma = add nsw i64 %indvars.iv224.i.us.i, %i.lq
  %.idx234.i.us.i = shl nsw i64 %i.ma, 3
  %i.mb = getelementptr inbounds i8, ptr %i.lz, i64 %.idx234.i.us.i ; 2 uses
  br i1 %i.lt, label %.lr.ph187.i.us.i.epil.preheader, label %.lr.ph187.i.us.i

.lr.ph187.i.us.i:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit154.i.us.i, %.lr.ph187.i.us.i
  %.0134185.i.us.i = phi ptr [ %i.mr, %.lr.ph187.i.us.i ], [ %i.mb, %_ZN4ncnn3MatD2Ev.exit154.i.us.i ] ; 2 uses
  %.11184.i.us.i = phi ptr [ %i.mp, %.lr.ph187.i.us.i ], [ %.10195.i.us.i, %_ZN4ncnn3MatD2Ev.exit154.i.us.i ] ; 5 uses
  %niter156 = phi i32 [ %niter156.next.3, %.lr.ph187.i.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit154.i.us.i ]
  %i.mc = load i64, ptr %.0134185.i.us.i, align 1, !tbaa !254
  store i64 %i.mc, ptr %.11184.i.us.i, align 1, !tbaa !254
  %i.md = getelementptr inbounds nuw i8, ptr %.11184.i.us.i, i64 8
  %i.me = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.i.us.i = shl i64 %i.me, 3
  %i.mf = getelementptr inbounds nuw i8, ptr %.0134185.i.us.i, i64 %.idx.i.us.i ; 2 uses
  %i.mg = load i64, ptr %i.mf, align 1, !tbaa !254
  store i64 %i.mg, ptr %i.md, align 1, !tbaa !254
  %i.mh = getelementptr inbounds nuw i8, ptr %.11184.i.us.i, i64 16
  %i.mi = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.i.us.i.1 = shl i64 %i.mi, 3
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mf, i64 %.idx.i.us.i.1 ; 2 uses
  %i.mk = load i64, ptr %i.mj, align 1, !tbaa !254
  store i64 %i.mk, ptr %i.mh, align 1, !tbaa !254
  %i.ml = getelementptr inbounds nuw i8, ptr %.11184.i.us.i, i64 24
  %i.mm = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.i.us.i.2 = shl i64 %i.mm, 3
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mj, i64 %.idx.i.us.i.2 ; 2 uses
  %i.mo = load i64, ptr %i.mn, align 1, !tbaa !254
  store i64 %i.mo, ptr %i.ml, align 1, !tbaa !254
  %i.mp = getelementptr inbounds nuw i8, ptr %.11184.i.us.i, i64 32 ; 3 uses
  %i.mq = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx.i.us.i.3 = shl i64 %i.mq, 3
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 %.idx.i.us.i.3 ; 2 uses
  %niter156.next.3 = add i32 %niter156, 4         ; 2 uses
  %niter156.ncmp.3 = icmp eq i32 %niter156.next.3, %unroll_iter155
  br i1 %niter156.ncmp.3, label %.loopexit.i.loopexit.us.i.unr-lcssa, label %.lr.ph187.i.us.i, !llvm.loop !1893

.loopexit.i.loopexit.us.i.unr-lcssa:              ; preds = %.lr.ph187.i.us.i
  br i1 %lcmp.mod151.not, label %.loopexit.i.loopexit.us.i, label %.lr.ph187.i.us.i.epil.preheader

.lr.ph187.i.us.i.epil.preheader:                  ; preds = %.loopexit.i.loopexit.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit154.i.us.i
  %.0134185.i.us.i.epil.init = phi ptr [ %i.mb, %_ZN4ncnn3MatD2Ev.exit154.i.us.i ], [ %i.mr, %.loopexit.i.loopexit.us.i.unr-lcssa ]
  %.11184.i.us.i.epil.init = phi ptr [ %.10195.i.us.i, %_ZN4ncnn3MatD2Ev.exit154.i.us.i ], [ %i.mp, %.loopexit.i.loopexit.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod154)
  br label %.lr.ph187.i.us.i.epil

.lr.ph187.i.us.i.epil:                            ; preds = %.lr.ph187.i.us.i.epil, %.lr.ph187.i.us.i.epil.preheader
  %.0134185.i.us.i.epil = phi ptr [ %i.mv, %.lr.ph187.i.us.i.epil ], [ %.0134185.i.us.i.epil.init, %.lr.ph187.i.us.i.epil.preheader ] ; 2 uses
  %.11184.i.us.i.epil = phi ptr [ %i.mt, %.lr.ph187.i.us.i.epil ], [ %.11184.i.us.i.epil.init, %.lr.ph187.i.us.i.epil.preheader ] ; 2 uses
  %epil.iter150 = phi i32 [ %epil.iter150.next, %.lr.ph187.i.us.i.epil ], [ 0, %.lr.ph187.i.us.i.epil.preheader ]
  %i.ms = load i64, ptr %.0134185.i.us.i.epil, align 1, !tbaa !254
  store i64 %i.ms, ptr %.11184.i.us.i.epil, align 1, !tbaa !254
  %i.mt = getelementptr inbounds nuw i8, ptr %.11184.i.us.i.epil, i64 8 ; 2 uses
  %i.mu = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx.i.us.i.epil = shl i64 %i.mu, 3
  %i.mv = getelementptr inbounds nuw i8, ptr %.0134185.i.us.i.epil, i64 %.idx.i.us.i.epil
  %epil.iter150.next = add i32 %epil.iter150, 1   ; 2 uses
  %epil.iter150.cmp.not = icmp eq i32 %epil.iter150.next, %xtraiter149
  br i1 %epil.iter150.cmp.not, label %.loopexit.i.loopexit.us.i, label %.lr.ph187.i.us.i.epil, !llvm.loop !1894

.loopexit.i.loopexit.us.i:                        ; preds = %.lr.ph187.i.us.i.epil, %.loopexit.i.loopexit.us.i.unr-lcssa
  %.lcssa129 = phi ptr [ %i.mp, %.loopexit.i.loopexit.us.i.unr-lcssa ], [ %i.mt, %.lr.ph187.i.us.i.epil ]
  %.lcssa128 = phi i64 [ %i.mq, %.loopexit.i.loopexit.us.i.unr-lcssa ], [ %i.mu, %.lr.ph187.i.us.i.epil ]
  %indvars.iv.next225.i.us.i = add nsw i64 %indvars.iv224.i.us.i, 1 ; 2 uses
  %exitcond227.not.i.us.i = icmp eq i64 %indvars.iv.next225.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond227.not.i.us.i, label %_ZN4ncnn3MatD2Ev.exit, label %_ZN4ncnn3MatD2Ev.exit154.i.us.i, !llvm.loop !1895

.lr.ph196.i.split.us29.i:                         ; preds = %.lr.ph196.i.i
  %i.mw = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.mw, label %.lr.ph196.i.split.us29.split.i, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph196.i.split.us29.split.i:                   ; preds = %.lr.ph196.i.split.us29.i
  %i.mx = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1896
  %i.my = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1896 ; 10 uses
  %i.mz = mul i64 %i.my, %i.lo
  %i.na = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1896
  %i.nb = mul i64 %i.mz, %i.na
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.nb
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.nc, i64 %i.lq
  %xtraiter142 = and i32 %.sroa.speculated, 7     ; 3 uses
  %i.nd = icmp ult i32 %.sroa.speculated, 8
  %unroll_iter147 = and i32 %.sroa.speculated, 2147483640
  %lcmp.mod144.not = icmp eq i32 %xtraiter142, 0
  %lcmp.mod146 = icmp ne i32 %xtraiter142, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i.us.i

_ZN4ncnn3MatD2Ev.exit.i.us.i:                     ; preds = %.loopexit.i.loopexit1.us.i, %.lr.ph196.i.split.us29.split.i
  %indvars.iv224.i.us30.i = phi i64 [ %i.lp, %.lr.ph196.i.split.us29.split.i ], [ %indvars.iv.next225.i.us34.i, %.loopexit.i.loopexit1.us.i ] ; 2 uses
  %.10195.i.us31.i = phi ptr [ %.5.lcssa.i.i, %.lr.ph196.i.split.us29.split.i ], [ %.lcssa127, %.loopexit.i.loopexit1.us.i ] ; 2 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv224.i.us30.i ; 2 uses
  br i1 %i.nd, label %.epil.preheader141, label %_ZN4ncnn3MatD2Ev.exit.i.us.i.new

_ZN4ncnn3MatD2Ev.exit.i.us.i.new:                 ; preds = %_ZN4ncnn3MatD2Ev.exit.i.us.i, %_ZN4ncnn3MatD2Ev.exit.i.us.i.new
  %.0132190.i.us.i = phi ptr [ %i.ob, %_ZN4ncnn3MatD2Ev.exit.i.us.i.new ], [ %gep.i, %_ZN4ncnn3MatD2Ev.exit.i.us.i ] ; 2 uses
  %.13189.i.us.i = phi ptr [ %i.oa, %_ZN4ncnn3MatD2Ev.exit.i.us.i.new ], [ %.10195.i.us31.i, %_ZN4ncnn3MatD2Ev.exit.i.us.i ] ; 9 uses
  %niter148 = phi i32 [ %niter148.next.7, %_ZN4ncnn3MatD2Ev.exit.i.us.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit.i.us.i ]
  %i.ne = load i16, ptr %.0132190.i.us.i, align 2, !tbaa !394
  store i16 %i.ne, ptr %.13189.i.us.i, align 2, !tbaa !394
  %i.nf = getelementptr inbounds nuw i8, ptr %.13189.i.us.i, i64 2
  %i.ng = getelementptr inbounds nuw [2 x i8], ptr %.0132190.i.us.i, i64 %i.my ; 2 uses
  %i.nh = load i16, ptr %i.ng, align 2, !tbaa !394
  store i16 %i.nh, ptr %i.nf, align 2, !tbaa !394
  %i.ni = getelementptr inbounds nuw i8, ptr %.13189.i.us.i, i64 4
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr %i.ng, i64 %i.my ; 2 uses
  %i.nk = load i16, ptr %i.nj, align 2, !tbaa !394
  store i16 %i.nk, ptr %i.ni, align 2, !tbaa !394
  %i.nl = getelementptr inbounds nuw i8, ptr %.13189.i.us.i, i64 6
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %i.nj, i64 %i.my ; 2 uses
  %i.nn = load i16, ptr %i.nm, align 2, !tbaa !394
  store i16 %i.nn, ptr %i.nl, align 2, !tbaa !394
  %i.no = getelementptr inbounds nuw i8, ptr %.13189.i.us.i, i64 8
  %i.np = getelementptr inbounds nuw [2 x i8], ptr %i.nm, i64 %i.my ; 2 uses
  %i.nq = load i16, ptr %i.np, align 2, !tbaa !394
  store i16 %i.nq, ptr %i.no, align 2, !tbaa !394
  %i.nr = getelementptr inbounds nuw i8, ptr %.13189.i.us.i, i64 10
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %i.np, i64 %i.my ; 2 uses
  %i.nt = load i16, ptr %i.ns, align 2, !tbaa !394
  store i16 %i.nt, ptr %i.nr, align 2, !tbaa !394
  %i.nu = getelementptr inbounds nuw i8, ptr %.13189.i.us.i, i64 12
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.my ; 2 uses
  %i.nw = load i16, ptr %i.nv, align 2, !tbaa !394
  store i16 %i.nw, ptr %i.nu, align 2, !tbaa !394
  %i.nx = getelementptr inbounds nuw i8, ptr %.13189.i.us.i, i64 14
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr %i.nv, i64 %i.my ; 2 uses
  %i.nz = load i16, ptr %i.ny, align 2, !tbaa !394
  store i16 %i.nz, ptr %i.nx, align 2, !tbaa !394
  %i.oa = getelementptr inbounds nuw i8, ptr %.13189.i.us.i, i64 16 ; 3 uses
  %i.ob = getelementptr inbounds nuw [2 x i8], ptr %i.ny, i64 %i.my ; 2 uses
  %niter148.next.7 = add i32 %niter148, 8         ; 2 uses
  %niter148.ncmp.7 = icmp eq i32 %niter148.next.7, %unroll_iter147
  br i1 %niter148.ncmp.7, label %.loopexit.i.loopexit1.us.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit.i.us.i.new, !llvm.loop !1899

.loopexit.i.loopexit1.us.i.unr-lcssa:             ; preds = %_ZN4ncnn3MatD2Ev.exit.i.us.i.new
  br i1 %lcmp.mod144.not, label %.loopexit.i.loopexit1.us.i, label %.epil.preheader141

.epil.preheader141:                               ; preds = %.loopexit.i.loopexit1.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit.i.us.i
  %.0132190.i.us.i.epil.init = phi ptr [ %gep.i, %_ZN4ncnn3MatD2Ev.exit.i.us.i ], [ %i.ob, %.loopexit.i.loopexit1.us.i.unr-lcssa ]
  %.13189.i.us.i.epil.init = phi ptr [ %.10195.i.us31.i, %_ZN4ncnn3MatD2Ev.exit.i.us.i ], [ %i.oa, %.loopexit.i.loopexit1.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod146)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader141
  %.0132190.i.us.i.epil = phi ptr [ %.0132190.i.us.i.epil.init, %.epil.preheader141 ], [ %i.oe, %bb.e ] ; 2 uses
  %.13189.i.us.i.epil = phi ptr [ %.13189.i.us.i.epil.init, %.epil.preheader141 ], [ %i.od, %bb.e ] ; 2 uses
  %epil.iter143 = phi i32 [ 0, %.epil.preheader141 ], [ %epil.iter143.next, %bb.e ]
  %i.oc = load i16, ptr %.0132190.i.us.i.epil, align 2, !tbaa !394
  store i16 %i.oc, ptr %.13189.i.us.i.epil, align 2, !tbaa !394
  %i.od = getelementptr inbounds nuw i8, ptr %.13189.i.us.i.epil, i64 2 ; 2 uses
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %.0132190.i.us.i.epil, i64 %i.my
  %epil.iter143.next = add i32 %epil.iter143, 1   ; 2 uses
  %epil.iter143.cmp.not = icmp eq i32 %epil.iter143.next, %xtraiter142
  br i1 %epil.iter143.cmp.not, label %.loopexit.i.loopexit1.us.i, label %bb.e, !llvm.loop !1900

.loopexit.i.loopexit1.us.i:                       ; preds = %bb.e, %.loopexit.i.loopexit1.us.i.unr-lcssa
  %.lcssa127 = phi ptr [ %i.oa, %.loopexit.i.loopexit1.us.i.unr-lcssa ], [ %i.od, %bb.e ]
  %indvars.iv.next225.i.us34.i = add nsw i64 %indvars.iv224.i.us30.i, 1 ; 2 uses
  %exitcond227.not.i.us35.i = icmp eq i64 %indvars.iv.next225.i.us34.i, %wide.trip.count.i.i
  br i1 %exitcond227.not.i.us35.i, label %_ZN4ncnn3MatD2Ev.exit, label %_ZN4ncnn3MatD2Ev.exit.i.us.i, !llvm.loop !1895

bb.f:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit36
  %i.of = icmp eq i32 %i.at, 2                    ; 4 uses
  %or.cond13.i = and i1 %or.cond.i, %i.of
  %i.og = icmp eq i32 %i.au, 2                    ; 4 uses
  %or.cond15.i = and i1 %or.cond13.i, %i.og
  br i1 %or.cond15.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated64, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
end_hunk_3
