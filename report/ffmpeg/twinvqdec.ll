inline.NumInlined: 25
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@twinvq_read_bitstream:bb.a
  %i.jc = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.jb) ; 3 uses
  %i.jd = trunc i32 %i.ja to i8
  %i.je = getelementptr inbounds nuw i8, ptr %i.ik, i64 %indvars.iv252
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !31
  %i.jf = load i8, ptr %i.il, align 1, !tbaa !71
  %i.jg = zext i8 %i.jf to i32                    ; 2 uses
  %i.jh = lshr i32 %i.jc, 3
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ji
  %i.jk = load i32, ptr %i.jj, align 1, !tbaa !31
  %i.jl = tail call i32 @llvm.bswap.i32(i32 %i.jk)
  %i.jm = and i32 %i.jc, 7
  %i.jn = shl i32 %i.jl, %i.jm
  %i.jo = sub nsw i32 32, %i.jg
  %i.jp = lshr i32 %i.jn, %i.jo
  %i.jq = add nuw i32 %i.jc, %i.jg
  %i.jr = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.jq) ; 2 uses
  %i.js = trunc i32 %i.jp to i8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.im, i64 %indvars.iv252
  store i8 %i.js, ptr %i.jt, align 1, !tbaa !31
  %i.ju = load i8, ptr %i.in, align 1, !tbaa !72
  %.not205 = icmp eq i8 %i.ju, 0
  br i1 %.not205, label %._crit_edge190, label %.lr.ph189

.lr.ph189:                                        ; preds = %bb.i
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv252
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph189, %bb.j
  %indvars.iv249 = phi i64 [ 0, %.lr.ph189 ], [ %indvars.iv.next250, %bb.j ] ; 2 uses
  %.sroa.19.10186 = phi i32 [ %i.jr, %.lr.ph189 ], [ %i.ki, %bb.j ] ; 3 uses
  %i.jw = load i8, ptr %i.io, align 2, !tbaa !73
  %i.jx = zext i8 %i.jw to i32                    ; 2 uses
  %i.jy = lshr i32 %.sroa.19.10186, 3
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %2, i64 %i.jz
  %i.kb = load i32, ptr %i.ka, align 1, !tbaa !31
  %i.kc = tail call i32 @llvm.bswap.i32(i32 %i.kb)
  %i.kd = and i32 %.sroa.19.10186, 7
  %i.ke = shl i32 %i.kc, %i.kd
  %i.kf = sub nsw i32 32, %i.jx
  %i.kg = lshr i32 %i.ke, %i.kf
  %i.kh = add i32 %.sroa.19.10186, %i.jx
  %i.ki = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.kh) ; 2 uses
  %i.kj = trunc i32 %i.kg to i8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jv, i64 %indvars.iv249
  store i8 %i.kj, ptr %i.kk, align 1, !tbaa !31
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %i.kl = load i8, ptr %i.in, align 1, !tbaa !72
  %i.km = zext i8 %i.kl to i64
  %i.kn = icmp samesign ult i64 %indvars.iv.next250, %i.km
  br i1 %i.kn, label %bb.j, label %._crit_edge190, !llvm.loop !74

._crit_edge190:                                   ; preds = %bb.j, %bb.i
  %.sroa.19.10.lcssa = phi i32 [ %i.jr, %bb.i ], [ %i.ki, %bb.j ] ; 3 uses
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %exitcond256.not = icmp eq i64 %indvars.iv.next253, %wide.trip.count255
  br i1 %exitcond256.not, label %._crit_edge196, label %bb.i, !llvm.loop !75

._crit_edge196:                                   ; preds = %._crit_edge190
  br i1 %i.ew, label %._crit_edge196.thread, label %.loopexit

._crit_edge196.thread:                            ; preds = %.preheader, %._crit_edge196
  %.sroa.19.9.lcssa279 = phi i32 [ %.sroa.19.10.lcssa, %._crit_edge196 ], [ %.sroa.19.3.lcssa, %.preheader ] ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 34020 ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !54
  %i.kq = icmp sgt i32 %i.kp, 0
  br i1 %i.kq, label %.lr.ph.i97, label %read_cb_data.exit100

