Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx?download=true
inline.NumInlined: 392
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 121
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 259
begin_hunk_0_@_ZN4ncnnL41conv3x3s1_winograd63_transform_input_tileERKNS_3MatERS0_iiiii.omp_outlined:bb.a
  %i.jd = fadd fast <8 x float> %i.jc, %.6452     ; 2 uses
  %i.je = fmul fast <8 x float> %.5, splat (float 2.000000e+00)
  %i.jf = fadd fast <8 x float> %i.ix, %i.je
  %i.jg = fmul fast <8 x float> %.6, splat (float 5.000000e-01)
  %i.jh = fadd fast <8 x float> %i.jf, %i.jg      ; 2 uses
  %i.ji = fsub fast <8 x float> %.5439, %.5427
  %i.jj = fmul fast <8 x float> %i.ji, splat (float 5.250000e+00)
  %i.jk = fsub fast <8 x float> %i.jj, %.6452
  %i.jl = fadd fast <8 x float> %i.jk, %.2
  %i.jm = fadd fast <8 x float> %i.ir, %i.io
  %i.jn = fsub fast <8 x float> %i.io, %i.ir
  %i.jo = fadd fast <8 x float> %i.ja, %i.iv
  %i.jp = fsub fast <8 x float> %i.iv, %i.ja
  %i.jq = fadd fast <8 x float> %i.jh, %i.jd
  %i.jr = fsub fast <8 x float> %i.jd, %i.jh
  %i.js = fsub fast <8 x float> %.5433, %.6
  %i.jt = fmul fast <8 x float> %i.js, splat (float 5.250000e+00)
  %i.ju = fadd fast <8 x float> %i.jt, %.4243
  %i.jv = fsub fast <8 x float> %i.ju, %.5
  %i.jw = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %indvars.iv
  store <8 x float> %i.jl, ptr %i.jw, align 32, !tbaa !316
  %i.jx = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %indvars.iv
  store <8 x float> %i.jm, ptr %i.jx, align 32, !tbaa !316
  %i.jy = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %indvars.iv
  store <8 x float> %i.jn, ptr %i.jy, align 32, !tbaa !316
  %i.jz = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %indvars.iv
  store <8 x float> %i.jo, ptr %i.jz, align 32, !tbaa !316
  %i.ka = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv
  store <8 x float> %i.jp, ptr %i.ka, align 32, !tbaa !316
  %i.kb = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %indvars.iv
  store <8 x float> %i.jq, ptr %i.kb, align 32, !tbaa !316
  %i.kc = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %indvars.iv
  store <8 x float> %i.jr, ptr %i.kc, align 32, !tbaa !316
  %i.kd = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %indvars.iv
  store <8 x float> %i.jv, ptr %i.kd, align 32, !tbaa !316
  %i.ke = getelementptr inbounds [4 x i8], ptr %.0233473, i64 %i.bk
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !1301

