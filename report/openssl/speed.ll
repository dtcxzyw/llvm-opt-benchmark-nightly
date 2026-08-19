inline.NumInlined: 187
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@speed_main:bb.a
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr @sigs_algname, i64 %i.wz
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !25
  %i.xc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.xb, ptr noundef nonnull dereferenceable(1) %i.le) #15
  %i.xd = icmp eq i32 %i.xc, 0
  br i1 %i.xd, label %sig_locate.exit, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph.i1753
  %i.xe = add i32 %.023.i1754, 1                  ; 2 uses
  %i.xf = zext i32 %i.xe to i64                   ; 2 uses
  %i.xg = icmp ugt i64 %i.wy, %i.xf
  br i1 %i.xg, label %.lr.ph.i1753, label %._crit_edge.i1755, !llvm.loop !39

._crit_edge.i1755:                                ; preds = %bb.dc, %kem_locate.exit.thread
  %i.xh = call i32 @ERR_set_mark() #14            ; 0 uses
  %i.xi = call ptr @app_get0_libctx() #14
  %i.xj = call ptr @app_get0_propq() #14
  %i.xk = call ptr @EVP_SIGNATURE_fetch(ptr noundef %i.xi, ptr noundef nonnull %i.le, ptr noundef %i.xj) #14 ; 4 uses
  %i.xl = call i32 @ERR_pop_to_mark() #14         ; 0 uses
  %.not.i1756 = icmp eq ptr %i.xk, null
  br i1 %.not.i1756, label %sig_locate.exit.thread, label %bb.dd

bb.dd:                                            ; preds = %._crit_edge.i1755
  %i.xm = call ptr @EVP_SIGNATURE_get0_name(ptr noundef nonnull %i.xk) #14
  %i.xn = load i64, ptr @sigs_algs_len, align 8, !tbaa !30 ; 2 uses
  %.not29.i1757 = icmp eq i64 %i.xn, 0
  br i1 %.not29.i1757, label %._crit_edge27.i1760, label %.lr.ph26.i1758

.lr.ph26.i1758:                                   ; preds = %bb.dd, %bb.df
  %i.xo = phi i64 [ %i.xu, %bb.df ], [ 0, %bb.dd ]
  %.124.i1759 = phi i32 [ %i.xt, %bb.df ], [ 0, %bb.dd ] ; 2 uses
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr @sigs_algname, i64 %i.xo
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !25
  %i.xr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.xq, ptr noundef nonnull dereferenceable(1) %i.xm) #15
  %i.xs = icmp eq i32 %i.xr, 0
  br i1 %i.xs, label %bb.de, label %bb.df

bb.de:                                            ; preds = %.lr.ph26.i1758
  call void @EVP_SIGNATURE_free(ptr noundef nonnull %i.xk) #14
  br label %sig_locate.exit

bb.df:                                            ; preds = %.lr.ph26.i1758
  %i.xt = add i32 %.124.i1759, 1                  ; 2 uses
  %i.xu = zext i32 %i.xt to i64                   ; 2 uses
  %i.xv = icmp ugt i64 %i.xn, %i.xu
  br i1 %i.xv, label %.lr.ph26.i1758, label %._crit_edge27.i1760, !llvm.loop !40

._crit_edge27.i1760:                              ; preds = %bb.df, %bb.dd
  call void @EVP_SIGNATURE_free(ptr noundef nonnull %i.xk) #14
  br label %sig_locate.exit.thread

sig_locate.exit:                                  ; preds = %.lr.ph.i1753, %bb.de
  %.22040 = phi i32 [ %.124.i1759, %bb.de ], [ %.023.i1754, %.lr.ph.i1753 ]
  %i.xw = zext i32 %.22040 to i64
  %i.xx = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.xw ; 2 uses
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !27
  %i.xz = add i8 %i.xy, 1
  store i8 %i.xz, ptr %i.xx, align 1, !tbaa !27
  br label %sig_locate.exit.thread

sig_locate.exit.thread:                           ; preds = %._crit_edge27.i1760, %._crit_edge.i1755, %sig_locate.exit
  %.31193 = phi i8 [ 1, %sig_locate.exit ], [ %.211922661, %._crit_edge.i1755 ], [ %.211922661, %._crit_edge27.i1760 ] ; 2 uses
  %.18 = phi i32 [ 1, %sig_locate.exit ], [ %.17, %._crit_edge.i1755 ], [ %.17, %._crit_edge27.i1760 ]
  %i.ya = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.le, ptr noundef nonnull dereferenceable(5) @.str.135) #15
  %i.yb = icmp eq i32 %i.ya, 0
  br i1 %i.yb, label %.thread, label %bb.dg

