Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacpsy?download=true
inline.NumInlined: 16
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@psy_lame_window:bb.a
  %.sroa.14.3296 = phi i1 [ %.sroa.14.3298, %bb.ac ], [ %.sroa.14.3297, %bb.ab ] ; 3 uses
  %.sroa.0.2290 = phi i1 [ %.sroa.0.2292, %bb.ac ], [ %.sroa.0.2291, %bb.ab ] ; 3 uses
  %.0.i = phi i32 [ 2, %bb.ac ], [ %spec.select.i, %bb.ab ]
  %i.jf = phi <4 x i1> [ %i.ix, %bb.ac ], [ %i.it, %bb.ab ] ; 3 uses
  store i32 %i.jd, ptr %0, align 8, !tbaa !54
  store i32 %.0.i, ptr %i.je, align 4, !tbaa !79
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %5, ptr %i.jg, align 4, !tbaa !54
  %.not114 = icmp eq i32 %i.jd, 2
  br i1 %.not114, label %.loopexit.loopexit, label %bb.ad

bb.ad:                                            ; preds = %lame_apply_block_type.exit
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.jh, align 8, !tbaa !66
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %i.ji, align 4, !tbaa !54
  %i.jj = icmp eq i32 %i.jd, 1
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br i1 %i.jj, label %.loopexit, label %.split350

.split350:                                        ; preds = %bb.ad
  store i32 1, ptr %i.jk, align 4, !tbaa !80
  br i1 %.sroa.0.2290, label %bb.ae, label %bb.ag

.loopexit.loopexit:                               ; preds = %lame_apply_block_type.exit.thread, %lame_apply_block_type.exit
  %.sroa.92.1337 = phi i1 [ %.sroa.92.1340, %lame_apply_block_type.exit.thread ], [ %.sroa.92.1338, %lame_apply_block_type.exit ]
  %.sroa.80.1331 = phi i32 [ %.sroa.80.1334, %lame_apply_block_type.exit.thread ], [ %.sroa.80.1332, %lame_apply_block_type.exit ] ; 2 uses
  %.sroa.69.1325 = phi i1 [ %.sroa.69.1328, %lame_apply_block_type.exit.thread ], [ %.sroa.69.1326, %lame_apply_block_type.exit ]
  %.sroa.14.3295 = phi i1 [ %.sroa.14.3298, %lame_apply_block_type.exit.thread ], [ %.sroa.14.3296, %lame_apply_block_type.exit ]
  %.sroa.0.2289 = phi i1 [ %.sroa.0.2292, %lame_apply_block_type.exit.thread ], [ %.sroa.0.2290, %lame_apply_block_type.exit ]
  %i.jl = phi <4 x i1> [ %i.ix, %lame_apply_block_type.exit.thread ], [ %i.jf, %lame_apply_block_type.exit ]
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 8, ptr %i.jm, align 8, !tbaa !66
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.jn, align 4, !tbaa !80
  %i.jo = getelementptr inbounds nuw i8, ptr %i.j, i64 9228
  %i.jp = load i8, ptr %i.jo, align 4, !tbaa !81  ; 2 uses
  %i.jq = zext i8 %i.jp to i32                    ; 6 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  store i32 1, ptr %i.jr, align 4, !tbaa !54
  %i.js = lshr i32 %i.jq, 1
  %.lobit = and i32 %i.js, 1
  %spec.select.1 = xor i32 %.lobit, 1             ; 2 uses
  %i.jt = zext nneg i32 %spec.select.1 to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.jt ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !54
  %i.jw = add nsw i32 %i.jv, 1
  store i32 %i.jw, ptr %i.ju, align 4, !tbaa !54
  %i.jx = and i32 %i.jq, 4
  %.not115.2 = icmp eq i32 %i.jx, 0
  %spec.select.2 = select i1 %.not115.2, i32 2, i32 %spec.select.1 ; 2 uses
  %i.jy = zext nneg i32 %spec.select.2 to i64
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.jy ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !54
  %i.kb = add nsw i32 %i.ka, 1
  store i32 %i.kb, ptr %i.jz, align 4, !tbaa !54
  %i.kc = and i32 %i.jq, 8
  %.not115.3 = icmp eq i32 %i.kc, 0
  %spec.select.3 = select i1 %.not115.3, i32 3, i32 %spec.select.2 ; 2 uses
  %i.kd = zext nneg i32 %spec.select.3 to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.kd ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !54
  %i.kg = add nsw i32 %i.kf, 1
  store i32 %i.kg, ptr %i.ke, align 4, !tbaa !54
  %i.kh = and i32 %i.jq, 16
  %.not115.4 = icmp eq i32 %i.kh, 0
  %spec.select.4 = select i1 %.not115.4, i32 4, i32 %spec.select.3 ; 2 uses
  %i.ki = zext nneg i32 %spec.select.4 to i64
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.ki ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !54
  %i.kl = add nsw i32 %i.kk, 1
  store i32 %i.kl, ptr %i.kj, align 4, !tbaa !54
  %i.km = and i32 %i.jq, 32
  %.not115.5 = icmp eq i32 %i.km, 0
  %spec.select.5 = select i1 %.not115.5, i32 5, i32 %spec.select.4 ; 2 uses
  %i.kn = zext nneg i32 %spec.select.5 to i64
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.kn ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !54
  %i.kq = add nsw i32 %i.kp, 1
  store i32 %i.kq, ptr %i.ko, align 4, !tbaa !54
  %i.kr = and i32 %i.jq, 64
  %.not115.6 = icmp eq i32 %i.kr, 0
  %spec.select.6 = select i1 %.not115.6, i32 6, i32 %spec.select.5 ; 2 uses
  %i.ks = zext nneg i32 %spec.select.6 to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.ks ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !54
  %i.kv = add nsw i32 %i.ku, 1
  store i32 %i.kv, ptr %i.kt, align 4, !tbaa !54
  %.not115.7 = icmp sgt i8 %i.jp, -1
  %i.kw = zext nneg i32 %spec.select.6 to i64
  %i.kx = select i1 %.not115.7, i64 7, i64 %i.kw
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.kx ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !54
  %i.la = add nsw i32 %i.kz, 1
  store i32 %i.la, ptr %i.ky, align 4, !tbaa !54
  br i1 %.sroa.0.2289, label %bb.ae, label %bb.ag

