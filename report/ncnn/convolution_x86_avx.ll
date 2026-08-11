inline.NumInlined: 392
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 121
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 259
begin_hunk_0_@_ZN4ncnnL41conv3x3s1_winograd63_transform_input_tileERKNS_3MatERS0_iiiii.omp_outlined:bb.a
  br i1 %i.kg, label %.noexc, label %._crit_edge, !llvm.loop !1302

bb.al:                                            ; preds = %bb.c, %bb.al
  %indvars.iv490 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next491, %bb.al ] ; 2 uses
  %.0244482 = phi ptr [ %i.cs, %bb.c ], [ %i.mk, %bb.al ] ; 2 uses
  %.0245481 = phi ptr [ %i.cv, %bb.c ], [ %i.ml, %bb.al ] ; 2 uses
  %.0246480 = phi ptr [ %i.cy, %bb.c ], [ %i.mm, %bb.al ] ; 2 uses
  %.0247479 = phi ptr [ %i.db, %bb.c ], [ %i.mn, %bb.al ] ; 2 uses
  %.0248478 = phi ptr [ %i.de, %bb.c ], [ %i.mo, %bb.al ] ; 2 uses
  %.0249477 = phi ptr [ %i.dh, %bb.c ], [ %i.mp, %bb.al ] ; 2 uses
  %.0250476 = phi ptr [ %i.dk, %bb.c ], [ %i.mq, %bb.al ] ; 2 uses
  %.0251475 = phi ptr [ %i.dn, %bb.c ], [ %i.mr, %bb.al ] ; 2 uses
  %i.kh = getelementptr inbounds nuw [256 x i8], ptr %i.e, i64 %indvars.iv490 ; 8 uses
  %i.ki = load <8 x float>, ptr %i.kh, align 32, !tbaa !316
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  %i.kk = load <8 x float>, ptr %i.kj, align 32, !tbaa !316 ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 64
  %i.km = load <8 x float>, ptr %i.kl, align 32, !tbaa !316 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kh, i64 96
  %i.ko = load <8 x float>, ptr %i.kn, align 32, !tbaa !316 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kh, i64 128
  %i.kq = load <8 x float>, ptr %i.kp, align 32, !tbaa !316 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kh, i64 160
  %i.ks = load <8 x float>, ptr %i.kr, align 32, !tbaa !316 ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kh, i64 192
  %i.ku = load <8 x float>, ptr %i.kt, align 32, !tbaa !316 ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kh, i64 224
  %i.kw = load <8 x float>, ptr %i.kv, align 32, !tbaa !316
  %i.kx = fmul fast <8 x float> %i.kq, splat (float -4.250000e+00)
  %i.ky = fadd fast <8 x float> %i.kx, %i.km
  %i.kz = fadd fast <8 x float> %i.ky, %i.ku      ; 2 uses
  %i.la = fmul fast <8 x float> %i.ko, splat (float -4.250000e+00)
  %i.lb = fadd fast <8 x float> %i.la, %i.kk
  %i.lc = fadd fast <8 x float> %i.lb, %i.ks      ; 2 uses
  %i.ld = fmul fast <8 x float> %i.km, splat (float 2.500000e-01)
  %i.le = fmul fast <8 x float> %i.kq, splat (float -1.250000e+00) ; 2 uses
  %i.lf = fadd fast <8 x float> %i.le, %i.ld
  %i.lg = fadd fast <8 x float> %i.lf, %i.ku      ; 2 uses
  %i.lh = fmul fast <8 x float> %i.kk, splat (float 5.000000e-01)
  %i.li = fmul fast <8 x float> %i.ko, splat (float -2.500000e+00) ; 2 uses
  %i.lj = fadd fast <8 x float> %i.li, %i.lh
  %i.lk = fmul fast <8 x float> %i.ks, splat (float 2.000000e+00)
  %i.ll = fadd fast <8 x float> %i.lj, %i.lk      ; 2 uses
  %i.lm = fadd fast <8 x float> %i.le, %i.km
  %i.ln = fmul fast <8 x float> %i.lm, splat (float 4.000000e+00)
  %i.lo = fadd fast <8 x float> %i.ln, %i.ku      ; 2 uses
  %i.lp = fmul fast <8 x float> %i.kk, splat (float 2.000000e+00)
  %i.lq = fadd fast <8 x float> %i.li, %i.lp
  %i.lr = fmul fast <8 x float> %i.ks, splat (float 5.000000e-01)
  %i.ls = fadd fast <8 x float> %i.lq, %i.lr      ; 2 uses
  %i.lt = fsub fast <8 x float> %i.kq, %i.km
  %i.lu = fsub fast <8 x float> %i.ki, %i.ku
  %i.lv = fmul fast <8 x float> %i.lt, splat (float 5.250000e+00)
  %i.lw = fadd fast <8 x float> %i.lu, %i.lv
  %i.lx = fadd fast <8 x float> %i.kz, %i.lc
  %i.ly = fsub fast <8 x float> %i.kz, %i.lc
  %i.lz = fadd fast <8 x float> %i.lg, %i.ll
  %i.ma = fsub fast <8 x float> %i.lg, %i.ll
  %i.mb = fadd fast <8 x float> %i.lo, %i.ls
  %i.mc = fsub fast <8 x float> %i.lo, %i.ls
  %i.md = fsub fast <8 x float> %i.ko, %i.ks
  %i.me = fsub fast <8 x float> %i.kw, %i.kk
  %i.mf = fmul fast <8 x float> %i.md, splat (float 5.250000e+00)
  %i.mg = fadd fast <8 x float> %i.me, %i.mf
  store <8 x float> %i.lw, ptr %.0244482, align 32, !tbaa !316
  store <8 x float> %i.lx, ptr %.0245481, align 32, !tbaa !316
  store <8 x float> %i.ly, ptr %.0246480, align 32, !tbaa !316
  store <8 x float> %i.lz, ptr %.0247479, align 32, !tbaa !316
  store <8 x float> %i.ma, ptr %.0248478, align 32, !tbaa !316
  store <8 x float> %i.mb, ptr %.0249477, align 32, !tbaa !316
  store <8 x float> %i.mc, ptr %.0250476, align 32, !tbaa !316
  store <8 x float> %i.mg, ptr %.0251475, align 32, !tbaa !316
  %i.mh = load i32, ptr %4, align 4, !tbaa !67    ; 4 uses
  %i.mi = shl nsw i32 %i.mh, 6
  %i.mj = sext i32 %i.mi to i64                   ; 8 uses
  %i.mk = getelementptr inbounds [4 x i8], ptr %.0244482, i64 %i.mj
  %i.ml = getelementptr inbounds [4 x i8], ptr %.0245481, i64 %i.mj
  %i.mm = getelementptr inbounds [4 x i8], ptr %.0246480, i64 %i.mj
  %i.mn = getelementptr inbounds [4 x i8], ptr %.0247479, i64 %i.mj
  %i.mo = getelementptr inbounds [4 x i8], ptr %.0248478, i64 %i.mj
  %i.mp = getelementptr inbounds [4 x i8], ptr %.0249477, i64 %i.mj
  %i.mq = getelementptr inbounds [4 x i8], ptr %.0250476, i64 %i.mj
  %i.mr = getelementptr inbounds [4 x i8], ptr %.0251475, i64 %i.mj
  %indvars.iv.next491 = add nuw nsw i64 %indvars.iv490, 1 ; 2 uses
  %exitcond493.not = icmp eq i64 %indvars.iv.next491, 8
  br i1 %exitcond493.not, label %bb.ak, label %bb.al, !llvm.loop !1303

._crit_edge:                                      ; preds = %bb.ak, %.lr.ph.split
  %i.ms = phi i32 [ %i.y, %.lr.ph.split ], [ %i.mh, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %i.mt = add i32 %.0485, 1
  %exitcond497.not = icmp eq i32 %.0485, %i.k
  br i1 %exitcond497.not, label %._crit_edge487, label %.lr.ph.split, !llvm.loop !1304

._crit_edge487:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge487, %bb.a
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
  br i1 %i.f, label %bb.b, label %bb.w

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
  %.not94 = icmp sgt i32 %i.k, %i.j
  br i1 %.not94, label %._crit_edge, label %_ZN4ncnn3MatD2Ev.exit36.lr.ph

_ZN4ncnn3MatD2Ev.exit36.lr.ph:                    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 47 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 15 uses
  br label %_ZN4ncnn3MatD2Ev.exit36

_ZN4ncnn3MatD2Ev.exit36:                          ; preds = %_ZN4ncnn3MatD2Ev.exit36.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.095 = phi i32 [ %i.k, %_ZN4ncnn3MatD2Ev.exit36.lr.ph ], [ %i.adg, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.s = sdiv i32 %.095, %i.r                     ; 2 uses
  %i.t = srem i32 %.095, %i.r                     ; 2 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.v = mul nsw i32 %i.u, %i.s                   ; 13 uses
  %i.w = load i32, ptr %5, align 4, !tbaa !67     ; 2 uses
  %i.x = mul i32 %i.w, %i.t                       ; 23 uses
  %i.y = load i32, ptr %6, align 4, !tbaa !67
  %i.z = sub nsw i32 %i.y, %i.v
  %.sroa.speculated64 = call i32 @llvm.smin.i32(i32 %i.u, i32 %i.z) ; 21 uses
  %i.aa = load i32, ptr %7, align 4, !tbaa !67
  %i.ab = sub i32 %i.aa, %i.x
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.ab) ; 49 uses
  %i.ac = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1305
  %i.ad = load ptr, ptr %8, align 8, !tbaa !18, !noalias !1305
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !1305
  %i.af = sext i32 %i.s to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !1305 ; 2 uses
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = sext i32 %i.ac to i64
  %i.al = sext i32 %i.t to i64
  %i.am = mul nsw i64 %i.ak, %i.al
  %i.an = mul i64 %i.am, %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an ; 15 uses
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
  br i1 %or.cond9.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit36
  %i.bb = load i32, ptr %i.o, align 8, !tbaa !66  ; 5 uses
  %i.bc = icmp sgt i32 %.sroa.speculated64, 11
  br i1 %i.bc, label %.lr.ph339.i.i, label %.preheader320.i.i

.lr.ph339.i.i:                                    ; preds = %bb.c
  %i.bd = sdiv i32 %i.x, 8
  %i.be = sext i32 %i.bd to i64
  %16 = sdiv i32 %.sroa.speculated, 8
  %i.bf = sdiv i32 %i.x, 4
  %i.bg = sext i32 %i.bf to i64
  %17 = sdiv i32 %.sroa.speculated, 4
  %i.bh = sext i32 %i.x to i64
  %i.bi = sext i32 %i.v to i64                    ; 3 uses
  %i.bj = zext nneg i32 %.sroa.speculated64 to i64 ; 7 uses
  switch i32 %i.bb, label %.loopexit321.i.preheader.i [
    i32 8, label %.lr.ph339.i.split.us.i
    i32 4, label %.lr.ph339.i.split.us26.i
    i32 1, label %.lr.ph339.i.split.us36.i
  ]

.loopexit321.i.preheader.i:                       ; preds = %.lr.ph339.i.i
  %i.bk = call i64 @llvm.usub.sat.i64(i64 %i.bj, i64 23)
  %i.bl = icmp samesign ugt i32 %.sroa.speculated64, 23
  %umin85.i = zext i1 %i.bl to i64                ; 2 uses
  %i.bm = sub nsw i64 %i.bk, %umin85.i
  %i.bn = udiv i64 %i.bm, 12
  %i.bo = add nuw nsw i64 %i.bn, %umin85.i
  %i.bp = mul i64 %i.bo, 12
  %i.bq = add i64 %i.bp, 12
  br label %.preheader320.loopexit.i.i

.lr.ph339.i.split.us.i:                           ; preds = %.lr.ph339.i.i
  %i.br = icmp sgt i32 %.sroa.speculated, 7
  br i1 %i.br, label %_ZN4ncnn3MatD2Ev.exit509.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit509.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit509.i.us.preheader.i:        ; preds = %.lr.ph339.i.split.us.i
  %i.bs = call i64 @llvm.usub.sat.i64(i64 %i.bj, i64 23)
  %i.bt = icmp samesign ugt i32 %.sroa.speculated64, 23
  %umin83.i = zext i1 %i.bt to i64                ; 2 uses
  %i.bu = sub nsw i64 %i.bs, %umin83.i
  %i.bv = udiv i64 %i.bu, 12
  %i.bw = add nuw nsw i64 %i.bv, %umin83.i
  %i.bx = mul i64 %i.bw, 12
  %i.by = add i64 %i.bx, 12
  br label %.preheader320.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit509.i.us.us.preheader.i:     ; preds = %.lr.ph339.i.split.us.i
  %.pre87.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1308
  br label %_ZN4ncnn3MatD2Ev.exit509.i.us.us.i

_ZN4ncnn3MatD2Ev.exit509.i.us.us.i:               ; preds = %.loopexit321.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.preheader.i
  %i.bz = phi i64 [ %i.fa, %.loopexit321.i.loopexit.us.us.i ], [ %.pre87.i, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.preheader.i ]
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.loopexit321.i.loopexit.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.preheader.i ] ; 3 uses
  %.0445338.i.us.us.i = phi ptr [ %i.ez, %.loopexit321.i.loopexit.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.preheader.i ]
  %i.ca = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1308
  %i.cb = mul i64 %i.bz, %i.be
  %i.cc = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1308
  %i.cd = mul i64 %i.cb, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cd
  %i.cf = add nsw i64 %indvars.iv.i.us.us.i, %i.bi
  %.idx482.i.us.us.i = shl nsw i64 %i.cf, 5
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 %.idx482.i.us.us.i
  br label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %.lr.ph.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.i
  %.1326.i.us.us.i = phi ptr [ %i.ez, %.lr.ph.i.us.us.i ], [ %.0445338.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.i ] ; 13 uses
  %.0451325.i.us.us.i = phi ptr [ %i.fb, %.lr.ph.i.us.us.i ], [ %i.cg, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.i ] ; 13 uses
  %.0452324.i.us.us.i = phi i32 [ %i.fc, %.lr.ph.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.i ]
  %i.ch = load <8 x float>, ptr %.0451325.i.us.us.i, align 32, !tbaa !316 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 32
  %i.cj = load <8 x float>, ptr %i.ci, align 32, !tbaa !316 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 64
  %i.cl = load <8 x float>, ptr %i.ck, align 32, !tbaa !316 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 96
  %i.cn = load <8 x float>, ptr %i.cm, align 32, !tbaa !316 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 128
  %i.cp = load <8 x float>, ptr %i.co, align 32, !tbaa !316 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 160
  %i.cr = load <8 x float>, ptr %i.cq, align 32, !tbaa !316 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 192
  %i.ct = load <8 x float>, ptr %i.cs, align 32, !tbaa !316 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 224
  %i.cv = load <8 x float>, ptr %i.cu, align 32, !tbaa !316 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 256
  %i.cx = load <8 x float>, ptr %i.cw, align 32, !tbaa !316 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 288
  %i.cz = load <8 x float>, ptr %i.cy, align 32, !tbaa !316 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 320
  %i.db = load <8 x float>, ptr %i.da, align 32, !tbaa !316 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 352
  %i.dd = load <8 x float>, ptr %i.dc, align 32, !tbaa !316 ; 2 uses
  %i.de = shufflevector <8 x float> %i.ch, <8 x float> %i.cj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.df = shufflevector <8 x float> %i.ch, <8 x float> %i.cj, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dg = shufflevector <8 x float> %i.cl, <8 x float> %i.cn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.dh = shufflevector <8 x float> %i.cl, <8 x float> %i.cn, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.di = shufflevector <8 x float> %i.cp, <8 x float> %i.cr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.dj = shufflevector <8 x float> %i.cp, <8 x float> %i.cr, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dk = shufflevector <8 x float> %i.ct, <8 x float> %i.cv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.dl = shufflevector <8 x float> %i.ct, <8 x float> %i.cv, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dm = shufflevector <8 x float> %i.cx, <8 x float> %i.cz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.dn = shufflevector <8 x float> %i.cx, <8 x float> %i.cz, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.do = shufflevector <8 x float> %i.db, <8 x float> %i.dd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.dp = shufflevector <8 x float> %i.db, <8 x float> %i.dd, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dq = shufflevector <8 x float> %i.de, <8 x float> %i.dg, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.dr = shufflevector <8 x float> %i.de, <8 x float> %i.dg, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ds = shufflevector <8 x float> %i.df, <8 x float> %i.dh, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.dt = shufflevector <8 x float> %i.df, <8 x float> %i.dh, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.du = shufflevector <8 x float> %i.di, <8 x float> %i.dk, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.dv = shufflevector <8 x float> %i.di, <8 x float> %i.dk, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.dw = shufflevector <8 x float> %i.dj, <8 x float> %i.dl, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.dx = shufflevector <8 x float> %i.dj, <8 x float> %i.dl, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.dy = shufflevector <8 x float> %i.dm, <8 x float> %i.do, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.dz = shufflevector <8 x float> %i.dm, <8 x float> %i.do, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ea = shufflevector <8 x float> %i.dn, <8 x float> %i.dp, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.eb = shufflevector <8 x float> %i.dn, <8 x float> %i.dp, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ec = shufflevector <8 x float> %i.dq, <8 x float> %i.du, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ed = shufflevector <8 x float> %i.dy, <8 x float> %i.dr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ee = shufflevector <8 x float> %i.dv, <8 x float> %i.dz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ef = shufflevector <8 x float> %i.ds, <8 x float> %i.dw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.eg = shufflevector <8 x float> %i.ea, <8 x float> %i.dt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.eh = shufflevector <8 x float> %i.dx, <8 x float> %i.eb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ei = shufflevector <8 x float> %i.dq, <8 x float> %i.du, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ej = shufflevector <8 x float> %i.dy, <8 x float> %i.dr, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ek = shufflevector <8 x float> %i.dv, <8 x float> %i.dz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.el = shufflevector <8 x float> %i.ds, <8 x float> %i.dw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.em = shufflevector <8 x float> %i.ea, <8 x float> %i.dt, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.en = shufflevector <8 x float> %i.dx, <8 x float> %i.eb, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.ec, ptr %.1326.i.us.us.i, align 32, !tbaa !316
  %i.eo = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 32
  store <8 x float> %i.ed, ptr %i.eo, align 32, !tbaa !316
  %i.ep = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 64
  store <8 x float> %i.ee, ptr %i.ep, align 32, !tbaa !316
  %i.eq = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 96
  store <8 x float> %i.ef, ptr %i.eq, align 32, !tbaa !316
  %i.er = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 128
  store <8 x float> %i.eg, ptr %i.er, align 32, !tbaa !316
  %i.es = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 160
  store <8 x float> %i.eh, ptr %i.es, align 32, !tbaa !316
  %i.et = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 192
  store <8 x float> %i.ei, ptr %i.et, align 32, !tbaa !316
  %i.eu = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 224
  store <8 x float> %i.ej, ptr %i.eu, align 32, !tbaa !316
  %i.ev = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 256
  store <8 x float> %i.ek, ptr %i.ev, align 32, !tbaa !316
  %i.ew = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 288
  store <8 x float> %i.el, ptr %i.ew, align 32, !tbaa !316
  %i.ex = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 320
  store <8 x float> %i.em, ptr %i.ex, align 32, !tbaa !316
  %i.ey = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 352
  store <8 x float> %i.en, ptr %i.ey, align 32, !tbaa !316
  %i.ez = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 384 ; 3 uses
  %i.fa = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx481.i.us.us.i = shl i64 %i.fa, 5
  %i.fb = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 %.idx481.i.us.us.i
  %i.fc = add nuw nsw i32 %.0452324.i.us.us.i, 1  ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i32 %i.fc, %16
  br i1 %exitcond.not.i.us.us.i, label %.loopexit321.i.loopexit.us.us.i, label %.lr.ph.i.us.us.i, !llvm.loop !1311

.loopexit321.i.loopexit.us.us.i:                  ; preds = %.lr.ph.i.us.us.i
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 12 ; 2 uses
  %i.fd = add nuw nsw i64 %indvars.iv.i.us.us.i, 23
  %i.fe = icmp samesign ult i64 %i.fd, %i.bj
  br i1 %i.fe, label %_ZN4ncnn3MatD2Ev.exit509.i.us.us.i, label %.preheader320.loopexit.i.i, !llvm.loop !1312

.lr.ph339.i.split.us26.i:                         ; preds = %.lr.ph339.i.i
  %i.ff = icmp sgt i32 %.sroa.speculated, 3
  br i1 %i.ff, label %_ZN4ncnn3MatD2Ev.exit508.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit508.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit508.i.us.preheader.i:        ; preds = %.lr.ph339.i.split.us26.i
  %i.fg = call i64 @llvm.usub.sat.i64(i64 %i.bj, i64 23)
  %i.fh = icmp samesign ugt i32 %.sroa.speculated64, 23
  %umin81.i = zext i1 %i.fh to i64                ; 2 uses
  %i.fi = sub nsw i64 %i.fg, %umin81.i
  %i.fj = udiv i64 %i.fi, 12
  %i.fk = add nuw nsw i64 %i.fj, %umin81.i
  %i.fl = mul i64 %i.fk, 12
  %i.fm = add i64 %i.fl, 12
  br label %.preheader320.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit508.i.us.us.preheader.i:     ; preds = %.lr.ph339.i.split.us26.i
  %.pre86.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1313
  br label %_ZN4ncnn3MatD2Ev.exit508.i.us.us.i

_ZN4ncnn3MatD2Ev.exit508.i.us.us.i:               ; preds = %.loopexit321.i.loopexit9.us.us.i, %_ZN4ncnn3MatD2Ev.exit508.i.us.us.preheader.i
  %i.fn = phi i64 [ %i.ic, %.loopexit321.i.loopexit9.us.us.i ], [ %.pre86.i, %_ZN4ncnn3MatD2Ev.exit508.i.us.us.preheader.i ]
  %indvars.iv.i.us27.us.i = phi i64 [ %indvars.iv.next.i.us31.us.i, %.loopexit321.i.loopexit9.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit508.i.us.us.preheader.i ] ; 3 uses
  %.0445338.i.us28.us.i = phi ptr [ %i.ib, %.loopexit321.i.loopexit9.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit508.i.us.us.preheader.i ]
  %i.fo = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1313
  %i.fp = mul i64 %i.fn, %i.bg
  %i.fq = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1313
  %i.fr = mul i64 %i.fp, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fr
  %i.ft = add nsw i64 %indvars.iv.i.us27.us.i, %i.bi
  %.idx483.i.us.us.i = shl nsw i64 %i.ft, 4
  %i.fu = getelementptr inbounds i8, ptr %i.fs, i64 %.idx483.i.us.us.i
  br label %.lr.ph330.i.us.us.i

.lr.ph330.i.us.us.i:                              ; preds = %.lr.ph330.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit508.i.us.us.i
  %.3329.i.us.us.i = phi ptr [ %i.ib, %.lr.ph330.i.us.us.i ], [ %.0445338.i.us28.us.i, %_ZN4ncnn3MatD2Ev.exit508.i.us.us.i ] ; 13 uses
  %.0459328.i.us.us.i = phi ptr [ %i.id, %.lr.ph330.i.us.us.i ], [ %i.fu, %_ZN4ncnn3MatD2Ev.exit508.i.us.us.i ] ; 13 uses
  %.0460327.i.us.us.i = phi i32 [ %i.ie, %.lr.ph330.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit508.i.us.us.i ]
  %i.fv = load <4 x float>, ptr %.0459328.i.us.us.i, align 16, !tbaa !316 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 16
  %i.fx = load <4 x float>, ptr %i.fw, align 16, !tbaa !316 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 32
  %i.fz = load <4 x float>, ptr %i.fy, align 16, !tbaa !316 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 48
  %i.gb = load <4 x float>, ptr %i.ga, align 16, !tbaa !316 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 64
  %i.gd = load <4 x float>, ptr %i.gc, align 16, !tbaa !316 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 80
  %i.gf = load <4 x float>, ptr %i.ge, align 16, !tbaa !316 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 96
  %i.gh = load <4 x float>, ptr %i.gg, align 16, !tbaa !316 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 112
  %i.gj = load <4 x float>, ptr %i.gi, align 16, !tbaa !316 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 128
  %i.gl = load <4 x float>, ptr %i.gk, align 16, !tbaa !316 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 144
  %i.gn = load <4 x float>, ptr %i.gm, align 16, !tbaa !316 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 160
  %i.gp = load <4 x float>, ptr %i.go, align 16, !tbaa !316 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 176
  %i.gr = load <4 x float>, ptr %i.gq, align 16, !tbaa !316 ; 2 uses
  %i.gs = shufflevector <4 x float> %i.fv, <4 x float> %i.fx, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.gt = shufflevector <4 x float> %i.fz, <4 x float> %i.gb, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.gu = shufflevector <4 x float> %i.fv, <4 x float> %i.fx, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.gv = shufflevector <4 x float> %i.fz, <4 x float> %i.gb, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.gw = shufflevector <4 x float> %i.gs, <4 x float> %i.gt, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gx = shufflevector <4 x float> %i.gt, <4 x float> %i.gs, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.gy = shufflevector <4 x float> %i.gu, <4 x float> %i.gv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gz = shufflevector <4 x float> %i.gv, <4 x float> %i.gu, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ha = shufflevector <4 x float> %i.gd, <4 x float> %i.gf, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.hb = shufflevector <4 x float> %i.gh, <4 x float> %i.gj, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.hc = shufflevector <4 x float> %i.gd, <4 x float> %i.gf, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.hd = shufflevector <4 x float> %i.gh, <4 x float> %i.gj, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.he = shufflevector <4 x float> %i.ha, <4 x float> %i.hb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hf = shufflevector <4 x float> %i.hb, <4 x float> %i.ha, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.hg = shufflevector <4 x float> %i.hc, <4 x float> %i.hd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hh = shufflevector <4 x float> %i.hd, <4 x float> %i.hc, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.hi = shufflevector <4 x float> %i.gl, <4 x float> %i.gn, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.hj = shufflevector <4 x float> %i.gp, <4 x float> %i.gr, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.hk = shufflevector <4 x float> %i.gl, <4 x float> %i.gn, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.hl = shufflevector <4 x float> %i.gp, <4 x float> %i.gr, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.hm = shufflevector <4 x float> %i.hi, <4 x float> %i.hj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hn = shufflevector <4 x float> %i.hj, <4 x float> %i.hi, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ho = shufflevector <4 x float> %i.hk, <4 x float> %i.hl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hp = shufflevector <4 x float> %i.hl, <4 x float> %i.hk, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.gw, ptr %.3329.i.us.us.i, align 16, !tbaa !316
  %i.hq = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 16
  store <4 x float> %i.he, ptr %i.hq, align 16, !tbaa !316
  %i.hr = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 32
  store <4 x float> %i.hm, ptr %i.hr, align 16, !tbaa !316
  %i.hs = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 48
  store <4 x float> %i.gx, ptr %i.hs, align 16, !tbaa !316
  %i.ht = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 64
  store <4 x float> %i.hf, ptr %i.ht, align 16, !tbaa !316
  %i.hu = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 80
  store <4 x float> %i.hn, ptr %i.hu, align 16, !tbaa !316
  %i.hv = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 96
  store <4 x float> %i.gy, ptr %i.hv, align 16, !tbaa !316
  %i.hw = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 112
  store <4 x float> %i.hg, ptr %i.hw, align 16, !tbaa !316
  %i.hx = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 128
  store <4 x float> %i.ho, ptr %i.hx, align 16, !tbaa !316
  %i.hy = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 144
  store <4 x float> %i.gz, ptr %i.hy, align 16, !tbaa !316
  %i.hz = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 160
  store <4 x float> %i.hh, ptr %i.hz, align 16, !tbaa !316
  %i.ia = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 176
  store <4 x float> %i.hp, ptr %i.ia, align 16, !tbaa !316
  %i.ib = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 192 ; 3 uses
  %i.ic = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx480.i.us.us.i = shl i64 %i.ic, 4
  %i.id = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 %.idx480.i.us.us.i
  %i.ie = add nuw nsw i32 %.0460327.i.us.us.i, 1  ; 2 uses
  %exitcond438.not.i.us.us.i = icmp eq i32 %i.ie, %17
  br i1 %exitcond438.not.i.us.us.i, label %.loopexit321.i.loopexit9.us.us.i, label %.lr.ph330.i.us.us.i, !llvm.loop !1316

.loopexit321.i.loopexit9.us.us.i:                 ; preds = %.lr.ph330.i.us.us.i
  %indvars.iv.next.i.us31.us.i = add nuw nsw i64 %indvars.iv.i.us27.us.i, 12 ; 2 uses
  %i.if = add nuw nsw i64 %indvars.iv.i.us27.us.i, 23
  %i.ig = icmp samesign ult i64 %i.if, %i.bj
  br i1 %i.ig, label %_ZN4ncnn3MatD2Ev.exit508.i.us.us.i, label %.preheader320.loopexit.i.i, !llvm.loop !1312

.lr.ph339.i.split.us36.i:                         ; preds = %.lr.ph339.i.i
  %i.ih = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.ih, label %_ZN4ncnn3MatD2Ev.exit507.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit507.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit507.i.us.preheader.i:        ; preds = %.lr.ph339.i.split.us36.i
  %i.ii = call i64 @llvm.usub.sat.i64(i64 %i.bj, i64 23)
  %i.ij = icmp samesign ugt i32 %.sroa.speculated64, 23
  %umin.i = zext i1 %i.ij to i64                  ; 2 uses
  %i.ik = sub nsw i64 %i.ii, %umin.i
  %i.il = udiv i64 %i.ik, 12
  %i.im = add nuw nsw i64 %i.il, %umin.i
  %i.in = mul i64 %i.im, 12
  %i.io = add i64 %i.in, 12
  br label %.preheader320.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit507.i.us.us.preheader.i:     ; preds = %.lr.ph339.i.split.us36.i
  %.pre.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1317
  %xtraiter = and i32 %.sroa.speculated, 1
  %i.ip = icmp eq i32 %.sroa.speculated, 1
  %unroll_iter = and i32 %.sroa.speculated, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod207 = trunc i32 %.sroa.speculated to i1
  br label %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i

_ZN4ncnn3MatD2Ev.exit507.i.us.us.i:               ; preds = %.loopexit321.i.loopexit10.us.us.i, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.preheader.i
  %i.iq = phi i64 [ %.lcssa, %.loopexit321.i.loopexit10.us.us.i ], [ %.pre.i, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.preheader.i ]
  %indvars.iv.i.us37.us.i = phi i64 [ %indvars.iv.next.i.us41.us.i, %.loopexit321.i.loopexit10.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.preheader.i ] ; 3 uses
  %.0445338.i.us38.us.i = phi ptr [ %.lcssa188, %.loopexit321.i.loopexit10.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.preheader.i ] ; 2 uses
  %i.ir = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1317
  %i.is = mul i64 %i.iq, %i.bh
  %i.it = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1317
  %i.iu = mul i64 %i.is, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.iu
  %i.iw = getelementptr [4 x i8], ptr %i.iv, i64 %indvars.iv.i.us37.us.i
  %i.ix = getelementptr [4 x i8], ptr %i.iw, i64 %i.bi ; 2 uses
  br i1 %i.ip, label %.lr.ph335.i.us.us.i.epil.preheader, label %.lr.ph335.i.us.us.i

.lr.ph335.i.us.us.i:                              ; preds = %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i, %.lr.ph335.i.us.us.i
  %.5334.i.us.us.i = phi ptr [ %i.jp, %.lr.ph335.i.us.us.i ], [ %.0445338.i.us38.us.i, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i ] ; 7 uses
  %.0461333.i.us.us.i = phi ptr [ %i.jr, %.lr.ph335.i.us.us.i ], [ %i.ix, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i ] ; 4 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph335.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i ]
  %i.iy = load <4 x float>, ptr %.0461333.i.us.us.i, align 1, !tbaa !316
  %i.iz = getelementptr inbounds nuw i8, ptr %.0461333.i.us.us.i, i64 16
  %i.ja = load <4 x float>, ptr %i.iz, align 1, !tbaa !316
  %i.jb = getelementptr inbounds nuw i8, ptr %.0461333.i.us.us.i, i64 32
  %i.jc = load <4 x float>, ptr %i.jb, align 1, !tbaa !316
  store <4 x float> %i.iy, ptr %.5334.i.us.us.i, align 1, !tbaa !316
  %i.jd = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i, i64 16
  store <4 x float> %i.ja, ptr %i.jd, align 1, !tbaa !316
  %i.je = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i, i64 32
  store <4 x float> %i.jc, ptr %i.je, align 1, !tbaa !316
  %i.jf = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i, i64 48
  %i.jg = load i64, ptr %i.p, align 8, !tbaa !20
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.0461333.i.us.us.i, i64 %i.jg ; 4 uses
  %i.ji = load <4 x float>, ptr %i.jh, align 1, !tbaa !316
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jk = load <4 x float>, ptr %i.jj, align 1, !tbaa !316
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.jm = load <4 x float>, ptr %i.jl, align 1, !tbaa !316
  store <4 x float> %i.ji, ptr %i.jf, align 1, !tbaa !316
  %i.jn = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i, i64 64
  store <4 x float> %i.jk, ptr %i.jn, align 1, !tbaa !316
  %i.jo = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i, i64 80
  store <4 x float> %i.jm, ptr %i.jo, align 1, !tbaa !316
  %i.jp = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i, i64 96 ; 3 uses
  %i.jq = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.jq ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit321.i.loopexit10.us.us.i.unr-lcssa, label %.lr.ph335.i.us.us.i, !llvm.loop !1320

.loopexit321.i.loopexit10.us.us.i.unr-lcssa:      ; preds = %.lr.ph335.i.us.us.i
  br i1 %lcmp.mod.not, label %.loopexit321.i.loopexit10.us.us.i, label %.lr.ph335.i.us.us.i.epil.preheader

.lr.ph335.i.us.us.i.epil.preheader:               ; preds = %.loopexit321.i.loopexit10.us.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i
  %.5334.i.us.us.i.epil.init = phi ptr [ %.0445338.i.us38.us.i, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i ], [ %i.jp, %.loopexit321.i.loopexit10.us.us.i.unr-lcssa ] ; 4 uses
  %.0461333.i.us.us.i.epil.init = phi ptr [ %i.ix, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i ], [ %i.jr, %.loopexit321.i.loopexit10.us.us.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod207)
  %i.js = load <4 x float>, ptr %.0461333.i.us.us.i.epil.init, align 1, !tbaa !316
  %i.jt = getelementptr inbounds nuw i8, ptr %.0461333.i.us.us.i.epil.init, i64 16
  %i.ju = load <4 x float>, ptr %i.jt, align 1, !tbaa !316
  %i.jv = getelementptr inbounds nuw i8, ptr %.0461333.i.us.us.i.epil.init, i64 32
  %i.jw = load <4 x float>, ptr %i.jv, align 1, !tbaa !316
  store <4 x float> %i.js, ptr %.5334.i.us.us.i.epil.init, align 1, !tbaa !316
  %i.jx = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i.epil.init, i64 16
  store <4 x float> %i.ju, ptr %i.jx, align 1, !tbaa !316
  %i.jy = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i.epil.init, i64 32
  store <4 x float> %i.jw, ptr %i.jy, align 1, !tbaa !316
  %i.jz = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i.epil.init, i64 48
  %i.ka = load i64, ptr %i.p, align 8, !tbaa !20
  br label %.loopexit321.i.loopexit10.us.us.i

.loopexit321.i.loopexit10.us.us.i:                ; preds = %.loopexit321.i.loopexit10.us.us.i.unr-lcssa, %.lr.ph335.i.us.us.i.epil.preheader
  %.lcssa188 = phi ptr [ %i.jp, %.loopexit321.i.loopexit10.us.us.i.unr-lcssa ], [ %i.jz, %.lr.ph335.i.us.us.i.epil.preheader ] ; 2 uses
  %.lcssa = phi i64 [ %i.jq, %.loopexit321.i.loopexit10.us.us.i.unr-lcssa ], [ %i.ka, %.lr.ph335.i.us.us.i.epil.preheader ]
  %indvars.iv.next.i.us41.us.i = add nuw nsw i64 %indvars.iv.i.us37.us.i, 12 ; 2 uses
  %i.kb = add nuw nsw i64 %indvars.iv.i.us37.us.i, 23
  %i.kc = icmp samesign ult i64 %i.kb, %i.bj
  br i1 %i.kc, label %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i, label %.preheader320.loopexit.i.i, !llvm.loop !1312

