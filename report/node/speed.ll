Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/speed?download=true
inline.NumInlined: 230
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@speed_main:bb.a
bb.gd:                                            ; preds = %bb.gc
  %i.uw = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(13) @.str.426) #14
  %i.ux = icmp eq i32 %i.uw, 0
  br i1 %i.ux, label %bb.gg, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.uy = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(11) @.str.427) #14
  %i.uz = icmp eq i32 %i.uy, 0
  br i1 %i.uz, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.va = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.428) #14
  %i.vb = icmp eq i32 %i.va, 0
  br i1 %i.vb, label %bb.gg, label %opt_found.exit1926.thread

bb.gg:                                            ; preds = %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi
  %.0911.i1923.lcssa = phi ptr [ @ecdh_choices, %bb.fi ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 16), %bb.fj ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 32), %bb.fk ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 48), %bb.fl ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 64), %bb.fm ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 80), %bb.fn ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 96), %bb.fo ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 112), %bb.fp ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 128), %bb.fq ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 144), %bb.fr ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 160), %bb.fs ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 176), %bb.ft ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 192), %bb.fu ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 208), %bb.fv ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 224), %bb.fw ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 240), %bb.fx ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 256), %bb.fy ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 272), %bb.fz ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 288), %bb.ga ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 304), %bb.gb ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 320), %bb.gc ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 336), %bb.gd ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 352), %bb.ge ], [ getelementptr inbounds nuw (i8, ptr @ecdh_choices, i64 368), %bb.gf ]
  %i.vc = getelementptr inbounds nuw i8, ptr %.0911.i1923.lcssa, i64 8
  %i.vd = load i32, ptr %i.vc, align 8, !tbaa !160
  %i.ve = zext i32 %i.vd to i64
  %i.vf = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ve
  store i8 2, ptr %i.vf, align 1, !tbaa !28
  br label %opt_found.exit1926.thread

opt_found.exit1926.thread:                        ; preds = %bb.gf, %bb.gg, %opt_found.exit1921.thread
  %.15 = phi i32 [ 1, %bb.gg ], [ %.13, %opt_found.exit1921.thread ], [ %.14, %bb.gf ]
  %i.vg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(6) @.str.136) #14
  %i.vh = icmp eq i32 %i.vg, 0
  br i1 %i.vh, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %opt_found.exit1926.thread
  store i16 257, ptr %i.o, align 2
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %opt_found.exit1926.thread
  %.16 = phi i32 [ 1, %bb.gh ], [ %.15, %opt_found.exit1926.thread ]
  %i.vi = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(8) @.str.430) #14
  %i.vj = icmp eq i32 %i.vi, 0
  br i1 %i.vj, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.vk = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(6) @.str.431) #14
  %i.vl = icmp eq i32 %i.vk, 0
  br i1 %i.vl, label %bb.gk, label %opt_found.exit1931.thread

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %.0911.i1928.lcssa = phi ptr [ @eddsa_choices, %bb.gi ], [ getelementptr inbounds nuw (i8, ptr @eddsa_choices, i64 16), %bb.gj ]
  %i.vm = getelementptr inbounds nuw i8, ptr %.0911.i1928.lcssa, i64 8
  %i.vn = load i32, ptr %i.vm, align 8, !tbaa !160
  %i.vo = zext i32 %i.vn to i64
  %i.vp = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.vo
  store i8 2, ptr %i.vp, align 1, !tbaa !28
  br label %opt_found.exit1931.thread

opt_found.exit1931.thread:                        ; preds = %bb.gj, %bb.gk
  %.17 = phi i32 [ 1, %bb.gk ], [ %.16, %bb.gj ]
  %i.vq = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(9) @.str.433) #14
  %i.vr = icmp eq i32 %i.vq, 0
  br i1 %i.vr, label %opt_found.exit1936.thread, label %bb.gl

bb.gl:                                            ; preds = %opt_found.exit1931.thread
  %i.vs = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(4) @.str.137) #14
  %i.vt = icmp eq i32 %i.vs, 0                    ; 2 uses
  %spec.select2449 = select i1 %i.vt, i32 1, i32 %.17
  %spec.select2448 = select i1 %i.vt, i8 1, i8 %.sroa.0.02985
  br label %opt_found.exit1936.thread

opt_found.exit1936.thread:                        ; preds = %bb.gl, %opt_found.exit1931.thread
  %.sroa.0.2 = phi i8 [ %spec.select2448, %bb.gl ], [ 2, %opt_found.exit1931.thread ] ; 2 uses
  %.19 = phi i32 [ %spec.select2449, %bb.gl ], [ 1, %opt_found.exit1931.thread ] ; 2 uses
  br i1 %.not.i1937, label %kem_locate.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %opt_found.exit1936.thread, %bb.gm
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.gm ], [ 0, %opt_found.exit1936.thread ] ; 3 uses
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr @kems_algname, i64 %indvars.iv.i
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !27
  %i.vw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.vv, ptr noundef nonnull readonly dereferenceable(1) %i.lb) #14
  %i.vx = icmp eq i32 %i.vw, 0
  br i1 %i.vx, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.kx
  br i1 %exitcond.not, label %kem_locate.exit.thread, label %.lr.ph.i, !llvm.loop !62

bb.gn:                                            ; preds = %.lr.ph.i
  %i.vy = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.i ; 2 uses
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !28
  %i.wa = add i8 %i.vz, 1
  store i8 %i.wa, ptr %i.vy, align 1, !tbaa !28
  br label %kem_locate.exit.thread

kem_locate.exit.thread:                           ; preds = %bb.gm, %opt_found.exit1936.thread, %bb.gn
  %.31352 = phi i8 [ 1, %bb.gn ], [ %.213512987, %opt_found.exit1936.thread ], [ %.213512987, %bb.gm ] ; 2 uses
  %.20 = phi i32 [ 1, %bb.gn ], [ %.19, %opt_found.exit1936.thread ], [ %.19, %bb.gm ] ; 2 uses
  br i1 %.not.i1938, label %sig_locate.exit.thread, label %.lr.ph.i1939

