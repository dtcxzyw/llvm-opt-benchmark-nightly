inline.NumInlined: 230
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@speed_main:bb.a
  br label %opt_found.exit1950.thread

opt_found.exit1950.thread:                        ; preds = %bb.gl, %opt_found.exit1945.thread
  %.sroa.0.2 = phi i8 [ %spec.select2453, %bb.gl ], [ 2, %opt_found.exit1945.thread ] ; 2 uses
  %.19 = phi i32 [ %spec.select2454, %bb.gl ], [ 1, %opt_found.exit1945.thread ] ; 2 uses
  br i1 %.not.i1951, label %kem_locate.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %opt_found.exit1950.thread, %bb.gm
  %i.vu = phi i64 [ %i.wa, %bb.gm ], [ 0, %opt_found.exit1950.thread ]
  %.09.i = phi i32 [ %i.vz, %bb.gm ], [ 0, %opt_found.exit1950.thread ] ; 2 uses
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr @kems_algname, i64 %i.vu
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !24
  %i.vx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.vw, ptr noundef nonnull readonly dereferenceable(1) %i.lb) #14
  %i.vy = icmp eq i32 %i.vx, 0
  br i1 %i.vy, label %kem_locate.exit, label %bb.gm

bb.gm:                                            ; preds = %.lr.ph.i
  %i.vz = add i32 %.09.i, 1                       ; 2 uses
  %i.wa = zext i32 %i.vz to i64                   ; 2 uses
  %i.wb = icmp ugt i64 %i.kx, %i.wa
  br i1 %i.wb, label %.lr.ph.i, label %kem_locate.exit.thread, !llvm.loop !35

kem_locate.exit:                                  ; preds = %.lr.ph.i
  %i.wc = zext i32 %.09.i to i64
  %i.wd = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.wc ; 2 uses
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !26
  %i.wf = add i8 %i.we, 1
  store i8 %i.wf, ptr %i.wd, align 1, !tbaa !26
  br label %kem_locate.exit.thread

kem_locate.exit.thread:                           ; preds = %bb.gm, %opt_found.exit1950.thread, %kem_locate.exit
  %.31383 = phi i8 [ 1, %kem_locate.exit ], [ %.213822991, %opt_found.exit1950.thread ], [ %.213822991, %bb.gm ] ; 2 uses
  %.20 = phi i32 [ 1, %kem_locate.exit ], [ %.19, %opt_found.exit1950.thread ], [ %.19, %bb.gm ] ; 2 uses
  br i1 %.not.i1952, label %sig_locate.exit.thread, label %.lr.ph.i1953

.lr.ph.i1953:                                     ; preds = %kem_locate.exit.thread, %bb.gn
  %i.wg = phi i64 [ %i.wm, %bb.gn ], [ 0, %kem_locate.exit.thread ]
  %.09.i1954 = phi i32 [ %i.wl, %bb.gn ], [ 0, %kem_locate.exit.thread ] ; 2 uses
  %i.wh = getelementptr inbounds nuw [8 x i8], ptr @sigs_algname, i64 %i.wg
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !24
  %i.wj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.wi, ptr noundef nonnull readonly dereferenceable(1) %i.lb) #14
  %i.wk = icmp eq i32 %i.wj, 0
  br i1 %i.wk, label %sig_locate.exit, label %bb.gn

bb.gn:                                            ; preds = %.lr.ph.i1953
  %i.wl = add i32 %.09.i1954, 1                   ; 2 uses
  %i.wm = zext i32 %i.wl to i64                   ; 2 uses
  %i.wn = icmp ugt i64 %i.ky, %i.wm
  br i1 %i.wn, label %.lr.ph.i1953, label %sig_locate.exit.thread, !llvm.loop !36

sig_locate.exit:                                  ; preds = %.lr.ph.i1953
  %i.wo = zext i32 %.09.i1954 to i64
  %i.wp = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.wo ; 2 uses
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !26
  %i.wr = add i8 %i.wq, 1
  store i8 %i.wr, ptr %i.wp, align 1, !tbaa !26
  br label %sig_locate.exit.thread

sig_locate.exit.thread:                           ; preds = %bb.gn, %kem_locate.exit.thread, %sig_locate.exit
  %.31377 = phi i8 [ 1, %sig_locate.exit ], [ %.213762992, %kem_locate.exit.thread ], [ %.213762992, %bb.gn ] ; 2 uses
  %.21 = phi i32 [ 1, %sig_locate.exit ], [ %.20, %kem_locate.exit.thread ], [ %.20, %bb.gn ]
  %i.ws = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(5) @.str.138) #14
  %i.wt = icmp eq i32 %i.ws, 0
  br i1 %i.wt, label %.thread, label %bb.go