bb.dg:                                            ; preds = %sig_locate.exit.thread
  %i.yc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.le, ptr noundef nonnull dereferenceable(5) @.str.31) #15
  %i.yd = icmp eq i32 %i.yc, 0
  br i1 %i.yd, label %.thread2095, label %bb.dh

.thread:                                          ; preds = %sig_locate.exit.thread
  store i8 1, ptr %i.lc, align 2, !tbaa !27
  store i8 1, ptr %i.ld, align 1, !tbaa !27
  %i.ye = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.le, ptr noundef nonnull dereferenceable(5) @.str.31) #15
  %i.yf = icmp eq i32 %i.ye, 0
  br i1 %i.yf, label %.thread2095, label %.thread3708

.thread2095:                                      ; preds = %.thread, %bb.dg
  store i8 1, ptr %i.aq, align 4, !tbaa !27
  br label %.thread3708

bb.dh:                                            ; preds = %bb.dg
  %.not1671 = icmp eq i32 %.18, 0
  br i1 %.not1671, label %bb.di, label %.thread3708

bb.di:                                            ; preds = %bb.dh
  %i.yg = load ptr, ptr @bio_err, align 8, !tbaa !21
  %i.yh = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.yg, ptr noundef nonnull @.str.136, ptr noundef %i.ap, ptr noundef nonnull %i.le) #14 ; 0 uses
  br label %.loopexit2228

.thread3708:                                      ; preds = %.thread, %bb.dh, %.thread2095
  %i.yi = getelementptr inbounds nuw i8, ptr %.012912659, i64 8 ; 2 uses
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !25 ; 2 uses
  %.not1468 = icmp eq ptr %i.yj, null
  br i1 %.not1468, label %._crit_edge2663, label %bb.bp, !llvm.loop !41

._crit_edge2663:                                  ; preds = %.thread3708, %.preheader2289
  %.21198.lcssa = phi i8 [ %.01196, %.preheader2289 ], [ %.31199, %.thread3708 ] ; 3 uses
  %.21192.lcssa = phi i8 [ %.01190, %.preheader2289 ], [ %.31193, %.thread3708 ] ; 3 uses
  %.b1463 = load i1, ptr @aead, align 4
  br i1 %.b1463, label %bb.dj, label %bb.dn

bb.dj:                                            ; preds = %._crit_edge2663
  %i.yk = load ptr, ptr %i.d, align 8, !tbaa !12  ; 2 uses
  %i.yl = icmp eq ptr %i.yk, null
  br i1 %i.yl, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.ym = load ptr, ptr @bio_err, align 8, !tbaa !21
  %i.yn = call i32 @BIO_puts(ptr noundef %i.ym, ptr noundef nonnull @.str.137) #14 ; 0 uses
  br label %.loopexit2228

bb.dl:                                            ; preds = %bb.dj
  %i.yo = call i64 @EVP_CIPHER_get_flags(ptr noundef nonnull %i.yk) #14
  %i.yp = and i64 %i.yo, 2097152
  %.not1469 = icmp eq i64 %i.yp, 0
  br i1 %.not1469, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.yq = load ptr, ptr @bio_err, align 8, !tbaa !21
  %i.yr = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ys = call ptr @EVP_CIPHER_get0_name(ptr noundef %i.yr) #14
  %i.yt = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.yq, ptr noundef nonnull @.str.138, ptr noundef %i.ys) #14 ; 0 uses
  br label %.loopexit2228

bb.dn:                                            ; preds = %bb.dl, %._crit_edge2663
  %i.yu = load i64, ptr @kems_algs_len, align 8, !tbaa !30 ; 14 uses
  %.not1470 = icmp eq i64 %i.yu, 0
  br i1 %.not1470, label %.loopexit2287, label %.preheader2288.preheader

.preheader2288.preheader:                         ; preds = %bb.dn
  %min.iters.check = icmp ult i64 %i.yu, 8
  br i1 %min.iters.check, label %.preheader2288.preheader4538, label %vector.ph

vector.ph:                                        ; preds = %.preheader2288.preheader
  %n.vec = and i64 %i.yu, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.yz, %vector.body ]
  %vec.phi4435 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.za, %vector.body ]
  %i.yv = getelementptr inbounds nuw i8, ptr %i.o, i64 %index ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 4
  %wide.load = load <4 x i8>, ptr %i.yv, align 8, !tbaa !27
  %wide.load4436 = load <4 x i8>, ptr %i.yw, align 4, !tbaa !27
  %i.yx = zext <4 x i8> %wide.load to <4 x i32>
  %i.yy = zext <4 x i8> %wide.load4436 to <4 x i32>
  %i.yz = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.yx) ; 2 uses
  %i.za = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi4435, <4 x i32> %i.yy) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.zb = icmp eq i64 %index.next, %n.vec
  br i1 %i.zb, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.yz, <4 x i32> %i.za)
  %i.zc = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.yu, %n.vec
  br i1 %cmp.n, label %get_max.exit, label %.preheader2288.preheader4538

