inline.NumInlined: 16
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@psy_lame_window:bb.a
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !77 ; 2 uses
  br i1 %or.cond, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.split, %bb.aj
  %i.ir = phi i32 [ %i.ii, %.split ], [ %i.iq, %bb.aj ] ; 2 uses
  %i.is = phi ptr [ %i.ih, %.split ], [ %i.ip, %bb.aj ]
  %.sroa.92.1339 = phi i1 [ true, %.split ], [ %i.io, %bb.aj ]
  %.sroa.80.1333 = phi i32 [ 0, %.split ], [ %.sroa.80.0, %bb.aj ]
  %.sroa.69.1327 = phi i1 [ true, %.split ], [ %i.in, %bb.aj ]
  %.sroa.14.3297 = phi i1 [ true, %.split ], [ %i.il, %bb.aj ]
  %.sroa.0.2291 = phi i1 [ true, %.split ], [ %i.ik, %bb.aj ]
  %i.it = phi <4 x i1> [ splat (i1 true), %.split ], [ %i.im, %bb.aj ]
  %i.iu = icmp eq i32 %i.ir, 2
  %spec.select.i = select i1 %i.iu, i32 3, i32 0
  br label %lame_apply_block_type.exit

bb.al:                                            ; preds = %.split, %bb.aj
  %i.iv = phi i32 [ %i.ii, %.split ], [ %i.iq, %bb.aj ] ; 2 uses
  %i.iw = phi ptr [ %i.ih, %.split ], [ %i.ip, %bb.aj ] ; 3 uses
  %.sroa.92.1340 = phi i1 [ true, %.split ], [ %i.io, %bb.aj ] ; 3 uses
  %.sroa.80.1334 = phi i32 [ 0, %.split ], [ %.sroa.80.0, %bb.aj ] ; 4 uses
  %.sroa.69.1328 = phi i1 [ true, %.split ], [ %i.in, %bb.aj ] ; 3 uses
  %.sroa.14.3298 = phi i1 [ true, %.split ], [ %i.il, %bb.aj ] ; 3 uses
  %.sroa.0.2292 = phi i1 [ true, %.split ], [ %i.ik, %bb.aj ] ; 3 uses
  %i.ix = phi <4 x i1> [ splat (i1 true), %.split ], [ %i.im, %bb.aj ] ; 3 uses
  switch i32 %i.iv, label %lame_apply_block_type.exit [
    i32 0, label %.thread
    i32 3, label %lame_apply_block_type.exit.thread
  ]

.thread:                                          ; preds = %bb.al
  store i32 1, ptr %0, align 8, !tbaa !55
  store i32 2, ptr %i.iw, align 4, !tbaa !77
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %i.iy, align 4, !tbaa !55
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.iz, align 8, !tbaa !78
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %i.ja, align 4, !tbaa !55
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.jb, align 4, !tbaa !80
  br i1 %.sroa.0.2292, label %bb.an, label %bb.ap

lame_apply_block_type.exit.thread:                ; preds = %bb.al
  store i32 2, ptr %0, align 8, !tbaa !55
  store i32 2, ptr %i.iw, align 4, !tbaa !77
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %i.jc, align 4, !tbaa !55
  br label %.loopexit.loopexit

lame_apply_block_type.exit:                       ; preds = %bb.ak, %bb.al
  %i.jd = phi i32 [ %i.iv, %bb.al ], [ %i.ir, %bb.ak ] ; 3 uses
  %i.je = phi ptr [ %i.iw, %bb.al ], [ %i.is, %bb.ak ]
  %.sroa.92.1338 = phi i1 [ %.sroa.92.1340, %bb.al ], [ %.sroa.92.1339, %bb.ak ] ; 3 uses
  %.sroa.80.1332 = phi i32 [ %.sroa.80.1334, %bb.al ], [ %.sroa.80.1333, %bb.ak ] ; 5 uses
  %.sroa.69.1326 = phi i1 [ %.sroa.69.1328, %bb.al ], [ %.sroa.69.1327, %bb.ak ] ; 3 uses
  %.sroa.14.3296 = phi i1 [ %.sroa.14.3298, %bb.al ], [ %.sroa.14.3297, %bb.ak ] ; 3 uses
  %.sroa.0.2290 = phi i1 [ %.sroa.0.2292, %bb.al ], [ %.sroa.0.2291, %bb.ak ] ; 3 uses
  %.0.i = phi i32 [ 2, %bb.al ], [ %spec.select.i, %bb.ak ]
  %i.jf = phi <4 x i1> [ %i.ix, %bb.al ], [ %i.it, %bb.ak ] ; 3 uses
  store i32 %i.jd, ptr %0, align 8, !tbaa !55
  store i32 %.0.i, ptr %i.je, align 4, !tbaa !77
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %i.jg, align 4, !tbaa !55
  %.not114 = icmp eq i32 %i.jd, 2
  br i1 %.not114, label %.loopexit.loopexit, label %bb.am

bb.am:                                            ; preds = %lame_apply_block_type.exit
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.jh, align 8, !tbaa !78
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %i.ji, align 4, !tbaa !55
  %i.jj = icmp eq i32 %i.jd, 1
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br i1 %i.jj, label %.loopexit, label %.split350