bb.ak:                                            ; preds = %bb.al
  %indvars.iv.next495 = add nuw nsw i64 %indvars.iv494, 1 ; 2 uses
  %i.kf = sext i32 %i.mh to i64
  %i.kg = icmp slt i64 %indvars.iv.next495, %i.kf
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
  %i.le = fadd fast <8 x float> %i.ld, %i.ku
  %i.lf = fmul fast <8 x float> %i.kq, splat (float -1.250000e+00) ; 2 uses
  %i.lg = fadd fast <8 x float> %i.le, %i.lf      ; 2 uses
  %i.lh = fmul fast <8 x float> %i.kk, splat (float 5.000000e-01)
  %i.li = fmul fast <8 x float> %i.ko, splat (float -2.500000e+00) ; 2 uses
  %i.lj = fadd fast <8 x float> %i.lh, %i.li
  %i.lk = fmul fast <8 x float> %i.ks, splat (float 2.000000e+00)
  %i.ll = fadd fast <8 x float> %i.lk, %i.lj      ; 2 uses
  %i.lm = fadd fast <8 x float> %i.lf, %i.km
  %i.ln = fmul fast <8 x float> %i.lm, splat (float 4.000000e+00)
  %i.lo = fadd fast <8 x float> %i.ln, %i.ku      ; 2 uses
  %i.lp = fmul fast <8 x float> %i.kk, splat (float 2.000000e+00)
  %i.lq = fadd fast <8 x float> %i.lp, %i.li
  %i.lr = fmul fast <8 x float> %i.ks, splat (float 5.000000e-01)
  %i.ls = fadd fast <8 x float> %i.lr, %i.lq      ; 2 uses
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
  %.095 = phi i32 [ %i.k, %_ZN4ncnn3MatD2Ev.exit36.lr.ph ], [ %i.act, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
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
  %i.bf = lshr i32 %.sroa.speculated, 3
  %i.bg = sdiv i32 %i.x, 4
  %i.bh = sext i32 %i.bg to i64
  %i.bi = lshr i32 %.sroa.speculated, 2
  %i.bj = sext i32 %i.x to i64
  %i.bk = sext i32 %i.v to i64                    ; 3 uses
  %i.bl = zext nneg i32 %.sroa.speculated64 to i64 ; 7 uses
  switch i32 %i.bb, label %.loopexit321.i.preheader.i [
    i32 8, label %.lr.ph339.i.split.us.i
    i32 4, label %.lr.ph339.i.split.us26.i
    i32 1, label %.lr.ph339.i.split.us36.i
  ]

.loopexit321.i.preheader.i:                       ; preds = %.lr.ph339.i.i
  %16 = icmp samesign ugt i32 %.sroa.speculated64, 23
  %umin84.i = zext i1 %16 to i64                  ; 2 uses
  %i.bm = call i64 @llvm.usub.sat.i64(i64 %i.bl, i64 23)
  %17 = sub nsw i64 %i.bm, %umin84.i
  %18 = udiv i64 %17, 12
  %19 = add nuw nsw i64 %18, %umin84.i
  %20 = mul i64 %19, 12
  %21 = add i64 %20, 12
  br label %.preheader320.loopexit.i.i

.lr.ph339.i.split.us.i:                           ; preds = %.lr.ph339.i.i
  %i.bn = icmp sgt i32 %.sroa.speculated, 7
  br i1 %i.bn, label %_ZN4ncnn3MatD2Ev.exit509.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit509.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit509.i.us.preheader.i:        ; preds = %.lr.ph339.i.split.us.i
  %22 = icmp samesign ugt i32 %.sroa.speculated64, 23
  %umin82.i = zext i1 %22 to i64                  ; 2 uses
  %i.bo = call i64 @llvm.usub.sat.i64(i64 %i.bl, i64 23)
  %23 = sub nsw i64 %i.bo, %umin82.i
  %24 = udiv i64 %23, 12
  %25 = add nuw nsw i64 %24, %umin82.i
  %26 = mul i64 %25, 12
  %27 = add i64 %26, 12
  br label %.preheader320.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit509.i.us.us.preheader.i:     ; preds = %.lr.ph339.i.split.us.i
  %.pre87.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1308
  br label %_ZN4ncnn3MatD2Ev.exit509.i.us.us.i

_ZN4ncnn3MatD2Ev.exit509.i.us.us.i:               ; preds = %.loopexit321.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.preheader.i
  %i.bp = phi i64 [ %i.eq, %.loopexit321.i.loopexit.us.us.i ], [ %.pre87.i, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.preheader.i ]
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.loopexit321.i.loopexit.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.preheader.i ] ; 3 uses
  %.0445338.i.us.us.i = phi ptr [ %i.ep, %.loopexit321.i.loopexit.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.preheader.i ]
  %i.bq = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1308
  %i.br = mul i64 %i.bp, %i.be
  %i.bs = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1308
  %i.bt = mul i64 %i.br, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bt
  %i.bv = add nsw i64 %indvars.iv.i.us.us.i, %i.bk
  %.idx482.i.us.us.i = shl nsw i64 %i.bv, 5
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 %.idx482.i.us.us.i
  br label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %.lr.ph.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.i
  %.1326.i.us.us.i = phi ptr [ %i.ep, %.lr.ph.i.us.us.i ], [ %.0445338.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.i ] ; 13 uses
  %.0451325.i.us.us.i = phi ptr [ %i.er, %.lr.ph.i.us.us.i ], [ %i.bw, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.i ] ; 13 uses
  %.0452324.i.us.us.i = phi i32 [ %i.es, %.lr.ph.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.i ]
  %i.bx = load <8 x float>, ptr %.0451325.i.us.us.i, align 32, !tbaa !316 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 32
  %i.bz = load <8 x float>, ptr %i.by, align 32, !tbaa !316 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 64
  %i.cb = load <8 x float>, ptr %i.ca, align 32, !tbaa !316 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 96
  %i.cd = load <8 x float>, ptr %i.cc, align 32, !tbaa !316 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 128
  %i.cf = load <8 x float>, ptr %i.ce, align 32, !tbaa !316 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 160
  %i.ch = load <8 x float>, ptr %i.cg, align 32, !tbaa !316 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 192
  %i.cj = load <8 x float>, ptr %i.ci, align 32, !tbaa !316 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 224
  %i.cl = load <8 x float>, ptr %i.ck, align 32, !tbaa !316 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 256
  %i.cn = load <8 x float>, ptr %i.cm, align 32, !tbaa !316 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 288
  %i.cp = load <8 x float>, ptr %i.co, align 32, !tbaa !316 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 320
  %i.cr = load <8 x float>, ptr %i.cq, align 32, !tbaa !316 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 352
  %i.ct = load <8 x float>, ptr %i.cs, align 32, !tbaa !316 ; 2 uses
  %i.cu = shufflevector <8 x float> %i.bx, <8 x float> %i.bz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cv = shufflevector <8 x float> %i.bx, <8 x float> %i.bz, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cw = shufflevector <8 x float> %i.cb, <8 x float> %i.cd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cx = shufflevector <8 x float> %i.cb, <8 x float> %i.cd, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cy = shufflevector <8 x float> %i.cf, <8 x float> %i.ch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cz = shufflevector <8 x float> %i.cf, <8 x float> %i.ch, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.da = shufflevector <8 x float> %i.cj, <8 x float> %i.cl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.db = shufflevector <8 x float> %i.cj, <8 x float> %i.cl, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dc = shufflevector <8 x float> %i.cn, <8 x float> %i.cp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.dd = shufflevector <8 x float> %i.cn, <8 x float> %i.cp, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.de = shufflevector <8 x float> %i.cr, <8 x float> %i.ct, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.df = shufflevector <8 x float> %i.cr, <8 x float> %i.ct, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dg = shufflevector <8 x float> %i.cu, <8 x float> %i.cw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.dh = shufflevector <8 x float> %i.cu, <8 x float> %i.cw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.di = shufflevector <8 x float> %i.cv, <8 x float> %i.cx, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.dj = shufflevector <8 x float> %i.cv, <8 x float> %i.cx, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.dk = shufflevector <8 x float> %i.cy, <8 x float> %i.da, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.dl = shufflevector <8 x float> %i.cy, <8 x float> %i.da, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.dm = shufflevector <8 x float> %i.cz, <8 x float> %i.db, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.dn = shufflevector <8 x float> %i.cz, <8 x float> %i.db, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.do = shufflevector <8 x float> %i.dc, <8 x float> %i.de, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.dp = shufflevector <8 x float> %i.dc, <8 x float> %i.de, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.dq = shufflevector <8 x float> %i.dd, <8 x float> %i.df, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.dr = shufflevector <8 x float> %i.dd, <8 x float> %i.df, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ds = shufflevector <8 x float> %i.dg, <8 x float> %i.dk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dt = shufflevector <8 x float> %i.do, <8 x float> %i.dh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.du = shufflevector <8 x float> %i.dl, <8 x float> %i.dp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dv = shufflevector <8 x float> %i.di, <8 x float> %i.dm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dw = shufflevector <8 x float> %i.dq, <8 x float> %i.dj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dx = shufflevector <8 x float> %i.dn, <8 x float> %i.dr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dy = shufflevector <8 x float> %i.dg, <8 x float> %i.dk, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dz = shufflevector <8 x float> %i.do, <8 x float> %i.dh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ea = shufflevector <8 x float> %i.dl, <8 x float> %i.dp, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.eb = shufflevector <8 x float> %i.di, <8 x float> %i.dm, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ec = shufflevector <8 x float> %i.dq, <8 x float> %i.dj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ed = shufflevector <8 x float> %i.dn, <8 x float> %i.dr, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.ds, ptr %.1326.i.us.us.i, align 32, !tbaa !316
  %i.ee = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 32
  store <8 x float> %i.dt, ptr %i.ee, align 32, !tbaa !316
  %i.ef = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 64
  store <8 x float> %i.du, ptr %i.ef, align 32, !tbaa !316
  %i.eg = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 96
  store <8 x float> %i.dv, ptr %i.eg, align 32, !tbaa !316
  %i.eh = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 128
  store <8 x float> %i.dw, ptr %i.eh, align 32, !tbaa !316
  %i.ei = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 160
  store <8 x float> %i.dx, ptr %i.ei, align 32, !tbaa !316
  %i.ej = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 192
  store <8 x float> %i.dy, ptr %i.ej, align 32, !tbaa !316
  %i.ek = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 224
  store <8 x float> %i.dz, ptr %i.ek, align 32, !tbaa !316
  %i.el = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 256
  store <8 x float> %i.ea, ptr %i.el, align 32, !tbaa !316
  %i.em = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 288
  store <8 x float> %i.eb, ptr %i.em, align 32, !tbaa !316
  %i.en = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 320
  store <8 x float> %i.ec, ptr %i.en, align 32, !tbaa !316
  %i.eo = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 352
  store <8 x float> %i.ed, ptr %i.eo, align 32, !tbaa !316
  %i.ep = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 384 ; 3 uses
  %i.eq = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx481.i.us.us.i = shl i64 %i.eq, 5
  %i.er = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 %.idx481.i.us.us.i
  %i.es = add nuw nsw i32 %.0452324.i.us.us.i, 1  ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i32 %i.es, %i.bf
  br i1 %exitcond.not.i.us.us.i, label %.loopexit321.i.loopexit.us.us.i, label %.lr.ph.i.us.us.i, !llvm.loop !1311

.loopexit321.i.loopexit.us.us.i:                  ; preds = %.lr.ph.i.us.us.i
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 12 ; 2 uses
  %i.et = add nuw nsw i64 %indvars.iv.i.us.us.i, 23
  %i.eu = icmp samesign ult i64 %i.et, %i.bl
  br i1 %i.eu, label %_ZN4ncnn3MatD2Ev.exit509.i.us.us.i, label %.preheader320.loopexit.i.i, !llvm.loop !1312

