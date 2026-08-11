inline.NumInlined: 26
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@metasound_read_bitstream:bb.a
  %i.jw = add nuw i32 %i.ji, %i.jm
  %i.jx = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.jw) ; 2 uses
  %i.jy = trunc i32 %i.jv to i8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.iu, i64 %indvars.iv275
  store i8 %i.jy, ptr %i.jz, align 1, !tbaa !31
  %i.ka = load i8, ptr %i.x, align 1, !tbaa !78
  %.not228 = icmp eq i8 %i.ka, 0
  br i1 %.not228, label %._crit_edge206, label %.lr.ph205

.lr.ph205:                                        ; preds = %bb.l
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv275
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph205, %bb.m
  %indvars.iv272 = phi i64 [ 0, %.lr.ph205 ], [ %indvars.iv.next273, %bb.m ] ; 2 uses
  %.sroa.19.12202 = phi i32 [ %i.jx, %.lr.ph205 ], [ %i.ko, %bb.m ] ; 3 uses
  %i.kc = load i8, ptr %i.y, align 2, !tbaa !79
  %i.kd = zext i8 %i.kc to i32                    ; 2 uses
  %i.ke = lshr i32 %.sroa.19.12202, 3
  %i.kf = zext nneg i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw i8, ptr %2, i64 %i.kf
  %i.kh = load i32, ptr %i.kg, align 1, !tbaa !31
  %i.ki = and i32 %.sroa.19.12202, 7
  %i.kj = lshr i32 %i.kh, %i.ki
  %i.kk = sub nsw i32 32, %i.kd
  %i.kl = lshr i32 -1, %i.kk
  %i.km = and i32 %i.kl, %i.kj
  %i.kn = add i32 %.sroa.19.12202, %i.kd
  %i.ko = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.kn) ; 2 uses
  %i.kp = trunc i32 %i.km to i8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kb, i64 %indvars.iv272
  store i8 %i.kp, ptr %i.kq, align 1, !tbaa !31
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %i.kr = load i8, ptr %i.x, align 1, !tbaa !78
  %i.ks = zext i8 %i.kr to i64
  %i.kt = icmp samesign ult i64 %indvars.iv.next273, %i.ks
  br i1 %i.kt, label %bb.m, label %._crit_edge206, !llvm.loop !80

._crit_edge206:                                   ; preds = %bb.m, %bb.l
  %.sroa.19.12.lcssa = phi i32 [ %i.jx, %bb.l ], [ %i.ko, %bb.m ] ; 3 uses
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond279.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count278
  br i1 %exitcond279.not, label %._crit_edge212, label %bb.l, !llvm.loop !81

._crit_edge212:                                   ; preds = %._crit_edge206
  %.pre285 = load i32, ptr %i.av, align 4, !tbaa !61
  %i.ku = icmp eq i32 %.pre285, 2
  br i1 %i.ku, label %._crit_edge212.thread, label %.loopexit

._crit_edge212.thread:                            ; preds = %.preheader166, %._crit_edge212
  %.sroa.19.11.lcssa305 = phi i32 [ %.sroa.19.12.lcssa, %._crit_edge212 ], [ %.sroa.19.5.lcssa, %.preheader166 ] ; 2 uses
  %i.kv = load i32, ptr %i.z, align 4, !tbaa !60
  %i.kw = icmp sgt i32 %i.kv, 0
  br i1 %i.kw, label %.lr.ph.i109, label %read_cb_data.exit112