.split350:                                        ; preds = %bb.am
  store i32 1, ptr %i.jk, align 4, !tbaa !80
  br i1 %.sroa.0.2290, label %bb.an, label %bb.ap

.loopexit.loopexit:                               ; preds = %lame_apply_block_type.exit.thread, %lame_apply_block_type.exit
  %.sroa.92.1337 = phi i1 [ %.sroa.92.1340, %lame_apply_block_type.exit.thread ], [ %.sroa.92.1338, %lame_apply_block_type.exit ]
  %.sroa.80.1331 = phi i32 [ %.sroa.80.1334, %lame_apply_block_type.exit.thread ], [ %.sroa.80.1332, %lame_apply_block_type.exit ] ; 2 uses
  %.sroa.69.1325 = phi i1 [ %.sroa.69.1328, %lame_apply_block_type.exit.thread ], [ %.sroa.69.1326, %lame_apply_block_type.exit ]
  %.sroa.14.3295 = phi i1 [ %.sroa.14.3298, %lame_apply_block_type.exit.thread ], [ %.sroa.14.3296, %lame_apply_block_type.exit ]
  %.sroa.0.2289 = phi i1 [ %.sroa.0.2292, %lame_apply_block_type.exit.thread ], [ %.sroa.0.2290, %lame_apply_block_type.exit ]
  %i.jl = phi <4 x i1> [ %i.ix, %lame_apply_block_type.exit.thread ], [ %i.jf, %lame_apply_block_type.exit ]
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 8, ptr %i.jm, align 8, !tbaa !78
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.jn, align 4, !tbaa !80
  %i.jo = getelementptr inbounds nuw i8, ptr %i.j, i64 9228
  %i.jp = load i8, ptr %i.jo, align 4, !tbaa !81  ; 2 uses
  %i.jq = zext i8 %i.jp to i32                    ; 6 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  store i32 1, ptr %i.jr, align 4, !tbaa !55
  %i.js = lshr i32 %i.jq, 1
  %.lobit = and i32 %i.js, 1
  %spec.select.1 = xor i32 %.lobit, 1             ; 2 uses
  %i.jt = zext nneg i32 %spec.select.1 to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.jt ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !55
  %i.jw = add nsw i32 %i.jv, 1
  store i32 %i.jw, ptr %i.ju, align 4, !tbaa !55
  %i.jx = and i32 %i.jq, 4
  %.not115.2 = icmp eq i32 %i.jx, 0
  %spec.select.2 = select i1 %.not115.2, i32 2, i32 %spec.select.1 ; 2 uses
  %i.jy = zext nneg i32 %spec.select.2 to i64
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.jy ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !55
  %i.kb = add nsw i32 %i.ka, 1
  store i32 %i.kb, ptr %i.jz, align 4, !tbaa !55
  %i.kc = and i32 %i.jq, 8
  %.not115.3 = icmp eq i32 %i.kc, 0
  %spec.select.3 = select i1 %.not115.3, i32 3, i32 %spec.select.2 ; 2 uses
  %i.kd = zext nneg i32 %spec.select.3 to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.kd ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !55
  %i.kg = add nsw i32 %i.kf, 1
  store i32 %i.kg, ptr %i.ke, align 4, !tbaa !55
  %i.kh = and i32 %i.jq, 16
  %.not115.4 = icmp eq i32 %i.kh, 0
  %spec.select.4 = select i1 %.not115.4, i32 4, i32 %spec.select.3 ; 2 uses
  %i.ki = zext nneg i32 %spec.select.4 to i64
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.ki ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !55
  %i.kl = add nsw i32 %i.kk, 1
  store i32 %i.kl, ptr %i.kj, align 4, !tbaa !55
  %i.km = and i32 %i.jq, 32
  %.not115.5 = icmp eq i32 %i.km, 0
  %spec.select.5 = select i1 %.not115.5, i32 5, i32 %spec.select.4 ; 2 uses
  %i.kn = zext nneg i32 %spec.select.5 to i64
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.kn ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !55
  %i.kq = add nsw i32 %i.kp, 1
  store i32 %i.kq, ptr %i.ko, align 4, !tbaa !55
  %i.kr = and i32 %i.jq, 64
  %.not115.6 = icmp eq i32 %i.kr, 0
  %spec.select.6 = select i1 %.not115.6, i32 6, i32 %spec.select.5 ; 2 uses
  %i.ks = zext nneg i32 %spec.select.6 to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.ks ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !55
  %i.kv = add nsw i32 %i.ku, 1
  store i32 %i.kv, ptr %i.kt, align 4, !tbaa !55
  %.not115.7 = icmp sgt i8 %i.jp, -1
  %i.kw = zext nneg i32 %spec.select.6 to i64
  %i.kx = select i1 %.not115.7, i64 7, i64 %i.kw
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.kx ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !55
  %i.la = add nsw i32 %i.kz, 1
  store i32 %i.la, ptr %i.ky, align 4, !tbaa !55
  br i1 %.sroa.0.2289, label %bb.an, label %bb.ap