.lr.ph339.i.split.us26.i:                         ; preds = %.lr.ph339.i.i
  %i.ev = icmp sgt i32 %.sroa.speculated, 3
  br i1 %i.ev, label %_ZN4ncnn3MatD2Ev.exit508.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit508.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit508.i.us.preheader.i:        ; preds = %.lr.ph339.i.split.us26.i
  %28 = icmp samesign ugt i32 %.sroa.speculated64, 23
  %umin80.i = zext i1 %28 to i64                  ; 2 uses
  %i.ew = call i64 @llvm.usub.sat.i64(i64 %i.bl, i64 23)
  %29 = sub nsw i64 %i.ew, %umin80.i
  %30 = udiv i64 %29, 12
  %31 = add nuw nsw i64 %30, %umin80.i
  %32 = mul i64 %31, 12
  %33 = add i64 %32, 12
  br label %.preheader320.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit508.i.us.us.preheader.i:     ; preds = %.lr.ph339.i.split.us26.i
  %.pre86.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1313
  br label %_ZN4ncnn3MatD2Ev.exit508.i.us.us.i

_ZN4ncnn3MatD2Ev.exit508.i.us.us.i:               ; preds = %.loopexit321.i.loopexit9.us.us.i, %_ZN4ncnn3MatD2Ev.exit508.i.us.us.preheader.i
  %i.ex = phi i64 [ %i.hm, %.loopexit321.i.loopexit9.us.us.i ], [ %.pre86.i, %_ZN4ncnn3MatD2Ev.exit508.i.us.us.preheader.i ]
  %indvars.iv.i.us27.us.i = phi i64 [ %indvars.iv.next.i.us31.us.i, %.loopexit321.i.loopexit9.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit508.i.us.us.preheader.i ] ; 3 uses
  %.0445338.i.us28.us.i = phi ptr [ %i.hl, %.loopexit321.i.loopexit9.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit508.i.us.us.preheader.i ]
  %i.ey = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1313
  %i.ez = mul i64 %i.ex, %i.bh
  %i.fa = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1313
  %i.fb = mul i64 %i.ez, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fb
  %i.fd = add nsw i64 %indvars.iv.i.us27.us.i, %i.bk
  %.idx483.i.us.us.i = shl nsw i64 %i.fd, 4
  %i.fe = getelementptr inbounds i8, ptr %i.fc, i64 %.idx483.i.us.us.i
  br label %.lr.ph330.i.us.us.i

.lr.ph330.i.us.us.i:                              ; preds = %.lr.ph330.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit508.i.us.us.i
  %.3329.i.us.us.i = phi ptr [ %i.hl, %.lr.ph330.i.us.us.i ], [ %.0445338.i.us28.us.i, %_ZN4ncnn3MatD2Ev.exit508.i.us.us.i ] ; 13 uses
  %.0459328.i.us.us.i = phi ptr [ %i.hn, %.lr.ph330.i.us.us.i ], [ %i.fe, %_ZN4ncnn3MatD2Ev.exit508.i.us.us.i ] ; 13 uses
  %.0460327.i.us.us.i = phi i32 [ %i.ho, %.lr.ph330.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit508.i.us.us.i ]
  %i.ff = load <4 x float>, ptr %.0459328.i.us.us.i, align 16, !tbaa !316 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 16
  %i.fh = load <4 x float>, ptr %i.fg, align 16, !tbaa !316 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 32
  %i.fj = load <4 x float>, ptr %i.fi, align 16, !tbaa !316 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 48
  %i.fl = load <4 x float>, ptr %i.fk, align 16, !tbaa !316 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 64
  %i.fn = load <4 x float>, ptr %i.fm, align 16, !tbaa !316 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 80
  %i.fp = load <4 x float>, ptr %i.fo, align 16, !tbaa !316 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 96
  %i.fr = load <4 x float>, ptr %i.fq, align 16, !tbaa !316 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 112
  %i.ft = load <4 x float>, ptr %i.fs, align 16, !tbaa !316 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 128
  %i.fv = load <4 x float>, ptr %i.fu, align 16, !tbaa !316 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 144
  %i.fx = load <4 x float>, ptr %i.fw, align 16, !tbaa !316 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 160
  %i.fz = load <4 x float>, ptr %i.fy, align 16, !tbaa !316 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 176
  %i.gb = load <4 x float>, ptr %i.ga, align 16, !tbaa !316 ; 2 uses
  %i.gc = shufflevector <4 x float> %i.ff, <4 x float> %i.fh, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.gd = shufflevector <4 x float> %i.fj, <4 x float> %i.fl, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ge = shufflevector <4 x float> %i.ff, <4 x float> %i.fh, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.gf = shufflevector <4 x float> %i.fj, <4 x float> %i.fl, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.gg = shufflevector <4 x float> %i.gc, <4 x float> %i.gd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gh = shufflevector <4 x float> %i.gd, <4 x float> %i.gc, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.gi = shufflevector <4 x float> %i.ge, <4 x float> %i.gf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gj = shufflevector <4 x float> %i.gf, <4 x float> %i.ge, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.gk = shufflevector <4 x float> %i.fn, <4 x float> %i.fp, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.gl = shufflevector <4 x float> %i.fr, <4 x float> %i.ft, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.gm = shufflevector <4 x float> %i.fn, <4 x float> %i.fp, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.gn = shufflevector <4 x float> %i.fr, <4 x float> %i.ft, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.go = shufflevector <4 x float> %i.gk, <4 x float> %i.gl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gp = shufflevector <4 x float> %i.gl, <4 x float> %i.gk, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.gq = shufflevector <4 x float> %i.gm, <4 x float> %i.gn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gr = shufflevector <4 x float> %i.gn, <4 x float> %i.gm, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.gs = shufflevector <4 x float> %i.fv, <4 x float> %i.fx, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.gt = shufflevector <4 x float> %i.fz, <4 x float> %i.gb, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.gu = shufflevector <4 x float> %i.fv, <4 x float> %i.fx, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.gv = shufflevector <4 x float> %i.fz, <4 x float> %i.gb, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.gw = shufflevector <4 x float> %i.gs, <4 x float> %i.gt, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gx = shufflevector <4 x float> %i.gt, <4 x float> %i.gs, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.gy = shufflevector <4 x float> %i.gu, <4 x float> %i.gv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gz = shufflevector <4 x float> %i.gv, <4 x float> %i.gu, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.gg, ptr %.3329.i.us.us.i, align 16, !tbaa !316
  %i.ha = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 16
  store <4 x float> %i.go, ptr %i.ha, align 16, !tbaa !316
  %i.hb = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 32
  store <4 x float> %i.gw, ptr %i.hb, align 16, !tbaa !316
  %i.hc = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 48
  store <4 x float> %i.gh, ptr %i.hc, align 16, !tbaa !316
  %i.hd = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 64
  store <4 x float> %i.gp, ptr %i.hd, align 16, !tbaa !316
  %i.he = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 80
  store <4 x float> %i.gx, ptr %i.he, align 16, !tbaa !316
  %i.hf = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 96
  store <4 x float> %i.gi, ptr %i.hf, align 16, !tbaa !316
  %i.hg = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 112
  store <4 x float> %i.gq, ptr %i.hg, align 16, !tbaa !316
  %i.hh = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 128
  store <4 x float> %i.gy, ptr %i.hh, align 16, !tbaa !316
  %i.hi = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 144
  store <4 x float> %i.gj, ptr %i.hi, align 16, !tbaa !316
  %i.hj = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 160
  store <4 x float> %i.gr, ptr %i.hj, align 16, !tbaa !316
  %i.hk = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 176
  store <4 x float> %i.gz, ptr %i.hk, align 16, !tbaa !316
  %i.hl = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 192 ; 3 uses
  %i.hm = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx480.i.us.us.i = shl i64 %i.hm, 4
  %i.hn = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 %.idx480.i.us.us.i
  %i.ho = add nuw nsw i32 %.0460327.i.us.us.i, 1  ; 2 uses
  %exitcond438.not.i.us.us.i = icmp eq i32 %i.ho, %i.bi
  br i1 %exitcond438.not.i.us.us.i, label %.loopexit321.i.loopexit9.us.us.i, label %.lr.ph330.i.us.us.i, !llvm.loop !1316