bb.go:                                            ; preds = %sig_locate.exit.thread
  %i.wu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(5) @.str.33) #14
  %i.wv = icmp eq i32 %i.wu, 0
  br i1 %i.wv, label %.thread2342, label %bb.gp

.thread:                                          ; preds = %sig_locate.exit.thread
  store i8 1, ptr %i.kz, align 2, !tbaa !26
  store i8 1, ptr %i.la, align 1, !tbaa !26
  %i.ww = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(5) @.str.33) #14
  %i.wx = icmp eq i32 %i.ww, 0
  br i1 %i.wx, label %.thread2342, label %.thread4085

.thread2342:                                      ; preds = %.thread, %bb.go
  store i8 1, ptr %i.ar, align 4, !tbaa !26
  br label %.thread4085

bb.gp:                                            ; preds = %bb.go
  %.not1846 = icmp eq i32 %.21, 0
  br i1 %.not1846, label %bb.gq, label %.thread4085

bb.gq:                                            ; preds = %bb.gp
  %i.wy = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.wz = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.wy, ptr noundef nonnull @.str.139, ptr noundef %i.aq, ptr noundef nonnull %i.lb) #13 ; 0 uses
  br label %.loopexit2495

.thread4085:                                      ; preds = %.thread, %bb.gp, %.thread2342
  %i.xa = getelementptr inbounds nuw i8, ptr %.012762993, i64 8 ; 2 uses
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !24 ; 2 uses
  %.not1646 = icmp eq ptr %i.xb, null
  br i1 %.not1646, label %._crit_edge2994, label %.preheader2563, !llvm.loop !37

._crit_edge2994:                                  ; preds = %.thread4085, %.preheader2564
  %.sroa.0.0.lcssa = phi i8 [ 0, %.preheader2564 ], [ %.sroa.0.2, %.thread4085 ] ; 2 uses
  %.21382.lcssa = phi i8 [ %.01380, %.preheader2564 ], [ %.31383, %.thread4085 ] ; 3 uses
  %.21376.lcssa = phi i8 [ %.01374, %.preheader2564 ], [ %.31377, %.thread4085 ] ; 3 uses
  %.b1641 = load i1, ptr @aead, align 4
  br i1 %.b1641, label %bb.gr, label %bb.gv

bb.gr:                                            ; preds = %._crit_edge2994
  %i.xc = load ptr, ptr %i.d, align 8, !tbaa !12  ; 2 uses
  %i.xd = icmp eq ptr %i.xc, null
  br i1 %i.xd, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.xe = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.xf = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.xe, ptr noundef nonnull @.str.140) #13 ; 0 uses
  br label %.loopexit2495

bb.gt:                                            ; preds = %bb.gr
  %i.xg = call i64 @EVP_CIPHER_get_flags(ptr noundef nonnull %i.xc) #13
  %i.xh = and i64 %i.xg, 2097152
  %.not1647 = icmp eq i64 %i.xh, 0
  br i1 %.not1647, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.xi = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.xj = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.xk = call ptr @EVP_CIPHER_get0_name(ptr noundef %i.xj) #13
  %i.xl = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.xi, ptr noundef nonnull @.str.141, ptr noundef %i.xk) #13 ; 0 uses
  br label %.loopexit2495

bb.gv:                                            ; preds = %bb.gt, %._crit_edge2994
  %i.xm = load i64, ptr @kems_algs_len, align 8, !tbaa !29 ; 14 uses
  %.not1648 = icmp eq i64 %i.xm, 0
  br i1 %.not1648, label %.loopexit2561, label %.preheader2562.preheader

.preheader2562.preheader:                         ; preds = %bb.gv
  %min.iters.check = icmp ult i64 %i.xm, 8
  br i1 %min.iters.check, label %.preheader2562.preheader5017, label %vector.ph

vector.ph:                                        ; preds = %.preheader2562.preheader
  %n.vec = and i64 %i.xm, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.xr, %vector.body ]
  %vec.phi4903 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.xs, %vector.body ]
  %i.xn = getelementptr inbounds nuw i8, ptr %i.p, i64 %index ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 4
  %wide.load = load <4 x i8>, ptr %i.xn, align 8, !tbaa !26
  %wide.load4904 = load <4 x i8>, ptr %i.xo, align 4, !tbaa !26
  %i.xp = zext <4 x i8> %wide.load to <4 x i32>
  %i.xq = zext <4 x i8> %wide.load4904 to <4 x i32>
  %i.xr = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.xp) ; 2 uses
  %i.xs = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi4903, <4 x i32> %i.xq) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.xt = icmp eq i64 %index.next, %n.vec
  br i1 %i.xt, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.xr, <4 x i32> %i.xs)
  %i.xu = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.xm, %n.vec
  br i1 %cmp.n, label %get_max.exit, label %.preheader2562.preheader5017