.loopexit:                                        ; preds = %bb.ad
  store i32 0, ptr %i.jk, align 4, !tbaa !80
  br i1 %.sroa.0.2290, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %.thread, %.split350, %.loopexit.loopexit, %.loopexit
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
  br i1 %i.lk, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.not116.7 = icmp eq i32 %.sroa.80.1329342, 0
  %spec.select372 = select i1 %.sroa.92.1335341, i64 0, i64 8
  %spec.select374 = select i1 %.not116.7, i64 %spec.select372, i64 7
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.thread, %.split350, %.loopexit.loopexit, %.loopexit
  %.sroa.80.1329343 = phi i32 [ %.sroa.80.1329342, %bb.af ], [ %.sroa.80.1332, %.loopexit ], [ %.sroa.80.1329342, %bb.ae ], [ %.sroa.80.1332, %.split350 ], [ %.sroa.80.1334, %.thread ], [ %.sroa.80.1331, %.loopexit.loopexit ]
  %.0104 = phi i64 [ %spec.select374, %bb.af ], [ 0, %.loopexit ], [ %.mux.mux.mux.mux.mux, %bb.ae ], [ 0, %.split350 ], [ 0, %.thread ], [ 0, %.loopexit.loopexit ]
  %i.ll = getelementptr inbounds nuw i8, ptr @window_grouping, i64 %.0104
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !56
  %i.ln = getelementptr inbounds nuw i8, ptr %i.j, i64 9228
  store i8 %i.lm, ptr %i.ln, align 4, !tbaa !81
  %i.lo = getelementptr inbounds nuw i8, ptr %i.j, i64 9304
  store i32 %.sroa.80.1329343, ptr %i.lo, align 4, !tbaa !78
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @psy_3gpp_analyze(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = alloca [128 x float], align 16           ; 7 uses
  %i.b = tail call ptr @ff_psy_find_group(ptr noundef %0, i32 noundef %1) #11
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !108
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
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !110
  %i.u = getelementptr inbounds nuw [96 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !41   ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 3616
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60   ; 2 uses
  %i.y = getelementptr [9312 x i8], ptr %i.x, i64 %i.r ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.z = load i32, ptr %i.v, align 8, !tbaa !46   ; 2 uses
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
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !66
  %.fr826.i = freeze i32 %i.aj                    ; 4 uses
  %i.ak = icmp eq i32 %.fr826.i, 8                ; 7 uses
  %i.al = zext i1 %i.ak to i64                    ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !54 ; 13 uses
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.al
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !53 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.as = getelementptr inbounds nuw [1792 x i8], ptr %i.ar, i64 %i.al ; 8 uses
  %i.at = select nsz i1 %i.ak, float 6.300000e-01, float 5.000000e-01
  %i.au = load i32, ptr %i.h, align 4, !tbaa !39  ; 2 uses
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = zext i32 %i.au to i64
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !19  ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 344
  %.pre902.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !40
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.aw = load ptr, ptr %0, align 8, !tbaa !19    ; 12 uses
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
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !36 ; 2 uses
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
  store float 0.000000e+00, ptr %gep77.i.i, align 4, !tbaa !112
  %i.cp = icmp slt i32 %.04155.i.i, %i.ck
  br i1 %i.cp, label %.preheader.i.i, label %.thread.i.i

.preheader.i.i:                                   ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv64.i.i ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !56
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
  %i.cu = load float, ptr %gep.i.i, align 4, !tbaa !48 ; 2 uses
  %i.cv = tail call nsz float @llvm.fmuladd.f32(float %i.cu, float %i.cu, float %i.ct) ; 6 uses
  store float %i.cv, ptr %gep77.i.i, align 4, !tbaa !112
  %i.cw = load float, ptr %gep.i.i, align 4, !tbaa !48
  %i.cx = tail call nsz float @llvm.fabs.f32(float %i.cw)
  %i.cy = tail call nsz float @llvm.sqrt.f32(float %i.cx)
  %i.cz = fadd nsz float %.052.i.i, %i.cy         ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.da = load i8, ptr %i.cq, align 1, !tbaa !56  ; 2 uses
  %i.db = zext i8 %i.da to i64
  %i.dc = icmp samesign ult i64 %indvars.iv.next.i.i, %i.db
  br i1 %i.dc, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !82

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
  store float %i.dk, ptr %i.dl, align 4, !tbaa !113
  %i.dm = fmul nsz float %.149.i.i, %i.dj
  %i.dn = getelementptr inbounds nuw i8, ptr %gep77.i.i, i64 12
  store float %i.dm, ptr %i.dn, align 4, !tbaa !114
  %i.do = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv64.i.i
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !56
  %i.dq = zext i8 %i.dp to i32                    ; 2 uses
  %i.dr = add nsw i32 %.14354.i.i, %i.dq          ; 2 uses
  %i.ds = add nuw nsw i32 %.04155.i.i, %i.dq
  %indvars.iv.next65.i.i = add nuw nsw i64 %indvars.iv64.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next65.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge57.i.i, label %bb.o, !llvm.loop !83

._crit_edge57.i.i:                                ; preds = %.thread.i.i
  %indvars.iv.next68.i.i = add nuw nsw i64 %indvars.iv67.i.i, 16 ; 2 uses
  %i.dt = icmp samesign ult i64 %indvars.iv.next68.i.i, %i.co
  br i1 %i.dt, label %.preheader50.i.i, label %calc_thr_3gpp.exit.i, !llvm.loop !84

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
end_hunk_0
begin_hunk_1_@psy_3gpp_analyze:bb.a
.lr.ph730.i.preheader:                            ; preds = %.lr.ph.i
  %load_initial133 = load float, ptr %scevgep132, align 4
  br label %.lr.ph730.i

.preheader722.i:                                  ; preds = %bb.q
  br i1 %i.cm, label %.lr.ph735.i, label %._crit_edge736.i

.lr.ph735.i:                                      ; preds = %.lr.ph730.i, %.preheader722.i
  %.not656.i = icmp eq i64 %indvars.iv852.i, 0
  %invariant.gep1051.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv852.i
  br label %bb.r

.lr.ph730.i:                                      ; preds = %.lr.ph730.i.preheader, %.lr.ph730.i
  %store_forwarded134 = phi float [ %load_initial133, %.lr.ph730.i.preheader ], [ %i.fm, %.lr.ph730.i ]
  %indvars.iv844.i = phi i64 [ %i.dy, %.lr.ph730.i.preheader ], [ %indvars.iv.next845.i, %.lr.ph730.i ] ; 5 uses
  %i.ex = getelementptr inbounds nuw [36 x i8], ptr %i.ef, i64 %indvars.iv844.i ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4 ; 2 uses
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !113 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !113
  %i.fc = getelementptr inbounds nuw [28 x i8], ptr %i.as, i64 %indvars.iv844.i ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !48
  %i.ff = fmul nsz float %i.fb, %i.fe             ; 2 uses
  %i.fg = fcmp nsz ogt float %i.ez, %i.ff
  %.673.i = select nsz i1 %i.fg, float %i.ez, float %i.ff
  store float %.673.i, ptr %i.ey, align 4, !tbaa !113
  %gep1048.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv844.i ; 2 uses
  %i.fh = load float, ptr %gep1048.i, align 4, !tbaa !48 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !48
  %i.fk = fmul nsz float %store_forwarded134, %i.fj ; 2 uses
  %i.fl = fcmp nsz ogt float %i.fh, %i.fk
  %i.fm = select nsz i1 %i.fl, float %i.fh, float %i.fk ; 2 uses
  store float %i.fm, ptr %gep1048.i, align 4, !tbaa !48
  %indvars.iv.next845.i = add nsw i64 %indvars.iv844.i, -1
  %.not1075.i = icmp eq i64 %indvars.iv844.i, 0
  br i1 %.not1075.i, label %.lr.ph735.i, label %.lr.ph730.i, !llvm.loop !86

bb.r:                                             ; preds = %bb.y, %.lr.ph735.i
  %indvars.iv847.i = phi i64 [ 0, %.lr.ph735.i ], [ %indvars.iv.next848.i, %bb.y ] ; 4 uses
  %.1543732.i = phi float [ %.0542740.i, %.lr.ph735.i ], [ %i.hf, %bb.y ] ; 2 uses
  %i.fn = phi <2 x float> [ %i.ed, %.lr.ph735.i ], [ %i.hg, %bb.y ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [36 x i8], ptr %i.ef, i64 %indvars.iv847.i ; 9 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4 ; 3 uses
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !113 ; 2 uses
  %i.fr = getelementptr inbounds nuw [28 x i8], ptr %i.as, i64 %indvars.iv847.i ; 2 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !59 ; 2 uses
  %i.ft = fcmp nsz ogt float %i.fq, %i.fs
  %.674.i = select nsz i1 %i.ft, float %i.fq, float %i.fs ; 7 uses
  store float %.674.i, ptr %i.fp, align 4, !tbaa !113
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store float %.674.i, ptr %i.fu, align 4, !tbaa !115
  %i.fv = load i32, ptr %i.u, align 8, !tbaa !54
  %i.fw = icmp eq i32 %i.fv, 3
  br i1 %i.fw, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not656.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fx = load i32, ptr %i.dx, align 4, !tbaa !54
  %i.fy = icmp eq i32 %i.fx, 1
  br i1 %i.fy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fz = fmul nsz float %.674.i, f0x3C23D70A     ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fo, i64 4616
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !115
  %i.gc = fmul nsz float %i.gb, 2.000000e+00      ; 2 uses
  %i.gd = fcmp nsz ogt float %.674.i, %i.gc
  %.675.i = select nsz i1 %i.gd, float %i.gc, float %.674.i ; 2 uses
  %i.ge = fcmp nsz ogt float %i.fz, %.675.i
  %i.gf = select nsz i1 %i.ge, float %i.fz, float %.675.i ; 2 uses
  store float %i.gf, ptr %i.fp, align 4, !tbaa !113
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r
  %i.gg = phi float [ %i.gf, %bb.u ], [ %.674.i, %bb.t ], [ %.674.i, %bb.r ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fo, i64 20
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  store float 0.000000e+00, ptr %i.gi, align 4, !tbaa !116
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.gj, align 4, !tbaa !48
  %i.gk = load float, ptr %i.fo, align 4, !tbaa !112 ; 3 uses
  %i.gl = fcmp nsz ogt float %i.gk, %i.gg
  br i1 %i.gl, label %bb.w, label %calc_pe_3gpp.exit.i

bb.w:                                             ; preds = %bb.v
  %i.gm = tail call nsz float @llvm.log2.f32(float %i.gk) ; 2 uses
  %i.gn = tail call nsz float @llvm.log2.f32(float %i.gg)
  %i.go = fsub nsz float %i.gm, %i.gn             ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !114 ; 3 uses
  %i.gr = fcmp nsz olt float %i.go, 3.000000e+00  ; 2 uses
  %i.gs = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gt = insertelement <2 x float> %i.gs, float %i.gm, i64 1 ; 2 uses
  %i.gu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gt, <2 x float> splat (float f0x3F0F320A), <2 x float> splat (float f0x3FA934F1))
  %i.gv = fmul nsz float %i.gq, f0x3F0F320A
  %storemerge.i.i = select i1 %i.gr, float %i.gv, float %i.gq ; 2 uses
  %i.gw = select i1 %i.gr, <2 x float> %i.gu, <2 x float> %i.gt
  store float %storemerge.i.i, ptr %i.gj, align 4, !tbaa !117
  %i.gx = insertelement <2 x float> poison, float %i.gq, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = fmul nsz <2 x float> %i.gy, %i.gw       ; 3 uses
  store <2 x float> %i.gz, ptr %i.gh, align 4, !tbaa !48
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
  %i.hh = load float, ptr %gep1052.i, align 4, !tbaa !48
  %i.hi = fmul nsz float %i.at, %i.hh
  %i.hj = fcmp nsz ogt float %i.hi, %i.gk
  br i1 %i.hj, label %bb.y, label %bb.x

bb.x:                                             ; preds = %calc_pe_3gpp.exit.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !58
  %i.hm = fcmp nsz ule float %i.hl, 1.000000e+00
  %spec.select1074.i = zext i1 %i.hm to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %calc_pe_3gpp.exit.i
  %.sink1067.i = phi i32 [ 0, %calc_pe_3gpp.exit.i ], [ %spec.select1074.i, %bb.x ]
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  store i32 %.sink1067.i, ptr %i.hn, align 4, !tbaa !118
  %indvars.iv.next848.i = add nuw nsw i64 %indvars.iv847.i, 1 ; 2 uses
  %exitcond851.not.i = icmp eq i64 %indvars.iv.next848.i, %wide.trip.count.i
  br i1 %exitcond851.not.i, label %._crit_edge736.i, label %bb.r, !llvm.loop !87

._crit_edge736.i:                                 ; preds = %bb.y, %.preheader722.i
  %.1543.lcssa.i = phi float [ %.0542740.i, %.preheader722.i ], [ %i.hf, %bb.y ] ; 2 uses
  %i.ho = phi <2 x float> [ %i.ed, %.preheader722.i ], [ %i.hg, %bb.y ] ; 2 uses
  %indvars.iv.next853.i = add nuw nsw i64 %indvars.iv852.i, 16 ; 2 uses
  %i.hp = icmp samesign ult i64 %indvars.iv.next853.i, %i.dz
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hp, label %bb.q, label %._crit_edge744.i, !llvm.loop !88

._crit_edge744.i:                                 ; preds = %._crit_edge736.i, %calc_thr_3gpp.exit.i
  %.0542.lcssa.i = phi float [ 0.000000e+00, %calc_thr_3gpp.exit.i ], [ %.1543.lcssa.i, %._crit_edge736.i ]
  %i.hq = phi <2 x float> [ %i.du, %calc_thr_3gpp.exit.i ], [ %i.ho, %._crit_edge736.i ] ; 2 uses
  %i.hr = extractelement <2 x float> %i.hq, i64 1 ; 16 uses
  %i.hs = load ptr, ptr %i.i, align 8, !tbaa !119 ; 2 uses
  %i.ht = getelementptr inbounds [2052 x i8], ptr %i.hs, i64 %i.r ; 8 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 2048
  store float %i.hr, ptr %i.hu, align 4, !tbaa !121
  %i.hv = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !37
  %i.hx = and i32 %i.hw, 2
  %.not651.i = icmp eq i32 %i.hx, 0
  br i1 %.not651.i, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %._crit_edge744.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.cf, i64 420
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !42 ; 2 uses
  %.not652.i = icmp eq i32 %i.hz, 0
  %i.ia = sitofp nsz i32 %i.hz to float
  %i.ib = select i1 %.not652.i, float 1.200000e+02, float %i.ia
  %i.ic = fmul nsz float %i.hr, %i.ib
  %i.id = fdiv nsz float %i.ic, 6.000000e+02
  %i.ie = fdiv nsz float %i.id, 1.180000e+00      ; 2 uses
  %i.if = fcmp nsz olt float %i.ie, 2.560000e+03
  %i.ig = select nsz i1 %i.if, float %i.ie, float 2.560000e+03 ; 2 uses
  %i.ih = fmul nsz float %i.ig, 1.180000e+00      ; 2 uses
  %i.ii = load i32, ptr %i.j, align 8, !tbaa !122
  %i.ij = icmp sgt i32 %i.ii, 0
  br i1 %i.ij, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ik = fdiv nsz float %i.ih, 1.180000e+00      ; 2 uses
  %i.il = fcmp nsz olt float %i.ik, 2.560000e+03
  %i.im = select nsz i1 %i.il, float %i.ik, float 2.560000e+03 ; 2 uses
  %i.in = fmul nsz float %i.im, 1.180000e+00
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0556.i = phi nsz float [ %i.im, %bb.aa ], [ %i.ig, %bb.z ]
  %.0554.i = phi nsz float [ %i.in, %bb.aa ], [ %i.ih, %bb.z ] ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.iq = load float, ptr %i.ip, align 8, !tbaa !123 ; 2 uses
  %i.ir = fcmp nsz ogt float %i.hr, %i.iq
  %.0528..i = select nsz i1 %i.ir, float %i.hr, float %i.iq
  store float %.0528..i, ptr %i.ip, align 8, !tbaa !123
  %i.is = load float, ptr %i.io, align 4, !tbaa !124 ; 2 uses
  %i.it = fcmp nsz ogt float %i.hr, %i.is
  %i.iu = select nsz i1 %i.it, float %i.is, float %i.hr
  store float %i.iu, ptr %i.io, align 4, !tbaa !124
  br label %bb.ae

bb.ac:                                            ; preds = %._crit_edge744.i
  %i.iv = load i32, ptr %i.j, align 8, !tbaa !122 ; 4 uses
  %i.iw = load i32, ptr %i.k, align 4, !tbaa !49  ; 3 uses
  %4 = select nsz i1 %i.ak, float f0xBEBA2E8C, float f0xBEEEEEEF
  %5 = select nsz i1 %i.ak, float -7.500000e-01, float f0xBF57C57C
  %6 = select nsz i1 %i.ak, float f0x3F51745D, float f0x3F2AAAAB
  %7 = select nsz i1 %i.ak, float f0xBE85B05B, float -3.500000e-01
  %i.ix = select nsz i1 %i.ak, float 7.500000e-01, float f0x3F733333 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !47 ; 4 uses
  %i.ja = sub nsw i32 %i.iz, %i.iv
  %i.jb = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !50
  %i.jd = add nsw i32 %i.jc, %i.ja                ; 2 uses
  %i.je = icmp slt i32 %i.jd, 0
  %..i79.i.i = tail call i32 @llvm.smin.i32(i32 %i.jd, i32 %i.iw)
  %.0.i.i.i = select i1 %i.je, i32 0, i32 %..i79.i.i ; 2 uses
  store i32 %.0.i.i.i, ptr %i.jb, align 8, !tbaa !50
  %i.jf = sitofp nsz i32 %.0.i.i.i to float
  %i.jg = sitofp nsz i32 %i.iw to float
  %i.jh = fdiv nsz float %i.jf, %i.jg             ; 2 uses
  %i.ji = fcmp nsz ogt float %i.jh, 2.000000e-01
  %i.jj = select nsz i1 %i.ji, float %i.jh, float 2.000000e-01 ; 2 uses
  %i.jk = fcmp nsz ogt float %i.jj, %i.ix
  %..i78.i.i = select nsz i1 %i.jk, float %i.ix, float %i.jj ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !124 ; 7 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.jo = load float, ptr %i.jn, align 8, !tbaa !123 ; 5 uses
  %i.jp = fcmp nsz ogt float %i.hr, %i.jm
  %i.jq = select nsz i1 %i.jp, float %i.hr, float %i.jm ; 2 uses
  %i.jr = fcmp nsz ogt float %i.jq, %i.jo
  %..i.i.i = select nsz i1 %i.jr, float %i.jo, float %i.jq
  %8 = fadd nsz float %5, %..i78.i.i
  %9 = fmul nsz float %4, %8                      ; 2 uses
  %10 = fadd nsz float %7, %..i78.i.i
  %11 = fmul nsz float %6, %10
  %i.js = fsub nsz float 1.000000e+00, %9
  %i.jt = fsub nsz float %11, %9
  %i.ju = fsub nsz float %i.jo, %i.jm
  %i.jv = fdiv nsz float %i.jt, %i.ju
  %i.jw = fsub nsz float %..i.i.i, %i.jm
  %i.jx = tail call nsz float @llvm.fmuladd.f32(float %i.jv, float %i.jw, float %i.js)
  %i.jy = fcmp nsz ogt float %i.hr, %i.jo
  %..i680.i = select nsz i1 %i.jy, float %i.hr, float %i.jo ; 2 uses
  store float %..i680.i, ptr %i.jn, align 8, !tbaa !123
  %i.jz = fdiv nsz float %i.hr, %..i680.i
  %i.ka = fmul nsz float %i.hr, %i.jz             ; 2 uses
  %i.kb = fcmp nsz ogt float %i.jm, %i.ka
  %i.kc = select nsz i1 %i.kb, float %i.jm, float %i.ka
  %i.kd = tail call nsz float @llvm.fmuladd.f32(float %i.jm, float 5.110000e+02, float %i.kc)
  %i.ke = fmul nsz float %i.kd, f0x3B000000       ; 2 uses
  %i.kf = fcmp nsz ogt float %i.hr, %i.ke
  %i.kg = select nsz i1 %i.kf, float %i.ke, float %i.hr
  store float %i.kg, ptr %i.jl, align 4, !tbaa !124
  %i.kh = sitofp nsz i32 %i.iz to float
  %i.ki = fmul nsz float %i.jx, %i.kh             ; 2 uses
  %i.kj = sub i32 %i.iw, %i.iv
  %i.kk = add i32 %i.kj, %i.iz
  %i.kl = sdiv i32 %i.iz, 8
  %i.km = tail call i32 @llvm.smax.i32(i32 %i.kk, i32 %i.kl)
  %i.kn = sitofp nsz i32 %i.km to float           ; 2 uses
  %i.ko = fcmp nsz ogt float %i.ki, %i.kn
  %i.kp = select nsz i1 %i.ko, float %i.kn, float %i.ki
  %i.kq = fptosi float %i.kp to i32
  %i.kr = sitofp nsz i32 %i.kq to float           ; 3 uses
  %i.ks = fmul nnan nsz float %i.kr, 1.180000e+00 ; 4 uses
  %i.kt = icmp sgt i32 %i.iv, 0
  br i1 %i.kt, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ku = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !125
  %i.kw = uitofp nneg i32 %i.iv to float
  %i.kx = fmul nnan nsz float %i.kw, 1.180000e+00
  %i.ky = fdiv nsz float %i.kv, %i.kx             ; 2 uses
  %i.kz = fcmp nsz ogt float %i.ky, 8.500000e-01
  %i.la = select nsz i1 %i.kz, float %i.ky, float 8.500000e-01 ; 2 uses
  %i.lb = fcmp nsz ogt float %i.la, 1.150000e+00
  %..i.i = select nsz i1 %i.lb, float 1.150000e+00, float %i.la
  %i.lc = fmul nsz float %i.ks, %..i.i
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.pre-phi.i = phi float [ %i.ks, %bb.ac ], [ %i.ks, %bb.ad ], [ %.0554.i, %bb.ab ]
  %.1557.i = phi nsz float [ %i.kr, %bb.ac ], [ %i.kr, %bb.ad ], [ %.0556.i, %bb.ab ]
  %.1555.i = phi nsz float [ %i.ks, %bb.ac ], [ %i.lc, %bb.ad ], [ %.0554.i, %bb.ab ] ; 16 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  store float %.pre-phi.i, ptr %i.ld, align 4, !tbaa !125
  %i.le = fptosi float %.1557.i to i32
  store i32 %i.le, ptr %i.l, align 4, !tbaa !126
  %i.lf = fcmp nsz olt float %.1555.i, %i.hr
  br i1 %i.lf, label %.preheader721.i, label %.critedge.i

.preheader721.i:                                  ; preds = %bb.ae
  %i.lg = sext i32 %i.cn to i64                   ; 8 uses
  br i1 %i.cl, label %.lr.ph762.i, label %.preheader720.thread.i

.preheader720.thread.i:                           ; preds = %.preheader721.i
  %i.lh = fmul nsz float %.1555.i, 5.000000e-02
  %i.li = tail call nsz float @llvm.fabs.f32(float %.1555.i)
  %i.lj = fcmp nsz ogt float %i.li, %i.lh
  br i1 %i.lj, label %bb.bg, label %._crit_edge795.1.i

.lr.ph762.i:                                      ; preds = %.preheader721.i
  %wide.trip.count858.i = zext i32 %i.an to i64   ; 8 uses
  %i.lk = extractelement <2 x float> %i.hq, i64 0
  %i.ll = insertelement <2 x float> poison, float %.1555.i, i64 0
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph762.i
  %indvars.iv860.i = phi i64 [ 0, %.lr.ph762.i ], [ %indvars.iv860.i.be, %.backedge.backedge ] ; 3 uses
  %.2530761.i = phi float [ %i.hr, %.lr.ph762.i ], [ %.2530761.i.be, %.backedge.backedge ]
  %.2537760.i = phi float [ %i.lk, %.lr.ph762.i ], [ %.2537760.i.be, %.backedge.backedge ] ; 2 uses
  %.2544759.i = phi float [ %.0542.lcssa.i, %.lr.ph762.i ], [ %.2544759.i.be, %.backedge.backedge ]
  %i.lm = fcmp nsz oeq float %.2537760.i, 0.000000e+00
  br i1 %i.lm, label %calc_reduction_3gpp.exit.i, label %bb.af

bb.af:                                            ; preds = %.backedge
  %i.ln = insertelement <2 x float> poison, float %.2544759.i, i64 0
  %i.lo = shufflevector <2 x float> %i.ln, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lp = insertelement <2 x float> %i.ll, float %.2530761.i, i64 1
  %i.lq = fsub nsz <2 x float> %i.lo, %i.lp
  %i.lr = fmul nsz float %.2537760.i, 4.000000e+00
  %i.ls = insertelement <2 x float> poison, float %i.lr, i64 0
  %i.lt = shufflevector <2 x float> %i.ls, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lu = fdiv nsz <2 x float> %i.lq, %i.lt
  %i.lv = tail call nsz <2 x float> @llvm.exp2.v2f32(<2 x float> %i.lu) ; 2 uses
  %shift = shufflevector <2 x float> %i.lv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub nsz <2 x float> %i.lv, %shift
  %i.lw = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.lx = fcmp nsz ogt float %i.lw, 0.000000e+00
  %i.ly = select nsz i1 %i.lx, float %i.lw, float 0.000000e+00
  br label %calc_reduction_3gpp.exit.i

calc_reduction_3gpp.exit.i:                       ; preds = %bb.af, %.backedge
  %.0.i681.i = phi nsz float [ %i.ly, %bb.af ], [ 0.000000e+00, %.backedge ] ; 2 uses
  br i1 %i.cm, label %.lr.ph753.preheader.i, label %._crit_edge754.i.thread

.lr.ph753.preheader.i:                            ; preds = %calc_reduction_3gpp.exit.i
  %invariant.gep1053.i = getelementptr inbounds nuw [36 x i8], ptr %i.y, i64 %indvars.iv860.i
  br label %.lr.ph753.i

.lr.ph753.i:                                      ; preds = %calc_pe_3gpp.exit688.i, %.lr.ph753.preheader.i
  %indvars.iv855.i = phi i64 [ 0, %.lr.ph753.preheader.i ], [ %indvars.iv.next856.i, %calc_pe_3gpp.exit688.i ] ; 3 uses
  %.3538751.i = phi float [ 0.000000e+00, %.lr.ph753.preheader.i ], [ %i.nl, %calc_pe_3gpp.exit688.i ] ; 2 uses
  %i.lz = phi <2 x float> [ zeroinitializer, %.lr.ph753.preheader.i ], [ %i.nm, %calc_pe_3gpp.exit688.i ] ; 2 uses
  %gep1054.i = getelementptr inbounds nuw [36 x i8], ptr %invariant.gep1053.i, i64 %indvars.iv855.i ; 7 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %gep1054.i, i64 4 ; 2 uses
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !113 ; 5 uses
  %i.mc = load float, ptr %gep1054.i, align 4, !tbaa !112 ; 4 uses
  %i.md = fcmp nsz ogt float %i.mc, %i.mb
  br i1 %i.md, label %bb.ag, label %calc_reduced_thr_3gpp.exit.i

bb.ag:                                            ; preds = %.lr.ph753.i
  %i.me = getelementptr inbounds nuw [28 x i8], ptr %i.as, i64 %indvars.iv855.i
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !58
  %i.mh = tail call nsz float @llvm.sqrt.f32(float %i.mb)
  %i.mi = tail call nsz float @llvm.sqrt.f32(float %i.mh)
  %i.mj = fadd nsz float %.0.i681.i, %i.mi        ; 2 uses
  %i.mk = fmul nsz float %i.mj, %i.mj             ; 2 uses
  %i.ml = fmul nsz float %i.mk, %i.mk             ; 3 uses
  %i.mm = fmul nsz float %i.mc, %i.mg             ; 3 uses
  %i.mn = fcmp nsz ogt float %i.ml, %i.mm
  br i1 %i.mn, label %bb.ah, label %calc_reduced_thr_3gpp.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.mo = getelementptr inbounds nuw i8, ptr %gep1054.i, i64 32 ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !118
  %.not.i683.i = icmp eq i32 %i.mp, 0
  br i1 %.not.i683.i, label %calc_reduced_thr_3gpp.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mq = fcmp nsz ogt float %i.mb, %i.mm
  %..i684.i = select nsz i1 %i.mq, float %i.mb, float %i.mm
  store i32 2, ptr %i.mo, align 4, !tbaa !118
  br label %calc_reduced_thr_3gpp.exit.i

calc_reduced_thr_3gpp.exit.i:                     ; preds = %bb.ai, %bb.ah, %bb.ag, %.lr.ph753.i
  %.0.i682.i = phi nsz float [ %..i684.i, %bb.ai ], [ %i.ml, %bb.ah ], [ %i.ml, %bb.ag ], [ %i.mb, %.lr.ph753.i ] ; 3 uses
  store float %.0.i682.i, ptr %i.ma, align 4, !tbaa !113
  %i.mr = getelementptr inbounds nuw i8, ptr %gep1054.i, i64 20
  %i.ms = getelementptr inbounds nuw i8, ptr %gep1054.i, i64 24
  store float 0.000000e+00, ptr %i.ms, align 4, !tbaa !116
  %i.mt = getelementptr inbounds nuw i8, ptr %gep1054.i, i64 16 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.mt, align 4, !tbaa !48
  %i.mu = fcmp nsz ogt float %i.mc, %.0.i682.i
  br i1 %i.mu, label %bb.aj, label %calc_pe_3gpp.exit688.i

bb.aj:                                            ; preds = %calc_reduced_thr_3gpp.exit.i
  %i.mv = tail call nsz float @llvm.log2.f32(float %i.mc) ; 2 uses
  %i.mw = tail call nsz float @llvm.log2.f32(float %.0.i682.i)
  %i.mx = fsub nsz float %i.mv, %i.mw             ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %gep1054.i, i64 12
  %i.mz = load float, ptr %i.my, align 4, !tbaa !114 ; 3 uses
  %i.na = fcmp nsz olt float %i.mx, 3.000000e+00  ; 2 uses
  %i.nb = insertelement <2 x float> poison, float %i.mx, i64 0
  %i.nc = insertelement <2 x float> %i.nb, float %i.mv, i64 1 ; 2 uses
  %i.nd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nc, <2 x float> splat (float f0x3F0F320A), <2 x float> splat (float f0x3FA934F1))
  %i.ne = fmul nsz float %i.mz, f0x3F0F320A
  %storemerge.i685.i = select i1 %i.na, float %i.ne, float %i.mz ; 2 uses
  %i.nf = select i1 %i.na, <2 x float> %i.nd, <2 x float> %i.nc
  store float %storemerge.i685.i, ptr %i.mt, align 4, !tbaa !117
  %i.ng = insertelement <2 x float> poison, float %i.mz, i64 0
  %i.nh = shufflevector <2 x float> %i.ng, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ni = fmul nsz <2 x float> %i.nh, %i.nf       ; 2 uses
  store <2 x float> %i.ni, ptr %i.mr, align 4, !tbaa !48
  %i.nj = fadd nsz <2 x float> %i.lz, %i.ni
  %i.nk = fadd nsz float %.3538751.i, %storemerge.i685.i
  br label %calc_pe_3gpp.exit688.i

calc_pe_3gpp.exit688.i:                           ; preds = %bb.aj, %calc_reduced_thr_3gpp.exit.i
  %i.nl = phi float [ %i.nk, %bb.aj ], [ %.3538751.i, %calc_reduced_thr_3gpp.exit.i ] ; 2 uses
  %i.nm = phi <2 x float> [ %i.nj, %bb.aj ], [ %i.lz, %calc_reduced_thr_3gpp.exit.i ] ; 4 uses
  %indvars.iv.next856.i = add nuw nsw i64 %indvars.iv855.i, 1 ; 2 uses
  %exitcond859.not.i = icmp eq i64 %indvars.iv.next856.i, %wide.trip.count858.i
  br i1 %exitcond859.not.i, label %._crit_edge754.i, label %.lr.ph753.i, !llvm.loop !89

._crit_edge754.i:                                 ; preds = %calc_pe_3gpp.exit688.i
  %indvars.iv.next861.i = add nuw nsw i64 %indvars.iv860.i, 16 ; 2 uses
  %i.nn = icmp slt i64 %indvars.iv.next861.i, %i.lg
  %i.no = extractelement <2 x float> %i.nm, i64 0
  %i.np = extractelement <2 x float> %i.nm, i64 1
  br i1 %i.nn, label %.backedge.backedge, label %.preheader718.us.i.preheader

.backedge.backedge:                               ; preds = %._crit_edge754.i, %._crit_edge754.i.thread
  %indvars.iv860.i.be = phi i64 [ %indvars.iv.next861.i, %._crit_edge754.i ], [ %indvars.iv.next861.i14, %._crit_edge754.i.thread ]
  %.2530761.i.be = phi float [ %i.no, %._crit_edge754.i ], [ 0.000000e+00, %._crit_edge754.i.thread ]
  %.2537760.i.be = phi float [ %i.nl, %._crit_edge754.i ], [ 0.000000e+00, %._crit_edge754.i.thread ]
  %.2544759.i.be = phi float [ %i.np, %._crit_edge754.i ], [ 0.000000e+00, %._crit_edge754.i.thread ]
  br label %.backedge, !llvm.loop !90

.preheader718.us.i.preheader:                     ; preds = %._crit_edge754.i
  %i.nq = add nsw i64 %wide.trip.count858.i, -1   ; 2 uses
  %xtraiter = and i64 %wide.trip.count858.i, 1
  %i.nr = icmp eq i64 %i.nq, 0
  %unroll_iter = and i64 %wide.trip.count858.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_1