.loopexit321.i.loopexit9.us.us.i:                 ; preds = %.lr.ph330.i.us.us.i
  %indvars.iv.next.i.us31.us.i = add nuw nsw i64 %indvars.iv.i.us27.us.i, 12 ; 2 uses
  %i.hp = add nuw nsw i64 %indvars.iv.i.us27.us.i, 23
  %i.hq = icmp samesign ult i64 %i.hp, %i.bl
  br i1 %i.hq, label %_ZN4ncnn3MatD2Ev.exit508.i.us.us.i, label %.preheader320.loopexit.i.i, !llvm.loop !1312

.lr.ph339.i.split.us36.i:                         ; preds = %.lr.ph339.i.i
  %i.hr = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.hr, label %_ZN4ncnn3MatD2Ev.exit507.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit507.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit507.i.us.preheader.i:        ; preds = %.lr.ph339.i.split.us36.i
  %34 = icmp samesign ugt i32 %.sroa.speculated64, 23
  %umin.i = zext i1 %34 to i64                    ; 2 uses
  %i.hs = call i64 @llvm.usub.sat.i64(i64 %i.bl, i64 23)
  %35 = sub nsw i64 %i.hs, %umin.i
  %36 = udiv i64 %35, 12
  %37 = add nuw nsw i64 %36, %umin.i
  %38 = mul i64 %37, 12
  %39 = add i64 %38, 12
  br label %.preheader320.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit507.i.us.us.preheader.i:     ; preds = %.lr.ph339.i.split.us36.i
  %.pre.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1317
  %xtraiter = and i32 %.sroa.speculated, 1
  %i.ht = icmp eq i32 %.sroa.speculated, 1
  %unroll_iter = and i32 %.sroa.speculated, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod207 = trunc i32 %.sroa.speculated to i1
  br label %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i

_ZN4ncnn3MatD2Ev.exit507.i.us.us.i:               ; preds = %.loopexit321.i.loopexit10.us.us.i, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.preheader.i
  %i.hu = phi i64 [ %.lcssa, %.loopexit321.i.loopexit10.us.us.i ], [ %.pre.i, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.preheader.i ]
  %indvars.iv.i.us37.us.i = phi i64 [ %indvars.iv.next.i.us41.us.i, %.loopexit321.i.loopexit10.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.preheader.i ] ; 3 uses
  %.0445338.i.us38.us.i = phi ptr [ %.lcssa188, %.loopexit321.i.loopexit10.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.preheader.i ] ; 2 uses
  %i.hv = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1317
  %i.hw = mul i64 %i.hu, %i.bj
  %i.hx = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1317
  %i.hy = mul i64 %i.hw, %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %i.ia = getelementptr [4 x i8], ptr %i.hz, i64 %indvars.iv.i.us37.us.i
  %i.ib = getelementptr [4 x i8], ptr %i.ia, i64 %i.bk ; 2 uses
  br i1 %i.ht, label %.lr.ph335.i.us.us.i.epil.preheader, label %.lr.ph335.i.us.us.i

.lr.ph335.i.us.us.i:                              ; preds = %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i, %.lr.ph335.i.us.us.i
  %.5334.i.us.us.i = phi ptr [ %i.it, %.lr.ph335.i.us.us.i ], [ %.0445338.i.us38.us.i, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i ] ; 7 uses
  %.0461333.i.us.us.i = phi ptr [ %i.iv, %.lr.ph335.i.us.us.i ], [ %i.ib, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i ] ; 4 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph335.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i ]
  %i.ic = load <4 x float>, ptr %.0461333.i.us.us.i, align 1, !tbaa !316
  %i.id = getelementptr inbounds nuw i8, ptr %.0461333.i.us.us.i, i64 16
  %i.ie = load <4 x float>, ptr %i.id, align 1, !tbaa !316
  %i.if = getelementptr inbounds nuw i8, ptr %.0461333.i.us.us.i, i64 32
  %i.ig = load <4 x float>, ptr %i.if, align 1, !tbaa !316
  store <4 x float> %i.ic, ptr %.5334.i.us.us.i, align 1, !tbaa !316
  %i.ih = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i, i64 16
  store <4 x float> %i.ie, ptr %i.ih, align 1, !tbaa !316
  %i.ii = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i, i64 32
  store <4 x float> %i.ig, ptr %i.ii, align 1, !tbaa !316
  %i.ij = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i, i64 48
  %i.ik = load i64, ptr %i.p, align 8, !tbaa !20
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %.0461333.i.us.us.i, i64 %i.ik ; 4 uses
  %i.im = load <4 x float>, ptr %i.il, align 1, !tbaa !316
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.io = load <4 x float>, ptr %i.in, align 1, !tbaa !316
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 32
  %i.iq = load <4 x float>, ptr %i.ip, align 1, !tbaa !316
  store <4 x float> %i.im, ptr %i.ij, align 1, !tbaa !316
  %i.ir = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i, i64 64
  store <4 x float> %i.io, ptr %i.ir, align 1, !tbaa !316
  %i.is = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i, i64 80
  store <4 x float> %i.iq, ptr %i.is, align 1, !tbaa !316
  %i.it = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i, i64 96 ; 3 uses
  %i.iu = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.iu ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit321.i.loopexit10.us.us.i.unr-lcssa, label %.lr.ph335.i.us.us.i, !llvm.loop !1320

.loopexit321.i.loopexit10.us.us.i.unr-lcssa:      ; preds = %.lr.ph335.i.us.us.i
  br i1 %lcmp.mod.not, label %.loopexit321.i.loopexit10.us.us.i, label %.lr.ph335.i.us.us.i.epil.preheader

.lr.ph335.i.us.us.i.epil.preheader:               ; preds = %.loopexit321.i.loopexit10.us.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i
  %.5334.i.us.us.i.epil.init = phi ptr [ %.0445338.i.us38.us.i, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i ], [ %i.it, %.loopexit321.i.loopexit10.us.us.i.unr-lcssa ] ; 4 uses
  %.0461333.i.us.us.i.epil.init = phi ptr [ %i.ib, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i ], [ %i.iv, %.loopexit321.i.loopexit10.us.us.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod207)
  %i.iw = load <4 x float>, ptr %.0461333.i.us.us.i.epil.init, align 1, !tbaa !316
  %i.ix = getelementptr inbounds nuw i8, ptr %.0461333.i.us.us.i.epil.init, i64 16
  %i.iy = load <4 x float>, ptr %i.ix, align 1, !tbaa !316
  %i.iz = getelementptr inbounds nuw i8, ptr %.0461333.i.us.us.i.epil.init, i64 32
  %i.ja = load <4 x float>, ptr %i.iz, align 1, !tbaa !316
  store <4 x float> %i.iw, ptr %.5334.i.us.us.i.epil.init, align 1, !tbaa !316
  %i.jb = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i.epil.init, i64 16
  store <4 x float> %i.iy, ptr %i.jb, align 1, !tbaa !316
  %i.jc = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i.epil.init, i64 32
  store <4 x float> %i.ja, ptr %i.jc, align 1, !tbaa !316
  %i.jd = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i.epil.init, i64 48
  %i.je = load i64, ptr %i.p, align 8, !tbaa !20
  br label %.loopexit321.i.loopexit10.us.us.i