.preheader2562.preheader5017:                     ; preds = %.preheader2562.preheader, %middle.block
  %.011.i.ph = phi i32 [ 0, %.preheader2562.preheader ], [ %i.xu, %middle.block ]
  %.0810.i.ph = phi i64 [ 0, %.preheader2562.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader2562

.preheader2562:                                   ; preds = %.preheader2562.preheader5017, %.preheader2562
  %.011.i = phi i32 [ %spec.select.i1956, %.preheader2562 ], [ %.011.i.ph, %.preheader2562.preheader5017 ]
  %.0810.i = phi i64 [ %i.xy, %.preheader2562 ], [ %.0810.i.ph, %.preheader2562.preheader5017 ] ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.p, i64 %.0810.i
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !26
  %i.xx = zext i8 %i.xw to i32
  %spec.select.i1956 = call i32 @llvm.umax.i32(i32 %.011.i, i32 %i.xx) ; 2 uses
  %i.xy = add nuw i64 %.0810.i, 1                 ; 2 uses
  %exitcond.not.i1957 = icmp eq i64 %i.xy, %i.xm
  br i1 %exitcond.not.i1957, label %get_max.exit, label %.preheader2562, !llvm.loop !41

get_max.exit:                                     ; preds = %.preheader2562, %middle.block
  %spec.select.i1956.lcssa = phi i32 [ %i.xu, %middle.block ], [ %spec.select.i1956, %.preheader2562 ]
  %i.xz = icmp samesign ugt i32 %spec.select.i1956.lcssa, 1
  br i1 %i.xz, label %iter.check, label %.loopexit2561

iter.check:                                       ; preds = %get_max.exit
  %min.iters.check4907 = icmp ult i64 %i.xm, 4
  br i1 %min.iters.check4907, label %.lr.ph2998.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ya = add i64 %i.xm, -1                       ; 2 uses
  %i.yb = and i64 %i.ya, 4294967295
  %i.yc = icmp eq i64 %i.yb, 4294967295
  %i.yd = icmp ugt i64 %i.ya, 4294967295
  %i.ye = or i1 %i.yc, %i.yd
  br i1 %i.ye, label %.lr.ph2998.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check4908 = icmp ult i64 %i.xm, 32
  br i1 %min.iters.check4908, label %vec.epilog.ph, label %vector.ph4909

vector.ph4909:                                    ; preds = %vector.main.loop.iter.check
  %n.mod.vf4910 = and i64 %i.xm, 28
  %n.vec4911 = and i64 %i.xm, 8589934560          ; 5 uses
  %26 = trunc i64 %n.vec4911 to i32
  br label %vector.body4912

vector.body4912:                                  ; preds = %vector.body4912, %vector.ph4909
  %index4913 = phi i64 [ 0, %vector.ph4909 ], [ %index.next4916, %vector.body4912 ] ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.p, i64 %index4913 ; 3 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 16 ; 2 uses
  %wide.load4914 = load <16 x i8>, ptr %i.yf, align 16, !tbaa !26
  %wide.load4915 = load <16 x i8>, ptr %i.yg, align 16, !tbaa !26
  %i.yh = add <16 x i8> %wide.load4914, splat (i8 -1)
  %i.yi = add <16 x i8> %wide.load4915, splat (i8 -1)
  store <16 x i8> %i.yh, ptr %i.yf, align 16, !tbaa !26
  store <16 x i8> %i.yi, ptr %i.yg, align 16, !tbaa !26
  %index.next4916 = add nuw i64 %index4913, 32    ; 2 uses
  %i.yj = icmp eq i64 %index.next4916, %n.vec4911
  br i1 %i.yj, label %middle.block4917, label %vector.body4912, !llvm.loop !42

middle.block4917:                                 ; preds = %vector.body4912
  %cmp.n4918 = icmp eq i64 %i.xm, %n.vec4911
  br i1 %cmp.n4918, label %.loopexit2561, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block4917
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf4910, 0
  br i1 %min.epilog.iters.check, label %.lr.ph2998.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec4911, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4921 = and i64 %i.xm, 8589934588          ; 4 uses
  %27 = trunc i64 %n.vec4921 to i32
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index4922 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next4924, %vec.epilog.vector.body ] ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.p, i64 %index4922 ; 2 uses
  %wide.load4923 = load <4 x i8>, ptr %i.yk, align 4, !tbaa !26
  %i.yl = add <4 x i8> %wide.load4923, splat (i8 -1)
  store <4 x i8> %i.yl, ptr %i.yk, align 4, !tbaa !26
  %index.next4924 = add nuw i64 %index4922, 4     ; 2 uses
  %i.ym = icmp eq i64 %index.next4924, %n.vec4921
  br i1 %i.ym, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !44

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n4925 = icmp eq i64 %i.xm, %n.vec4921
  br i1 %cmp.n4925, label %.loopexit2561, label %.lr.ph2998.preheader