.preheader320.loopexit.i.i:                       ; preds = %.loopexit321.i.loopexit10.us.us.i, %.loopexit321.i.loopexit9.us.us.i, %.loopexit321.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit507.i.us.preheader.i, %_ZN4ncnn3MatD2Ev.exit508.i.us.preheader.i, %_ZN4ncnn3MatD2Ev.exit509.i.us.preheader.i, %.loopexit321.i.preheader.i
  %.us-phi.i = phi ptr [ %i.ao, %_ZN4ncnn3MatD2Ev.exit507.i.us.preheader.i ], [ %i.ao, %.loopexit321.i.preheader.i ], [ %i.ez, %.loopexit321.i.loopexit.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit509.i.us.preheader.i ], [ %i.ib, %.loopexit321.i.loopexit9.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit508.i.us.preheader.i ], [ %.lcssa188, %.loopexit321.i.loopexit10.us.us.i ]
  %.us-phi25.i = phi i64 [ %i.io, %_ZN4ncnn3MatD2Ev.exit507.i.us.preheader.i ], [ %i.bq, %.loopexit321.i.preheader.i ], [ %indvars.iv.next.i.us.us.i, %.loopexit321.i.loopexit.us.us.i ], [ %i.by, %_ZN4ncnn3MatD2Ev.exit509.i.us.preheader.i ], [ %indvars.iv.next.i.us31.us.i, %.loopexit321.i.loopexit9.us.us.i ], [ %i.fm, %_ZN4ncnn3MatD2Ev.exit508.i.us.preheader.i ], [ %indvars.iv.next.i.us41.us.i, %.loopexit321.i.loopexit10.us.us.i ]
  %i.kd = trunc nuw nsw i64 %.us-phi25.i to i32
  br label %.preheader320.i.i

.preheader320.i.i:                                ; preds = %.preheader320.loopexit.i.i, %bb.c
  %.0446.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %i.kd, %.preheader320.loopexit.i.i ] ; 3 uses
  %.0445.lcssa.i.i = phi ptr [ %i.ao, %bb.c ], [ %.us-phi.i, %.preheader320.loopexit.i.i ] ; 2 uses
  %i.ke = add nuw nsw i32 %.0446.lcssa.i.i, 7
  %i.kf = icmp slt i32 %i.ke, %.sroa.speculated64
  br i1 %i.kf, label %.lr.ph359.i.i, label %.preheader316.i.i

.lr.ph359.i.i:                                    ; preds = %.preheader320.i.i
  %i.kg = sdiv i32 %i.x, 8
  %i.kh = sext i32 %i.kg to i64
  %18 = sdiv i32 %.sroa.speculated, 8
  %i.ki = icmp sgt i32 %.sroa.speculated, 7
  %i.kj = sdiv i32 %i.x, 4
  %i.kk = sext i32 %i.kj to i64
  %19 = sdiv i32 %.sroa.speculated, 4
  %i.kl = icmp sgt i32 %.sroa.speculated, 3
  %i.km = sext i32 %i.x to i64
  %i.kn = icmp sgt i32 %.sroa.speculated, 0
  %i.ko = zext nneg i32 %.0446.lcssa.i.i to i64
  %i.kp = sext i32 %i.v to i64                    ; 3 uses
  %i.kq = sext i32 %.sroa.speculated64 to i64
  %invariant.op.i.i = add nsw i64 %i.kq, -15
  %i.kr = add i32 %.sroa.speculated, -1
  %xtraiter208 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.ks = icmp ult i32 %i.kr, 3
  %unroll_iter212 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod209.not = icmp eq i32 %xtraiter208, 0
  %lcmp.mod211 = icmp ne i32 %xtraiter208, 0
  br label %bb.d

.preheader316.loopexit.i.i:                       ; preds = %.loopexit317.i.i
  %i.kt = trunc nsw i64 %indvars.iv.next445.i.i to i32
  br label %.preheader316.i.i

.preheader316.i.i:                                ; preds = %.preheader316.loopexit.i.i, %.preheader320.i.i
  %.1447.lcssa.i.i = phi i32 [ %.0446.lcssa.i.i, %.preheader320.i.i ], [ %i.kt, %.preheader316.loopexit.i.i ] ; 3 uses
  %.7.lcssa.i.i = phi ptr [ %.0445.lcssa.i.i, %.preheader320.i.i ], [ %.13.i.i, %.preheader316.loopexit.i.i ] ; 2 uses
  %i.ku = or disjoint i32 %.1447.lcssa.i.i, 3
  %i.kv = icmp slt i32 %i.ku, %.sroa.speculated64
  br i1 %i.kv, label %.lr.ph379.i.i, label %.preheader312.i.i

.lr.ph379.i.i:                                    ; preds = %.preheader316.i.i
  %i.kw = sdiv i32 %i.x, 8
  %i.kx = sext i32 %i.kw to i64
  %20 = sdiv i32 %.sroa.speculated, 8
  %i.ky = icmp sgt i32 %.sroa.speculated, 7
  %i.kz = sdiv i32 %i.x, 4
  %i.la = sext i32 %i.kz to i64
  %21 = sdiv i32 %.sroa.speculated, 4
  %i.lb = icmp sgt i32 %.sroa.speculated, 3
  %i.lc = sext i32 %i.x to i64
  %i.ld = icmp sgt i32 %.sroa.speculated, 0
  %i.le = sext i32 %.1447.lcssa.i.i to i64
  %i.lf = sext i32 %.sroa.speculated64 to i64
  %i.lg = sext i32 %i.v to i64                    ; 3 uses
  %invariant.op526.i.i = add nsw i64 %i.lf, -3
  %i.lh = add i32 %.sroa.speculated, -1
  %xtraiter214 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.li = icmp ult i32 %i.lh, 3
  %unroll_iter219 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod216.not = icmp eq i32 %xtraiter214, 0
  %lcmp.mod218 = icmp ne i32 %xtraiter214, 0
  br label %bb.e

bb.d:                                             ; preds = %.loopexit317.i.i, %.lr.ph359.i.i
  %indvars.iv444.i.i = phi i64 [ %i.ko, %.lr.ph359.i.i ], [ %indvars.iv.next445.i.i, %.loopexit317.i.i ] ; 5 uses
  %.7358.i.i = phi ptr [ %.0445.lcssa.i.i, %.lr.ph359.i.i ], [ %.13.i.i, %.loopexit317.i.i ] ; 8 uses
  switch i32 %i.bb, label %.loopexit317.i.i [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit506.i.i
    i32 4, label %_ZN4ncnn3MatD2Ev.exit505.i.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit504.i.i
  ]

_ZN4ncnn3MatD2Ev.exit506.i.i:                     ; preds = %bb.d
  br i1 %i.ki, label %.lr.ph345.preheader.i.i, label %.loopexit317.i.i

.lr.ph345.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit506.i.i
  %i.lj = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1321
  %i.lk = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1321
  %i.ll = mul i64 %i.lk, %i.kh
  %i.lm = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1321
  %i.ln = mul i64 %i.ll, %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.ln
  %i.lp = add nsw i64 %indvars.iv444.i.i, %i.kp
  %.idx484.i.i = shl nsw i64 %i.lp, 5
  %i.lq = getelementptr inbounds i8, ptr %i.lo, i64 %.idx484.i.i
  br label %.lr.ph345.i.i

.lr.ph345.i.i:                                    ; preds = %.lr.ph345.i.i, %.lr.ph345.preheader.i.i
  %.8344.i.i = phi ptr [ %i.nl, %.lr.ph345.i.i ], [ %.7358.i.i, %.lr.ph345.preheader.i.i ] ; 9 uses
  %.0463343.i.i = phi ptr [ %i.nn, %.lr.ph345.i.i ], [ %i.lq, %.lr.ph345.preheader.i.i ] ; 9 uses
  %.0464342.i.i = phi i32 [ %i.no, %.lr.ph345.i.i ], [ 0, %.lr.ph345.preheader.i.i ]
  %i.lr = load <8 x float>, ptr %.0463343.i.i, align 32, !tbaa !316 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.0463343.i.i, i64 32
  %i.lt = load <8 x float>, ptr %i.ls, align 32, !tbaa !316 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.0463343.i.i, i64 64
  %i.lv = load <8 x float>, ptr %i.lu, align 32, !tbaa !316 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.0463343.i.i, i64 96
  %i.lx = load <8 x float>, ptr %i.lw, align 32, !tbaa !316 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.0463343.i.i, i64 128
  %i.lz = load <8 x float>, ptr %i.ly, align 32, !tbaa !316 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.0463343.i.i, i64 160
  %i.mb = load <8 x float>, ptr %i.ma, align 32, !tbaa !316 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.0463343.i.i, i64 192
  %i.md = load <8 x float>, ptr %i.mc, align 32, !tbaa !316 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.0463343.i.i, i64 224
  %i.mf = load <8 x float>, ptr %i.me, align 32, !tbaa !316 ; 2 uses
  %i.mg = shufflevector <8 x float> %i.lr, <8 x float> %i.lt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.mh = shufflevector <8 x float> %i.lr, <8 x float> %i.lt, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.mi = shufflevector <8 x float> %i.lv, <8 x float> %i.lx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.mj = shufflevector <8 x float> %i.lv, <8 x float> %i.lx, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.mk = shufflevector <8 x float> %i.lz, <8 x float> %i.mb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ml = shufflevector <8 x float> %i.lz, <8 x float> %i.mb, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.mm = shufflevector <8 x float> %i.md, <8 x float> %i.mf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.mn = shufflevector <8 x float> %i.md, <8 x float> %i.mf, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.mo = shufflevector <8 x float> %i.mg, <8 x float> %i.mi, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.mp = shufflevector <8 x float> %i.mg, <8 x float> %i.mi, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.mq = shufflevector <8 x float> %i.mh, <8 x float> %i.mj, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.mr = shufflevector <8 x float> %i.mh, <8 x float> %i.mj, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ms = shufflevector <8 x float> %i.mk, <8 x float> %i.mm, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.mt = shufflevector <8 x float> %i.mk, <8 x float> %i.mm, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.mu = shufflevector <8 x float> %i.ml, <8 x float> %i.mn, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.mv = shufflevector <8 x float> %i.ml, <8 x float> %i.mn, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.mw = shufflevector <8 x float> %i.mo, <8 x float> %i.ms, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.mx = shufflevector <8 x float> %i.mp, <8 x float> %i.mt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.my = shufflevector <8 x float> %i.mq, <8 x float> %i.mu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.mz = shufflevector <8 x float> %i.mr, <8 x float> %i.mv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.na = shufflevector <8 x float> %i.mo, <8 x float> %i.ms, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.nb = shufflevector <8 x float> %i.mp, <8 x float> %i.mt, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.nc = shufflevector <8 x float> %i.mq, <8 x float> %i.mu, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.nd = shufflevector <8 x float> %i.mr, <8 x float> %i.mv, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.mw, ptr %.8344.i.i, align 32, !tbaa !316
  %i.ne = getelementptr inbounds nuw i8, ptr %.8344.i.i, i64 32
  store <8 x float> %i.mx, ptr %i.ne, align 32, !tbaa !316
  %i.nf = getelementptr inbounds nuw i8, ptr %.8344.i.i, i64 64
  store <8 x float> %i.my, ptr %i.nf, align 32, !tbaa !316
  %i.ng = getelementptr inbounds nuw i8, ptr %.8344.i.i, i64 96
  store <8 x float> %i.mz, ptr %i.ng, align 32, !tbaa !316
  %i.nh = getelementptr inbounds nuw i8, ptr %.8344.i.i, i64 128
  store <8 x float> %i.na, ptr %i.nh, align 32, !tbaa !316
  %i.ni = getelementptr inbounds nuw i8, ptr %.8344.i.i, i64 160
  store <8 x float> %i.nb, ptr %i.ni, align 32, !tbaa !316
  %i.nj = getelementptr inbounds nuw i8, ptr %.8344.i.i, i64 192
  store <8 x float> %i.nc, ptr %i.nj, align 32, !tbaa !316
  %i.nk = getelementptr inbounds nuw i8, ptr %.8344.i.i, i64 224
  store <8 x float> %i.nd, ptr %i.nk, align 32, !tbaa !316
  %i.nl = getelementptr inbounds nuw i8, ptr %.8344.i.i, i64 256 ; 2 uses
  %i.nm = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx479.i.i = shl i64 %i.nm, 5
  %i.nn = getelementptr inbounds nuw i8, ptr %.0463343.i.i, i64 %.idx479.i.i
  %i.no = add nuw nsw i32 %.0464342.i.i, 1        ; 2 uses
  %exitcond441.not.i.i = icmp eq i32 %i.no, %18
  br i1 %exitcond441.not.i.i, label %.loopexit317.i.i, label %.lr.ph345.i.i, !llvm.loop !1324

_ZN4ncnn3MatD2Ev.exit505.i.i:                     ; preds = %bb.d
  br i1 %i.kl, label %.lr.ph350.preheader.i.i, label %.loopexit317.i.i

.lr.ph350.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit505.i.i
  %i.np = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1325
  %i.nq = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1325
  %i.nr = mul i64 %i.nq, %i.kk
  %i.ns = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1325
  %i.nt = mul i64 %i.nr, %i.ns
  %i.nu = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.nt
  %i.nv = add nsw i64 %indvars.iv444.i.i, %i.kp
  %.idx485.i.i = shl nsw i64 %i.nv, 4
  %i.nw = getelementptr inbounds i8, ptr %i.nu, i64 %.idx485.i.i
  br label %.lr.ph350.i.i

.lr.ph350.i.i:                                    ; preds = %.lr.ph350.i.i, %.lr.ph350.preheader.i.i
  %.10349.i.i = phi ptr [ %i.pj, %.lr.ph350.i.i ], [ %.7358.i.i, %.lr.ph350.preheader.i.i ] ; 9 uses
  %.0465348.i.i = phi ptr [ %i.pl, %.lr.ph350.i.i ], [ %i.nw, %.lr.ph350.preheader.i.i ] ; 9 uses
  %.0466347.i.i = phi i32 [ %i.pm, %.lr.ph350.i.i ], [ 0, %.lr.ph350.preheader.i.i ]
  %i.nx = load <4 x float>, ptr %.0465348.i.i, align 16, !tbaa !316 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.0465348.i.i, i64 16
  %i.nz = load <4 x float>, ptr %i.ny, align 16, !tbaa !316 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.0465348.i.i, i64 32
  %i.ob = load <4 x float>, ptr %i.oa, align 16, !tbaa !316 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.0465348.i.i, i64 48
  %i.od = load <4 x float>, ptr %i.oc, align 16, !tbaa !316 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.0465348.i.i, i64 64
  %i.of = load <4 x float>, ptr %i.oe, align 16, !tbaa !316 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.0465348.i.i, i64 80
  %i.oh = load <4 x float>, ptr %i.og, align 16, !tbaa !316 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.0465348.i.i, i64 96
  %i.oj = load <4 x float>, ptr %i.oi, align 16, !tbaa !316 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.0465348.i.i, i64 112
  %i.ol = load <4 x float>, ptr %i.ok, align 16, !tbaa !316 ; 2 uses
  %i.om = shufflevector <4 x float> %i.nx, <4 x float> %i.nz, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.on = shufflevector <4 x float> %i.ob, <4 x float> %i.od, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.oo = shufflevector <4 x float> %i.nx, <4 x float> %i.nz, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.op = shufflevector <4 x float> %i.ob, <4 x float> %i.od, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.oq = shufflevector <4 x float> %i.om, <4 x float> %i.on, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.or = shufflevector <4 x float> %i.on, <4 x float> %i.om, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.os = shufflevector <4 x float> %i.oo, <4 x float> %i.op, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ot = shufflevector <4 x float> %i.op, <4 x float> %i.oo, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ou = shufflevector <4 x float> %i.of, <4 x float> %i.oh, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ov = shufflevector <4 x float> %i.oj, <4 x float> %i.ol, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ow = shufflevector <4 x float> %i.of, <4 x float> %i.oh, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ox = shufflevector <4 x float> %i.oj, <4 x float> %i.ol, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.oy = shufflevector <4 x float> %i.ou, <4 x float> %i.ov, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.oz = shufflevector <4 x float> %i.ov, <4 x float> %i.ou, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.pa = shufflevector <4 x float> %i.ow, <4 x float> %i.ox, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.pb = shufflevector <4 x float> %i.ox, <4 x float> %i.ow, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.oq, ptr %.10349.i.i, align 16, !tbaa !316
  %i.pc = getelementptr inbounds nuw i8, ptr %.10349.i.i, i64 16
  store <4 x float> %i.oy, ptr %i.pc, align 16, !tbaa !316
  %i.pd = getelementptr inbounds nuw i8, ptr %.10349.i.i, i64 32
  store <4 x float> %i.or, ptr %i.pd, align 16, !tbaa !316
  %i.pe = getelementptr inbounds nuw i8, ptr %.10349.i.i, i64 48
  store <4 x float> %i.oz, ptr %i.pe, align 16, !tbaa !316
  %i.pf = getelementptr inbounds nuw i8, ptr %.10349.i.i, i64 64
  store <4 x float> %i.os, ptr %i.pf, align 16, !tbaa !316
  %i.pg = getelementptr inbounds nuw i8, ptr %.10349.i.i, i64 80
  store <4 x float> %i.pa, ptr %i.pg, align 16, !tbaa !316
  %i.ph = getelementptr inbounds nuw i8, ptr %.10349.i.i, i64 96
  store <4 x float> %i.ot, ptr %i.ph, align 16, !tbaa !316
  %i.pi = getelementptr inbounds nuw i8, ptr %.10349.i.i, i64 112
  store <4 x float> %i.pb, ptr %i.pi, align 16, !tbaa !316
  %i.pj = getelementptr inbounds nuw i8, ptr %.10349.i.i, i64 128 ; 2 uses
  %i.pk = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx478.i.i = shl i64 %i.pk, 4
  %i.pl = getelementptr inbounds nuw i8, ptr %.0465348.i.i, i64 %.idx478.i.i
  %i.pm = add nuw nsw i32 %.0466347.i.i, 1        ; 2 uses
  %exitcond442.not.i.i = icmp eq i32 %i.pm, %19
  br i1 %exitcond442.not.i.i, label %.loopexit317.i.i, label %.lr.ph350.i.i, !llvm.loop !1328

_ZN4ncnn3MatD2Ev.exit504.i.i:                     ; preds = %bb.d
  br i1 %i.kn, label %.lr.ph355.preheader.i.i, label %.loopexit317.i.i

.lr.ph355.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit504.i.i
  %i.pn = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1329
  %i.po = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1329
  %i.pp = mul i64 %i.po, %i.km
  %i.pq = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1329
  %i.pr = mul i64 %i.pp, %i.pq
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.pr
  %i.pt = getelementptr [4 x i8], ptr %i.ps, i64 %indvars.iv444.i.i
  %i.pu = getelementptr [4 x i8], ptr %i.pt, i64 %i.kp ; 2 uses
  br i1 %i.ks, label %.lr.ph355.i.i.epil.preheader, label %.lr.ph355.i.i

.lr.ph355.i.i:                                    ; preds = %.lr.ph355.preheader.i.i, %.lr.ph355.i.i
  %.12354.i.i = phi ptr [ %i.qu, %.lr.ph355.i.i ], [ %.7358.i.i, %.lr.ph355.preheader.i.i ] ; 9 uses
  %.0471353.i.i = phi ptr [ %i.qw, %.lr.ph355.i.i ], [ %i.pu, %.lr.ph355.preheader.i.i ] ; 3 uses
  %niter213 = phi i32 [ %niter213.next.3, %.lr.ph355.i.i ], [ 0, %.lr.ph355.preheader.i.i ]
  %i.pv = load <4 x float>, ptr %.0471353.i.i, align 1, !tbaa !316
  %i.pw = getelementptr inbounds nuw i8, ptr %.0471353.i.i, i64 16
  %i.px = load <4 x float>, ptr %i.pw, align 1, !tbaa !316
  store <4 x float> %i.pv, ptr %.12354.i.i, align 1, !tbaa !316
  %i.py = getelementptr inbounds nuw i8, ptr %.12354.i.i, i64 16
  store <4 x float> %i.px, ptr %i.py, align 1, !tbaa !316
  %i.pz = getelementptr inbounds nuw i8, ptr %.12354.i.i, i64 32
  %i.qa = load i64, ptr %i.p, align 8, !tbaa !20
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %.0471353.i.i, i64 %i.qa ; 3 uses
  %i.qc = load <4 x float>, ptr %i.qb, align 1, !tbaa !316
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.qe = load <4 x float>, ptr %i.qd, align 1, !tbaa !316
  store <4 x float> %i.qc, ptr %i.pz, align 1, !tbaa !316
  %i.qf = getelementptr inbounds nuw i8, ptr %.12354.i.i, i64 48
  store <4 x float> %i.qe, ptr %i.qf, align 1, !tbaa !316
  %i.qg = getelementptr inbounds nuw i8, ptr %.12354.i.i, i64 64
  %i.qh = load i64, ptr %i.p, align 8, !tbaa !20
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.qb, i64 %i.qh ; 3 uses
  %i.qj = load <4 x float>, ptr %i.qi, align 1, !tbaa !316
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.ql = load <4 x float>, ptr %i.qk, align 1, !tbaa !316
  store <4 x float> %i.qj, ptr %i.qg, align 1, !tbaa !316
  %i.qm = getelementptr inbounds nuw i8, ptr %.12354.i.i, i64 80
  store <4 x float> %i.ql, ptr %i.qm, align 1, !tbaa !316
  %i.qn = getelementptr inbounds nuw i8, ptr %.12354.i.i, i64 96
  %i.qo = load i64, ptr %i.p, align 8, !tbaa !20
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %i.qo ; 3 uses
  %i.qq = load <4 x float>, ptr %i.qp, align 1, !tbaa !316
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %i.qs = load <4 x float>, ptr %i.qr, align 1, !tbaa !316
  store <4 x float> %i.qq, ptr %i.qn, align 1, !tbaa !316
  %i.qt = getelementptr inbounds nuw i8, ptr %.12354.i.i, i64 112
  store <4 x float> %i.qs, ptr %i.qt, align 1, !tbaa !316
  %i.qu = getelementptr inbounds nuw i8, ptr %.12354.i.i, i64 128 ; 3 uses
  %i.qv = load i64, ptr %i.p, align 8, !tbaa !20
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %i.qv ; 2 uses
  %niter213.next.3 = add i32 %niter213, 4         ; 2 uses
  %niter213.ncmp.3 = icmp eq i32 %niter213.next.3, %unroll_iter212
  br i1 %niter213.ncmp.3, label %.loopexit317.i.i.loopexit185.unr-lcssa, label %.lr.ph355.i.i, !llvm.loop !1332

.loopexit317.i.i.loopexit185.unr-lcssa:           ; preds = %.lr.ph355.i.i
  br i1 %lcmp.mod209.not, label %.loopexit317.i.i, label %.lr.ph355.i.i.epil.preheader

.lr.ph355.i.i.epil.preheader:                     ; preds = %.loopexit317.i.i.loopexit185.unr-lcssa, %.lr.ph355.preheader.i.i
  %.12354.i.i.epil.init = phi ptr [ %.7358.i.i, %.lr.ph355.preheader.i.i ], [ %i.qu, %.loopexit317.i.i.loopexit185.unr-lcssa ]
  %.0471353.i.i.epil.init = phi ptr [ %i.pu, %.lr.ph355.preheader.i.i ], [ %i.qw, %.loopexit317.i.i.loopexit185.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod211)
  br label %.lr.ph355.i.i.epil

.lr.ph355.i.i.epil:                               ; preds = %.lr.ph355.i.i.epil, %.lr.ph355.i.i.epil.preheader
  %.12354.i.i.epil = phi ptr [ %i.rb, %.lr.ph355.i.i.epil ], [ %.12354.i.i.epil.init, %.lr.ph355.i.i.epil.preheader ] ; 3 uses
  %.0471353.i.i.epil = phi ptr [ %i.rd, %.lr.ph355.i.i.epil ], [ %.0471353.i.i.epil.init, %.lr.ph355.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph355.i.i.epil ], [ 0, %.lr.ph355.i.i.epil.preheader ]
  %i.qx = load <4 x float>, ptr %.0471353.i.i.epil, align 1, !tbaa !316
  %i.qy = getelementptr inbounds nuw i8, ptr %.0471353.i.i.epil, i64 16
  %i.qz = load <4 x float>, ptr %i.qy, align 1, !tbaa !316
  store <4 x float> %i.qx, ptr %.12354.i.i.epil, align 1, !tbaa !316
  %i.ra = getelementptr inbounds nuw i8, ptr %.12354.i.i.epil, i64 16
  store <4 x float> %i.qz, ptr %i.ra, align 1, !tbaa !316
  %i.rb = getelementptr inbounds nuw i8, ptr %.12354.i.i.epil, i64 32 ; 2 uses
  %i.rc = load i64, ptr %i.p, align 8, !tbaa !20
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %.0471353.i.i.epil, i64 %i.rc
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter208
  br i1 %epil.iter.cmp.not, label %.loopexit317.i.i, label %.lr.ph355.i.i.epil, !llvm.loop !1333

.loopexit317.i.i:                                 ; preds = %.loopexit317.i.i.loopexit185.unr-lcssa, %.lr.ph355.i.i.epil, %.lr.ph350.i.i, %.lr.ph345.i.i, %_ZN4ncnn3MatD2Ev.exit504.i.i, %_ZN4ncnn3MatD2Ev.exit505.i.i, %_ZN4ncnn3MatD2Ev.exit506.i.i, %bb.d
  %.13.i.i = phi ptr [ %.7358.i.i, %bb.d ], [ %.7358.i.i, %_ZN4ncnn3MatD2Ev.exit504.i.i ], [ %i.nl, %.lr.ph345.i.i ], [ %i.pj, %.lr.ph350.i.i ], [ %.7358.i.i, %_ZN4ncnn3MatD2Ev.exit505.i.i ], [ %.7358.i.i, %_ZN4ncnn3MatD2Ev.exit506.i.i ], [ %i.qu, %.loopexit317.i.i.loopexit185.unr-lcssa ], [ %i.rb, %.lr.ph355.i.i.epil ] ; 2 uses
  %indvars.iv.next445.i.i = add nuw nsw i64 %indvars.iv444.i.i, 8 ; 2 uses
  %i.re = icmp slt i64 %indvars.iv444.i.i, %invariant.op.i.i
  br i1 %i.re, label %bb.d, label %.preheader316.loopexit.i.i, !llvm.loop !1334

.preheader312.loopexit.i.i:                       ; preds = %.loopexit313.i.i
  %i.rf = trunc nsw i64 %indvars.iv.next451.i.i to i32
  br label %.preheader312.i.i

.preheader312.i.i:                                ; preds = %.preheader312.loopexit.i.i, %.preheader316.i.i
  %.2448.lcssa.i.i = phi i32 [ %.1447.lcssa.i.i, %.preheader316.i.i ], [ %i.rf, %.preheader312.loopexit.i.i ] ; 3 uses
  %.14.lcssa.i.i = phi ptr [ %.7.lcssa.i.i, %.preheader316.i.i ], [ %.20.i.i, %.preheader312.loopexit.i.i ] ; 2 uses
  %i.rg = or disjoint i32 %.2448.lcssa.i.i, 1
  %i.rh = icmp slt i32 %i.rg, %.sroa.speculated64
  br i1 %i.rh, label %.lr.ph399.i.i, label %.preheader.i.i

.lr.ph399.i.i:                                    ; preds = %.preheader312.i.i
  %i.ri = sdiv i32 %i.x, 8
  %i.rj = sext i32 %i.ri to i64
  %22 = sdiv i32 %.sroa.speculated, 8
  %i.rk = icmp sgt i32 %.sroa.speculated, 7
  %i.rl = sdiv i32 %i.x, 4
  %i.rm = sext i32 %i.rl to i64
  %23 = sdiv i32 %.sroa.speculated, 4             ; 3 uses
  %i.rn = icmp sgt i32 %.sroa.speculated, 3
  %i.ro = sext i32 %i.x to i64
  %i.rp = icmp sgt i32 %.sroa.speculated, 0
  %i.rq = sext i32 %.2448.lcssa.i.i to i64
  %i.rr = sext i32 %.sroa.speculated64 to i64
  %i.rs = sext i32 %i.v to i64                    ; 3 uses
  %invariant.op527.i.i = add nsw i64 %i.rr, -1
  %i.rt = add i32 %.sroa.speculated, -1
  %xtraiter221 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.ru = icmp ult i32 %i.rt, 3
  %unroll_iter226 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod223.not = icmp eq i32 %xtraiter221, 0
  %lcmp.mod225 = icmp ne i32 %xtraiter221, 0
  %xtraiter228 = and i32 %23, 1
  %i.rv = and i32 %.sroa.speculated, 2147483644
  %24 = icmp eq i32 %i.rv, 4
  %unroll_iter233 = and i32 %23, 536870910
  %lcmp.mod230.not = icmp eq i32 %xtraiter228, 0
  %lcmp.mod232 = trunc i32 %23 to i1
  br label %bb.f

bb.e:                                             ; preds = %.loopexit313.i.i, %.lr.ph379.i.i
  %indvars.iv450.i.i = phi i64 [ %i.le, %.lr.ph379.i.i ], [ %indvars.iv.next451.i.i, %.loopexit313.i.i ] ; 4 uses
  %.14378.i.i = phi ptr [ %.7.lcssa.i.i, %.lr.ph379.i.i ], [ %.20.i.i, %.loopexit313.i.i ] ; 8 uses
  switch i32 %i.bb, label %.loopexit313.i.i [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit503.i.i
    i32 4, label %_ZN4ncnn3MatD2Ev.exit502.i.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit501.i.i
  ]

_ZN4ncnn3MatD2Ev.exit503.i.i:                     ; preds = %bb.e
  br i1 %i.ky, label %.lr.ph365.preheader.i.i, label %.loopexit313.i.i

.lr.ph365.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit503.i.i
  %i.rw = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1335
  %i.rx = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1335
  %i.ry = mul i64 %i.rx, %i.kx
  %i.rz = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1335
  %i.sa = mul i64 %i.ry, %i.rz
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.sa
  %i.sc = add nsw i64 %indvars.iv450.i.i, %i.lg
  %.idx486.i.i = shl nsw i64 %i.sc, 5
  %i.sd = getelementptr inbounds i8, ptr %i.sb, i64 %.idx486.i.i
  br label %.lr.ph365.i.i

.lr.ph365.i.i:                                    ; preds = %.lr.ph365.i.i, %.lr.ph365.preheader.i.i
  %.15364.i.i = phi ptr [ %i.sw, %.lr.ph365.i.i ], [ %.14378.i.i, %.lr.ph365.preheader.i.i ] ; 5 uses
  %.0469363.i.i = phi i32 [ %i.sz, %.lr.ph365.i.i ], [ 0, %.lr.ph365.preheader.i.i ]
  %.0470362.i.i = phi ptr [ %i.sy, %.lr.ph365.i.i ], [ %i.sd, %.lr.ph365.preheader.i.i ] ; 5 uses
  %i.se = load <8 x float>, ptr %.0470362.i.i, align 32, !tbaa !316 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.0470362.i.i, i64 32
  %i.sg = load <8 x float>, ptr %i.sf, align 32, !tbaa !316 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.0470362.i.i, i64 64
  %i.si = load <8 x float>, ptr %i.sh, align 32, !tbaa !316 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.0470362.i.i, i64 96
  %i.sk = load <8 x float>, ptr %i.sj, align 32, !tbaa !316 ; 2 uses
  %i.sl = shufflevector <8 x float> %i.se, <8 x float> %i.sg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.sm = shufflevector <8 x float> %i.se, <8 x float> %i.sg, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.sn = shufflevector <8 x float> %i.si, <8 x float> %i.sk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.so = shufflevector <8 x float> %i.si, <8 x float> %i.sk, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.sp = shufflevector <8 x float> %i.sl, <8 x float> %i.sn, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.sq = shufflevector <8 x float> %i.sm, <8 x float> %i.so, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.sr = shufflevector <8 x float> %i.sl, <8 x float> %i.sn, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.ss = shufflevector <8 x float> %i.sm, <8 x float> %i.so, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x float> %i.sp, ptr %.15364.i.i, align 32, !tbaa !316
  %i.st = getelementptr inbounds nuw i8, ptr %.15364.i.i, i64 32
  store <8 x float> %i.sq, ptr %i.st, align 32, !tbaa !316
  %i.su = getelementptr inbounds nuw i8, ptr %.15364.i.i, i64 64
  store <8 x float> %i.sr, ptr %i.su, align 32, !tbaa !316
  %i.sv = getelementptr inbounds nuw i8, ptr %.15364.i.i, i64 96
  store <8 x float> %i.ss, ptr %i.sv, align 32, !tbaa !316
  %i.sw = getelementptr inbounds nuw i8, ptr %.15364.i.i, i64 128 ; 2 uses
  %i.sx = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx477.i.i = shl i64 %i.sx, 5
  %i.sy = getelementptr inbounds nuw i8, ptr %.0470362.i.i, i64 %.idx477.i.i
  %i.sz = add nuw nsw i32 %.0469363.i.i, 1        ; 2 uses
  %exitcond447.not.i.i = icmp eq i32 %i.sz, %20
  br i1 %exitcond447.not.i.i, label %.loopexit313.i.i, label %.lr.ph365.i.i, !llvm.loop !1338

_ZN4ncnn3MatD2Ev.exit502.i.i:                     ; preds = %bb.e
  br i1 %i.lb, label %.lr.ph370.preheader.i.i, label %.loopexit313.i.i

.lr.ph370.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit502.i.i
  %i.ta = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1339
  %i.tb = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1339
  %i.tc = mul i64 %i.tb, %i.la
  %i.td = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1339
  %i.te = mul i64 %i.tc, %i.td
  %i.tf = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.te
  %i.tg = add nsw i64 %indvars.iv450.i.i, %i.lg
  %.idx487.i.i = shl nsw i64 %i.tg, 4
  %i.th = getelementptr inbounds i8, ptr %i.tf, i64 %.idx487.i.i
  br label %.lr.ph370.i.i