.loopexit:                                        ; preds = %bb.am
  store i32 0, ptr %i.jk, align 4, !tbaa !80
  br i1 %.sroa.0.2290, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %.thread, %.split350, %.loopexit.loopexit, %.loopexit
  %.sroa.14.3293349 = phi i1 [ %.sroa.14.3295, %.loopexit.loopexit ], [ %.sroa.14.3296, %.loopexit ], [ %.sroa.14.3296, %.split350 ], [ %.sroa.14.3298, %.thread ] ; 2 uses
  %.sroa.69.1323344 = phi i1 [ %.sroa.69.1325, %.loopexit.loopexit ], [ %.sroa.69.1326, %.loopexit ], [ %.sroa.69.1326, %.split350 ], [ %.sroa.69.1328, %.thread ]
  %.sroa.80.1329342 = phi i32 [ %.sroa.80.1331, %.loopexit.loopexit ], [ %.sroa.80.1332, %.loopexit ], [ %.sroa.80.1332, %.split350 ], [ %.sroa.80.1334, %.thread ] ; 3 uses
  %.sroa.92.1335341 = phi i1 [ %.sroa.92.1337, %.loopexit.loopexit ], [ %.sroa.92.1338, %.loopexit ], [ %.sroa.92.1338, %.split350 ], [ %.sroa.92.1340, %.thread ]
  %i.lb = phi <4 x i1> [ %i.jl, %.loopexit.loopexit ], [ %i.jf, %.loopexit ], [ %i.jf, %.split350 ], [ %i.ix, %.thread ] ; 4 uses
  %i.lc = extractelement <4 x i1> %i.lb, i64 0    ; 2 uses
  %i.ld = select i1 %.sroa.14.3293349, i1 %i.lc, i1 false
  %i.le = extractelement <4 x i1> %i.lb, i64 1
  %i.lf = select i1 %i.ld, i1 %i.le, i1 false     ; 2 uses
  %.mux = select i1 %i.lc, i64 3, i64 2
  %.mux.mux = select i1 %.sroa.14.3293349, i64 %.mux, i64 1
  %i.lg = extractelement <4 x i1> %i.lb, i64 2    ; 2 uses
  %i.lh = select i1 %i.lf, i1 %i.lg, i1 false
  %i.li = extractelement <4 x i1> %i.lb, i64 3
  %i.lj = select i1 %i.lh, i1 %i.li, i1 false     ; 2 uses
  %.mux.mux.mux = select i1 %i.lg, i64 5, i64 4
  %.mux.mux.mux.mux = select i1 %i.lf, i64 %.mux.mux.mux, i64 %.mux.mux
  %i.lk = select i1 %i.lj, i1 %.sroa.69.1323344, i1 false
  %.mux.mux.mux.mux.mux = select i1 %i.lj, i64 6, i64 %.mux.mux.mux.mux
  br i1 %i.lk, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %.not116.7 = icmp eq i32 %.sroa.80.1329342, 0
  %spec.select363 = select i1 %.sroa.92.1335341, i64 0, i64 8
  %spec.select365 = select i1 %.not116.7, i64 %spec.select363, i64 7
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %.thread, %.split350, %.loopexit.loopexit, %.loopexit
  %.sroa.80.1329343 = phi i32 [ %.sroa.80.1329342, %bb.ao ], [ %.sroa.80.1332, %.loopexit ], [ %.sroa.80.1329342, %bb.an ], [ %.sroa.80.1332, %.split350 ], [ %.sroa.80.1334, %.thread ], [ %.sroa.80.1331, %.loopexit.loopexit ]
  %.0104 = phi i64 [ %spec.select365, %bb.ao ], [ 0, %.loopexit ], [ %.mux.mux.mux.mux.mux, %bb.an ], [ 0, %.split350 ], [ 0, %.thread ], [ 0, %.loopexit.loopexit ]
  %i.ll = getelementptr inbounds nuw i8, ptr @window_grouping, i64 %.0104
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !58
  %i.ln = getelementptr inbounds nuw i8, ptr %i.j, i64 9228
  store i8 %i.lm, ptr %i.ln, align 4, !tbaa !81
  %i.lo = getelementptr inbounds nuw i8, ptr %i.j, i64 9304
  store i32 %.sroa.80.1329343, ptr %i.lo, align 4, !tbaa !76
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @psy_3gpp_analyze(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = alloca [128 x float], align 16           ; 7 uses
  %i.b = tail call ptr @ff_psy_find_group(ptr noundef %0, i32 noundef %1) #11
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !82
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.m = sext i32 %1 to i64                       ; 3 uses
  %i.n = mul nsw i64 %i.m, 9312
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %psy_3gpp_analyze_channel.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %psy_3gpp_analyze_channel.exit ] ; 6 uses
  %i.o = add i64 %indvars.iv, %i.m
  %i.p = mul i64 %i.o, 2052
  %i.q = mul nuw nsw i64 %indvars.iv, 9312
  %i.r = add nsw i64 %indvars.iv, %i.m            ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !84
  %i.u = getelementptr inbounds nuw [96 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !41   ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 3616
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !67   ; 2 uses
  %i.y = getelementptr [9312 x i8], ptr %i.x, i64 %i.r ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.z = load i32, ptr %i.v, align 8, !tbaa !47   ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 32000
  br i1 %i.aa, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = sitofp nsz i32 %i.z to float
  %i.ac = fmul nnan nsz float %i.ab, 1.000000e+02
  %i.ad = fdiv nsz float %i.ac, 3.200000e+04
  %i.ae = fsub nsz float 1.000000e+02, %i.ad      ; 2 uses
  %i.af = fcmp nsz olt float %i.ae, 5.000000e+01
  br i1 %i.af, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ag = phi nsz float [ 0.000000e+00, %bb.b ], [ %i.ae, %bb.d ], [ 5.000000e+01, %bb.c ]
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !78
  %.fr826.i = freeze i32 %i.aj                    ; 4 uses
  %i.ak = icmp eq i32 %.fr826.i, 8                ; 7 uses
  %i.al = zext i1 %i.ak to i64                    ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !55 ; 13 uses
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.al
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !54 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.as = getelementptr inbounds nuw [1792 x i8], ptr %i.ar, i64 %i.al ; 8 uses
  %i.at = select nsz i1 %i.ak, float 6.300000e-01, float 5.000000e-01
  %i.au = load i32, ptr %i.h, align 4, !tbaa !39  ; 2 uses
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = zext i32 %i.au to i64
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !9   ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 344
  %.pre902.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !40
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.aw = load ptr, ptr %0, align 8, !tbaa !9     ; 12 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !37
  %i.az = and i32 %i.ay, 2
  %.not649.i = icmp eq i32 %i.az, 0
  br i1 %.not649.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 344
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !40 ; 2 uses
  %i.bc = sdiv i32 %i.bb, 2
  %i.bd = zext i32 %i.bc to i64
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !20 ; 2 uses
  %.not650.i = icmp eq i64 %i.bf, 0
  br i1 %.not650.i, label %bb.m, label %.thread700.i

.thread700.i:                                     ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 356
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !38
  %i.bi = sext i32 %i.bh to i64
  %i.bj = sdiv i64 %i.bf, %i.bi                   ; 4 uses
  %i.bk = sdiv i64 %i.bj, 5
  %i.bl = mul nsw i64 %i.bj, 15
  %i.bm = sdiv i64 %i.bl, 32
  %i.bn = add nsw i64 %i.bm, -5500
  %..i = tail call i64 @llvm.smax.i64(i64 %i.bk, i64 %i.bn) ; 4 uses
  %i.bo = sdiv i64 %i.bj, 4
  %i.bp = add nsw i64 %i.bo, 3000                 ; 4 uses
  %i.bq = icmp sgt i64 %..i, %i.bp
  %i.br = sdiv i64 %i.bj, 16
  %i.bs = add nsw i64 %i.br, 12000                ; 4 uses
  %...i = tail call i64 @llvm.smin.i64(i64 %..i, i64 %i.bp)
  %spec.select706.i = tail call i64 @llvm.smin.i64(i64 %...i, i64 %i.bs)
  %spec.select17 = tail call i64 @llvm.smin.i64(i64 %spec.select706.i, i64 22000)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 344
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !40 ; 5 uses
  %i.bv = sdiv i32 %i.bu, 2
  %i.bw = sext i32 %i.bv to i64                   ; 2 uses
  %i.bx = icmp sgt i64 %spec.select17, %i.bw
  br i1 %i.bx, label %bb.n, label %bb.j

bb.j:                                             ; preds = %.thread700.i
  %minmaxop.i = tail call i64 @llvm.smin.i64(i64 %..i, i64 %i.bp)
  %i.by = tail call i64 @llvm.smin.i64(i64 %minmaxop.i, i64 %i.bs)
  %i.bz = icmp sgt i64 %i.by, 22000
  br i1 %i.bz, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.bq, label %bb.l, label %.thread704.i

bb.l:                                             ; preds = %bb.k
  %spec.select711.i = tail call i64 @llvm.smin.i64(i64 %i.bp, i64 %i.bs)
  br label %bb.n

.thread704.i:                                     ; preds = %bb.k
  %spec.select712.i = tail call i64 @llvm.smin.i64(i64 %..i, i64 %i.bs)
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 344
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !40 ; 2 uses
  %i.cc = sdiv i32 %i.cb, 2
  %i.cd = zext i32 %i.cc to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread704.i, %bb.l, %bb.j, %.thread700.i, %bb.h, %bb.f
  %i.ce = phi i32 [ %.pre902.i, %bb.f ], [ %i.bb, %bb.h ], [ %i.cb, %bb.m ], [ %i.bu, %bb.l ], [ %i.bu, %bb.j ], [ %i.bu, %.thread700.i ], [ %i.bu, %.thread704.i ]
  %i.cf = phi ptr [ %.pre.i, %bb.f ], [ %i.aw, %bb.h ], [ %i.aw, %bb.m ], [ %i.aw, %bb.l ], [ %i.aw, %bb.j ], [ %i.aw, %.thread700.i ], [ %i.aw, %.thread704.i ] ; 2 uses
  %i.cg = phi i64 [ %i.av, %bb.f ], [ %i.bd, %bb.h ], [ %i.cd, %bb.m ], [ %spec.select711.i, %bb.l ], [ 22000, %bb.j ], [ %i.bw, %.thread700.i ], [ %spec.select712.i, %.thread704.i ]
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = shl nsw i32 %i.ch, 11
  %i.cj = sdiv i32 %i.ci, %.fr826.i
  %i.ck = sdiv i32 %i.cj, %i.ce
  %i.cl = icmp sgt i32 %.fr826.i, 0               ; 4 uses
  %i.cm = icmp sgt i32 %i.an, 0                   ; 3 uses
  %or.cond.i.i = and i1 %i.cl, %i.cm              ; 3 uses
  %i.cn = shl i32 %.fr826.i, 4                    ; 4 uses
  br i1 %or.cond.i.i, label %.preheader50.preheader.i.i, label %calc_thr_3gpp.exit.i

.preheader50.preheader.i.i:                       ; preds = %bb.n
  %i.co = zext nneg i32 %i.cn to i64
  %wide.trip.count.i.i = zext nneg i32 %i.an to i64
  br label %.preheader50.i.i

.preheader50.i.i:                                 ; preds = %._crit_edge57.i.i, %.preheader50.preheader.i.i
  %indvars.iv67.i.i = phi i64 [ 0, %.preheader50.preheader.i.i ], [ %indvars.iv.next68.i.i, %._crit_edge57.i.i ] ; 2 uses
  %.04260.i.i = phi i32 [ 0, %.preheader50.preheader.i.i ], [ %i.dr, %._crit_edge57.i.i ]
  %invariant.gep76.i.i = getelementptr inbounds nuw [36 x i8], ptr %i.y, i64 %indvars.iv67.i.i
  br label %bb.o

bb.o:                                             ; preds = %.thread.i.i, %.preheader50.i.i
  %indvars.iv64.i.i = phi i64 [ 0, %.preheader50.i.i ], [ %indvars.iv.next65.i.i, %.thread.i.i ] ; 4 uses
  %.04155.i.i = phi i32 [ 0, %.preheader50.i.i ], [ %i.ds, %.thread.i.i ] ; 2 uses
  %.14354.i.i = phi i32 [ %.04260.i.i, %.preheader50.i.i ], [ %i.dr, %.thread.i.i ] ; 2 uses
  %gep77.i.i = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep76.i.i, i64 %indvars.iv64.i.i ; 4 uses
  store float 0.000000e+00, ptr %gep77.i.i, align 4, !tbaa !86
  %i.cp = icmp slt i32 %.04155.i.i, %i.ck
  br i1 %i.cp, label %.preheader.i.i, label %.thread.i.i

.preheader.i.i:                                   ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv64.i.i ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !58
  %.not.i.i = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i, label %.thread.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.cs = sext i32 %.14354.i.i to i64
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.t, i64 %i.cs
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.ct = phi float [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %i.cv, %.lr.ph.i.i ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %.052.i.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %i.cz, %.lr.ph.i.i ]
  %gep.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.cu = load float, ptr %gep.i.i, align 4, !tbaa !49 ; 2 uses
  %i.cv = tail call nsz float @llvm.fmuladd.f32(float %i.cu, float %i.cu, float %i.ct) ; 6 uses
  store float %i.cv, ptr %gep77.i.i, align 4, !tbaa !86
  %i.cw = load float, ptr %gep.i.i, align 4, !tbaa !49
  %i.cx = tail call nsz float @llvm.fabs.f32(float %i.cw)
  %i.cy = tail call nsz float @llvm.sqrt.f32(float %i.cx)
  %i.cz = fadd nsz float %.052.i.i, %i.cy         ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.da = load i8, ptr %i.cq, align 1, !tbaa !58  ; 2 uses
  %i.db = zext i8 %i.da to i64
  %i.dc = icmp samesign ult i64 %indvars.iv.next.i.i, %i.db
  br i1 %i.dc, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !88

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.dd = fcmp nsz ogt float %i.cv, 0.000000e+00
  br i1 %i.dd, label %bb.p, label %.thread.i.i

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.de = uitofp nsz i8 %i.da to float
  %i.df = fdiv nsz float %i.de, %i.cv
  %i.dg = tail call nsz float @llvm.sqrt.f32(float %i.df)
  %i.dh = tail call nsz float @llvm.sqrt.f32(float %i.dg)
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.p, %._crit_edge.i.i, %.preheader.i.i, %bb.o
  %.149.i.i = phi float [ %i.cz, %bb.p ], [ %i.cz, %._crit_edge.i.i ], [ 0.000000e+00, %bb.o ], [ 0.000000e+00, %.preheader.i.i ]
  %i.di = phi float [ %i.cv, %bb.p ], [ %i.cv, %._crit_edge.i.i ], [ 0.000000e+00, %bb.o ], [ 0.000000e+00, %.preheader.i.i ]
  %i.dj = phi float [ %i.dh, %bb.p ], [ 0.000000e+00, %._crit_edge.i.i ], [ 0.000000e+00, %bb.o ], [ 0.000000e+00, %.preheader.i.i ]
  %i.dk = fmul nsz float %i.di, f0x3AA50283
  %i.dl = getelementptr inbounds nuw i8, ptr %gep77.i.i, i64 4
  store float %i.dk, ptr %i.dl, align 4, !tbaa !89
  %i.dm = fmul nsz float %.149.i.i, %i.dj
  %i.dn = getelementptr inbounds nuw i8, ptr %gep77.i.i, i64 12
  store float %i.dm, ptr %i.dn, align 4, !tbaa !90
  %i.do = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv64.i.i
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !58
  %i.dq = zext i8 %i.dp to i32                    ; 2 uses
  %i.dr = add nsw i32 %.14354.i.i, %i.dq          ; 2 uses
  %i.ds = add nuw nsw i32 %.04155.i.i, %i.dq
  %indvars.iv.next65.i.i = add nuw nsw i64 %indvars.iv64.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next65.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge57.i.i, label %bb.o, !llvm.loop !91

._crit_edge57.i.i:                                ; preds = %.thread.i.i
  %indvars.iv.next68.i.i = add nuw nsw i64 %indvars.iv67.i.i, 16 ; 2 uses
  %i.dt = icmp samesign ult i64 %indvars.iv.next68.i.i, %i.co
  br i1 %i.dt, label %.preheader50.i.i, label %calc_thr_3gpp.exit.i, !llvm.loop !92

calc_thr_3gpp.exit.i:                             ; preds = %._crit_edge57.i.i, %bb.n
  %i.du = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.ag, i64 1 ; 2 uses
  br i1 %i.cl, label %.lr.ph743.i, label %._crit_edge744.i

.lr.ph743.i:                                      ; preds = %calc_thr_3gpp.exit.i
  %i.dv = icmp sgt i32 %i.an, 1
  %i.dw = add i32 %i.an, -2
  %i.dx = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.dy = zext i32 %i.dw to i64                   ; 2 uses
  %i.dz = zext nneg i32 %i.cn to i64
  %wide.trip.count.i = zext nneg i32 %i.an to i64 ; 2 uses
  %i.ea = shl nuw nsw i64 %i.dy, 2
  %i.eb = getelementptr i8, ptr %i.a, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.eb, i64 4
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge736.i, %.lr.ph743.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge736.i ], [ 0, %.lr.ph743.i ] ; 2 uses
  %indvars.iv852.i = phi i64 [ %indvars.iv.next853.i, %._crit_edge736.i ], [ 0, %.lr.ph743.i ] ; 5 uses
  %.0542740.i = phi float [ %.1543.lcssa.i, %._crit_edge736.i ], [ 0.000000e+00, %.lr.ph743.i ] ; 2 uses
  %i.ed = phi <2 x float> [ %i.ho, %._crit_edge736.i ], [ %i.du, %.lr.ph743.i ] ; 2 uses
  %i.ee = shl nuw nsw i64 %indvar, 6
  %scevgep133 = getelementptr i8, ptr %i.ec, i64 %i.ee
  %i.ef = getelementptr inbounds nuw [36 x i8], ptr %i.y, i64 %indvars.iv852.i ; 4 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !86
  store float %i.eg, ptr %i.a, align 16, !tbaa !49
  br i1 %i.dv, label %.lr.ph.preheader.i, label %.preheader722.i