.lr.ph2998.preheader:                             ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph5016 = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec4911, %vec.epilog.iter.check ], [ %n.vec4921, %vec.epilog.middle.block ]
  %storemerge16492997.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %26, %vec.epilog.iter.check ], [ %27, %vec.epilog.middle.block ]
  br label %.lr.ph2998

.lr.ph2998:                                       ; preds = %.lr.ph2998.preheader, %.lr.ph2998
  %i.yn = phi i64 [ %29, %.lr.ph2998 ], [ %.ph5016, %.lr.ph2998.preheader ]
  %storemerge16492997 = phi i32 [ %28, %.lr.ph2998 ], [ %storemerge16492997.ph, %.lr.ph2998.preheader ]
  %i.yo = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.yn ; 2 uses
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !26
  %i.yq = add i8 %i.yp, -1
  store i8 %i.yq, ptr %i.yo, align 1, !tbaa !26
  %28 = add i32 %storemerge16492997, 1            ; 2 uses
  %29 = zext i32 %28 to i64                       ; 2 uses
  %i.yr = icmp ugt i64 %i.xm, %29
  br i1 %i.yr, label %.lr.ph2998, label %.loopexit2561, !llvm.loop !45

.loopexit2561:                                    ; preds = %.lr.ph2998, %middle.block4917, %vec.epilog.middle.block, %get_max.exit, %bb.gv
  %i.ys = load i64, ptr @sigs_algs_len, align 8, !tbaa !29 ; 14 uses
  %.not1650 = icmp eq i64 %i.ys, 0
  br i1 %.not1650, label %.loopexit2558, label %.preheader2559.preheader

.preheader2559.preheader:                         ; preds = %.loopexit2561
  %min.iters.check4929 = icmp ult i64 %i.ys, 8
  br i1 %min.iters.check4929, label %.preheader2559.preheader5012, label %vector.ph4930

vector.ph4930:                                    ; preds = %.preheader2559.preheader
  %n.vec4932 = and i64 %i.ys, -8                  ; 3 uses
  br label %vector.body4933

vector.body4933:                                  ; preds = %vector.body4933, %vector.ph4930
  %index4934 = phi i64 [ 0, %vector.ph4930 ], [ %index.next4939, %vector.body4933 ] ; 2 uses
  %vec.phi4935 = phi <4 x i32> [ zeroinitializer, %vector.ph4930 ], [ %i.yx, %vector.body4933 ]
  %vec.phi4936 = phi <4 x i32> [ zeroinitializer, %vector.ph4930 ], [ %i.yy, %vector.body4933 ]
  %i.yt = getelementptr inbounds nuw i8, ptr %i.q, i64 %index4934 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 4
  %wide.load4937 = load <4 x i8>, ptr %i.yt, align 8, !tbaa !26
  %wide.load4938 = load <4 x i8>, ptr %i.yu, align 4, !tbaa !26
  %i.yv = zext <4 x i8> %wide.load4937 to <4 x i32>
  %i.yw = zext <4 x i8> %wide.load4938 to <4 x i32>
  %i.yx = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi4935, <4 x i32> %i.yv) ; 2 uses
  %i.yy = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi4936, <4 x i32> %i.yw) ; 2 uses
  %index.next4939 = add nuw i64 %index4934, 8     ; 2 uses
  %i.yz = icmp eq i64 %index.next4939, %n.vec4932
  br i1 %i.yz, label %middle.block4940, label %vector.body4933, !llvm.loop !46

middle.block4940:                                 ; preds = %vector.body4933
  %rdx.minmax4941 = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.yx, <4 x i32> %i.yy)
  %i.za = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax4941) ; 2 uses
  %cmp.n4942 = icmp eq i64 %i.ys, %n.vec4932
  br i1 %cmp.n4942, label %get_max.exit1962, label %.preheader2559.preheader5012

.preheader2559.preheader5012:                     ; preds = %.preheader2559.preheader, %middle.block4940
  %.011.i1958.ph = phi i32 [ 0, %.preheader2559.preheader ], [ %i.za, %middle.block4940 ]
  %.0810.i1959.ph = phi i64 [ 0, %.preheader2559.preheader ], [ %n.vec4932, %middle.block4940 ]
  br label %.preheader2559