.lr.ph370.i.i:                                    ; preds = %.lr.ph370.i.i, %.lr.ph370.preheader.i.i
  %.17369.i.i = phi ptr [ %i.ua, %.lr.ph370.i.i ], [ %.14378.i.i, %.lr.ph370.preheader.i.i ] ; 5 uses
  %.0467368.i.i = phi i32 [ %i.ud, %.lr.ph370.i.i ], [ 0, %.lr.ph370.preheader.i.i ]
  %.0468367.i.i = phi ptr [ %i.uc, %.lr.ph370.i.i ], [ %i.th, %.lr.ph370.preheader.i.i ] ; 5 uses
  %i.ti = load <4 x float>, ptr %.0468367.i.i, align 16, !tbaa !316 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %.0468367.i.i, i64 16
  %i.tk = load <4 x float>, ptr %i.tj, align 16, !tbaa !316 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.0468367.i.i, i64 32
  %i.tm = load <4 x float>, ptr %i.tl, align 16, !tbaa !316 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %.0468367.i.i, i64 48
  %i.to = load <4 x float>, ptr %i.tn, align 16, !tbaa !316 ; 2 uses
  %i.tp = shufflevector <4 x float> %i.ti, <4 x float> %i.tk, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.tq = shufflevector <4 x float> %i.tm, <4 x float> %i.to, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.tr = shufflevector <4 x float> %i.ti, <4 x float> %i.tk, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ts = shufflevector <4 x float> %i.tm, <4 x float> %i.to, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.tt = shufflevector <4 x float> %i.tp, <4 x float> %i.tq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.tu = shufflevector <4 x float> %i.tq, <4 x float> %i.tp, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.tv = shufflevector <4 x float> %i.tr, <4 x float> %i.ts, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.tw = shufflevector <4 x float> %i.ts, <4 x float> %i.tr, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.tt, ptr %.17369.i.i, align 16, !tbaa !316
  %i.tx = getelementptr inbounds nuw i8, ptr %.17369.i.i, i64 16
  store <4 x float> %i.tu, ptr %i.tx, align 16, !tbaa !316
  %i.ty = getelementptr inbounds nuw i8, ptr %.17369.i.i, i64 32
  store <4 x float> %i.tv, ptr %i.ty, align 16, !tbaa !316
  %i.tz = getelementptr inbounds nuw i8, ptr %.17369.i.i, i64 48
  store <4 x float> %i.tw, ptr %i.tz, align 16, !tbaa !316
  %i.ua = getelementptr inbounds nuw i8, ptr %.17369.i.i, i64 64 ; 2 uses
  %i.ub = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx476.i.i = shl i64 %i.ub, 4
  %i.uc = getelementptr inbounds nuw i8, ptr %.0468367.i.i, i64 %.idx476.i.i
  %i.ud = add nuw nsw i32 %.0467368.i.i, 1        ; 2 uses
  %exitcond448.not.i.i = icmp eq i32 %i.ud, %21
  br i1 %exitcond448.not.i.i, label %.loopexit313.i.i, label %.lr.ph370.i.i, !llvm.loop !1342

_ZN4ncnn3MatD2Ev.exit501.i.i:                     ; preds = %bb.e
  br i1 %i.ld, label %.lr.ph375.preheader.i.i, label %.loopexit313.i.i

.lr.ph375.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit501.i.i
  %i.ue = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1343
  %i.uf = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1343
  %i.ug = mul i64 %i.uf, %i.lc
  %i.uh = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1343
  %i.ui = mul i64 %i.ug, %i.uh
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ue, i64 %i.ui
  %i.uk = getelementptr [4 x i8], ptr %i.uj, i64 %indvars.iv450.i.i
  %i.ul = getelementptr [4 x i8], ptr %i.uk, i64 %i.lg ; 2 uses
  br i1 %i.li, label %.lr.ph375.i.i.epil.preheader, label %.lr.ph375.i.i

.lr.ph375.i.i:                                    ; preds = %.lr.ph375.preheader.i.i, %.lr.ph375.i.i
  %.19374.i.i = phi ptr [ %i.uz, %.lr.ph375.i.i ], [ %.14378.i.i, %.lr.ph375.preheader.i.i ] ; 5 uses
  %.0458372.i.i = phi ptr [ %i.vb, %.lr.ph375.i.i ], [ %i.ul, %.lr.ph375.preheader.i.i ] ; 2 uses
  %niter220 = phi i32 [ %niter220.next.3, %.lr.ph375.i.i ], [ 0, %.lr.ph375.preheader.i.i ]
  %i.um = load <4 x float>, ptr %.0458372.i.i, align 1, !tbaa !316
  store <4 x float> %i.um, ptr %.19374.i.i, align 1, !tbaa !316
  %i.un = getelementptr inbounds nuw i8, ptr %.19374.i.i, i64 16
  %i.uo = load i64, ptr %i.p, align 8, !tbaa !20
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %.0458372.i.i, i64 %i.uo ; 2 uses
  %i.uq = load <4 x float>, ptr %i.up, align 1, !tbaa !316
  store <4 x float> %i.uq, ptr %i.un, align 1, !tbaa !316
  %i.ur = getelementptr inbounds nuw i8, ptr %.19374.i.i, i64 32
  %i.us = load i64, ptr %i.p, align 8, !tbaa !20
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %i.us ; 2 uses
  %i.uu = load <4 x float>, ptr %i.ut, align 1, !tbaa !316
  store <4 x float> %i.uu, ptr %i.ur, align 1, !tbaa !316
  %i.uv = getelementptr inbounds nuw i8, ptr %.19374.i.i, i64 48
  %i.uw = load i64, ptr %i.p, align 8, !tbaa !20
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %i.uw ; 2 uses
  %i.uy = load <4 x float>, ptr %i.ux, align 1, !tbaa !316
  store <4 x float> %i.uy, ptr %i.uv, align 1, !tbaa !316
  %i.uz = getelementptr inbounds nuw i8, ptr %.19374.i.i, i64 64 ; 3 uses
  %i.va = load i64, ptr %i.p, align 8, !tbaa !20
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %i.va ; 2 uses
  %niter220.next.3 = add i32 %niter220, 4         ; 2 uses
  %niter220.ncmp.3 = icmp eq i32 %niter220.next.3, %unroll_iter219
  br i1 %niter220.ncmp.3, label %.loopexit313.i.i.loopexit183.unr-lcssa, label %.lr.ph375.i.i, !llvm.loop !1346

.loopexit313.i.i.loopexit183.unr-lcssa:           ; preds = %.lr.ph375.i.i
  br i1 %lcmp.mod216.not, label %.loopexit313.i.i, label %.lr.ph375.i.i.epil.preheader

.lr.ph375.i.i.epil.preheader:                     ; preds = %.loopexit313.i.i.loopexit183.unr-lcssa, %.lr.ph375.preheader.i.i
  %.19374.i.i.epil.init = phi ptr [ %.14378.i.i, %.lr.ph375.preheader.i.i ], [ %i.uz, %.loopexit313.i.i.loopexit183.unr-lcssa ]
  %.0458372.i.i.epil.init = phi ptr [ %i.ul, %.lr.ph375.preheader.i.i ], [ %i.vb, %.loopexit313.i.i.loopexit183.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod218)
  br label %.lr.ph375.i.i.epil

.lr.ph375.i.i.epil:                               ; preds = %.lr.ph375.i.i.epil, %.lr.ph375.i.i.epil.preheader
  %.19374.i.i.epil = phi ptr [ %i.vd, %.lr.ph375.i.i.epil ], [ %.19374.i.i.epil.init, %.lr.ph375.i.i.epil.preheader ] ; 2 uses
  %.0458372.i.i.epil = phi ptr [ %i.vf, %.lr.ph375.i.i.epil ], [ %.0458372.i.i.epil.init, %.lr.ph375.i.i.epil.preheader ] ; 2 uses
  %epil.iter215 = phi i32 [ %epil.iter215.next, %.lr.ph375.i.i.epil ], [ 0, %.lr.ph375.i.i.epil.preheader ]
  %i.vc = load <4 x float>, ptr %.0458372.i.i.epil, align 1, !tbaa !316
  store <4 x float> %i.vc, ptr %.19374.i.i.epil, align 1, !tbaa !316
  %i.vd = getelementptr inbounds nuw i8, ptr %.19374.i.i.epil, i64 16 ; 2 uses
  %i.ve = load i64, ptr %i.p, align 8, !tbaa !20
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %.0458372.i.i.epil, i64 %i.ve
  %epil.iter215.next = add i32 %epil.iter215, 1   ; 2 uses
  %epil.iter215.cmp.not = icmp eq i32 %epil.iter215.next, %xtraiter214
  br i1 %epil.iter215.cmp.not, label %.loopexit313.i.i, label %.lr.ph375.i.i.epil, !llvm.loop !1347

.loopexit313.i.i:                                 ; preds = %.loopexit313.i.i.loopexit183.unr-lcssa, %.lr.ph375.i.i.epil, %.lr.ph370.i.i, %.lr.ph365.i.i, %_ZN4ncnn3MatD2Ev.exit501.i.i, %_ZN4ncnn3MatD2Ev.exit502.i.i, %_ZN4ncnn3MatD2Ev.exit503.i.i, %bb.e
  %.20.i.i = phi ptr [ %.14378.i.i, %bb.e ], [ %.14378.i.i, %_ZN4ncnn3MatD2Ev.exit501.i.i ], [ %i.sw, %.lr.ph365.i.i ], [ %i.ua, %.lr.ph370.i.i ], [ %.14378.i.i, %_ZN4ncnn3MatD2Ev.exit502.i.i ], [ %.14378.i.i, %_ZN4ncnn3MatD2Ev.exit503.i.i ], [ %i.uz, %.loopexit313.i.i.loopexit183.unr-lcssa ], [ %i.vd, %.lr.ph375.i.i.epil ] ; 2 uses
  %indvars.iv.next451.i.i = add nuw nsw i64 %indvars.iv450.i.i, 4 ; 3 uses
  %i.vg = icmp slt i64 %indvars.iv.next451.i.i, %invariant.op526.i.i
  br i1 %i.vg, label %bb.e, label %.preheader312.loopexit.i.i, !llvm.loop !1348

.preheader.loopexit.i.i:                          ; preds = %.loopexit309.i.i
  %i.vh = trunc nsw i64 %indvars.iv.next457.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %.preheader312.i.i
  %.3449.lcssa.i.i = phi i32 [ %.2448.lcssa.i.i, %.preheader312.i.i ], [ %i.vh, %.preheader.loopexit.i.i ] ; 2 uses
  %.21.lcssa.i.i = phi ptr [ %.14.lcssa.i.i, %.preheader312.i.i ], [ %.27.i.i, %.preheader.loopexit.i.i ]
  %i.vi = icmp slt i32 %.3449.lcssa.i.i, %.sroa.speculated64
  br i1 %i.vi, label %.lr.ph419.i.i, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph419.i.i:                                    ; preds = %.preheader.i.i
  %i.vj = sdiv i32 %i.x, 8
  %i.vk = sext i32 %i.vj to i64
  %25 = sdiv i32 %.sroa.speculated, 8             ; 3 uses
  %i.vl = icmp sgt i32 %.sroa.speculated, 7
  %i.vm = sdiv i32 %i.x, 4
  %i.vn = sext i32 %i.vm to i64
  %26 = sdiv i32 %.sroa.speculated, 4             ; 3 uses
  %i.vo = icmp sgt i32 %.sroa.speculated, 3
  %i.vp = sext i32 %i.x to i64
  %i.vq = icmp sgt i32 %.sroa.speculated, 0
  %i.vr = sext i32 %.3449.lcssa.i.i to i64
  %i.vs = sext i32 %i.v to i64                    ; 3 uses
  %wide.trip.count.i.i = sext i32 %.sroa.speculated64 to i64
  %i.vt = add i32 %.sroa.speculated, -1
  %i.vu = add nsw i32 %26, -1
  %i.vv = add nsw i32 %25, -1
  %xtraiter236 = and i32 %.sroa.speculated, 7     ; 3 uses
  %i.vw = icmp ult i32 %i.vt, 7
  %unroll_iter241 = and i32 %.sroa.speculated, 2147483640
  %lcmp.mod238.not = icmp eq i32 %xtraiter236, 0
  %lcmp.mod240 = icmp ne i32 %xtraiter236, 0
  %xtraiter243 = and i32 %26, 3                   ; 3 uses
  %i.vx = icmp ult i32 %i.vu, 3
  %unroll_iter248 = and i32 %26, 536870908
  %lcmp.mod245.not = icmp eq i32 %xtraiter243, 0
  %lcmp.mod247 = icmp ne i32 %xtraiter243, 0
  %xtraiter250 = and i32 %25, 3                   ; 3 uses
  %i.vy = icmp ult i32 %i.vv, 3
  %unroll_iter255 = and i32 %25, 268435452
  %lcmp.mod252.not = icmp eq i32 %xtraiter250, 0
  %lcmp.mod254 = icmp ne i32 %xtraiter250, 0
  br label %bb.h

bb.f:                                             ; preds = %.loopexit309.i.i, %.lr.ph399.i.i
  %indvars.iv456.i.i = phi i64 [ %i.rq, %.lr.ph399.i.i ], [ %indvars.iv.next457.i.i, %.loopexit309.i.i ] ; 4 uses
  %.21398.i.i = phi ptr [ %.14.lcssa.i.i, %.lr.ph399.i.i ], [ %.27.i.i, %.loopexit309.i.i ] ; 9 uses
  switch i32 %i.bb, label %.loopexit309.i.i [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit500.i.i
    i32 4, label %_ZN4ncnn3MatD2Ev.exit499.i.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit498.i.i
  ]

_ZN4ncnn3MatD2Ev.exit500.i.i:                     ; preds = %bb.f
  br i1 %i.rk, label %.lr.ph385.preheader.i.i, label %.loopexit309.i.i

.lr.ph385.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit500.i.i
  %i.vz = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1349
  %i.wa = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1349
  %i.wb = mul i64 %i.wa, %i.rj
  %i.wc = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1349
  %i.wd = mul i64 %i.wb, %i.wc
  %i.we = getelementptr inbounds nuw i8, ptr %i.vz, i64 %i.wd
  %i.wf = add nsw i64 %indvars.iv456.i.i, %i.rs
  %.idx488.i.i = shl nsw i64 %i.wf, 5
  %i.wg = getelementptr inbounds i8, ptr %i.we, i64 %.idx488.i.i
  br label %.lr.ph385.i.i

.lr.ph385.i.i:                                    ; preds = %.lr.ph385.i.i, %.lr.ph385.preheader.i.i
  %.22384.i.i = phi ptr [ %i.wn, %.lr.ph385.i.i ], [ %.21398.i.i, %.lr.ph385.preheader.i.i ] ; 3 uses
  %.0455383.i.i = phi i32 [ %i.wq, %.lr.ph385.i.i ], [ 0, %.lr.ph385.preheader.i.i ]
  %.0456382.i.i = phi ptr [ %i.wp, %.lr.ph385.i.i ], [ %i.wg, %.lr.ph385.preheader.i.i ] ; 3 uses
  %i.wh = load <8 x float>, ptr %.0456382.i.i, align 32, !tbaa !316 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.0456382.i.i, i64 32
  %i.wj = load <8 x float>, ptr %i.wi, align 32, !tbaa !316 ; 2 uses
  %i.wk = shufflevector <8 x float> %i.wh, <8 x float> %i.wj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.wl = shufflevector <8 x float> %i.wh, <8 x float> %i.wj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.wk, ptr %.22384.i.i, align 32, !tbaa !316
  %i.wm = getelementptr inbounds nuw i8, ptr %.22384.i.i, i64 32
  store <8 x float> %i.wl, ptr %i.wm, align 32, !tbaa !316
  %i.wn = getelementptr inbounds nuw i8, ptr %.22384.i.i, i64 64 ; 2 uses
  %i.wo = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx475.i.i = shl i64 %i.wo, 5
  %i.wp = getelementptr inbounds nuw i8, ptr %.0456382.i.i, i64 %.idx475.i.i
  %i.wq = add nuw nsw i32 %.0455383.i.i, 1        ; 2 uses
  %exitcond453.not.i.i = icmp eq i32 %i.wq, %22
  br i1 %exitcond453.not.i.i, label %.loopexit309.i.i, label %.lr.ph385.i.i, !llvm.loop !1352

_ZN4ncnn3MatD2Ev.exit499.i.i:                     ; preds = %bb.f
  br i1 %i.rn, label %.lr.ph390.preheader.i.i, label %.loopexit309.i.i

.lr.ph390.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit499.i.i
  %i.wr = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1353
  %i.ws = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1353
  %i.wt = mul i64 %i.ws, %i.rm
  %i.wu = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1353
  %i.wv = mul i64 %i.wt, %i.wu
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wr, i64 %i.wv
  %i.wx = add nsw i64 %indvars.iv456.i.i, %i.rs
  %.idx489.i.i = shl nsw i64 %i.wx, 4
  %i.wy = getelementptr inbounds i8, ptr %i.ww, i64 %.idx489.i.i ; 2 uses
  br i1 %24, label %.lr.ph390.i.i.epil.preheader, label %.lr.ph390.i.i

.lr.ph390.i.i:                                    ; preds = %.lr.ph390.preheader.i.i, %.lr.ph390.i.i
  %.24389.i.i = phi ptr [ %i.xo, %.lr.ph390.i.i ], [ %.21398.i.i, %.lr.ph390.preheader.i.i ] ; 5 uses
  %.0454387.i.i = phi ptr [ %i.xq, %.lr.ph390.i.i ], [ %i.wy, %.lr.ph390.preheader.i.i ] ; 3 uses
  %niter234 = phi i32 [ %niter234.next.1, %.lr.ph390.i.i ], [ 0, %.lr.ph390.preheader.i.i ]
  %i.wz = load <4 x float>, ptr %.0454387.i.i, align 16, !tbaa !316 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %.0454387.i.i, i64 16
  %i.xb = load <4 x float>, ptr %i.xa, align 16, !tbaa !316 ; 2 uses
  %i.xc = shufflevector <4 x float> %i.wz, <4 x float> %i.xb, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.xd = shufflevector <4 x float> %i.wz, <4 x float> %i.xb, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.xc, ptr %.24389.i.i, align 16, !tbaa !316
  %i.xe = getelementptr inbounds nuw i8, ptr %.24389.i.i, i64 16
  store <4 x float> %i.xd, ptr %i.xe, align 16, !tbaa !316
  %i.xf = getelementptr inbounds nuw i8, ptr %.24389.i.i, i64 32
  %i.xg = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx474.i.i = shl i64 %i.xg, 4
  %i.xh = getelementptr inbounds nuw i8, ptr %.0454387.i.i, i64 %.idx474.i.i ; 3 uses
  %i.xi = load <4 x float>, ptr %i.xh, align 16, !tbaa !316 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xh, i64 16
  %i.xk = load <4 x float>, ptr %i.xj, align 16, !tbaa !316 ; 2 uses
  %i.xl = shufflevector <4 x float> %i.xi, <4 x float> %i.xk, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.xm = shufflevector <4 x float> %i.xi, <4 x float> %i.xk, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.xl, ptr %i.xf, align 16, !tbaa !316
  %i.xn = getelementptr inbounds nuw i8, ptr %.24389.i.i, i64 48
  store <4 x float> %i.xm, ptr %i.xn, align 16, !tbaa !316
  %i.xo = getelementptr inbounds nuw i8, ptr %.24389.i.i, i64 64 ; 3 uses
  %i.xp = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx474.i.i.1 = shl i64 %i.xp, 4
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xh, i64 %.idx474.i.i.1 ; 2 uses
  %niter234.next.1 = add i32 %niter234, 2         ; 2 uses
  %niter234.ncmp.1 = icmp eq i32 %niter234.next.1, %unroll_iter233
  br i1 %niter234.ncmp.1, label %.loopexit309.i.i.loopexit180.unr-lcssa, label %.lr.ph390.i.i, !llvm.loop !1356

_ZN4ncnn3MatD2Ev.exit498.i.i:                     ; preds = %bb.f
  br i1 %i.rp, label %.lr.ph395.i.i, label %.loopexit309.i.i

.lr.ph395.i.i:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit498.i.i
  %i.xr = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1357
  %i.xs = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1357 ; 6 uses
  %i.xt = mul i64 %i.xs, %i.ro
  %i.xu = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1357
  %i.xv = mul i64 %i.xt, %i.xu
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xr, i64 %i.xv
  %i.xx = getelementptr [4 x i8], ptr %i.xw, i64 %indvars.iv456.i.i
  %i.xy = getelementptr [4 x i8], ptr %i.xx, i64 %i.rs ; 2 uses
  br i1 %i.ru, label %.epil.preheader, label %.lr.ph395.i.i.new

.lr.ph395.i.i.new:                                ; preds = %.lr.ph395.i.i, %.lr.ph395.i.i.new
  %.0444393.i.i = phi ptr [ %i.yw, %.lr.ph395.i.i.new ], [ %i.xy, %.lr.ph395.i.i ] ; 3 uses
  %.26392.i.i = phi ptr [ %i.yv, %.lr.ph395.i.i.new ], [ %.21398.i.i, %.lr.ph395.i.i ] ; 9 uses
  %niter227 = phi i32 [ %niter227.next.3, %.lr.ph395.i.i.new ], [ 0, %.lr.ph395.i.i ]
  %i.xz = load float, ptr %.0444393.i.i, align 4, !tbaa !39
  store float %i.xz, ptr %.26392.i.i, align 4, !tbaa !39
  %i.ya = getelementptr inbounds nuw i8, ptr %.0444393.i.i, i64 4
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !39
  %i.yc = getelementptr inbounds nuw i8, ptr %.26392.i.i, i64 4
  store float %i.yb, ptr %i.yc, align 4, !tbaa !39
  %i.yd = getelementptr inbounds nuw i8, ptr %.26392.i.i, i64 8
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %.0444393.i.i, i64 %i.xs ; 3 uses
  %i.yf = load float, ptr %i.ye, align 4, !tbaa !39
  store float %i.yf, ptr %i.yd, align 4, !tbaa !39
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ye, i64 4
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !39
  %i.yi = getelementptr inbounds nuw i8, ptr %.26392.i.i, i64 12
  store float %i.yh, ptr %i.yi, align 4, !tbaa !39
  %i.yj = getelementptr inbounds nuw i8, ptr %.26392.i.i, i64 16
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %i.xs ; 3 uses
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !39
  store float %i.yl, ptr %i.yj, align 4, !tbaa !39
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yk, i64 4
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !39
  %i.yo = getelementptr inbounds nuw i8, ptr %.26392.i.i, i64 20
  store float %i.yn, ptr %i.yo, align 4, !tbaa !39
  %i.yp = getelementptr inbounds nuw i8, ptr %.26392.i.i, i64 24
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.yk, i64 %i.xs ; 3 uses
  %i.yr = load float, ptr %i.yq, align 4, !tbaa !39
  store float %i.yr, ptr %i.yp, align 4, !tbaa !39
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 4
  %i.yt = load float, ptr %i.ys, align 4, !tbaa !39
  %i.yu = getelementptr inbounds nuw i8, ptr %.26392.i.i, i64 28
  store float %i.yt, ptr %i.yu, align 4, !tbaa !39
  %i.yv = getelementptr inbounds nuw i8, ptr %.26392.i.i, i64 32 ; 3 uses
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.yq, i64 %i.xs ; 2 uses
  %niter227.next.3 = add i32 %niter227, 4         ; 2 uses
  %niter227.ncmp.3 = icmp eq i32 %niter227.next.3, %unroll_iter226
  br i1 %niter227.ncmp.3, label %.loopexit309.i.i.loopexit181.unr-lcssa, label %.lr.ph395.i.i.new, !llvm.loop !1360

.loopexit309.i.i.loopexit180.unr-lcssa:           ; preds = %.lr.ph390.i.i
  br i1 %lcmp.mod230.not, label %.loopexit309.i.i, label %.lr.ph390.i.i.epil.preheader

.lr.ph390.i.i.epil.preheader:                     ; preds = %.loopexit309.i.i.loopexit180.unr-lcssa, %.lr.ph390.preheader.i.i
  %.24389.i.i.epil.init = phi ptr [ %.21398.i.i, %.lr.ph390.preheader.i.i ], [ %i.xo, %.loopexit309.i.i.loopexit180.unr-lcssa ] ; 3 uses
  %.0454387.i.i.epil.init = phi ptr [ %i.wy, %.lr.ph390.preheader.i.i ], [ %i.xq, %.loopexit309.i.i.loopexit180.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod232)
  %i.yx = load <4 x float>, ptr %.0454387.i.i.epil.init, align 16, !tbaa !316 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.0454387.i.i.epil.init, i64 16
  %i.yz = load <4 x float>, ptr %i.yy, align 16, !tbaa !316 ; 2 uses
  %i.za = shufflevector <4 x float> %i.yx, <4 x float> %i.yz, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.zb = shufflevector <4 x float> %i.yx, <4 x float> %i.yz, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.za, ptr %.24389.i.i.epil.init, align 16, !tbaa !316
  %i.zc = getelementptr inbounds nuw i8, ptr %.24389.i.i.epil.init, i64 16
  store <4 x float> %i.zb, ptr %i.zc, align 16, !tbaa !316
  %i.zd = getelementptr inbounds nuw i8, ptr %.24389.i.i.epil.init, i64 32
  br label %.loopexit309.i.i

.loopexit309.i.i.loopexit181.unr-lcssa:           ; preds = %.lr.ph395.i.i.new
  br i1 %lcmp.mod223.not, label %.loopexit309.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit309.i.i.loopexit181.unr-lcssa, %.lr.ph395.i.i
  %.0444393.i.i.epil.init = phi ptr [ %i.xy, %.lr.ph395.i.i ], [ %i.yw, %.loopexit309.i.i.loopexit181.unr-lcssa ]
  %.26392.i.i.epil.init = phi ptr [ %.21398.i.i, %.lr.ph395.i.i ], [ %i.yv, %.loopexit309.i.i.loopexit181.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod225)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.0444393.i.i.epil = phi ptr [ %.0444393.i.i.epil.init, %.epil.preheader ], [ %i.zj, %bb.g ] ; 3 uses
  %.26392.i.i.epil = phi ptr [ %.26392.i.i.epil.init, %.epil.preheader ], [ %i.zi, %bb.g ] ; 3 uses
  %epil.iter222 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter222.next, %bb.g ]
  %i.ze = load float, ptr %.0444393.i.i.epil, align 4, !tbaa !39
  store float %i.ze, ptr %.26392.i.i.epil, align 4, !tbaa !39
  %i.zf = getelementptr inbounds nuw i8, ptr %.0444393.i.i.epil, i64 4
  %i.zg = load float, ptr %i.zf, align 4, !tbaa !39
  %i.zh = getelementptr inbounds nuw i8, ptr %.26392.i.i.epil, i64 4
  store float %i.zg, ptr %i.zh, align 4, !tbaa !39
  %i.zi = getelementptr inbounds nuw i8, ptr %.26392.i.i.epil, i64 8 ; 2 uses
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %.0444393.i.i.epil, i64 %i.xs
  %epil.iter222.next = add i32 %epil.iter222, 1   ; 2 uses
  %epil.iter222.cmp.not = icmp eq i32 %epil.iter222.next, %xtraiter221
  br i1 %epil.iter222.cmp.not, label %.loopexit309.i.i, label %bb.g, !llvm.loop !1361

.loopexit309.i.i:                                 ; preds = %.loopexit309.i.i.loopexit181.unr-lcssa, %bb.g, %.lr.ph390.i.i.epil.preheader, %.loopexit309.i.i.loopexit180.unr-lcssa, %.lr.ph385.i.i, %_ZN4ncnn3MatD2Ev.exit498.i.i, %_ZN4ncnn3MatD2Ev.exit499.i.i, %_ZN4ncnn3MatD2Ev.exit500.i.i, %bb.f
  %.27.i.i = phi ptr [ %.21398.i.i, %bb.f ], [ %.21398.i.i, %_ZN4ncnn3MatD2Ev.exit498.i.i ], [ %i.wn, %.lr.ph385.i.i ], [ %i.zd, %.lr.ph390.i.i.epil.preheader ], [ %.21398.i.i, %_ZN4ncnn3MatD2Ev.exit499.i.i ], [ %.21398.i.i, %_ZN4ncnn3MatD2Ev.exit500.i.i ], [ %i.xo, %.loopexit309.i.i.loopexit180.unr-lcssa ], [ %i.yv, %.loopexit309.i.i.loopexit181.unr-lcssa ], [ %i.zi, %bb.g ] ; 2 uses
  %indvars.iv.next457.i.i = add nuw nsw i64 %indvars.iv456.i.i, 2 ; 3 uses
  %i.zk = icmp slt i64 %indvars.iv.next457.i.i, %invariant.op527.i.i
  br i1 %i.zk, label %bb.f, label %.preheader.loopexit.i.i, !llvm.loop !1362

bb.h:                                             ; preds = %.loopexit.i.i, %.lr.ph419.i.i
  %indvars.iv462.i.i = phi i64 [ %i.vr, %.lr.ph419.i.i ], [ %indvars.iv.next463.i.i, %.loopexit.i.i ] ; 4 uses
  %.28418.i.i = phi ptr [ %.21.lcssa.i.i, %.lr.ph419.i.i ], [ %.34.i.i, %.loopexit.i.i ] ; 10 uses
  switch i32 %i.bb, label %.loopexit.i.i [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit497.i.i
    i32 4, label %_ZN4ncnn3MatD2Ev.exit496.i.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit.i.i
  ]

_ZN4ncnn3MatD2Ev.exit497.i.i:                     ; preds = %bb.h
  br i1 %i.vl, label %.lr.ph405.preheader.i.i, label %.loopexit.i.i

.lr.ph405.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit497.i.i
  %i.zl = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1363
  %i.zm = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1363
  %i.zn = mul i64 %i.zm, %i.vk
  %i.zo = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1363
  %i.zp = mul i64 %i.zn, %i.zo
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zl, i64 %i.zp
  %i.zr = add nsw i64 %indvars.iv462.i.i, %i.vs
  %.idx490.i.i = shl nsw i64 %i.zr, 5
  %i.zs = getelementptr inbounds i8, ptr %i.zq, i64 %.idx490.i.i ; 2 uses
  br i1 %i.vy, label %.lr.ph405.i.i.epil.preheader, label %.lr.ph405.i.i

.lr.ph405.i.i:                                    ; preds = %.lr.ph405.preheader.i.i, %.lr.ph405.i.i
  %.0442403.i.i = phi ptr [ %i.aai, %.lr.ph405.i.i ], [ %i.zs, %.lr.ph405.preheader.i.i ] ; 2 uses
  %.29402.i.i = phi ptr [ %i.aag, %.lr.ph405.i.i ], [ %.28418.i.i, %.lr.ph405.preheader.i.i ] ; 5 uses
  %niter256 = phi i32 [ %niter256.next.3, %.lr.ph405.i.i ], [ 0, %.lr.ph405.preheader.i.i ]
  %i.zt = load <8 x float>, ptr %.0442403.i.i, align 32, !tbaa !316
  store <8 x float> %i.zt, ptr %.29402.i.i, align 32, !tbaa !316
  %i.zu = getelementptr inbounds nuw i8, ptr %.29402.i.i, i64 32
  %i.zv = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx473.i.i = shl i64 %i.zv, 5
  %i.zw = getelementptr inbounds nuw i8, ptr %.0442403.i.i, i64 %.idx473.i.i ; 2 uses
  %i.zx = load <8 x float>, ptr %i.zw, align 32, !tbaa !316
  store <8 x float> %i.zx, ptr %i.zu, align 32, !tbaa !316
  %i.zy = getelementptr inbounds nuw i8, ptr %.29402.i.i, i64 64
  %i.zz = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx473.i.i.1 = shl i64 %i.zz, 5
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zw, i64 %.idx473.i.i.1 ; 2 uses
  %i.aab = load <8 x float>, ptr %i.aaa, align 32, !tbaa !316
  store <8 x float> %i.aab, ptr %i.zy, align 32, !tbaa !316
  %i.aac = getelementptr inbounds nuw i8, ptr %.29402.i.i, i64 96
  %i.aad = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx473.i.i.2 = shl i64 %i.aad, 5
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aaa, i64 %.idx473.i.i.2 ; 2 uses
  %i.aaf = load <8 x float>, ptr %i.aae, align 32, !tbaa !316
  store <8 x float> %i.aaf, ptr %i.aac, align 32, !tbaa !316
  %i.aag = getelementptr inbounds nuw i8, ptr %.29402.i.i, i64 128 ; 3 uses
  %i.aah = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx473.i.i.3 = shl i64 %i.aah, 5
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aae, i64 %.idx473.i.i.3 ; 2 uses
  %niter256.next.3 = add i32 %niter256, 4         ; 2 uses
  %niter256.ncmp.3 = icmp eq i32 %niter256.next.3, %unroll_iter255
  br i1 %niter256.ncmp.3, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph405.i.i, !llvm.loop !1366

_ZN4ncnn3MatD2Ev.exit496.i.i:                     ; preds = %bb.h
  br i1 %i.vo, label %.lr.ph410.preheader.i.i, label %.loopexit.i.i

.lr.ph410.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit496.i.i
  %i.aaj = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1367
  %i.aak = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1367
  %i.aal = mul i64 %i.aak, %i.vn
  %i.aam = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1367
  %i.aan = mul i64 %i.aal, %i.aam
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %i.aan
  %i.aap = add nsw i64 %indvars.iv462.i.i, %i.vs
  %.idx491.i.i = shl nsw i64 %i.aap, 4
  %i.aaq = getelementptr inbounds i8, ptr %i.aao, i64 %.idx491.i.i ; 2 uses
  br i1 %i.vx, label %.lr.ph410.i.i.epil.preheader, label %.lr.ph410.i.i

.lr.ph410.i.i:                                    ; preds = %.lr.ph410.preheader.i.i, %.lr.ph410.i.i
  %.0440408.i.i = phi ptr [ %i.abg, %.lr.ph410.i.i ], [ %i.aaq, %.lr.ph410.preheader.i.i ] ; 2 uses
  %.31407.i.i = phi ptr [ %i.abe, %.lr.ph410.i.i ], [ %.28418.i.i, %.lr.ph410.preheader.i.i ] ; 5 uses
  %niter249 = phi i32 [ %niter249.next.3, %.lr.ph410.i.i ], [ 0, %.lr.ph410.preheader.i.i ]
  %i.aar = load <4 x float>, ptr %.0440408.i.i, align 16, !tbaa !316
  store <4 x float> %i.aar, ptr %.31407.i.i, align 16, !tbaa !316
  %i.aas = getelementptr inbounds nuw i8, ptr %.31407.i.i, i64 16
  %i.aat = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.i.i = shl i64 %i.aat, 4
  %i.aau = getelementptr inbounds nuw i8, ptr %.0440408.i.i, i64 %.idx.i.i ; 2 uses
  %i.aav = load <4 x float>, ptr %i.aau, align 16, !tbaa !316
  store <4 x float> %i.aav, ptr %i.aas, align 16, !tbaa !316
  %i.aaw = getelementptr inbounds nuw i8, ptr %.31407.i.i, i64 32
  %i.aax = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.i.i.1 = shl i64 %i.aax, 4
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aau, i64 %.idx.i.i.1 ; 2 uses
  %i.aaz = load <4 x float>, ptr %i.aay, align 16, !tbaa !316
  store <4 x float> %i.aaz, ptr %i.aaw, align 16, !tbaa !316
  %i.aba = getelementptr inbounds nuw i8, ptr %.31407.i.i, i64 48
  %i.abb = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.i.i.2 = shl i64 %i.abb, 4
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aay, i64 %.idx.i.i.2 ; 2 uses
  %i.abd = load <4 x float>, ptr %i.abc, align 16, !tbaa !316
  store <4 x float> %i.abd, ptr %i.aba, align 16, !tbaa !316
end_hunk_0
begin_hunk_1_@_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined:bb.a
  store <8 x i16> %i.ro, ptr %i.rj, align 16, !tbaa !316
  store <8 x i16> %i.rp, ptr %i.rk, align 16, !tbaa !316
  store <8 x i16> %i.rq, ptr %i.rl, align 16, !tbaa !316
  store <8 x i16> %i.rs, ptr %i.rm, align 16, !tbaa !316
  %i.rt = load i32, ptr %4, align 4, !tbaa !67
  %i.ru = shl nsw i32 %i.rt, 5
  %i.rv = sext i32 %i.ru to i64                   ; 4 uses
  %i.rw = getelementptr inbounds [2 x i8], ptr %i.rj, i64 %i.rv
  %i.rx = getelementptr inbounds [2 x i8], ptr %i.rk, i64 %i.rv
  %i.ry = getelementptr inbounds [2 x i8], ptr %i.rl, i64 %i.rv
  %i.rz = getelementptr inbounds [2 x i8], ptr %i.rm, i64 %i.rv
  %i.sa = add <8 x i16> %i.mj, %i.et
  %i.sb = sub <8 x i16> %i.ev, %i.sa
  %i.sc = add <8 x i16> %i.mj, %i.ip
  %i.sd = sub <8 x i16> %i.mj, %i.ip
  %i.se = add <8 x i16> %i.ip, %i.py
  %i.sf = sub <8 x i16> %i.qa, %i.se
  store <8 x i16> %i.sb, ptr %i.rw, align 16, !tbaa !316
  store <8 x i16> %i.sc, ptr %i.rx, align 16, !tbaa !316
  store <8 x i16> %i.sd, ptr %i.ry, align 16, !tbaa !316
  store <8 x i16> %i.sf, ptr %i.rz, align 16, !tbaa !316
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.sg = load i32, ptr %4, align 4, !tbaa !67    ; 3 uses
  %i.sh = sext i32 %i.sg to i64
  %i.si = icmp slt i64 %indvars.iv.next, %i.sh
  br i1 %i.si, label %.noexc, label %._crit_edge, !llvm.loop !1919