.lr.ph.i1939:                                     ; preds = %kem_locate.exit.thread, %bb.go
  %indvars.iv.i1940 = phi i64 [ %indvars.iv.next.i1941, %bb.go ], [ 0, %kem_locate.exit.thread ] ; 3 uses
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr @sigs_algname, i64 %indvars.iv.i1940
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !27
  %i.wd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.wc, ptr noundef nonnull readonly dereferenceable(1) %i.lb) #14
  %i.we = icmp eq i32 %i.wd, 0
  br i1 %i.we, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %.lr.ph.i1939
  %indvars.iv.next.i1941 = add nuw i64 %indvars.iv.i1940, 1 ; 2 uses
  %exitcond3663.not = icmp eq i64 %indvars.iv.next.i1941, %i.ky
  br i1 %exitcond3663.not, label %sig_locate.exit.thread, label %.lr.ph.i1939, !llvm.loop !63

bb.gp:                                            ; preds = %.lr.ph.i1939
  %i.wf = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i1940 ; 2 uses
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !28
  %i.wh = add i8 %i.wg, 1
  store i8 %i.wh, ptr %i.wf, align 1, !tbaa !28
  br label %sig_locate.exit.thread

sig_locate.exit.thread:                           ; preds = %bb.go, %kem_locate.exit.thread, %bb.gp
  %.31346 = phi i8 [ 1, %bb.gp ], [ %.213452988, %kem_locate.exit.thread ], [ %.213452988, %bb.go ] ; 2 uses
  %.21 = phi i32 [ 1, %bb.gp ], [ %.20, %kem_locate.exit.thread ], [ %.20, %bb.go ]
  %i.wi = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(5) @.str.138) #14
  %i.wj = icmp eq i32 %i.wi, 0
  br i1 %i.wj, label %.thread, label %bb.gq

bb.gq:                                            ; preds = %sig_locate.exit.thread
  %i.wk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(5) @.str.33) #14
  %i.wl = icmp eq i32 %i.wk, 0
  br i1 %i.wl, label %.thread2329, label %bb.gr

.thread:                                          ; preds = %sig_locate.exit.thread
  store i8 1, ptr %i.kz, align 2, !tbaa !28
  store i8 1, ptr %i.la, align 1, !tbaa !28
  %i.wm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(5) @.str.33) #14
  %i.wn = icmp eq i32 %i.wm, 0
  br i1 %i.wn, label %.thread2329, label %.thread4098

.thread2329:                                      ; preds = %.thread, %bb.gq
  store i8 1, ptr %i.ar, align 4, !tbaa !28
  br label %.thread4098

bb.gr:                                            ; preds = %bb.gq
  %.not1846 = icmp eq i32 %.21, 0
  br i1 %.not1846, label %bb.gs, label %.thread4098

bb.gs:                                            ; preds = %bb.gr
  %i.wo = load ptr, ptr @bio_err, align 8, !tbaa !23
  %i.wp = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.wo, ptr noundef nonnull @.str.139, ptr noundef %i.aq, ptr noundef nonnull %i.lb) #13 ; 0 uses
  br label %.loopexit2490

.thread4098:                                      ; preds = %.thread, %bb.gr, %.thread2329
  %i.wq = getelementptr inbounds nuw i8, ptr %.014552986, i64 8 ; 2 uses
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !27 ; 2 uses
  %.not1646 = icmp eq ptr %i.wr, null
  br i1 %.not1646, label %._crit_edge2989, label %.preheader2558, !llvm.loop !64

._crit_edge2989:                                  ; preds = %.thread4098, %.preheader2559
  %.sroa.0.0.lcssa = phi i8 [ 0, %.preheader2559 ], [ %.sroa.0.2, %.thread4098 ] ; 2 uses
  %.21351.lcssa = phi i8 [ %.01349, %.preheader2559 ], [ %.31352, %.thread4098 ] ; 3 uses
  %.21345.lcssa = phi i8 [ %.01343, %.preheader2559 ], [ %.31346, %.thread4098 ] ; 3 uses
  %.b1641 = load i1, ptr @aead, align 4
  br i1 %.b1641, label %bb.gt, label %bb.gx

bb.gt:                                            ; preds = %._crit_edge2989
  %i.ws = load ptr, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.wt = icmp eq ptr %i.ws, null
  br i1 %i.wt, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.wu = load ptr, ptr @bio_err, align 8, !tbaa !23
  %i.wv = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.wu, ptr noundef nonnull @.str.140) #13 ; 0 uses
  br label %.loopexit2490

bb.gv:                                            ; preds = %bb.gt
  %i.ww = call i64 @EVP_CIPHER_get_flags(ptr noundef nonnull %i.ws) #13
  %i.wx = and i64 %i.ww, 2097152
  %.not1647 = icmp eq i64 %i.wx, 0
  br i1 %.not1647, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.wy = load ptr, ptr @bio_err, align 8, !tbaa !23
  %i.wz = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.xa = call ptr @EVP_CIPHER_get0_name(ptr noundef %i.wz) #13
  %i.xb = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.wy, ptr noundef nonnull @.str.141, ptr noundef %i.xa) #13 ; 0 uses
  br label %.loopexit2490

bb.gx:                                            ; preds = %bb.gv, %._crit_edge2989
  %i.xc = load i64, ptr @kems_algs_len, align 8, !tbaa !32 ; 13 uses
  %.not1648 = icmp eq i64 %i.xc, 0
  br i1 %.not1648, label %.loopexit2556, label %.preheader2557.preheader

.preheader2557.preheader:                         ; preds = %bb.gx
  %min.iters.check = icmp ult i64 %i.xc, 8
  br i1 %min.iters.check, label %.preheader2557.preheader5016, label %vector.ph