.preheader2559:                                   ; preds = %.preheader2559.preheader5012, %.preheader2559
  %.011.i1958 = phi i32 [ %spec.select.i1960, %.preheader2559 ], [ %.011.i1958.ph, %.preheader2559.preheader5012 ]
  %.0810.i1959 = phi i64 [ %i.ze, %.preheader2559 ], [ %.0810.i1959.ph, %.preheader2559.preheader5012 ] ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0810.i1959
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !26
  %i.zd = zext i8 %i.zc to i32
  %spec.select.i1960 = call i32 @llvm.umax.i32(i32 %.011.i1958, i32 %i.zd) ; 2 uses
  %i.ze = add nuw i64 %.0810.i1959, 1             ; 2 uses
  %exitcond.not.i1961 = icmp eq i64 %i.ze, %i.ys
  br i1 %exitcond.not.i1961, label %get_max.exit1962, label %.preheader2559, !llvm.loop !47

get_max.exit1962:                                 ; preds = %.preheader2559, %middle.block4940
  %spec.select.i1960.lcssa = phi i32 [ %i.za, %middle.block4940 ], [ %spec.select.i1960, %.preheader2559 ]
  %i.zf = icmp samesign ugt i32 %spec.select.i1960.lcssa, 1
  br i1 %i.zf, label %iter.check4964, label %.loopexit2558

iter.check4964:                                   ; preds = %get_max.exit1962
  %min.iters.check4949 = icmp ult i64 %i.ys, 4
  br i1 %min.iters.check4949, label %.lr.ph3000.preheader, label %vector.scevcheck4945

vector.scevcheck4945:                             ; preds = %iter.check4964
  %i.zg = add i64 %i.ys, -1                       ; 2 uses
  %i.zh = and i64 %i.zg, 4294967295
  %i.zi = icmp eq i64 %i.zh, 4294967295
  %i.zj = icmp ugt i64 %i.zg, 4294967295
  %i.zk = or i1 %i.zi, %i.zj
  br i1 %i.zk, label %.lr.ph3000.preheader, label %vector.main.loop.iter.check4950

vector.main.loop.iter.check4950:                  ; preds = %vector.scevcheck4945
  %min.iters.check4951 = icmp ult i64 %i.ys, 32
  br i1 %min.iters.check4951, label %vec.epilog.ph4968, label %vector.ph4952

vector.ph4952:                                    ; preds = %vector.main.loop.iter.check4950
  %n.mod.vf4953 = and i64 %i.ys, 28
  %n.vec4954 = and i64 %i.ys, 8589934560          ; 5 uses
  %30 = trunc i64 %n.vec4954 to i32
  br label %vector.body4955

vector.body4955:                                  ; preds = %vector.body4955, %vector.ph4952
  %index4956 = phi i64 [ 0, %vector.ph4952 ], [ %index.next4959, %vector.body4955 ] ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.q, i64 %index4956 ; 3 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 16 ; 2 uses
  %wide.load4957 = load <16 x i8>, ptr %i.zl, align 16, !tbaa !26
  %wide.load4958 = load <16 x i8>, ptr %i.zm, align 16, !tbaa !26
  %i.zn = add <16 x i8> %wide.load4957, splat (i8 -1)
  %i.zo = add <16 x i8> %wide.load4958, splat (i8 -1)
  store <16 x i8> %i.zn, ptr %i.zl, align 16, !tbaa !26
  store <16 x i8> %i.zo, ptr %i.zm, align 16, !tbaa !26
  %index.next4959 = add nuw i64 %index4956, 32    ; 2 uses
  %i.zp = icmp eq i64 %index.next4959, %n.vec4954
  br i1 %i.zp, label %middle.block4960, label %vector.body4955, !llvm.loop !48

middle.block4960:                                 ; preds = %vector.body4955
  %cmp.n4961 = icmp eq i64 %i.ys, %n.vec4954
  br i1 %cmp.n4961, label %.loopexit2558, label %vec.epilog.iter.check4966

vec.epilog.iter.check4966:                        ; preds = %middle.block4960
  %min.epilog.iters.check4967 = icmp eq i64 %n.mod.vf4953, 0
  br i1 %min.epilog.iters.check4967, label %.lr.ph3000.preheader, label %vec.epilog.ph4968, !prof !43

vec.epilog.ph4968:                                ; preds = %vector.main.loop.iter.check4950, %vec.epilog.iter.check4966
  %vec.epilog.resume.val4962 = phi i64 [ %n.vec4954, %vec.epilog.iter.check4966 ], [ 0, %vector.main.loop.iter.check4950 ]
  %n.vec4970 = and i64 %i.ys, 8589934588          ; 4 uses
  %31 = trunc i64 %n.vec4970 to i32
  br label %vec.epilog.vector.body4971