._crit_edge:                                      ; preds = %.thread.3, %.lr.ph.split
  %i.sj = phi i32 [ %i.q, %.lr.ph.split ], [ %i.sg, %.thread.3 ]
  %i.sk = add i32 %.0187, 1
  %exitcond.not = icmp eq i32 %.0187, %i.j
  br i1 %exitcond.not, label %._crit_edge189, label %.lr.ph.split, !llvm.loop !1920

._crit_edge189:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge189, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15) #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 15 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.as

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
  %.not125 = icmp sgt i32 %i.k, %i.j
  br i1 %.not125, label %._crit_edge, label %_ZN4ncnn3MatD2Ev.exit36.lr.ph

_ZN4ncnn3MatD2Ev.exit36.lr.ph:                    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  br label %_ZN4ncnn3MatD2Ev.exit36

_ZN4ncnn3MatD2Ev.exit36:                          ; preds = %_ZN4ncnn3MatD2Ev.exit36.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.0126 = phi i32 [ %i.k, %_ZN4ncnn3MatD2Ev.exit36.lr.ph ], [ %i.bjl, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.ab = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.ac = sdiv i32 %.0126, %i.ab                  ; 2 uses
  %i.ad = srem i32 %.0126, %i.ab                  ; 2 uses
  %i.ae = load i32, ptr %4, align 4, !tbaa !67    ; 2 uses
  %i.af = mul nsw i32 %i.ae, %i.ac                ; 13 uses
  %i.ag = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.ah = mul i32 %i.ag, %i.ad                    ; 30 uses
  %i.ai = load i32, ptr %6, align 4, !tbaa !67
  %i.aj = sub nsw i32 %i.ai, %i.af
  %.sroa.speculated63 = call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.aj) ; 20 uses
  %i.ak = load i32, ptr %7, align 4, !tbaa !67
  %i.al = sub i32 %i.ak, %i.ah
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.al) ; 72 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #12
  %i.am = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1921 ; 2 uses
  %i.an = load ptr, ptr %8, align 8, !tbaa !18, !noalias !1921
  %i.ao = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !1921
  %i.ap = sext i32 %i.ac to i64
  %i.aq = mul i64 %i.ao, %i.ap
  %i.ar = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !1921 ; 3 uses
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.as
  %i.au = load i32, ptr %i.o, align 8, !tbaa !66, !noalias !1921
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !17, !noalias !1921
  %i.aw = sext i32 %i.am to i64                   ; 2 uses
  %i.ax = sext i32 %i.ad to i64
  %i.ay = mul nsw i64 %i.aw, %i.ax
  %i.az = mul i64 %i.ay, %i.ar
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.az
  store ptr %i.ba, ptr %16, align 8, !tbaa !18, !alias.scope !1924
  store ptr null, ptr %i.q, align 8, !tbaa !11, !alias.scope !1924
  store i64 %i.ar, ptr %i.r, align 8, !tbaa !65, !alias.scope !1924
  store i32 %i.au, ptr %i.s, align 8, !tbaa !66, !alias.scope !1924
  store ptr %i.av, ptr %i.t, align 8, !tbaa !17, !alias.scope !1924
  %i.bb = insertelement <4 x i32> <i32 2, i32 poison, i32 1, i32 1>, i32 %i.am, i64 1
  store <4 x i32> %i.bb, ptr %i.u, align 8, !tbaa !67, !alias.scope !1924
  store i32 1, ptr %i.v, align 8, !tbaa !68, !alias.scope !1924
  store i64 %i.aw, ptr %i.w, align 8, !tbaa !20, !alias.scope !1924
  %i.bc = load i32, ptr %10, align 4, !tbaa !67   ; 62 uses
  %i.bd = load i32, ptr %11, align 4, !tbaa !67   ; 5 uses
  %i.be = load i32, ptr %12, align 4, !tbaa !67   ; 33 uses
  %i.bf = load i32, ptr %13, align 4, !tbaa !67   ; 8 uses
  %i.bg = load i32, ptr %14, align 4, !tbaa !67   ; 10 uses
  %i.bh = load i32, ptr %15, align 4, !tbaa !67   ; 8 uses
  %i.bi = invoke noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
          to label %.noexc46 unwind label %bb.at

.noexc46:                                         ; preds = %_ZN4ncnn3MatD2Ev.exit36
  %.not.i45 = icmp eq i32 %i.bi, 0
  br i1 %.not.i45, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc46
  invoke void @_ZN4ncnn46convolution_im2col_input_tile_int8_avxvnniint8ERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef %i.af, i32 noundef %.sroa.speculated63, i32 noundef %i.ah, i32 noundef %.sroa.speculated, i32 noundef %i.bc, i32 noundef %i.bd, i32 noundef %i.be, i32 noundef %i.bf, i32 noundef %i.bg, i32 noundef %i.bh)
          to label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit unwind label %bb.at

bb.d:                                             ; preds = %.noexc46
  %i.bj = invoke noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
          to label %.noexc48 unwind label %bb.at

.noexc48:                                         ; preds = %bb.d
  %.not68.i = icmp eq i32 %i.bj, 0
  br i1 %.not68.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc48
  invoke void @_ZN4ncnn42convolution_im2col_input_tile_int8_avxvnniERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef %i.af, i32 noundef %.sroa.speculated63, i32 noundef %i.ah, i32 noundef %.sroa.speculated, i32 noundef %i.bc, i32 noundef %i.bd, i32 noundef %i.be, i32 noundef %i.bf, i32 noundef %i.bg, i32 noundef %i.bh)
          to label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit unwind label %bb.at

bb.f:                                             ; preds = %.noexc48
  %i.bk = invoke noundef i32 @_ZN4ncnn20cpu_support_x86_avx2Ev()
          to label %.noexc50 unwind label %bb.at

.noexc50:                                         ; preds = %bb.f
  %.not69.i = icmp eq i32 %i.bk, 0
  br i1 %.not69.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc50
  invoke void @_ZN4ncnn39convolution_im2col_input_tile_int8_avx2ERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef %i.af, i32 noundef %.sroa.speculated63, i32 noundef %i.ah, i32 noundef %.sroa.speculated, i32 noundef %i.bc, i32 noundef %i.bd, i32 noundef %i.be, i32 noundef %i.bf, i32 noundef %i.bg, i32 noundef %i.bh)
          to label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit unwind label %bb.at

bb.h:                                             ; preds = %.noexc50
  %i.bl = icmp eq i32 %i.bc, 1
  %i.bm = icmp eq i32 %i.bd, 1
  %or.cond.i = and i1 %i.bl, %i.bm
  %i.bn = icmp eq i32 %i.be, 1
  %or.cond3.i = and i1 %or.cond.i, %i.bn
  %i.bo = icmp eq i32 %i.bf, 1
  %or.cond5.i = and i1 %or.cond3.i, %i.bo
  %i.bp = icmp eq i32 %i.bg, 1                    ; 4 uses
  %i.bq = icmp eq i32 %i.bh, 1
  %i.br = and i1 %or.cond5.i, %i.bq
  %or.cond9.i = and i1 %i.bp, %i.br
  %.val.i = load ptr, ptr %16, align 8, !tbaa !18 ; 7 uses
  %i.bs = load i64, ptr %i.x, align 8, !tbaa !20  ; 61 uses
  br i1 %or.cond9.i, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bt = load i32, ptr %i.z, align 8, !tbaa !66  ; 4 uses
  %i.bu = icmp sgt i32 %.sroa.speculated63, 7
  br i1 %i.bu, label %.lr.ph147.i.i, label %.preheader126.i.i

.lr.ph147.i.i:                                    ; preds = %bb.i
  %i.bv = sdiv i32 %i.ah, 8
  %i.bw = sext i32 %i.bv to i64
  %17 = sdiv i32 %.sroa.speculated, 8
  %i.bx = shl i64 %i.bs, 3
  %i.by = sext i32 %i.ah to i64
  %i.bz = icmp sgt i32 %.sroa.speculated, 1
  %i.ca = shl i64 %i.bs, 1                        ; 3 uses
  %i.cb = and i32 %.sroa.speculated, -2           ; 2 uses
  %i.cc = zext nneg i32 %.sroa.speculated63 to i64 ; 4 uses
  %i.cd = sext i32 %i.af to i64                   ; 2 uses
  switch i32 %i.bt, label %.loopexit128.i.preheader.i [
    i32 8, label %.lr.ph147.i.split.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit270.i.us.i.preheader
  ]

_ZN4ncnn3MatD2Ev.exit270.i.us.i.preheader:        ; preds = %.lr.ph147.i.i
  %i.ce = add i32 %.sroa.speculated, -2           ; 2 uses
  %i.cf = lshr i32 %i.ce, 1                       ; 2 uses
  %i.cg = add nuw i32 %i.cf, 1                    ; 2 uses
  %i.ch = icmp eq i32 %i.cf, 0
  %unroll_iter = and i32 %i.cg, -2
  %i.ci = and i32 %i.ce, 2
  %lcmp.mod.not.not = icmp eq i32 %i.ci, 0
  %lcmp.mod381 = trunc i32 %i.cg to i1
  br label %_ZN4ncnn3MatD2Ev.exit270.i.us.i

.loopexit128.i.preheader.i:                       ; preds = %.lr.ph147.i.i
  %umax232.i = call i64 @llvm.umax.i64(i64 %i.cc, i64 15)
  %i.cj = and i64 %umax232.i, 2147483640
  br label %.preheader126.loopexit.i.i

.lr.ph147.i.split.us.i:                           ; preds = %.lr.ph147.i.i
  %i.ck = icmp sgt i32 %.sroa.speculated, 7
  br i1 %i.ck, label %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i, label %_ZN4ncnn3MatD2Ev.exit271.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit271.i.us.preheader.i:        ; preds = %.lr.ph147.i.split.us.i
  %umax.i = call i64 @llvm.umax.i64(i64 %i.cc, i64 15)
  %i.cl = and i64 %umax.i, 2147483640
  br label %.preheader126.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit271.i.us.us.i:               ; preds = %.lr.ph147.i.split.us.i, %.loopexit128.i.loopexit.us.us.i
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.loopexit128.i.loopexit.us.us.i ], [ 0, %.lr.ph147.i.split.us.i ] ; 2 uses
  %.0233146.i.us.us.i = phi ptr [ %i.dr, %.loopexit128.i.loopexit.us.us.i ], [ %.val.i, %.lr.ph147.i.split.us.i ]
  %i.cm = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1927
  %i.cn = load i64, ptr %i.x, align 8, !tbaa !20, !noalias !1927
  %i.co = mul i64 %i.cn, %i.bw
  %i.cp = load i64, ptr %i.aa, align 8, !tbaa !65, !noalias !1927
  %i.cq = mul i64 %i.co, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cq
  %i.cs = add nsw i64 %indvars.iv.i.us.us.i, %i.cd
  %i.ct = shl nsw i64 %i.cs, 3
  %i.cu = getelementptr inbounds i8, ptr %i.cr, i64 %i.ct
  br label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %.lr.ph.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i
  %.1132.i.us.us.i = phi ptr [ %i.dr, %.lr.ph.i.us.us.i ], [ %.0233146.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i ] ; 5 uses
  %.0244131.i.us.us.i = phi ptr [ %i.ds, %.lr.ph.i.us.us.i ], [ %i.cu, %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i ] ; 5 uses
  %.0245130.i.us.us.i = phi i32 [ %i.dt, %.lr.ph.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i ]
  %i.cv = load <8 x i16>, ptr %.0244131.i.us.us.i, align 1, !tbaa !316 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0244131.i.us.us.i, i64 16
  %i.cx = load <8 x i16>, ptr %i.cw, align 1, !tbaa !316 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0244131.i.us.us.i, i64 32
  %i.cz = load <8 x i16>, ptr %i.cy, align 1, !tbaa !316 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0244131.i.us.us.i, i64 48
  %i.db = load <8 x i16>, ptr %i.da, align 1, !tbaa !316 ; 2 uses
  %i.dc = shufflevector <8 x i16> %i.cv, <8 x i16> %i.cx, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.dd = bitcast <8 x i16> %i.dc to <2 x i64>    ; 2 uses
  %i.de = shufflevector <8 x i16> %i.cv, <8 x i16> %i.cx, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.df = bitcast <8 x i16> %i.de to <2 x i64>    ; 2 uses
  %i.dg = shufflevector <8 x i16> %i.cz, <8 x i16> %i.db, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.dh = bitcast <8 x i16> %i.dg to <2 x i64>    ; 2 uses
  %i.di = shufflevector <8 x i16> %i.cz, <8 x i16> %i.db, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.dj = bitcast <8 x i16> %i.di to <2 x i64>    ; 2 uses
  %i.dk = shufflevector <2 x i64> %i.dd, <2 x i64> %i.dh, <2 x i32> <i32 0, i32 2>
  %i.dl = shufflevector <2 x i64> %i.dd, <2 x i64> %i.dh, <2 x i32> <i32 1, i32 3>
  %i.dm = shufflevector <2 x i64> %i.df, <2 x i64> %i.dj, <2 x i32> <i32 0, i32 2>
  %i.dn = shufflevector <2 x i64> %i.df, <2 x i64> %i.dj, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.dk, ptr %.1132.i.us.us.i, align 16, !tbaa !316
  %i.do = getelementptr inbounds nuw i8, ptr %.1132.i.us.us.i, i64 16
  store <2 x i64> %i.dl, ptr %i.do, align 16, !tbaa !316
  %i.dp = getelementptr inbounds nuw i8, ptr %.1132.i.us.us.i, i64 32
  store <2 x i64> %i.dm, ptr %i.dp, align 16, !tbaa !316
  %i.dq = getelementptr inbounds nuw i8, ptr %.1132.i.us.us.i, i64 48
  store <2 x i64> %i.dn, ptr %i.dq, align 16, !tbaa !316
  %i.dr = getelementptr inbounds nuw i8, ptr %.1132.i.us.us.i, i64 64 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0244131.i.us.us.i, i64 %i.bx
  %i.dt = add nuw nsw i32 %.0245130.i.us.us.i, 1  ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i32 %i.dt, %17
  br i1 %exitcond.not.i.us.us.i, label %.loopexit128.i.loopexit.us.us.i, label %.lr.ph.i.us.us.i, !llvm.loop !1930

.loopexit128.i.loopexit.us.us.i:                  ; preds = %.lr.ph.i.us.us.i
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 8 ; 3 uses
  %i.du = or disjoint i64 %indvars.iv.next.i.us.us.i, 7
  %i.dv = icmp samesign ult i64 %i.du, %i.cc
  br i1 %i.dv, label %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i, label %.preheader126.loopexit.i.i, !llvm.loop !1931

_ZN4ncnn3MatD2Ev.exit270.i.us.i:                  ; preds = %_ZN4ncnn3MatD2Ev.exit270.i.us.i.preheader, %.loopexit128.i.us146.i
  %indvars.iv.i.us144.i = phi i64 [ %indvars.iv.next.i.us148.i, %.loopexit128.i.us146.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit270.i.us.i.preheader ] ; 2 uses
  %.0233146.i.us145.i = phi ptr [ %.5.i.us147.i, %.loopexit128.i.us146.i ], [ %.val.i, %_ZN4ncnn3MatD2Ev.exit270.i.us.i.preheader ] ; 3 uses
  %i.dw = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1932
  %i.dx = load i64, ptr %i.x, align 8, !tbaa !20, !noalias !1932
  %i.dy = mul i64 %i.dx, %i.by
  %i.dz = load i64, ptr %i.aa, align 8, !tbaa !65, !noalias !1932
  %i.ea = mul i64 %i.dy, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.eb, i64 %indvars.iv.i.us144.i
  %i.ed = getelementptr i8, ptr %i.ec, i64 %i.cd  ; 3 uses
  br i1 %i.bz, label %.lr.ph136.i.us.i.preheader, label %.preheader127.i.us.i

.lr.ph136.i.us.i.preheader:                       ; preds = %_ZN4ncnn3MatD2Ev.exit270.i.us.i
  br i1 %i.ch, label %.lr.ph136.i.us.i.epil.preheader, label %.lr.ph136.i.us.i

.lr.ph136.i.us.i:                                 ; preds = %.lr.ph136.i.us.i.preheader, %.lr.ph136.i.us.i
  %.3135.i.us.i = phi ptr [ %i.ew, %.lr.ph136.i.us.i ], [ %.0233146.i.us145.i, %.lr.ph136.i.us.i.preheader ] ; 3 uses
  %.0252134.i.us.i = phi ptr [ %i.ex, %.lr.ph136.i.us.i ], [ %i.ed, %.lr.ph136.i.us.i.preheader ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph136.i.us.i ], [ 0, %.lr.ph136.i.us.i.preheader ]
  %i.ee = load i64, ptr %.0252134.i.us.i, align 1, !tbaa !316
  %i.ef = insertelement <2 x i64> poison, i64 %i.ee, i64 0
  %i.eg = getelementptr inbounds nuw i8, ptr %.0252134.i.us.i, i64 %i.bs
  %i.eh = load i64, ptr %i.eg, align 1, !tbaa !316
  %i.ei = insertelement <2 x i64> poison, i64 %i.eh, i64 0
  %i.ej = bitcast <2 x i64> %i.ef to <16 x i8>
  %i.ek = bitcast <2 x i64> %i.ei to <16 x i8>
  %i.el = shufflevector <16 x i8> %i.ej, <16 x i8> %i.ek, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.el, ptr %.3135.i.us.i, align 1, !tbaa !316
  %i.em = getelementptr inbounds nuw i8, ptr %.3135.i.us.i, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %.0252134.i.us.i, i64 %i.ca ; 3 uses
  %i.eo = load i64, ptr %i.en, align 1, !tbaa !316
  %i.ep = insertelement <2 x i64> poison, i64 %i.eo, i64 0
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.bs
  %i.er = load i64, ptr %i.eq, align 1, !tbaa !316
  %i.es = insertelement <2 x i64> poison, i64 %i.er, i64 0
  %i.et = bitcast <2 x i64> %i.ep to <16 x i8>
  %i.eu = bitcast <2 x i64> %i.es to <16 x i8>
  %i.ev = shufflevector <16 x i8> %i.et, <16 x i8> %i.eu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.ev, ptr %i.em, align 1, !tbaa !316
  %i.ew = getelementptr inbounds nuw i8, ptr %.3135.i.us.i, i64 32 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ca ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader127.i.us.i.loopexit.unr-lcssa, label %.lr.ph136.i.us.i, !llvm.loop !1935

.preheader127.i.us.i.loopexit.unr-lcssa:          ; preds = %.lr.ph136.i.us.i
  br i1 %lcmp.mod.not.not, label %.lr.ph136.i.us.i.epil.preheader, label %.preheader127.i.us.i

.lr.ph136.i.us.i.epil.preheader:                  ; preds = %.preheader127.i.us.i.loopexit.unr-lcssa, %.lr.ph136.i.us.i.preheader
  %.3135.i.us.i.epil.init = phi ptr [ %.0233146.i.us145.i, %.lr.ph136.i.us.i.preheader ], [ %i.ew, %.preheader127.i.us.i.loopexit.unr-lcssa ] ; 2 uses
  %.0252134.i.us.i.epil.init = phi ptr [ %i.ed, %.lr.ph136.i.us.i.preheader ], [ %i.ex, %.preheader127.i.us.i.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod381)
  %i.ey = load i64, ptr %.0252134.i.us.i.epil.init, align 1, !tbaa !316
  %i.ez = insertelement <2 x i64> poison, i64 %i.ey, i64 0
  %i.fa = getelementptr inbounds nuw i8, ptr %.0252134.i.us.i.epil.init, i64 %i.bs
  %i.fb = load i64, ptr %i.fa, align 1, !tbaa !316
  %i.fc = insertelement <2 x i64> poison, i64 %i.fb, i64 0
  %i.fd = bitcast <2 x i64> %i.ez to <16 x i8>
  %i.fe = bitcast <2 x i64> %i.fc to <16 x i8>
  %i.ff = shufflevector <16 x i8> %i.fd, <16 x i8> %i.fe, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.ff, ptr %.3135.i.us.i.epil.init, align 1, !tbaa !316
  %i.fg = getelementptr inbounds nuw i8, ptr %.3135.i.us.i.epil.init, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %.0252134.i.us.i.epil.init, i64 %i.ca
  br label %.preheader127.i.us.i

.preheader127.i.us.i:                             ; preds = %.lr.ph136.i.us.i.epil.preheader, %.preheader127.i.us.i.loopexit.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit270.i.us.i
  %.0254.lcssa.i.us.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit270.i.us.i ], [ %i.cb, %.preheader127.i.us.i.loopexit.unr-lcssa ], [ %i.cb, %.lr.ph136.i.us.i.epil.preheader ] ; 5 uses
  %.0252.lcssa.i.us.i = phi ptr [ %i.ed, %_ZN4ncnn3MatD2Ev.exit270.i.us.i ], [ %i.ex, %.preheader127.i.us.i.loopexit.unr-lcssa ], [ %i.fh, %.lr.ph136.i.us.i.epil.preheader ] ; 2 uses
  %.3.lcssa.i.us.i = phi ptr [ %.0233146.i.us145.i, %_ZN4ncnn3MatD2Ev.exit270.i.us.i ], [ %i.ew, %.preheader127.i.us.i.loopexit.unr-lcssa ], [ %i.fg, %.lr.ph136.i.us.i.epil.preheader ] ; 3 uses
  %i.fi = icmp slt i32 %.0254.lcssa.i.us.i, %.sroa.speculated
  br i1 %i.fi, label %.lr.ph143.i.us.i.preheader, label %.loopexit128.i.us146.i

.lr.ph143.i.us.i.preheader:                       ; preds = %.preheader127.i.us.i
  %i.fj = sub i32 %.sroa.speculated, %.0254.lcssa.i.us.i
  %xtraiter382 = and i32 %i.fj, 7                 ; 2 uses
  %lcmp.mod383.not = icmp eq i32 %xtraiter382, 0
  br i1 %lcmp.mod383.not, label %.lr.ph143.i.us.i.prol.loopexit, label %.lr.ph143.i.us.i.prol

.lr.ph143.i.us.i.prol:                            ; preds = %.lr.ph143.i.us.i.preheader, %.lr.ph143.i.us.i.prol
  %.4142.i.us.i.prol = phi ptr [ %i.fl, %.lr.ph143.i.us.i.prol ], [ %.3.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ] ; 2 uses
  %.1253141.i.us.i.prol = phi ptr [ %i.fm, %.lr.ph143.i.us.i.prol ], [ %.0252.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ] ; 2 uses
  %.1255140.i.us.i.prol = phi i32 [ %i.fn, %.lr.ph143.i.us.i.prol ], [ %.0254.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph143.i.us.i.prol ], [ 0, %.lr.ph143.i.us.i.preheader ]
  %i.fk = load i64, ptr %.1253141.i.us.i.prol, align 1, !tbaa !316
  store i64 %i.fk, ptr %.4142.i.us.i.prol, align 1, !tbaa !316
  %i.fl = getelementptr inbounds nuw i8, ptr %.4142.i.us.i.prol, i64 8 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.1253141.i.us.i.prol, i64 %i.bs ; 2 uses
  %i.fn = add nuw nsw i32 %.1255140.i.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter382
  br i1 %prol.iter.cmp.not, label %.lr.ph143.i.us.i.prol.loopexit, label %.lr.ph143.i.us.i.prol, !llvm.loop !1936

.lr.ph143.i.us.i.prol.loopexit:                   ; preds = %.lr.ph143.i.us.i.prol, %.lr.ph143.i.us.i.preheader
  %.lcssa367.unr = phi ptr [ poison, %.lr.ph143.i.us.i.preheader ], [ %i.fl, %.lr.ph143.i.us.i.prol ]
  %.4142.i.us.i.unr = phi ptr [ %.3.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ], [ %i.fl, %.lr.ph143.i.us.i.prol ]
  %.1253141.i.us.i.unr = phi ptr [ %.0252.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ], [ %i.fm, %.lr.ph143.i.us.i.prol ]
  %.1255140.i.us.i.unr = phi i32 [ %.0254.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ], [ %i.fn, %.lr.ph143.i.us.i.prol ]
  %i.fo = sub i32 %.0254.lcssa.i.us.i, %.sroa.speculated
  %i.fp = icmp ugt i32 %i.fo, -8
  br i1 %i.fp, label %.loopexit128.i.us146.i, label %.lr.ph143.i.us.i

.lr.ph143.i.us.i:                                 ; preds = %.lr.ph143.i.us.i.prol.loopexit, %.lr.ph143.i.us.i
  %.4142.i.us.i = phi ptr [ %i.gm, %.lr.ph143.i.us.i ], [ %.4142.i.us.i.unr, %.lr.ph143.i.us.i.prol.loopexit ] ; 9 uses
  %.1253141.i.us.i = phi ptr [ %i.gn, %.lr.ph143.i.us.i ], [ %.1253141.i.us.i.unr, %.lr.ph143.i.us.i.prol.loopexit ] ; 2 uses
  %.1255140.i.us.i = phi i32 [ %i.go, %.lr.ph143.i.us.i ], [ %.1255140.i.us.i.unr, %.lr.ph143.i.us.i.prol.loopexit ]
  %i.fq = load i64, ptr %.1253141.i.us.i, align 1, !tbaa !316
  store i64 %i.fq, ptr %.4142.i.us.i, align 1, !tbaa !316
  %i.fr = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %.1253141.i.us.i, i64 %i.bs ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 1, !tbaa !316
  store i64 %i.ft, ptr %i.fr, align 1, !tbaa !316
  %i.fu = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.bs ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 1, !tbaa !316
  store i64 %i.fw, ptr %i.fu, align 1, !tbaa !316
  %i.fx = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 24
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.bs ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 1, !tbaa !316
  store i64 %i.fz, ptr %i.fx, align 1, !tbaa !316
  %i.ga = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.bs ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 1, !tbaa !316
  store i64 %i.gc, ptr %i.ga, align 1, !tbaa !316
  %i.gd = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 40
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.bs ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 1, !tbaa !316
  store i64 %i.gf, ptr %i.gd, align 1, !tbaa !316
  %i.gg = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 48
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.bs ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 1, !tbaa !316
  store i64 %i.gi, ptr %i.gg, align 1, !tbaa !316
  %i.gj = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 56
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.bs ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 1, !tbaa !316
  store i64 %i.gl, ptr %i.gj, align 1, !tbaa !316
  %i.gm = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 64 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.bs
  %i.go = add nuw nsw i32 %.1255140.i.us.i, 8     ; 2 uses
  %exitcond228.not.i.us.i.7 = icmp eq i32 %i.go, %.sroa.speculated
  br i1 %exitcond228.not.i.us.i.7, label %.loopexit128.i.us146.i, label %.lr.ph143.i.us.i, !llvm.loop !1937

.loopexit128.i.us146.i:                           ; preds = %.lr.ph143.i.us.i.prol.loopexit, %.lr.ph143.i.us.i, %.preheader127.i.us.i
  %.5.i.us147.i = phi ptr [ %.3.lcssa.i.us.i, %.preheader127.i.us.i ], [ %.lcssa367.unr, %.lr.ph143.i.us.i.prol.loopexit ], [ %i.gm, %.lr.ph143.i.us.i ] ; 2 uses
  %indvars.iv.next.i.us148.i = add nuw nsw i64 %indvars.iv.i.us144.i, 8 ; 3 uses
  %i.gp = or disjoint i64 %indvars.iv.next.i.us148.i, 7
  %i.gq = icmp samesign ult i64 %i.gp, %i.cc
  br i1 %i.gq, label %_ZN4ncnn3MatD2Ev.exit270.i.us.i, label %.preheader126.loopexit.i.i, !llvm.loop !1931

.preheader126.loopexit.i.i:                       ; preds = %.loopexit128.i.us146.i, %.loopexit128.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit271.i.us.preheader.i, %.loopexit128.i.preheader.i
  %.us-phi.i = phi ptr [ %i.dr, %.loopexit128.i.loopexit.us.us.i ], [ %.val.i, %.loopexit128.i.preheader.i ], [ %.val.i, %_ZN4ncnn3MatD2Ev.exit271.i.us.preheader.i ], [ %.5.i.us147.i, %.loopexit128.i.us146.i ]
  %.us-phi142.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.loopexit128.i.loopexit.us.us.i ], [ %i.cj, %.loopexit128.i.preheader.i ], [ %i.cl, %_ZN4ncnn3MatD2Ev.exit271.i.us.preheader.i ], [ %indvars.iv.next.i.us148.i, %.loopexit128.i.us146.i ]
  %i.gr = trunc nuw nsw i64 %.us-phi142.i to i32
  br label %.preheader126.i.i

.preheader126.i.i:                                ; preds = %.preheader126.loopexit.i.i, %bb.i
  %.0240.lcssa.i.i = phi i32 [ 0, %bb.i ], [ %i.gr, %.preheader126.loopexit.i.i ] ; 3 uses
  %.0233.lcssa.i.i = phi ptr [ %.val.i, %bb.i ], [ %.us-phi.i, %.preheader126.loopexit.i.i ] ; 5 uses
  %i.gs = or disjoint i32 %.0240.lcssa.i.i, 3
  %i.gt = icmp slt i32 %i.gs, %.sroa.speculated63
  br i1 %i.gt, label %.lr.ph169.i.i, label %.preheader122.i.i

.lr.ph169.i.i:                                    ; preds = %.preheader126.i.i
  %i.gu = sdiv i32 %i.ah, 8
  %i.gv = sext i32 %i.gu to i64
  %18 = sdiv i32 %.sroa.speculated, 8             ; 3 uses
  %i.gw = shl i64 %i.bs, 3                        ; 2 uses
  %i.gx = sext i32 %i.ah to i64
  %i.gy = icmp sgt i32 %.sroa.speculated, 1
  %i.gz = shl i64 %i.bs, 1
  %i.ha = and i32 %.sroa.speculated, -2
  %i.hb = zext i32 %.0240.lcssa.i.i to i64        ; 6 uses
  %i.hc = sext i32 %.sroa.speculated63 to i64
  %i.hd = sext i32 %i.af to i64                   ; 2 uses
  %invariant.op.i.i = add nsw i64 %i.hc, -3       ; 4 uses
  switch i32 %i.bt, label %.loopexit124.i.preheader.i [
    i32 8, label %.lr.ph169.i.split.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit268.i.us.i.preheader
  ]

_ZN4ncnn3MatD2Ev.exit268.i.us.i.preheader:        ; preds = %.lr.ph169.i.i
  %xtraiter384 = and i32 %.sroa.speculated, 1
  %lcmp.mod385.not = icmp eq i32 %xtraiter384, 0
  br label %_ZN4ncnn3MatD2Ev.exit268.i.us.i

.loopexit124.i.preheader.i:                       ; preds = %.lr.ph169.i.i
  %i.he = add nuw nsw i64 %i.hb, 4                ; 2 uses
  %smax233.i = call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.he)
  %i.hf = xor i64 %i.hb, -1
  %i.hg = add nsw i64 %smax233.i, %i.hf
  %i.hh = and i64 %i.hg, -4
  %i.hi = add i64 %i.he, %i.hh
  br label %.preheader122.loopexit.i.i

.lr.ph169.i.split.us.i:                           ; preds = %.lr.ph169.i.i
  %i.hj = icmp sgt i32 %.sroa.speculated, 7
  br i1 %i.hj, label %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i.preheader, label %_ZN4ncnn3MatD2Ev.exit269.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit269.i.us.us.i.preheader:     ; preds = %.lr.ph169.i.split.us.i
  %xtraiter387 = and i32 %18, 1
  %i.hk = and i32 %.sroa.speculated, 2147483640
  %19 = icmp eq i32 %i.hk, 8
  %unroll_iter391 = and i32 %18, 268435454
  %lcmp.mod388.not = icmp eq i32 %xtraiter387, 0
  %lcmp.mod390 = trunc i32 %18 to i1
  br label %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i

_ZN4ncnn3MatD2Ev.exit269.i.us.preheader.i:        ; preds = %.lr.ph169.i.split.us.i
  %i.hl = add nuw nsw i64 %i.hb, 4                ; 2 uses
  %smax.i = call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.hl)
  %i.hm = xor i64 %i.hb, -1
  %i.hn = add nsw i64 %smax.i, %i.hm
  %i.ho = and i64 %i.hn, -4
  %i.hp = add i64 %i.hl, %i.ho
  br label %.preheader122.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit269.i.us.us.i:               ; preds = %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i.preheader, %.loopexit124.i.loopexit.us.us.i
  %indvars.iv232.i.us.us.i = phi i64 [ %indvars.iv.next233.i.us.us.i, %.loopexit124.i.loopexit.us.us.i ], [ %i.hb, %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i.preheader ] ; 2 uses
  %.6168.i.us.us.i = phi ptr [ %.lcssa372, %.loopexit124.i.loopexit.us.us.i ], [ %.0233.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i.preheader ] ; 2 uses
  %i.hq = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1938
  %i.hr = load i64, ptr %i.x, align 8, !tbaa !20, !noalias !1938
  %i.hs = mul i64 %i.hr, %i.gv
  %i.ht = load i64, ptr %i.aa, align 8, !tbaa !65, !noalias !1938
  %i.hu = mul i64 %i.hs, %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hu
  %i.hw = add nsw i64 %indvars.iv232.i.us.us.i, %i.hd
  %i.hx = shl nsw i64 %i.hw, 3
  %i.hy = getelementptr inbounds i8, ptr %i.hv, i64 %i.hx ; 2 uses
  br i1 %19, label %.lr.ph153.i.us.us.i.epil.preheader, label %.lr.ph153.i.us.us.i

.lr.ph153.i.us.us.i:                              ; preds = %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i, %.lr.ph153.i.us.us.i
  %.7152.i.us.us.i = phi ptr [ %i.in, %.lr.ph153.i.us.us.i ], [ %.6168.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i ] ; 5 uses
  %.0256151.i.us.us.i = phi ptr [ %i.io, %.lr.ph153.i.us.us.i ], [ %i.hy, %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i ] ; 3 uses
  %niter392 = phi i32 [ %niter392.next.1, %.lr.ph153.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i ]
  %i.hz = load <8 x i16>, ptr %.0256151.i.us.us.i, align 1, !tbaa !316 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.0256151.i.us.us.i, i64 16
  %i.ib = load <8 x i16>, ptr %i.ia, align 1, !tbaa !316 ; 2 uses
  %i.ic = shufflevector <8 x i16> %i.hz, <8 x i16> %i.ib, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.id = shufflevector <8 x i16> %i.hz, <8 x i16> %i.ib, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <8 x i16> %i.ic, ptr %.7152.i.us.us.i, align 16, !tbaa !316
  %i.ie = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i, i64 16
  store <8 x i16> %i.id, ptr %i.ie, align 16, !tbaa !316
  %i.if = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i, i64 32
  %i.ig = getelementptr inbounds nuw i8, ptr %.0256151.i.us.us.i, i64 %i.gw ; 3 uses
  %i.ih = load <8 x i16>, ptr %i.ig, align 1, !tbaa !316 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ij = load <8 x i16>, ptr %i.ii, align 1, !tbaa !316 ; 2 uses
  %i.ik = shufflevector <8 x i16> %i.ih, <8 x i16> %i.ij, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.il = shufflevector <8 x i16> %i.ih, <8 x i16> %i.ij, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <8 x i16> %i.ik, ptr %i.if, align 16, !tbaa !316
  %i.im = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i, i64 48
  store <8 x i16> %i.il, ptr %i.im, align 16, !tbaa !316
  %i.in = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i, i64 64 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.gw ; 2 uses
  %niter392.next.1 = add i32 %niter392, 2         ; 2 uses
  %niter392.ncmp.1 = icmp eq i32 %niter392.next.1, %unroll_iter391
  br i1 %niter392.ncmp.1, label %.loopexit124.i.loopexit.us.us.i.unr-lcssa, label %.lr.ph153.i.us.us.i, !llvm.loop !1941