.loopexit321.i.loopexit10.us.us.i:                ; preds = %.loopexit321.i.loopexit10.us.us.i.unr-lcssa, %.lr.ph335.i.us.us.i.epil.preheader
  %.lcssa188 = phi ptr [ %i.it, %.loopexit321.i.loopexit10.us.us.i.unr-lcssa ], [ %i.jd, %.lr.ph335.i.us.us.i.epil.preheader ] ; 2 uses
  %.lcssa = phi i64 [ %i.iu, %.loopexit321.i.loopexit10.us.us.i.unr-lcssa ], [ %i.je, %.lr.ph335.i.us.us.i.epil.preheader ]
  %indvars.iv.next.i.us41.us.i = add nuw nsw i64 %indvars.iv.i.us37.us.i, 12 ; 2 uses
  %i.jf = add nuw nsw i64 %indvars.iv.i.us37.us.i, 23
  %i.jg = icmp samesign ult i64 %i.jf, %i.bl
  br i1 %i.jg, label %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i, label %.preheader320.loopexit.i.i, !llvm.loop !1312

.preheader320.loopexit.i.i:                       ; preds = %.loopexit321.i.loopexit10.us.us.i, %.loopexit321.i.loopexit9.us.us.i, %.loopexit321.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit507.i.us.preheader.i, %_ZN4ncnn3MatD2Ev.exit508.i.us.preheader.i, %_ZN4ncnn3MatD2Ev.exit509.i.us.preheader.i, %.loopexit321.i.preheader.i
  %.us-phi.i = phi ptr [ %i.ao, %_ZN4ncnn3MatD2Ev.exit507.i.us.preheader.i ], [ %i.ao, %.loopexit321.i.preheader.i ], [ %i.ep, %.loopexit321.i.loopexit.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit509.i.us.preheader.i ], [ %i.hl, %.loopexit321.i.loopexit9.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit508.i.us.preheader.i ], [ %.lcssa188, %.loopexit321.i.loopexit10.us.us.i ]
  %.us-phi25.i = phi i64 [ %39, %_ZN4ncnn3MatD2Ev.exit507.i.us.preheader.i ], [ %21, %.loopexit321.i.preheader.i ], [ %indvars.iv.next.i.us.us.i, %.loopexit321.i.loopexit.us.us.i ], [ %27, %_ZN4ncnn3MatD2Ev.exit509.i.us.preheader.i ], [ %indvars.iv.next.i.us31.us.i, %.loopexit321.i.loopexit9.us.us.i ], [ %33, %_ZN4ncnn3MatD2Ev.exit508.i.us.preheader.i ], [ %indvars.iv.next.i.us41.us.i, %.loopexit321.i.loopexit10.us.us.i ]
  %i.jh = trunc nuw nsw i64 %.us-phi25.i to i32
  br label %.preheader320.i.i

.preheader320.i.i:                                ; preds = %.preheader320.loopexit.i.i, %bb.c
  %.0446.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %i.jh, %.preheader320.loopexit.i.i ] ; 3 uses
  %.0445.lcssa.i.i = phi ptr [ %i.ao, %bb.c ], [ %.us-phi.i, %.preheader320.loopexit.i.i ] ; 2 uses
  %i.ji = add nuw nsw i32 %.0446.lcssa.i.i, 7
  %i.jj = icmp slt i32 %i.ji, %.sroa.speculated64
  br i1 %i.jj, label %.lr.ph359.i.i, label %.preheader316.i.i

.lr.ph359.i.i:                                    ; preds = %.preheader320.i.i
  %i.jk = sdiv i32 %i.x, 8
  %i.jl = sext i32 %i.jk to i64
  %i.jm = lshr i32 %.sroa.speculated, 3
  %i.jn = icmp sgt i32 %.sroa.speculated, 7
  %i.jo = sdiv i32 %i.x, 4
  %i.jp = sext i32 %i.jo to i64
  %i.jq = lshr i32 %.sroa.speculated, 2
  %i.jr = icmp sgt i32 %.sroa.speculated, 3
  %i.js = sext i32 %i.x to i64
  %i.jt = icmp sgt i32 %.sroa.speculated, 0
  %i.ju = zext nneg i32 %.0446.lcssa.i.i to i64
  %i.jv = sext i32 %i.v to i64                    ; 3 uses
  %i.jw = sext i32 %.sroa.speculated64 to i64
  %invariant.op.i.i = add nsw i64 %i.jw, -15
  %i.jx = add i32 %.sroa.speculated, -1
  %xtraiter208 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.jy = icmp ult i32 %i.jx, 3
  %unroll_iter212 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod209.not = icmp eq i32 %xtraiter208, 0
  %lcmp.mod211 = icmp ne i32 %xtraiter208, 0
  br label %bb.d

.preheader316.loopexit.i.i:                       ; preds = %.loopexit317.i.i
  %i.jz = trunc nsw i64 %indvars.iv.next445.i.i to i32
  br label %.preheader316.i.i

.preheader316.i.i:                                ; preds = %.preheader316.loopexit.i.i, %.preheader320.i.i
  %.1447.lcssa.i.i = phi i32 [ %.0446.lcssa.i.i, %.preheader320.i.i ], [ %i.jz, %.preheader316.loopexit.i.i ] ; 3 uses
  %.7.lcssa.i.i = phi ptr [ %.0445.lcssa.i.i, %.preheader320.i.i ], [ %.13.i.i, %.preheader316.loopexit.i.i ] ; 2 uses
  %i.ka = or disjoint i32 %.1447.lcssa.i.i, 3
  %i.kb = icmp slt i32 %i.ka, %.sroa.speculated64
  br i1 %i.kb, label %.lr.ph379.i.i, label %.preheader312.i.i

.lr.ph379.i.i:                                    ; preds = %.preheader316.i.i
  %i.kc = sdiv i32 %i.x, 8
  %i.kd = sext i32 %i.kc to i64
  %i.ke = lshr i32 %.sroa.speculated, 3
  %i.kf = icmp sgt i32 %.sroa.speculated, 7
  %i.kg = sdiv i32 %i.x, 4
  %i.kh = sext i32 %i.kg to i64
  %i.ki = lshr i32 %.sroa.speculated, 2
  %i.kj = icmp sgt i32 %.sroa.speculated, 3
  %i.kk = sext i32 %i.x to i64
  %i.kl = icmp sgt i32 %.sroa.speculated, 0
  %i.km = sext i32 %.1447.lcssa.i.i to i64
  %i.kn = sext i32 %.sroa.speculated64 to i64
  %i.ko = sext i32 %i.v to i64                    ; 3 uses
  %invariant.op526.i.i = add nsw i64 %i.kn, -3
  %i.kp = add i32 %.sroa.speculated, -1
  %xtraiter214 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.kq = icmp ult i32 %i.kp, 3
  %unroll_iter219 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod216.not = icmp eq i32 %xtraiter214, 0
  %lcmp.mod218 = icmp ne i32 %xtraiter214, 0
  br label %bb.e

bb.d:                                             ; preds = %.loopexit317.i.i, %.lr.ph359.i.i
  %indvars.iv444.i.i = phi i64 [ %i.ju, %.lr.ph359.i.i ], [ %indvars.iv.next445.i.i, %.loopexit317.i.i ] ; 5 uses
  %.7358.i.i = phi ptr [ %.0445.lcssa.i.i, %.lr.ph359.i.i ], [ %.13.i.i, %.loopexit317.i.i ] ; 8 uses
  switch i32 %i.bb, label %.loopexit317.i.i [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit506.i.i
    i32 4, label %_ZN4ncnn3MatD2Ev.exit505.i.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit504.i.i
  ]

_ZN4ncnn3MatD2Ev.exit506.i.i:                     ; preds = %bb.d
  br i1 %i.jn, label %.lr.ph345.preheader.i.i, label %.loopexit317.i.i