vec.epilog.vector.body4971:                       ; preds = %vec.epilog.vector.body4971, %vec.epilog.ph4968
  %index4972 = phi i64 [ %vec.epilog.resume.val4962, %vec.epilog.ph4968 ], [ %index.next4974, %vec.epilog.vector.body4971 ] ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.q, i64 %index4972 ; 2 uses
  %wide.load4973 = load <4 x i8>, ptr %i.zq, align 4, !tbaa !26
  %i.zr = add <4 x i8> %wide.load4973, splat (i8 -1)
  store <4 x i8> %i.zr, ptr %i.zq, align 4, !tbaa !26
  %index.next4974 = add nuw i64 %index4972, 4     ; 2 uses
  %i.zs = icmp eq i64 %index.next4974, %n.vec4970
  br i1 %i.zs, label %vec.epilog.middle.block4975, label %vec.epilog.vector.body4971, !llvm.loop !49

vec.epilog.middle.block4975:                      ; preds = %vec.epilog.vector.body4971
  %cmp.n4976 = icmp eq i64 %i.ys, %n.vec4970
  br i1 %cmp.n4976, label %.loopexit2558, label %.lr.ph3000.preheader

.lr.ph3000.preheader:                             ; preds = %vector.scevcheck4945, %iter.check4964, %vec.epilog.iter.check4966, %vec.epilog.middle.block4975
  %.ph = phi i64 [ 0, %iter.check4964 ], [ 0, %vector.scevcheck4945 ], [ %n.vec4954, %vec.epilog.iter.check4966 ], [ %n.vec4970, %vec.epilog.middle.block4975 ]
  %storemerge16512999.ph = phi i32 [ 0, %iter.check4964 ], [ 0, %vector.scevcheck4945 ], [ %30, %vec.epilog.iter.check4966 ], [ %31, %vec.epilog.middle.block4975 ]
  br label %.lr.ph3000

.lr.ph3000:                                       ; preds = %.lr.ph3000.preheader, %.lr.ph3000
  %i.zt = phi i64 [ %33, %.lr.ph3000 ], [ %.ph, %.lr.ph3000.preheader ]
  %storemerge16512999 = phi i32 [ %32, %.lr.ph3000 ], [ %storemerge16512999.ph, %.lr.ph3000.preheader ]
  %i.zu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.zt ; 2 uses
  %i.zv = load i8, ptr %i.zu, align 1, !tbaa !26
  %i.zw = add i8 %i.zv, -1
  store i8 %i.zw, ptr %i.zu, align 1, !tbaa !26
  %32 = add i32 %storemerge16512999, 1            ; 2 uses
  %33 = zext i32 %32 to i64                       ; 2 uses
  %i.zx = icmp ugt i64 %i.ys, %33
  br i1 %i.zx, label %.lr.ph3000, label %.loopexit2558, !llvm.loop !50

.loopexit2558:                                    ; preds = %.lr.ph3000, %middle.block4960, %vec.epilog.middle.block4975, %get_max.exit1962, %.loopexit2561
  %.not1652 = icmp eq i32 %.01332, 0              ; 2 uses
  br i1 %.not1652, label %bb.hc, label %bb.gw

bb.gw:                                            ; preds = %.loopexit2558
  %i.zy = load ptr, ptr %i.d, align 8, !tbaa !12  ; 2 uses
  %i.zz = icmp eq ptr %i.zy, null
  br i1 %i.zz, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.aaa = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.aab = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.aaa, ptr noundef nonnull @.str.142) #13 ; 0 uses
  br label %.loopexit2495

bb.gy:                                            ; preds = %bb.gw
  %i.aac = call i64 @EVP_CIPHER_get_flags(ptr noundef nonnull %i.zy) #13
  %i.aad = and i64 %i.aac, 4194304
  %.not1653 = icmp eq i64 %i.aad, 0
  br i1 %.not1653, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.aae = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.aaf = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aag = call ptr @EVP_CIPHER_get0_name(ptr noundef %i.aaf) #13
  %i.aah = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.aae, ptr noundef nonnull @.str.143, ptr noundef %i.aag) #13 ; 0 uses
  br label %.loopexit2495

bb.ha:                                            ; preds = %bb.gy
  %.not1654 = icmp eq i32 %.01427, 0
  br i1 %.not1654, label %.thread2348, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.aai = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.aaj = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.aai, ptr noundef nonnull @.str.144) #13 ; 0 uses
  br label %.loopexit2495