.loopexit124.i.loopexit.us.us.i.unr-lcssa:        ; preds = %.lr.ph153.i.us.us.i
  br i1 %lcmp.mod388.not, label %.loopexit124.i.loopexit.us.us.i, label %.lr.ph153.i.us.us.i.epil.preheader

.lr.ph153.i.us.us.i.epil.preheader:               ; preds = %.loopexit124.i.loopexit.us.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i
  %.7152.i.us.us.i.epil.init = phi ptr [ %.6168.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i ], [ %i.in, %.loopexit124.i.loopexit.us.us.i.unr-lcssa ] ; 3 uses
  %.0256151.i.us.us.i.epil.init = phi ptr [ %i.hy, %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i ], [ %i.io, %.loopexit124.i.loopexit.us.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod390)
  %i.ip = load <8 x i16>, ptr %.0256151.i.us.us.i.epil.init, align 1, !tbaa !316 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.0256151.i.us.us.i.epil.init, i64 16
  %i.ir = load <8 x i16>, ptr %i.iq, align 1, !tbaa !316 ; 2 uses
  %i.is = shufflevector <8 x i16> %i.ip, <8 x i16> %i.ir, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.it = shufflevector <8 x i16> %i.ip, <8 x i16> %i.ir, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <8 x i16> %i.is, ptr %.7152.i.us.us.i.epil.init, align 16, !tbaa !316
  %i.iu = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i.epil.init, i64 16
  store <8 x i16> %i.it, ptr %i.iu, align 16, !tbaa !316
  %i.iv = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i.epil.init, i64 32
  br label %.loopexit124.i.loopexit.us.us.i

.loopexit124.i.loopexit.us.us.i:                  ; preds = %.loopexit124.i.loopexit.us.us.i.unr-lcssa, %.lr.ph153.i.us.us.i.epil.preheader
  %.lcssa372 = phi ptr [ %i.in, %.loopexit124.i.loopexit.us.us.i.unr-lcssa ], [ %i.iv, %.lr.ph153.i.us.us.i.epil.preheader ] ; 2 uses
  %indvars.iv.next233.i.us.us.i = add nuw nsw i64 %indvars.iv232.i.us.us.i, 4 ; 3 uses
  %i.iw = icmp slt i64 %indvars.iv.next233.i.us.us.i, %invariant.op.i.i
  br i1 %i.iw, label %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i, label %.preheader122.loopexit.i.i, !llvm.loop !1942

_ZN4ncnn3MatD2Ev.exit268.i.us.i:                  ; preds = %_ZN4ncnn3MatD2Ev.exit268.i.us.i.preheader, %.loopexit124.i.us160.i
  %indvars.iv232.i.us158.i = phi i64 [ %indvars.iv.next233.i.us162.i, %.loopexit124.i.us160.i ], [ %i.hb, %_ZN4ncnn3MatD2Ev.exit268.i.us.i.preheader ] ; 2 uses
  %.6168.i.us159.i = phi ptr [ %.11.i.us161.i, %.loopexit124.i.us160.i ], [ %.0233.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit268.i.us.i.preheader ] ; 2 uses
  %i.ix = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1943
  %i.iy = load i64, ptr %i.x, align 8, !tbaa !20, !noalias !1943
  %i.iz = mul i64 %i.iy, %i.gx
  %i.ja = load i64, ptr %i.aa, align 8, !tbaa !65, !noalias !1943
  %i.jb = mul i64 %i.iz, %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.jb
  %i.jd = getelementptr i8, ptr %i.jc, i64 %indvars.iv232.i.us158.i
  %i.je = getelementptr i8, ptr %i.jd, i64 %i.hd  ; 2 uses
  br i1 %i.gy, label %.lr.ph158.i.us.i, label %.preheader123.i.us.i

.lr.ph158.i.us.i:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit268.i.us.i, %.lr.ph158.i.us.i
  %.9157.i.us.i = phi ptr [ %i.kb, %.lr.ph158.i.us.i ], [ %.6168.i.us159.i, %_ZN4ncnn3MatD2Ev.exit268.i.us.i ] ; 9 uses
  %.0248156.i.us.i = phi i32 [ %i.kd, %.lr.ph158.i.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit268.i.us.i ]
  %.0250155.i.us.i = phi ptr [ %i.kc, %.lr.ph158.i.us.i ], [ %i.je, %_ZN4ncnn3MatD2Ev.exit268.i.us.i ] ; 6 uses
  %i.jf = load i8, ptr %.0250155.i.us.i, align 1, !tbaa !316
  store i8 %i.jf, ptr %.9157.i.us.i, align 1, !tbaa !316
  %i.jg = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 %i.bs ; 4 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !316
  %i.ji = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 1
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !316
  %i.jj = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 1
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !316
  %i.jl = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 2
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !316
  %i.jm = getelementptr i8, ptr %i.jg, i64 1
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !316
  %i.jo = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 3
  store i8 %i.jn, ptr %i.jo, align 1, !tbaa !316
  %i.jp = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 2
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !316
  %i.jr = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 4
  store i8 %i.jq, ptr %i.jr, align 1, !tbaa !316
  %i.js = getelementptr i8, ptr %i.jg, i64 2
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !316
  %i.ju = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 5
  store i8 %i.jt, ptr %i.ju, align 1, !tbaa !316
  %i.jv = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 3
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !316
  %i.jx = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 6
  store i8 %i.jw, ptr %i.jx, align 1, !tbaa !316
  %i.jy = getelementptr i8, ptr %i.jg, i64 3
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !316
  %i.ka = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 7
  store i8 %i.jz, ptr %i.ka, align 1, !tbaa !316
  %i.kb = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 8 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 %i.gz ; 2 uses
  %i.kd = add nuw nsw i32 %.0248156.i.us.i, 2     ; 2 uses
  %i.ke = or disjoint i32 %i.kd, 1
  %i.kf = icmp slt i32 %i.ke, %.sroa.speculated
  br i1 %i.kf, label %.lr.ph158.i.us.i, label %.preheader123.i.us.i, !llvm.loop !1946

.preheader123.i.us.i:                             ; preds = %.lr.ph158.i.us.i, %_ZN4ncnn3MatD2Ev.exit268.i.us.i
  %.0250.lcssa.i.us.i = phi ptr [ %i.je, %_ZN4ncnn3MatD2Ev.exit268.i.us.i ], [ %i.kc, %.lr.ph158.i.us.i ] ; 6 uses
  %.0248.lcssa.i.us.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit268.i.us.i ], [ %i.ha, %.lr.ph158.i.us.i ] ; 4 uses
  %.9.lcssa.i.us.i = phi ptr [ %.6168.i.us159.i, %_ZN4ncnn3MatD2Ev.exit268.i.us.i ], [ %i.kb, %.lr.ph158.i.us.i ] ; 7 uses
  %i.kg = icmp slt i32 %.0248.lcssa.i.us.i, %.sroa.speculated
  br i1 %i.kg, label %.lr.ph165.i.us.i.preheader, label %.loopexit124.i.us160.i

.lr.ph165.i.us.i.preheader:                       ; preds = %.preheader123.i.us.i
  %.neg = or disjoint i32 %.0248.lcssa.i.us.i, 1
  br i1 %lcmp.mod385.not, label %.lr.ph165.i.us.i.prol.loopexit, label %.lr.ph165.i.us.i.prol

.lr.ph165.i.us.i.prol:                            ; preds = %.lr.ph165.i.us.i.preheader
  %i.kh = load i8, ptr %.0250.lcssa.i.us.i, align 1, !tbaa !316
  store i8 %i.kh, ptr %.9.lcssa.i.us.i, align 1, !tbaa !316
  %i.ki = getelementptr inbounds nuw i8, ptr %.0250.lcssa.i.us.i, i64 1
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !316
  %i.kk = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.i, i64 1
  store i8 %i.kj, ptr %i.kk, align 1, !tbaa !316
  %i.kl = getelementptr inbounds nuw i8, ptr %.0250.lcssa.i.us.i, i64 2
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !316
  %i.kn = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.i, i64 2
  store i8 %i.km, ptr %i.kn, align 1, !tbaa !316
  %i.ko = getelementptr inbounds nuw i8, ptr %.0250.lcssa.i.us.i, i64 3
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !316
  %i.kq = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.i, i64 3
  store i8 %i.kp, ptr %i.kq, align 1, !tbaa !316
  %i.kr = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.i, i64 4 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.0250.lcssa.i.us.i, i64 %i.bs
  %i.kt = or disjoint i32 %.0248.lcssa.i.us.i, 1
  br label %.lr.ph165.i.us.i.prol.loopexit

.lr.ph165.i.us.i.prol.loopexit:                   ; preds = %.lr.ph165.i.us.i.prol, %.lr.ph165.i.us.i.preheader
  %.lcssa371.unr = phi ptr [ poison, %.lr.ph165.i.us.i.preheader ], [ %i.kr, %.lr.ph165.i.us.i.prol ]
  %.10164.i.us.i.unr = phi ptr [ %.9.lcssa.i.us.i, %.lr.ph165.i.us.i.preheader ], [ %i.kr, %.lr.ph165.i.us.i.prol ]
  %.1249163.i.us.i.unr = phi i32 [ %.0248.lcssa.i.us.i, %.lr.ph165.i.us.i.preheader ], [ %i.kt, %.lr.ph165.i.us.i.prol ]
  %.1251162.i.us.i.unr = phi ptr [ %.0250.lcssa.i.us.i, %.lr.ph165.i.us.i.preheader ], [ %i.ks, %.lr.ph165.i.us.i.prol ]
  %i.ku = icmp eq i32 %.sroa.speculated, %.neg
  br i1 %i.ku, label %.loopexit124.i.us160.i, label %.lr.ph165.i.us.i

.lr.ph165.i.us.i:                                 ; preds = %.lr.ph165.i.us.i.prol.loopexit, %.lr.ph165.i.us.i
  %.10164.i.us.i = phi ptr [ %i.lr, %.lr.ph165.i.us.i ], [ %.10164.i.us.i.unr, %.lr.ph165.i.us.i.prol.loopexit ] ; 9 uses
  %.1249163.i.us.i = phi i32 [ %i.lt, %.lr.ph165.i.us.i ], [ %.1249163.i.us.i.unr, %.lr.ph165.i.us.i.prol.loopexit ]
  %.1251162.i.us.i = phi ptr [ %i.ls, %.lr.ph165.i.us.i ], [ %.1251162.i.us.i.unr, %.lr.ph165.i.us.i.prol.loopexit ] ; 5 uses
  %i.kv = load i8, ptr %.1251162.i.us.i, align 1, !tbaa !316
  store i8 %i.kv, ptr %.10164.i.us.i, align 1, !tbaa !316
  %i.kw = getelementptr inbounds nuw i8, ptr %.1251162.i.us.i, i64 1
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !316
  %i.ky = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 1
  store i8 %i.kx, ptr %i.ky, align 1, !tbaa !316
  %i.kz = getelementptr inbounds nuw i8, ptr %.1251162.i.us.i, i64 2
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !316
  %i.lb = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 2
  store i8 %i.la, ptr %i.lb, align 1, !tbaa !316
  %i.lc = getelementptr inbounds nuw i8, ptr %.1251162.i.us.i, i64 3
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !316
  %i.le = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 3
  store i8 %i.ld, ptr %i.le, align 1, !tbaa !316
  %i.lf = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 4
  %i.lg = getelementptr inbounds nuw i8, ptr %.1251162.i.us.i, i64 %i.bs ; 5 uses
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !316
  store i8 %i.lh, ptr %i.lf, align 1, !tbaa !316
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 1
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !316
  %i.lk = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 5
  store i8 %i.lj, ptr %i.lk, align 1, !tbaa !316
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lg, i64 2
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !316
  %i.ln = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 6
  store i8 %i.lm, ptr %i.ln, align 1, !tbaa !316
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 3
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !316
  %i.lq = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 7
  store i8 %i.lp, ptr %i.lq, align 1, !tbaa !316
  %i.lr = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 8 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.bs
  %i.lt = add nuw nsw i32 %.1249163.i.us.i, 2     ; 2 uses
  %exitcond231.not.i.us.i.1 = icmp eq i32 %i.lt, %.sroa.speculated
  br i1 %exitcond231.not.i.us.i.1, label %.loopexit124.i.us160.i, label %.lr.ph165.i.us.i, !llvm.loop !1947

.loopexit124.i.us160.i:                           ; preds = %.lr.ph165.i.us.i.prol.loopexit, %.lr.ph165.i.us.i, %.preheader123.i.us.i
  %.11.i.us161.i = phi ptr [ %.9.lcssa.i.us.i, %.preheader123.i.us.i ], [ %.lcssa371.unr, %.lr.ph165.i.us.i.prol.loopexit ], [ %i.lr, %.lr.ph165.i.us.i ] ; 2 uses
  %indvars.iv.next233.i.us162.i = add nuw nsw i64 %indvars.iv232.i.us158.i, 4 ; 3 uses
  %i.lu = icmp slt i64 %indvars.iv.next233.i.us162.i, %invariant.op.i.i
  br i1 %i.lu, label %_ZN4ncnn3MatD2Ev.exit268.i.us.i, label %.preheader122.loopexit.i.i, !llvm.loop !1942

.preheader122.loopexit.i.i:                       ; preds = %.loopexit124.i.us160.i, %.loopexit124.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit269.i.us.preheader.i, %.loopexit124.i.preheader.i
  %.us-phi155.i = phi ptr [ %.lcssa372, %.loopexit124.i.loopexit.us.us.i ], [ %.0233.lcssa.i.i, %.loopexit124.i.preheader.i ], [ %.0233.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit269.i.us.preheader.i ], [ %.11.i.us161.i, %.loopexit124.i.us160.i ]
  %.us-phi156.i = phi i64 [ %indvars.iv.next233.i.us.us.i, %.loopexit124.i.loopexit.us.us.i ], [ %i.hi, %.loopexit124.i.preheader.i ], [ %i.hp, %_ZN4ncnn3MatD2Ev.exit269.i.us.preheader.i ], [ %indvars.iv.next233.i.us162.i, %.loopexit124.i.us160.i ]
  %i.lv = trunc nuw nsw i64 %.us-phi156.i to i32
  br label %.preheader122.i.i

.preheader122.i.i:                                ; preds = %.preheader122.loopexit.i.i, %.preheader126.i.i
  %.1241.lcssa.i.i = phi i32 [ %.0240.lcssa.i.i, %.preheader126.i.i ], [ %i.lv, %.preheader122.loopexit.i.i ] ; 3 uses
  %.6.lcssa.i.i = phi ptr [ %.0233.lcssa.i.i, %.preheader126.i.i ], [ %.us-phi155.i, %.preheader122.loopexit.i.i ] ; 2 uses
  %i.lw = or disjoint i32 %.1241.lcssa.i.i, 1
  %i.lx = icmp slt i32 %i.lw, %.sroa.speculated63
  br i1 %i.lx, label %.lr.ph191.i.i, label %.preheader.i.i

.lr.ph191.i.i:                                    ; preds = %.preheader122.i.i
  %i.ly = sdiv i32 %i.ah, 8
  %i.lz = sext i32 %i.ly to i64
  %20 = sdiv i32 %.sroa.speculated, 8             ; 3 uses
  %i.ma = icmp sgt i32 %.sroa.speculated, 7
  %i.mb = shl i64 %i.bs, 3                        ; 2 uses
  %i.mc = sext i32 %i.ah to i64
  %i.md = icmp sgt i32 %.sroa.speculated, 1
  %i.me = shl i64 %i.bs, 1                        ; 3 uses
  %i.mf = and i32 %.sroa.speculated, -2           ; 2 uses
  %i.mg = zext nneg i32 %.1241.lcssa.i.i to i64
  %i.mh = sext i32 %.sroa.speculated63 to i64
  %i.mi = sext i32 %i.af to i64                   ; 2 uses
  %invariant.op277.i.i = add nsw i64 %i.mh, -1
  %i.mj = add i32 %.sroa.speculated, -2           ; 2 uses
  %i.mk = lshr i32 %i.mj, 1                       ; 2 uses
  %i.ml = add nuw i32 %i.mk, 1                    ; 2 uses
  %i.mm = icmp eq i32 %i.mk, 0
  %unroll_iter398 = and i32 %i.ml, -2
  %i.mn = and i32 %i.mj, 2
  %lcmp.mod394.not.not = icmp eq i32 %i.mn, 0
  %lcmp.mod397 = trunc i32 %i.ml to i1
  %xtraiter403 = and i32 %20, 1
  %i.mo = and i32 %.sroa.speculated, 2147483640
  %21 = icmp eq i32 %i.mo, 8
  %unroll_iter407 = and i32 %20, 268435454
  %lcmp.mod404.not = icmp eq i32 %xtraiter403, 0
  %lcmp.mod406 = trunc i32 %20 to i1
  br label %bb.k

.preheader.loopexit.i.i:                          ; preds = %.loopexit120.i.i
  %i.mp = trunc nsw i64 %indvars.iv.next238.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %.preheader122.i.i
  %.2242.lcssa.i.i = phi i32 [ %.1241.lcssa.i.i, %.preheader122.i.i ], [ %i.mp, %.preheader.loopexit.i.i ] ; 3 uses
  %.12.lcssa.i.i = phi ptr [ %.6.lcssa.i.i, %.preheader122.i.i ], [ %.17.i.i, %.preheader.loopexit.i.i ] ; 2 uses
  %i.mq = icmp slt i32 %.2242.lcssa.i.i, %.sroa.speculated63
  br i1 %i.mq, label %.lr.ph206.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

.lr.ph206.i.i:                                    ; preds = %.preheader.i.i
  %i.mr = sdiv i32 %i.ah, 8
  %i.ms = sext i32 %i.mr to i64
  %i.mt = sdiv i32 %.sroa.speculated, 8           ; 3 uses
  %i.mu = shl i64 %i.bs, 3                        ; 9 uses
  %i.mv = sext i32 %i.ah to i64
  switch i32 %i.bt, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit [
    i32 8, label %.lr.ph206.split.us.split.i.i
    i32 1, label %.lr.ph206.split.split.i.i
  ]

.lr.ph206.split.us.split.i.i:                     ; preds = %.lr.ph206.i.i
  %i.mw = icmp sgt i32 %.sroa.speculated, 7
  br i1 %i.mw, label %_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i:        ; preds = %.lr.ph206.split.us.split.i.i
  %i.mx = sext i32 %.2242.lcssa.i.i to i64
  %i.my = sext i32 %i.af to i64
  %wide.trip.count249.i.i = sext i32 %.sroa.speculated63 to i64
  %i.mz = add nsw i32 %i.mt, -1
  %xtraiter416 = and i32 %i.mt, 7                 ; 3 uses
  %i.na = icmp ult i32 %i.mz, 7
  %unroll_iter421 = and i32 %i.mt, 268435448
  %lcmp.mod418.not = icmp eq i32 %xtraiter416, 0
  %lcmp.mod420 = icmp ne i32 %xtraiter416, 0
  br label %_ZN4ncnn3MatD2Ev.exit265.us.i.i

_ZN4ncnn3MatD2Ev.exit265.us.i.i:                  ; preds = %..loopexit118_crit_edge.us.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i
  %indvars.iv246.i.i = phi i64 [ %i.mx, %_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i ], [ %indvars.iv.next247.i.i, %..loopexit118_crit_edge.us.i.i ] ; 2 uses
  %.18205.us.i.i = phi ptr [ %.12.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.preheader.i.i ], [ %.lcssa378, %..loopexit118_crit_edge.us.i.i ] ; 2 uses
  %i.nb = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1948
  %i.nc = load i64, ptr %i.x, align 8, !tbaa !20, !noalias !1948
  %i.nd = mul i64 %i.nc, %i.ms
  %i.ne = load i64, ptr %i.aa, align 8, !tbaa !65, !noalias !1948
  %i.nf = mul i64 %i.nd, %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.nf
  %i.nh = add nsw i64 %indvars.iv246.i.i, %i.my
  %i.ni = shl nsw i64 %i.nh, 3
  %i.nj = getelementptr inbounds i8, ptr %i.ng, i64 %i.ni ; 2 uses
  br i1 %i.na, label %.epil.preheader415, label %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new

_ZN4ncnn3MatD2Ev.exit265.us.i.i.new:              ; preds = %_ZN4ncnn3MatD2Ev.exit265.us.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new
  %.19196.us.i.i = phi ptr [ %i.og, %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new ], [ %.18205.us.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ] ; 9 uses
  %.0235194.us.i.i = phi ptr [ %i.oh, %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new ], [ %i.nj, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ] ; 2 uses
  %niter422 = phi i32 [ %niter422.next.7, %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ]
  %i.nk = load i64, ptr %.0235194.us.i.i, align 1, !tbaa !316
  store i64 %i.nk, ptr %.19196.us.i.i, align 1, !tbaa !316
  %i.nl = getelementptr inbounds nuw i8, ptr %.19196.us.i.i, i64 8
  %i.nm = getelementptr inbounds nuw i8, ptr %.0235194.us.i.i, i64 %i.mu ; 2 uses
  %i.nn = load i64, ptr %i.nm, align 1, !tbaa !316
  store i64 %i.nn, ptr %i.nl, align 1, !tbaa !316
  %i.no = getelementptr inbounds nuw i8, ptr %.19196.us.i.i, i64 16
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.mu ; 2 uses
  %i.nq = load i64, ptr %i.np, align 1, !tbaa !316
  store i64 %i.nq, ptr %i.no, align 1, !tbaa !316
  %i.nr = getelementptr inbounds nuw i8, ptr %.19196.us.i.i, i64 24
  %i.ns = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.mu ; 2 uses
  %i.nt = load i64, ptr %i.ns, align 1, !tbaa !316
  store i64 %i.nt, ptr %i.nr, align 1, !tbaa !316
  %i.nu = getelementptr inbounds nuw i8, ptr %.19196.us.i.i, i64 32
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.mu ; 2 uses
  %i.nw = load i64, ptr %i.nv, align 1, !tbaa !316
  store i64 %i.nw, ptr %i.nu, align 1, !tbaa !316
  %i.nx = getelementptr inbounds nuw i8, ptr %.19196.us.i.i, i64 40
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.mu ; 2 uses
  %i.nz = load i64, ptr %i.ny, align 1, !tbaa !316
  store i64 %i.nz, ptr %i.nx, align 1, !tbaa !316
  %i.oa = getelementptr inbounds nuw i8, ptr %.19196.us.i.i, i64 48
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ny, i64 %i.mu ; 2 uses
  %i.oc = load i64, ptr %i.ob, align 1, !tbaa !316
  store i64 %i.oc, ptr %i.oa, align 1, !tbaa !316
  %i.od = getelementptr inbounds nuw i8, ptr %.19196.us.i.i, i64 56
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.mu ; 2 uses
  %i.of = load i64, ptr %i.oe, align 1, !tbaa !316
  store i64 %i.of, ptr %i.od, align 1, !tbaa !316
  %i.og = getelementptr inbounds nuw i8, ptr %.19196.us.i.i, i64 64 ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.mu ; 2 uses
  %niter422.next.7 = add i32 %niter422, 8         ; 2 uses
  %niter422.ncmp.7 = icmp eq i32 %niter422.next.7, %unroll_iter421
  br i1 %niter422.ncmp.7, label %..loopexit118_crit_edge.us.i.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new, !llvm.loop !1951

..loopexit118_crit_edge.us.i.i.unr-lcssa:         ; preds = %_ZN4ncnn3MatD2Ev.exit265.us.i.i.new
  br i1 %lcmp.mod418.not, label %..loopexit118_crit_edge.us.i.i, label %.epil.preheader415

.epil.preheader415:                               ; preds = %..loopexit118_crit_edge.us.i.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit265.us.i.i
  %.19196.us.i.i.epil.init = phi ptr [ %.18205.us.i.i, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ], [ %i.og, %..loopexit118_crit_edge.us.i.i.unr-lcssa ]
  %.0235194.us.i.i.epil.init = phi ptr [ %i.nj, %_ZN4ncnn3MatD2Ev.exit265.us.i.i ], [ %i.oh, %..loopexit118_crit_edge.us.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod420)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader415
  %.19196.us.i.i.epil = phi ptr [ %.19196.us.i.i.epil.init, %.epil.preheader415 ], [ %i.oj, %bb.j ] ; 2 uses
  %.0235194.us.i.i.epil = phi ptr [ %.0235194.us.i.i.epil.init, %.epil.preheader415 ], [ %i.ok, %bb.j ] ; 2 uses
  %epil.iter417 = phi i32 [ 0, %.epil.preheader415 ], [ %epil.iter417.next, %bb.j ]
  %i.oi = load i64, ptr %.0235194.us.i.i.epil, align 1, !tbaa !316
  store i64 %i.oi, ptr %.19196.us.i.i.epil, align 1, !tbaa !316
  %i.oj = getelementptr inbounds nuw i8, ptr %.19196.us.i.i.epil, i64 8 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.0235194.us.i.i.epil, i64 %i.mu
  %epil.iter417.next = add i32 %epil.iter417, 1   ; 2 uses
  %epil.iter417.cmp.not = icmp eq i32 %epil.iter417.next, %xtraiter416
  br i1 %epil.iter417.cmp.not, label %..loopexit118_crit_edge.us.i.i, label %bb.j, !llvm.loop !1952

..loopexit118_crit_edge.us.i.i:                   ; preds = %bb.j, %..loopexit118_crit_edge.us.i.i.unr-lcssa
  %.lcssa378 = phi ptr [ %i.og, %..loopexit118_crit_edge.us.i.i.unr-lcssa ], [ %i.oj, %bb.j ]
  %indvars.iv.next247.i.i = add nsw i64 %indvars.iv246.i.i, 1 ; 2 uses
  %exitcond250.not.i.i = icmp eq i64 %indvars.iv.next247.i.i, %wide.trip.count249.i.i
  br i1 %exitcond250.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %_ZN4ncnn3MatD2Ev.exit265.us.i.i, !llvm.loop !1953

.lr.ph206.split.split.i.i:                        ; preds = %.lr.ph206.i.i
  %i.ol = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.ol, label %_ZN4ncnn3MatD2Ev.exit.preheader.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

_ZN4ncnn3MatD2Ev.exit.preheader.i.i:              ; preds = %.lr.ph206.split.split.i.i
  %i.om = sext i32 %.2242.lcssa.i.i to i64
  %i.on = sext i32 %i.af to i64
  %wide.trip.count.i.i = sext i32 %.sroa.speculated63 to i64
  %i.oo = add nsw i32 %.sroa.speculated, -1
  %xtraiter409 = and i32 %.sroa.speculated, 7     ; 3 uses
  %i.op = icmp ult i32 %i.oo, 7
  %unroll_iter413 = and i32 %.sroa.speculated, 2147483640
  %lcmp.mod410.not = icmp eq i32 %xtraiter409, 0
  %lcmp.mod412 = icmp ne i32 %xtraiter409, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i.i

bb.k:                                             ; preds = %.loopexit120.i.i, %.lr.ph191.i.i
  %indvars.iv237.i.i = phi i64 [ %i.mg, %.lr.ph191.i.i ], [ %indvars.iv.next238.i.i, %.loopexit120.i.i ] ; 3 uses
  %.12190.i.i = phi ptr [ %.6.lcssa.i.i, %.lr.ph191.i.i ], [ %.17.i.i, %.loopexit120.i.i ] ; 7 uses
  switch i32 %i.bt, label %.loopexit120.i.i [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit267.i.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit266.i.i
  ]

_ZN4ncnn3MatD2Ev.exit267.i.i:                     ; preds = %bb.k
  br i1 %i.ma, label %.lr.ph175.preheader.i.i, label %.loopexit120.i.i

.lr.ph175.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit267.i.i
  %i.oq = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1954
  %i.or = load i64, ptr %i.x, align 8, !tbaa !20, !noalias !1954
  %i.os = mul i64 %i.or, %i.lz
  %i.ot = load i64, ptr %i.aa, align 8, !tbaa !65, !noalias !1954
  %i.ou = mul i64 %i.os, %i.ot
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.ou
  %i.ow = add nsw i64 %indvars.iv237.i.i, %i.mi
  %i.ox = shl nsw i64 %i.ow, 3
  %i.oy = getelementptr inbounds i8, ptr %i.ov, i64 %i.ox ; 2 uses
  br i1 %21, label %.lr.ph175.i.i.epil.preheader, label %.lr.ph175.i.i

.lr.ph175.i.i:                                    ; preds = %.lr.ph175.preheader.i.i, %.lr.ph175.i.i
  %.13174.i.i = phi ptr [ %i.pr, %.lr.ph175.i.i ], [ %.12190.i.i, %.lr.ph175.preheader.i.i ] ; 3 uses
  %.0247172.i.i = phi ptr [ %i.ps, %.lr.ph175.i.i ], [ %i.oy, %.lr.ph175.preheader.i.i ] ; 3 uses
  %niter408 = phi i32 [ %niter408.next.1, %.lr.ph175.i.i ], [ 0, %.lr.ph175.preheader.i.i ]
  %i.oz = load i64, ptr %.0247172.i.i, align 1, !tbaa !316
  %i.pa = insertelement <2 x i64> poison, i64 %i.oz, i64 0
  %i.pb = getelementptr inbounds nuw i8, ptr %.0247172.i.i, i64 8
  %i.pc = load i64, ptr %i.pb, align 1, !tbaa !316
  %i.pd = insertelement <2 x i64> poison, i64 %i.pc, i64 0
  %i.pe = bitcast <2 x i64> %i.pa to <8 x i16>
  %i.pf = bitcast <2 x i64> %i.pd to <8 x i16>
  %i.pg = shufflevector <8 x i16> %i.pe, <8 x i16> %i.pf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.pg, ptr %.13174.i.i, align 1, !tbaa !316
  %i.ph = getelementptr inbounds nuw i8, ptr %.13174.i.i, i64 16
  %i.pi = getelementptr inbounds nuw i8, ptr %.0247172.i.i, i64 %i.mb ; 3 uses
  %i.pj = load i64, ptr %i.pi, align 1, !tbaa !316
  %i.pk = insertelement <2 x i64> poison, i64 %i.pj, i64 0
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.pm = load i64, ptr %i.pl, align 1, !tbaa !316
  %i.pn = insertelement <2 x i64> poison, i64 %i.pm, i64 0
  %i.po = bitcast <2 x i64> %i.pk to <8 x i16>
  %i.pp = bitcast <2 x i64> %i.pn to <8 x i16>
  %i.pq = shufflevector <8 x i16> %i.po, <8 x i16> %i.pp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.pq, ptr %i.ph, align 1, !tbaa !316
  %i.pr = getelementptr inbounds nuw i8, ptr %.13174.i.i, i64 32 ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pi, i64 %i.mb ; 2 uses
  %niter408.next.1 = add i32 %niter408, 2         ; 2 uses
  %niter408.ncmp.1 = icmp eq i32 %niter408.next.1, %unroll_iter407
  br i1 %niter408.ncmp.1, label %.loopexit120.i.i.loopexit.unr-lcssa, label %.lr.ph175.i.i, !llvm.loop !1957

_ZN4ncnn3MatD2Ev.exit266.i.i:                     ; preds = %bb.k
  %i.pt = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1958
  %i.pu = load i64, ptr %i.x, align 8, !tbaa !20, !noalias !1958
  %i.pv = mul i64 %i.pu, %i.mc
  %i.pw = load i64, ptr %i.aa, align 8, !tbaa !65, !noalias !1958
  %i.px = mul i64 %i.pv, %i.pw
  %i.py = getelementptr inbounds nuw i8, ptr %i.pt, i64 %i.px
  %i.pz = getelementptr i8, ptr %i.py, i64 %indvars.iv237.i.i
  %i.qa = getelementptr i8, ptr %i.pz, i64 %i.mi  ; 3 uses
  br i1 %i.md, label %.lr.ph180.i.i.preheader, label %.preheader119.i.i

.lr.ph180.i.i.preheader:                          ; preds = %_ZN4ncnn3MatD2Ev.exit266.i.i
  br i1 %i.mm, label %.lr.ph180.i.i.epil.preheader, label %.lr.ph180.i.i

.preheader119.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph180.i.i
  br i1 %lcmp.mod394.not.not, label %.lr.ph180.i.i.epil.preheader, label %.preheader119.i.i

.lr.ph180.i.i.epil.preheader:                     ; preds = %.preheader119.i.i.loopexit.unr-lcssa, %.lr.ph180.i.i.preheader
  %.15179.i.i.epil.init = phi ptr [ %.12190.i.i, %.lr.ph180.i.i.preheader ], [ %i.ru, %.preheader119.i.i.loopexit.unr-lcssa ] ; 5 uses
  %.0238177.i.i.epil.init = phi ptr [ %i.qa, %.lr.ph180.i.i.preheader ], [ %i.rv, %.preheader119.i.i.loopexit.unr-lcssa ] ; 4 uses
  call void @llvm.assume(i1 %lcmp.mod397)
  %i.qb = load i8, ptr %.0238177.i.i.epil.init, align 1, !tbaa !316
  store i8 %i.qb, ptr %.15179.i.i.epil.init, align 1, !tbaa !316
  %i.qc = getelementptr inbounds nuw i8, ptr %.0238177.i.i.epil.init, i64 %i.bs ; 2 uses
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !316
  %i.qe = getelementptr inbounds nuw i8, ptr %.15179.i.i.epil.init, i64 1
  store i8 %i.qd, ptr %i.qe, align 1, !tbaa !316
  %i.qf = getelementptr inbounds nuw i8, ptr %.0238177.i.i.epil.init, i64 1
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !316
  %i.qh = getelementptr inbounds nuw i8, ptr %.15179.i.i.epil.init, i64 2
  store i8 %i.qg, ptr %i.qh, align 1, !tbaa !316
  %i.qi = getelementptr i8, ptr %i.qc, i64 1
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !316
  %i.qk = getelementptr inbounds nuw i8, ptr %.15179.i.i.epil.init, i64 3
  store i8 %i.qj, ptr %i.qk, align 1, !tbaa !316
  %i.ql = getelementptr inbounds nuw i8, ptr %.15179.i.i.epil.init, i64 4
  %i.qm = getelementptr inbounds nuw i8, ptr %.0238177.i.i.epil.init, i64 %i.me
  br label %.preheader119.i.i

.preheader119.i.i:                                ; preds = %.lr.ph180.i.i.epil.preheader, %.preheader119.i.i.loopexit.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit266.i.i
  %.0238.lcssa.i.i = phi ptr [ %i.qa, %_ZN4ncnn3MatD2Ev.exit266.i.i ], [ %i.rv, %.preheader119.i.i.loopexit.unr-lcssa ], [ %i.qm, %.lr.ph180.i.i.epil.preheader ] ; 2 uses
  %.0236.lcssa.i.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit266.i.i ], [ %i.mf, %.preheader119.i.i.loopexit.unr-lcssa ], [ %i.mf, %.lr.ph180.i.i.epil.preheader ] ; 5 uses
  %.15.lcssa.i.i = phi ptr [ %.12190.i.i, %_ZN4ncnn3MatD2Ev.exit266.i.i ], [ %i.ru, %.preheader119.i.i.loopexit.unr-lcssa ], [ %i.ql, %.lr.ph180.i.i.epil.preheader ] ; 3 uses
  %i.qn = icmp slt i32 %.0236.lcssa.i.i, %.sroa.speculated
  br i1 %i.qn, label %.lr.ph187.i.i.preheader, label %.loopexit120.i.i

.lr.ph187.i.i.preheader:                          ; preds = %.preheader119.i.i
  %i.qo = sub i32 %.sroa.speculated, %.0236.lcssa.i.i
  %xtraiter400 = and i32 %i.qo, 3                 ; 2 uses
  %lcmp.mod401.not = icmp eq i32 %xtraiter400, 0
  br i1 %lcmp.mod401.not, label %.lr.ph187.i.i.prol.loopexit, label %.lr.ph187.i.i.prol