vector.ph:                                        ; preds = %.preheader2557.preheader
  %n.vec = and i64 %i.xc, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i8> [ zeroinitializer, %vector.ph ], [ %26, %vector.body ]
  %vec.phi4916 = phi <4 x i8> [ zeroinitializer, %vector.ph ], [ %27, %vector.body ]
  %i.xd = getelementptr inbounds nuw i8, ptr %i.p, i64 %index ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 4
  %wide.load = load <4 x i8>, ptr %i.xd, align 8, !tbaa !28
  %wide.load4917 = load <4 x i8>, ptr %i.xe, align 4, !tbaa !28
  %26 = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %vec.phi, <4 x i8> %wide.load) ; 2 uses
  %27 = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %vec.phi4916, <4 x i8> %wide.load4917) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.xf = icmp eq i64 %index.next, %n.vec
  br i1 %i.xf, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %26, <4 x i8> %27)
  %28 = call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %rdx.minmax)
  %29 = zext i8 %28 to i32                        ; 2 uses
  %cmp.n = icmp eq i64 %i.xc, %n.vec
  br i1 %cmp.n, label %get_max.exit, label %.preheader2557.preheader5016

.preheader2557.preheader5016:                     ; preds = %.preheader2557.preheader, %middle.block
  %.011.i.ph = phi i32 [ 0, %.preheader2557.preheader ], [ %29, %middle.block ]
  %.0810.i.ph = phi i64 [ 0, %.preheader2557.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader2557

.preheader2557:                                   ; preds = %.preheader2557.preheader5016, %.preheader2557
  %.011.i = phi i32 [ %spec.select.i1943, %.preheader2557 ], [ %.011.i.ph, %.preheader2557.preheader5016 ]
  %.0810.i = phi i64 [ %i.xj, %.preheader2557 ], [ %.0810.i.ph, %.preheader2557.preheader5016 ] ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.p, i64 %.0810.i
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !28
  %i.xi = zext i8 %i.xh to i32
  %spec.select.i1943 = call i32 @llvm.umax.i32(i32 %.011.i, i32 %i.xi) ; 2 uses
  %i.xj = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond.not.i1944 = icmp eq i64 %i.xj, %i.xc
  br i1 %exitcond.not.i1944, label %get_max.exit, label %.preheader2557, !llvm.loop !66

get_max.exit:                                     ; preds = %.preheader2557, %middle.block
  %spec.select.i1943.lcssa = phi i32 [ %29, %middle.block ], [ %spec.select.i1943, %.preheader2557 ]
  %i.xk = icmp samesign ugt i32 %spec.select.i1943.lcssa, 1
  br i1 %i.xk, label %iter.check, label %.loopexit2556

iter.check:                                       ; preds = %get_max.exit
  %min.iters.check4919 = icmp ult i64 %i.xc, 4
  br i1 %min.iters.check4919, label %.lr.ph2993.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check4920 = icmp ult i64 %i.xc, 32
  br i1 %min.iters.check4920, label %vec.epilog.ph, label %vector.ph4921

vector.ph4921:                                    ; preds = %vector.main.loop.iter.check
  %i.xl = and i64 %i.xc, 28
  %n.vec4922 = and i64 %i.xc, -32                 ; 4 uses
  br label %vector.body4923

vector.body4923:                                  ; preds = %vector.body4923, %vector.ph4921
  %index4924 = phi i64 [ 0, %vector.ph4921 ], [ %index.next4927, %vector.body4923 ] ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.p, i64 %index4924 ; 3 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 16 ; 2 uses
  %wide.load4925 = load <16 x i8>, ptr %i.xm, align 16, !tbaa !28
  %wide.load4926 = load <16 x i8>, ptr %i.xn, align 16, !tbaa !28
  %i.xo = add <16 x i8> %wide.load4925, splat (i8 -1)
  %i.xp = add <16 x i8> %wide.load4926, splat (i8 -1)
  store <16 x i8> %i.xo, ptr %i.xm, align 16, !tbaa !28
  store <16 x i8> %i.xp, ptr %i.xn, align 16, !tbaa !28
  %index.next4927 = add nuw i64 %index4924, 32    ; 2 uses
  %i.xq = icmp eq i64 %index.next4927, %n.vec4922
  br i1 %i.xq, label %middle.block4928, label %vector.body4923, !llvm.loop !67

middle.block4928:                                 ; preds = %vector.body4923
  %cmp.n4929 = icmp eq i64 %i.xc, %n.vec4922
  br i1 %cmp.n4929, label %.loopexit2556, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block4928
  %min.epilog.iters.check = icmp eq i64 %i.xl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph2993.preheader, label %vec.epilog.ph, !prof !163

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec4922, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4930 = and i64 %i.xc, -4                  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index4931 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next4933, %vec.epilog.vector.body ] ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.p, i64 %index4931 ; 2 uses
  %wide.load4932 = load <4 x i8>, ptr %i.xr, align 4, !tbaa !28
  %i.xs = add <4 x i8> %wide.load4932, splat (i8 -1)
  store <4 x i8> %i.xs, ptr %i.xr, align 4, !tbaa !28
  %index.next4933 = add nuw i64 %index4931, 4     ; 2 uses
  %i.xt = icmp eq i64 %index.next4933, %n.vec4930
  br i1 %i.xt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !68

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n4934 = icmp eq i64 %i.xc, %n.vec4930
  br i1 %cmp.n4934, label %.loopexit2556, label %.lr.ph2993.preheader

.lr.ph2993.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec4922, %vec.epilog.iter.check ], [ %n.vec4930, %vec.epilog.middle.block ]
  br label %.lr.ph2993

.lr.ph2993:                                       ; preds = %.lr.ph2993.preheader, %.lr.ph2993
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph2993 ], [ %indvars.iv.ph, %.lr.ph2993.preheader ] ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !28
  %i.xw = add i8 %i.xv, -1
  store i8 %i.xw, ptr %i.xu, align 1, !tbaa !28
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond3665.not = icmp eq i64 %indvars.iv.next, %i.xc
  br i1 %exitcond3665.not, label %.loopexit2556, label %.lr.ph2993, !llvm.loop !69