.lr.ph345.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit506.i.i
  %i.kr = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1321
  %i.ks = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1321
  %i.kt = mul i64 %i.ks, %i.jl
  %i.ku = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1321
  %i.kv = mul i64 %i.kt, %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.kv
  %i.kx = add nsw i64 %indvars.iv444.i.i, %i.jv
  %.idx484.i.i = shl nsw i64 %i.kx, 5
  %i.ky = getelementptr inbounds i8, ptr %i.kw, i64 %.idx484.i.i
  br label %.lr.ph345.i.i

.lr.ph345.i.i:                                    ; preds = %.lr.ph345.i.i, %.lr.ph345.preheader.i.i
  %.8344.i.i = phi ptr [ %i.mt, %.lr.ph345.i.i ], [ %.7358.i.i, %.lr.ph345.preheader.i.i ] ; 9 uses
  %.0463343.i.i = phi ptr [ %i.mv, %.lr.ph345.i.i ], [ %i.ky, %.lr.ph345.preheader.i.i ] ; 9 uses
  %.0464342.i.i = phi i32 [ %i.mw, %.lr.ph345.i.i ], [ 0, %.lr.ph345.preheader.i.i ]
  %i.kz = load <8 x float>, ptr %.0463343.i.i, align 32, !tbaa !316 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.0463343.i.i, i64 32
  %i.lb = load <8 x float>, ptr %i.la, align 32, !tbaa !316 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.0463343.i.i, i64 64
  %i.ld = load <8 x float>, ptr %i.lc, align 32, !tbaa !316 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.0463343.i.i, i64 96
  %i.lf = load <8 x float>, ptr %i.le, align 32, !tbaa !316 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.0463343.i.i, i64 128
  %i.lh = load <8 x float>, ptr %i.lg, align 32, !tbaa !316 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.0463343.i.i, i64 160
  %i.lj = load <8 x float>, ptr %i.li, align 32, !tbaa !316 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.0463343.i.i, i64 192
  %i.ll = load <8 x float>, ptr %i.lk, align 32, !tbaa !316 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.0463343.i.i, i64 224
  %i.ln = load <8 x float>, ptr %i.lm, align 32, !tbaa !316 ; 2 uses
  %i.lo = shufflevector <8 x float> %i.kz, <8 x float> %i.lb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.lp = shufflevector <8 x float> %i.kz, <8 x float> %i.lb, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.lq = shufflevector <8 x float> %i.ld, <8 x float> %i.lf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.lr = shufflevector <8 x float> %i.ld, <8 x float> %i.lf, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ls = shufflevector <8 x float> %i.lh, <8 x float> %i.lj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.lt = shufflevector <8 x float> %i.lh, <8 x float> %i.lj, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.lu = shufflevector <8 x float> %i.ll, <8 x float> %i.ln, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.lv = shufflevector <8 x float> %i.ll, <8 x float> %i.ln, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.lw = shufflevector <8 x float> %i.lo, <8 x float> %i.lq, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.lx = shufflevector <8 x float> %i.lo, <8 x float> %i.lq, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ly = shufflevector <8 x float> %i.lp, <8 x float> %i.lr, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.lz = shufflevector <8 x float> %i.lp, <8 x float> %i.lr, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ma = shufflevector <8 x float> %i.ls, <8 x float> %i.lu, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.mb = shufflevector <8 x float> %i.ls, <8 x float> %i.lu, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.mc = shufflevector <8 x float> %i.lt, <8 x float> %i.lv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.md = shufflevector <8 x float> %i.lt, <8 x float> %i.lv, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.me = shufflevector <8 x float> %i.lw, <8 x float> %i.ma, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.mf = shufflevector <8 x float> %i.lx, <8 x float> %i.mb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.mg = shufflevector <8 x float> %i.ly, <8 x float> %i.mc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.mh = shufflevector <8 x float> %i.lz, <8 x float> %i.md, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.mi = shufflevector <8 x float> %i.lw, <8 x float> %i.ma, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.mj = shufflevector <8 x float> %i.lx, <8 x float> %i.mb, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.mk = shufflevector <8 x float> %i.ly, <8 x float> %i.mc, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ml = shufflevector <8 x float> %i.lz, <8 x float> %i.md, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.me, ptr %.8344.i.i, align 32, !tbaa !316
  %i.mm = getelementptr inbounds nuw i8, ptr %.8344.i.i, i64 32
  store <8 x float> %i.mf, ptr %i.mm, align 32, !tbaa !316
  %i.mn = getelementptr inbounds nuw i8, ptr %.8344.i.i, i64 64
  store <8 x float> %i.mg, ptr %i.mn, align 32, !tbaa !316
  %i.mo = getelementptr inbounds nuw i8, ptr %.8344.i.i, i64 96
  store <8 x float> %i.mh, ptr %i.mo, align 32, !tbaa !316
  %i.mp = getelementptr inbounds nuw i8, ptr %.8344.i.i, i64 128
  store <8 x float> %i.mi, ptr %i.mp, align 32, !tbaa !316
  %i.mq = getelementptr inbounds nuw i8, ptr %.8344.i.i, i64 160
  store <8 x float> %i.mj, ptr %i.mq, align 32, !tbaa !316
  %i.mr = getelementptr inbounds nuw i8, ptr %.8344.i.i, i64 192
  store <8 x float> %i.mk, ptr %i.mr, align 32, !tbaa !316
  %i.ms = getelementptr inbounds nuw i8, ptr %.8344.i.i, i64 224
  store <8 x float> %i.ml, ptr %i.ms, align 32, !tbaa !316
  %i.mt = getelementptr inbounds nuw i8, ptr %.8344.i.i, i64 256 ; 2 uses
  %i.mu = load i64, ptr %i.p, align 8, !tbaa !20
  %.idx479.i.i = shl i64 %i.mu, 5
  %i.mv = getelementptr inbounds nuw i8, ptr %.0463343.i.i, i64 %.idx479.i.i
  %i.mw = add nuw nsw i32 %.0464342.i.i, 1        ; 2 uses
  %exitcond441.not.i.i = icmp eq i32 %i.mw, %i.jm
  br i1 %exitcond441.not.i.i, label %.loopexit317.i.i, label %.lr.ph345.i.i, !llvm.loop !1324

_ZN4ncnn3MatD2Ev.exit505.i.i:                     ; preds = %bb.d
  br i1 %i.jr, label %.lr.ph350.preheader.i.i, label %.loopexit317.i.i

.lr.ph350.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit505.i.i
  %i.mx = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1325
  %i.my = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1325
  %i.mz = mul i64 %i.my, %i.jp
  %i.na = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1325
  %i.nb = mul i64 %i.mz, %i.na
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.nb
  %i.nd = add nsw i64 %indvars.iv444.i.i, %i.jv
  %.idx485.i.i = shl nsw i64 %i.nd, 4
  %i.ne = getelementptr inbounds i8, ptr %i.nc, i64 %.idx485.i.i
  br label %.lr.ph350.i.i