.lr.ph187.i.i.prol:                               ; preds = %.lr.ph187.i.i.preheader, %.lr.ph187.i.i.prol
  %.16186.i.i.prol = phi ptr [ %i.qt, %.lr.ph187.i.i.prol ], [ %.15.lcssa.i.i, %.lr.ph187.i.i.preheader ] ; 3 uses
  %.1237185.i.i.prol = phi i32 [ %i.qv, %.lr.ph187.i.i.prol ], [ %.0236.lcssa.i.i, %.lr.ph187.i.i.preheader ]
  %.1239184.i.i.prol = phi ptr [ %i.qu, %.lr.ph187.i.i.prol ], [ %.0238.lcssa.i.i, %.lr.ph187.i.i.preheader ] ; 3 uses
  %prol.iter402 = phi i32 [ %prol.iter402.next, %.lr.ph187.i.i.prol ], [ 0, %.lr.ph187.i.i.preheader ]
  %i.qp = load i8, ptr %.1239184.i.i.prol, align 1, !tbaa !316
  store i8 %i.qp, ptr %.16186.i.i.prol, align 1, !tbaa !316
  %i.qq = getelementptr inbounds nuw i8, ptr %.1239184.i.i.prol, i64 1
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !316
  %i.qs = getelementptr inbounds nuw i8, ptr %.16186.i.i.prol, i64 1
  store i8 %i.qr, ptr %i.qs, align 1, !tbaa !316
  %i.qt = getelementptr inbounds nuw i8, ptr %.16186.i.i.prol, i64 2 ; 3 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.1239184.i.i.prol, i64 %i.bs ; 2 uses
  %i.qv = add nuw nsw i32 %.1237185.i.i.prol, 1   ; 2 uses
  %prol.iter402.next = add i32 %prol.iter402, 1   ; 2 uses
  %prol.iter402.cmp.not = icmp eq i32 %prol.iter402.next, %xtraiter400
  br i1 %prol.iter402.cmp.not, label %.lr.ph187.i.i.prol.loopexit, label %.lr.ph187.i.i.prol, !llvm.loop !1961

.lr.ph187.i.i.prol.loopexit:                      ; preds = %.lr.ph187.i.i.prol, %.lr.ph187.i.i.preheader
  %.lcssa375.unr = phi ptr [ poison, %.lr.ph187.i.i.preheader ], [ %i.qt, %.lr.ph187.i.i.prol ]
  %.16186.i.i.unr = phi ptr [ %.15.lcssa.i.i, %.lr.ph187.i.i.preheader ], [ %i.qt, %.lr.ph187.i.i.prol ]
  %.1237185.i.i.unr = phi i32 [ %.0236.lcssa.i.i, %.lr.ph187.i.i.preheader ], [ %i.qv, %.lr.ph187.i.i.prol ]
  %.1239184.i.i.unr = phi ptr [ %.0238.lcssa.i.i, %.lr.ph187.i.i.preheader ], [ %i.qu, %.lr.ph187.i.i.prol ]
  %i.qw = sub i32 %.0236.lcssa.i.i, %.sroa.speculated
  %i.qx = icmp ugt i32 %i.qw, -4
  br i1 %i.qx, label %.loopexit120.i.i, label %.lr.ph187.i.i

.lr.ph180.i.i:                                    ; preds = %.lr.ph180.i.i.preheader, %.lr.ph180.i.i
  %.15179.i.i = phi ptr [ %i.ru, %.lr.ph180.i.i ], [ %.12190.i.i, %.lr.ph180.i.i.preheader ] ; 9 uses
  %.0238177.i.i = phi ptr [ %i.rv, %.lr.ph180.i.i ], [ %i.qa, %.lr.ph180.i.i.preheader ] ; 4 uses
  %niter399 = phi i32 [ %niter399.next.1, %.lr.ph180.i.i ], [ 0, %.lr.ph180.i.i.preheader ]
  %i.qy = load i8, ptr %.0238177.i.i, align 1, !tbaa !316
  store i8 %i.qy, ptr %.15179.i.i, align 1, !tbaa !316
  %i.qz = getelementptr inbounds nuw i8, ptr %.0238177.i.i, i64 %i.bs ; 2 uses
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !316
  %i.rb = getelementptr inbounds nuw i8, ptr %.15179.i.i, i64 1
  store i8 %i.ra, ptr %i.rb, align 1, !tbaa !316
  %i.rc = getelementptr inbounds nuw i8, ptr %.0238177.i.i, i64 1
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !316
  %i.re = getelementptr inbounds nuw i8, ptr %.15179.i.i, i64 2
  store i8 %i.rd, ptr %i.re, align 1, !tbaa !316
  %i.rf = getelementptr i8, ptr %i.qz, i64 1
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !316
  %i.rh = getelementptr inbounds nuw i8, ptr %.15179.i.i, i64 3
  store i8 %i.rg, ptr %i.rh, align 1, !tbaa !316
  %i.ri = getelementptr inbounds nuw i8, ptr %.15179.i.i, i64 4
  %i.rj = getelementptr inbounds nuw i8, ptr %.0238177.i.i, i64 %i.me ; 4 uses
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !316
  store i8 %i.rk, ptr %i.ri, align 1, !tbaa !316
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.bs ; 2 uses
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !316
  %i.rn = getelementptr inbounds nuw i8, ptr %.15179.i.i, i64 5
  store i8 %i.rm, ptr %i.rn, align 1, !tbaa !316
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rj, i64 1
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !316
  %i.rq = getelementptr inbounds nuw i8, ptr %.15179.i.i, i64 6
  store i8 %i.rp, ptr %i.rq, align 1, !tbaa !316
  %i.rr = getelementptr i8, ptr %i.rl, i64 1
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !316
  %i.rt = getelementptr inbounds nuw i8, ptr %.15179.i.i, i64 7
  store i8 %i.rs, ptr %i.rt, align 1, !tbaa !316
  %i.ru = getelementptr inbounds nuw i8, ptr %.15179.i.i, i64 8 ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.me ; 3 uses
  %niter399.next.1 = add nuw nsw i32 %niter399, 2 ; 2 uses
  %niter399.ncmp.1.not = icmp eq i32 %niter399.next.1, %unroll_iter398
  br i1 %niter399.ncmp.1.not, label %.preheader119.i.i.loopexit.unr-lcssa, label %.lr.ph180.i.i, !llvm.loop !1962

.lr.ph187.i.i:                                    ; preds = %.lr.ph187.i.i.prol.loopexit, %.lr.ph187.i.i
  %.16186.i.i = phi ptr [ %i.ss, %.lr.ph187.i.i ], [ %.16186.i.i.unr, %.lr.ph187.i.i.prol.loopexit ] ; 9 uses
  %.1237185.i.i = phi i32 [ %i.su, %.lr.ph187.i.i ], [ %.1237185.i.i.unr, %.lr.ph187.i.i.prol.loopexit ]
  %.1239184.i.i = phi ptr [ %i.st, %.lr.ph187.i.i ], [ %.1239184.i.i.unr, %.lr.ph187.i.i.prol.loopexit ] ; 3 uses
  %i.rw = load i8, ptr %.1239184.i.i, align 1, !tbaa !316
  store i8 %i.rw, ptr %.16186.i.i, align 1, !tbaa !316
  %i.rx = getelementptr inbounds nuw i8, ptr %.1239184.i.i, i64 1
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !316
  %i.rz = getelementptr inbounds nuw i8, ptr %.16186.i.i, i64 1
  store i8 %i.ry, ptr %i.rz, align 1, !tbaa !316
  %i.sa = getelementptr inbounds nuw i8, ptr %.16186.i.i, i64 2
  %i.sb = getelementptr inbounds nuw i8, ptr %.1239184.i.i, i64 %i.bs ; 3 uses
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !316
  store i8 %i.sc, ptr %i.sa, align 1, !tbaa !316
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sb, i64 1
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !316
  %i.sf = getelementptr inbounds nuw i8, ptr %.16186.i.i, i64 3
  store i8 %i.se, ptr %i.sf, align 1, !tbaa !316
  %i.sg = getelementptr inbounds nuw i8, ptr %.16186.i.i, i64 4
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.bs ; 3 uses
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !316
  store i8 %i.si, ptr %i.sg, align 1, !tbaa !316
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 1
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !316
  %i.sl = getelementptr inbounds nuw i8, ptr %.16186.i.i, i64 5
  store i8 %i.sk, ptr %i.sl, align 1, !tbaa !316
  %i.sm = getelementptr inbounds nuw i8, ptr %.16186.i.i, i64 6
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.bs ; 3 uses
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !316
  store i8 %i.so, ptr %i.sm, align 1, !tbaa !316
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 1
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !316
  %i.sr = getelementptr inbounds nuw i8, ptr %.16186.i.i, i64 7
  store i8 %i.sq, ptr %i.sr, align 1, !tbaa !316
  %i.ss = getelementptr inbounds nuw i8, ptr %.16186.i.i, i64 8 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.sn, i64 %i.bs
  %i.su = add nuw nsw i32 %.1237185.i.i, 4        ; 2 uses
  %exitcond236.not.i.i.3 = icmp eq i32 %i.su, %.sroa.speculated
  br i1 %exitcond236.not.i.i.3, label %.loopexit120.i.i, label %.lr.ph187.i.i, !llvm.loop !1963

.loopexit120.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph175.i.i
  br i1 %lcmp.mod404.not, label %.loopexit120.i.i, label %.lr.ph175.i.i.epil.preheader

.lr.ph175.i.i.epil.preheader:                     ; preds = %.loopexit120.i.i.loopexit.unr-lcssa, %.lr.ph175.preheader.i.i
  %.13174.i.i.epil.init = phi ptr [ %.12190.i.i, %.lr.ph175.preheader.i.i ], [ %i.pr, %.loopexit120.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.0247172.i.i.epil.init = phi ptr [ %i.oy, %.lr.ph175.preheader.i.i ], [ %i.ps, %.loopexit120.i.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod406)
  %i.sv = load i64, ptr %.0247172.i.i.epil.init, align 1, !tbaa !316
  %i.sw = insertelement <2 x i64> poison, i64 %i.sv, i64 0
  %i.sx = getelementptr inbounds nuw i8, ptr %.0247172.i.i.epil.init, i64 8
  %i.sy = load i64, ptr %i.sx, align 1, !tbaa !316
  %i.sz = insertelement <2 x i64> poison, i64 %i.sy, i64 0
  %i.ta = bitcast <2 x i64> %i.sw to <8 x i16>
  %i.tb = bitcast <2 x i64> %i.sz to <8 x i16>
  %i.tc = shufflevector <8 x i16> %i.ta, <8 x i16> %i.tb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.tc, ptr %.13174.i.i.epil.init, align 1, !tbaa !316
  %i.td = getelementptr inbounds nuw i8, ptr %.13174.i.i.epil.init, i64 16
  br label %.loopexit120.i.i

.loopexit120.i.i:                                 ; preds = %.lr.ph187.i.i.prol.loopexit, %.lr.ph187.i.i, %.lr.ph175.i.i.epil.preheader, %.loopexit120.i.i.loopexit.unr-lcssa, %.preheader119.i.i, %_ZN4ncnn3MatD2Ev.exit267.i.i, %bb.k
  %.17.i.i = phi ptr [ %.12190.i.i, %bb.k ], [ %.15.lcssa.i.i, %.preheader119.i.i ], [ %i.td, %.lr.ph175.i.i.epil.preheader ], [ %.12190.i.i, %_ZN4ncnn3MatD2Ev.exit267.i.i ], [ %i.pr, %.loopexit120.i.i.loopexit.unr-lcssa ], [ %.lcssa375.unr, %.lr.ph187.i.i.prol.loopexit ], [ %i.ss, %.lr.ph187.i.i ] ; 2 uses
  %indvars.iv.next238.i.i = add nuw nsw i64 %indvars.iv237.i.i, 2 ; 3 uses
  %i.te = icmp slt i64 %indvars.iv.next238.i.i, %invariant.op277.i.i
  br i1 %i.te, label %bb.k, label %.preheader.loopexit.i.i, !llvm.loop !1964

_ZN4ncnn3MatD2Ev.exit.i.i:                        ; preds = %..loopexit_crit_edge.i.i, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i
  %indvars.iv241.i.i = phi i64 [ %i.om, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i ], [ %indvars.iv.next242.i.i, %..loopexit_crit_edge.i.i ] ; 2 uses
  %.18205.i.i = phi ptr [ %.12.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit.preheader.i.i ], [ %.lcssa377, %..loopexit_crit_edge.i.i ] ; 2 uses
  %i.tf = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1965
  %i.tg = load i64, ptr %i.x, align 8, !tbaa !20, !noalias !1965
  %i.th = mul i64 %i.tg, %i.mv
  %i.ti = load i64, ptr %i.aa, align 8, !tbaa !65, !noalias !1965
  %i.tj = mul i64 %i.th, %i.ti
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.tj
  %i.tl = getelementptr i8, ptr %i.tk, i64 %indvars.iv241.i.i
  %i.tm = getelementptr i8, ptr %i.tl, i64 %i.on  ; 2 uses
  br i1 %i.op, label %.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit.i.i.new

_ZN4ncnn3MatD2Ev.exit.i.i.new:                    ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i.new
end_hunk_1
begin_hunk_2_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.asm = mul nsw i32 %i.asi, %i.be
  %i.asn = mul i32 %i.asa, %i.wu
  %i.aso = add i32 %i.asj, %i.asn
  %i.asp = add i32 %i.aso, %i.ask
  %i.asq = insertelement <4 x i32> poison, i32 %i.asp, i64 0
  %i.asr = shufflevector <4 x i32> %i.asq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ass = add <4 x i32> %i.asr, %i.anv           ; 4 uses
  %i.ast = mul i32 %i.asc, %i.wu
  %i.asu = add i32 %i.asl, %i.ast
  %i.asv = add i32 %i.asu, %i.asm
  %i.asw = insertelement <4 x i32> poison, i32 %i.asv, i64 0
  %i.asx = shufflevector <4 x i32> %i.asw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.asy = add <4 x i32> %i.asx, %i.anv           ; 4 uses
  %i.asz = load ptr, ptr %9, align 8, !tbaa !18
  %.sroa.05.0.vec.extract.i.i = extractelement <4 x i32> %i.ass, i64 0
  %i.ata = sext i32 %.sroa.05.0.vec.extract.i.i to i64
  %i.atb = getelementptr inbounds i8, ptr %i.asz, i64 %i.ata
  %i.atc = load i8, ptr %i.atb, align 1, !tbaa !316
  store i8 %i.atc, ptr %.17155.i.i, align 1, !tbaa !316
  %i.atd = load ptr, ptr %9, align 8, !tbaa !18
  %.sroa.7.16.vec.extract.i.i = extractelement <4 x i32> %i.asy, i64 0
  %i.ate = sext i32 %.sroa.7.16.vec.extract.i.i to i64
  %i.atf = getelementptr inbounds i8, ptr %i.atd, i64 %i.ate
  %i.atg = load i8, ptr %i.atf, align 1, !tbaa !316
  %i.ath = getelementptr inbounds nuw i8, ptr %.17155.i.i, i64 1
  store i8 %i.atg, ptr %i.ath, align 1, !tbaa !316
  %i.ati = load ptr, ptr %9, align 8, !tbaa !18
  %.sroa.05.4.vec.extract.i.i = extractelement <4 x i32> %i.ass, i64 1
  %i.atj = sext i32 %.sroa.05.4.vec.extract.i.i to i64
  %i.atk = getelementptr inbounds i8, ptr %i.ati, i64 %i.atj
  %i.atl = load i8, ptr %i.atk, align 1, !tbaa !316
  %i.atm = getelementptr inbounds nuw i8, ptr %.17155.i.i, i64 2
  store i8 %i.atl, ptr %i.atm, align 1, !tbaa !316
  %i.atn = load ptr, ptr %9, align 8, !tbaa !18
  %.sroa.7.20.vec.extract.i.i = extractelement <4 x i32> %i.asy, i64 1
  %i.ato = sext i32 %.sroa.7.20.vec.extract.i.i to i64
  %i.atp = getelementptr inbounds i8, ptr %i.atn, i64 %i.ato
  %i.atq = load i8, ptr %i.atp, align 1, !tbaa !316
  %i.atr = getelementptr inbounds nuw i8, ptr %.17155.i.i, i64 3
  store i8 %i.atq, ptr %i.atr, align 1, !tbaa !316
  %i.ats = load ptr, ptr %9, align 8, !tbaa !18
  %.sroa.05.8.vec.extract.i.i = extractelement <4 x i32> %i.ass, i64 2
  %i.att = sext i32 %.sroa.05.8.vec.extract.i.i to i64
  %i.atu = getelementptr inbounds i8, ptr %i.ats, i64 %i.att
  %i.atv = load i8, ptr %i.atu, align 1, !tbaa !316
  %i.atw = getelementptr inbounds nuw i8, ptr %.17155.i.i, i64 4
  store i8 %i.atv, ptr %i.atw, align 1, !tbaa !316
  %i.atx = load ptr, ptr %9, align 8, !tbaa !18
  %.sroa.7.24.vec.extract.i.i = extractelement <4 x i32> %i.asy, i64 2
  %i.aty = sext i32 %.sroa.7.24.vec.extract.i.i to i64
  %i.atz = getelementptr inbounds i8, ptr %i.atx, i64 %i.aty
  %i.aua = load i8, ptr %i.atz, align 1, !tbaa !316
  %i.aub = getelementptr inbounds nuw i8, ptr %.17155.i.i, i64 5
  store i8 %i.aua, ptr %i.aub, align 1, !tbaa !316
  %i.auc = load ptr, ptr %9, align 8, !tbaa !18
  %.sroa.05.12.vec.extract.i.i = extractelement <4 x i32> %i.ass, i64 3
  %i.aud = sext i32 %.sroa.05.12.vec.extract.i.i to i64
  %i.aue = getelementptr inbounds i8, ptr %i.auc, i64 %i.aud
  %i.auf = load i8, ptr %i.aue, align 1, !tbaa !316
  %i.aug = getelementptr inbounds nuw i8, ptr %.17155.i.i, i64 6
  store i8 %i.auf, ptr %i.aug, align 1, !tbaa !316
  %i.auh = load ptr, ptr %9, align 8, !tbaa !18
  %.sroa.7.28.vec.extract.i.i = extractelement <4 x i32> %i.asy, i64 3
  %i.aui = sext i32 %.sroa.7.28.vec.extract.i.i to i64
  %i.auj = getelementptr inbounds i8, ptr %i.auh, i64 %i.aui
  %i.auk = load i8, ptr %i.auj, align 1, !tbaa !316
  %i.aul = getelementptr inbounds nuw i8, ptr %.17155.i.i, i64 7
  store i8 %i.auk, ptr %i.aul, align 1, !tbaa !316
  %i.aum = getelementptr inbounds nuw i8, ptr %.17155.i.i, i64 8 ; 2 uses
  %i.aun = add nuw nsw i32 %.01109154.i.i, 2      ; 3 uses
  %i.auo = or disjoint i32 %i.aun, 1
  %i.aup = icmp slt i32 %i.auo, %.sroa.speculated
  br i1 %i.aup, label %.lr.ph156.i.i, label %.preheader111.i.i, !llvm.loop !1980

.lr.ph161.i.i:                                    ; preds = %.preheader111.i.i, %.lr.ph161.i.i
  %.18160.i.i = phi ptr [ %i.avw, %.lr.ph161.i.i ], [ %.17.lcssa.i.i, %.preheader111.i.i ] ; 5 uses
  %.11110159.i.i = phi i32 [ %i.avx, %.lr.ph161.i.i ], [ %.01109.lcssa.i.i, %.preheader111.i.i ] ; 2 uses
  %i.auq = add nsw i32 %.11110159.i.i, %i.ah      ; 2 uses
  %i.aur = sdiv i32 %i.auq, %i.uv
  %i.aus = srem i32 %i.auq, %i.uv                 ; 2 uses
  %i.aut = sdiv i32 %i.aus, %i.bc
  %i.auu = srem i32 %i.aus, %i.bc
  %i.auv = mul i32 %i.aut, %i.wt
  %i.auw = mul nsw i32 %i.auu, %i.be
  %i.aux = mul i32 %i.aur, %i.wu
  %i.auy = add i32 %i.auv, %i.aux
  %i.auz = add i32 %i.auy, %i.auw
  %i.ava = insertelement <4 x i32> poison, i32 %i.auz, i64 0
  %i.avb = shufflevector <4 x i32> %i.ava, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.avc = add <4 x i32> %i.avb, %i.anv           ; 4 uses
  %i.avd = load ptr, ptr %9, align 8, !tbaa !18
  %.sroa.03.0.vec.extract.i.i = extractelement <4 x i32> %i.avc, i64 0
  %i.ave = sext i32 %.sroa.03.0.vec.extract.i.i to i64
  %i.avf = getelementptr inbounds i8, ptr %i.avd, i64 %i.ave
  %i.avg = load i8, ptr %i.avf, align 1, !tbaa !316
  store i8 %i.avg, ptr %.18160.i.i, align 1, !tbaa !316
  %i.avh = load ptr, ptr %9, align 8, !tbaa !18
  %.sroa.03.4.vec.extract.i.i = extractelement <4 x i32> %i.avc, i64 1
  %i.avi = sext i32 %.sroa.03.4.vec.extract.i.i to i64
  %i.avj = getelementptr inbounds i8, ptr %i.avh, i64 %i.avi
  %i.avk = load i8, ptr %i.avj, align 1, !tbaa !316
  %i.avl = getelementptr inbounds nuw i8, ptr %.18160.i.i, i64 1
  store i8 %i.avk, ptr %i.avl, align 1, !tbaa !316
  %i.avm = load ptr, ptr %9, align 8, !tbaa !18
  %.sroa.03.8.vec.extract.i.i = extractelement <4 x i32> %i.avc, i64 2
  %i.avn = sext i32 %.sroa.03.8.vec.extract.i.i to i64
  %i.avo = getelementptr inbounds i8, ptr %i.avm, i64 %i.avn
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !316
  %i.avq = getelementptr inbounds nuw i8, ptr %.18160.i.i, i64 2
  store i8 %i.avp, ptr %i.avq, align 1, !tbaa !316
  %i.avr = load ptr, ptr %9, align 8, !tbaa !18
  %.sroa.03.12.vec.extract.i.i = extractelement <4 x i32> %i.avc, i64 3
  %i.avs = sext i32 %.sroa.03.12.vec.extract.i.i to i64
  %i.avt = getelementptr inbounds i8, ptr %i.avr, i64 %i.avs
  %i.avu = load i8, ptr %i.avt, align 1, !tbaa !316
  %i.avv = getelementptr inbounds nuw i8, ptr %.18160.i.i, i64 3
  store i8 %i.avu, ptr %i.avv, align 1, !tbaa !316
  %i.avw = getelementptr inbounds nuw i8, ptr %.18160.i.i, i64 4 ; 2 uses
  %i.avx = add nuw nsw i32 %.11110159.i.i, 1      ; 2 uses
  %exitcond287.not.i.i = icmp eq i32 %i.avx, %.sroa.speculated
  br i1 %exitcond287.not.i.i, label %.loopexit105.i.i, label %.lr.ph161.i.i, !llvm.loop !1981

.loopexit112.i.i:                                 ; preds = %bb.z
  br i1 %brmerge242.i.i, label %.loopexit105.i.i, label %.lr.ph165.i73.i

.lr.ph165.i73.i:                                  ; preds = %.loopexit112.i.i, %.lr.ph165.i73.i
  %.20164.i.i = phi ptr [ %i.axo, %.lr.ph165.i73.i ], [ %.11181.i.i, %.loopexit112.i.i ] ; 3 uses
  %.01111163.i.i = phi i32 [ %i.axp, %.lr.ph165.i73.i ], [ 0, %.loopexit112.i.i ] ; 2 uses
  %i.avy = add nsw i32 %.01111163.i.i, %i.wy      ; 2 uses
  %i.avz = sdiv i32 %i.avy, %i.uv
  %i.awa = srem i32 %i.avy, %i.uv                 ; 2 uses
  %i.awb = sdiv i32 %i.awa, %i.bc
  %i.awc = srem i32 %i.awa, %i.bc
  %i.awd = mul i32 %i.awb, %i.wt
  %i.awe = mul nsw i32 %i.awc, %i.be
  %i.awf = mul i32 %i.avz, %i.wu
  %i.awg = add i32 %i.awd, %i.awf
  %i.awh = add i32 %i.awg, %i.awe
  %i.awi = insertelement <4 x i32> poison, i32 %i.awh, i64 0
  %i.awj = shufflevector <4 x i32> %i.awi, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.awk = add <4 x i32> %i.awj, %i.anv
  %i.awl = shl <4 x i32> %i.awk, splat (i32 3)    ; 4 uses
  %i.awm = load ptr, ptr %9, align 8, !tbaa !18   ; 4 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <4 x i32> %i.awl, i64 0
  %i.awn = sext i32 %.sroa.0.0.vec.extract.i.i to i64
  %i.awo = getelementptr inbounds i8, ptr %i.awm, i64 %i.awn
  %i.awp = load i64, ptr %i.awo, align 1, !tbaa !316
  %i.awq = insertelement <2 x i64> poison, i64 %i.awp, i64 0
  %.sroa.0.4.vec.extract.i.i = extractelement <4 x i32> %i.awl, i64 1
  %i.awr = sext i32 %.sroa.0.4.vec.extract.i.i to i64
  %i.aws = getelementptr inbounds i8, ptr %i.awm, i64 %i.awr
  %i.awt = load i64, ptr %i.aws, align 1, !tbaa !316
  %i.awu = insertelement <2 x i64> poison, i64 %i.awt, i64 0
  %.sroa.0.8.vec.extract.i.i = extractelement <4 x i32> %i.awl, i64 2
  %i.awv = sext i32 %.sroa.0.8.vec.extract.i.i to i64
  %i.aww = getelementptr inbounds i8, ptr %i.awm, i64 %i.awv
  %i.awx = load i64, ptr %i.aww, align 1, !tbaa !316
  %i.awy = insertelement <2 x i64> poison, i64 %i.awx, i64 0
  %.sroa.0.12.vec.extract.i.i = extractelement <4 x i32> %i.awl, i64 3
  %i.awz = sext i32 %.sroa.0.12.vec.extract.i.i to i64
  %i.axa = getelementptr inbounds i8, ptr %i.awm, i64 %i.awz
  %i.axb = load i64, ptr %i.axa, align 1, !tbaa !316
  %i.axc = insertelement <2 x i64> poison, i64 %i.axb, i64 0
  %i.axd = bitcast <2 x i64> %i.awq to <8 x i16>
  %i.axe = bitcast <2 x i64> %i.awu to <8 x i16>
  %i.axf = shufflevector <8 x i16> %i.axd, <8 x i16> %i.axe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.axg = bitcast <2 x i64> %i.awy to <8 x i16>
  %i.axh = bitcast <2 x i64> %i.axc to <8 x i16>
  %i.axi = shufflevector <8 x i16> %i.axg, <8 x i16> %i.axh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.axj = bitcast <8 x i16> %i.axf to <4 x i32>  ; 2 uses
  %i.axk = bitcast <8 x i16> %i.axi to <4 x i32>  ; 2 uses
  %i.axl = shufflevector <4 x i32> %i.axj, <4 x i32> %i.axk, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.axm = shufflevector <4 x i32> %i.axj, <4 x i32> %i.axk, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.axl, ptr %.20164.i.i, align 1, !tbaa !316
  %i.axn = getelementptr inbounds nuw i8, ptr %.20164.i.i, i64 16
  store <4 x i32> %i.axm, ptr %i.axn, align 1, !tbaa !316
  %i.axo = getelementptr inbounds nuw i8, ptr %.20164.i.i, i64 32 ; 2 uses
  %i.axp = add nuw nsw i32 %.01111163.i.i, 1      ; 2 uses
  %exitcond288.not.i.i = icmp eq i32 %i.axp, %i.ww
  br i1 %exitcond288.not.i.i, label %.loopexit105.i.i, label %.lr.ph165.i73.i, !llvm.loop !1982

.loopexit105.i.i:                                 ; preds = %.lr.ph165.i73.i, %.lr.ph161.i.i, %bb.y, %bb.x, %.loopexit112.i.i, %.preheader111.i.i, %.loopexit107.i.i, %.preheader106.i.i
  %.21.i.i = phi ptr [ %.11181.i.i, %.loopexit112.i.i ], [ %.12.lcssa.i74.i, %.preheader106.i.i ], [ %.11181.i.i, %.loopexit107.i.i ], [ %i.arw, %bb.y ], [ %i.aqx, %bb.x ], [ %.17.lcssa.i.i, %.preheader111.i.i ], [ %i.avw, %.lr.ph161.i.i ], [ %i.axo, %.lr.ph165.i73.i ] ; 2 uses
  %i.axq = add nuw nsw i32 %.11096180.i.i, 4      ; 3 uses
  %i.axr = or disjoint i32 %i.axq, 3
  %i.axs = icmp slt i32 %i.axr, %.sroa.speculated63
  br i1 %i.axs, label %bb.u, label %.preheader103.i.i, !llvm.loop !1983

.preheader92.i.i:                                 ; preds = %.loopexit94.i.i, %.preheader103.i.i
  %.21097.lcssa.i.i = phi i32 [ %.11096.lcssa.i.i, %.preheader103.i.i ], [ %i.bfs, %.loopexit94.i.i ] ; 2 uses
  %.22.lcssa.i.i = phi ptr [ %.11.lcssa.i.i, %.preheader103.i.i ], [ %.33.i.i, %.loopexit94.i.i ]
  %i.axt = icmp slt i32 %.21097.lcssa.i.i, %.sroa.speculated63
  br i1 %i.axt, label %.lr.ph232.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

.lr.ph232.i.i:                                    ; preds = %.preheader92.i.i
  %i.axu = mul i32 %i.uo, %i.bh
  %i.axv = icmp eq i32 %i.up, 1
  %i.axw = icmp sgt i32 %.sroa.speculated, 1
  %i.axx = mul i32 %i.uo, %i.bf                   ; 4 uses
  %i.axy = icmp ne i32 %i.up, 8
  %22 = sdiv i32 %.sroa.speculated, 8
  %i.axz = icmp slt i32 %.sroa.speculated, 8
  %i.aya = sdiv i32 %i.ah, 8
  %brmerge249.i.i = or i1 %i.axz, %i.axy
  br label %bb.ai

bb.aa:                                            ; preds = %.loopexit94.i.i, %.lr.ph214.i.i
  %.22213.i.i = phi ptr [ %.11.lcssa.i.i, %.lr.ph214.i.i ], [ %.33.i.i, %.loopexit94.i.i ] ; 8 uses
  %.21097212.i.i = phi i32 [ %.11096.lcssa.i.i, %.lr.ph214.i.i ], [ %i.bfs, %.loopexit94.i.i ] ; 2 uses
  %i.ayb = add nsw i32 %.21097212.i.i, %i.af      ; 3 uses
  %i.ayc = sdiv i32 %i.ayb, %i.uu
  %i.ayd = add nsw i32 %i.ayb, 1                  ; 2 uses
  %i.aye = sdiv i32 %i.ayd, %i.uu
  %i.ayf = srem i32 %i.ayb, %i.uu
  %i.ayg = srem i32 %i.ayd, %i.uu
  %i.ayh = mul nsw i32 %i.ayf, %i.bg
  %i.ayi = mul nsw i32 %i.ayg, %i.bg
  %i.ayj = mul i32 %i.ayc, %i.amn                 ; 2 uses
  %i.ayk = mul i32 %i.aye, %i.amn                 ; 2 uses
  %i.ayl = add nsw i32 %i.ayh, %i.ayj             ; 7 uses
  %i.aym = add nsw i32 %i.ayi, %i.ayk             ; 4 uses
  %i.ayn = icmp eq i32 %i.ayj, %i.ayk
  %or.cond5.i.i = and i1 %i.bp, %i.ayn
  br i1 %or.cond5.i.i, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.amo, label %.preheader97.i.i, label %.loopexit96.i.i

.preheader97.i.i:                                 ; preds = %bb.ab
  br i1 %i.amp, label %.lr.ph201.i.i, label %.preheader95.i.i

.lr.ph201.i.i:                                    ; preds = %.preheader97.i.i
  %i.ayo = sext i32 %i.ayl to i64                 ; 2 uses
  br label %bb.ac

.preheader95.i.i:                                 ; preds = %bb.ac, %.preheader97.i.i
  %.01112.lcssa.i.i = phi i32 [ 0, %.preheader97.i.i ], [ %i.bae, %bb.ac ] ; 2 uses
  %.23.lcssa.i.i = phi ptr [ %.22213.i.i, %.preheader97.i.i ], [ %i.bad, %bb.ac ] ; 2 uses
  %i.ayp = icmp slt i32 %.01112.lcssa.i.i, %.sroa.speculated
  br i1 %i.ayp, label %.lr.ph206.i72.i, label %.loopexit94.i.i

.lr.ph206.i72.i:                                  ; preds = %.preheader95.i.i
  %i.ayq = sext i32 %i.ayl to i64
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ac, %.lr.ph201.i.i
  %.23200.i.i = phi ptr [ %.22213.i.i, %.lr.ph201.i.i ], [ %i.bad, %bb.ac ] ; 5 uses
  %.01112199.i.i = phi i32 [ 0, %.lr.ph201.i.i ], [ %i.bae, %bb.ac ] ; 2 uses
  %i.ayr = add nsw i32 %.01112199.i.i, %i.ah      ; 3 uses
  %i.ays = sdiv i32 %i.ayr, %i.uv
  %i.ayt = add nsw i32 %i.ayr, 1                  ; 2 uses
  %i.ayu = sdiv i32 %i.ayt, %i.uv
  %i.ayv = srem i32 %i.ayr, %i.uv                 ; 2 uses
  %i.ayw = srem i32 %i.ayt, %i.uv                 ; 2 uses
  %i.ayx = sdiv i32 %i.ayv, %i.bc
  %i.ayy = sdiv i32 %i.ayw, %i.bc
  %i.ayz = srem i32 %i.ayv, %i.bc
  %i.aza = srem i32 %i.ayw, %i.bc
  %i.azb = sext i32 %i.ays to i64
  %i.azc = mul i64 %i.bs, %i.azb
  %i.azd = mul i32 %i.ayx, %i.amq
  %i.aze = mul nsw i32 %i.ayz, %i.be
  %i.azf = add nsw i32 %i.aze, %i.azd
  %i.azg = sext i32 %i.azf to i64
  %i.azh = sext i32 %i.ayu to i64
  %i.azi = mul i64 %i.bs, %i.azh
  %i.azj = mul i32 %i.ayy, %i.amq
  %i.azk = mul nsw i32 %i.aza, %i.be
  %i.azl = add nsw i32 %i.azk, %i.azj
  %i.azm = sext i32 %i.azl to i64
  %i.azn = load ptr, ptr %9, align 8, !tbaa !18   ; 2 uses
  %i.azo = getelementptr i8, ptr %i.azn, i64 %i.azc
  %i.azp = getelementptr i8, ptr %i.azo, i64 %i.ayo
  %i.azq = getelementptr i8, ptr %i.azp, i64 %i.azg ; 2 uses
  %i.azr = getelementptr i8, ptr %i.azn, i64 %i.azi
  %i.azs = getelementptr i8, ptr %i.azr, i64 %i.ayo
  %i.azt = getelementptr i8, ptr %i.azs, i64 %i.azm ; 2 uses
  %i.azu = load i8, ptr %i.azq, align 1, !tbaa !316
  store i8 %i.azu, ptr %.23200.i.i, align 1, !tbaa !316
  %i.azv = load i8, ptr %i.azt, align 1, !tbaa !316
  %i.azw = getelementptr inbounds nuw i8, ptr %.23200.i.i, i64 1
  store i8 %i.azv, ptr %i.azw, align 1, !tbaa !316
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azq, i64 1
  %i.azy = load i8, ptr %i.azx, align 1, !tbaa !316
  %i.azz = getelementptr inbounds nuw i8, ptr %.23200.i.i, i64 2
  store i8 %i.azy, ptr %i.azz, align 1, !tbaa !316
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azt, i64 1
  %i.bab = load i8, ptr %i.baa, align 1, !tbaa !316
  %i.bac = getelementptr inbounds nuw i8, ptr %.23200.i.i, i64 3
  store i8 %i.bab, ptr %i.bac, align 1, !tbaa !316
  %i.bad = getelementptr inbounds nuw i8, ptr %.23200.i.i, i64 4 ; 2 uses
  %i.bae = add nuw nsw i32 %.01112199.i.i, 2      ; 3 uses
  %i.baf = or disjoint i32 %i.bae, 1
  %i.bag = icmp slt i32 %i.baf, %.sroa.speculated
  br i1 %i.bag, label %bb.ac, label %.preheader95.i.i, !llvm.loop !1984

bb.ad:                                            ; preds = %bb.ad, %.lr.ph206.i72.i
  %.24205.i.i = phi ptr [ %.23.lcssa.i.i, %.lr.ph206.i72.i ], [ %i.bba, %bb.ad ] ; 3 uses
  %.11113204.i.i = phi i32 [ %.01112.lcssa.i.i, %.lr.ph206.i72.i ], [ %i.bbb, %bb.ad ] ; 2 uses
  %i.bah = add nsw i32 %.11113204.i.i, %i.ah      ; 2 uses
  %i.bai = sdiv i32 %i.bah, %i.uv
  %i.baj = srem i32 %i.bah, %i.uv                 ; 2 uses
  %i.bak = sdiv i32 %i.baj, %i.bc
  %i.bal = srem i32 %i.baj, %i.bc
  %i.bam = sext i32 %i.bai to i64
  %i.ban = mul i64 %i.bs, %i.bam
  %i.bao = mul i32 %i.bak, %i.amq
  %i.bap = mul nsw i32 %i.bal, %i.be
  %i.baq = add nsw i32 %i.bap, %i.bao
  %i.bar = sext i32 %i.baq to i64
  %i.bas = load ptr, ptr %9, align 8, !tbaa !18
  %i.bat = getelementptr i8, ptr %i.bas, i64 %i.ban
  %i.bau = getelementptr i8, ptr %i.bat, i64 %i.ayq
  %i.bav = getelementptr i8, ptr %i.bau, i64 %i.bar ; 2 uses
  %i.baw = load i8, ptr %i.bav, align 1, !tbaa !316
  store i8 %i.baw, ptr %.24205.i.i, align 1, !tbaa !316
  %i.bax = getelementptr inbounds nuw i8, ptr %i.bav, i64 1
  %i.bay = load i8, ptr %i.bax, align 1, !tbaa !316
  %i.baz = getelementptr inbounds nuw i8, ptr %.24205.i.i, i64 1
  store i8 %i.bay, ptr %i.baz, align 1, !tbaa !316
  %i.bba = getelementptr inbounds nuw i8, ptr %.24205.i.i, i64 2 ; 2 uses
  %i.bbb = add nuw nsw i32 %.11113204.i.i, 1      ; 2 uses
  %exitcond293.not.i.i = icmp eq i32 %i.bbb, %.sroa.speculated
  br i1 %exitcond293.not.i.i, label %.loopexit94.i.i, label %bb.ad, !llvm.loop !1985

.loopexit96.i.i:                                  ; preds = %bb.ab
  br i1 %brmerge245.i.i, label %.loopexit94.i.i, label %.lr.ph210.i.i

.lr.ph210.i.i:                                    ; preds = %.loopexit96.i.i
  %i.bbc = sext i32 %i.ayl to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph210.i.i
  %.26209.i.i = phi ptr [ %.22213.i.i, %.lr.ph210.i.i ], [ %i.bbv, %bb.ae ] ; 2 uses
  %.01114208.i.i = phi i32 [ 0, %.lr.ph210.i.i ], [ %i.bbw, %bb.ae ] ; 2 uses
  %i.bbd = add nsw i32 %.01114208.i.i, %i.amu     ; 2 uses
  %i.bbe = sdiv i32 %i.bbd, %i.uv
  %i.bbf = srem i32 %i.bbd, %i.uv                 ; 2 uses
  %i.bbg = sdiv i32 %i.bbf, %i.bc
  %i.bbh = srem i32 %i.bbf, %i.bc
  %i.bbi = sext i32 %i.bbe to i64
  %i.bbj = mul i64 %i.bs, %i.bbi
  %i.bbk = add i64 %i.bbj, %i.bbc
  %i.bbl = mul i32 %i.bbg, %i.amq
  %i.bbm = mul nsw i32 %i.bbh, %i.be
  %i.bbn = add nsw i32 %i.bbm, %i.bbl
  %i.bbo = sext i32 %i.bbn to i64
  %i.bbp = add i64 %i.bbk, %i.bbo
  %i.bbq = shl i64 %i.bbp, 3
  %i.bbr = load ptr, ptr %9, align 8, !tbaa !18
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbr, i64 %i.bbq
  %i.bbt = load <8 x i16>, ptr %i.bbs, align 1, !tbaa !316
  %i.bbu = shufflevector <8 x i16> %i.bbt, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.bbu, ptr %.26209.i.i, align 1, !tbaa !316
  %i.bbv = getelementptr inbounds nuw i8, ptr %.26209.i.i, i64 16 ; 2 uses
  %i.bbw = add nuw nsw i32 %.01114208.i.i, 1      ; 2 uses
  %exitcond294.not.i.i = icmp eq i32 %i.bbw, %i.amt
  br i1 %exitcond294.not.i.i, label %.loopexit94.i.i, label %bb.ae, !llvm.loop !1986

bb.af:                                            ; preds = %bb.aa
  br i1 %i.amo, label %.preheader102.i.i, label %.loopexit101.i.i

.preheader102.i.i:                                ; preds = %bb.af
  br i1 %i.amp, label %.lr.ph187.i71.i, label %.preheader100.i.i

.preheader100.i.i:                                ; preds = %.lr.ph187.i71.i, %.preheader102.i.i
  %.01115.lcssa.i.i = phi i32 [ 0, %.preheader102.i.i ], [ %i.bdp, %.lr.ph187.i71.i ] ; 2 uses
  %.28.lcssa.i.i = phi ptr [ %.22213.i.i, %.preheader102.i.i ], [ %i.bdo, %.lr.ph187.i71.i ] ; 2 uses
  %i.bbx = icmp slt i32 %.01115.lcssa.i.i, %.sroa.speculated
  br i1 %i.bbx, label %.lr.ph192.i.i, label %.loopexit94.i.i

.lr.ph192.i.i:                                    ; preds = %.preheader100.i.i
  %i.bby = sext i32 %i.ayl to i64
  %i.bbz = sext i32 %i.aym to i64
  br label %bb.ag

.lr.ph187.i71.i:                                  ; preds = %.preheader102.i.i, %.lr.ph187.i71.i
  %.28186.i.i = phi ptr [ %i.bdo, %.lr.ph187.i71.i ], [ %.22213.i.i, %.preheader102.i.i ] ; 5 uses
  %.01115185.i.i = phi i32 [ %i.bdp, %.lr.ph187.i71.i ], [ 0, %.preheader102.i.i ] ; 2 uses
  %i.bca = add nsw i32 %.01115185.i.i, %i.ah      ; 3 uses
  %i.bcb = sdiv i32 %i.bca, %i.uv
  %i.bcc = add nsw i32 %i.bca, 1                  ; 2 uses
  %i.bcd = sdiv i32 %i.bcc, %i.uv
  %i.bce = srem i32 %i.bca, %i.uv                 ; 2 uses
  %i.bcf = srem i32 %i.bcc, %i.uv                 ; 2 uses
  %i.bcg = sdiv i32 %i.bce, %i.bc
  %i.bch = sdiv i32 %i.bcf, %i.bc
  %i.bci = srem i32 %i.bce, %i.bc
  %i.bcj = srem i32 %i.bcf, %i.bc
  %i.bck = mul i32 %i.bcg, %i.amq
  %i.bcl = mul nsw i32 %i.bci, %i.be
  %i.bcm = mul i32 %i.bch, %i.amq
  %i.bcn = mul nsw i32 %i.bcj, %i.be
  %i.bco = mul i32 %i.bcb, %i.amr
  %i.bcp = add i32 %i.bck, %i.bco
  %i.bcq = add i32 %i.bcp, %i.bcl                 ; 2 uses
  %i.bcr = add i32 %i.bcq, %i.ayl
  %i.bcs = add i32 %i.bcq, %i.aym
  %i.bct = mul i32 %i.bcd, %i.amr
  %i.bcu = add i32 %i.bcm, %i.bct
  %i.bcv = add i32 %i.bcu, %i.bcn                 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4ncnnL47conv3x3s1_winograd63_transform_input_tile_bf16sERKNS_3MatERS0_iiiii.omp_outlined:bb.a
  br i1 %i.czg, label %.noexc, label %._crit_edge, !llvm.loop !2396

bb.iz:                                            ; preds = %.thread510.7, %bb.iz
  %indvars.iv538 = phi i64 [ 0, %.thread510.7 ], [ %indvars.iv.next539, %bb.iz ] ; 2 uses
  %.0244530 = phi ptr [ %i.cyj, %.thread510.7 ], [ %i.dbk, %bb.iz ] ; 2 uses
  %.0245529 = phi ptr [ %i.cym, %.thread510.7 ], [ %i.dbl, %bb.iz ] ; 2 uses
  %.0246528 = phi ptr [ %i.cyp, %.thread510.7 ], [ %i.dbm, %bb.iz ] ; 2 uses
  %.0247527 = phi ptr [ %i.cys, %.thread510.7 ], [ %i.dbn, %bb.iz ] ; 2 uses
  %.0248526 = phi ptr [ %i.cyv, %.thread510.7 ], [ %i.dbo, %bb.iz ] ; 2 uses
  %.0249525 = phi ptr [ %i.cyy, %.thread510.7 ], [ %i.dbp, %bb.iz ] ; 2 uses
  %.0250524 = phi ptr [ %i.czb, %.thread510.7 ], [ %i.dbq, %bb.iz ] ; 2 uses
  %.0251523 = phi ptr [ %i.cze, %.thread510.7 ], [ %i.dbr, %bb.iz ] ; 2 uses
  %i.czh = getelementptr inbounds nuw [256 x i8], ptr %i.e, i64 %indvars.iv538 ; 8 uses
  %i.czi = load <8 x float>, ptr %i.czh, align 32, !tbaa !316
  %i.czj = getelementptr inbounds nuw i8, ptr %i.czh, i64 32
  %i.czk = load <8 x float>, ptr %i.czj, align 32, !tbaa !316 ; 4 uses
  %i.czl = getelementptr inbounds nuw i8, ptr %i.czh, i64 64
  %i.czm = load <8 x float>, ptr %i.czl, align 32, !tbaa !316 ; 4 uses
  %i.czn = getelementptr inbounds nuw i8, ptr %i.czh, i64 96
  %i.czo = load <8 x float>, ptr %i.czn, align 32, !tbaa !316 ; 3 uses
  %i.czp = getelementptr inbounds nuw i8, ptr %i.czh, i64 128
  %i.czq = load <8 x float>, ptr %i.czp, align 32, !tbaa !316 ; 3 uses
  %i.czr = getelementptr inbounds nuw i8, ptr %i.czh, i64 160
  %i.czs = load <8 x float>, ptr %i.czr, align 32, !tbaa !316 ; 4 uses
  %i.czt = getelementptr inbounds nuw i8, ptr %i.czh, i64 192
  %i.czu = load <8 x float>, ptr %i.czt, align 32, !tbaa !316 ; 4 uses
  %i.czv = getelementptr inbounds nuw i8, ptr %i.czh, i64 224
  %i.czw = load <8 x float>, ptr %i.czv, align 32, !tbaa !316
  %i.czx = fmul fast <8 x float> %i.czq, splat (float -4.250000e+00)
  %i.czy = fadd fast <8 x float> %i.czx, %i.czm
  %i.czz = fadd fast <8 x float> %i.czy, %i.czu   ; 2 uses
  %i.daa = fmul fast <8 x float> %i.czo, splat (float -4.250000e+00)
  %i.dab = fadd fast <8 x float> %i.daa, %i.czk
  %i.dac = fadd fast <8 x float> %i.dab, %i.czs   ; 2 uses
  %i.dad = fmul fast <8 x float> %i.czm, splat (float 2.500000e-01)
  %i.dae = fmul fast <8 x float> %i.czq, splat (float -1.250000e+00) ; 2 uses
  %i.daf = fadd fast <8 x float> %i.dae, %i.dad
  %i.dag = fadd fast <8 x float> %i.daf, %i.czu   ; 2 uses
  %i.dah = fmul fast <8 x float> %i.czk, splat (float 5.000000e-01)
  %i.dai = fmul fast <8 x float> %i.czo, splat (float -2.500000e+00) ; 2 uses
  %i.daj = fadd fast <8 x float> %i.dai, %i.dah
  %i.dak = fmul fast <8 x float> %i.czs, splat (float 2.000000e+00)
  %i.dal = fadd fast <8 x float> %i.daj, %i.dak   ; 2 uses
  %i.dam = fadd fast <8 x float> %i.dae, %i.czm
  %i.dan = fmul fast <8 x float> %i.dam, splat (float 4.000000e+00)
  %i.dao = fadd fast <8 x float> %i.dan, %i.czu   ; 2 uses
  %i.dap = fmul fast <8 x float> %i.czk, splat (float 2.000000e+00)
  %i.daq = fadd fast <8 x float> %i.dai, %i.dap
  %i.dar = fmul fast <8 x float> %i.czs, splat (float 5.000000e-01)
  %i.das = fadd fast <8 x float> %i.daq, %i.dar   ; 2 uses
  %i.dat = fsub fast <8 x float> %i.czq, %i.czm
  %i.dau = fsub fast <8 x float> %i.czi, %i.czu
  %i.dav = fmul fast <8 x float> %i.dat, splat (float 5.250000e+00)
  %i.daw = fadd fast <8 x float> %i.dau, %i.dav
  %i.dax = fadd fast <8 x float> %i.czz, %i.dac
  %i.day = fsub fast <8 x float> %i.czz, %i.dac
  %i.daz = fadd fast <8 x float> %i.dag, %i.dal
  %i.dba = fsub fast <8 x float> %i.dag, %i.dal
  %i.dbb = fadd fast <8 x float> %i.dao, %i.das
  %i.dbc = fsub fast <8 x float> %i.dao, %i.das
  %i.dbd = fsub fast <8 x float> %i.czo, %i.czs
  %i.dbe = fsub fast <8 x float> %i.czw, %i.czk
  %i.dbf = fmul fast <8 x float> %i.dbd, splat (float 5.250000e+00)
  %i.dbg = fadd fast <8 x float> %i.dbe, %i.dbf
  store <8 x float> %i.daw, ptr %.0244530, align 32, !tbaa !316
  store <8 x float> %i.dax, ptr %.0245529, align 32, !tbaa !316
  store <8 x float> %i.day, ptr %.0246528, align 32, !tbaa !316
  store <8 x float> %i.daz, ptr %.0247527, align 32, !tbaa !316
  store <8 x float> %i.dba, ptr %.0248526, align 32, !tbaa !316
  store <8 x float> %i.dbb, ptr %.0249525, align 32, !tbaa !316
  store <8 x float> %i.dbc, ptr %.0250524, align 32, !tbaa !316
  store <8 x float> %i.dbg, ptr %.0251523, align 32, !tbaa !316
  %i.dbh = load i32, ptr %4, align 4, !tbaa !67   ; 4 uses
  %i.dbi = shl nsw i32 %i.dbh, 6
  %i.dbj = sext i32 %i.dbi to i64                 ; 8 uses
  %i.dbk = getelementptr inbounds [4 x i8], ptr %.0244530, i64 %i.dbj
  %i.dbl = getelementptr inbounds [4 x i8], ptr %.0245529, i64 %i.dbj
  %i.dbm = getelementptr inbounds [4 x i8], ptr %.0246528, i64 %i.dbj
  %i.dbn = getelementptr inbounds [4 x i8], ptr %.0247527, i64 %i.dbj
  %i.dbo = getelementptr inbounds [4 x i8], ptr %.0248526, i64 %i.dbj
  %i.dbp = getelementptr inbounds [4 x i8], ptr %.0249525, i64 %i.dbj
  %i.dbq = getelementptr inbounds [4 x i8], ptr %.0250524, i64 %i.dbj
  %i.dbr = getelementptr inbounds [4 x i8], ptr %.0251523, i64 %i.dbj
  %indvars.iv.next539 = add nuw nsw i64 %indvars.iv538, 1 ; 2 uses
  %exitcond541.not = icmp eq i64 %indvars.iv.next539, 8
  br i1 %exitcond541.not, label %bb.iy, label %bb.iz, !llvm.loop !2397

._crit_edge:                                      ; preds = %bb.iy, %.lr.ph.split
  %i.dbs = phi i32 [ %i.cc, %.lr.ph.split ], [ %i.dbh, %bb.iy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %i.dbt = add i32 %.0533, 1
  %exitcond545.not = icmp eq i32 %.0533, %i.k
  br i1 %exitcond545.not, label %._crit_edge535, label %.lr.ph.split, !llvm.loop !2398

._crit_edge535:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ja

bb.ja:                                            ; preds = %._crit_edge535, %bb.a
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
  br i1 %i.f, label %bb.b, label %bb.t

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
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  br label %_ZN4ncnn3MatD2Ev.exit36

_ZN4ncnn3MatD2Ev.exit36:                          ; preds = %_ZN4ncnn3MatD2Ev.exit36.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.087 = phi i32 [ %i.k, %_ZN4ncnn3MatD2Ev.exit36.lr.ph ], [ %i.xq, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.s = sdiv i32 %.087, %i.r                     ; 2 uses
  %i.t = srem i32 %.087, %i.r                     ; 2 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.v = mul nsw i32 %i.u, %i.s                   ; 13 uses
  %i.w = load i32, ptr %5, align 4, !tbaa !67     ; 2 uses
  %i.x = mul i32 %i.w, %i.t                       ; 17 uses
  %i.y = load i32, ptr %6, align 4, !tbaa !67
  %i.z = sub nsw i32 %i.y, %i.v
  %.sroa.speculated64 = call i32 @llvm.smin.i32(i32 %i.u, i32 %i.z) ; 15 uses
  %i.aa = load i32, ptr %7, align 4, !tbaa !67
  %i.ab = sub i32 %i.aa, %i.x
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.ab) ; 31 uses
  %i.ac = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !2399
  %i.ad = load ptr, ptr %8, align 8, !tbaa !18, !noalias !2399
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !2399
  %i.af = sext i32 %i.s to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !2399 ; 2 uses
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = sext i32 %i.ac to i64
  %i.al = sext i32 %i.t to i64
  %i.am = mul nsw i64 %i.ak, %i.al
  %i.an = mul i64 %i.am, %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an ; 15 uses
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
  br i1 %or.cond9.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit36
  %i.bb = load i32, ptr %i.o, align 8, !tbaa !66  ; 3 uses
  %i.bc = icmp sgt i32 %.sroa.speculated64, 7
  br i1 %i.bc, label %.lr.ph265.i.i, label %.preheader246.i.i

.lr.ph265.i.i:                                    ; preds = %bb.c
  %i.bd = sdiv i32 %i.x, 8
  %i.be = sext i32 %i.bd to i64
  %16 = sdiv i32 %.sroa.speculated, 8
  %i.bf = sdiv i32 %i.x, 4
  %i.bg = sext i32 %i.bf to i64
  %17 = sdiv i32 %.sroa.speculated, 4
  %i.bh = sext i32 %i.x to i64
  %i.bi = zext nneg i32 %.sroa.speculated64 to i64 ; 7 uses
  %i.bj = sext i32 %i.v to i64                    ; 3 uses
  switch i32 %i.bb, label %.loopexit247.i.preheader.i [
    i32 8, label %.lr.ph265.i.split.us.i
    i32 4, label %.lr.ph265.i.split.us22.i
    i32 1, label %.lr.ph265.i.split.us32.i
  ]

.loopexit247.i.preheader.i:                       ; preds = %.lr.ph265.i.i
  %umax70.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 15)
  %i.bk = and i64 %umax70.i, 2147483640
  br label %.preheader246.loopexit.i.i

.lr.ph265.i.split.us.i:                           ; preds = %.lr.ph265.i.i
  %i.bl = icmp sgt i32 %.sroa.speculated, 7
  br i1 %i.bl, label %_ZN4ncnn3MatD2Ev.exit232.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit232.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit232.i.us.preheader.i:        ; preds = %.lr.ph265.i.split.us.i
  %umax69.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 15)
  %i.bm = and i64 %umax69.i, 2147483640
  br label %.preheader246.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit232.i.us.us.preheader.i:     ; preds = %.lr.ph265.i.split.us.i
  %.pre72.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !2402
  br label %_ZN4ncnn3MatD2Ev.exit232.i.us.us.i