.loopexit2556:                                    ; preds = %.lr.ph2993, %middle.block4928, %vec.epilog.middle.block, %get_max.exit, %bb.gx
  %i.xx = load i64, ptr @sigs_algs_len, align 8, !tbaa !32 ; 13 uses
  %.not1650 = icmp eq i64 %i.xx, 0
  br i1 %.not1650, label %.loopexit2553, label %.preheader2554.preheader

.preheader2554.preheader:                         ; preds = %.loopexit2556
  %min.iters.check4937 = icmp ult i64 %i.xx, 8
  br i1 %min.iters.check4937, label %.preheader2554.preheader5012, label %vector.ph4938

vector.ph4938:                                    ; preds = %.preheader2554.preheader
  %n.vec4939 = and i64 %i.xx, -8                  ; 3 uses
  br label %vector.body4940

vector.body4940:                                  ; preds = %vector.body4940, %vector.ph4938
  %index4941 = phi i64 [ 0, %vector.ph4938 ], [ %index.next4946, %vector.body4940 ] ; 2 uses
  %vec.phi4942 = phi <4 x i8> [ zeroinitializer, %vector.ph4938 ], [ %30, %vector.body4940 ]
  %vec.phi4943 = phi <4 x i8> [ zeroinitializer, %vector.ph4938 ], [ %31, %vector.body4940 ]
  %i.xy = getelementptr inbounds nuw i8, ptr %i.q, i64 %index4941 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 4
  %wide.load4944 = load <4 x i8>, ptr %i.xy, align 8, !tbaa !28
  %wide.load4945 = load <4 x i8>, ptr %i.xz, align 4, !tbaa !28
  %30 = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %vec.phi4942, <4 x i8> %wide.load4944) ; 2 uses
  %31 = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %vec.phi4943, <4 x i8> %wide.load4945) ; 2 uses
  %index.next4946 = add nuw i64 %index4941, 8     ; 2 uses
  %i.ya = icmp eq i64 %index.next4946, %n.vec4939
  br i1 %i.ya, label %middle.block4947, label %vector.body4940, !llvm.loop !70

middle.block4947:                                 ; preds = %vector.body4940
  %rdx.minmax4948 = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %30, <4 x i8> %31)
  %32 = call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %rdx.minmax4948)
  %33 = zext i8 %32 to i32                        ; 2 uses
  %cmp.n4949 = icmp eq i64 %i.xx, %n.vec4939
  br i1 %cmp.n4949, label %get_max.exit1949, label %.preheader2554.preheader5012

.preheader2554.preheader5012:                     ; preds = %.preheader2554.preheader, %middle.block4947
  %.011.i1945.ph = phi i32 [ 0, %.preheader2554.preheader ], [ %33, %middle.block4947 ]
  %.0810.i1946.ph = phi i64 [ 0, %.preheader2554.preheader ], [ %n.vec4939, %middle.block4947 ]
  br label %.preheader2554

.preheader2554:                                   ; preds = %.preheader2554.preheader5012, %.preheader2554
  %.011.i1945 = phi i32 [ %spec.select.i1947, %.preheader2554 ], [ %.011.i1945.ph, %.preheader2554.preheader5012 ]
  %.0810.i1946 = phi i64 [ %i.ye, %.preheader2554 ], [ %.0810.i1946.ph, %.preheader2554.preheader5012 ] ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0810.i1946
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !28
  %i.yd = zext i8 %i.yc to i32
  %spec.select.i1947 = call i32 @llvm.umax.i32(i32 %.011.i1945, i32 %i.yd) ; 2 uses
  %i.ye = add nuw nsw i64 %.0810.i1946, 1         ; 2 uses
  %exitcond.not.i1948 = icmp eq i64 %i.ye, %i.xx
  br i1 %exitcond.not.i1948, label %get_max.exit1949, label %.preheader2554, !llvm.loop !71

get_max.exit1949:                                 ; preds = %.preheader2554, %middle.block4947
  %spec.select.i1947.lcssa = phi i32 [ %33, %middle.block4947 ], [ %spec.select.i1947, %.preheader2554 ]
  %i.yf = icmp samesign ugt i32 %spec.select.i1947.lcssa, 1
  br i1 %i.yf, label %iter.check4966, label %.loopexit2553

iter.check4966:                                   ; preds = %get_max.exit1949
  %min.iters.check4953 = icmp ult i64 %i.xx, 4
  br i1 %min.iters.check4953, label %.lr.ph2995.preheader, label %vector.main.loop.iter.check4954

vector.main.loop.iter.check4954:                  ; preds = %iter.check4966
  %min.iters.check4955 = icmp ult i64 %i.xx, 32
  br i1 %min.iters.check4955, label %vec.epilog.ph4970, label %vector.ph4956

vector.ph4956:                                    ; preds = %vector.main.loop.iter.check4954
  %i.yg = and i64 %i.xx, 28
  %n.vec4957 = and i64 %i.xx, -32                 ; 4 uses
  br label %vector.body4958

vector.body4958:                                  ; preds = %vector.body4958, %vector.ph4956
  %index4959 = phi i64 [ 0, %vector.ph4956 ], [ %index.next4962, %vector.body4958 ] ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.q, i64 %index4959 ; 3 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 16 ; 2 uses
  %wide.load4960 = load <16 x i8>, ptr %i.yh, align 16, !tbaa !28
  %wide.load4961 = load <16 x i8>, ptr %i.yi, align 16, !tbaa !28
  %i.yj = add <16 x i8> %wide.load4960, splat (i8 -1)
  %i.yk = add <16 x i8> %wide.load4961, splat (i8 -1)
  store <16 x i8> %i.yj, ptr %i.yh, align 16, !tbaa !28
  store <16 x i8> %i.yk, ptr %i.yi, align 16, !tbaa !28
  %index.next4962 = add nuw i64 %index4959, 32    ; 2 uses
  %i.yl = icmp eq i64 %index.next4962, %n.vec4957
  br i1 %i.yl, label %middle.block4963, label %vector.body4958, !llvm.loop !72