.lr.ph350.i.i:                                    ; preds = %.lr.ph350.i.i, %.lr.ph350.preheader.i.i
  %.10349.i.i = phi ptr [ %i.or, %.lr.ph350.i.i ], [ %.7358.i.i, %.lr.ph350.preheader.i.i ] ; 9 uses
  %.0465348.i.i = phi ptr [ %i.ot, %.lr.ph350.i.i ], [ %i.ne, %.lr.ph350.preheader.i.i ] ; 9 uses
  %.0466347.i.i = phi i32 [ %i.ou, %.lr.ph350.i.i ], [ 0, %.lr.ph350.preheader.i.i ]
  %i.nf = load <4 x float>, ptr %.0465348.i.i, align 16, !tbaa !316 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.0465348.i.i, i64 16
  %i.nh = load <4 x float>, ptr %i.ng, align 16, !tbaa !316 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.0465348.i.i, i64 32
  %i.nj = load <4 x float>, ptr %i.ni, align 16, !tbaa !316 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.0465348.i.i, i64 48
  %i.nl = load <4 x float>, ptr %i.nk, align 16, !tbaa !316 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.0465348.i.i, i64 64
  %i.nn = load <4 x float>, ptr %i.nm, align 16, !tbaa !316 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.0465348.i.i, i64 80
  %i.np = load <4 x float>, ptr %i.no, align 16, !tbaa !316 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.0465348.i.i, i64 96
  %i.nr = load <4 x float>, ptr %i.nq, align 16, !tbaa !316 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.0465348.i.i, i64 112
  %i.nt = load <4 x float>, ptr %i.ns, align 16, !tbaa !316 ; 2 uses
  %i.nu = shufflevector <4 x float> %i.nf, <4 x float> %i.nh, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.nv = shufflevector <4 x float> %i.nj, <4 x float> %i.nl, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.nw = shufflevector <4 x float> %i.nf, <4 x float> %i.nh, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.nx = shufflevector <4 x float> %i.nj, <4 x float> %i.nl, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ny = shufflevector <4 x float> %i.nu, <4 x float> %i.nv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.nz = shufflevector <4 x float> %i.nv, <4 x float> %i.nu, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.oa = shufflevector <4 x float> %i.nw, <4 x float> %i.nx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ob = shufflevector <4 x float> %i.nx, <4 x float> %i.nw, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.oc = shufflevector <4 x float> %i.nn, <4 x float> %i.np, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.aff = fadd fast <8 x float> %i.afe, splat (float f0xBDEBD1B8)
  %i.afg = fmul fast <8 x float> %i.aff, %i.afc
  %i.afh = fadd fast <8 x float> %i.afg, splat (float f0x3DEF251A)
  %i.afi = fmul fast <8 x float> %i.afh, %i.afc
  %i.afj = fadd fast <8 x float> %i.afi, splat (float f0xBDFE5D4F)
  %i.afk = fmul fast <8 x float> %i.afj, %i.afc
  %i.afl = fadd fast <8 x float> %i.afk, splat (float f0x3E11E9BF)
  %i.afm = fmul fast <8 x float> %i.afl, %i.afc
  %i.afn = fadd fast <8 x float> %i.afm, splat (float f0xBE2AAE50)
  %i.afo = fmul fast <8 x float> %i.afn, %i.afc
  %i.afp = fadd fast <8 x float> %i.afo, splat (float f0x3E4CCEAC)
  %i.afq = fmul fast <8 x float> %i.afp, %i.afc
  %i.afr = fadd fast <8 x float> %i.afq, splat (float f0xBE7FFFFC)
  %i.afs = fmul fast <8 x float> %i.afr, %i.afc
  %i.aft = fadd fast <8 x float> %i.afs, splat (float f0x3EAAAAAA)
  %i.afu = fmul fast <8 x float> %i.afd, %i.afc
  %i.afv = fmul fast <8 x float> %i.afu, %i.aft
  %.neg775 = fmul fast <8 x float> %i.afd, splat (float -5.000000e-01)
  %reass.mul = fmul fast <8 x float> %i.afb, splat (float f0x3F317218)
  %i.afw = fadd fast <8 x float> %i.afc, %.neg775
  %i.afx = fadd fast <8 x float> %i.afv, %i.afw
  %i.afy = fadd fast <8 x float> %i.afx, %reass.mul
  %.neg = fmul fast <8 x float> %i.afy, splat (float -2.000000e+00)
  %i.afz = select fast <8 x i1> %i.aen, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg
  %i.aga = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.afz, <8 x float> splat (float f0x42B0C0A5))
  %i.agb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aga, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.agc = fmul fast <8 x float> %i.agb, splat (float f0x3FB8AA3B)
  %i.agd = fadd fast <8 x float> %i.agc, splat (float 5.000000e-01) ; 2 uses
  %i.age = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.agd, i32 1) ; 2 uses
  %i.agf = fcmp fast ogt <8 x float> %i.age, %i.agd
  %i.agg = select <8 x i1> %i.agf, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.agh = fsub fast <8 x float> %i.age, %i.agg   ; 2 uses
  %i.agi = fmul fast <8 x float> %i.agh, splat (float f0x3F317218)
  %i.agj = fsub fast <8 x float> %i.agb, %i.agi   ; 8 uses
  %i.agk = fmul fast <8 x float> %i.agj, %i.agj
  %i.agl = fmul fast <8 x float> %i.agj, splat (float f0x39506967)
  %i.agm = fadd fast <8 x float> %i.agl, splat (float f0x3AB743CE)
  %i.agn = fmul fast <8 x float> %i.agm, %i.agj
  %i.ago = fadd fast <8 x float> %i.agn, splat (float f0x3C088908)
  %i.agp = fmul fast <8 x float> %i.ago, %i.agj
  %i.agq = fadd fast <8 x float> %i.agp, splat (float f0x3D2AA9C1)
  %i.agr = fmul fast <8 x float> %i.agq, %i.agj
  %i.ags = fadd fast <8 x float> %i.agr, splat (float f0x3E2AAAAA)
  %i.agt = fmul fast <8 x float> %i.ags, %i.agj
  %i.agu = fadd fast <8 x float> %i.agt, splat (float 5.000000e-01)
  %i.agv = fmul fast <8 x float> %i.agk, %i.agu
  %i.agw = fadd fast <8 x float> %i.agj, %i.agv
  %i.agx = fadd fast <8 x float> %i.agw, splat (float 1.000000e+00)
  %i.agy = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.agh)
  %i.agz = shl <8 x i32> %i.agy, splat (i32 23)
  %i.aha = add <8 x i32> %i.agz, splat (i32 1065353216)
  %i.ahb = bitcast <8 x i32> %i.aha to <8 x float>
  %i.ahc = fmul fast <8 x float> %i.agx, %i.ahb
  %i.ahd = fadd fast <8 x float> %i.ahc, splat (float 1.000000e+00)
  %i.ahe = fdiv fast <8 x float> splat (float 2.000000e+00), %i.ahd
  %i.ahf = fadd fast <8 x float> %i.ahe, splat (float -1.000000e+00)
  %i.ahg = fmul fast <8 x float> %i.ahf, %i.abi
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc297:                                        ; preds = %._crit_edge909
  %i.ahh = load ptr, ptr %14, align 8, !tbaa !18  ; 2 uses
  %i.ahi = load float, ptr %i.ahh, align 4, !tbaa !39
  %i.ahj = insertelement <8 x float> poison, float %i.ahi, i64 0
  %i.ahk = shufflevector <8 x float> %i.ahj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahh, i64 4
  %i.ahm = load float, ptr %i.ahl, align 4, !tbaa !39
  %i.ahn = insertelement <8 x float> poison, float %i.ahm, i64 0
  %i.aho = shufflevector <8 x float> %i.ahn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ahp = fmul fast <8 x float> %i.ahk, %i.abi
  %i.ahq = fadd fast <8 x float> %i.ahp, %i.aho
  %i.ahr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ahq, <8 x float> zeroinitializer)
  %i.ahs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ahr, <8 x float> splat (float 1.000000e+00))
  %i.aht = fmul fast <8 x float> %i.ahs, %i.abi
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc297, %.noexc296, %.noexc295, %bb.n, %.noexc294, %bb.m, %._crit_edge909
  %.0.i = phi nsz <8 x float> [ %i.aht, %.noexc297 ], [ %i.abk, %bb.m ], [ %i.abs, %.noexc294 ], [ %i.acc, %bb.n ], [ %i.adi, %.noexc295 ], [ %i.ahg, %.noexc296 ], [ %i.abi, %._crit_edge909 ] ; 4 uses
  switch i32 %i.af, label %.thread773 [
    i32 8, label %.thread
    i32 4, label %bb.o
    i32 1, label %bb.p
  ]