.preheader2288.preheader4538:                     ; preds = %.preheader2288.preheader, %middle.block
  %.011.i.ph = phi i32 [ 0, %.preheader2288.preheader ], [ %i.zc, %middle.block ]
  %.0810.i.ph = phi i64 [ 0, %.preheader2288.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader2288

.preheader2288:                                   ; preds = %.preheader2288.preheader4538, %.preheader2288
  %.011.i = phi i32 [ %spec.select.i1762, %.preheader2288 ], [ %.011.i.ph, %.preheader2288.preheader4538 ]
  %.0810.i = phi i64 [ %i.zg, %.preheader2288 ], [ %.0810.i.ph, %.preheader2288.preheader4538 ] ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0810.i
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !27
  %i.zf = zext i8 %i.ze to i32
  %spec.select.i1762 = call i32 @llvm.umax.i32(i32 %.011.i, i32 %i.zf) ; 2 uses
  %i.zg = add nuw i64 %.0810.i, 1                 ; 2 uses
  %exitcond.not.i1763 = icmp eq i64 %i.zg, %i.yu
  br i1 %exitcond.not.i1763, label %get_max.exit, label %.preheader2288, !llvm.loop !45

get_max.exit:                                     ; preds = %.preheader2288, %middle.block
  %spec.select.i1762.lcssa = phi i32 [ %i.zc, %middle.block ], [ %spec.select.i1762, %.preheader2288 ]
  %i.zh = icmp samesign ugt i32 %spec.select.i1762.lcssa, 1
  br i1 %i.zh, label %iter.check, label %.loopexit2287

iter.check:                                       ; preds = %get_max.exit
  %min.iters.check4439 = icmp ult i64 %i.yu, 4
  br i1 %min.iters.check4439, label %.preheader2286.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.zi = add i64 %i.yu, -1                       ; 2 uses
  %i.zj = and i64 %i.zi, 4294967295
  %i.zk = icmp eq i64 %i.zj, 4294967295
  %i.zl = icmp ugt i64 %i.zi, 4294967295
  %i.zm = or i1 %i.zk, %i.zl
  br i1 %i.zm, label %.preheader2286.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check4440 = icmp ult i64 %i.yu, 32
  br i1 %min.iters.check4440, label %vec.epilog.ph, label %vector.ph4441

vector.ph4441:                                    ; preds = %vector.main.loop.iter.check
  %i.zn = and i64 %i.yu, 28
  %n.vec4442.a = and i64 %i.yu, 8589934560        ; 5 uses
  %28 = trunc i64 %n.vec4442.a to i32
  br label %vector.body4443

vector.body4443:                                  ; preds = %vector.body4443, %vector.ph4441
  %index4444.a = phi i64 [ 0, %vector.ph4441 ], [ %index.next4447, %vector.body4443 ] ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.o, i64 %index4444.a ; 3 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 16 ; 2 uses
  %wide.load4445.a = load <16 x i8>, ptr %i.zo, align 16, !tbaa !27
  %wide.load4446 = load <16 x i8>, ptr %i.zp, align 16, !tbaa !27
  %i.zq = add <16 x i8> %wide.load4445.a, splat (i8 -1)
  %i.zr = add <16 x i8> %wide.load4446, splat (i8 -1)
  store <16 x i8> %i.zq, ptr %i.zo, align 16, !tbaa !27
  store <16 x i8> %i.zr, ptr %i.zp, align 16, !tbaa !27
  %index.next4447 = add nuw i64 %index4444.a, 32  ; 2 uses
  %i.zs = icmp eq i64 %index.next4447, %n.vec4442.a
  br i1 %i.zs, label %middle.block4448, label %vector.body4443, !llvm.loop !46

middle.block4448:                                 ; preds = %vector.body4443
  %cmp.n4449 = icmp eq i64 %i.yu, %n.vec4442.a
  br i1 %cmp.n4449, label %.loopexit2287, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block4448
  %min.epilog.iters.check = icmp eq i64 %i.zn, 0
  br i1 %min.epilog.iters.check, label %.preheader2286.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec4442.a, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4450 = and i64 %i.yu, 8589934588          ; 4 uses
  %29 = trunc i64 %n.vec4450 to i32
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index4451 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next4453, %vec.epilog.vector.body ] ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.o, i64 %index4451 ; 2 uses
  %wide.load4452 = load <4 x i8>, ptr %i.zt, align 4, !tbaa !27
  %i.zu = add <4 x i8> %wide.load4452, splat (i8 -1)
  store <4 x i8> %i.zu, ptr %i.zt, align 4, !tbaa !27
  %index.next4453 = add nuw i64 %index4451, 4     ; 2 uses
  %i.zv = icmp eq i64 %index.next4453, %n.vec4450
  br i1 %i.zv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !48

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n4454 = icmp eq i64 %i.yu, %n.vec4450
  br i1 %cmp.n4454, label %.loopexit2287, label %.preheader2286.preheader