bb.hc:                                            ; preds = %.loopexit2558
  %.not1655 = icmp eq i32 %.01427, 0
  br i1 %.not1655, label %.thread2348, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.aak = zext nneg i32 %.01427 to i64           ; 2 uses
  %i.aal = call i32 @ASYNC_init_thread(i64 noundef %i.aak, i64 noundef %i.aak) #13 ; 2 uses
  %.not1656 = icmp eq i32 %i.aal, 0
  br i1 %.not1656, label %bb.he, label %.thread2348

bb.he:                                            ; preds = %bb.hd
  %i.aam = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.aan = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.aam, ptr noundef nonnull @.str.145) #13 ; 0 uses
  br label %.loopexit2495

.thread2348:                                      ; preds = %bb.ha, %bb.hd, %bb.hc
  %.not16552350 = phi i1 [ false, %bb.hd ], [ true, %bb.hc ], [ true, %bb.ha ]
  %.01323 = phi i32 [ %i.aal, %bb.hd ], [ 0, %bb.hc ], [ 0, %bb.ha ] ; 11 uses
  %i.aao = call i32 @llvm.umax.i32(i32 %.01427, i32 1) ; 22 uses
  %i.aap = zext nneg i32 %i.aao to i64            ; 22 uses
  %i.aaq = mul nuw nsw i64 %i.aap, 20624          ; 2 uses
  %i.aar = call ptr @app_malloc(i64 noundef %i.aaq, ptr noundef nonnull @.str.146) #13 ; 103 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aar, i8 0, i64 %i.aaq, i1 false)
  %i.aas = load ptr, ptr @lengths, align 8, !tbaa !27
  %i.aat = zext nneg i32 %.01354 to i64
  %i.aau = getelementptr [4 x i8], ptr %i.aas, i64 %i.aat
  %i.aav = getelementptr i8, ptr %i.aau, i64 -4
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !5 ; 2 uses
  %i.aax = icmp sgt i32 %i.aaw, 2147483583
  br i1 %i.aax, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %.thread2348
  %i.aay = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.aaz = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.aay, ptr noundef nonnull @.str.147) #13 ; 0 uses
  br label %.loopexit2495

bb.hg:                                            ; preds = %.thread2348
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.aaw, i32 36)
  %i.aba = add nuw nsw i32 %spec.store.select, 64 ; 2 uses
  %i.abb = zext nneg i32 %i.aba to i64            ; 6 uses
  %i.abc = sext i32 %.01341 to i64                ; 2 uses
  %i.abd = sub nsw i32 %i.aba, %.01341
  %i.abe = zext nneg i32 %i.abd to i64            ; 2 uses
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hk
  %indvars.iv = phi i64 [ 0, %bb.hg ], [ %indvars.iv.next.a, %bb.hk ] ; 3 uses
  br i1 %.not16552350, label %bb.hk, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.abf = call ptr @ASYNC_WAIT_CTX_new() #13     ; 2 uses
  %i.abg = getelementptr inbounds nuw [20624 x i8], ptr %i.aar, i64 %indvars.iv
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 8
  store ptr %i.abf, ptr %i.abh, align 8, !tbaa !51
  %i.abi = icmp eq ptr %i.abf, null
  br i1 %i.abi, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.abj = load ptr, ptr @bio_err, align 8, !tbaa !20
  %i.abk = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.abj, ptr noundef nonnull @.str.148) #13 ; 0 uses
  br label %.loopexit2495

bb.hk:                                            ; preds = %bb.hi, %bb.hh
  %i.abl = call ptr @app_malloc(i64 noundef %i.abb, ptr noundef nonnull @.str.149) #13
  %i.abm = getelementptr inbounds nuw [20624 x i8], ptr %i.aar, i64 %indvars.iv ; 10 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 32 ; 2 uses
  store ptr %i.abl, ptr %i.abn, align 8, !tbaa !57
  %i.abo = call ptr @app_malloc(i64 noundef %i.abb, ptr noundef nonnull @.str.149) #13 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abm, i64 40
  store ptr %i.abo, ptr %i.abp, align 8, !tbaa !58
  %i.abq = load ptr, ptr %i.abn, align 8, !tbaa !57
  %i.abr = getelementptr inbounds i8, ptr %i.abq, i64 %i.abc
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  store ptr %i.abr, ptr %i.abs, align 8, !tbaa !59
  %i.abt = getelementptr inbounds i8, ptr %i.abo, i64 %i.abc
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abm, i64 24
  store ptr %i.abt, ptr %i.abu, align 8, !tbaa !60
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abm, i64 72
  store i64 %i.abe, ptr %i.abv, align 8, !tbaa !61
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abm, i64 80
  store i64 %i.abe, ptr %i.abw, align 8, !tbaa !62
  %i.abx = call ptr @app_malloc(i64 noundef 256, ptr noundef nonnull @.str.150) #13
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abm, i64 952
  store ptr %i.abx, ptr %i.aby, align 8, !tbaa !63
  %i.abz = call ptr @app_malloc(i64 noundef 256, ptr noundef nonnull @.str.151) #13
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abm, i64 960
  store ptr %i.abz, ptr %i.aca, align 8, !tbaa !64
  %i.acb = call ptr @app_malloc(i64 noundef 1024, ptr noundef nonnull @.str.152) #13
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abm, i64 1200
  store ptr %i.acb, ptr %i.acc, align 8, !tbaa !65
  %i.acd = call ptr @app_malloc(i64 noundef 1024, ptr noundef nonnull @.str.153) #13
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abm, i64 1208
  store ptr %i.acd, ptr %i.ace, align 8, !tbaa !66
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, %i.aap
  br i1 %exitcond.not, label %bb.hl, label %bb.hh, !llvm.loop !67