.lr.ph.i97:                                       ; preds = %._crit_edge196.thread
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 35140
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 34004
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 33982
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 33990
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i97
  %.sroa.19.15 = phi i32 [ %.sroa.19.9.lcssa279, %.lr.ph.i97 ], [ %i.mb, %bb.k ] ; 3 uses
  %.018.i98 = phi ptr [ %i.kr, %.lr.ph.i97 ], [ %i.md, %bb.k ] ; 3 uses
  %.01617.i99 = phi i32 [ 0, %.lr.ph.i97 ], [ %i.me, %bb.k ] ; 2 uses
  %i.kv = load i32, ptr %i.ks, align 4, !tbaa !54
  %i.kw = icmp sge i32 %.01617.i99, %i.kv
  %i.kx = zext i1 %i.kw to i64                    ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !31
  %i.la = zext i8 %i.kz to i32                    ; 2 uses
  %i.lb = lshr i32 %.sroa.19.15, 3
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %2, i64 %i.lc
  %i.le = load i32, ptr %i.ld, align 1, !tbaa !31
  %i.lf = tail call i32 @llvm.bswap.i32(i32 %i.le)
  %i.lg = and i32 %.sroa.19.15, 7
  %i.lh = shl i32 %i.lf, %i.lg
  %i.li = sub nsw i32 32, %i.la
  %i.lj = lshr i32 %i.lh, %i.li
  %i.lk = add i32 %.sroa.19.15, %i.la
  %i.ll = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.lk) ; 3 uses
  %i.lm = trunc i32 %i.lj to i8
  %i.ln = getelementptr inbounds nuw i8, ptr %.018.i98, i64 1
  store i8 %i.lm, ptr %.018.i98, align 1, !tbaa !31
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.kx
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !31
  %i.lq = zext i8 %i.lp to i32                    ; 2 uses
  %i.lr = lshr i32 %i.ll, 3
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw i8, ptr %2, i64 %i.ls
  %i.lu = load i32, ptr %i.lt, align 1, !tbaa !31
  %i.lv = tail call i32 @llvm.bswap.i32(i32 %i.lu)
  %i.lw = and i32 %i.ll, 7
  %i.lx = shl i32 %i.lv, %i.lw
  %i.ly = sub nsw i32 32, %i.lq
  %i.lz = lshr i32 %i.lx, %i.ly
  %i.ma = add nuw i32 %i.ll, %i.lq
  %i.mb = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.ma) ; 2 uses
  %i.mc = trunc i32 %i.lz to i8
  %i.md = getelementptr inbounds nuw i8, ptr %.018.i98, i64 2
  store i8 %i.mc, ptr %i.ln, align 1, !tbaa !31
  %i.me = add nuw nsw i32 %.01617.i99, 1          ; 2 uses
  %i.mf = load i32, ptr %i.ko, align 4, !tbaa !54
  %i.mg = icmp slt i32 %i.me, %i.mf
  br i1 %i.mg, label %bb.k, label %read_cb_data.exit100, !llvm.loop !58

read_cb_data.exit100:                             ; preds = %bb.k, %._crit_edge196.thread
  %.sroa.19.16 = phi i32 [ %.sroa.19.9.lcssa279, %._crit_edge196.thread ], [ %i.mb, %bb.k ] ; 2 uses
  br i1 %i.ce, label %.lr.ph200, label %.loopexit