.preheader2286.preheader:                         ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv3270.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec4442.a, %vec.epilog.iter.check ], [ %n.vec4450, %vec.epilog.middle.block ]
  %storemerge14712665.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %28, %vec.epilog.iter.check ], [ %29, %vec.epilog.middle.block ]
  br label %.preheader2286

.preheader2286:                                   ; preds = %.preheader2286.preheader, %.preheader2286
  %indvars.iv3270.a = phi i64 [ %31, %.preheader2286 ], [ %indvars.iv3270.ph, %.preheader2286.preheader ]
  %storemerge14712665 = phi i32 [ %30, %.preheader2286 ], [ %storemerge14712665.ph, %.preheader2286.preheader ]
  %i.zw = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv3270.a ; 2 uses
  %i.zx = load i8, ptr %i.zw, align 1, !tbaa !27
  %i.zy = add i8 %i.zx, -1
  store i8 %i.zy, ptr %i.zw, align 1, !tbaa !27
  %30 = add i32 %storemerge14712665, 1            ; 2 uses
  %31 = zext i32 %30 to i64                       ; 2 uses
  %i.zz = icmp ugt i64 %i.yu, %31
  br i1 %i.zz, label %.preheader2286, label %.loopexit2287, !llvm.loop !49

.loopexit2287:                                    ; preds = %.preheader2286, %middle.block4448, %vec.epilog.middle.block, %get_max.exit, %bb.dn
  %i.aaa = load i64, ptr @sigs_algs_len, align 8, !tbaa !30 ; 14 uses
  %.not1472 = icmp eq i64 %i.aaa, 0
  br i1 %.not1472, label %.loopexit2284, label %.preheader2285.preheader

.preheader2285.preheader:                         ; preds = %.loopexit2287
  %min.iters.check4457 = icmp ult i64 %i.aaa, 8
  br i1 %min.iters.check4457, label %.preheader2285.preheader4534, label %vector.ph4458

vector.ph4458:                                    ; preds = %.preheader2285.preheader
  %n.vec4459 = and i64 %i.aaa, -8                 ; 3 uses
  br label %vector.body4460

vector.body4460:                                  ; preds = %vector.body4460, %vector.ph4458
  %index4461 = phi i64 [ 0, %vector.ph4458 ], [ %index.next4466, %vector.body4460 ] ; 2 uses
  %vec.phi4462 = phi <4 x i32> [ zeroinitializer, %vector.ph4458 ], [ %i.aaf, %vector.body4460 ]
  %vec.phi4463 = phi <4 x i32> [ zeroinitializer, %vector.ph4458 ], [ %i.aag, %vector.body4460 ]
  %i.aab = getelementptr inbounds nuw i8, ptr %i.p, i64 %index4461 ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 4
  %wide.load4464 = load <4 x i8>, ptr %i.aab, align 8, !tbaa !27
  %wide.load4465 = load <4 x i8>, ptr %i.aac, align 4, !tbaa !27
  %i.aad = zext <4 x i8> %wide.load4464 to <4 x i32>
  %i.aae = zext <4 x i8> %wide.load4465 to <4 x i32>
  %i.aaf = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi4462, <4 x i32> %i.aad) ; 2 uses
  %i.aag = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi4463, <4 x i32> %i.aae) ; 2 uses
  %index.next4466 = add nuw i64 %index4461, 8     ; 2 uses
  %i.aah = icmp eq i64 %index.next4466, %n.vec4459
  br i1 %i.aah, label %middle.block4467, label %vector.body4460, !llvm.loop !50

middle.block4467:                                 ; preds = %vector.body4460
  %rdx.minmax4468 = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.aaf, <4 x i32> %i.aag)
  %i.aai = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax4468) ; 2 uses
  %cmp.n4469 = icmp eq i64 %i.aaa, %n.vec4459
  br i1 %cmp.n4469, label %get_max.exit1768, label %.preheader2285.preheader4534

.preheader2285.preheader4534:                     ; preds = %.preheader2285.preheader, %middle.block4467
  %.011.i1764.ph = phi i32 [ 0, %.preheader2285.preheader ], [ %i.aai, %middle.block4467 ]
  %.0810.i1765.ph = phi i64 [ 0, %.preheader2285.preheader ], [ %n.vec4459, %middle.block4467 ]
  br label %.preheader2285