middle.block4963:                                 ; preds = %vector.body4958
  %cmp.n4964 = icmp eq i64 %i.xx, %n.vec4957
  br i1 %cmp.n4964, label %.loopexit2553, label %vec.epilog.iter.check4968

vec.epilog.iter.check4968:                        ; preds = %middle.block4963
  %min.epilog.iters.check4969 = icmp eq i64 %i.yg, 0
  br i1 %min.epilog.iters.check4969, label %.lr.ph2995.preheader, label %vec.epilog.ph4970, !prof !163

vec.epilog.ph4970:                                ; preds = %vector.main.loop.iter.check4954, %vec.epilog.iter.check4968
  %vec.epilog.resume.val4965 = phi i64 [ %n.vec4957, %vec.epilog.iter.check4968 ], [ 0, %vector.main.loop.iter.check4954 ]
  %n.vec4971 = and i64 %i.xx, -4                  ; 3 uses
  br label %vec.epilog.vector.body4972

vec.epilog.vector.body4972:                       ; preds = %vec.epilog.vector.body4972, %vec.epilog.ph4970
  %index4973 = phi i64 [ %vec.epilog.resume.val4965, %vec.epilog.ph4970 ], [ %index.next4975, %vec.epilog.vector.body4972 ] ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.q, i64 %index4973 ; 2 uses
  %wide.load4974 = load <4 x i8>, ptr %i.ym, align 4, !tbaa !28
  %i.yn = add <4 x i8> %wide.load4974, splat (i8 -1)
  store <4 x i8> %i.yn, ptr %i.ym, align 4, !tbaa !28
  %index.next4975 = add nuw i64 %index4973, 4     ; 2 uses
  %i.yo = icmp eq i64 %index.next4975, %n.vec4971
  br i1 %i.yo, label %vec.epilog.middle.block4976, label %vec.epilog.vector.body4972, !llvm.loop !73

vec.epilog.middle.block4976:                      ; preds = %vec.epilog.vector.body4972
  %cmp.n4977 = icmp eq i64 %i.xx, %n.vec4971
  br i1 %cmp.n4977, label %.loopexit2553, label %.lr.ph2995.preheader

.lr.ph2995.preheader:                             ; preds = %iter.check4966, %vec.epilog.iter.check4968, %vec.epilog.middle.block4976
  %indvars.iv3666.ph = phi i64 [ 0, %iter.check4966 ], [ %n.vec4957, %vec.epilog.iter.check4968 ], [ %n.vec4971, %vec.epilog.middle.block4976 ]
  br label %.lr.ph2995

.lr.ph2995:                                       ; preds = %.lr.ph2995.preheader, %.lr.ph2995
  %indvars.iv3666 = phi i64 [ %indvars.iv.next3667, %.lr.ph2995 ], [ %indvars.iv3666.ph, %.lr.ph2995.preheader ] ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv3666 ; 2 uses
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !28
  %i.yr = add i8 %i.yq, -1
  store i8 %i.yr, ptr %i.yp, align 1, !tbaa !28
  %indvars.iv.next3667 = add nuw i64 %indvars.iv3666, 1 ; 2 uses
  %exitcond3669.not = icmp eq i64 %indvars.iv.next3667, %i.xx
  br i1 %exitcond3669.not, label %.loopexit2553, label %.lr.ph2995, !llvm.loop !74

.loopexit2553:                                    ; preds = %.lr.ph2995, %middle.block4963, %vec.epilog.middle.block4976, %get_max.exit1949, %.loopexit2556
  %.not1652 = icmp eq i32 %.01443, 0              ; 2 uses
  br i1 %.not1652, label %bb.he, label %bb.gy

bb.gy:                                            ; preds = %.loopexit2553
  %i.ys = load ptr, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.yt = icmp eq ptr %i.ys, null
  br i1 %i.yt, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.yu = load ptr, ptr @bio_err, align 8, !tbaa !23
  %i.yv = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.yu, ptr noundef nonnull @.str.142) #13 ; 0 uses
  br label %.loopexit2490

bb.ha:                                            ; preds = %bb.gy
  %i.yw = call i64 @EVP_CIPHER_get_flags(ptr noundef nonnull %i.ys) #13
  %i.yx = and i64 %i.yw, 4194304
  %.not1653 = icmp eq i64 %i.yx, 0
  br i1 %.not1653, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.yy = load ptr, ptr @bio_err, align 8, !tbaa !23
  %i.yz = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.za = call ptr @EVP_CIPHER_get0_name(ptr noundef %i.yz) #13
  %i.zb = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.yy, ptr noundef nonnull @.str.143, ptr noundef %i.za) #13 ; 0 uses
  br label %.loopexit2490

bb.hc:                                            ; preds = %bb.ha
  %.not1654 = icmp eq i32 %.01396, 0
  br i1 %.not1654, label %.thread2335, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.zc = load ptr, ptr @bio_err, align 8, !tbaa !23
  %i.zd = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.zc, ptr noundef nonnull @.str.144) #13 ; 0 uses
  br label %.loopexit2490

bb.he:                                            ; preds = %.loopexit2553
  %.not1655 = icmp eq i32 %.01396, 0
  br i1 %.not1655, label %.thread2335, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.ze = zext nneg i32 %.01396 to i64            ; 2 uses
  %i.zf = call i32 @ASYNC_init_thread(i64 noundef %i.ze, i64 noundef %i.ze) #13 ; 2 uses
  %.not1656 = icmp eq i32 %i.zf, 0
  br i1 %.not1656, label %bb.hg, label %.thread2335

bb.hg:                                            ; preds = %bb.hf
  %i.zg = load ptr, ptr @bio_err, align 8, !tbaa !23
  %i.zh = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.zg, ptr noundef nonnull @.str.145) #13 ; 0 uses
  br label %.loopexit2490