.lr.ph.preheader.i:                               ; preds = %bb.q
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv852.i ; 3 uses
  %load_initial = load float, ptr %invariant.gep.i, align 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %store_forwarded = phi float [ %load_initial, %.lr.ph.preheader.i ], [ %i.ew, %.lr.ph.i ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 4 uses
  %i.eh = getelementptr inbounds nuw [36 x i8], ptr %i.ef, i64 %indvars.iv.i ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4 ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !89 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.eh, i64 -32
  %i.el = load float, ptr %i.ek, align 4, !tbaa !89
  %i.em = getelementptr inbounds nuw [28 x i8], ptr %i.as, i64 %indvars.iv.i ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load float, ptr %i.en, align 4, !tbaa !49
  %i.ep = fmul nsz float %i.el, %i.eo             ; 2 uses
  %i.eq = fcmp nsz ogt float %i.ej, %i.ep
  %.672.i = select nsz i1 %i.eq, float %i.ej, float %i.ep
  store float %.672.i, ptr %i.ei, align 4, !tbaa !89
  %i.er = load float, ptr %i.eh, align 4, !tbaa !86 ; 2 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 20
  %i.et = load float, ptr %i.es, align 4, !tbaa !49
  %i.eu = fmul nsz float %store_forwarded, %i.et  ; 2 uses
  %i.ev = fcmp nsz ogt float %i.er, %i.eu
  %i.ew = select nsz i1 %i.ev, float %i.er, float %i.eu ; 2 uses
  store float %i.ew, ptr %gep.i, align 4, !tbaa !49
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph730.i.preheader, label %.lr.ph.i, !llvm.loop !93

.lr.ph730.i.preheader:                            ; preds = %.lr.ph.i
  %load_initial134 = load float, ptr %scevgep133, align 4
  br label %.lr.ph730.i

.preheader722.i:                                  ; preds = %bb.q
  br i1 %i.cm, label %.lr.ph735.i, label %._crit_edge736.i

.lr.ph735.i:                                      ; preds = %.lr.ph730.i, %.preheader722.i
  %.not656.i = icmp eq i64 %indvars.iv852.i, 0
  %invariant.gep1051.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv852.i
  br label %bb.r

.lr.ph730.i:                                      ; preds = %.lr.ph730.i.preheader, %.lr.ph730.i
  %store_forwarded135 = phi float [ %load_initial134, %.lr.ph730.i.preheader ], [ %i.fm, %.lr.ph730.i ]
  %indvars.iv844.i = phi i64 [ %i.dy, %.lr.ph730.i.preheader ], [ %indvars.iv.next845.i, %.lr.ph730.i ] ; 5 uses
  %i.ex = getelementptr inbounds nuw [36 x i8], ptr %i.ef, i64 %indvars.iv844.i ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4 ; 2 uses
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !89 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !89
  %i.fc = getelementptr inbounds nuw [28 x i8], ptr %i.as, i64 %indvars.iv844.i ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !49
  %i.ff = fmul nsz float %i.fb, %i.fe             ; 2 uses
  %i.fg = fcmp nsz ogt float %i.ez, %i.ff
  %.673.i = select nsz i1 %i.fg, float %i.ez, float %i.ff
  store float %.673.i, ptr %i.ey, align 4, !tbaa !89
  %gep1048.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv844.i ; 2 uses
  %i.fh = load float, ptr %gep1048.i, align 4, !tbaa !49 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !49
  %i.fk = fmul nsz float %store_forwarded135, %i.fj ; 2 uses
  %i.fl = fcmp nsz ogt float %i.fh, %i.fk
  %i.fm = select nsz i1 %i.fl, float %i.fh, float %i.fk ; 2 uses
  store float %i.fm, ptr %gep1048.i, align 4, !tbaa !49
  %indvars.iv.next845.i = add nsw i64 %indvars.iv844.i, -1
  %.not1074.i = icmp eq i64 %indvars.iv844.i, 0
  br i1 %.not1074.i, label %.lr.ph735.i, label %.lr.ph730.i, !llvm.loop !94

bb.r:                                             ; preds = %bb.z, %.lr.ph735.i
  %indvars.iv847.i = phi i64 [ 0, %.lr.ph735.i ], [ %indvars.iv.next848.i, %bb.z ] ; 4 uses
  %.1543732.i = phi float [ %.0542740.i, %.lr.ph735.i ], [ %i.hf, %bb.z ] ; 2 uses
  %i.fn = phi <2 x float> [ %i.ed, %.lr.ph735.i ], [ %i.hg, %bb.z ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [36 x i8], ptr %i.ef, i64 %indvars.iv847.i ; 9 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4 ; 3 uses
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !89 ; 2 uses
  %i.fr = getelementptr inbounds nuw [28 x i8], ptr %i.as, i64 %indvars.iv847.i ; 2 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !64 ; 2 uses
  %i.ft = fcmp nsz ogt float %i.fq, %i.fs
  %.674.i = select nsz i1 %i.ft, float %i.fq, float %i.fs ; 7 uses
  store float %.674.i, ptr %i.fp, align 4, !tbaa !89
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store float %.674.i, ptr %i.fu, align 4, !tbaa !95
  %i.fv = load i32, ptr %i.u, align 8, !tbaa !55
  %i.fw = icmp eq i32 %i.fv, 3
  br i1 %i.fw, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not656.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fx = load i32, ptr %i.dx, align 4, !tbaa !55
  %i.fy = icmp eq i32 %i.fx, 1
  br i1 %i.fy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fz = fmul nsz float %.674.i, f0x3C23D70A     ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fo, i64 4616
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !95
  %i.gc = fmul nsz float %i.gb, 2.000000e+00      ; 2 uses
  %i.gd = fcmp nsz ogt float %.674.i, %i.gc
  %.675.i = select nsz i1 %i.gd, float %i.gc, float %.674.i ; 2 uses
  %i.ge = fcmp nsz ogt float %i.fz, %.675.i
  %i.gf = select nsz i1 %i.ge, float %i.fz, float %.675.i ; 2 uses
  store float %i.gf, ptr %i.fp, align 4, !tbaa !89
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r
  %i.gg = phi float [ %i.gf, %bb.u ], [ %.674.i, %bb.t ], [ %.674.i, %bb.r ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fo, i64 20
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  store float 0.000000e+00, ptr %i.gi, align 4, !tbaa !96
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.gj, align 4, !tbaa !49
  %i.gk = load float, ptr %i.fo, align 4, !tbaa !86 ; 3 uses
  %i.gl = fcmp nsz ogt float %i.gk, %i.gg
  br i1 %i.gl, label %bb.w, label %calc_pe_3gpp.exit.i

bb.w:                                             ; preds = %bb.v
  %i.gm = tail call nsz float @llvm.log2.f32(float %i.gk) ; 2 uses
  %i.gn = tail call nsz float @llvm.log2.f32(float %i.gg)
  %i.go = fsub nsz float %i.gm, %i.gn             ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !90 ; 3 uses
  %i.gr = fcmp nsz olt float %i.go, 3.000000e+00  ; 2 uses
  %i.gs = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gt = insertelement <2 x float> %i.gs, float %i.gm, i64 1 ; 2 uses
  %i.gu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gt, <2 x float> splat (float f0x3F0F320A), <2 x float> splat (float f0x3FA934F1))
  %i.gv = fmul nsz float %i.gq, f0x3F0F320A
  %storemerge.i.i = select i1 %i.gr, float %i.gv, float %i.gq ; 2 uses
  %i.gw = select i1 %i.gr, <2 x float> %i.gu, <2 x float> %i.gt
  store float %storemerge.i.i, ptr %i.gj, align 4, !tbaa !97
  %i.gx = insertelement <2 x float> poison, float %i.gq, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = fmul nsz <2 x float> %i.gy, %i.gw       ; 3 uses
  store <2 x float> %i.gz, ptr %i.gh, align 4, !tbaa !49
  %i.ha = extractelement <2 x float> %i.gz, i64 1
  %i.hb = fadd nsz float %.1543732.i, %i.ha
  %i.hc = insertelement <2 x float> poison, float %storemerge.i.i, i64 0
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> %i.gz, <2 x i32> <i32 0, i32 2>
  %i.he = fadd nsz <2 x float> %i.fn, %i.hd
  br label %calc_pe_3gpp.exit.i

calc_pe_3gpp.exit.i:                              ; preds = %bb.w, %bb.v
  %i.hf = phi float [ %i.hb, %bb.w ], [ %.1543732.i, %bb.v ] ; 2 uses
  %i.hg = phi <2 x float> [ %i.he, %bb.w ], [ %i.fn, %bb.v ] ; 2 uses
  %gep1052.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1051.i, i64 %indvars.iv847.i
  %i.hh = load float, ptr %gep1052.i, align 4, !tbaa !49
  %i.hi = fmul nsz float %i.at, %i.hh
  %i.hj = fcmp nsz ogt float %i.hi, %i.gk
  br i1 %i.hj, label %bb.z, label %bb.x

bb.x:                                             ; preds = %calc_pe_3gpp.exit.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !61
  %i.hm = fcmp nsz ogt float %i.hl, 1.000000e+00
  br i1 %i.hm, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %calc_pe_3gpp.exit.i
  %.sink1067.i = phi i32 [ 1, %bb.y ], [ 0, %bb.x ], [ 0, %calc_pe_3gpp.exit.i ]
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  store i32 %.sink1067.i, ptr %i.hn, align 4, !tbaa !98
  %indvars.iv.next848.i = add nuw nsw i64 %indvars.iv847.i, 1 ; 2 uses
  %exitcond851.not.i = icmp eq i64 %indvars.iv.next848.i, %wide.trip.count.i
  br i1 %exitcond851.not.i, label %._crit_edge736.i, label %bb.r, !llvm.loop !99

._crit_edge736.i:                                 ; preds = %bb.z, %.preheader722.i
  %.1543.lcssa.i = phi float [ %.0542740.i, %.preheader722.i ], [ %i.hf, %bb.z ] ; 2 uses
  %i.ho = phi <2 x float> [ %i.ed, %.preheader722.i ], [ %i.hg, %bb.z ] ; 2 uses
  %indvars.iv.next853.i = add nuw nsw i64 %indvars.iv852.i, 16 ; 2 uses
  %i.hp = icmp samesign ult i64 %indvars.iv.next853.i, %i.dz
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hp, label %bb.q, label %._crit_edge744.i, !llvm.loop !100

._crit_edge744.i:                                 ; preds = %._crit_edge736.i, %calc_thr_3gpp.exit.i
  %.0542.lcssa.i = phi float [ 0.000000e+00, %calc_thr_3gpp.exit.i ], [ %.1543.lcssa.i, %._crit_edge736.i ]
  %i.hq = phi <2 x float> [ %i.du, %calc_thr_3gpp.exit.i ], [ %i.ho, %._crit_edge736.i ] ; 2 uses
  %i.hr = extractelement <2 x float> %i.hq, i64 1 ; 16 uses
  %i.hs = load ptr, ptr %i.i, align 8, !tbaa !101 ; 2 uses
  %i.ht = getelementptr inbounds [2052 x i8], ptr %i.hs, i64 %i.r ; 8 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 2048
  store float %i.hr, ptr %i.hu, align 4, !tbaa !102
  %i.hv = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !37
  %i.hx = and i32 %i.hw, 2
  %.not651.i = icmp eq i32 %i.hx, 0
  br i1 %.not651.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge744.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.cf, i64 420
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !42 ; 2 uses
  %.not652.i = icmp eq i32 %i.hz, 0
  %i.ia = sitofp nsz i32 %i.hz to float
  %i.ib = select i1 %.not652.i, float 1.200000e+02, float %i.ia
  %i.ic = fmul nsz float %i.hr, %i.ib
  %i.id = fdiv nsz float %i.ic, 6.000000e+02
  %i.ie = fdiv nsz float %i.id, 1.180000e+00      ; 2 uses
  %i.if = fcmp nsz olt float %i.ie, 2.560000e+03
end_hunk_0