.preheader2285:                                   ; preds = %.preheader2285.preheader4534, %.preheader2285
  %.011.i1764 = phi i32 [ %spec.select.i1766, %.preheader2285 ], [ %.011.i1764.ph, %.preheader2285.preheader4534 ]
  %.0810.i1765 = phi i64 [ %i.aam, %.preheader2285 ], [ %.0810.i1765.ph, %.preheader2285.preheader4534 ] ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.p, i64 %.0810.i1765
  %i.aak = load i8, ptr %i.aaj, align 1, !tbaa !27
  %i.aal = zext i8 %i.aak to i32
  %spec.select.i1766 = call i32 @llvm.umax.i32(i32 %.011.i1764, i32 %i.aal) ; 2 uses
  %i.aam = add nuw i64 %.0810.i1765, 1            ; 2 uses
  %exitcond.not.i1767 = icmp eq i64 %i.aam, %i.aaa
  br i1 %exitcond.not.i1767, label %get_max.exit1768, label %.preheader2285, !llvm.loop !51

get_max.exit1768:                                 ; preds = %.preheader2285, %middle.block4467
  %spec.select.i1766.lcssa = phi i32 [ %i.aai, %middle.block4467 ], [ %spec.select.i1766, %.preheader2285 ]
  %i.aan = icmp samesign ugt i32 %spec.select.i1766.lcssa, 1
  br i1 %i.aan, label %iter.check4489, label %.loopexit2284

iter.check4489:                                   ; preds = %get_max.exit1768
  %min.iters.check4476 = icmp ult i64 %i.aaa, 4
  br i1 %min.iters.check4476, label %.preheader2283.preheader, label %vector.scevcheck4472

vector.scevcheck4472:                             ; preds = %iter.check4489
  %i.aao = add i64 %i.aaa, -1                     ; 2 uses
  %i.aap = and i64 %i.aao, 4294967295
  %i.aaq = icmp eq i64 %i.aap, 4294967295
  %i.aar = icmp ugt i64 %i.aao, 4294967295
  %i.aas = or i1 %i.aaq, %i.aar
  br i1 %i.aas, label %.preheader2283.preheader, label %vector.main.loop.iter.check4477

vector.main.loop.iter.check4477:                  ; preds = %vector.scevcheck4472
  %min.iters.check4478 = icmp ult i64 %i.aaa, 32
  br i1 %min.iters.check4478, label %vec.epilog.ph4493, label %vector.ph4479

vector.ph4479:                                    ; preds = %vector.main.loop.iter.check4477
  %i.aat = and i64 %i.aaa, 28
  %n.vec4480 = and i64 %i.aaa, 8589934560         ; 5 uses
  %32 = trunc i64 %n.vec4480 to i32
  br label %vector.body4481

vector.body4481:                                  ; preds = %vector.body4481, %vector.ph4479
  %index4482 = phi i64 [ 0, %vector.ph4479 ], [ %index.next4485, %vector.body4481 ] ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.p, i64 %index4482 ; 3 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 16 ; 2 uses
  %wide.load4483 = load <16 x i8>, ptr %i.aau, align 16, !tbaa !27
  %wide.load4484 = load <16 x i8>, ptr %i.aav, align 16, !tbaa !27
  %i.aaw = add <16 x i8> %wide.load4483, splat (i8 -1)
  %i.aax = add <16 x i8> %wide.load4484, splat (i8 -1)
  store <16 x i8> %i.aaw, ptr %i.aau, align 16, !tbaa !27
  store <16 x i8> %i.aax, ptr %i.aav, align 16, !tbaa !27
  %index.next4485 = add nuw i64 %index4482, 32    ; 2 uses
  %i.aay = icmp eq i64 %index.next4485, %n.vec4480
  br i1 %i.aay, label %middle.block4486, label %vector.body4481, !llvm.loop !52

middle.block4486:                                 ; preds = %vector.body4481
  %cmp.n4487 = icmp eq i64 %i.aaa, %n.vec4480
  br i1 %cmp.n4487, label %.loopexit2284, label %vec.epilog.iter.check4491

vec.epilog.iter.check4491:                        ; preds = %middle.block4486
  %min.epilog.iters.check4492 = icmp eq i64 %i.aat, 0
  br i1 %min.epilog.iters.check4492, label %.preheader2283.preheader, label %vec.epilog.ph4493, !prof !47

vec.epilog.ph4493:                                ; preds = %vector.main.loop.iter.check4477, %vec.epilog.iter.check4491
  %vec.epilog.resume.val4488 = phi i64 [ %n.vec4480, %vec.epilog.iter.check4491 ], [ 0, %vector.main.loop.iter.check4477 ]
  %n.vec4494 = and i64 %i.aaa, 8589934588         ; 4 uses
  %33 = trunc i64 %n.vec4494 to i32
  br label %vec.epilog.vector.body4495