.thread:                                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.ahu = bitcast <8 x float> %.0.i to <8 x i32> ; 2 uses
  %i.ahv = shufflevector <8 x i32> %i.ahu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ahw = shufflevector <8 x i32> %i.ahu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ahx = lshr <4 x i32> %i.ahv, splat (i32 16)
  %i.ahy = lshr <4 x i32> %i.ahw, splat (i32 16)
  %i.ahz = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ahx, <4 x i32> %i.ahy)
  store <8 x i16> %i.ahz, ptr %.1919, align 1, !tbaa !316
  %i.aia = getelementptr inbounds nuw i8, ptr %.1919, i64 16
  br label %.thread773

bb.o:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.aib = bitcast <8 x float> %.0.i to <8 x i32>
  %i.aic = shufflevector <8 x i32> %i.aib, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aid = lshr <4 x i32> %i.aic, splat (i32 16)
  %i.aie = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aid, <4 x i32> poison)
  %i.aif = bitcast <8 x i16> %i.aie to <2 x i64>
  %i.aig = extractelement <2 x i64> %i.aif, i64 0
  store i64 %i.aig, ptr %.1919, align 1, !tbaa !316
  %i.aih = load i64, ptr %15, align 8, !tbaa !295
  %i.aii = getelementptr inbounds nuw [2 x i8], ptr %.1919, i64 %i.aih
  %i.aij = bitcast <8 x float> %.0.i to <8 x i32>
  %i.aik = shufflevector <8 x i32> %i.aij, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ail = lshr <4 x i32> %i.aik, splat (i32 16)
  %i.aim = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ail, <4 x i32> poison)
  %i.ain = bitcast <8 x i16> %i.aim to <2 x i64>
  %i.aio = extractelement <2 x i64> %i.ain, i64 0
  store i64 %i.aio, ptr %i.aii, align 1, !tbaa !316
  %i.aip = getelementptr inbounds nuw i8, ptr %.1919, i64 8
  br label %.thread773

bb.p:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.aiq = bitcast <8 x float> %.0.i to <16 x i16> ; 8 uses
  %i.air = extractelement <16 x i16> %i.aiq, i64 1
  store i16 %i.air, ptr %.1919, align 2, !tbaa !573
  %i.ais = extractelement <16 x i16> %i.aiq, i64 3
  %i.ait = load i64, ptr %15, align 8, !tbaa !295 ; 7 uses
  %i.aiu = getelementptr inbounds nuw [2 x i8], ptr %.1919, i64 %i.ait
  store i16 %i.ais, ptr %i.aiu, align 2, !tbaa !573
  %i.aiv = extractelement <16 x i16> %i.aiq, i64 5
  %.idx = shl i64 %i.ait, 2
  %i.aiw = getelementptr inbounds nuw i8, ptr %.1919, i64 %.idx
  store i16 %i.aiv, ptr %i.aiw, align 2, !tbaa !573
  %i.aix = extractelement <16 x i16> %i.aiq, i64 7
  %.idx236 = mul i64 %i.ait, 6
  %i.aiy = getelementptr inbounds nuw i8, ptr %.1919, i64 %.idx236
  store i16 %i.aix, ptr %i.aiy, align 2, !tbaa !573
  %i.aiz = extractelement <16 x i16> %i.aiq, i64 9
  %.idx237 = shl i64 %i.ait, 3
  %i.aja = getelementptr inbounds nuw i8, ptr %.1919, i64 %.idx237
  store i16 %i.aiz, ptr %i.aja, align 2, !tbaa !573
  %i.ajb = extractelement <16 x i16> %i.aiq, i64 11
  %.idx238 = mul i64 %i.ait, 10
  %i.ajc = getelementptr inbounds nuw i8, ptr %.1919, i64 %.idx238
  store i16 %i.ajb, ptr %i.ajc, align 2, !tbaa !573
  %i.ajd = extractelement <16 x i16> %i.aiq, i64 13
  %.idx239 = mul i64 %i.ait, 12
  %i.aje = getelementptr inbounds nuw i8, ptr %.1919, i64 %.idx239
  store i16 %i.ajd, ptr %i.aje, align 2, !tbaa !573
  %i.ajf = extractelement <16 x i16> %i.aiq, i64 15
  %.idx240 = mul i64 %i.ait, 14
  %i.ajg = getelementptr inbounds nuw i8, ptr %.1919, i64 %.idx240
  store i16 %i.ajf, ptr %i.ajg, align 2, !tbaa !573
  %i.ajh = getelementptr inbounds nuw i8, ptr %.1919, i64 2
  br label %.thread773

.thread773:                                       ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %bb.o, %.thread, %bb.p
  %.4 = phi ptr [ %i.ajh, %bb.p ], [ %.1919, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %i.aia, %.thread ], [ %i.aip, %bb.o ] ; 2 uses
  %i.aji = add nuw nsw i32 %.0220918, 1           ; 2 uses
  %exitcond1014.not = icmp eq i32 %i.aji, %i.ae
  br i1 %exitcond1014.not, label %._crit_edge, label %bb.c, !llvm.loop !2542

._crit_edge927:                                   ; preds = %._crit_edge924.split, %_ZN4ncnn3MatD2Ev.exit261.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge927, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i8> @llvm.x86.sse3.ldu.dq(ptr) #27

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #30

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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tanh.v2f32(<2 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #13

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #21 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #28 = { nofree nounwind }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { noreturn nounwind }
attributes #33 = { builtin nounwind }
attributes #34 = { cold nounwind }
attributes #35 = { noreturn }
attributes #36 = { builtin allocsize(0) }

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
!42 = !{!"_ZTSN4ncnn19Convolution_x86_avxE", !22, i64 0, !43, i64 712, !6, i64 720, !12, i64 728, !12, i64 800, !12, i64 872, !12, i64 944, !12, i64 1016, !43, i64 1088, !12, i64 1096}
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
!82 = distinct !{!82, !83, !84}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!"llvm.loop.isvectorized", i32 1}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = distinct !{!87, !83}
!88 = distinct !{!88, !83}
!89 = distinct !{!89, !83}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!92 = distinct !{!92, !"_ZN4ncnn3Mat7channelEi"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!95 = distinct !{!95, !"_ZN4ncnn3Mat7channelEi"}
!96 = distinct !{!96, !83}
!97 = distinct !{!97, !83}
!98 = distinct !{!98, !83}
!99 = distinct !{!99, !83}
!100 = distinct !{!100, !83}
!101 = distinct !{!101, !83}
!102 = !{!103}
!103 = distinct !{!103, !104}
!104 = distinct !{!104, !"LVerDomain"}
!105 = !{!106}
!106 = distinct !{!106, !104}
!107 = !{!108}
!108 = distinct !{!108, !104}
!109 = !{!110}
!110 = distinct !{!110, !104}
!111 = !{!112}
!112 = distinct !{!112, !104}
!113 = !{!114}
!114 = distinct !{!114, !104}
!115 = !{!116}
!116 = distinct !{!116, !104}
!117 = !{!118}
!118 = distinct !{!118, !104}
!119 = !{!120}
!120 = distinct !{!120, !104}
!121 = !{!118, !116, !114, !112, !110, !108, !106, !103}
end_hunk_1