bb.hl:                                            ; preds = %bb.hk
  %.not1658 = icmp eq i32 %.01412, 0
  br i1 %.not1658, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.acf = call fastcc i32 @do_multi(i32 noundef %.01412, i32 noundef %.01354)
  %.not1659 = icmp eq i32 %i.acf, 0
  br i1 %.not1659, label %bb.hn, label %.loopexit2498

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %.b1642.pre3919 = load i1, ptr @domlock, align 4
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hq
  %.b1642 = phi i1 [ %.b1642.pre3919, %bb.hn ], [ %.b16423920, %bb.hq ]
  %indvars.iv3684 = phi i64 [ 0, %bb.hn ], [ %indvars.iv.next3685, %bb.hq ] ; 3 uses
  br i1 %.b1642, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.acg = getelementptr inbounds nuw [20624 x i8], ptr %i.aar, i64 %indvars.iv3684
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 32 ; 2 uses
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !57
  %i.acj = call i32 @mlock(ptr noundef %i.aci, i64 noundef %i.abb) #13 ; 0 uses
  %i.ack = load ptr, ptr %i.ach, align 8, !tbaa !57
  %i.acl = call i32 @mlock(ptr noundef %i.ack, i64 noundef %i.abb) #13 ; 0 uses
  %.b1642.pre = load i1, ptr @domlock, align 4
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %.b16423920 = phi i1 [ %.b1642.pre, %bb.hp ], [ false, %bb.ho ]
  %i.acm = getelementptr inbounds nuw [20624 x i8], ptr %i.aar, i64 %indvars.iv3684 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 32
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aco, i8 0, i64 %i.abb, i1 false)
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acm, i64 40
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.acq, i8 0, i64 %i.abb, i1 false)
  %indvars.iv.next3685 = add nuw nsw i64 %indvars.iv3684, 1 ; 2 uses
  %exitcond3705.not = icmp eq i64 %indvars.iv.next3685, %i.aap
  br i1 %exitcond3705.not, label %bb.hr, label %bb.ho, !llvm.loop !68

bb.hr:                                            ; preds = %bb.hq
  %i.acr = call ptr @setup_engine_methods(ptr noundef %.01289, i32 noundef -1, i32 noundef 0) #13 ; 9 uses
  %i.acs = icmp ne i32 %i.ki, 0
  %i.act = load i8, ptr %i.at, align 1
  %i.acu = icmp ne i8 %i.act, 0
  %or.cond4 = select i1 %i.acs, i1 true, i1 %i.acu
  %i.acv = load i8, ptr %i.as, align 1            ; 2 uses
  %i.acw = icmp ne i8 %i.acv, 0
  %or.cond7 = select i1 %or.cond4, i1 true, i1 %i.acw
  %i.acx = load i8, ptr %i.ar, align 4
  %i.acy = icmp ne i8 %i.acx, 0
  %or.cond10 = select i1 %or.cond7, i1 true, i1 %i.acy
  %i.acz = icmp ne i8 %.21382.lcssa, 0
  %or.cond12 = select i1 %or.cond10, i1 true, i1 %i.acz
  %i.ada = icmp ne i8 %.21376.lcssa, 0
  %or.cond14 = select i1 %or.cond12, i1 true, i1 %i.ada
  br i1 %or.cond14, label %bb.if, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %i.f, i8 1, i64 31, i1 false)
  store i8 0, ptr %i.ar, align 4, !tbaa !26
  store i8 0, ptr %i.at, align 1, !tbaa !26
  %i.adb = call i32 @ERR_set_mark() #13           ; 0 uses
  br label %bb.ht
end_hunk_0