vec.epilog.vector.body4495:                       ; preds = %vec.epilog.vector.body4495, %vec.epilog.ph4493
  %index4496 = phi i64 [ %vec.epilog.resume.val4488, %vec.epilog.ph4493 ], [ %index.next4498, %vec.epilog.vector.body4495 ] ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.p, i64 %index4496 ; 2 uses
  %wide.load4497 = load <4 x i8>, ptr %i.aaz, align 4, !tbaa !27
  %i.aba = add <4 x i8> %wide.load4497, splat (i8 -1)
  store <4 x i8> %i.aba, ptr %i.aaz, align 4, !tbaa !27
  %index.next4498 = add nuw i64 %index4496, 4     ; 2 uses
  %i.abb = icmp eq i64 %index.next4498, %n.vec4494
  br i1 %i.abb, label %vec.epilog.middle.block4499, label %vec.epilog.vector.body4495, !llvm.loop !53

vec.epilog.middle.block4499:                      ; preds = %vec.epilog.vector.body4495
  %cmp.n4500 = icmp eq i64 %i.aaa, %n.vec4494
  br i1 %cmp.n4500, label %.loopexit2284, label %.preheader2283.preheader

.preheader2283.preheader:                         ; preds = %vector.scevcheck4472, %iter.check4489, %vec.epilog.iter.check4491, %vec.epilog.middle.block4499
  %indvars.iv3273.ph = phi i64 [ 0, %iter.check4489 ], [ 0, %vector.scevcheck4472 ], [ %n.vec4480, %vec.epilog.iter.check4491 ], [ %n.vec4494, %vec.epilog.middle.block4499 ]
  %storemerge14732666.ph = phi i32 [ 0, %iter.check4489 ], [ 0, %vector.scevcheck4472 ], [ %32, %vec.epilog.iter.check4491 ], [ %33, %vec.epilog.middle.block4499 ]
  br label %.preheader2283

.preheader2283:                                   ; preds = %.preheader2283.preheader, %.preheader2283
  %indvars.iv3273 = phi i64 [ %35, %.preheader2283 ], [ %indvars.iv3273.ph, %.preheader2283.preheader ]
  %storemerge14732666 = phi i32 [ %34, %.preheader2283 ], [ %storemerge14732666.ph, %.preheader2283.preheader ]
  %i.abc = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv3273 ; 2 uses
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !27
  %i.abe = add i8 %i.abd, -1
  store i8 %i.abe, ptr %i.abc, align 1, !tbaa !27
  %34 = add i32 %storemerge14732666, 1            ; 2 uses
  %35 = zext i32 %34 to i64                       ; 2 uses
  %i.abf = icmp ugt i64 %i.aaa, %35
  br i1 %i.abf, label %.preheader2283, label %.loopexit2284, !llvm.loop !54

.loopexit2284:                                    ; preds = %.preheader2283, %middle.block4486, %vec.epilog.middle.block4499, %get_max.exit1768, %.loopexit2287
  %.not1474 = icmp eq i32 %.01283, 0              ; 2 uses
  br i1 %.not1474, label %bb.du, label %bb.do

bb.do:                                            ; preds = %.loopexit2284
  %i.abg = load ptr, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  %i.abh = icmp eq ptr %i.abg, null
  br i1 %i.abh, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.abi = load ptr, ptr @bio_err, align 8, !tbaa !21
  %i.abj = call i32 @BIO_puts(ptr noundef %i.abi, ptr noundef nonnull @.str.139) #14 ; 0 uses
  br label %.loopexit2228

bb.dq:                                            ; preds = %bb.do
  %i.abk = call i64 @EVP_CIPHER_get_flags(ptr noundef nonnull %i.abg) #14
  %i.abl = and i64 %i.abk, 4194304
  %.not1475 = icmp eq i64 %i.abl, 0
  br i1 %.not1475, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.abm = load ptr, ptr @bio_err, align 8, !tbaa !21
  %i.abn = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.abo = call ptr @EVP_CIPHER_get0_name(ptr noundef %i.abn) #14
  %i.abp = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.abm, ptr noundef nonnull @.str.140, ptr noundef %i.abo) #14 ; 0 uses
  br label %.loopexit2228

bb.ds:                                            ; preds = %bb.dq
  %.not1476 = icmp eq i32 %.01240, 0
  br i1 %.not1476, label %.thread2101, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.abq = load ptr, ptr @bio_err, align 8, !tbaa !21
  %i.abr = call i32 @BIO_puts(ptr noundef %i.abq, ptr noundef nonnull @.str.141) #14 ; 0 uses
  br label %.loopexit2228

bb.du:                                            ; preds = %.loopexit2284
  %.not1477 = icmp eq i32 %.01240, 0
  br i1 %.not1477, label %.thread2101, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.abs = zext nneg i32 %.01240 to i64           ; 2 uses
  %i.abt = call i32 @ASYNC_init_thread(i64 noundef %i.abs, i64 noundef %i.abs) #14 ; 2 uses
  %.not1478 = icmp eq i32 %i.abt, 0
  br i1 %.not1478, label %bb.dw, label %.thread2101