_ZN4ncnn3MatD2Ev.exit232.i.us.us.i:               ; preds = %.loopexit247.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit232.i.us.us.preheader.i
  %i.bn = phi i64 [ %i.gk, %.loopexit247.i.loopexit.us.us.i ], [ %.pre72.i, %_ZN4ncnn3MatD2Ev.exit232.i.us.us.preheader.i ]
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.loopexit247.i.loopexit.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit232.i.us.us.preheader.i ] ; 2 uses
  %.0198264.i.us.us.i = phi ptr [ %i.gj, %.loopexit247.i.loopexit.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit232.i.us.us.preheader.i ]
  %i.bo = load ptr, ptr %9, align 8, !tbaa !18, !noalias !2402
  %i.bp = mul i64 %i.bn, %i.be
  %i.bq = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !2402
  %i.br = mul i64 %i.bp, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.br
  %i.bt = add nsw i64 %indvars.iv.i.us.us.i, %i.bj
  %.idx.i.us.us.i = shl nsw i64 %i.bt, 4
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 %.idx.i.us.us.i
  br label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %.lr.ph.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit232.i.us.us.i
  %.1252.i.us.us.i = phi ptr [ %i.gj, %.lr.ph.i.us.us.i ], [ %.0198264.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit232.i.us.us.i ] ; 9 uses
  %.0202251.i.us.us.i = phi ptr [ %i.gl, %.lr.ph.i.us.us.i ], [ %i.bu, %_ZN4ncnn3MatD2Ev.exit232.i.us.us.i ] ; 9 uses
  %.0203250.i.us.us.i = phi i32 [ %i.gm, %.lr.ph.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit232.i.us.us.i ]
  %i.bv = load <8 x i16>, ptr %.0202251.i.us.us.i, align 1, !tbaa !316 ; 2 uses
  %i.bw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bx = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bv, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.by = shufflevector <8 x i16> %i.bw, <8 x i16> %i.bx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bz = bitcast <16 x i16> %i.by to <8 x i32>   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0202251.i.us.us.i, i64 16
  %i.cb = load <8 x i16>, ptr %i.ca, align 1, !tbaa !316 ; 2 uses
  %i.cc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cd = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.cb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ce = shufflevector <8 x i16> %i.cc, <8 x i16> %i.cd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cf = bitcast <16 x i16> %i.ce to <8 x i32>   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0202251.i.us.us.i, i64 32
  %i.ch = load <8 x i16>, ptr %i.cg, align 1, !tbaa !316 ; 2 uses
  %i.ci = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cj = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ch, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ck = shufflevector <8 x i16> %i.ci, <8 x i16> %i.cj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cl = bitcast <16 x i16> %i.ck to <8 x i32>   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0202251.i.us.us.i, i64 48
  %i.cn = load <8 x i16>, ptr %i.cm, align 1, !tbaa !316 ; 2 uses
  %i.co = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cp = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.cn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cq = shufflevector <8 x i16> %i.co, <8 x i16> %i.cp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cr = bitcast <16 x i16> %i.cq to <8 x i32>   ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0202251.i.us.us.i, i64 64
  %i.ct = load <8 x i16>, ptr %i.cs, align 1, !tbaa !316 ; 2 uses
  %i.cu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ct, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cv = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ct, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cw = shufflevector <8 x i16> %i.cu, <8 x i16> %i.cv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cx = bitcast <16 x i16> %i.cw to <8 x i32>   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0202251.i.us.us.i, i64 80
  %i.cz = load <8 x i16>, ptr %i.cy, align 1, !tbaa !316 ; 2 uses
  %i.da = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.db = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.cz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dc = shufflevector <8 x i16> %i.da, <8 x i16> %i.db, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dd = bitcast <16 x i16> %i.dc to <8 x i32>   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0202251.i.us.us.i, i64 96
  %i.df = load <8 x i16>, ptr %i.de, align 1, !tbaa !316 ; 2 uses
  %i.dg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.df, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dh = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.df, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.di = shufflevector <8 x i16> %i.dg, <8 x i16> %i.dh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dj = bitcast <16 x i16> %i.di to <8 x i32>   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0202251.i.us.us.i, i64 112
  %i.dl = load <8 x i16>, ptr %i.dk, align 1, !tbaa !316 ; 2 uses
  %i.dm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dn = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.dl, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.do = shufflevector <8 x i16> %i.dm, <8 x i16> %i.dn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dp = bitcast <16 x i16> %i.do to <8 x i32>   ; 2 uses
  %i.dq = shufflevector <8 x i32> %i.bz, <8 x i32> %i.cf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.dr = shufflevector <8 x i32> %i.bz, <8 x i32> %i.cf, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ds = shufflevector <8 x i32> %i.cl, <8 x i32> %i.cr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.dt = shufflevector <8 x i32> %i.cl, <8 x i32> %i.cr, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.du = shufflevector <8 x i32> %i.cx, <8 x i32> %i.dd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.dv = shufflevector <8 x i32> %i.cx, <8 x i32> %i.dd, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dw = shufflevector <8 x i32> %i.dj, <8 x i32> %i.dp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.dx = shufflevector <8 x i32> %i.dj, <8 x i32> %i.dp, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dy = shufflevector <8 x i32> %i.dq, <8 x i32> %i.ds, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.dz = shufflevector <8 x i32> %i.dq, <8 x i32> %i.ds, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ea = shufflevector <8 x i32> %i.dr, <8 x i32> %i.dt, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.eb = shufflevector <8 x i32> %i.dr, <8 x i32> %i.dt, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ec = shufflevector <8 x i32> %i.du, <8 x i32> %i.dw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ed = shufflevector <8 x i32> %i.du, <8 x i32> %i.dw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ee = shufflevector <8 x i32> %i.dv, <8 x i32> %i.dx, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ef = shufflevector <8 x i32> %i.dv, <8 x i32> %i.dx, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.eg = shufflevector <8 x i32> %i.ec, <8 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>
  %i.eh = shufflevector <8 x i32> %i.ed, <8 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>
  %i.ei = shufflevector <8 x i32> %i.ee, <8 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>
  %i.ej = shufflevector <8 x i32> %i.ef, <8 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>
  %i.ek = shufflevector <8 x i32> %i.dy, <8 x i32> %i.ec, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.el = shufflevector <8 x i32> %i.dz, <8 x i32> %i.ed, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.em = shufflevector <8 x i32> %i.ea, <8 x i32> %i.ee, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.en = shufflevector <8 x i32> %i.eb, <8 x i32> %i.ef, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.eo = shufflevector <8 x i32> %i.dy, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ep = shufflevector <8 x i32> %i.eg, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eq = lshr exact <4 x i32> %i.eo, splat (i32 16)
  %i.er = lshr <4 x i32> %i.ep, splat (i32 16)
  %i.es = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.eq, <4 x i32> %i.er)
  store <8 x i16> %i.es, ptr %.1252.i.us.us.i, align 1, !tbaa !316
  %i.et = getelementptr inbounds nuw i8, ptr %.1252.i.us.us.i, i64 16
  %i.eu = shufflevector <8 x i32> %i.dz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ev = shufflevector <8 x i32> %i.eh, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ew = lshr exact <4 x i32> %i.eu, splat (i32 16)
  %i.ex = lshr <4 x i32> %i.ev, splat (i32 16)
  %i.ey = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ew, <4 x i32> %i.ex)
  store <8 x i16> %i.ey, ptr %i.et, align 1, !tbaa !316
  %i.ez = getelementptr inbounds nuw i8, ptr %.1252.i.us.us.i, i64 32
  %i.fa = shufflevector <8 x i32> %i.ea, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fb = shufflevector <8 x i32> %i.ei, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fc = lshr exact <4 x i32> %i.fa, splat (i32 16)
  %i.fd = lshr <4 x i32> %i.fb, splat (i32 16)
  %i.fe = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fc, <4 x i32> %i.fd)
  store <8 x i16> %i.fe, ptr %i.ez, align 1, !tbaa !316
  %i.ff = getelementptr inbounds nuw i8, ptr %.1252.i.us.us.i, i64 48
  %i.fg = shufflevector <8 x i32> %i.eb, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fh = shufflevector <8 x i32> %i.ej, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fi = lshr exact <4 x i32> %i.fg, splat (i32 16)
  %i.fj = lshr <4 x i32> %i.fh, splat (i32 16)
  %i.fk = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fi, <4 x i32> %i.fj)
  store <8 x i16> %i.fk, ptr %i.ff, align 1, !tbaa !316
  %i.fl = getelementptr inbounds nuw i8, ptr %.1252.i.us.us.i, i64 64
  %i.fm = shufflevector <8 x i32> %i.ek, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fn = shufflevector <8 x i32> %i.ek, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fo = lshr <4 x i32> %i.fm, splat (i32 16)
  %i.fp = lshr <4 x i32> %i.fn, splat (i32 16)
  %i.fq = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fo, <4 x i32> %i.fp)
  store <8 x i16> %i.fq, ptr %i.fl, align 1, !tbaa !316
  %i.fr = getelementptr inbounds nuw i8, ptr %.1252.i.us.us.i, i64 80
  %i.fs = shufflevector <8 x i32> %i.el, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ft = shufflevector <8 x i32> %i.el, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fu = lshr <4 x i32> %i.fs, splat (i32 16)
  %i.fv = lshr <4 x i32> %i.ft, splat (i32 16)
  %i.fw = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fu, <4 x i32> %i.fv)
  store <8 x i16> %i.fw, ptr %i.fr, align 1, !tbaa !316
  %i.fx = getelementptr inbounds nuw i8, ptr %.1252.i.us.us.i, i64 96
  %i.fy = shufflevector <8 x i32> %i.em, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fz = shufflevector <8 x i32> %i.em, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ga = lshr <4 x i32> %i.fy, splat (i32 16)
  %i.gb = lshr <4 x i32> %i.fz, splat (i32 16)
  %i.gc = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ga, <4 x i32> %i.gb)
  store <8 x i16> %i.gc, ptr %i.fx, align 1, !tbaa !316
  %i.gd = getelementptr inbounds nuw i8, ptr %.1252.i.us.us.i, i64 112
  %i.ge = shufflevector <8 x i32> %i.en, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gf = shufflevector <8 x i32> %i.en, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gg = lshr <4 x i32> %i.ge, splat (i32 16)
  %i.gh = lshr <4 x i32> %i.gf, splat (i32 16)
  %i.gi = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gg, <4 x i32> %i.gh)
  store <8 x i16> %i.gi, ptr %i.gd, align 1, !tbaa !316
  %i.gj = getelementptr inbounds nuw i8, ptr %.1252.i.us.us.i, i64 128 ; 3 uses
  %i.gk = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx216.i.us.us.i = shl i64 %i.gk, 4
  %i.gl = getelementptr inbounds nuw i8, ptr %.0202251.i.us.us.i, i64 %.idx216.i.us.us.i
  %i.gm = add nuw nsw i32 %.0203250.i.us.us.i, 1  ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i32 %i.gm, %16
  br i1 %exitcond.not.i.us.us.i, label %.loopexit247.i.loopexit.us.us.i, label %.lr.ph.i.us.us.i, !llvm.loop !2405

.loopexit247.i.loopexit.us.us.i:                  ; preds = %.lr.ph.i.us.us.i
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 8 ; 3 uses
  %i.gn = or disjoint i64 %indvars.iv.next.i.us.us.i, 7
  %i.go = icmp samesign ult i64 %i.gn, %i.bi
  br i1 %i.go, label %_ZN4ncnn3MatD2Ev.exit232.i.us.us.i, label %.preheader246.loopexit.i.i, !llvm.loop !2406

.lr.ph265.i.split.us22.i:                         ; preds = %.lr.ph265.i.i
  %i.gp = icmp sgt i32 %.sroa.speculated, 3
  br i1 %i.gp, label %_ZN4ncnn3MatD2Ev.exit231.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit231.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit231.i.us.preheader.i:        ; preds = %.lr.ph265.i.split.us22.i
  %umax68.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 15)
  %i.gq = and i64 %umax68.i, 2147483640
  br label %.preheader246.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit231.i.us.us.preheader.i:     ; preds = %.lr.ph265.i.split.us22.i
  %.pre71.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !2407
  br label %_ZN4ncnn3MatD2Ev.exit231.i.us.us.i

_ZN4ncnn3MatD2Ev.exit231.i.us.us.i:               ; preds = %.loopexit247.i.loopexit6.us.us.i, %_ZN4ncnn3MatD2Ev.exit231.i.us.us.preheader.i
  %i.gr = phi i64 [ %i.ky, %.loopexit247.i.loopexit6.us.us.i ], [ %.pre71.i, %_ZN4ncnn3MatD2Ev.exit231.i.us.us.preheader.i ]