.thread2335:                                      ; preds = %bb.hc, %bb.hf, %bb.he
  %.not16552337 = phi i1 [ false, %bb.hf ], [ true, %bb.he ], [ true, %bb.hc ]
  %.01445 = phi i32 [ %i.zf, %bb.hf ], [ 0, %bb.he ], [ 0, %bb.hc ] ; 11 uses
  %i.zi = call i32 @llvm.umax.i32(i32 %.01396, i32 1) ; 22 uses
  %i.zj = zext nneg i32 %i.zi to i64              ; 22 uses
  %i.zk = mul nuw nsw i64 %i.zj, 20624            ; 2 uses
  %i.zl = call ptr @app_malloc(i64 noundef %i.zk, ptr noundef nonnull @.str.146) #13 ; 103 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.zl, i8 0, i64 %i.zk, i1 false)
  %i.zm = load ptr, ptr @lengths, align 8, !tbaa !30
  %i.zn = zext nneg i32 %.01426 to i64
  %i.zo = getelementptr [4 x i8], ptr %i.zm, i64 %i.zn
  %i.zp = getelementptr i8, ptr %i.zo, i64 -4
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !18 ; 2 uses
  %i.zr = icmp sgt i32 %i.zq, 2147483583
  br i1 %i.zr, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %.thread2335
  %i.zs = load ptr, ptr @bio_err, align 8, !tbaa !23
  %i.zt = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.zs, ptr noundef nonnull @.str.147) #13 ; 0 uses
  br label %.loopexit2490

bb.hi:                                            ; preds = %.thread2335
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.zq, i32 36)
  %i.zu = add nuw nsw i32 %spec.store.select, 64  ; 2 uses
  %i.zv = zext nneg i32 %i.zu to i64              ; 6 uses
  %i.zw = sext i32 %.01434 to i64                 ; 2 uses
  %i.zx = sub nsw i32 %i.zu, %.01434
  %i.zy = zext nneg i32 %i.zx to i64              ; 2 uses
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hm
  %indvars.iv3670 = phi i64 [ 0, %bb.hi ], [ %indvars.iv.next3671, %bb.hm ] ; 3 uses
  br i1 %.not16552337, label %bb.hm, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.zz = call ptr @ASYNC_WAIT_CTX_new() #13      ; 2 uses
  %i.aaa = getelementptr inbounds nuw [20624 x i8], ptr %i.zl, i64 %indvars.iv3670
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  store ptr %i.zz, ptr %i.aab, align 8, !tbaa !38
  %i.aac = icmp eq ptr %i.zz, null
  br i1 %i.aac, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.aad = load ptr, ptr @bio_err, align 8, !tbaa !23
  %i.aae = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.aad, ptr noundef nonnull @.str.148) #13 ; 0 uses
  br label %.loopexit2490

bb.hm:                                            ; preds = %bb.hk, %bb.hj
  %i.aaf = call ptr @app_malloc(i64 noundef %i.zv, ptr noundef nonnull @.str.149) #13
  %i.aag = getelementptr inbounds nuw [20624 x i8], ptr %i.zl, i64 %indvars.iv3670 ; 10 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 32 ; 2 uses
  store ptr %i.aaf, ptr %i.aah, align 8, !tbaa !164
  %i.aai = call ptr @app_malloc(i64 noundef %i.zv, ptr noundef nonnull @.str.149) #13 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aag, i64 40
  store ptr %i.aai, ptr %i.aaj, align 8, !tbaa !165
  %i.aak = load ptr, ptr %i.aah, align 8, !tbaa !164
  %i.aal = getelementptr inbounds i8, ptr %i.aak, i64 %i.zw
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aag, i64 16
  store ptr %i.aal, ptr %i.aam, align 8, !tbaa !39
  %i.aan = getelementptr inbounds i8, ptr %i.aai, i64 %i.zw
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aag, i64 24
  store ptr %i.aan, ptr %i.aao, align 8, !tbaa !40
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aag, i64 72
  store i64 %i.zy, ptr %i.aap, align 8, !tbaa !41
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aag, i64 80
  store i64 %i.zy, ptr %i.aaq, align 8, !tbaa !42
  %i.aar = call ptr @app_malloc(i64 noundef 256, ptr noundef nonnull @.str.150) #13
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aag, i64 952
  store ptr %i.aar, ptr %i.aas, align 8, !tbaa !43
  %i.aat = call ptr @app_malloc(i64 noundef 256, ptr noundef nonnull @.str.151) #13
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aag, i64 960
  store ptr %i.aat, ptr %i.aau, align 8, !tbaa !166
  %i.aav = call ptr @app_malloc(i64 noundef 1024, ptr noundef nonnull @.str.152) #13
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aag, i64 1200
  store ptr %i.aav, ptr %i.aaw, align 8, !tbaa !44
  %i.aax = call ptr @app_malloc(i64 noundef 1024, ptr noundef nonnull @.str.153) #13
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aag, i64 1208
  store ptr %i.aax, ptr %i.aay, align 8, !tbaa !167
end_hunk_0
begin_hunk_1_@EVP_Digest_loop:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.e = call i32 @EVP_MD_xof(ptr noundef %i.d) #13
  %.not22 = icmp eq i32 %i.e, 0
  br i1 %.not22, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.f = load volatile i32, ptr @run, align 4, !tbaa !18
  %.not2314 = icmp eq i32 %i.f, 0
  br i1 %.not2314, label %.critedge, label %.lr.ph16

bb.c:                                             ; preds = %bb.b
  %i.g = call ptr @EVP_MD_CTX_new() #13           ; 10 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.critedge, label %.preheader1