.lr.ph200:                                        ; preds = %read_cb_data.exit100
  %i.mh = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.mi = load i8, ptr %i.mh, align 8, !tbaa !76
  %i.mj = zext i8 %i.mi to i32                    ; 2 uses
  %i.mk = sub nsw i32 32, %i.mj
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 35408
  %i.mm = getelementptr inbounds nuw i8, ptr %i.b, i64 227
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !77
  %i.mo = zext i8 %i.mn to i32                    ; 2 uses
  %i.mp = sub nsw i32 32, %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 35416
  %wide.trip.count260 = zext nneg i32 %i.e to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph200, %bb.l
  %indvars.iv257 = phi i64 [ 0, %.lr.ph200 ], [ %indvars.iv.next258, %bb.l ] ; 3 uses
  %.sroa.19.11198 = phi i32 [ %.sroa.19.16, %.lr.ph200 ], [ %i.nl, %bb.l ] ; 3 uses
  %i.mr = lshr i32 %.sroa.19.11198, 3
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw i8, ptr %2, i64 %i.ms
  %i.mu = load i32, ptr %i.mt, align 1, !tbaa !31
  %i.mv = tail call i32 @llvm.bswap.i32(i32 %i.mu)
  %i.mw = and i32 %.sroa.19.11198, 7
  %i.mx = shl i32 %i.mv, %i.mw
  %i.my = lshr i32 %i.mx, %i.mk
  %i.mz = add i32 %.sroa.19.11198, %i.mj
  %i.na = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.mz) ; 3 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %indvars.iv257
  store i32 %i.my, ptr %i.nb, align 4, !tbaa !54
  %i.nc = lshr i32 %i.na, 3
  %i.nd = zext nneg i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %2, i64 %i.nd
  %i.nf = load i32, ptr %i.ne, align 1, !tbaa !31
  %i.ng = tail call i32 @llvm.bswap.i32(i32 %i.nf)
  %i.nh = and i32 %i.na, 7
  %i.ni = shl i32 %i.ng, %i.nh
  %i.nj = lshr i32 %i.ni, %i.mp
  %i.nk = add nuw i32 %i.na, %i.mo
  %i.nl = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.nk) ; 2 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %indvars.iv257
  store i32 %i.nj, ptr %i.nm, align 4, !tbaa !54
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %exitcond261.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count260
  br i1 %exitcond261.not, label %.loopexit, label %bb.l, !llvm.loop !78