.lr.ph.i109:                                      ; preds = %._crit_edge212.thread
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ah, i64 1032
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i109
  %.sroa.19.18 = phi i32 [ %.sroa.19.11.lcssa305, %.lr.ph.i109 ], [ %i.me, %bb.n ] ; 3 uses
  %.018.i110 = phi ptr [ %i.kx, %.lr.ph.i109 ], [ %i.mg, %bb.n ] ; 3 uses
  %.01617.i111 = phi i32 [ 0, %.lr.ph.i109 ], [ %i.mh, %bb.n ] ; 2 uses
  %i.ky = load i32, ptr %i.aa, align 4, !tbaa !60
  %i.kz = icmp sge i32 %.01617.i111, %i.ky
  %i.la = zext i1 %i.kz to i64                    ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.la
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !31
  %i.ld = zext i8 %i.lc to i32                    ; 2 uses
  %i.le = lshr i32 %.sroa.19.18, 3
  %i.lf = zext nneg i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 1, !tbaa !31
  %i.li = and i32 %.sroa.19.18, 7
  %i.lj = lshr i32 %i.lh, %i.li
  %i.lk = sub nsw i32 32, %i.ld
  %i.ll = lshr i32 -1, %i.lk
  %i.lm = and i32 %i.ll, %i.lj
  %i.ln = add i32 %.sroa.19.18, %i.ld
  %i.lo = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.ln) ; 3 uses
  %i.lp = trunc i32 %i.lm to i8
  %i.lq = getelementptr inbounds nuw i8, ptr %.018.i110, i64 1
  store i8 %i.lp, ptr %.018.i110, align 1, !tbaa !31
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.la
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !31
  %i.lt = zext i8 %i.ls to i32                    ; 2 uses
  %i.lu = lshr i32 %i.lo, 3
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw i8, ptr %2, i64 %i.lv
  %i.lx = load i32, ptr %i.lw, align 1, !tbaa !31
  %i.ly = and i32 %i.lo, 7
  %i.lz = lshr i32 %i.lx, %i.ly
  %i.ma = sub nsw i32 32, %i.lt
  %i.mb = lshr i32 -1, %i.ma
  %i.mc = and i32 %i.mb, %i.lz
  %i.md = add nuw i32 %i.lo, %i.lt
  %i.me = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.md) ; 2 uses
  %i.mf = trunc i32 %i.mc to i8
  %i.mg = getelementptr inbounds nuw i8, ptr %.018.i110, i64 2
  store i8 %i.mf, ptr %i.lq, align 1, !tbaa !31
  %i.mh = add nuw nsw i32 %.01617.i111, 1         ; 2 uses
  %i.mi = load i32, ptr %i.z, align 4, !tbaa !60
  %i.mj = icmp slt i32 %i.mh, %i.mi
  br i1 %i.mj, label %bb.n, label %read_cb_data.exit112, !llvm.loop !64

read_cb_data.exit112:                             ; preds = %bb.n, %._crit_edge212.thread
  %.sroa.19.19 = phi i32 [ %.sroa.19.11.lcssa305, %._crit_edge212.thread ], [ %i.me, %bb.n ] ; 2 uses
  br i1 %i.u, label %.lr.ph216, label %.loopexit

.lr.ph216:                                        ; preds = %read_cb_data.exit112
  %i.mk = load i8, ptr %i.ad, align 8, !tbaa !82
  %i.ml = zext i8 %i.mk to i32                    ; 2 uses
  %i.mm = sub nsw i32 32, %i.ml
  %i.mn = lshr i32 -1, %i.mm
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ah, i64 1300
  %i.mp = load i8, ptr %i.ae, align 1, !tbaa !83
  %i.mq = zext i8 %i.mp to i32                    ; 2 uses
  %i.mr = sub nsw i32 32, %i.mq
  %i.ms = lshr i32 -1, %i.mr
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ah, i64 1308
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph216, %bb.o
  %indvars.iv280 = phi i64 [ 0, %.lr.ph216 ], [ %indvars.iv.next281, %bb.o ] ; 3 uses
  %.sroa.19.13214 = phi i32 [ %.sroa.19.19, %.lr.ph216 ], [ %i.nm, %bb.o ] ; 3 uses
  %i.mu = lshr i32 %.sroa.19.13214, 3
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %2, i64 %i.mv
  %i.mx = load i32, ptr %i.mw, align 1, !tbaa !31
  %i.my = and i32 %.sroa.19.13214, 7
  %i.mz = lshr i32 %i.mx, %i.my
  %i.na = and i32 %i.mn, %i.mz
  %i.nb = add i32 %.sroa.19.13214, %i.ml
  %i.nc = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.nb) ; 3 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %indvars.iv280
  store i32 %i.na, ptr %i.nd, align 4, !tbaa !60
  %i.ne = lshr i32 %i.nc, 3
  %i.nf = zext nneg i32 %i.ne to i64
  %i.ng = getelementptr inbounds nuw i8, ptr %2, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 1, !tbaa !31
  %i.ni = and i32 %i.nc, 7
  %i.nj = lshr i32 %i.nh, %i.ni
  %i.nk = and i32 %i.ms, %i.nj
  %i.nl = add nuw i32 %i.nc, %i.mq
  %i.nm = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.nl) ; 2 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv280
  store i32 %i.nk, ptr %i.nn, align 4, !tbaa !60
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %exitcond284.not = icmp eq i64 %indvars.iv.next281, %wide.trip.count283
  br i1 %exitcond284.not, label %.loopexit, label %bb.o, !llvm.loop !84

.loopexit:                                        ; preds = %bb.o, %.preheader168, %read_cb_data.exit112, %._crit_edge212
  %.sroa.19.14 = phi i32 [ %.sroa.19.12.lcssa, %._crit_edge212 ], [ %.sroa.19.19, %read_cb_data.exit112 ], [ %.sroa.19.5.lcssa, %.preheader168 ], [ %i.nm, %bb.o ] ; 3 uses
  %i.no = and i32 %.sroa.19.14, 3
  %.not106 = icmp eq i32 %i.no, 0
  br i1 %.not106, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %reass.sub = and i32 %.sroa.19.14, -4
  %i.np = add i32 %reass.sub, 4
  %i.nq = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.np)
  br label %bb.q