.preheader1:                                      ; preds = %bb.c
  %i.i = load volatile i32, ptr @run, align 4, !tbaa !18
  %.not254 = icmp eq i32 %i.i, 0
  br i1 %.not254, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1, %bb.g
  %.0175 = phi i32 [ %i.v, %bb.g ], [ 0, %.preheader1 ] ; 3 uses
  %.b21 = load i1, ptr @testmode, align 4
  %i.j = select i1 %.b21, i32 1, i32 2147483647
  %i.k = icmp samesign ult i32 %.0175, %i.j
  br i1 %i.k, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.m = call i32 @EVP_DigestInit_ex2(ptr noundef nonnull %i.g, ptr noundef %i.l, ptr noundef null) #13
  %.not26 = icmp eq i32 %i.m, 0
  br i1 %.not26, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr @lengths, align 8, !tbaa !30
  %i.o = load i32, ptr @testnum, align 4, !tbaa !18
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !18
  %i.s = sext i32 %i.r to i64
  %i.t = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.g, ptr noundef %.0.val.16.val, i64 noundef %i.s) #13
  %.not27 = icmp eq i32 %i.t, 0
  br i1 %.not27, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = call i32 @EVP_DigestFinalXOF(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, i64 noundef 64) #13
  %.not28 = icmp eq i32 %i.u, 0
  br i1 %.not28, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nuw nsw i32 %.0175, 1                ; 2 uses
  %i.w = load volatile i32, ptr @run, align 4, !tbaa !18
  %.not25 = icmp eq i32 %i.w, 0
  br i1 %.not25, label %.critedge, label %.lr.ph, !llvm.loop !237

.lr.ph16:                                         ; preds = %.preheader, %bb.i
  %.115 = phi i32 [ %i.ah, %bb.i ], [ 0, %.preheader ] ; 3 uses
  %.b = load i1, ptr @testmode, align 4
  %i.x = select i1 %.b, i32 1, i32 2147483647
  %i.y = icmp samesign ult i32 %.115, %i.x
  br i1 %i.y, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.lr.ph16
  %i.z = load ptr, ptr @lengths, align 8, !tbaa !30
  %i.aa = load i32, ptr @testnum, align 4, !tbaa !18
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !18
  %i.ae = sext i32 %i.ad to i64
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.ag = call i32 @EVP_Digest(ptr noundef %.0.val.16.val, i64 noundef %i.ae, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef %i.af, ptr noundef null) #13
  %.not24 = icmp eq i32 %i.ag, 0
  br i1 %.not24, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add nuw nsw i32 %.115, 1                ; 2 uses
  %i.ai = load volatile i32, ptr @run, align 4, !tbaa !18
  %.not23 = icmp eq i32 %i.ai, 0
  br i1 %.not23, label %.critedge, label %.lr.ph16, !llvm.loop !238

.critedge:                                        ; preds = %.lr.ph, %bb.g, %bb.f, %bb.e, %bb.d, %.lr.ph16, %bb.i, %bb.h, %.preheader1, %.preheader, %bb.c
  %.2 = phi i32 [ 0, %.preheader1 ], [ -1, %bb.c ], [ -1, %bb.h ], [ 0, %.preheader ], [ %i.ah, %bb.i ], [ %.115, %.lr.ph16 ], [ -1, %bb.e ], [ %.0175, %.lr.ph ], [ %i.v, %bb.g ], [ -1, %bb.d ], [ -1, %bb.f ]
  %.0 = phi ptr [ %i.g, %.preheader1 ], [ null, %bb.c ], [ null, %.lr.ph16 ], [ null, %.preheader ], [ null, %bb.h ], [ null, %bb.i ], [ %i.g, %bb.d ], [ %i.g, %bb.e ], [ %i.g, %bb.f ], [ %i.g, %bb.g ], [ %i.g, %.lr.ph ]
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !25
  call void @EVP_MD_free(ptr noundef %i.aj) #13
  call void @EVP_MD_CTX_free(ptr noundef %.0) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %.critedge
  %.018 = phi i32 [ %.2, %.critedge ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.018
}