end_hunk_3
begin_hunk_4_@_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.omp_outlined:bb.a
  %i.hy = insertelement <2 x i64> poison, i64 %i.hx, i64 0
  %i.hz = bitcast <2 x i64> %i.hy to <8 x i16>
  %i.ia = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ib = bitcast <8 x i16> %i.ia to <4 x float>  ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.0210254.i.us.us.i, i64 40
  %i.id = load i64, ptr %i.ic, align 1, !tbaa !316
  %i.ie = insertelement <2 x i64> poison, i64 %i.id, i64 0
  %i.if = bitcast <2 x i64> %i.ie to <8 x i16>
  %i.ig = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.if, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ih = bitcast <8 x i16> %i.ig to <4 x float>  ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.0210254.i.us.us.i, i64 48
  %i.ij = load i64, ptr %i.ii, align 1, !tbaa !316
  %i.ik = insertelement <2 x i64> poison, i64 %i.ij, i64 0
  %i.il = bitcast <2 x i64> %i.ik to <8 x i16>
  %i.im = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.il, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.in = bitcast <8 x i16> %i.im to <4 x float>  ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.0210254.i.us.us.i, i64 56
  %i.ip = load i64, ptr %i.io, align 1, !tbaa !316
  %i.iq = insertelement <2 x i64> poison, i64 %i.ip, i64 0
  %i.ir = bitcast <2 x i64> %i.iq to <8 x i16>
  %i.is = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ir, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.it = bitcast <8 x i16> %i.is to <4 x float>  ; 2 uses
  %i.iu = shufflevector <4 x float> %i.hd, <4 x float> %i.hj, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.iv = shufflevector <4 x float> %i.hp, <4 x float> %i.hv, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.iw = shufflevector <4 x float> %i.hd, <4 x float> %i.hj, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ix = shufflevector <4 x float> %i.hp, <4 x float> %i.hv, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.iy = shufflevector <4 x float> %i.iu, <4 x float> %i.iv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.iz = shufflevector <4 x float> %i.iv, <4 x float> %i.iu, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ja = shufflevector <4 x float> %i.iw, <4 x float> %i.ix, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jb = shufflevector <4 x float> %i.ix, <4 x float> %i.iw, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.jc = shufflevector <4 x float> %i.ib, <4 x float> %i.ih, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.jd = shufflevector <4 x float> %i.in, <4 x float> %i.it, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.je = shufflevector <4 x float> %i.ib, <4 x float> %i.ih, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.jf = shufflevector <4 x float> %i.in, <4 x float> %i.it, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.jg = shufflevector <4 x float> %i.jc, <4 x float> %i.jd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jh = shufflevector <4 x float> %i.jd, <4 x float> %i.jc, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ji = shufflevector <4 x float> %i.je, <4 x float> %i.jf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jj = shufflevector <4 x float> %i.jf, <4 x float> %i.je, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.jk = bitcast <4 x float> %i.iy to <4 x i32>
  %i.jl = lshr <4 x i32> %i.jk, splat (i32 16)
  %i.jm = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jl, <4 x i32> poison)
  %i.jn = bitcast <8 x i16> %i.jm to <2 x i64>
  %i.jo = bitcast <4 x float> %i.jg to <4 x i32>
  %i.jp = lshr <4 x i32> %i.jo, splat (i32 16)
  %i.jq = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jp, <4 x i32> poison)
  %i.jr = bitcast <8 x i16> %i.jq to <2 x i64>
  %i.js = shufflevector <2 x i64> %i.jn, <2 x i64> %i.jr, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.js, ptr %.3255.i.us.us.i, align 1, !tbaa !316
  %i.jt = getelementptr inbounds nuw i8, ptr %.3255.i.us.us.i, i64 16
  %i.ju = bitcast <4 x float> %i.iz to <4 x i32>
  %i.jv = lshr <4 x i32> %i.ju, splat (i32 16)
  %i.jw = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jv, <4 x i32> poison)
  %i.jx = bitcast <8 x i16> %i.jw to <2 x i64>
  %i.jy = bitcast <4 x float> %i.jh to <4 x i32>
  %i.jz = lshr <4 x i32> %i.jy, splat (i32 16)
  %i.ka = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jz, <4 x i32> poison)
  %i.kb = bitcast <8 x i16> %i.ka to <2 x i64>
  %i.kc = shufflevector <2 x i64> %i.jx, <2 x i64> %i.kb, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.kc, ptr %i.jt, align 1, !tbaa !316
  %i.kd = getelementptr inbounds nuw i8, ptr %.3255.i.us.us.i, i64 32
  %i.ke = bitcast <4 x float> %i.ja to <4 x i32>
  %i.kf = lshr <4 x i32> %i.ke, splat (i32 16)
  %i.kg = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.kf, <4 x i32> poison)
  %i.kh = bitcast <8 x i16> %i.kg to <2 x i64>
  %i.ki = bitcast <4 x float> %i.ji to <4 x i32>
  %i.kj = lshr <4 x i32> %i.ki, splat (i32 16)
  %i.kk = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.kj, <4 x i32> poison)
  %i.kl = bitcast <8 x i16> %i.kk to <2 x i64>
  %i.km = shufflevector <2 x i64> %i.kh, <2 x i64> %i.kl, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.km, ptr %i.kd, align 1, !tbaa !316
  %i.kn = getelementptr inbounds nuw i8, ptr %.3255.i.us.us.i, i64 48
  %i.ko = bitcast <4 x float> %i.jb to <4 x i32>
  %i.kp = lshr <4 x i32> %i.ko, splat (i32 16)
  %i.kq = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.kp, <4 x i32> poison)
  %i.kr = bitcast <8 x i16> %i.kq to <2 x i64>
  %i.ks = bitcast <4 x float> %i.jj to <4 x i32>
  %i.kt = lshr <4 x i32> %i.ks, splat (i32 16)
  %i.ku = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.kt, <4 x i32> poison)
  %i.kv = bitcast <8 x i16> %i.ku to <2 x i64>
  %i.kw = shufflevector <2 x i64> %i.kr, <2 x i64> %i.kv, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.kw, ptr %i.kn, align 1, !tbaa !316
  %i.kx = getelementptr inbounds nuw i8, ptr %.3255.i.us.us.i, i64 64 ; 3 uses
  %i.ky = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx215.i.us.us.i = shl i64 %i.ky, 3
  %i.kz = getelementptr inbounds nuw i8, ptr %.0210254.i.us.us.i, i64 %.idx215.i.us.us.i
  %i.la = add nuw nsw i32 %.0211253.i.us.us.i, 1  ; 2 uses
  %exitcond344.not.i.us.us.i = icmp eq i32 %i.la, %17
  br i1 %exitcond344.not.i.us.us.i, label %.loopexit247.i.loopexit6.us.us.i, label %.lr.ph256.i.us.us.i, !llvm.loop !2410

.loopexit247.i.loopexit6.us.us.i:                 ; preds = %.lr.ph256.i.us.us.i
  %indvars.iv.next.i.us27.us.i = add nuw nsw i64 %indvars.iv.i.us23.us.i, 8 ; 3 uses
  %i.lb = or disjoint i64 %indvars.iv.next.i.us27.us.i, 7
  %i.lc = icmp samesign ult i64 %i.lb, %i.bi
  br i1 %i.lc, label %_ZN4ncnn3MatD2Ev.exit231.i.us.us.i, label %.preheader246.loopexit.i.i, !llvm.loop !2406

.lr.ph265.i.split.us32.i:                         ; preds = %.lr.ph265.i.i
  %i.ld = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.ld, label %_ZN4ncnn3MatD2Ev.exit230.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit230.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit230.i.us.preheader.i:        ; preds = %.lr.ph265.i.split.us32.i
  %umax.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 15)
  %i.le = and i64 %umax.i, 2147483640
  br label %.preheader246.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit230.i.us.us.preheader.i:     ; preds = %.lr.ph265.i.split.us32.i
  %.pre.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !2411
  %xtraiter = and i32 %.sroa.speculated, 3        ; 3 uses
  %i.lf = icmp ult i32 %.sroa.speculated, 4
  %unroll_iter = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod167 = icmp ne i32 %xtraiter, 0
  br label %_ZN4ncnn3MatD2Ev.exit230.i.us.us.i

_ZN4ncnn3MatD2Ev.exit230.i.us.us.i:               ; preds = %.loopexit247.i.loopexit7.us.us.i, %_ZN4ncnn3MatD2Ev.exit230.i.us.us.preheader.i
  %i.lg = phi i64 [ %.lcssa, %.loopexit247.i.loopexit7.us.us.i ], [ %.pre.i, %_ZN4ncnn3MatD2Ev.exit230.i.us.us.preheader.i ]
  %indvars.iv.i.us33.us.i = phi i64 [ %indvars.iv.next.i.us37.us.i, %.loopexit247.i.loopexit7.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit230.i.us.us.preheader.i ] ; 2 uses
  %.0198264.i.us34.us.i = phi ptr [ %.lcssa152, %.loopexit247.i.loopexit7.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit230.i.us.us.preheader.i ] ; 2 uses
  %i.lh = load ptr, ptr %9, align 8, !tbaa !18, !noalias !2411
  %i.li = mul i64 %i.lg, %i.bh
  %i.lj = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !2411
  %i.lk = mul i64 %i.li, %i.lj
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lk
  %i.lm = getelementptr [2 x i8], ptr %i.ll, i64 %indvars.iv.i.us33.us.i
  %i.ln = getelementptr [2 x i8], ptr %i.lm, i64 %i.bj ; 2 uses
  br i1 %i.lf, label %.lr.ph261.i.us.us.i.epil.preheader, label %.lr.ph261.i.us.us.i

.lr.ph261.i.us.us.i:                              ; preds = %_ZN4ncnn3MatD2Ev.exit230.i.us.us.i, %.lr.ph261.i.us.us.i
  %.5260.i.us.us.i = phi ptr [ %i.mb, %.lr.ph261.i.us.us.i ], [ %.0198264.i.us34.us.i, %_ZN4ncnn3MatD2Ev.exit230.i.us.us.i ] ; 5 uses
  %.0209258.i.us.us.i = phi ptr [ %i.md, %.lr.ph261.i.us.us.i ], [ %i.ln, %_ZN4ncnn3MatD2Ev.exit230.i.us.us.i ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph261.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit230.i.us.us.i ]
  %i.lo = load <2 x i64>, ptr %.0209258.i.us.us.i, align 1, !tbaa !316
  store <2 x i64> %i.lo, ptr %.5260.i.us.us.i, align 1, !tbaa !316
  %i.lp = getelementptr inbounds nuw i8, ptr %.5260.i.us.us.i, i64 16
  %i.lq = load i64, ptr %i.p, align 8, !tbaa !20
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %.0209258.i.us.us.i, i64 %i.lq ; 2 uses
  %i.ls = load <2 x i64>, ptr %i.lr, align 1, !tbaa !316
  store <2 x i64> %i.ls, ptr %i.lp, align 1, !tbaa !316
  %i.lt = getelementptr inbounds nuw i8, ptr %.5260.i.us.us.i, i64 32
  %i.lu = load i64, ptr %i.p, align 8, !tbaa !20
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %i.lr, i64 %i.lu ; 2 uses
  %i.lw = load <2 x i64>, ptr %i.lv, align 1, !tbaa !316
  store <2 x i64> %i.lw, ptr %i.lt, align 1, !tbaa !316
  %i.lx = getelementptr inbounds nuw i8, ptr %.5260.i.us.us.i, i64 48
  %i.ly = load i64, ptr %i.p, align 8, !tbaa !20
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %i.lv, i64 %i.ly ; 2 uses
  %i.ma = load <2 x i64>, ptr %i.lz, align 1, !tbaa !316
  store <2 x i64> %i.ma, ptr %i.lx, align 1, !tbaa !316
  %i.mb = getelementptr inbounds nuw i8, ptr %.5260.i.us.us.i, i64 64 ; 3 uses
  %i.mc = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %i.mc ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit247.i.loopexit7.us.us.i.unr-lcssa, label %.lr.ph261.i.us.us.i, !llvm.loop !2414

.loopexit247.i.loopexit7.us.us.i.unr-lcssa:       ; preds = %.lr.ph261.i.us.us.i
  br i1 %lcmp.mod.not, label %.loopexit247.i.loopexit7.us.us.i, label %.lr.ph261.i.us.us.i.epil.preheader

.lr.ph261.i.us.us.i.epil.preheader:               ; preds = %.loopexit247.i.loopexit7.us.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit230.i.us.us.i
  %.5260.i.us.us.i.epil.init = phi ptr [ %.0198264.i.us34.us.i, %_ZN4ncnn3MatD2Ev.exit230.i.us.us.i ], [ %i.mb, %.loopexit247.i.loopexit7.us.us.i.unr-lcssa ]
  %.0209258.i.us.us.i.epil.init = phi ptr [ %i.ln, %_ZN4ncnn3MatD2Ev.exit230.i.us.us.i ], [ %i.md, %.loopexit247.i.loopexit7.us.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod167)
  br label %.lr.ph261.i.us.us.i.epil

.lr.ph261.i.us.us.i.epil:                         ; preds = %.lr.ph261.i.us.us.i.epil, %.lr.ph261.i.us.us.i.epil.preheader
  %.5260.i.us.us.i.epil = phi ptr [ %i.mf, %.lr.ph261.i.us.us.i.epil ], [ %.5260.i.us.us.i.epil.init, %.lr.ph261.i.us.us.i.epil.preheader ] ; 2 uses
  %.0209258.i.us.us.i.epil = phi ptr [ %i.mh, %.lr.ph261.i.us.us.i.epil ], [ %.0209258.i.us.us.i.epil.init, %.lr.ph261.i.us.us.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph261.i.us.us.i.epil ], [ 0, %.lr.ph261.i.us.us.i.epil.preheader ]
  %i.me = load <2 x i64>, ptr %.0209258.i.us.us.i.epil, align 1, !tbaa !316
  store <2 x i64> %i.me, ptr %.5260.i.us.us.i.epil, align 1, !tbaa !316
  %i.mf = getelementptr inbounds nuw i8, ptr %.5260.i.us.us.i.epil, i64 16 ; 2 uses
  %i.mg = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %.0209258.i.us.us.i.epil, i64 %i.mg
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit247.i.loopexit7.us.us.i, label %.lr.ph261.i.us.us.i.epil, !llvm.loop !2415

.loopexit247.i.loopexit7.us.us.i:                 ; preds = %.lr.ph261.i.us.us.i.epil, %.loopexit247.i.loopexit7.us.us.i.unr-lcssa
  %.lcssa152 = phi ptr [ %i.mb, %.loopexit247.i.loopexit7.us.us.i.unr-lcssa ], [ %i.mf, %.lr.ph261.i.us.us.i.epil ] ; 2 uses
  %.lcssa = phi i64 [ %i.mc, %.loopexit247.i.loopexit7.us.us.i.unr-lcssa ], [ %i.mg, %.lr.ph261.i.us.us.i.epil ]
  %indvars.iv.next.i.us37.us.i = add nuw nsw i64 %indvars.iv.i.us33.us.i, 8 ; 3 uses
  %i.mi = or disjoint i64 %indvars.iv.next.i.us37.us.i, 7
  %i.mj = icmp samesign ult i64 %i.mi, %i.bi
  br i1 %i.mj, label %_ZN4ncnn3MatD2Ev.exit230.i.us.us.i, label %.preheader246.loopexit.i.i, !llvm.loop !2406

.preheader246.loopexit.i.i:                       ; preds = %.loopexit247.i.loopexit7.us.us.i, %.loopexit247.i.loopexit6.us.us.i, %.loopexit247.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit230.i.us.preheader.i, %_ZN4ncnn3MatD2Ev.exit231.i.us.preheader.i, %_ZN4ncnn3MatD2Ev.exit232.i.us.preheader.i, %.loopexit247.i.preheader.i
  %.us-phi.i = phi ptr [ %i.ao, %_ZN4ncnn3MatD2Ev.exit230.i.us.preheader.i ], [ %i.ao, %.loopexit247.i.preheader.i ], [ %i.gj, %.loopexit247.i.loopexit.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit232.i.us.preheader.i ], [ %i.kx, %.loopexit247.i.loopexit6.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit231.i.us.preheader.i ], [ %.lcssa152, %.loopexit247.i.loopexit7.us.us.i ]
  %.us-phi21.i = phi i64 [ %i.le, %_ZN4ncnn3MatD2Ev.exit230.i.us.preheader.i ], [ %i.bk, %.loopexit247.i.preheader.i ], [ %indvars.iv.next.i.us.us.i, %.loopexit247.i.loopexit.us.us.i ], [ %i.bm, %_ZN4ncnn3MatD2Ev.exit232.i.us.preheader.i ], [ %indvars.iv.next.i.us27.us.i, %.loopexit247.i.loopexit6.us.us.i ], [ %i.gq, %_ZN4ncnn3MatD2Ev.exit231.i.us.preheader.i ], [ %indvars.iv.next.i.us37.us.i, %.loopexit247.i.loopexit7.us.us.i ]
  %i.mk = trunc nuw nsw i64 %.us-phi21.i to i32
  br label %.preheader246.i.i

.preheader246.i.i:                                ; preds = %.preheader246.loopexit.i.i, %bb.c
  %.0199.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %i.mk, %.preheader246.loopexit.i.i ] ; 3 uses
  %.0198.lcssa.i.i = phi ptr [ %i.ao, %bb.c ], [ %.us-phi.i, %.preheader246.loopexit.i.i ] ; 2 uses
  %i.ml = or disjoint i32 %.0199.lcssa.i.i, 3
  %i.mm = icmp slt i32 %i.ml, %.sroa.speculated64
  br i1 %i.mm, label %.lr.ph285.i.i, label %.preheader.i.i

.lr.ph285.i.i:                                    ; preds = %.preheader246.i.i
  %i.mn = sdiv i32 %i.x, 8
  %i.mo = sext i32 %i.mn to i64
  %18 = sdiv i32 %.sroa.speculated, 8
  %i.mp = icmp sgt i32 %.sroa.speculated, 7
  %i.mq = sdiv i32 %i.x, 4
  %i.mr = sext i32 %i.mq to i64
  %19 = sdiv i32 %.sroa.speculated, 4
  %i.ms = icmp sgt i32 %.sroa.speculated, 3
  %i.mt = sext i32 %i.x to i64
  %i.mu = icmp sgt i32 %.sroa.speculated, 0
  %i.mv = zext nneg i32 %.0199.lcssa.i.i to i64
  %i.mw = sext i32 %.sroa.speculated64 to i64
  %i.mx = sext i32 %i.v to i64                    ; 3 uses
  %invariant.op.i.i = add nsw i64 %i.mw, -3
  %xtraiter168 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.my = icmp ult i32 %.sroa.speculated, 4
  %unroll_iter173 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod170.not = icmp eq i32 %xtraiter168, 0
  %lcmp.mod172 = icmp ne i32 %xtraiter168, 0
  br label %bb.e

.preheader.loopexit.i.i:                          ; preds = %.loopexit243.i.i
  %i.mz = trunc nuw nsw i64 %indvars.iv.next351.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %.preheader246.i.i
  %.1200.lcssa.i.i = phi i32 [ %.0199.lcssa.i.i, %.preheader246.i.i ], [ %i.mz, %.preheader.loopexit.i.i ] ; 4 uses
  %.7.lcssa.i.i = phi ptr [ %.0198.lcssa.i.i, %.preheader246.i.i ], [ %.13.i.i, %.preheader.loopexit.i.i ] ; 3 uses
  %i.na = icmp slt i32 %.1200.lcssa.i.i, %.sroa.speculated64
  br i1 %i.na, label %.lr.ph305.i.i, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph305.i.i:                                    ; preds = %.preheader.i.i
  %i.nb = sdiv i32 %i.x, 8
  %i.nc = sext i32 %i.nb to i64
  %20 = sdiv i32 %.sroa.speculated, 8             ; 3 uses
  %i.nd = sdiv i32 %i.x, 4
  %i.ne = sext i32 %i.nd to i64
  %i.nf = sdiv i32 %.sroa.speculated, 4           ; 3 uses
  %i.ng = sext i32 %i.x to i64
  switch i32 %i.bb, label %_ZN4ncnn3MatD2Ev.exit [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit226.us.preheader.i.i
    i32 4, label %.lr.ph305.split.split.us.split.i.i
    i32 1, label %.lr.ph305.split.split.split.i.i
  ]

_ZN4ncnn3MatD2Ev.exit226.us.preheader.i.i:        ; preds = %.lr.ph305.i.i
  %i.nh = icmp sgt i32 %.sroa.speculated, 7
  %i.ni = sext i32 %i.v to i64
  %wide.trip.count370.i.i = zext i32 %.sroa.speculated64 to i64
  br i1 %i.nh, label %_ZN4ncnn3MatD2Ev.exit226.us.i.preheader.i, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit226.us.i.preheader.i:        ; preds = %_ZN4ncnn3MatD2Ev.exit226.us.preheader.i.i
  %.pre372.i.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !2416
  %i.nj = zext nneg i32 %.1200.lcssa.i.i to i64
  %i.nk = add nsw i32 %20, -1
  %xtraiter191 = and i32 %20, 3                   ; 3 uses
  %i.nl = icmp ult i32 %i.nk, 3
  %unroll_iter197 = and i32 %20, 268435452
  %lcmp.mod193.not = icmp eq i32 %xtraiter191, 0
  %lcmp.mod196 = icmp ne i32 %xtraiter191, 0
  br label %_ZN4ncnn3MatD2Ev.exit226.us.i.i

_ZN4ncnn3MatD2Ev.exit226.us.i.i:                  ; preds = %.loopexit242.us.i.loopexit.i, %_ZN4ncnn3MatD2Ev.exit226.us.i.preheader.i
  %i.nm = phi i64 [ %.lcssa163, %.loopexit242.us.i.loopexit.i ], [ %.pre372.i.i, %_ZN4ncnn3MatD2Ev.exit226.us.i.preheader.i ]
  %indvars.iv367.i.i = phi i64 [ %indvars.iv.next368.i.i, %.loopexit242.us.i.loopexit.i ], [ %i.nj, %_ZN4ncnn3MatD2Ev.exit226.us.i.preheader.i ] ; 2 uses
  %.14304.us.i.i = phi ptr [ %.lcssa164, %.loopexit242.us.i.loopexit.i ], [ %.7.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit226.us.i.preheader.i ] ; 2 uses
  %i.nn = add nsw i64 %indvars.iv367.i.i, %i.ni
  %i.no = load ptr, ptr %9, align 8, !tbaa !18, !noalias !2416
  %i.np = mul i64 %i.nm, %i.nc
  %i.nq = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !2416
  %i.nr = mul i64 %i.np, %i.nq
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.nr
  %.idx381.i.i = shl nsw i64 %i.nn, 4
  %i.nt = getelementptr inbounds i8, ptr %i.ns, i64 %.idx381.i.i ; 2 uses
  br i1 %i.nl, label %.lr.ph291.us.i.i.epil.preheader, label %.lr.ph291.us.i.i

.lr.ph291.us.i.i:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit226.us.i.i, %.lr.ph291.us.i.i
  %.0195289.us.i.i = phi ptr [ %i.oj, %.lr.ph291.us.i.i ], [ %i.nt, %_ZN4ncnn3MatD2Ev.exit226.us.i.i ] ; 2 uses
  %.15288.us.i.i = phi ptr [ %i.oh, %.lr.ph291.us.i.i ], [ %.14304.us.i.i, %_ZN4ncnn3MatD2Ev.exit226.us.i.i ] ; 5 uses
  %niter198 = phi i32 [ %niter198.next.3, %.lr.ph291.us.i.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit226.us.i.i ]
  %i.nu = load <2 x i64>, ptr %.0195289.us.i.i, align 1, !tbaa !316
  store <2 x i64> %i.nu, ptr %.15288.us.i.i, align 1, !tbaa !316
  %i.nv = getelementptr inbounds nuw i8, ptr %.15288.us.i.i, i64 16
  %i.nw = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx212.us.i.i = shl i64 %i.nw, 4
  %i.nx = getelementptr inbounds nuw i8, ptr %.0195289.us.i.i, i64 %.idx212.us.i.i ; 2 uses
  %i.ny = load <2 x i64>, ptr %i.nx, align 1, !tbaa !316
  store <2 x i64> %i.ny, ptr %i.nv, align 1, !tbaa !316
  %i.nz = getelementptr inbounds nuw i8, ptr %.15288.us.i.i, i64 32
  %i.oa = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx212.us.i.i.1 = shl i64 %i.oa, 4
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 %.idx212.us.i.i.1 ; 2 uses
  %i.oc = load <2 x i64>, ptr %i.ob, align 1, !tbaa !316
  store <2 x i64> %i.oc, ptr %i.nz, align 1, !tbaa !316
  %i.od = getelementptr inbounds nuw i8, ptr %.15288.us.i.i, i64 48
  %i.oe = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx212.us.i.i.2 = shl i64 %i.oe, 4
  %i.of = getelementptr inbounds nuw i8, ptr %i.ob, i64 %.idx212.us.i.i.2 ; 2 uses
  %i.og = load <2 x i64>, ptr %i.of, align 1, !tbaa !316
  store <2 x i64> %i.og, ptr %i.od, align 1, !tbaa !316
  %i.oh = getelementptr inbounds nuw i8, ptr %.15288.us.i.i, i64 64 ; 3 uses
  %i.oi = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx212.us.i.i.3 = shl i64 %i.oi, 4
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 %.idx212.us.i.i.3 ; 2 uses
  %niter198.next.3 = add i32 %niter198, 4         ; 2 uses
  %niter198.ncmp.3 = icmp eq i32 %niter198.next.3, %unroll_iter197
  br i1 %niter198.ncmp.3, label %.loopexit242.us.i.loopexit.i.unr-lcssa, label %.lr.ph291.us.i.i, !llvm.loop !2419

.loopexit242.us.i.loopexit.i.unr-lcssa:           ; preds = %.lr.ph291.us.i.i
  br i1 %lcmp.mod193.not, label %.loopexit242.us.i.loopexit.i, label %.lr.ph291.us.i.i.epil.preheader

.lr.ph291.us.i.i.epil.preheader:                  ; preds = %.loopexit242.us.i.loopexit.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit226.us.i.i
  %.0195289.us.i.i.epil.init = phi ptr [ %i.nt, %_ZN4ncnn3MatD2Ev.exit226.us.i.i ], [ %i.oj, %.loopexit242.us.i.loopexit.i.unr-lcssa ]
  %.15288.us.i.i.epil.init = phi ptr [ %.14304.us.i.i, %_ZN4ncnn3MatD2Ev.exit226.us.i.i ], [ %i.oh, %.loopexit242.us.i.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod196)
  br label %.lr.ph291.us.i.i.epil

.lr.ph291.us.i.i.epil:                            ; preds = %.lr.ph291.us.i.i.epil, %.lr.ph291.us.i.i.epil.preheader
  %.0195289.us.i.i.epil = phi ptr [ %i.on, %.lr.ph291.us.i.i.epil ], [ %.0195289.us.i.i.epil.init, %.lr.ph291.us.i.i.epil.preheader ] ; 2 uses
  %.15288.us.i.i.epil = phi ptr [ %i.ol, %.lr.ph291.us.i.i.epil ], [ %.15288.us.i.i.epil.init, %.lr.ph291.us.i.i.epil.preheader ] ; 2 uses
  %epil.iter192 = phi i32 [ %epil.iter192.next, %.lr.ph291.us.i.i.epil ], [ 0, %.lr.ph291.us.i.i.epil.preheader ]
  %i.ok = load <2 x i64>, ptr %.0195289.us.i.i.epil, align 1, !tbaa !316
  store <2 x i64> %i.ok, ptr %.15288.us.i.i.epil, align 1, !tbaa !316
  %i.ol = getelementptr inbounds nuw i8, ptr %.15288.us.i.i.epil, i64 16 ; 2 uses
  %i.om = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx212.us.i.i.epil = shl i64 %i.om, 4
  %i.on = getelementptr inbounds nuw i8, ptr %.0195289.us.i.i.epil, i64 %.idx212.us.i.i.epil
  %epil.iter192.next = add i32 %epil.iter192, 1   ; 2 uses
  %epil.iter192.cmp.not = icmp eq i32 %epil.iter192.next, %xtraiter191
  br i1 %epil.iter192.cmp.not, label %.loopexit242.us.i.loopexit.i, label %.lr.ph291.us.i.i.epil, !llvm.loop !2420

.loopexit242.us.i.loopexit.i:                     ; preds = %.lr.ph291.us.i.i.epil, %.loopexit242.us.i.loopexit.i.unr-lcssa
  %.lcssa164 = phi ptr [ %i.oh, %.loopexit242.us.i.loopexit.i.unr-lcssa ], [ %i.ol, %.lr.ph291.us.i.i.epil ]
  %.lcssa163 = phi i64 [ %i.oi, %.loopexit242.us.i.loopexit.i.unr-lcssa ], [ %i.om, %.lr.ph291.us.i.i.epil ]
  %indvars.iv.next368.i.i = add nuw nsw i64 %indvars.iv367.i.i, 1 ; 2 uses
  %exitcond371.not.i.i = icmp eq i64 %indvars.iv.next368.i.i, %wide.trip.count370.i.i
  br i1 %exitcond371.not.i.i, label %_ZN4ncnn3MatD2Ev.exit, label %_ZN4ncnn3MatD2Ev.exit226.us.i.i, !llvm.loop !2421

.lr.ph305.split.split.us.split.i.i:               ; preds = %.lr.ph305.i.i
  %i.oo = icmp sgt i32 %.sroa.speculated, 3
  br i1 %i.oo, label %_ZN4ncnn3MatD2Ev.exit225.us308.preheader.i.i, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit225.us308.preheader.i.i:     ; preds = %.lr.ph305.split.split.us.split.i.i
  %i.op = zext nneg i32 %.1200.lcssa.i.i to i64
  %i.oq = sext i32 %i.v to i64
  %wide.trip.count362.i.i = zext i32 %.sroa.speculated64 to i64
  %.pre.i.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !2422
  %i.or = add nsw i32 %i.nf, -1
  %xtraiter183 = and i32 %i.nf, 3                 ; 3 uses
  %i.os = icmp ult i32 %i.or, 3
  %unroll_iter189 = and i32 %i.nf, 536870908
  %lcmp.mod185.not = icmp eq i32 %xtraiter183, 0
  %lcmp.mod188 = icmp ne i32 %xtraiter183, 0
  br label %_ZN4ncnn3MatD2Ev.exit225.us308.i.i

_ZN4ncnn3MatD2Ev.exit225.us308.i.i:               ; preds = %..loopexit241_crit_edge.us324.i.i, %_ZN4ncnn3MatD2Ev.exit225.us308.preheader.i.i
  %i.ot = phi i64 [ %.pre.i.i, %_ZN4ncnn3MatD2Ev.exit225.us308.preheader.i.i ], [ %.lcssa161, %..loopexit241_crit_edge.us324.i.i ]
  %indvars.iv359.i.i = phi i64 [ %i.op, %_ZN4ncnn3MatD2Ev.exit225.us308.preheader.i.i ], [ %indvars.iv.next360.i.i, %..loopexit241_crit_edge.us324.i.i ] ; 2 uses
  %.14304.us306.i.i = phi ptr [ %.7.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit225.us308.preheader.i.i ], [ %.lcssa162, %..loopexit241_crit_edge.us324.i.i ] ; 2 uses
  %i.ou = load ptr, ptr %9, align 8, !tbaa !18, !noalias !2422
  %i.ov = mul i64 %i.ot, %i.ne
  %i.ow = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !2422
  %i.ox = mul i64 %i.ov, %i.ow
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.ox
  %i.oz = add nsw i64 %indvars.iv359.i.i, %i.oq
  %.idx380.i.i = shl nsw i64 %i.oz, 3
  %i.pa = getelementptr inbounds i8, ptr %i.oy, i64 %.idx380.i.i ; 2 uses
  br i1 %i.os, label %.epil.preheader182, label %_ZN4ncnn3MatD2Ev.exit225.us308.i.i.new

_ZN4ncnn3MatD2Ev.exit225.us308.i.i.new:           ; preds = %_ZN4ncnn3MatD2Ev.exit225.us308.i.i, %_ZN4ncnn3MatD2Ev.exit225.us308.i.i.new
  %.0193294.us310.i.i = phi ptr [ %i.pq, %_ZN4ncnn3MatD2Ev.exit225.us308.i.i.new ], [ %i.pa, %_ZN4ncnn3MatD2Ev.exit225.us308.i.i ] ; 2 uses
  %.17293.us311.i.i = phi ptr [ %i.po, %_ZN4ncnn3MatD2Ev.exit225.us308.i.i.new ], [ %.14304.us306.i.i, %_ZN4ncnn3MatD2Ev.exit225.us308.i.i ] ; 5 uses
  %niter190 = phi i32 [ %niter190.next.3, %_ZN4ncnn3MatD2Ev.exit225.us308.i.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit225.us308.i.i ]
  %i.pb = load i64, ptr %.0193294.us310.i.i, align 1, !tbaa !316
  store i64 %i.pb, ptr %.17293.us311.i.i, align 1, !tbaa !316
  %i.pc = getelementptr inbounds nuw i8, ptr %.17293.us311.i.i, i64 8
  %i.pd = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.us312.i.i = shl i64 %i.pd, 3
  %i.pe = getelementptr inbounds nuw i8, ptr %.0193294.us310.i.i, i64 %.idx.us312.i.i ; 2 uses
  %i.pf = load i64, ptr %i.pe, align 1, !tbaa !316
  store i64 %i.pf, ptr %i.pc, align 1, !tbaa !316
  %i.pg = getelementptr inbounds nuw i8, ptr %.17293.us311.i.i, i64 16
  %i.ph = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.us312.i.i.1 = shl i64 %i.ph, 3
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pe, i64 %.idx.us312.i.i.1 ; 2 uses
  %i.pj = load i64, ptr %i.pi, align 1, !tbaa !316
  store i64 %i.pj, ptr %i.pg, align 1, !tbaa !316
  %i.pk = getelementptr inbounds nuw i8, ptr %.17293.us311.i.i, i64 24
  %i.pl = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx.us312.i.i.2 = shl i64 %i.pl, 3
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pi, i64 %.idx.us312.i.i.2 ; 2 uses
  %i.pn = load i64, ptr %i.pm, align 1, !tbaa !316
  store i64 %i.pn, ptr %i.pk, align 1, !tbaa !316
  %i.po = getelementptr inbounds nuw i8, ptr %.17293.us311.i.i, i64 32 ; 3 uses
  %i.pp = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx.us312.i.i.3 = shl i64 %i.pp, 3
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 %.idx.us312.i.i.3 ; 2 uses
  %niter190.next.3 = add i32 %niter190, 4         ; 2 uses
  %niter190.ncmp.3 = icmp eq i32 %niter190.next.3, %unroll_iter189
  br i1 %niter190.ncmp.3, label %..loopexit241_crit_edge.us324.i.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit225.us308.i.i.new, !llvm.loop !2425

..loopexit241_crit_edge.us324.i.i.unr-lcssa:      ; preds = %_ZN4ncnn3MatD2Ev.exit225.us308.i.i.new
  br i1 %lcmp.mod185.not, label %..loopexit241_crit_edge.us324.i.i, label %.epil.preheader182

.epil.preheader182:                               ; preds = %..loopexit241_crit_edge.us324.i.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit225.us308.i.i
  %.0193294.us310.i.i.epil.init = phi ptr [ %i.pa, %_ZN4ncnn3MatD2Ev.exit225.us308.i.i ], [ %i.pq, %..loopexit241_crit_edge.us324.i.i.unr-lcssa ]
  %.17293.us311.i.i.epil.init = phi ptr [ %.14304.us306.i.i, %_ZN4ncnn3MatD2Ev.exit225.us308.i.i ], [ %i.po, %..loopexit241_crit_edge.us324.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod188)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader182
  %.0193294.us310.i.i.epil = phi ptr [ %.0193294.us310.i.i.epil.init, %.epil.preheader182 ], [ %i.pu, %bb.d ] ; 2 uses
  %.17293.us311.i.i.epil = phi ptr [ %.17293.us311.i.i.epil.init, %.epil.preheader182 ], [ %i.ps, %bb.d ] ; 2 uses
  %epil.iter184 = phi i32 [ 0, %.epil.preheader182 ], [ %epil.iter184.next, %bb.d ]
  %i.pr = load i64, ptr %.0193294.us310.i.i.epil, align 1, !tbaa !316
  store i64 %i.pr, ptr %.17293.us311.i.i.epil, align 1, !tbaa !316
  %i.ps = getelementptr inbounds nuw i8, ptr %.17293.us311.i.i.epil, i64 8 ; 2 uses
  %i.pt = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx.us312.i.i.epil = shl i64 %i.pt, 3
  %i.pu = getelementptr inbounds nuw i8, ptr %.0193294.us310.i.i.epil, i64 %.idx.us312.i.i.epil
  %epil.iter184.next = add i32 %epil.iter184, 1   ; 2 uses
  %epil.iter184.cmp.not = icmp eq i32 %epil.iter184.next, %xtraiter183
  br i1 %epil.iter184.cmp.not, label %..loopexit241_crit_edge.us324.i.i, label %bb.d, !llvm.loop !2426

..loopexit241_crit_edge.us324.i.i:                ; preds = %bb.d, %..loopexit241_crit_edge.us324.i.i.unr-lcssa
  %.lcssa162 = phi ptr [ %i.po, %..loopexit241_crit_edge.us324.i.i.unr-lcssa ], [ %i.ps, %bb.d ]
  %.lcssa161 = phi i64 [ %i.pp, %..loopexit241_crit_edge.us324.i.i.unr-lcssa ], [ %i.pt, %bb.d ]
  %indvars.iv.next360.i.i = add nuw nsw i64 %indvars.iv359.i.i, 1 ; 2 uses
  %exitcond363.not.i.i = icmp eq i64 %indvars.iv.next360.i.i, %wide.trip.count362.i.i
  br i1 %exitcond363.not.i.i, label %_ZN4ncnn3MatD2Ev.exit, label %_ZN4ncnn3MatD2Ev.exit225.us308.i.i, !llvm.loop !2421

.lr.ph305.split.split.split.i.i:                  ; preds = %.lr.ph305.i.i
  %i.pv = icmp slt i32 %.sroa.speculated, 1
  %i.pw = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !2427 ; 10 uses
  br i1 %i.pv, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph305.split.split.split.split.i.i
end_hunk_4