bb.q:                                             ; preds = %.loopexit, %bb.p
  %.sroa.19.15 = phi i32 [ %.sroa.19.14, %.loopexit ], [ %i.nq, %bb.p ] ; 2 uses
  %i.nr = load i32, ptr %i.k, align 8, !tbaa !56
  %i.ns = add nsw i32 %i.nr, 1                    ; 3 uses
  store i32 %i.ns, ptr %i.k, align 8, !tbaa !56
  %i.nt = load i32, ptr %i.l, align 4, !tbaa !57
  %i.nu = icmp slt i32 %i.ns, %i.nt
  br i1 %i.nu, label %bb.c, label %._crit_edge222.loopexit, !llvm.loop !85

._crit_edge222.loopexit:                          ; preds = %bb.q
  %i.nv = add nsw i32 %.sroa.19.15, 7
  %i.nw = sdiv i32 %i.nv, 8
  br label %._crit_edge222

._crit_edge222:                                   ; preds = %bb.b, %._crit_edge222.loopexit, %bb.a, %bb.d
  %.0 = phi i32 [ -1094995529, %bb.a ], [ -1094995529, %bb.d ], [ 0, %bb.b ], [ %i.nw, %._crit_edge222.loopexit ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @dec_bark_env(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, float noundef %5, i32 noundef %6) #3 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.e = zext i32 %6 to i64                       ; 3 uses
  %i.f = getelementptr inbounds nuw [320 x i8], ptr %i.d, i64 %i.e
  %i.g = sext i32 %3 to i64
  %i.h = getelementptr inbounds [160 x i8], ptr %i.f, i64 %i.g ; 4 uses
  store <2 x float> <float 4.000000e-01, float 3.500000e-01>, ptr %i.a, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float 2.800000e-01, ptr %i.i, align 8, !tbaa !86
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.e
  %i.k = load float, ptr %i.j, align 4, !tbaa !86 ; 2 uses
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.e ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i8, ptr %i.m, align 8, !tbaa !67    ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load i8, ptr %i.o, align 8, !tbaa !87    ; 2 uses
  %i.q = udiv i8 %i.p, %i.n
  %i.r = zext i8 %i.q to i32                      ; 6 uses
  %.not71 = icmp ugt i8 %i.n, %i.p
  br i1 %.not71, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.s = load ptr, ptr %0, align 8, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 356
  %i.u = load i32, ptr %i.t, align 4, !tbaa !55
  %i.v = icmp eq i32 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !88   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !89   ; 3 uses
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %i.aa = fpext nsz float %i.k to double
  %i.ab = fsub nsz double 1.000000e+00, %i.aa
  %7 = zext i8 %i.n to i64                        ; 3 uses
  %wide.trip.count102 = zext i8 %i.n to i64       ; 3 uses
  br i1 %i.v, label %.preheader.lr.ph.split.us, label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  br i1 %.not, label %.preheader.us.us, label %.preheader.us

.preheader.us.us:                                 ; preds = %.preheader.lr.ph.split.us, %.split.us.us.split.us.us
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %.split.us.us.split.us.us ], [ 0, %.preheader.lr.ph.split.us ] ; 2 uses
  %.05269.us.us = phi ptr [ %i.bf, %.split.us.us.split.us.us ], [ %4, %.preheader.lr.ph.split.us ]
  %.05468.us.us = phi i32 [ %i.bg, %.split.us.us.split.us.us ], [ 0, %.preheader.lr.ph.split.us ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %twinvq_memset_float.exit.us.us.us.us, %.preheader.us.us
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %twinvq_memset_float.exit.us.us.us.us ], [ 0, %.preheader.us.us ] ; 2 uses
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %twinvq_memset_float.exit.us.us.us.us ], [ %indvars.iv97, %.preheader.us.us ] ; 3 uses
  %.15365.us.us.us.us = phi ptr [ %i.bf, %twinvq_memset_float.exit.us.us.us.us ], [ %.05269.us.us, %.preheader.us.us ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv96
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !31
  %i.ae = zext i8 %i.ad to i32
  %i.af = mul nuw nsw i32 %i.ae, %i.r
  %i.ag = add nuw nsw i32 %i.af, %.05468.us.us
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !90
  %i.ak = sitofp i16 %i.aj to float
  %i.al = fmul nnan nsz float %i.ak, f0x3A000000  ; 2 uses
  %i.am = fadd nsz float %i.al, 1.000000e+00      ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv94
  store float %i.al, ptr %i.an, align 4, !tbaa !86
  %i.ao = fpext nsz float %i.am to double
  %i.ap = fcmp nsz olt double %i.ao, 1.000000e-01
  %.1.us.us.us.us = select nsz i1 %i.ap, float 1.000000e-01, float %i.am
  %i.aq = fmul nsz float %5, %.1.us.us.us.us      ; 2 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv94
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !90 ; 5 uses
  %.not3.i.us.us.us.us = icmp eq i16 %i.as, 0
  br i1 %.not3.i.us.us.us.us, label %twinvq_memset_float.exit.us.us.us.us, label %.lr.ph.i.us.us.us.us.preheader

.lr.ph.i.us.us.us.us.preheader:                   ; preds = %bb.b
  %i.at = zext i16 %i.as to i32                   ; 2 uses
  %i.au = zext i16 %i.as to i64                   ; 2 uses
  %min.iters.check130 = icmp ult i16 %i.as, 8
  br i1 %min.iters.check130, label %.lr.ph.i.us.us.us.us.preheader143, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph.i.us.us.us.us.preheader
  %n.vec132 = and i64 %i.au, 65528                ; 4 uses
  %i.av = trunc nuw nsw i64 %n.vec132 to i32
  %i.aw = sub nsw i32 %i.at, %i.av
  %i.ax = shl nuw nsw i64 %n.vec132, 2
  %i.ay = getelementptr i8, ptr %.15365.us.us.us.us, i64 %i.ax
  %broadcast.splatinsert133 = insertelement <4 x float> poison, float %i.aq, i64 0
  %broadcast.splat134 = shufflevector <4 x float> %broadcast.splatinsert133, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph131
  %index136 = phi i64 [ 0, %vector.ph131 ], [ %index.next138, %vector.body135 ] ; 2 uses
  %i.az = shl i64 %index136, 2
  %next.gep137 = getelementptr i8, ptr %.15365.us.us.us.us, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep137, i64 16
  store <4 x float> %broadcast.splat134, ptr %next.gep137, align 4, !tbaa !86
  store <4 x float> %broadcast.splat134, ptr %i.ba, align 4, !tbaa !86
  %index.next138 = add nuw i64 %index136, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next138, %n.vec132
  br i1 %i.bb, label %middle.block139, label %vector.body135, !llvm.loop !91

middle.block139:                                  ; preds = %vector.body135
  %cmp.n140 = icmp eq i64 %n.vec132, %i.au
  br i1 %cmp.n140, label %twinvq_memset_float.exit.us.us.us.us, label %.lr.ph.i.us.us.us.us.preheader143

.lr.ph.i.us.us.us.us.preheader143:                ; preds = %.lr.ph.i.us.us.us.us.preheader, %middle.block139
  %.05.i.us.us.us.us.ph = phi i32 [ %i.at, %.lr.ph.i.us.us.us.us.preheader ], [ %i.aw, %middle.block139 ]
  %.024.i.us.us.us.us.ph = phi ptr [ %.15365.us.us.us.us, %.lr.ph.i.us.us.us.us.preheader ], [ %i.ay, %middle.block139 ]
  br label %.lr.ph.i.us.us.us.us

.lr.ph.i.us.us.us.us:                             ; preds = %.lr.ph.i.us.us.us.us.preheader143, %.lr.ph.i.us.us.us.us
  %.05.i.us.us.us.us = phi i32 [ %i.bc, %.lr.ph.i.us.us.us.us ], [ %.05.i.us.us.us.us.ph, %.lr.ph.i.us.us.us.us.preheader143 ]
  %.024.i.us.us.us.us = phi ptr [ %i.bd, %.lr.ph.i.us.us.us.us ], [ %.024.i.us.us.us.us.ph, %.lr.ph.i.us.us.us.us.preheader143 ] ; 2 uses
  %i.bc = add nsw i32 %.05.i.us.us.us.us, -1      ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.024.i.us.us.us.us, i64 4
  store float %i.aq, ptr %.024.i.us.us.us.us, align 4, !tbaa !86
  %.not.i.us.us.us.us = icmp eq i32 %i.bc, 0
  br i1 %.not.i.us.us.us.us, label %twinvq_memset_float.exit.us.us.us.us, label %.lr.ph.i.us.us.us.us, !llvm.loop !94

twinvq_memset_float.exit.us.us.us.us:             ; preds = %.lr.ph.i.us.us.us.us, %middle.block139, %bb.b
  %i.be = zext i16 %i.as to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.15365.us.us.us.us, i64 %i.be ; 2 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  %exitcond103.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count102
  br i1 %exitcond103.not, label %.split.us.us.split.us.us, label %bb.b, !llvm.loop !95

.split.us.us.split.us.us:                         ; preds = %twinvq_memset_float.exit.us.us.us.us
  %i.bg = add nuw nsw i32 %.05468.us.us, 1        ; 2 uses
  %i.bh = icmp samesign ult i32 %i.bg, %i.r
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, %7
  br i1 %i.bh, label %.preheader.us.us, label %._crit_edge, !llvm.loop !96

.preheader.us:                                    ; preds = %.preheader.lr.ph.split.us, %.split.us.us.split
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %.split.us.us.split ], [ 0, %.preheader.lr.ph.split.us ] ; 2 uses
  %.05269.us = phi ptr [ %i.cn, %.split.us.us.split ], [ %4, %.preheader.lr.ph.split.us ]
  %.05468.us = phi i32 [ %i.co, %.split.us.us.split ], [ 0, %.preheader.lr.ph.split.us ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %twinvq_memset_float.exit.us.us, %.preheader.us
  %indvars.iv86.a = phi i64 [ %indvars.iv.next87.a, %twinvq_memset_float.exit.us.us ], [ 0, %.preheader.us ] ; 2 uses
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %twinvq_memset_float.exit.us.us ], [ %indvars.iv86, %.preheader.us ] ; 3 uses
  %.15365.us.us = phi ptr [ %i.cn, %twinvq_memset_float.exit.us.us ], [ %.05269.us, %.preheader.us ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv86.a
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !31
  %i.bk = zext i8 %i.bj to i32
  %i.bl = mul nuw nsw i32 %i.bk, %i.r
  %i.bm = add nuw nsw i32 %i.bl, %.05468.us
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !90
  %i.bq = sitofp i16 %i.bp to float
  %i.br = fmul nnan nsz float %i.bq, f0x3A000000  ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv84 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !86
  %i.bu = tail call nsz float @llvm.fmuladd.f32(float %i.bt, float 5.000000e-01, float %i.br)
  %i.bv = fadd nsz float %i.bu, 1.000000e+00      ; 2 uses
  store float %i.br, ptr %i.bs, align 4, !tbaa !86
  %i.bw = fpext nsz float %i.bv to double
  %i.bx = fcmp nsz olt double %i.bw, 1.000000e-01
  %.1.us.us = select nsz i1 %i.bx, float 1.000000e-01, float %i.bv
  %i.by = fmul nsz float %5, %.1.us.us            ; 2 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv84
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !90 ; 5 uses
  %.not3.i.us.us = icmp eq i16 %i.ca, 0
  br i1 %.not3.i.us.us, label %twinvq_memset_float.exit.us.us, label %.lr.ph.i.us.us.preheader

.lr.ph.i.us.us.preheader:                         ; preds = %bb.c
  %i.cb = zext i16 %i.ca to i32                   ; 2 uses
  %i.cc = zext i16 %i.ca to i64                   ; 2 uses
  %min.iters.check116 = icmp ult i16 %i.ca, 8
  br i1 %min.iters.check116, label %.lr.ph.i.us.us.preheader144, label %vector.ph117

vector.ph117:                                     ; preds = %.lr.ph.i.us.us.preheader
  %n.vec118 = and i64 %i.cc, 65528                ; 4 uses
  %i.cd = trunc nuw nsw i64 %n.vec118 to i32
  %i.ce = sub nsw i32 %i.cb, %i.cd
  %i.cf = shl nuw nsw i64 %n.vec118, 2
  %i.cg = getelementptr i8, ptr %.15365.us.us, i64 %i.cf
  %broadcast.splatinsert119 = insertelement <4 x float> poison, float %i.by, i64 0
  %broadcast.splat120 = shufflevector <4 x float> %broadcast.splatinsert119, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph117
  %index122 = phi i64 [ 0, %vector.ph117 ], [ %index.next124, %vector.body121 ] ; 2 uses
  %i.ch = shl i64 %index122, 2
  %next.gep123 = getelementptr i8, ptr %.15365.us.us, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep123, i64 16
  store <4 x float> %broadcast.splat120, ptr %next.gep123, align 4, !tbaa !86
  store <4 x float> %broadcast.splat120, ptr %i.ci, align 4, !tbaa !86
  %index.next124 = add nuw i64 %index122, 8       ; 2 uses
  %i.cj = icmp eq i64 %index.next124, %n.vec118
  br i1 %i.cj, label %middle.block125, label %vector.body121, !llvm.loop !97

middle.block125:                                  ; preds = %vector.body121
  %cmp.n126 = icmp eq i64 %n.vec118, %i.cc
  br i1 %cmp.n126, label %twinvq_memset_float.exit.us.us, label %.lr.ph.i.us.us.preheader144

.lr.ph.i.us.us.preheader144:                      ; preds = %.lr.ph.i.us.us.preheader, %middle.block125
  %.05.i.us.us.ph = phi i32 [ %i.cb, %.lr.ph.i.us.us.preheader ], [ %i.ce, %middle.block125 ]
  %.024.i.us.us.ph = phi ptr [ %.15365.us.us, %.lr.ph.i.us.us.preheader ], [ %i.cg, %middle.block125 ]
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us.preheader144, %.lr.ph.i.us.us
  %.05.i.us.us = phi i32 [ %i.ck, %.lr.ph.i.us.us ], [ %.05.i.us.us.ph, %.lr.ph.i.us.us.preheader144 ]
  %.024.i.us.us = phi ptr [ %i.cl, %.lr.ph.i.us.us ], [ %.024.i.us.us.ph, %.lr.ph.i.us.us.preheader144 ] ; 2 uses
  %i.ck = add nsw i32 %.05.i.us.us, -1            ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.024.i.us.us, i64 4
  store float %i.by, ptr %.024.i.us.us, align 4, !tbaa !86
  %.not.i.us.us = icmp eq i32 %i.ck, 0
  br i1 %.not.i.us.us, label %twinvq_memset_float.exit.us.us, label %.lr.ph.i.us.us, !llvm.loop !98

twinvq_memset_float.exit.us.us:                   ; preds = %.lr.ph.i.us.us, %middle.block125, %bb.c
  %i.cm = zext i16 %i.ca to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.15365.us.us, i64 %i.cm ; 2 uses
  %indvars.iv.next87.a = add nuw nsw i64 %indvars.iv86.a, 1 ; 2 uses
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %exitcond93.not = icmp eq i64 %indvars.iv.next87.a, %wide.trip.count102
  br i1 %exitcond93.not, label %.split.us.us.split, label %bb.c, !llvm.loop !95

.split.us.us.split:                               ; preds = %twinvq_memset_float.exit.us.us
  %i.co = add nuw nsw i32 %.05468.us, 1           ; 2 uses
  %i.cp = icmp samesign ult i32 %i.co, %i.r
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, %7
  br i1 %i.cp, label %.preheader.us, label %._crit_edge, !llvm.loop !96

.preheader:                                       ; preds = %.preheader.lr.ph, %.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.split ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.05269 = phi ptr [ %i.ea, %.split ], [ %4, %.preheader.lr.ph ]
  %.05468 = phi i32 [ %i.eb, %.split ], [ 0, %.preheader.lr.ph ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %twinvq_memset_float.exit
  %indvars.iv79.a = phi i64 [ 0, %.preheader ], [ %indvars.iv.next80.a, %twinvq_memset_float.exit ] ; 2 uses
  %indvars.iv.a = phi i64 [ %indvars.iv, %.preheader ], [ %indvars.iv.next.a, %twinvq_memset_float.exit ] ; 4 uses
  %.15365 = phi ptr [ %.05269, %.preheader ], [ %i.ea, %twinvq_memset_float.exit ] ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv79.a
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !31
  %i.cs = zext i8 %i.cr to i32
  %i.ct = mul nuw nsw i32 %i.cs, %i.r
  %i.cu = add nuw nsw i32 %i.ct, %.05468
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !90
  %i.cy = sitofp i16 %i.cx to float
  %i.cz = fmul nnan nsz float %i.cy, f0x3A000000  ; 2 uses
  %i.da = fpext nsz float %i.cz to double         ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.a
  %i.dc = load float, ptr %i.db, align 4, !tbaa !86
  %i.dd = fmul nsz float %i.k, %i.dc
  %i.de = fpext nsz float %i.dd to double
  %i.df = tail call nsz double @llvm.fmuladd.f64(double %i.ab, double %i.da, double %i.de)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.in = phi double [ %i.df, %bb.e ], [ %i.da, %bb.d ]
  %i.dg = fadd nsz double %.in, 1.000000e+00
  %i.dh = fptrunc nsz double %i.dg to float       ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.a
  store float %i.cz, ptr %i.di, align 4, !tbaa !86
  %i.dj = fpext nsz float %i.dh to double
  %i.dk = fcmp nsz olt double %i.dj, 1.000000e-01
  %.1 = select nsz i1 %i.dk, float 1.000000e-01, float %i.dh
  %i.dl = fmul nsz float %5, %.1                  ; 2 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv.a
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !90 ; 5 uses
  %.not3.i = icmp eq i16 %i.dn, 0
  br i1 %.not3.i, label %twinvq_memset_float.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.do = zext i16 %i.dn to i32                   ; 2 uses
  %i.dp = zext i16 %i.dn to i64                   ; 2 uses
  %min.iters.check = icmp ult i16 %i.dn, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader147, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.dp, 65528                   ; 4 uses
  %i.dq = trunc nuw nsw i64 %n.vec to i32
  %i.dr = sub nsw i32 %i.do, %i.dq
  %i.ds = shl nuw nsw i64 %n.vec, 2
  %i.dt = getelementptr i8, ptr %.15365, i64 %i.ds
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.dl, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.du = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.15365, i64 %i.du ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !86
  store <4 x float> %broadcast.splat, ptr %i.dv, align 4, !tbaa !86
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dp
  br i1 %cmp.n, label %twinvq_memset_float.exit, label %.lr.ph.i.preheader147

.lr.ph.i.preheader147:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.05.i.ph = phi i32 [ %i.do, %.lr.ph.i.preheader ], [ %i.dr, %middle.block ]
  %.024.i.ph = phi ptr [ %.15365, %.lr.ph.i.preheader ], [ %i.dt, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader147, %.lr.ph.i
  %.05.i = phi i32 [ %i.dx, %.lr.ph.i ], [ %.05.i.ph, %.lr.ph.i.preheader147 ]
  %.024.i = phi ptr [ %i.dy, %.lr.ph.i ], [ %.024.i.ph, %.lr.ph.i.preheader147 ] ; 2 uses
  %i.dx = add nsw i32 %.05.i, -1                  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.024.i, i64 4
  store float %i.dl, ptr %.024.i, align 4, !tbaa !86
  %.not.i = icmp eq i32 %i.dx, 0
  br i1 %.not.i, label %twinvq_memset_float.exit, label %.lr.ph.i, !llvm.loop !100

twinvq_memset_float.exit:                         ; preds = %.lr.ph.i, %middle.block, %bb.f
  %i.dz = zext i16 %i.dn to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.15365, i64 %i.dz ; 2 uses
  %indvars.iv.next80.a = add nuw nsw i64 %indvars.iv79.a, 1 ; 2 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next80.a, %wide.trip.count102
  br i1 %exitcond.not, label %.split, label %bb.d, !llvm.loop !95

.split:                                           ; preds = %twinvq_memset_float.exit
  %i.eb = add nuw nsw i32 %.05468, 1              ; 2 uses
  %i.ec = icmp samesign ult i32 %i.eb, %i.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %7
  br i1 %i.ec, label %.preheader, label %._crit_edge, !llvm.loop !96

._crit_edge:                                      ; preds = %.split, %.split.us.us.split, %.split.us.us.split.us.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @decode_ppc(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef captures(none) %4) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !54     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 356
  %i.e = load i32, ptr %i.d, align 4, !tbaa !55   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  %i.g = load i32, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  %i.h = sdiv i32 %i.g, 1000                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !37
  %i.k = mul nsw i32 %i.e, 1000
  %i.l = sext i32 %i.k to i64
  %i.m = sdiv i64 %i.j, %i.l
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.p = load i16, ptr %i.o, align 8, !tbaa !49
  %i.q = uitofp i16 %i.p to float                 ; 2 uses
  %i.r = sitofp nsz i32 %i.h to float
  %i.s = fdiv nsz float %i.q, %i.r
  %i.t = icmp eq i32 %i.e, 1                      ; 2 uses
  %i.u = fpext nsz float %i.s to double
  %i.v = fmul nsz double %i.u, 2.000000e-01       ; 2 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = tail call nsz double @llvm.log2.f64(double %i.v)
  %i.x = fptrunc nsz double %i.w to float         ; 2 uses
  %i.y = fpext nsz float %i.x to double
  %i.z = fadd nsz double %i.y, f0x4004AE00D1CFDEB4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.aa = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = fmul nsz <2 x double> %i.ab, <double 1.000000e+00, double 4.000000e+02>
  %i.ad = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> <double 4.000000e+02, double 6.000000e+00>, <2 x double> splat (double 5.000000e-01))
  %i.ae = fptosi <2 x double> %i.ad to <2 x i32>
  %i.af = sitofp <2 x i32> %i.ae to <2 x double>
  %i.ag = fdiv nsz <2 x double> %i.af, splat (double 4.000000e+02) ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  %i.ai = fptrunc nsz double %i.ah to float
  %i.aj = extractelement <2 x double> %i.ag, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.045.in = phi double [ %i.z, %bb.b ], [ %i.aj, %bb.c ]
  %.044 = phi nsz float [ %i.x, %bb.b ], [ %i.ai, %bb.c ] ; 2 uses
  %.045 = fptrunc double %.045.in to float
  %i.ak = fsub nsz float %.045, %.044
  %i.al = sitofp nsz i32 %1 to float
  %i.am = fmul nsz float %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !82
  %i.ap = zext nneg i8 %i.ao to i32
  %notmask = shl nsw i32 -1, %i.ap
  %i.aq = xor i32 %notmask, -1
  %i.ar = uitofp nneg i32 %i.aq to float
  %i.as = fdiv nsz float %i.am, %i.ar
  %i.at = fadd nsz float %.044, %i.as             ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %exp2 = tail call nsz float @llvm.exp2.f32(float %i.at)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.au = fmul nsz float %i.at, 4.000000e+02
  %i.av = fpext nsz float %i.au to double
  %i.aw = fadd nsz double %i.av, 5.000000e-01
  %i.ax = fptosi double %i.aw to i32
  %i.ay = sitofp nsz i32 %i.ax to double
  %i.az = fdiv nsz double %i.ay, 4.000000e+02
  %i.ba = fptrunc nsz double %i.az to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.047 = phi nsz float [ %exp2, %bb.e ], [ %i.ba, %bb.f ] ; 4 uses
  switch i32 %i.h, label %bb.k [
    i32 8, label %bb.l
    i32 11, label %bb.h
    i32 16, label %bb.h
    i32 22, label %bb.i
    i32 44, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.bb = icmp eq i32 %i.n, 32
  %i.bc = select i1 %i.bb, float 2.000000e+00, float 4.000000e+00
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k, %bb.j, %bb.i, %bb.h
  %.046 = phi nsz float [ 4.000000e+00, %bb.k ], [ 8.000000e+00, %bb.j ], [ 3.000000e+00, %bb.h ], [ 2.000000e+00, %bb.g ], [ %i.bc, %bb.i ]
  %i.bd = fdiv nsz float %i.q, %.047
  %i.be = fdiv nsz float %.046, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 226
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !101 ; 3 uses
  %i.bh = uitofp i8 %i.bg to float
  %i.bi = fmul nsz float %i.be, %i.bh
  %i.bj = fptosi float %i.bi to i32               ; 2 uses
  %.off = add i32 %i.g, -22000
  %i.bk = icmp ult i32 %.off, 1000
  %i.bl = icmp eq i32 %i.n, 32
  %or.cond = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bm = fpext nsz float %.047 to double
  %i.bn = fdiv nsz double 2.000000e+00, %i.bm
  %i.bo = fadd nsz double %i.bn, 1.000000e+00
  %i.bp = sitofp nsz i32 %i.bj to double
  %i.bq = tail call nsz double @llvm.fmuladd.f64(double %i.bo, double %i.bp, double 5.000000e-01)
  %i.br = fptosi double %i.bq to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0 = phi i32 [ %i.br, %bb.m ], [ %i.bj, %bb.l ] ; 7 uses
  %i.bs = icmp eq i32 %i.e, 2
  %i.bt = select i1 %i.bs, float 2.500000e+04, float 2.000000e+04 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 227
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !83
  %i.bw = zext nneg i8 %i.bv to i32
  %notmask48 = shl nsw i32 -1, %i.bw
  %i.bx = xor i32 %notmask48, -1
  %i.by = uitofp nneg i32 %i.bx to float
  %i.bz = fdiv nsz float %i.bt, %i.by             ; 2 uses
  %i.ca = sitofp nsz i32 %2 to float
  %i.cb = fmul nnan nsz float %i.bz, 5.000000e-01
  %i.cc = tail call nsz float @llvm.fmuladd.f32(float %i.bz, float %i.ca, float %i.cb)
  %i.cd = fdiv nsz float %i.cc, %i.bt             ; 2 uses
  %i.ce = fcmp nsz ogt float %i.cd, -1.000000e+00
  %i.cf = select nsz i1 %i.ce, float %i.cd, float -1.000000e+00 ; 2 uses
  %i.cg = fcmp nsz ogt float %i.cf, 1.000000e+00
  %..i.i = select nsz i1 %i.cg, float 1.000000e+00, float %i.cf ; 2 uses
  %i.ch = fcmp nsz ogt float %..i.i, 0.000000e+00
  %i.ci = fneg nsz float %i.bt
  %i.cj = select nsz i1 %i.ch, float %i.bt, float %i.ci
  %i.ck = fpext nnan ninf nsz float %i.cj to double
  %i.cl = tail call nsz float @llvm.fabs.f32(float %..i.i)
  %i.cm = fpext float %i.cl to double
  %i.cn = fmul nsz double %i.cm, f0x401536958FD351F0
  %i.co = tail call nsz double @llvm.exp.f64(double %i.cn)
  %i.cp = fadd nsz double %i.co, -1.000000e+00
  %i.cq = fmul nsz double %i.cp, %i.ck
  %i.cr = fdiv nsz double %i.cq, 2.000000e+02
  %i.cs = fptrunc nsz double %i.cr to float
  %i.ct = fmul nsz float %i.cs, f0x39000000       ; 9 uses
  %i.cu = zext i8 %i.bg to i32
  %i.cv = zext i8 %i.bg to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cv ; 2 uses
  %i.cx = icmp sgt i32 %.0, 1
  br i1 %i.cx, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.cy = lshr i32 %.0, 1
  %wide.trip.count.i = zext nneg i32 %i.cy to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %.0, 16
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.cz = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.cz
  %scevgep59 = getelementptr i8, ptr %3, i64 %i.cz
  %bound0 = icmp ult ptr %4, %scevgep59
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 1073741816 ; 4 uses
  %i.da = shl nuw nsw i64 %n.vec, 2
  %i.db = getelementptr i8, ptr %3, i64 %i.da     ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ct, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %3, i64 %i.dc ; 2 uses
  %i.dd = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !86, !alias.scope !102
  %wide.load60 = load <4 x float>, ptr %i.dd, align 4, !tbaa !86, !alias.scope !102
end_hunk_0