declare i32 @EVP_MD_xof(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_DigestInit_ex2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinalXOF(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_Digest(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_MAC_CTX_new(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_MAC_CTX_set_params(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_MAC_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_MAC_final(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @EVP_MAC_CTX_free(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_set_key_length(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @EVP_CIPHER_CTX_get0_cipher(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_block_size(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_Cipher(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DecryptInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_DecryptUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DecryptFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @ERR_peek_last_error() local_unnamed_addr #2

declare i64 @ERR_get_error() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #9

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pipe(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #7

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @dup(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fdopen(i32 noundef, ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #7

declare i32 @wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #9

declare i32 @EVP_EncryptInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umax.v4i8(<4 x i8>, <4 x i8>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umax.v4i8(<4 x i8>) #10

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !21}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS11evp_pkey_st", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 _ZTS13evp_cipher_st", !11, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 _ZTS10evp_mac_st", !11, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!8, !8, i64 0}
!19 = !{!"p1 _ZTS15evp_pkey_ctx_st", !11, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"p1 _ZTS6bio_st", !11, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"p1 _ZTS9evp_md_st", !11, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"p1 omnipotent char", !11, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!7, !7, i64 0}
!29 = !{!"p1 int", !11, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"long", !7, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"p1 _ZTS12async_job_st", !11, i64 0}
!34 = !{!"p1 _ZTS17async_wait_ctx_st", !11, i64 0}
!35 = !{!"p1 _ZTS17evp_cipher_ctx_st", !11, i64 0}
!36 = !{!"p1 _ZTS14evp_mac_ctx_st", !11, i64 0}
!37 = !{!"loopargs_st", !33, i64 0, !34, i64 8, !26, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !7, i64 56, !31, i64 72, !31, i64 80, !31, i64 88, !7, i64 96, !7, i64 152, !7, i64 208, !7, i64 264, !7, i64 320, !7, i64 336, !7, i64 352, !7, i64 528, !7, i64 704, !7, i64 896, !7, i64 912, !7, i64 928, !7, i64 936, !7, i64 944, !26, i64 952, !26, i64 960, !7, i64 968, !7, i64 1160, !26, i64 1200, !26, i64 1208, !35, i64 1216, !36, i64 1224, !7, i64 1232, !7, i64 2120, !7, i64 3008, !7, i64 3896, !7, i64 4784, !7, i64 5672, !7, i64 6560, !7, i64 7448, !7, i64 8336, !7, i64 10384, !7, i64 12432, !7, i64 14480, !7, i64 16528, !7, i64 18576}
!38 = !{!37, !34, i64 8}
!39 = !{!37, !26, i64 16}
!40 = !{!37, !26, i64 24}
!41 = !{!37, !31, i64 72}
!42 = !{!37, !31, i64 80}
!43 = !{!37, !26, i64 952}
!44 = !{!37, !26, i64 1200}
!45 = !{!37, !35, i64 1216}
!46 = !{!"double", !7, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!37, !36, i64 1224}
!49 = !{!37, !26, i64 48}
!50 = !{!37, !31, i64 88}
!51 = !{!"ec_curve_st", !26, i64 0, !8, i64 8, !8, i64 12, !31, i64 16}
!52 = !{!"p1 _ZTS13evp_md_ctx_st", !11, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!51, !8, i64 8}
!55 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!"p1 _ZTS11loopargs_st", !11, i64 0}
!58 = !{!57, !57, i64 0}
!59 = distinct !{!59, !21}
!60 = distinct !{!60, !21}
!61 = distinct !{!61, !21}
!62 = distinct !{!62, !21}
!63 = distinct !{!63, !21}
!64 = distinct !{!64, !21}
!65 = distinct !{!65, !21, !161, !162}
!66 = distinct !{!66, !21, !162, !161}
!67 = distinct !{!67, !21, !161, !162}
!68 = distinct !{!68, !21, !161, !162}
!69 = distinct !{!69, !21, !162, !161}
!70 = distinct !{!70, !21, !161, !162}
!71 = distinct !{!71, !21, !162, !161}
!72 = distinct !{!72, !21, !161, !162}
!73 = distinct !{!73, !21, !161, !162}
!74 = distinct !{!74, !21, !162, !161}
!75 = distinct !{!75, !21}
!76 = distinct !{!76, !21}
!77 = distinct !{!77, !21}
!78 = distinct !{!78, !21}
!79 = distinct !{!79, !21}
!80 = distinct !{!80, !21}
!81 = distinct !{!81, !21}
!82 = distinct !{!82, !21}
!83 = distinct !{!83, !21}
!84 = distinct !{!84, !21}
!85 = distinct !{!85, !21}
!86 = distinct !{!86, !21}
!87 = distinct !{!87, !21}
!88 = distinct !{!88, !21}
!89 = distinct !{!89, !21}
!90 = distinct !{!90, !21}
!91 = distinct !{!91, !21}
!92 = distinct !{!92, !21}
!93 = distinct !{!93, !21}
!94 = distinct !{!94, !21}
!95 = distinct !{!95, !21}
!96 = distinct !{!96, !21}
!97 = distinct !{!97, !21}
!98 = distinct !{!98, !21}
!99 = distinct !{!99, !21}
!100 = distinct !{!100, !21}
!101 = distinct !{!101, !21}
!102 = distinct !{!102, !21}
!103 = distinct !{!103, !21}
!104 = distinct !{!104, !21}
!105 = distinct !{!105, !21}
!106 = distinct !{!106, !21}
!107 = distinct !{!107, !21}
!108 = distinct !{!108, !21}
!109 = distinct !{!109, !21}
!110 = distinct !{!110, !21}
!111 = distinct !{!111, !21}
!112 = distinct !{!112, !21}
!113 = distinct !{!113, !21}
!114 = distinct !{!114, !21}
!115 = distinct !{!115, !21}
!116 = distinct !{!116, !21}
!117 = distinct !{!117, !21}
!118 = distinct !{!118, !21}
!119 = distinct !{!119, !21}
!120 = distinct !{!120, !21}
!121 = distinct !{!121, !21}
!122 = distinct !{!122, !21}
!123 = distinct !{!123, !21}
!124 = distinct !{!124, !21}
!125 = distinct !{!125, !21}
!126 = distinct !{!126, !21}
!127 = distinct !{!127, !21}
!128 = distinct !{!128, !21}
!129 = distinct !{!129, !21}
!130 = distinct !{!130, !21}
!131 = distinct !{!131, !21}
!132 = distinct !{!132, !21}
!133 = distinct !{!133, !21}
!134 = distinct !{!134, !21}
!135 = distinct !{!135, !21}
!136 = distinct !{!136, !21}
!137 = distinct !{!137, !21}
!138 = distinct !{!138, !21}
!139 = distinct !{!139, !21}
!140 = distinct !{!140, !21}
!141 = distinct !{!141, !21}
!142 = distinct !{!142, !21}
!143 = distinct !{null}
!144 = distinct !{!144, !21}
!145 = distinct !{!145, !21}
!146 = distinct !{!146, !21}
!147 = distinct !{!147, !21}
!148 = distinct !{!148, !21}
!149 = distinct !{!149, !21}
!150 = distinct !{!150, !21}
!151 = distinct !{!151, !21}
!152 = distinct !{!152, !21}
!153 = distinct !{!153, !21}
!154 = distinct !{!154, !21}
!155 = distinct !{!155, !21}
!156 = distinct !{!156, !21}
!157 = distinct !{!157, !21}
!158 = distinct !{!158, !21}
!159 = !{!"string_int_pair_st", !26, i64 0, !8, i64 8}
!160 = !{!159, !8, i64 8}
!161 = !{!"llvm.loop.isvectorized", i32 1}
!162 = !{!"llvm.loop.unroll.runtime.disable"}
!163 = !{!"branch_weights", i32 4, i32 28}
!164 = !{!37, !26, i64 32}
!165 = !{!37, !26, i64 40}
!166 = !{!37, !26, i64 960}
!167 = !{!37, !26, i64 1208}
!168 = !{!11, !11, i64 0}
!169 = !{i64 0, i64 8, !27, i64 8, i64 4, !18, i64 16, i64 8, !168, i64 24, i64 8, !32, i64 32, i64 8, !32}
!170 = !{!"", !26, i64 0, !8, i64 8, !8, i64 12}
!171 = !{!170, !8, i64 12}
!172 = !{!170, !26, i64 0}
!173 = !{!170, !8, i64 8}
!174 = !{!51, !8, i64 12}
!175 = !{!51, !31, i64 16}
!176 = !{!51, !26, i64 0}
end_hunk_1