bb.dw:                                            ; preds = %bb.dv
  %i.abu = load ptr, ptr @bio_err, align 8, !tbaa !21
  %i.abv = call i32 @BIO_puts(ptr noundef %i.abu, ptr noundef nonnull @.str.142) #14 ; 0 uses
  br label %.loopexit2228

.thread2101:                                      ; preds = %bb.ds, %bb.dv, %bb.du
  %.not14772103 = phi i1 [ false, %bb.dv ], [ true, %bb.du ], [ true, %bb.ds ]
  %.01285 = phi i32 [ %i.abt, %bb.dv ], [ 0, %bb.du ], [ 0, %bb.ds ] ; 11 uses
  %i.abw = call i32 @llvm.umax.i32(i32 %.01240, i32 1) ; 22 uses
  %i.abx = zext nneg i32 %i.abw to i64            ; 17 uses
  %i.aby = call ptr @app_malloc_array(i64 noundef %i.abx, i64 noundef 21400, ptr noundef nonnull @.str.143) #14 ; 95 uses
  %i.abz = mul nuw nsw i64 %i.abx, 21400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aby, i8 0, i64 %i.abz, i1 false)
  %i.aca = load ptr, ptr @lengths, align 8, !tbaa !28
  %i.acb = zext nneg i32 %.01266 to i64
  %i.acc = getelementptr [4 x i8], ptr %i.aca, i64 %i.acb
  %i.acd = getelementptr i8, ptr %i.acc, i64 -4
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !16 ; 2 uses
  %i.acf = icmp sgt i32 %i.ace, 2147483583
  br i1 %i.acf, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %.thread2101
  %i.acg = load ptr, ptr @bio_err, align 8, !tbaa !21
  %i.ach = call i32 @BIO_puts(ptr noundef %i.acg, ptr noundef nonnull @.str.144) #14 ; 0 uses
  br label %.loopexit2228

bb.dy:                                            ; preds = %.thread2101
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.ace, i32 36)
  %i.aci = add nuw nsw i32 %spec.store.select, 64 ; 2 uses
  %i.acj = zext nneg i32 %i.aci to i64            ; 6 uses
  %i.ack = sext i32 %.01274 to i64                ; 2 uses
  %i.acl = sub nsw i32 %i.aci, %.01274
  %i.acm = zext nneg i32 %i.acl to i64            ; 2 uses
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.ec
  %indvars.iv3277 = phi i64 [ 0, %bb.dy ], [ %indvars.iv.next3278, %bb.ec ] ; 3 uses
  br i1 %.not14772103, label %bb.ec, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.acn = call ptr @ASYNC_WAIT_CTX_new() #14     ; 2 uses
  %i.aco = getelementptr inbounds nuw [21400 x i8], ptr %i.aby, i64 %indvars.iv3277
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 8
  store ptr %i.acn, ptr %i.acp, align 8, !tbaa !55
  %i.acq = icmp eq ptr %i.acn, null
  br i1 %i.acq, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.acr = load ptr, ptr @bio_err, align 8, !tbaa !21
  %i.acs = call i32 @BIO_puts(ptr noundef %i.acr, ptr noundef nonnull @.str.145) #14 ; 0 uses
  br label %.loopexit2228

bb.ec:                                            ; preds = %bb.ea, %bb.dz
  %i.act = call ptr @app_malloc(i64 noundef %i.acj, ptr noundef nonnull @.str.146) #14
  %i.acu = getelementptr inbounds nuw [21400 x i8], ptr %i.aby, i64 %indvars.iv3277 ; 10 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 32 ; 2 uses
  store ptr %i.act, ptr %i.acv, align 8, !tbaa !61
  %i.acw = call ptr @app_malloc(i64 noundef %i.acj, ptr noundef nonnull @.str.146) #14 ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acu, i64 40
  store ptr %i.acw, ptr %i.acx, align 8, !tbaa !62
  %i.acy = load ptr, ptr %i.acv, align 8, !tbaa !61
  %i.acz = getelementptr inbounds i8, ptr %i.acy, i64 %i.ack
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acu, i64 16
  store ptr %i.acz, ptr %i.ada, align 8, !tbaa !63
  %i.adb = getelementptr inbounds i8, ptr %i.acw, i64 %i.ack
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acu, i64 24
  store ptr %i.adb, ptr %i.adc, align 8, !tbaa !64
  %i.add = getelementptr inbounds nuw i8, ptr %i.acu, i64 72
  store i64 %i.acm, ptr %i.add, align 8, !tbaa !65
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acu, i64 80
  store i64 %i.acm, ptr %i.ade, align 8, !tbaa !66
  %i.adf = call ptr @app_malloc(i64 noundef 256, ptr noundef nonnull @.str.147) #14
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acu, i64 1696
  store ptr %i.adf, ptr %i.adg, align 8, !tbaa !67
  %i.adh = call ptr @app_malloc(i64 noundef 256, ptr noundef nonnull @.str.148) #14
  %i.adi = getelementptr inbounds nuw i8, ptr %i.acu, i64 1704
  store ptr %i.adh, ptr %i.adi, align 8, !tbaa !68
  %i.adj = call ptr @app_malloc(i64 noundef 1024, ptr noundef nonnull @.str.149) #14
  %i.adk = getelementptr inbounds nuw i8, ptr %i.acu, i64 1976
  store ptr %i.adj, ptr %i.adk, align 8, !tbaa !69
  %i.adl = call ptr @app_malloc(i64 noundef 1024, ptr noundef nonnull @.str.150) #14
  %i.adm = getelementptr inbounds nuw i8, ptr %i.acu, i64 1984
  store ptr %i.adl, ptr %i.adm, align 8, !tbaa !70
  %indvars.iv.next3278 = add nuw nsw i64 %indvars.iv3277, 1 ; 2 uses
  %exitcond3297.not = icmp eq i64 %indvars.iv.next3278, %i.abx
  br i1 %exitcond3297.not, label %bb.ed, label %bb.dz, !llvm.loop !71