.loopexit:                                        ; preds = %bb.l, %.preheader150, %read_cb_data.exit100, %._crit_edge196
  %.sroa.19.12 = phi i32 [ %.sroa.19.10.lcssa, %._crit_edge196 ], [ %.sroa.19.16, %read_cb_data.exit100 ], [ %.sroa.19.3.lcssa, %.preheader150 ], [ %i.nl, %bb.l ]
  %i.nn = add nsw i32 %.sroa.19.12, 7
  %i.no = sdiv i32 %i.nn, 8
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %.loopexit, %bb.c
  %.0 = phi i32 [ %i.no, %.loopexit ], [ -1094995529, %bb.c ], [ -1094995529, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @dec_bark_env(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, float noundef %5, i32 noundef %6) #3 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.e = zext i32 %6 to i64                       ; 3 uses
  %i.f = getelementptr inbounds nuw [320 x i8], ptr %i.d, i64 %i.e
  %i.g = sext i32 %3 to i64
  %i.h = getelementptr inbounds [160 x i8], ptr %i.f, i64 %i.g ; 2 uses
  store <2 x float> <float 4.000000e-01, float 3.500000e-01>, ptr %i.a, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float 2.800000e-01, ptr %i.i, align 8, !tbaa !79
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.e
  %i.k = load float, ptr %i.j, align 4, !tbaa !79 ; 2 uses
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.e ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i8, ptr %i.m, align 8, !tbaa !60    ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load i8, ptr %i.o, align 8, !tbaa !80    ; 2 uses
  %i.q = udiv i8 %i.p, %i.n
  %i.r = zext i8 %i.q to i32                      ; 4 uses
  %.not56 = icmp ugt i8 %i.n, %i.p
  br i1 %.not56, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81   ; 2 uses
  %.not = icmp eq i32 %2, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !82   ; 2 uses
  %i.w = fpext nsz float %i.k to double
  %i.x = fsub nsz double 1.000000e+00, %i.w
  %7 = zext i8 %i.n to i64                        ; 2 uses
  %wide.trip.count74 = zext i8 %i.n to i64        ; 2 uses
  br i1 %.not, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %.split.us.us
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %.split.us.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.04355.us = phi ptr [ %i.bc, %.split.us.us ], [ %4, %.preheader.lr.ph ]
  %.04653.us = phi i32 [ %i.bd, %.split.us.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %twinvq_memset_float.exit.us.us, %.preheader.us
  %indvars.iv68.a = phi i64 [ %indvars.iv.next69.a, %twinvq_memset_float.exit.us.us ], [ 0, %.preheader.us ] ; 2 uses
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %twinvq_memset_float.exit.us.us ], [ %indvars.iv68, %.preheader.us ] ; 3 uses
  %.151.us.us = phi ptr [ %i.bc, %twinvq_memset_float.exit.us.us ], [ %.04355.us, %.preheader.us ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv68.a
  %i.z = load i8, ptr %i.y, align 1, !tbaa !31
  %i.aa = zext i8 %i.z to i32
  %i.ab = mul nuw nsw i32 %i.aa, %i.r
  %i.ac = add nuw nsw i32 %i.ab, %.04653.us
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !83
  %i.ag = sitofp i16 %i.af to float
  %i.ah = fmul nnan nsz float %i.ag, f0x39800000  ; 2 uses
  %i.ai = fpext nsz float %i.ah to double
  %i.aj = fadd nsz double %i.ai, 1.000000e+00     ; 2 uses
  %i.ak = fptrunc nnan nsz double %i.aj to float
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv66
  store float %i.ah, ptr %i.al, align 4, !tbaa !79
  %i.am = fcmp nsz olt double %i.aj, f0xBFF0000010000000
  %.0.us.us = select nsz i1 %i.am, float 1.000000e+00, float %i.ak
  %i.an = fmul nsz float %5, %.0.us.us            ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv66
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !83 ; 5 uses
  %.not3.i.us.us = icmp eq i16 %i.ap, 0
  br i1 %.not3.i.us.us, label %twinvq_memset_float.exit.us.us, label %.lr.ph.i.us.us.preheader

.lr.ph.i.us.us.preheader:                         ; preds = %bb.b
  %i.aq = zext i16 %i.ap to i32                   ; 2 uses
  %i.ar = zext i16 %i.ap to i64                   ; 2 uses
  %min.iters.check84 = icmp ult i16 %i.ap, 8
  br i1 %min.iters.check84, label %.lr.ph.i.us.us.preheader97, label %vector.ph85

vector.ph85:                                      ; preds = %.lr.ph.i.us.us.preheader
  %n.vec86 = and i64 %i.ar, 65528                 ; 4 uses
  %i.as = trunc nuw nsw i64 %n.vec86 to i32
  %i.at = sub nsw i32 %i.aq, %i.as
  %i.au = shl nuw nsw i64 %n.vec86, 2
  %i.av = getelementptr i8, ptr %.151.us.us, i64 %i.au
  %broadcast.splatinsert87 = insertelement <4 x float> poison, float %i.an, i64 0
  %broadcast.splat88 = shufflevector <4 x float> %broadcast.splatinsert87, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph85
  %index90 = phi i64 [ 0, %vector.ph85 ], [ %index.next92, %vector.body89 ] ; 2 uses
  %i.aw = shl i64 %index90, 2
  %next.gep91 = getelementptr i8, ptr %.151.us.us, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep91, i64 16
  store <4 x float> %broadcast.splat88, ptr %next.gep91, align 4, !tbaa !79
  store <4 x float> %broadcast.splat88, ptr %i.ax, align 4, !tbaa !79
  %index.next92 = add nuw i64 %index90, 8         ; 2 uses
  %i.ay = icmp eq i64 %index.next92, %n.vec86
  br i1 %i.ay, label %middle.block93, label %vector.body89, !llvm.loop !84

middle.block93:                                   ; preds = %vector.body89
  %cmp.n94 = icmp eq i64 %n.vec86, %i.ar
  br i1 %cmp.n94, label %twinvq_memset_float.exit.us.us, label %.lr.ph.i.us.us.preheader97

.lr.ph.i.us.us.preheader97:                       ; preds = %.lr.ph.i.us.us.preheader, %middle.block93
  %.05.i.us.us.ph = phi i32 [ %i.aq, %.lr.ph.i.us.us.preheader ], [ %i.at, %middle.block93 ]
  %.024.i.us.us.ph = phi ptr [ %.151.us.us, %.lr.ph.i.us.us.preheader ], [ %i.av, %middle.block93 ]
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us.preheader97, %.lr.ph.i.us.us
  %.05.i.us.us = phi i32 [ %i.az, %.lr.ph.i.us.us ], [ %.05.i.us.us.ph, %.lr.ph.i.us.us.preheader97 ]
  %.024.i.us.us = phi ptr [ %i.ba, %.lr.ph.i.us.us ], [ %.024.i.us.us.ph, %.lr.ph.i.us.us.preheader97 ] ; 2 uses
  %i.az = add nsw i32 %.05.i.us.us, -1            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.024.i.us.us, i64 4
  store float %i.an, ptr %.024.i.us.us, align 4, !tbaa !79
  %.not.i.us.us = icmp eq i32 %i.az, 0
  br i1 %.not.i.us.us, label %twinvq_memset_float.exit.us.us, label %.lr.ph.i.us.us, !llvm.loop !87

twinvq_memset_float.exit.us.us:                   ; preds = %.lr.ph.i.us.us, %middle.block93, %bb.b
  %i.bb = zext i16 %i.ap to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.151.us.us, i64 %i.bb ; 2 uses
  %indvars.iv.next69.a = add nuw nsw i64 %indvars.iv68.a, 1 ; 2 uses
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %exitcond75.not = icmp eq i64 %indvars.iv.next69.a, %wide.trip.count74
  br i1 %exitcond75.not, label %.split.us.us, label %bb.b, !llvm.loop !88

.split.us.us:                                     ; preds = %twinvq_memset_float.exit.us.us
  %i.bd = add nuw nsw i32 %.04653.us, 1           ; 2 uses
  %i.be = icmp samesign ult i32 %i.bd, %i.r
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, %7
  br i1 %i.be, label %.preheader.us, label %._crit_edge, !llvm.loop !89

.preheader:                                       ; preds = %.preheader.lr.ph, %.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.split ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.04355 = phi ptr [ %i.cn, %.split ], [ %4, %.preheader.lr.ph ]
  %.04653 = phi i32 [ %i.co, %.split ], [ 0, %.preheader.lr.ph ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %twinvq_memset_float.exit
  %indvars.iv61.a = phi i64 [ 0, %.preheader ], [ %indvars.iv.next62.a, %twinvq_memset_float.exit ] ; 2 uses
  %indvars.iv.a = phi i64 [ %indvars.iv, %.preheader ], [ %indvars.iv.next.a, %twinvq_memset_float.exit ] ; 3 uses
  %.151 = phi ptr [ %.04355, %.preheader ], [ %i.cn, %twinvq_memset_float.exit ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv61.a
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !31
  %i.bh = zext i8 %i.bg to i32
  %i.bi = mul nuw nsw i32 %i.bh, %i.r
  %i.bj = add nuw nsw i32 %i.bi, %.04653
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !83
  %i.bn = sitofp i16 %i.bm to float
  %i.bo = fmul nnan nsz float %i.bn, f0x39800000  ; 2 uses
  %i.bp = fpext nsz float %i.bo to double
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.a ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !79
  %i.bs = fmul nsz float %i.k, %i.br
  %i.bt = fpext nsz float %i.bs to double
  %i.bu = tail call nsz double @llvm.fmuladd.f64(double %i.x, double %i.bp, double %i.bt)
  %i.bv = fadd nsz double %i.bu, 1.000000e+00     ; 2 uses
  %i.bw = fptrunc nsz double %i.bv to float
  store float %i.bo, ptr %i.bq, align 4, !tbaa !79
  %i.bx = fcmp nsz olt double %i.bv, f0xBFF0000010000000
  %.0 = select nsz i1 %i.bx, float 1.000000e+00, float %i.bw
  %i.by = fmul nsz float %5, %.0                  ; 2 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv.a
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !83 ; 5 uses
  %.not3.i = icmp eq i16 %i.ca, 0
  br i1 %.not3.i, label %twinvq_memset_float.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.cb = zext i16 %i.ca to i32                   ; 2 uses
  %i.cc = zext i16 %i.ca to i64                   ; 2 uses
  %min.iters.check = icmp ult i16 %i.ca, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader98, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.cc, 65528                   ; 4 uses
  %i.cd = trunc nuw nsw i64 %n.vec to i32
  %i.ce = sub nsw i32 %i.cb, %i.cd
  %i.cf = shl nuw nsw i64 %n.vec, 2
  %i.cg = getelementptr i8, ptr %.151, i64 %i.cf
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.by, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.151, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !79
  store <4 x float> %broadcast.splat, ptr %i.ci, align 4, !tbaa !79
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cc
  br i1 %cmp.n, label %twinvq_memset_float.exit, label %.lr.ph.i.preheader98

.lr.ph.i.preheader98:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.05.i.ph = phi i32 [ %i.cb, %.lr.ph.i.preheader ], [ %i.ce, %middle.block ]
  %.024.i.ph = phi ptr [ %.151, %.lr.ph.i.preheader ], [ %i.cg, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader98, %.lr.ph.i
  %.05.i = phi i32 [ %i.ck, %.lr.ph.i ], [ %.05.i.ph, %.lr.ph.i.preheader98 ]
  %.024.i = phi ptr [ %i.cl, %.lr.ph.i ], [ %.024.i.ph, %.lr.ph.i.preheader98 ] ; 2 uses
  %i.ck = add nsw i32 %.05.i, -1                  ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.024.i, i64 4
  store float %i.by, ptr %.024.i, align 4, !tbaa !79
  %.not.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i, label %twinvq_memset_float.exit, label %.lr.ph.i, !llvm.loop !91

twinvq_memset_float.exit:                         ; preds = %.lr.ph.i, %middle.block, %bb.c
  %i.cm = zext i16 %i.ca to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.151, i64 %i.cm ; 2 uses
  %indvars.iv.next62.a = add nuw nsw i64 %indvars.iv61.a, 1 ; 2 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next62.a, %wide.trip.count74
  br i1 %exitcond.not, label %.split, label %bb.c, !llvm.loop !88

.split:                                           ; preds = %twinvq_memset_float.exit
  %i.co = add nuw nsw i32 %.04653, 1              ; 2 uses
  %i.cp = icmp samesign ult i32 %i.co, %i.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %7
  br i1 %i.cp, label %.preheader, label %._crit_edge, !llvm.loop !89

._crit_edge:                                      ; preds = %.split, %.split.us.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @decode_ppc(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef captures(none) %4) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !50     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  %i.e = load i32, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.f = sdiv i32 %i.e, 1000                      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 356
  %i.j = load i32, ptr %i.i, align 4, !tbaa !51
  %i.k = mul nsw i32 %i.j, 1000
  %i.l = sext i32 %i.k to i64
  %i.m = sdiv i64 %i.h, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.o = load i16, ptr %i.n, align 8, !tbaa !44
  %i.p = zext i16 %i.o to i32                     ; 4 uses
  %i.q = mul nuw nsw i32 %i.p, 80
  %i.r = ashr i32 %i.f, 1                         ; 2 uses
  %i.s = add nsw i32 %i.q, %i.r
  %i.t = sdiv i32 %i.s, %i.f                      ; 2 uses
  %i.u = mul nuw nsw i32 %i.p, 480
  %i.v = add nsw i32 %i.u, %i.r
  %i.w = sdiv i32 %i.v, %i.f
  %i.x = sub nsw i32 %i.w, %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 227
  %i.z = load i8, ptr %i.y, align 1, !tbaa !77
  %i.aa = zext nneg i8 %i.z to i32
  %notmask = shl nsw i32 -1, %i.aa
  %i.ab = xor i32 %notmask, -1
  %i.ac = uitofp nneg i32 %i.ab to double
  %i.ad = fdiv nsz double 2.500000e+04, %i.ac
  %i.ae = fptrunc nsz double %i.ad to float       ; 2 uses
  %i.af = sitofp nsz i32 %2 to float
  %i.ag = fmul nnan nsz float %i.ae, 5.000000e-01
  %i.ah = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float %i.af, float %i.ag)
  %i.ai = fdiv nsz float %i.ah, 2.500000e+04      ; 2 uses
  %i.aj = fcmp nsz ogt float %i.ai, -1.000000e+00
  %i.ak = select nsz i1 %i.aj, float %i.ai, float -1.000000e+00 ; 2 uses
  %i.al = fcmp nsz ogt float %i.ak, 1.000000e+00
  %..i.i = select nsz i1 %i.al, float 1.000000e+00, float %i.ak ; 2 uses
  %i.am = fcmp nsz ogt float %..i.i, 0.000000e+00
  %i.an = select i1 %i.am, float 2.500000e+04, float -2.500000e+04
  %i.ao = fpext nnan ninf nsz float %i.an to double
  %i.ap = tail call nsz float @llvm.fabs.f32(float %..i.i)
  %i.aq = fpext float %i.ap to double
  %i.ar = fmul nsz double %i.aq, f0x401536958FD351F0
  %i.as = tail call nsz double @llvm.exp.f64(double %i.ar)
  %i.at = fadd nsz double %i.as, -1.000000e+00
  %i.au = fmul nsz double %i.at, %i.ao
  %i.av = fdiv nsz double %i.au, 2.000000e+02
  %i.aw = fptrunc nsz double %i.av to float
  %i.ax = mul nsw i32 %i.x, %1                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !76
  %i.ba = zext nneg i8 %i.az to i32
  %notmask56 = shl nsw i32 -1, %i.ba
  %i.bb = xor i32 %notmask56, -1                  ; 2 uses
  %i.bc = lshr i32 %i.bb, 1                       ; 2 uses
  %i.bd = icmp slt i32 %i.ax, 0
  %i.be = sub nsw i32 0, %i.bc
  %.p = select i1 %i.bd, i32 %i.be, i32 %i.bc
  %i.bf = add i32 %i.ax, %.p
  %i.bg = sdiv i32 %i.bf, %i.bb
  %i.bh = add nsw i32 %i.bg, %i.t                 ; 4 uses
  %.off = add i32 %i.e, -22000
  %i.bi = icmp ult i32 %.off, 1000
  %i.bj = and i64 %i.m, 4294967295
  %i.bk = icmp eq i64 %i.bj, 32
  %or.cond = select i1 %i.bi, i1 %i.bk, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bl = add nsw i32 %i.bh, 800
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  %i.bn = load i16, ptr %i.bm, align 4, !tbaa !92
  %i.bo = zext i16 %i.bn to i32
  %i.bp = mul nsw i32 %i.bl, %i.bo                ; 2 uses
  %i.bq = icmp slt i32 %i.bp, 0
  %.v.v = select i1 %i.bq, i32 -200, i32 200
  %.v = mul nsw i32 %.v.v, %i.p
  %i.br = add i32 %.v, %i.bp
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  %i.bt = load i16, ptr %i.bs, align 4, !tbaa !92
  %i.bu = zext i16 %i.bt to i32
  %i.bv = mul nsw i32 %i.bh, %i.bu
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %i.bv, %bb.c ], [ %i.br, %bb.b ]
  %i.bw = mul nuw nsw i32 %i.p, 400
  %i.bx = sdiv i32 %.sink, %i.bw                  ; 9 uses
  %i.by = fmul nsz float %i.aw, f0x39000000       ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 226
  %i.ca = load i8, ptr %i.bz, align 2, !tbaa !93  ; 2 uses
  %i.cb = zext i8 %i.ca to i32
  %i.cc = zext i8 %i.ca to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cc ; 2 uses
  %i.ce = icmp sgt i32 %i.bx, 1
  br i1 %i.ce, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.cf = lshr i32 %i.bx, 1
  %wide.trip.count.i = zext nneg i32 %i.cf to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.bx, 16
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.cg = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.cg
  %scevgep70 = getelementptr i8, ptr %3, i64 %i.cg
  %bound0 = icmp ult ptr %4, %scevgep70
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 1073741816 ; 4 uses
  %i.ch = shl nuw nsw i64 %n.vec, 2
  %i.ci = getelementptr i8, ptr %3, i64 %i.ch     ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.by, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cj = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %3, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !79, !alias.scope !94
  %wide.load71 = load <4 x float>, ptr %i.ck, align 4, !tbaa !79, !alias.scope !94
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %wide.load72 = load <4 x float>, ptr %i.cl, align 4, !tbaa !79, !alias.scope !97, !noalias !94
  %wide.load73 = load <4 x float>, ptr %i.cm, align 4, !tbaa !79, !alias.scope !97, !noalias !94
  %i.cn = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load72)
  %i.co = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load71, <4 x float> %wide.load73)
  store <4 x float> %i.cn, ptr %i.cl, align 4, !tbaa !79, !alias.scope !97, !noalias !94
  store <4 x float> %i.co, ptr %i.cm, align 4, !tbaa !79, !alias.scope !97, !noalias !94
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 4 uses
  %.055.i.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.preheader.i ], [ %i.ci, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.cq = getelementptr inbounds nuw i8, ptr %.055.i.ph, i64 4 ; 2 uses
  %i.cr = load float, ptr %.055.i.ph, align 4, !tbaa !79
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i.ph ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !79
  %i.cu = tail call nsz float @llvm.fmuladd.f32(float %i.by, float %i.cr, float %i.ct)
  store float %i.cu, ptr %i.cs, align 4, !tbaa !79
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa101.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.cq, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.055.i.unr = phi ptr [ %.055.i.ph, %.lr.ph.i.preheader ], [ %i.cq, %.lr.ph.i.prol ]
  %i.cv = add nsw i64 %wide.trip.count.i, -1
  %i.cw = icmp eq i64 %indvars.iv.i.ph, %i.cv
  br i1 %i.cw, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.d
  %.0.lcssa.i = phi ptr [ %3, %bb.d ], [ %i.ci, %middle.block ], [ %.lcssa101.unr, %.lr.ph.i.prol.loopexit ], [ %i.ds, %.lr.ph.i ] ; 2 uses
  %i.cx = ashr i32 %i.bx, 1
  %i.cy = add nsw i32 %i.cx, %i.cb
  %i.cz = sdiv i32 %i.cy, %i.bx                   ; 3 uses
  %i.da = icmp sgt i32 %i.cz, 1
  br i1 %i.da, label %.lr.ph62.i, label %._crit_edge63.i

.lr.ph62.i:                                       ; preds = %.preheader.i
  %i.db = sdiv i32 %i.bx, -2                      ; 2 uses
  %i.dc = add nsw i32 %i.bx, 1
  %i.dd = sdiv i32 %i.dc, 2                       ; 2 uses
  %i.de = icmp slt i32 %i.db, %i.dd
  %i.df = sext i32 %i.db to i64                   ; 7 uses
  %wide.trip.count76.i = sext i32 %i.dd to i64    ; 6 uses
  %i.dg = shl nsw i64 %i.df, 2
  %scevgep76 = getelementptr i8, ptr %4, i64 %i.dg
end_hunk_0