bb.ed:                                            ; preds = %bb.ec
  %.not1480 = icmp eq i32 %.01225, 0
  br i1 %.not1480, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.adn = call fastcc i32 @do_multi(i32 noundef %.01225, i32 noundef %.01266)
  %.not1481 = icmp eq i32 %i.adn, 0
  br i1 %.not1481, label %bb.ef, label %.loopexit2231

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.b1464.pre3549 = load i1, ptr @domlock, align 4
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ei
  %.b1464 = phi i1 [ %.b1464.pre3549, %bb.ef ], [ %.b14643550, %bb.ei ]
  %indvars.iv3298 = phi i64 [ 0, %bb.ef ], [ %indvars.iv.next3299, %bb.ei ] ; 3 uses
  br i1 %.b1464, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.ado = getelementptr inbounds nuw [21400 x i8], ptr %i.aby, i64 %indvars.iv3298
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 32 ; 2 uses
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !61
  %i.adr = call i32 @mlock(ptr noundef %i.adq, i64 noundef %i.acj) #14 ; 0 uses
  %i.ads = load ptr, ptr %i.adp, align 8, !tbaa !61
  %i.adt = call i32 @mlock(ptr noundef %i.ads, i64 noundef %i.acj) #14 ; 0 uses
  %.b1464.pre = load i1, ptr @domlock, align 4
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.b14643550 = phi i1 [ %.b1464.pre, %bb.eh ], [ false, %bb.eg ]
  %i.adu = getelementptr inbounds nuw [21400 x i8], ptr %i.aby, i64 %indvars.iv3298 ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 32
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.adw, i8 0, i64 %i.acj, i1 false)
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adu, i64 40
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ady, i8 0, i64 %i.acj, i1 false)
  %indvars.iv.next3299 = add nuw nsw i64 %indvars.iv3298, 1 ; 2 uses
  %exitcond3320.not = icmp eq i64 %indvars.iv.next3299, %i.abx
  br i1 %exitcond3320.not, label %bb.ej, label %bb.eg, !llvm.loop !72

bb.ej:                                            ; preds = %bb.ei
  %i.adz = icmp ne i32 %i.kl, 0
  %i.aea = load i8, ptr %i.as, align 1
  %i.aeb = icmp ne i8 %i.aea, 0
  %or.cond4 = select i1 %i.adz, i1 true, i1 %i.aeb
  %i.aec = load i8, ptr %i.ar, align 1            ; 2 uses
  %i.aed = icmp ne i8 %i.aec, 0
  %or.cond7 = select i1 %or.cond4, i1 true, i1 %i.aed
  %i.aee = load i8, ptr %i.aq, align 4
  %i.aef = icmp ne i8 %i.aee, 0
  %or.cond10 = select i1 %or.cond7, i1 true, i1 %i.aef
  %i.aeg = icmp ne i8 %.21198.lcssa, 0
  %or.cond12 = select i1 %or.cond10, i1 true, i1 %i.aeg
  %i.aeh = icmp ne i8 %.21192.lcssa, 0
  %or.cond14 = select i1 %or.cond12, i1 true, i1 %i.aeh
  br i1 %or.cond14, label %bb.ex, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %i.f, i8 1, i64 31, i1 false)
  store i8 0, ptr %i.aq, align 4, !tbaa !27
  store i8 0, ptr %i.as, align 1, !tbaa !27
  %i.aei = call i32 @ERR_set_mark() #14           ; 0 uses
  br label %bb.el

end_hunk_0
