Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ops?download=true
inline.NumInlined: 777
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 222
loop-unroll.NumUnrolled: 269
begin_hunk_0_@ggml_compute_forward_flash_attn_ext:bb.a
iter.check451:                                    ; preds = %.preheader.i.us.i.i
  br i1 %min.iters.check433, label %.lr.ph.i.us.i.i.preheader, label %vector.main.loop.iter.check434

vector.main.loop.iter.check434:                   ; preds = %iter.check451
  br i1 %min.iters.check435, label %vec.epilog.ph455, label %vector.ph436

vector.ph436:                                     ; preds = %vector.main.loop.iter.check434
  %broadcast.splatinsert438 = insertelement <8 x float> poison, float %i.jq, i64 0
  %broadcast.splat439 = shufflevector <8 x float> %broadcast.splatinsert438, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body440

vector.body440:                                   ; preds = %vector.ph436, %vector.body440
  %index441 = phi i64 [ 0, %vector.ph436 ], [ %index.next446, %vector.body440 ] ; 2 uses
  %gep647 = getelementptr [4 x i8], ptr %invariant.gep646, i64 %index441 ; 5 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %gep647, i64 32 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %gep647, i64 64 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %gep647, i64 96 ; 2 uses
  %wide.load442 = load <8 x float>, ptr %gep647, align 4, !tbaa !43
  %wide.load443 = load <8 x float>, ptr %i.kg, align 4, !tbaa !43
  %wide.load444 = load <8 x float>, ptr %i.kh, align 4, !tbaa !43
  %wide.load445 = load <8 x float>, ptr %i.ki, align 4, !tbaa !43
  %i.kj = fmul <8 x float> %broadcast.splat439, %wide.load442
  %i.kk = fmul <8 x float> %broadcast.splat439, %wide.load443
  %i.kl = fmul <8 x float> %broadcast.splat439, %wide.load444
  %i.km = fmul <8 x float> %broadcast.splat439, %wide.load445
  store <8 x float> %i.kj, ptr %gep647, align 4, !tbaa !43
  store <8 x float> %i.kk, ptr %i.kg, align 4, !tbaa !43
  store <8 x float> %i.kl, ptr %i.kh, align 4, !tbaa !43
  store <8 x float> %i.km, ptr %i.ki, align 4, !tbaa !43
  %index.next446 = add nuw i64 %index441, 32      ; 2 uses
  %i.kn = icmp eq i64 %index.next446, %n.vec437
  br i1 %i.kn, label %middle.block447, label %vector.body440, !llvm.loop !1390

middle.block447:                                  ; preds = %vector.body440
  br i1 %cmp.n448, label %_ZL18ggml_vec_scale_f32iPff.exit.us.i.i, label %vec.epilog.iter.check453

vec.epilog.iter.check453:                         ; preds = %middle.block447
  br i1 %min.epilog.iters.check454, label %.lr.ph.i.us.i.i.preheader, label %vec.epilog.ph455, !prof !50

vec.epilog.ph455:                                 ; preds = %vector.main.loop.iter.check434, %vec.epilog.iter.check453
  %vec.epilog.resume.val449 = phi i64 [ %n.vec437, %vec.epilog.iter.check453 ], [ 0, %vector.main.loop.iter.check434 ]
  %broadcast.splatinsert457 = insertelement <8 x float> poison, float %i.jq, i64 0
  %broadcast.splat458 = shufflevector <8 x float> %broadcast.splatinsert457, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body459

vec.epilog.vector.body459:                        ; preds = %vec.epilog.vector.body459, %vec.epilog.ph455
  %index460 = phi i64 [ %vec.epilog.resume.val449, %vec.epilog.ph455 ], [ %index.next462, %vec.epilog.vector.body459 ] ; 2 uses
  %gep649 = getelementptr [4 x i8], ptr %invariant.gep648, i64 %index460 ; 2 uses
  %wide.load461 = load <8 x float>, ptr %gep649, align 4, !tbaa !43
  %i.ko = fmul <8 x float> %broadcast.splat458, %wide.load461
  store <8 x float> %i.ko, ptr %gep649, align 4, !tbaa !43
  %index.next462 = add nuw i64 %index460, 8       ; 2 uses
  %i.kp = icmp eq i64 %index.next462, %n.vec456
  br i1 %i.kp, label %vec.epilog.middle.block463, label %vec.epilog.vector.body459, !llvm.loop !1391

vec.epilog.middle.block463:                       ; preds = %vec.epilog.vector.body459
  br i1 %cmp.n464, label %_ZL18ggml_vec_scale_f32iPff.exit.us.i.i, label %.lr.ph.i.us.i.i.preheader

.lr.ph.i.us.i.i.preheader:                        ; preds = %iter.check451, %vec.epilog.iter.check453, %vec.epilog.middle.block463
  %indvars.iv33.i.us.i.i.ph = phi i64 [ %i.fk, %iter.check451 ], [ %i.gm, %vec.epilog.iter.check453 ], [ %i.go, %vec.epilog.middle.block463 ]
  br label %.lr.ph.i.us.i.i

.lr.ph.i.us.i.i:                                  ; preds = %.lr.ph.i.us.i.i.preheader, %.lr.ph.i.us.i.i
  %indvars.iv33.i.us.i.i = phi i64 [ %indvars.iv.next34.i.us.i.i, %.lr.ph.i.us.i.i ], [ %indvars.iv33.i.us.i.i.ph, %.lr.ph.i.us.i.i.preheader ] ; 2 uses
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %indvars.iv33.i.us.i.i ; 2 uses
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !43
  %i.ks = fmul float %i.jq, %i.kr
  store float %i.ks, ptr %i.kq, align 4, !tbaa !43
  %indvars.iv.next34.i.us.i.i = add nsw i64 %indvars.iv33.i.us.i.i, 1 ; 2 uses
  %i.kt = icmp slt i64 %indvars.iv.next34.i.us.i.i, %i.fl
  br i1 %i.kt, label %.lr.ph.i.us.i.i, label %_ZL18ggml_vec_scale_f32iPff.exit.us.i.i, !llvm.loop !1392

_ZL18ggml_vec_scale_f32iPff.exit.us.i.i:          ; preds = %.lr.ph.i.us.i.i, %middle.block447, %vec.epilog.middle.block463, %._crit_edge95.us.i.i, %.preheader.i.us.i.i
  %i.ku = load ptr, ptr %i.fm, align 8, !tbaa !37
  %i.kv = mul i64 %.08696.us.i.i, %i.fb
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.kv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kw, ptr align 4 %i.ew, i64 %i.fb, i1 false)
  %i.kx = add nsw i64 %.08696.us.i.i, %i.ex       ; 2 uses
  %i.ky = icmp slt i64 %i.kx, %i.en
  %indvar.next469 = add i64 %indvar468, 1
  br i1 %i.ky, label %.lr.ph94.us.i.i, label %_ZL39ggml_compute_forward_flash_attn_ext_f16PK19ggml_compute_paramsP11ggml_tensor.exit, !llvm.loop !1393

._crit_edge95.us.i.i:                             ; preds = %bb.af
  %i.kz = fcmp une float %.2.us.i.i, 0.000000e+00
  br i1 %i.kz, label %bb.ag, label %_ZL18ggml_vec_scale_f32iPff.exit.us.i.i

_ZL18ggml_vec_scale_f32iPff.exit.i.i:             ; preds = %.lr.ph98.i.i, %_ZL18ggml_vec_scale_f32iPff.exit.i.i
  %.08696.i.i = phi i64 [ %i.ld, %_ZL18ggml_vec_scale_f32iPff.exit.i.i ], [ %i.eu, %.lr.ph98.i.i ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ew, i8 0, i64 %i.fd, i1 false)
  %i.la = load ptr, ptr %i.fm, align 8, !tbaa !37
  %i.lb = mul i64 %.08696.i.i, %i.fb
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.lb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lc, ptr align 4 %i.ew, i64 %i.fb, i1 false)
  %i.ld = add nsw i64 %.08696.i.i, %i.ex          ; 2 uses
  %i.le = icmp slt i64 %i.ld, %i.en
  br i1 %i.le, label %_ZL18ggml_vec_scale_f32iPff.exit.i.i, label %_ZL39ggml_compute_forward_flash_attn_ext_f16PK19ggml_compute_paramsP11ggml_tensor.exit, !llvm.loop !1393

.critedge256.i:                                   ; preds = %bb.aa, %bb.z, %bb.y
  %i.lf = mul i64 %i.w, %i.v
  %i.lg = mul i64 %i.lf, %i.y                     ; 4 uses
  %i.lh = tail call zeroext i1 @ggml_is_numa()
  %i.li = icmp eq i32 %i.bq, 1
  br i1 %i.li, label %.critedge256._crit_edge.i, label %bb.ah

bb.ah:                                            ; preds = %.critedge256.i
  %i.lj = shl nsw i32 %i.bq, 2
  %i.lk = sext i32 %i.lj to i64                   ; 2 uses
  %i.ll = add i64 %i.lg, -1                       ; 2 uses
  %i.lm = add i64 %i.ll, %i.lk
  %i.ln = sdiv i64 %i.lm, %i.lk                   ; 2 uses
  %i.lo = add i64 %i.ln, %i.ll
  %i.lp = sdiv i64 %i.lo, %i.ln                   ; 2 uses
  %i.lq = sext i32 %i.bq to i64                   ; 2 uses
  %i.lr = icmp slt i64 %i.lp, %i.lq
  %or.cond7.i = select i1 %i.lr, i1 true, i1 %i.lh
  %spec.select473.i = select i1 %or.cond7.i, i64 %i.lq, i64 %i.lp
  br label %.critedge256._crit_edge.i

.critedge256._crit_edge.i:                        ; preds = %bb.ah, %.critedge256.i
  %.0208.i = phi i64 [ %spec.select473.i, %bb.ah ], [ 1, %.critedge256.i ] ; 5 uses
  %i.ls = icmp eq i32 %i.bo, 0
  br i1 %i.ls, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.critedge256._crit_edge.i
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !57
  tail call void @ggml_threadpool_chunk_set(ptr noundef %i.lu, i32 noundef %i.bq)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.critedge256._crit_edge.i
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !57
  tail call void @ggml_barrier(ptr noundef %i.lw)
  %i.lx = add i64 %i.lg, -1
  %i.ly = add i64 %i.lx, %.0208.i
  %i.lz = sdiv i64 %i.ly, %.0208.i                ; 4 uses
  br i1 %i.bt, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ma = load i32, ptr %i.g, align 8, !tbaa !30
  %i.mb = icmp eq i32 %i.ma, 0
  %or.cond9.i = and i1 %spec.select.i, %i.mb
  br i1 %or.cond9.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.mc = load i32, ptr %i.i, align 8, !tbaa !30
  %i.md = load i32, ptr %i.k, align 8, !tbaa !30
  %i.me = icmp ne i32 %i.mc, %i.md
  %i.mf = icmp slt i64 %i.w, 64
  %spec.select257.i = select i1 %i.me, i1 true, i1 %i.mf
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.not253254.i = phi i1 [ true, %bb.aj ], [ %spec.select257.i, %bb.al ], [ true, %bb.ak ]
  %i.mg = sext i32 %i.bo to i64                   ; 3 uses
  %i.mh = icmp sgt i64 %.0208.i, %i.mg
  br i1 %i.mh, label %.lr.ph.i, label %_ZL39ggml_compute_forward_flash_attn_ext_f16PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph.i:                                         ; preds = %bb.am
  %i.mi = and i64 %i.am, 15
  %i.mj = icmp ne i64 %i.mi, 0
  %.not253.i = select i1 %i.mj, i1 true, i1 %.not253254.i
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ms = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.mt = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.mv = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.mx = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.my = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  br i1 %.not253.i, label %_ZL41ggml_compute_forward_flash_attn_ext_tiledPK19ggml_compute_paramsP11ggml_tensorii.exit.us.i, label %.lr.ph.split.i

_ZL41ggml_compute_forward_flash_attn_ext_tiledPK19ggml_compute_paramsP11ggml_tensorii.exit.us.i: ; preds = %.lr.ph.i, %_ZL41ggml_compute_forward_flash_attn_ext_tiledPK19ggml_compute_paramsP11ggml_tensorii.exit.us.i
  %i.mz = phi i64 [ %i.nh, %_ZL41ggml_compute_forward_flash_attn_ext_tiledPK19ggml_compute_paramsP11ggml_tensorii.exit.us.i ], [ %i.mg, %.lr.ph.i ]
  %i.na = mul nsw i64 %i.mz, %i.lz                ; 2 uses
  %i.nb = add nsw i64 %i.na, %i.lz
  %i.nc = tail call i64 @llvm.smin.i64(i64 %i.nb, i64 %i.lg)
  %i.nd = trunc i64 %i.na to i32
  %i.ne = trunc i64 %i.nc to i32
  tail call fastcc void @_ZL49ggml_compute_forward_flash_attn_ext_f16_one_chunkPK19ggml_compute_paramsP11ggml_tensoriillPfl(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i32 noundef %i.nd, i32 noundef %i.ne, i64 noundef 0, i64 noundef %.0272278.i, ptr noundef null, i64 noundef 0)
  %i.nf = load ptr, ptr %i.lv, align 8, !tbaa !57
  %i.ng = tail call i32 @ggml_threadpool_chunk_add(ptr noundef %i.nf, i32 noundef 1)
  %i.nh = sext i32 %i.ng to i64                   ; 2 uses
  %i.ni = icmp sgt i64 %.0208.i, %i.nh
  br i1 %i.ni, label %_ZL41ggml_compute_forward_flash_attn_ext_tiledPK19ggml_compute_paramsP11ggml_tensorii.exit.us.i, label %_ZL39ggml_compute_forward_flash_attn_ext_f16PK19ggml_compute_paramsP11ggml_tensor.exit, !llvm.loop !1394

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZL41ggml_compute_forward_flash_attn_ext_tiledPK19ggml_compute_paramsP11ggml_tensorii.exit.i
  %i.nj = phi i64 [ %i.bjp, %_ZL41ggml_compute_forward_flash_attn_ext_tiledPK19ggml_compute_paramsP11ggml_tensorii.exit.i ], [ %i.mg, %.lr.ph.i ]
  %i.nk = mul nsw i64 %i.nj, %i.lz                ; 2 uses
  %i.nl = add nsw i64 %i.nk, %i.lz
  %i.nm = tail call i64 @llvm.smin.i64(i64 %i.nl, i64 %i.lg)
  %i.nn = trunc i64 %i.nk to i32                  ; 2 uses
  %i.no = trunc i64 %i.nm to i32                  ; 3 uses
  %i.np = load ptr, ptr %i.f, align 8, !tbaa !24  ; 10 uses
  %i.nq = load ptr, ptr %i.h, align 8, !tbaa !24  ; 11 uses
  %i.nr = load ptr, ptr %i.j, align 8, !tbaa !24  ; 10 uses
  %i.ns = load ptr, ptr %i.mk, align 8, !tbaa !24 ; 7 uses
  %i.nt = load ptr, ptr %i.ml, align 8, !tbaa !24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.np, null
  br i1 %.not.i.i, label %.thread706.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.split.i
  %i.nu = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !31
  %i.nw = getelementptr inbounds nuw i8, ptr %i.np, i64 24
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !31
  %i.ny = getelementptr inbounds nuw i8, ptr %i.np, i64 32
  %2 = load <2 x i64>, ptr %i.ny, align 8, !tbaa !31
  %i.nz = getelementptr inbounds nuw i8, ptr %i.np, i64 48
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !31
  %i.ob = getelementptr inbounds nuw i8, ptr %i.np, i64 56
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !31
  %i.od = getelementptr inbounds nuw i8, ptr %i.np, i64 64
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !31
  %i.of = getelementptr inbounds nuw i8, ptr %i.np, i64 72
  %i.og = load i64, ptr %i.of, align 8, !tbaa !31
  %3 = shufflevector <2 x i64> %2, <2 x i64> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  br label %.thread706.i.i

.thread706.i.i:                                   ; preds = %bb.an, %.lr.ph.split.i
  %i.oh = phi i64 [ %i.oe, %bb.an ], [ 0, %.lr.ph.split.i ]
  %i.oi = phi i64 [ %i.oa, %bb.an ], [ 0, %.lr.ph.split.i ]
  %i.oj = phi i64 [ %i.nv, %bb.an ], [ 0, %.lr.ph.split.i ] ; 26 uses
  %i.ok = phi i64 [ %i.nx, %bb.an ], [ 0, %.lr.ph.split.i ] ; 7 uses
  %i.ol = phi i64 [ %i.oc, %bb.an ], [ 0, %.lr.ph.split.i ] ; 5 uses
  %i.om = phi i64 [ %i.og, %bb.an ], [ 0, %.lr.ph.split.i ]
  %4 = phi <4 x i64> [ %3, %bb.an ], [ zeroinitializer, %.lr.ph.split.i ] ; 2 uses
  %.not503.i.i = icmp eq ptr %i.nq, null
  br i1 %.not503.i.i, label %.thread713.i.i, label %bb.ao

bb.ao:                                            ; preds = %.thread706.i.i
  %i.on = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !31
  %i.op = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !31
  %i.or = getelementptr inbounds nuw i8, ptr %i.nq, i64 32
  %5 = load <2 x i64>, ptr %i.or, align 8, !tbaa !31
  %i.os = getelementptr inbounds nuw i8, ptr %i.nq, i64 48
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !31
  %i.ou = getelementptr inbounds nuw i8, ptr %i.nq, i64 56
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !31
  %i.ow = getelementptr inbounds nuw i8, ptr %i.nq, i64 64
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !31
  %i.oy = getelementptr inbounds nuw i8, ptr %i.nq, i64 72
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !31
  br label %.thread713.i.i

.thread713.i.i:                                   ; preds = %bb.ao, %.thread706.i.i
  %i.pa = phi i64 [ %i.ox, %bb.ao ], [ 0, %.thread706.i.i ]
  %i.pb = phi i64 [ %i.ot, %bb.ao ], [ 0, %.thread706.i.i ]
  %i.pc = phi i64 [ %i.oo, %bb.ao ], [ 0, %.thread706.i.i ]
  %i.pd = phi i64 [ %i.oq, %bb.ao ], [ 0, %.thread706.i.i ] ; 4 uses
  %i.pe = phi i64 [ %i.ov, %bb.ao ], [ 0, %.thread706.i.i ] ; 4 uses
  %i.pf = phi i64 [ %i.oz, %bb.ao ], [ 0, %.thread706.i.i ]
  %6 = phi <2 x i64> [ %5, %bb.ao ], [ zeroinitializer, %.thread706.i.i ]
  %.not504.i.i = icmp eq ptr %i.nr, null
  br i1 %.not504.i.i, label %.thread719.i.i, label %bb.ap

bb.ap:                                            ; preds = %.thread713.i.i
  %i.pg = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !31
  %i.pi = getelementptr inbounds nuw i8, ptr %i.nr, i64 32
  %7 = load <2 x i64>, ptr %i.pi, align 8, !tbaa !31
  %i.pj = getelementptr inbounds nuw i8, ptr %i.nr, i64 48
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !31
  %i.pl = getelementptr inbounds nuw i8, ptr %i.nr, i64 56
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !31
  %i.pn = getelementptr inbounds nuw i8, ptr %i.nr, i64 64
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !31
  %i.pp = getelementptr inbounds nuw i8, ptr %i.nr, i64 72
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !31
  br label %.thread719.i.i

.thread719.i.i:                                   ; preds = %bb.ap, %.thread713.i.i
  %i.pr = phi i64 [ %i.po, %bb.ap ], [ 0, %.thread713.i.i ]
  %i.ps = phi i64 [ %i.pk, %bb.ap ], [ 0, %.thread713.i.i ]
  %i.pt = phi i64 [ %i.ph, %bb.ap ], [ 0, %.thread713.i.i ] ; 14 uses
  %i.pu = phi i64 [ %i.pm, %bb.ap ], [ 0, %.thread713.i.i ]
  %i.pv = phi i64 [ %i.pq, %bb.ap ], [ 0, %.thread713.i.i ]
  %8 = phi <2 x i64> [ %7, %bb.ap ], [ zeroinitializer, %.thread713.i.i ]
  %i.pw = load i64, ptr %i.ao, align 8, !tbaa !31
  %i.px = load i64, ptr %i.mm, align 8, !tbaa !31
  %i.py = load i64, ptr %i.aq, align 8, !tbaa !31
  %i.pz = icmp eq i64 %i.py, 4
  %i.qa = load i64, ptr %i.at, align 8, !tbaa !31 ; 4 uses
  %i.qb = load i64, ptr %i.av, align 8, !tbaa !31 ; 2 uses
  %i.qc = load i64, ptr %i.ax, align 8, !tbaa !31
  %i.qd = icmp eq i64 %i.pw, %i.pt
  br i1 %i.qd, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.thread719.i.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 8875, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.134) #17
  unreachable

bb.ar:                                            ; preds = %.thread719.i.i
  %i.qe = load i64, ptr %i.ba, align 8, !tbaa !31
  %i.qf = icmp eq i64 %i.qe, %i.ok
  br i1 %i.qf, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 8876, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.135) #17
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.qg = load i32, ptr %i.np, align 8, !tbaa !30
  %i.qh = tail call i64 @ggml_type_size(i32 noundef %i.qg)
  %i.qi = icmp eq i64 %i.oi, %i.qh
  br i1 %i.qi, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 8879, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.136) #17
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.qj = load i32, ptr %i.nq, align 8, !tbaa !30
  %i.qk = tail call i64 @ggml_type_size(i32 noundef %i.qj)
  %i.ql = icmp eq i64 %i.pb, %i.qk
  br i1 %i.ql, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 8880, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.137) #17
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.qm = load i32, ptr %i.nr, align 8, !tbaa !30
  %i.qn = tail call i64 @ggml_type_size(i32 noundef %i.qm)
  %i.qo = icmp eq i64 %i.ps, %i.qn
  br i1 %i.qo, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 8881, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.138) #17
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.qp = icmp eq i64 %i.oj, %i.pc
  br i1 %i.qp, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 8883, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.139) #17
  unreachable

bb.bb:                                            ; preds = %bb.az
  br i1 %i.pz, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 8890, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.25) #17
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.qq = icmp ugt i64 %i.qa, 3
  br i1 %i.qq, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 8891, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14) #17
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %.not506.i.i = icmp ugt i64 %i.qa, %i.qb
  br i1 %.not506.i.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 8892, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15) #17
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %.not507.i.i = icmp ugt i64 %i.qb, %i.qc
  br i1 %.not507.i.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 8893, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.16) #17
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.qr = load i32, ptr %i.nq, align 8, !tbaa !30 ; 2 uses
  %i.qs = load i32, ptr %i.nr, align 8, !tbaa !30
  %i.qt = icmp eq i32 %i.qr, %i.qs
  br i1 %i.qt, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 8895, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.145) #17
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %9 = shufflevector <2 x i64> %6, <2 x i64> %8, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %10 = sdiv <4 x i64> %4, %9
  %.0.copyload226.i.i = load float, ptr %i.mn, align 4 ; 2 uses
  %.0.copyload223.i.i = load float, ptr %i.mo, align 8 ; 3 uses
  %.0.copyload.i.i = load float, ptr %i.mp, align 4 ; 3 uses
  %i.qu = fcmp une float %.0.copyload.i.i, 0.000000e+00 ; 2 uses
  %11 = extractelement <4 x i64> %4, i64 1        ; 2 uses
  %i.qv = trunc i64 %11 to i32
  %i.qw = uitofp i32 %i.qv to double
  %i.qx = tail call noundef double @log2(double noundef %i.qw) #18
  %i.qy = tail call double @llvm.floor.f64(double %i.qx)
  %i.qz = fptoui double %i.qy to i32
  %i.ra = shl nuw i32 1, %i.qz                    ; 3 uses
  %i.rb = fneg float %.0.copyload223.i.i
  %i.rc = uitofp i32 %i.ra to float               ; 2 uses
  %i.rd = fdiv float %i.rb, %i.rc
  %exp2f.i.i = tail call float @exp2f(float %i.rd)
  %i.re = fmul float %.0.copyload223.i.i, -5.000000e-01
  %i.rf = fdiv float %i.re, %i.rc
  %exp2f508.i.i = tail call float @exp2f(float %i.rf)
  %i.rg = icmp slt i32 %i.nn, %i.no
  br i1 %i.rg, label %.lr.ph841.i.i, label %_ZL41ggml_compute_forward_flash_attn_ext_tiledPK19ggml_compute_paramsP11ggml_tensorii.exit.i

.lr.ph841.i.i:                                    ; preds = %bb.bl
  %i.rh = load i32, ptr %0, align 8, !tbaa !35
  %i.ri = fdiv float %.0.copyload226.i.i, %.0.copyload.i.i
  %spec.select.i.i = select i1 %i.qu, float %i.ri, float %.0.copyload226.i.i
  %i.rj = mul i64 %i.ok, %11                      ; 2 uses
  %i.rk = fcmp ogt float %.0.copyload223.i.i, 0.000000e+00
  %i.rl = sext i32 %i.rh to i64                   ; 2 uses
  %i.rm = shl i64 %i.pt, 6                        ; 2 uses
  %i.rn = add i64 %i.pt, %i.oj
  %i.ro = shl i64 %i.rn, 7
  %i.rp = add i64 %i.ro, 8208                     ; 2 uses
  %i.rq = mul i64 %i.rp, %i.rl                    ; 2 uses
  %i.rr = shl i64 %i.oj, 8                        ; 2 uses
  %i.rs = shl i64 %i.pt, 8                        ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.np, i64 248 ; 5 uses
  %i.ru = shl i64 %i.oj, 2                        ; 7 uses
  %i.rv = icmp sgt i64 %i.pd, 0
  %.not511.i.i = icmp eq ptr %i.ns, null          ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ns, i64 248
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ns, i64 56
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ns, i64 32
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ns, i64 64
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ns, i64 40
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ns, i64 72
  %i.sc = getelementptr inbounds nuw i8, ptr %i.nq, i64 248
  %i.sd = icmp eq i32 %i.qr, 1                    ; 2 uses
  %i.se = icmp sgt i64 %i.oj, 0                   ; 2 uses
  %i.sf = trunc i64 %i.oj to i32                  ; 2 uses
  %i.sg = shl nsw i32 %i.sf, 2
  %i.sh = sext i32 %i.sg to i64
  %sext724.i.i = shl i64 %i.oj, 32                ; 2 uses
  %i.si = ashr exact i64 %sext724.i.i, 32         ; 3 uses
  %i.sj = icmp slt i32 %i.sf, 1
  %gep.2.idx.i.i.i.i = ashr exact i64 %sext724.i.i, 29
  %gep.3.idx.i.i.i.i = mul nuw nsw i64 %i.si, 12
  %i.sk = insertelement <16 x float> poison, float %spec.select.i.i, i64 0
  %i.sl = shufflevector <16 x float> %i.sk, <16 x float> poison, <16 x i32> zeroinitializer ; 8 uses
  %i.sm = insertelement <16 x float> poison, float %.0.copyload.i.i, i64 0
  %i.sn = shufflevector <16 x float> %i.sm, <16 x float> poison, <16 x i32> zeroinitializer ; 8 uses
  %i.so = trunc i64 %i.pt to i32                  ; 5 uses
  %i.sp = and i32 %i.so, -64                      ; 2 uses
  %i.sq = icmp sgt i32 %i.so, 63                  ; 3 uses
  %i.sr = and i64 %i.pt, 2147483584               ; 3 uses
  %.not.i.i260.i = icmp eq i32 %i.sp, %i.so       ; 3 uses
  %i.ss = sext i32 %i.sp to i64                   ; 17 uses
  %sext728.i.i = shl i64 %i.pt, 32                ; 2 uses
  %i.st = ashr exact i64 %sext728.i.i, 32         ; 48 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.nr, i64 248
  %i.sv = shl i64 %i.pt, 2
  %.not121185.i.i.i = icmp slt i32 %i.so, 64
  %i.sw = shl nsw i32 %i.so, 2
  %i.sx = sext i32 %i.sw to i64
  %.idx.i.i.i.i = ashr exact i64 %sext728.i.i, 29 ; 3 uses
  %.idx109.i.i.i.i = mul nsw i64 %i.st, 12        ; 3 uses
  %.not510.i.i = icmp eq ptr %i.nt, null
  %i.sy = getelementptr inbounds nuw i8, ptr %i.nt, i64 248
  %i.sz = shl i64 %i.rq, 2
  %i.ta = or disjoint i64 %i.ss, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ta, i64 %i.st) ; 7 uses
  %i.tb = sub i64 %smax, %i.ss                    ; 12 uses
  %i.tc = shl i64 %i.rp, 2
  %i.td = mul i64 %i.tc, %i.rl
  %i.te = add i64 %i.oj, %i.pt
  %i.tf = shl i64 %i.te, 9
  %i.tg = shl i64 %i.pe, 6
  %i.th = shl i64 %i.oj, 2
  %i.ti = add i64 %i.oj, -1                       ; 2 uses
  %min.iters.check373 = icmp ult i64 %i.oj, 8
  %stride.check = icmp slt i64 %i.pe, 0
  %min.iters.check375 = icmp ult i64 %i.oj, 32
  %i.tj = and i64 %i.oj, 24
  %n.vec377 = and i64 %i.oj, 9223372036854775776  ; 4 uses
  %cmp.n389 = icmp eq i64 %i.oj, %n.vec377
  %min.epilog.iters.check394 = icmp eq i64 %i.tj, 0
  %n.vec396 = and i64 %i.oj, 9223372036854775800  ; 3 uses
  %cmp.n407 = icmp eq i64 %i.oj, %n.vec396
  %xtraiter574 = and i64 %i.oj, 7                 ; 2 uses
  %lcmp.mod575.not = icmp eq i64 %xtraiter574, 0
  %xtraiter576 = and i64 %i.oj, 3                 ; 3 uses
  %i.tk = icmp ult i64 %i.ti, 3
  %unroll_iter580 = and i64 %i.oj, 9223372036854775804
  %lcmp.mod578.not = icmp eq i64 %xtraiter576, 0
  %lcmp.mod579 = icmp ne i64 %xtraiter576, 0
  %min.iters.check279 = icmp ult i64 %i.tb, 8
  %min.iters.check281 = icmp ult i64 %i.tb, 32
  %i.tl = and i64 %smax, 31                       ; 3 uses
  %n.vec283 = sub nuw i64 %i.tb, %i.tl            ; 3 uses
  %i.tm = add i64 %n.vec283, %i.ss
  %cmp.n294 = icmp eq i64 %i.tl, 0
  %min.epilog.iters.check299 = icmp samesign ult i64 %i.tl, 8
  %i.tn = and i64 %smax, 7                        ; 2 uses
  %n.vec301 = sub i64 %i.tb, %i.tn                ; 2 uses
  %i.to = add i64 %n.vec301, %i.ss
  %cmp.n309 = icmp eq i64 %i.tn, 0
  %min.iters.check247 = icmp ult i64 %i.tb, 8
  %min.iters.check249 = icmp ult i64 %i.tb, 32
  %i.tp = and i64 %smax, 31                       ; 3 uses
  %n.vec251 = sub nuw i64 %i.tb, %i.tp            ; 3 uses
  %i.tq = add i64 %n.vec251, %i.ss
  %cmp.n262 = icmp eq i64 %i.tp, 0
  %min.epilog.iters.check267 = icmp samesign ult i64 %i.tp, 8
  %i.tr = and i64 %smax, 7                        ; 2 uses
  %n.vec269 = sub i64 %i.tb, %i.tr                ; 2 uses
  %i.ts = add i64 %n.vec269, %i.ss
  %cmp.n277 = icmp eq i64 %i.tr, 0
  %min.iters.check = icmp ult i64 %i.tb, 8
  %min.iters.check235 = icmp ult i64 %i.tb, 32
  %i.tt = and i64 %smax, 31                       ; 3 uses
  %n.vec = sub nuw i64 %i.tb, %i.tt               ; 3 uses
  %i.tu = add i64 %n.vec, %i.ss
  %cmp.n = icmp eq i64 %i.tt, 0
  %min.epilog.iters.check = icmp samesign ult i64 %i.tt, 8
  %i.tv = and i64 %smax, 7                        ; 2 uses
  %n.vec239 = sub i64 %i.tb, %i.tv                ; 2 uses
  %i.tw = add i64 %n.vec239, %i.ss
  %cmp.n245 = icmp eq i64 %i.tv, 0
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge838.i.i, %.lr.ph841.i.i
  %.0444839.i.i = phi i32 [ %i.nn, %.lr.ph841.i.i ], [ %i.bhy, %._crit_edge838.i.i ] ; 3 uses
  %i.tx = sext i32 %.0444839.i.i to i64           ; 2 uses
  %i.ty = sdiv i64 %i.tx, %i.rj
  %i.tz = shl i64 %i.ty, 32
  %i.ua = ashr exact i64 %i.tz, 32                ; 5 uses
  %i.ub = mul i64 %i.ua, %i.rj
  %i.uc = sub nsw i64 %i.tx, %i.ub                ; 2 uses
  %i.ud = sdiv i64 %i.uc, %i.ok                   ; 4 uses
  %i.ue = trunc i64 %i.ud to i32                  ; 3 uses
  %sext.i261.i = shl i64 %i.ud, 32
  %i.uf = ashr exact i64 %sext.i261.i, 32         ; 4 uses
  %i.ug = mul i64 %i.ud, %i.ok                    ; 0 uses
  %.recomposed = srem i64 %i.uc, %i.ok            ; 2 uses
  %i.uh = sub nsw i32 %i.no, %.0444839.i.i
  %i.ui = sub i64 %i.ok, %.recomposed
  %i.uj = trunc i64 %i.ui to i32
  %..i262.i = tail call i32 @llvm.smin.i32(i32 %i.uh, i32 %i.uj) ; 4 uses
  %i.uk = tail call i32 @llvm.smin.i32(i32 %..i262.i, i32 64) ; 4 uses
  %i.ul = icmp sgt i32 %..i262.i, 0
  br i1 %i.ul, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 8941, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.146) #17
  unreachable

bb.bo:                                            ; preds = %bb.bm
  br i1 %i.rk, label %.lr.ph.sink.split.i.i, label %.lr.ph.i.i

.lr.ph.sink.split.i.i:                            ; preds = %bb.bo
  %i.um = icmp ugt i32 %i.ra, %i.ue               ; 2 uses
  %i.un = sub nuw i32 %i.ue, %i.ra
  %i.uo = shl i32 %i.un, 1
  %i.up = or disjoint i32 %i.uo, 1
  %i.uq = add nuw i32 %i.ue, 1
  %.sink1035.i.i = select i1 %i.um, i32 %i.uq, i32 %i.up
  %exp2f508.sink.i.i = select i1 %i.um, float %exp2f.i.i, float %exp2f508.i.i
  %i.ur = uitofp i32 %.sink1035.i.i to float
  %i.us = tail call float @powf(float noundef %exp2f508.sink.i.i, float noundef %i.ur) #18
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.sink.split.i.i, %bb.bo
  %i.ut = phi float [ 1.000000e+00, %bb.bo ], [ %i.us, %.lr.ph.sink.split.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false), !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.b, align 16, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.ms, align 16, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.mt, align 16, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.mu, align 16, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.mv, align 16, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.mw, align 16, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.mx, align 16, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.my, align 16, !tbaa !43
  %i.uu = load ptr, ptr %i.mq, align 8, !tbaa !48 ; 3 uses
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %i.rq ; 7 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 %i.rr ; 31 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 16384 ; 6 uses
  %i.uy = getelementptr i8, ptr %i.uw, i64 32768  ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.uy, i8 0, i64 %i.rs, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16384) %i.ux, i8 0, i64 16384, i1 false)
  %i.uz = mul i64 %i.uf, %i.oh                    ; 5 uses
  %i.va = mul i64 %i.ua, %i.om                    ; 5 uses
  %sext977.i.i = shl i64 %.recomposed, 32
  %i.vb = ashr exact i64 %sext977.i.i, 32         ; 7 uses
  %wide.trip.count.i.i = zext nneg i32 %i.uk to i64 ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.vc = icmp slt i32 %..i262.i, 4
  br i1 %i.vc, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 124
  br label %bb.bq

.preheader741.i.i.unr-lcssa:                      ; preds = %bb.bq
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader741.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader741.i.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %.preheader741.i.i.unr-lcssa ]
  %lcmp.mod564 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod564)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.bp ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bp ]
  %i.vd = load ptr, ptr %i.rt, align 8, !tbaa !37
  %i.ve = add nsw i64 %indvars.iv.i.i.epil, %i.vb
  %i.vf = mul i64 %i.ve, %i.ol
  %i.vg = getelementptr i8, ptr %i.vd, i64 %i.vf
  %i.vh = getelementptr i8, ptr %i.vg, i64 %i.uz
  %i.vi = getelementptr i8, ptr %i.vh, i64 %i.va
  %i.vj = mul nsw i64 %indvars.iv.i.i.epil, %i.oj
  %i.vk = getelementptr inbounds [4 x i8], ptr %i.uv, i64 %i.vj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.vk, ptr align 4 %i.vi, i64 %i.ru, i1 false)
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader741.i.i, label %bb.bp, !llvm.loop !1395

.preheader741.i.i:                                ; preds = %bb.bp, %.preheader741.i.i.unr-lcssa
  %i.vl = getelementptr [4 x i8], ptr %i.uy, i64 %i.rm ; 6 uses
  %i.vm = getelementptr [4 x i8], ptr %i.vl, i64 %i.rm ; 4 uses
  %12 = insertelement <4 x i64> poison, i64 %i.uf, i64 0
  %13 = insertelement <4 x i64> %12, i64 %i.ua, i64 1
  %14 = shufflevector <4 x i64> %13, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %15 = sdiv <4 x i64> %14, %10                   ; 3 uses
  %i.vn = icmp samesign ult i32 %..i262.i, 64
  br i1 %i.vn, label %.lr.ph786.preheader.i.i, label %._crit_edge.i.i

.lr.ph786.preheader.i.i:                          ; preds = %.preheader741.i.i
  %scevgep.i.i = getelementptr i8, ptr %i.uu, i64 %i.sz
  %i.vo = mul i64 %i.ru, %wide.trip.count.i.i
  %scevgep887.i.i = getelementptr i8, ptr %scevgep.i.i, i64 %i.vo
  %narrow.i.i = sub nuw nsw i32 64, %i.uk
  %i.vp = zext nneg i32 %narrow.i.i to i64
  %i.vq = mul i64 %i.ru, %i.vp
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep887.i.i, i8 0, i64 %i.vq, i1 false)
  br label %._crit_edge.i.i

bb.bq:                                            ; preds = %bb.bq, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.bq ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.bq ]
  %i.vr = load ptr, ptr %i.rt, align 8, !tbaa !37
  %i.vs = add nsw i64 %indvars.iv.i.i, %i.vb
  %i.vt = mul i64 %i.vs, %i.ol
  %i.vu = getelementptr i8, ptr %i.vr, i64 %i.vt
  %i.vv = getelementptr i8, ptr %i.vu, i64 %i.uz
  %i.vw = getelementptr i8, ptr %i.vv, i64 %i.va
  %i.vx = mul nsw i64 %indvars.iv.i.i, %i.oj
  %i.vy = getelementptr inbounds [4 x i8], ptr %i.uv, i64 %i.vx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.vy, ptr align 4 %i.vw, i64 %i.ru, i1 false)
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.vz = load ptr, ptr %i.rt, align 8, !tbaa !37
  %i.wa = add nsw i64 %indvars.iv.next.i.i, %i.vb
  %i.wb = mul i64 %i.wa, %i.ol
  %i.wc = getelementptr i8, ptr %i.vz, i64 %i.wb
  %i.wd = getelementptr i8, ptr %i.wc, i64 %i.uz
  %i.we = getelementptr i8, ptr %i.wd, i64 %i.va
  %i.wf = mul nsw i64 %indvars.iv.next.i.i, %i.oj
  %i.wg = getelementptr inbounds [4 x i8], ptr %i.uv, i64 %i.wf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.wg, ptr align 4 %i.we, i64 %i.ru, i1 false)
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.wh = load ptr, ptr %i.rt, align 8, !tbaa !37
  %i.wi = add nsw i64 %indvars.iv.next.i.i.1, %i.vb
  %i.wj = mul i64 %i.wi, %i.ol
  %i.wk = getelementptr i8, ptr %i.wh, i64 %i.wj
  %i.wl = getelementptr i8, ptr %i.wk, i64 %i.uz
  %i.wm = getelementptr i8, ptr %i.wl, i64 %i.va
  %i.wn = mul nsw i64 %indvars.iv.next.i.i.1, %i.oj
  %i.wo = getelementptr inbounds [4 x i8], ptr %i.uv, i64 %i.wn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.wo, ptr align 4 %i.wm, i64 %i.ru, i1 false)
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.wp = load ptr, ptr %i.rt, align 8, !tbaa !37
  %i.wq = add nsw i64 %indvars.iv.next.i.i.2, %i.vb
  %i.wr = mul i64 %i.wq, %i.ol
  %i.ws = getelementptr i8, ptr %i.wp, i64 %i.wr
  %i.wt = getelementptr i8, ptr %i.ws, i64 %i.uz
  %i.wu = getelementptr i8, ptr %i.wt, i64 %i.va
  %i.wv = mul nsw i64 %indvars.iv.next.i.i.2, %i.oj
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.uv, i64 %i.wv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ww, ptr align 4 %i.wu, i64 %i.ru, i1 false)
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader741.i.i.unr-lcssa, label %bb.bq, !llvm.loop !1396

._crit_edge.i.i:                                  ; preds = %.lr.ph786.preheader.i.i, %.preheader741.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.vm, i8 0, i64 %i.rr, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.vl, i8 0, i64 %i.rs, i1 false)
  br i1 %i.rv, label %.lr.ph830.i.i, label %._crit_edge831.i.i

.lr.ph830.i.i:                                    ; preds = %._crit_edge.i.i
  %16 = shufflevector <4 x i64> %15, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %17 = shl <2 x i64> %16, splat (i64 32)
  %18 = ashr exact <2 x i64> %17, splat (i64 32)  ; 2 uses
  %19 = extractelement <2 x i64> %18, i64 1
  %20 = mul i64 %19, %i.pa                        ; 3 uses
  %21 = extractelement <2 x i64> %18, i64 0
  %i.wx = mul i64 %21, %i.pf                      ; 3 uses
  %i.wy = shl nuw nsw i32 %i.uk, 6                ; 2 uses
  %i.wz = zext nneg i32 %i.wy to i64              ; 5 uses
  %22 = extractelement <4 x i64> %15, i64 3
  %i.xa = shl i64 %22, 32
  %i.xb = ashr exact i64 %i.xa, 32
  %i.xc = mul i64 %i.xb, %i.pr
  %23 = extractelement <4 x i64> %15, i64 2
  %i.xd = shl i64 %23, 32
  %i.xe = ashr exact i64 %i.xd, 32
  %i.xf = mul i64 %i.xe, %i.pv
  %umax = tail call i64 @llvm.umax.i64(i64 %i.wz, i64 15)
  %i.xg = and i64 %umax, 8136                     ; 2 uses
  %i.xh = sub nsw i64 %i.wz, %i.xg                ; 5 uses
  %scevgep = getelementptr i8, ptr %i.uu, i64 32512
  %i.xi = getelementptr i8, ptr %scevgep, i64 %i.tf
  %scevgep368 = getelementptr i8, ptr %i.xi, i64 %i.td
  %min.iters.check311 = icmp eq i64 %i.xg, %i.wz
  %min.iters.check313 = icmp ult i64 %i.xh, 32
  %i.xj = and i64 %i.xh, 24
  %n.vec315 = and i64 %i.xh, -32                  ; 4 uses
  %cmp.n328 = icmp eq i64 %i.xh, %n.vec315
  %min.epilog.iters.check333 = icmp eq i64 %i.xj, 0
  br label %bb.br

._crit_edge831.i.i:                               ; preds = %.critedge.i.i, %._crit_edge.i.i
  br i1 %.not510.i.i, label %.lr.ph837.i.i, label %.lr.ph834.preheader.i.i

bb.br:                                            ; preds = %.critedge.i.i, %.lr.ph830.i.i
  %indvar = phi i64 [ %indvar.next, %.critedge.i.i ], [ 0, %.lr.ph830.i.i ] ; 2 uses
  %indvars.iv894.i.i = phi i64 [ %indvars.iv.next895.i.i, %.critedge.i.i ], [ %i.pd, %.lr.ph830.i.i ] ; 5 uses
  %.0440826.i.i = phi i64 [ %i.bgc, %.critedge.i.i ], [ 0, %.lr.ph830.i.i ] ; 5 uses
  %smin566 = tail call i64 @llvm.smin.i64(i64 %indvars.iv894.i.i, i64 64)
  %i.xk = and i64 %smin566, 4294967295
  %i.xl = add nsw i64 %i.xk, -1
  %smin369 = tail call i64 @llvm.smin.i64(i64 %indvars.iv894.i.i, i64 64)
  %i.xm = and i64 %smin369, 4294967295            ; 2 uses
  %i.xn = shl nuw nsw i64 %i.xm, 2
  %scevgep370 = getelementptr i8, ptr %scevgep368, i64 %i.xn
  %i.xo = mul i64 %i.tg, %indvar                  ; 2 uses
  %i.xp = add nsw i64 %i.xm, -1
  %i.xq = mul i64 %i.pe, %i.xp
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv894.i.i, i64 64)
  %i.xr = trunc i64 %smin to i32                  ; 2 uses
  %smax344 = tail call i32 @llvm.smax.i32(i32 %i.xr, i32 63)
  %i.xs = sub i32 %smax344, %i.xr                 ; 5 uses
  %i.xt = zext i32 %i.xs to i64
  %i.xu = add nuw nsw i64 %i.xt, 1                ; 10 uses
  %smin930.i.i = tail call i64 @llvm.smin.i64(i64 %indvars.iv894.i.i, i64 64) ; 3 uses
  %i.xv = and i64 %smin930.i.i, 4294967295        ; 12 uses
  %i.xw = sub nuw nsw i64 %i.pd, %.0440826.i.i    ; 2 uses
  br i1 %.not511.i.i, label %.lr.ph812.i.i, label %.lr.ph796.i.i

.lr.ph796.i.i:                                    ; preds = %bb.br
  %i.xx = load ptr, ptr %i.rw, align 8, !tbaa !37
  %i.xy = load i64, ptr %i.rx, align 8, !tbaa !31
  %i.xz = load i64, ptr %i.ry, align 8, !tbaa !31
  %i.ya = srem i64 %i.uf, %i.xz
  %i.yb = load i64, ptr %i.rz, align 8, !tbaa !31
  %i.yc = mul i64 %i.yb, %i.ya
  %invariant.gep.i.i = getelementptr i8, ptr %i.xx, i64 %i.yc
  %i.yd = load i64, ptr %i.sa, align 8, !tbaa !31
  %i.ye = srem i64 %i.ua, %i.yd
  %i.yf = load i64, ptr %i.sb, align 8, !tbaa !31
  %i.yg = mul i64 %i.yf, %i.ye
  %invariant.gep799.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.yg
  %invariant.gep801.i.i = getelementptr [2 x i8], ptr %invariant.gep799.i.i, i64 %.0440826.i.i
  %i.yh = icmp samesign ult i64 %i.xw, 64
  %xtraiter567 = and i64 %smin930.i.i, 3          ; 3 uses
  %i.yi = icmp ult i64 %i.xl, 3
  %unroll_iter572 = and i64 %smin930.i.i, 4294967292
  %lcmp.mod569.not = icmp eq i64 %xtraiter567, 0
  %lcmp.mod571 = icmp ne i64 %xtraiter567, 0
  %min.iters.check408 = icmp ult i32 %i.xs, 7
  %min.iters.check410 = icmp ult i32 %i.xs, 31
  %i.yj = and i64 %i.xu, 24
  %n.vec412 = and i64 %i.xu, 8589934560           ; 4 uses
  %i.yk = add nuw nsw i64 %i.xv, %n.vec412
  %cmp.n417 = icmp eq i64 %i.xu, %n.vec412
  %min.epilog.iters.check423 = icmp eq i64 %i.yj, 0
  %n.vec425 = and i64 %i.xu, 8589934584           ; 3 uses
  %i.yl = add nuw nsw i64 %i.xv, %n.vec425
  %cmp.n430 = icmp eq i64 %i.xu, %n.vec425
  br label %.lr.ph790.i.i

._crit_edge797.i.i:                               ; preds = %._crit_edge793.i.i
  br i1 %spec.select514.i.i.lcssa, label %.critedge.i.i, label %.lr.ph812.i.i

.lr.ph790.i.i:                                    ; preds = %._crit_edge793.i.i, %.lr.ph796.i.i
  %indvars.iv902.i.i = phi i64 [ 0, %.lr.ph796.i.i ], [ %indvars.iv.next903.i.i, %._crit_edge793.i.i ] ; 3 uses
  %.0438794.i.i = phi i1 [ true, %.lr.ph796.i.i ], [ %spec.select514.i.i.lcssa, %._crit_edge793.i.i ] ; 2 uses
  %i.ym = add nsw i64 %indvars.iv902.i.i, %i.vb
  %i.yn = mul i64 %i.ym, %i.xy
  %gep.i.i = getelementptr i8, ptr %invariant.gep801.i.i, i64 %i.yn ; 5 uses
  %.idx979.i.i = shl nuw nsw i64 %indvars.iv902.i.i, 8
  %invariant.gep1029.i.i = getelementptr inbounds nuw i8, ptr %i.ux, i64 %.idx979.i.i ; 8 uses
  br i1 %i.yi, label %.epil.preheader565, label %.lr.ph790.i.i.new

.preheader733.i.i.unr-lcssa:                      ; preds = %.lr.ph790.i.i.new
  br i1 %lcmp.mod569.not, label %.preheader733.i.i, label %.epil.preheader565

.epil.preheader565:                               ; preds = %.preheader733.i.i.unr-lcssa, %.lr.ph790.i.i
  %indvars.iv892.i.i.epil.init = phi i64 [ 0, %.lr.ph790.i.i ], [ %indvars.iv.next893.i.i.3, %.preheader733.i.i.unr-lcssa ]
  %.1787.i.i.epil.init = phi i1 [ %.0438794.i.i, %.lr.ph790.i.i ], [ %spec.select514.i.i.3, %.preheader733.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod571)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %.epil.preheader565
  %indvars.iv892.i.i.epil = phi i64 [ %indvars.iv892.i.i.epil.init, %.epil.preheader565 ], [ %indvars.iv.next893.i.i.epil, %bb.bs ] ; 3 uses
  %.1787.i.i.epil = phi i1 [ %.1787.i.i.epil.init, %.epil.preheader565 ], [ %spec.select514.i.i.epil, %bb.bs ]
  %epil.iter568 = phi i64 [ 0, %.epil.preheader565 ], [ %epil.iter568.next, %bb.bs ]
  %i.yo = getelementptr inbounds nuw [2 x i8], ptr %gep.i.i, i64 %indvars.iv892.i.i.epil
  %i.yp = load i16, ptr %i.yo, align 2, !tbaa !41
  %i.yq = zext i16 %i.yp to i64
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.yq
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !43
  %i.yt = fmul float %i.ut, %i.ys                 ; 2 uses
  %gep1030.i.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1029.i.i, i64 %indvars.iv892.i.i.epil
  store float %i.yt, ptr %gep1030.i.i.epil, align 4, !tbaa !43
  %i.yu = fcmp oeq float %i.yt, -inf
  %spec.select514.i.i.epil = select i1 %i.yu, i1 %.1787.i.i.epil, i1 false ; 2 uses
  %indvars.iv.next893.i.i.epil = add nuw nsw i64 %indvars.iv892.i.i.epil, 1
  %epil.iter568.next = add i64 %epil.iter568, 1   ; 2 uses
  %epil.iter568.cmp.not = icmp eq i64 %epil.iter568.next, %xtraiter567
  br i1 %epil.iter568.cmp.not, label %.preheader733.i.i, label %bb.bs, !llvm.loop !1397

.preheader733.i.i:                                ; preds = %bb.bs, %.preheader733.i.i.unr-lcssa
  %spec.select514.i.i.lcssa = phi i1 [ %spec.select514.i.i.3, %.preheader733.i.i.unr-lcssa ], [ %spec.select514.i.i.epil, %bb.bs ] ; 2 uses
  br i1 %i.yh, label %iter.check420, label %._crit_edge793.i.i

iter.check420:                                    ; preds = %.preheader733.i.i
  br i1 %min.iters.check408, label %.lr.ph792.i.i.preheader, label %vector.main.loop.iter.check409

vector.main.loop.iter.check409:                   ; preds = %iter.check420
  br i1 %min.iters.check410, label %vec.epilog.ph424, label %vector.ph411

vector.ph411:                                     ; preds = %vector.main.loop.iter.check409
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1029.i.i, i64 %i.xv
  br label %vector.body413

vector.body413:                                   ; preds = %vector.ph411, %vector.body413
  %index414 = phi i64 [ 0, %vector.ph411 ], [ %index.next415, %vector.body413 ] ; 2 uses
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.yv, i64 %index414 ; 4 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 32
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yw, i64 64
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yw, i64 96
  store <8 x float> splat (float -inf), ptr %i.yw, align 4, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.yx, align 4, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.yy, align 4, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.yz, align 4, !tbaa !43
  %index.next415 = add nuw i64 %index414, 32      ; 2 uses
  %i.za = icmp eq i64 %index.next415, %n.vec412
  br i1 %i.za, label %middle.block416, label %vector.body413, !llvm.loop !1398

middle.block416:                                  ; preds = %vector.body413
  br i1 %cmp.n417, label %._crit_edge793.i.i, label %vec.epilog.iter.check422

vec.epilog.iter.check422:                         ; preds = %middle.block416
  br i1 %min.epilog.iters.check423, label %.lr.ph792.i.i.preheader, label %vec.epilog.ph424, !prof !50

vec.epilog.ph424:                                 ; preds = %vector.main.loop.iter.check409, %vec.epilog.iter.check422
  %vec.epilog.resume.val418 = phi i64 [ %n.vec412, %vec.epilog.iter.check422 ], [ 0, %vector.main.loop.iter.check409 ]
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1029.i.i, i64 %i.xv
  br label %vec.epilog.vector.body426

vec.epilog.vector.body426:                        ; preds = %vec.epilog.vector.body426, %vec.epilog.ph424
  %index427 = phi i64 [ %vec.epilog.resume.val418, %vec.epilog.ph424 ], [ %index.next428, %vec.epilog.vector.body426 ] ; 2 uses
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %index427
  store <8 x float> splat (float -inf), ptr %i.zc, align 4, !tbaa !43
  %index.next428 = add nuw i64 %index427, 8       ; 2 uses
  %i.zd = icmp eq i64 %index.next428, %n.vec425
  br i1 %i.zd, label %vec.epilog.middle.block429, label %vec.epilog.vector.body426, !llvm.loop !1399

vec.epilog.middle.block429:                       ; preds = %vec.epilog.vector.body426
  br i1 %cmp.n430, label %._crit_edge793.i.i, label %.lr.ph792.i.i.preheader

.lr.ph792.i.i.preheader:                          ; preds = %iter.check420, %vec.epilog.iter.check422, %vec.epilog.middle.block429
  %indvars.iv899.i.i.ph = phi i64 [ %i.xv, %iter.check420 ], [ %i.yk, %vec.epilog.iter.check422 ], [ %i.yl, %vec.epilog.middle.block429 ]
  br label %.lr.ph792.i.i

.lr.ph790.i.i.new:                                ; preds = %.lr.ph790.i.i, %.lr.ph790.i.i.new
  %indvars.iv892.i.i = phi i64 [ %indvars.iv.next893.i.i.3, %.lr.ph790.i.i.new ], [ 0, %.lr.ph790.i.i ] ; 6 uses
  %.1787.i.i = phi i1 [ %spec.select514.i.i.3, %.lr.ph790.i.i.new ], [ %.0438794.i.i, %.lr.ph790.i.i ]
  %niter573 = phi i64 [ %niter573.next.3, %.lr.ph790.i.i.new ], [ 0, %.lr.ph790.i.i ]
  %i.ze = getelementptr inbounds nuw [2 x i8], ptr %gep.i.i, i64 %indvars.iv892.i.i
  %i.zf = load i16, ptr %i.ze, align 2, !tbaa !41
  %i.zg = zext i16 %i.zf to i64
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.zg
  %i.zi = load float, ptr %i.zh, align 4, !tbaa !43
  %i.zj = fmul float %i.ut, %i.zi                 ; 2 uses
  %gep1030.i.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1029.i.i, i64 %indvars.iv892.i.i
  store float %i.zj, ptr %gep1030.i.i, align 4, !tbaa !43
  %i.zk = fcmp oeq float %i.zj, -inf
  %indvars.iv.next893.i.i = or disjoint i64 %indvars.iv892.i.i, 1 ; 2 uses
  %i.zl = getelementptr inbounds nuw [2 x i8], ptr %gep.i.i, i64 %indvars.iv.next893.i.i
  %i.zm = load i16, ptr %i.zl, align 2, !tbaa !41
  %i.zn = zext i16 %i.zm to i64
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.zn
  %i.zp = load float, ptr %i.zo, align 4, !tbaa !43
  %i.zq = fmul float %i.ut, %i.zp                 ; 2 uses
  %gep1030.i.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1029.i.i, i64 %indvars.iv.next893.i.i
  store float %i.zq, ptr %gep1030.i.i.1, align 4, !tbaa !43
  %i.zr = fcmp oeq float %i.zq, -inf
  %indvars.iv.next893.i.i.1 = or disjoint i64 %indvars.iv892.i.i, 2 ; 2 uses
  %i.zs = getelementptr inbounds nuw [2 x i8], ptr %gep.i.i, i64 %indvars.iv.next893.i.i.1
  %i.zt = load i16, ptr %i.zs, align 2, !tbaa !41
  %i.zu = zext i16 %i.zt to i64
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.zu
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !43
  %i.zx = fmul float %i.ut, %i.zw                 ; 2 uses
  %gep1030.i.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1029.i.i, i64 %indvars.iv.next893.i.i.1
  store float %i.zx, ptr %gep1030.i.i.2, align 4, !tbaa !43
  %i.zy = fcmp oeq float %i.zx, -inf
  %indvars.iv.next893.i.i.2 = or disjoint i64 %indvars.iv892.i.i, 3 ; 2 uses
  %i.zz = getelementptr inbounds nuw [2 x i8], ptr %gep.i.i, i64 %indvars.iv.next893.i.i.2
  %i.aaa = load i16, ptr %i.zz, align 2, !tbaa !41
  %i.aab = zext i16 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.aab
  %i.aad = load float, ptr %i.aac, align 4, !tbaa !43
  %i.aae = fmul float %i.ut, %i.aad               ; 2 uses
  %gep1030.i.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1029.i.i, i64 %indvars.iv.next893.i.i.2
  store float %i.aae, ptr %gep1030.i.i.3, align 4, !tbaa !43
  %i.aaf = fcmp oeq float %i.aae, -inf
  %i.aag = select i1 %i.aaf, i1 %i.zy, i1 false
  %i.aah = select i1 %i.aag, i1 %i.zr, i1 false
  %i.aai = select i1 %i.aah, i1 %i.zk, i1 false
  %spec.select514.i.i.3 = select i1 %i.aai, i1 %.1787.i.i, i1 false ; 3 uses
  %indvars.iv.next893.i.i.3 = add nuw nsw i64 %indvars.iv892.i.i, 4 ; 2 uses
  %niter573.next.3 = add i64 %niter573, 4         ; 2 uses
  %niter573.ncmp.3 = icmp eq i64 %niter573.next.3, %unroll_iter572
  br i1 %niter573.ncmp.3, label %.preheader733.i.i.unr-lcssa, label %.lr.ph790.i.i.new, !llvm.loop !1400

._crit_edge793.i.i:                               ; preds = %.lr.ph792.i.i, %middle.block416, %vec.epilog.middle.block429, %.preheader733.i.i
  %indvars.iv.next903.i.i = add nuw nsw i64 %indvars.iv902.i.i, 1 ; 2 uses
  %exitcond906.not.i.i = icmp eq i64 %indvars.iv.next903.i.i, %wide.trip.count.i.i
  br i1 %exitcond906.not.i.i, label %._crit_edge797.i.i, label %.lr.ph790.i.i, !llvm.loop !1401

.lr.ph792.i.i:                                    ; preds = %.lr.ph792.i.i.preheader, %.lr.ph792.i.i
  %indvars.iv899.i.i = phi i64 [ %indvars.iv.next900.i.i, %.lr.ph792.i.i ], [ %indvars.iv899.i.i.ph, %.lr.ph792.i.i.preheader ] ; 3 uses
  %gep1032.i.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1029.i.i, i64 %indvars.iv899.i.i
  store float -inf, ptr %gep1032.i.i, align 4, !tbaa !43
  %indvars.iv.next900.i.i = add nuw nsw i64 %indvars.iv899.i.i, 1
  %i.aaj = trunc nuw i64 %indvars.iv899.i.i to i32
  %i.aak = icmp slt i32 %i.aaj, 63
  br i1 %i.aak, label %.lr.ph792.i.i, label %._crit_edge793.i.i, !llvm.loop !1402

.lr.ph812.i.i:                                    ; preds = %._crit_edge797.i.i, %bb.br
  %i.aal = load ptr, ptr %i.sc, align 8, !tbaa !37 ; 3 uses
  %invariant.gep814.i.i = getelementptr i8, ptr %i.aal, i64 %20
  %invariant.gep816.i.i = getelementptr i8, ptr %invariant.gep814.i.i, i64 %i.wx
  %i.aam = getelementptr i8, ptr %i.aal, i64 %20
  %i.aan = getelementptr i8, ptr %i.aam, i64 %i.wx
  %scevgep371 = getelementptr i8, ptr %i.aan, i64 %i.xo
  %i.aao = getelementptr i8, ptr %i.aal, i64 %i.th
  %i.aap = getelementptr i8, ptr %i.aao, i64 %20
  %i.aaq = getelementptr i8, ptr %i.aap, i64 %i.wx
  %i.aar = getelementptr i8, ptr %i.aaq, i64 %i.xo
  %scevgep372 = getelementptr i8, ptr %i.aar, i64 %i.xq
  %bound0 = icmp ult ptr %i.vm, %scevgep372
  %bound1 = icmp ult ptr %scevgep371, %scevgep370
  %found.conflict = and i1 %bound0, %bound1
  %i.aas = or i1 %found.conflict, %stride.check
  br label %bb.bt

._crit_edge813.i.loopexit.i:                      ; preds = %.loopexit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16384) %i.uw, i8 0, i64 16384, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  br label %.preheader158.i.i.i

.preheader158.i.i.i:                              ; preds = %.preheader156.i.thread.i.i, %._crit_edge813.i.loopexit.i
  %i.aat = phi i64 [ 4, %._crit_edge813.i.loopexit.i ], [ %i.acd, %.preheader156.i.thread.i.i ] ; 2 uses
  %.0107202.i.i.i = phi ptr [ %i.uw, %._crit_edge813.i.loopexit.i ], [ %i.acc, %.preheader156.i.thread.i.i ] ; 18 uses
  %.0109200.i.i.i = phi ptr [ %i.uv, %._crit_edge813.i.loopexit.i ], [ %i.acb, %.preheader156.i.thread.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  %.sroa.080.0.copyload.i.i.i.i = load <16 x float>, ptr %.0107202.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0107202.i.i.i, i64 64 ; 2 uses
  %.sroa.6.0.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0107202.i.i.i, i64 128 ; 2 uses
  %.sroa.8.0.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476 ; 2 uses
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0107202.i.i.i, i64 192 ; 2 uses
  %.sroa.10.0.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %.0107202.i.i.i, i64 256 ; 2 uses
  %.sroa.12.256.copyload.i.i.i.i = load <16 x float>, ptr %i.aau, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476 ; 2 uses
  %.sroa.16.256..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0107202.i.i.i, i64 320 ; 2 uses
  %.sroa.16.256.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.16.256..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476 ; 2 uses
  %.sroa.18.256..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0107202.i.i.i, i64 384 ; 2 uses
  %.sroa.18.256.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.18.256..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476 ; 2 uses
  %.sroa.20.256..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0107202.i.i.i, i64 448 ; 2 uses
  %.sroa.20.256.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.20.256..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %.0107202.i.i.i, i64 512 ; 2 uses
  %.sroa.22.512.copyload.i.i.i.i = load <16 x float>, ptr %i.aav, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476 ; 2 uses
  %.sroa.26.512..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0107202.i.i.i, i64 576 ; 2 uses
  %.sroa.26.512.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.26.512..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476 ; 2 uses
  %.sroa.28.512..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0107202.i.i.i, i64 640 ; 2 uses
  %.sroa.28.512.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.28.512..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476 ; 2 uses
  %.sroa.30.512..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0107202.i.i.i, i64 704 ; 2 uses
  %.sroa.30.512.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.30.512..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0107202.i.i.i, i64 768 ; 2 uses
  %.sroa.32.768.copyload.i.i.i.i = load <16 x float>, ptr %i.aaw, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476 ; 2 uses
  %.sroa.36.768..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0107202.i.i.i, i64 832 ; 2 uses
  %.sroa.36.768.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.36.768..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476 ; 2 uses
  %.sroa.38.768..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0107202.i.i.i, i64 896 ; 2 uses
  %.sroa.38.768.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.38.768..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476 ; 2 uses
  %.sroa.40.768..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0107202.i.i.i, i64 960 ; 2 uses
  %.sroa.40.768.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.40.768..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476 ; 2 uses
  br i1 %i.sj, label %.preheader156.i.thread.i.i, label %.preheader52.i.i.i.i

.preheader52.i.i.i.i:                             ; preds = %.preheader158.i.i.i, %.preheader52.i.i.i.i
  %.sroa.40.1.i.i.i.i = phi <16 x float> [ %i.abz, %.preheader52.i.i.i.i ], [ %.sroa.40.768.copyload.i.i.i.i, %.preheader158.i.i.i ]
  %.sroa.38.1.i.i.i.i = phi <16 x float> [ %i.aby, %.preheader52.i.i.i.i ], [ %.sroa.38.768.copyload.i.i.i.i, %.preheader158.i.i.i ]
  %.sroa.36.1.i.i.i.i = phi <16 x float> [ %i.abx, %.preheader52.i.i.i.i ], [ %.sroa.36.768.copyload.i.i.i.i, %.preheader158.i.i.i ]
  %.sroa.32.1.i.i.i.i = phi <16 x float> [ %i.abw, %.preheader52.i.i.i.i ], [ %.sroa.32.768.copyload.i.i.i.i, %.preheader158.i.i.i ]
  %.sroa.30.1.i.i.i.i = phi <16 x float> [ %i.abs, %.preheader52.i.i.i.i ], [ %.sroa.30.512.copyload.i.i.i.i, %.preheader158.i.i.i ]
  %.sroa.28.1.i.i.i.i = phi <16 x float> [ %i.abr, %.preheader52.i.i.i.i ], [ %.sroa.28.512.copyload.i.i.i.i, %.preheader158.i.i.i ]
  %.sroa.26.1.i.i.i.i = phi <16 x float> [ %i.abq, %.preheader52.i.i.i.i ], [ %.sroa.26.512.copyload.i.i.i.i, %.preheader158.i.i.i ]
  %.sroa.22.1.i.i.i.i = phi <16 x float> [ %i.abp, %.preheader52.i.i.i.i ], [ %.sroa.22.512.copyload.i.i.i.i, %.preheader158.i.i.i ]
  %.sroa.20.1.i.i.i.i = phi <16 x float> [ %i.abl, %.preheader52.i.i.i.i ], [ %.sroa.20.256.copyload.i.i.i.i, %.preheader158.i.i.i ]
  %.sroa.18.1.i.i.i.i = phi <16 x float> [ %i.abk, %.preheader52.i.i.i.i ], [ %.sroa.18.256.copyload.i.i.i.i, %.preheader158.i.i.i ]
  %.sroa.16.1.i.i.i.i = phi <16 x float> [ %i.abj, %.preheader52.i.i.i.i ], [ %.sroa.16.256.copyload.i.i.i.i, %.preheader158.i.i.i ]
  %.sroa.12.1.i.i.i.i = phi <16 x float> [ %i.abi, %.preheader52.i.i.i.i ], [ %.sroa.12.256.copyload.i.i.i.i, %.preheader158.i.i.i ]
  %.sroa.10.1.i.i.i.i = phi <16 x float> [ %i.abe, %.preheader52.i.i.i.i ], [ %.sroa.10.0.copyload.i.i.i.i, %.preheader158.i.i.i ]
  %.sroa.8.1.i.i.i.i = phi <16 x float> [ %i.abd, %.preheader52.i.i.i.i ], [ %.sroa.8.0.copyload.i.i.i.i, %.preheader158.i.i.i ]
  %.sroa.6.1.i.i.i.i = phi <16 x float> [ %i.abc, %.preheader52.i.i.i.i ], [ %.sroa.6.0.copyload.i.i.i.i, %.preheader158.i.i.i ]
  %.sroa.080.1.i.i.i.i = phi <16 x float> [ %i.abb, %.preheader52.i.i.i.i ], [ %.sroa.080.0.copyload.i.i.i.i, %.preheader158.i.i.i ]
  %.04760.i.i.i.i = phi i64 [ %i.aca, %.preheader52.i.i.i.i ], [ 0, %.preheader158.i.i.i ] ; 3 uses
  %.idx725.i.i = shl nuw nsw i64 %.04760.i.i.i.i, 8
  %i.aax = getelementptr inbounds nuw i8, ptr %i.vm, i64 %.idx725.i.i ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i = load <16 x float>, ptr %i.aax, align 1, !tbaa !56, !alias.scope !1477, !noalias !1478 ; 4 uses
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aax, i64 64
  %.sroa.7.0.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1477, !noalias !1478 ; 4 uses
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aax, i64 128
  %.sroa.11.0.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1477, !noalias !1478 ; 4 uses
  %.sroa.15.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aax, i64 192
  %.sroa.15.0.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1477, !noalias !1478 ; 4 uses
  %invariant.gep.i.i.i.i = getelementptr [4 x i8], ptr %.0109200.i.i.i, i64 %.04760.i.i.i.i ; 4 uses
  %i.aay = load float, ptr %invariant.gep.i.i.i.i, align 4, !tbaa !43, !alias.scope !1479, !noalias !1480
  %i.aaz = insertelement <16 x float> poison, float %i.aay, i64 0
  %i.aba = shufflevector <16 x float> %i.aaz, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.abb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i.i.i.i, <16 x float> %i.aba, <16 x float> %.sroa.080.1.i.i.i.i) ; 2 uses
  %i.abc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.7.0.copyload.i.i.i.i, <16 x float> %i.aba, <16 x float> %.sroa.6.1.i.i.i.i) ; 2 uses
  %i.abd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.11.0.copyload.i.i.i.i, <16 x float> %i.aba, <16 x float> %.sroa.8.1.i.i.i.i) ; 2 uses
  %i.abe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.15.0.copyload.i.i.i.i, <16 x float> %i.aba, <16 x float> %.sroa.10.1.i.i.i.i) ; 2 uses
  %gep.1.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.si
  %i.abf = load float, ptr %gep.1.i.i.i.i, align 4, !tbaa !43, !alias.scope !1479, !noalias !1480
  %i.abg = insertelement <16 x float> poison, float %i.abf, i64 0
  %i.abh = shufflevector <16 x float> %i.abg, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.abi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i.i.i.i, <16 x float> %i.abh, <16 x float> %.sroa.12.1.i.i.i.i) ; 2 uses
  %i.abj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.7.0.copyload.i.i.i.i, <16 x float> %i.abh, <16 x float> %.sroa.16.1.i.i.i.i) ; 2 uses
  %i.abk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.11.0.copyload.i.i.i.i, <16 x float> %i.abh, <16 x float> %.sroa.18.1.i.i.i.i) ; 2 uses
  %i.abl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.15.0.copyload.i.i.i.i, <16 x float> %i.abh, <16 x float> %.sroa.20.1.i.i.i.i) ; 2 uses
  %gep.2.i.i.i.i = getelementptr i8, ptr %invariant.gep.i.i.i.i, i64 %gep.2.idx.i.i.i.i
  %i.abm = load float, ptr %gep.2.i.i.i.i, align 4, !tbaa !43, !alias.scope !1479, !noalias !1480
  %i.abn = insertelement <16 x float> poison, float %i.abm, i64 0
  %i.abo = shufflevector <16 x float> %i.abn, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.abp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i.i.i.i, <16 x float> %i.abo, <16 x float> %.sroa.22.1.i.i.i.i) ; 2 uses
  %i.abq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.7.0.copyload.i.i.i.i, <16 x float> %i.abo, <16 x float> %.sroa.26.1.i.i.i.i) ; 2 uses
  %i.abr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.11.0.copyload.i.i.i.i, <16 x float> %i.abo, <16 x float> %.sroa.28.1.i.i.i.i) ; 2 uses
  %i.abs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.15.0.copyload.i.i.i.i, <16 x float> %i.abo, <16 x float> %.sroa.30.1.i.i.i.i) ; 2 uses
  %gep.3.i.i.i.i = getelementptr i8, ptr %invariant.gep.i.i.i.i, i64 %gep.3.idx.i.i.i.i
  %i.abt = load float, ptr %gep.3.i.i.i.i, align 4, !tbaa !43, !alias.scope !1479, !noalias !1480
  %i.abu = insertelement <16 x float> poison, float %i.abt, i64 0
  %i.abv = shufflevector <16 x float> %i.abu, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.abw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i.i.i.i, <16 x float> %i.abv, <16 x float> %.sroa.32.1.i.i.i.i) ; 2 uses
  %i.abx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.7.0.copyload.i.i.i.i, <16 x float> %i.abv, <16 x float> %.sroa.36.1.i.i.i.i) ; 2 uses
  %i.aby = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.11.0.copyload.i.i.i.i, <16 x float> %i.abv, <16 x float> %.sroa.38.1.i.i.i.i) ; 2 uses
  %i.abz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.15.0.copyload.i.i.i.i, <16 x float> %i.abv, <16 x float> %.sroa.40.1.i.i.i.i) ; 2 uses
  %i.aca = add nuw nsw i64 %.04760.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.aca, %i.si
  br i1 %exitcond.not.i.i.i.i, label %.preheader156.i.thread.i.i, label %.preheader52.i.i.i.i, !llvm.loop !1411

.preheader156.i.thread.i.i:                       ; preds = %.preheader52.i.i.i.i, %.preheader158.i.i.i
  %.sroa.40.0.i.i.i.i = phi <16 x float> [ %.sroa.40.768.copyload.i.i.i.i, %.preheader158.i.i.i ], [ %i.abz, %.preheader52.i.i.i.i ]
  %.sroa.38.0.i.i.i.i = phi <16 x float> [ %.sroa.38.768.copyload.i.i.i.i, %.preheader158.i.i.i ], [ %i.aby, %.preheader52.i.i.i.i ]
  %.sroa.36.0.i.i.i.i = phi <16 x float> [ %.sroa.36.768.copyload.i.i.i.i, %.preheader158.i.i.i ], [ %i.abx, %.preheader52.i.i.i.i ]
  %.sroa.32.0.i.i.i.i = phi <16 x float> [ %.sroa.32.768.copyload.i.i.i.i, %.preheader158.i.i.i ], [ %i.abw, %.preheader52.i.i.i.i ]
  %.sroa.30.0.i.i.i.i = phi <16 x float> [ %.sroa.30.512.copyload.i.i.i.i, %.preheader158.i.i.i ], [ %i.abs, %.preheader52.i.i.i.i ]
  %.sroa.28.0.i.i.i.i = phi <16 x float> [ %.sroa.28.512.copyload.i.i.i.i, %.preheader158.i.i.i ], [ %i.abr, %.preheader52.i.i.i.i ]
  %.sroa.26.0.i.i.i.i = phi <16 x float> [ %.sroa.26.512.copyload.i.i.i.i, %.preheader158.i.i.i ], [ %i.abq, %.preheader52.i.i.i.i ]
  %.sroa.22.0.i.i.i.i = phi <16 x float> [ %.sroa.22.512.copyload.i.i.i.i, %.preheader158.i.i.i ], [ %i.abp, %.preheader52.i.i.i.i ]
  %.sroa.20.0.i.i.i.i = phi <16 x float> [ %.sroa.20.256.copyload.i.i.i.i, %.preheader158.i.i.i ], [ %i.abl, %.preheader52.i.i.i.i ]
  %.sroa.18.0.i.i.i.i = phi <16 x float> [ %.sroa.18.256.copyload.i.i.i.i, %.preheader158.i.i.i ], [ %i.abk, %.preheader52.i.i.i.i ]
  %.sroa.16.0.i.i.i.i = phi <16 x float> [ %.sroa.16.256.copyload.i.i.i.i, %.preheader158.i.i.i ], [ %i.abj, %.preheader52.i.i.i.i ]
  %.sroa.12.0.i.i.i.i = phi <16 x float> [ %.sroa.12.256.copyload.i.i.i.i, %.preheader158.i.i.i ], [ %i.abi, %.preheader52.i.i.i.i ]
  %.sroa.10.0.i.i.i.i = phi <16 x float> [ %.sroa.10.0.copyload.i.i.i.i, %.preheader158.i.i.i ], [ %i.abe, %.preheader52.i.i.i.i ]
  %.sroa.8.0.i.i.i.i = phi <16 x float> [ %.sroa.8.0.copyload.i.i.i.i, %.preheader158.i.i.i ], [ %i.abd, %.preheader52.i.i.i.i ]
  %.sroa.6.0.i.i.i.i = phi <16 x float> [ %.sroa.6.0.copyload.i.i.i.i, %.preheader158.i.i.i ], [ %i.abc, %.preheader52.i.i.i.i ]
  %.sroa.080.0.i.i.i.i = phi <16 x float> [ %.sroa.080.0.copyload.i.i.i.i, %.preheader158.i.i.i ], [ %i.abb, %.preheader52.i.i.i.i ]
  store <16 x float> %.sroa.080.0.i.i.i.i, ptr %.0107202.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476
  store <16 x float> %.sroa.6.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476
  store <16 x float> %.sroa.8.0.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476
  store <16 x float> %.sroa.10.0.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476
  store <16 x float> %.sroa.12.0.i.i.i.i, ptr %i.aau, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476
  store <16 x float> %.sroa.16.0.i.i.i.i, ptr %.sroa.16.256..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476
  store <16 x float> %.sroa.18.0.i.i.i.i, ptr %.sroa.18.256..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476
  store <16 x float> %.sroa.20.0.i.i.i.i, ptr %.sroa.20.256..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476
  store <16 x float> %.sroa.22.0.i.i.i.i, ptr %i.aav, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476
  store <16 x float> %.sroa.26.0.i.i.i.i, ptr %.sroa.26.512..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476
  store <16 x float> %.sroa.28.0.i.i.i.i, ptr %.sroa.28.512..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476
  store <16 x float> %.sroa.30.0.i.i.i.i, ptr %.sroa.30.512..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476
  store <16 x float> %.sroa.32.0.i.i.i.i, ptr %i.aaw, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476
  store <16 x float> %.sroa.36.0.i.i.i.i, ptr %.sroa.36.768..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476
  store <16 x float> %.sroa.38.0.i.i.i.i, ptr %.sroa.38.768..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476
  store <16 x float> %.sroa.40.0.i.i.i.i, ptr %.sroa.40.768..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1475, !noalias !1476
  %i.acb = getelementptr inbounds [4 x i8], ptr %.0109200.i.i.i, i64 %i.sh
  %i.acc = getelementptr inbounds nuw i8, ptr %.0107202.i.i.i, i64 1024
  %i.acd = add nuw nsw i64 %i.aat, 4
  %i.ace = icmp samesign ult i64 %i.aat, 61
  br i1 %i.ace, label %.preheader158.i.i.i, label %.preheader27.i.i.i, !llvm.loop !1412

.preheader27.i.i.i:                               ; preds = %.preheader156.i.thread.i.i, %.preheader27.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.preheader27.i.i.i ], [ 0, %.preheader156.i.thread.i.i ] ; 3 uses
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv.i.i.i ; 5 uses
  %i.acg = load <16 x float>, ptr %i.acf, align 1, !tbaa !56
  %i.ach = fmul <16 x float> %i.sl, %i.acg
  store <16 x float> %i.ach, ptr %i.acf, align 1, !tbaa !56
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acf, i64 64 ; 2 uses
  %i.acj = load <16 x float>, ptr %i.aci, align 1, !tbaa !56
  %i.ack = fmul <16 x float> %i.sl, %i.acj
  store <16 x float> %i.ack, ptr %i.aci, align 1, !tbaa !56
  %i.acl = getelementptr inbounds nuw i8, ptr %i.acf, i64 128 ; 2 uses
  %i.acm = load <16 x float>, ptr %i.acl, align 1, !tbaa !56
  %i.acn = fmul <16 x float> %i.sl, %i.acm
  store <16 x float> %i.acn, ptr %i.acl, align 1, !tbaa !56
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acf, i64 192 ; 2 uses
  %i.acp = load <16 x float>, ptr %i.aco, align 1, !tbaa !56
  %i.acq = fmul <16 x float> %i.sl, %i.acp
  store <16 x float> %i.acq, ptr %i.aco, align 1, !tbaa !56
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 64 ; 2 uses
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv.next.i.i.i ; 5 uses
  %i.acs = load <16 x float>, ptr %i.acr, align 1, !tbaa !56
  %i.act = fmul <16 x float> %i.sl, %i.acs
  store <16 x float> %i.act, ptr %i.acr, align 1, !tbaa !56
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acr, i64 64 ; 2 uses
  %i.acv = load <16 x float>, ptr %i.acu, align 1, !tbaa !56
  %i.acw = fmul <16 x float> %i.sl, %i.acv
  store <16 x float> %i.acw, ptr %i.acu, align 1, !tbaa !56
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acr, i64 128 ; 2 uses
  %i.acy = load <16 x float>, ptr %i.acx, align 1, !tbaa !56
  %i.acz = fmul <16 x float> %i.sl, %i.acy
  store <16 x float> %i.acz, ptr %i.acx, align 1, !tbaa !56
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acr, i64 192 ; 2 uses
  %i.adb = load <16 x float>, ptr %i.ada, align 1, !tbaa !56
  %i.adc = fmul <16 x float> %i.sl, %i.adb
  store <16 x float> %i.adc, ptr %i.ada, align 1, !tbaa !56
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 128
  %i.add = icmp samesign ult i64 %indvars.iv.next.i.i.i, 4032
  br i1 %i.add, label %.preheader27.i.i.i, label %_ZL18ggml_vec_scale_f32iPff.exit.i264.i, !llvm.loop !2

_ZL18ggml_vec_scale_f32iPff.exit.i264.i:          ; preds = %.preheader27.i.i.i
  %i.ade = icmp slt i64 %i.xw, 64
  br i1 %i.ade, label %iter.check356.preheader, label %.loopexit738.i.i

iter.check356.preheader:                          ; preds = %_ZL18ggml_vec_scale_f32iPff.exit.i264.i
  %min.iters.check345 = icmp ult i32 %i.xs, 7
  %min.iters.check347 = icmp ult i32 %i.xs, 31
  %i.adf = and i64 %i.xu, 24
  %n.vec349 = and i64 %i.xu, 8589934560           ; 4 uses
  %i.adg = add nuw nsw i64 %i.xv, %n.vec349
  %cmp.n354 = icmp eq i64 %i.xu, %n.vec349
  %min.epilog.iters.check359 = icmp eq i64 %i.adf, 0
  %n.vec361 = and i64 %i.xu, 8589934584           ; 3 uses
  %i.adh = add nuw nsw i64 %i.xv, %n.vec361
  %cmp.n366 = icmp eq i64 %i.xu, %n.vec361
  br label %iter.check356

bb.bt:                                            ; preds = %.loopexit.i.i, %.lr.ph812.i.i
  %indvars.iv909.i.i = phi i64 [ 0, %.lr.ph812.i.i ], [ %indvars.iv.next910.i.i, %.loopexit.i.i ] ; 3 uses
  %i.adi = add nuw nsw i64 %indvars.iv909.i.i, %.0440826.i.i
  %i.adj = mul i64 %i.adi, %i.pe
  %gep817.i.i = getelementptr i8, ptr %invariant.gep816.i.i, i64 %i.adj ; 16 uses
  %invariant.gep806.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.vm, i64 %indvars.iv909.i.i ; 19 uses
  br i1 %i.sd, label %.preheader730.i.i, label %.preheader731.i.i

.preheader731.i.i:                                ; preds = %bb.bt
  br i1 %i.se, label %iter.check391, label %.loopexit.i.i

iter.check391:                                    ; preds = %.preheader731.i.i
  %brmerge650 = select i1 %min.iters.check373, i1 true, i1 %i.aas
  br i1 %brmerge650, label %.lr.ph805.i.i.preheader, label %vector.main.loop.iter.check374

vector.main.loop.iter.check374:                   ; preds = %iter.check391
  br i1 %min.iters.check375, label %vec.epilog.ph395, label %vector.body378

vector.body378:                                   ; preds = %vector.main.loop.iter.check374, %vector.body378
  %index379 = phi i64 [ %index.next387, %vector.body378 ], [ 0, %vector.main.loop.iter.check374 ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body378 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.main.loop.iter.check374 ] ; 5 uses
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %gep817.i.i, i64 %index379 ; 4 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 32
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adk, i64 64
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adk, i64 96
  %wide.load380 = load <8 x float>, ptr %i.adk, align 4, !tbaa !43, !alias.scope !1481
  %wide.load381 = load <8 x float>, ptr %i.adl, align 4, !tbaa !43, !alias.scope !1481
  %wide.load382 = load <8 x float>, ptr %i.adm, align 4, !tbaa !43, !alias.scope !1481
  %wide.load383 = load <8 x float>, ptr %i.adn, align 4, !tbaa !43, !alias.scope !1481
  %i.ado = shl nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %step.add = shl <8 x i64> %vec.ind, splat (i64 8)
  %i.adp = add <8 x i64> %step.add, splat (i64 2048)
  %step.add.2 = shl <8 x i64> %vec.ind, splat (i64 8)
  %i.adq = add <8 x i64> %step.add.2, splat (i64 4096)
  %step.add.3 = shl <8 x i64> %vec.ind, splat (i64 8)
  %i.adr = add <8 x i64> %step.add.3, splat (i64 6144)
  %wide.gep = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, <8 x i64> %i.ado
  %wide.gep384 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, <8 x i64> %i.adp
  %wide.gep385 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, <8 x i64> %i.adq
  %wide.gep386 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, <8 x i64> %i.adr
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load380, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1482, !noalias !1481
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load381, <8 x ptr> align 4 %wide.gep384, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1482, !noalias !1481
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load382, <8 x ptr> align 4 %wide.gep385, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1482, !noalias !1481
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load383, <8 x ptr> align 4 %wide.gep386, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1482, !noalias !1481
  %index.next387 = add nuw i64 %index379, 32      ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.ads = icmp eq i64 %index.next387, %n.vec377
  br i1 %i.ads, label %middle.block388, label %vector.body378, !llvm.loop !1416

middle.block388:                                  ; preds = %vector.body378
  br i1 %cmp.n389, label %.loopexit.i.i, label %vec.epilog.iter.check393

vec.epilog.iter.check393:                         ; preds = %middle.block388
  br i1 %min.epilog.iters.check394, label %.lr.ph805.i.i.preheader, label %vec.epilog.ph395, !prof !50

vec.epilog.ph395:                                 ; preds = %vector.main.loop.iter.check374, %vec.epilog.iter.check393
  %vec.epilog.resume.val390 = phi i64 [ %n.vec377, %vec.epilog.iter.check393 ], [ 0, %vector.main.loop.iter.check374 ] ; 2 uses
  %broadcast.splatinsert397 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val390, i64 0
  %broadcast.splat398 = shufflevector <8 x i64> %broadcast.splatinsert397, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i64> %broadcast.splat398, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body399

vec.epilog.vector.body399:                        ; preds = %vec.epilog.vector.body399, %vec.epilog.ph395
  %index400 = phi i64 [ %vec.epilog.resume.val390, %vec.epilog.ph395 ], [ %index.next404, %vec.epilog.vector.body399 ] ; 2 uses
  %vec.ind401 = phi <8 x i64> [ %induction, %vec.epilog.ph395 ], [ %vec.ind.next405, %vec.epilog.vector.body399 ] ; 2 uses
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %gep817.i.i, i64 %index400
  %wide.load402 = load <8 x float>, ptr %i.adt, align 4, !tbaa !43, !alias.scope !1481
  %i.adu = shl nuw nsw <8 x i64> %vec.ind401, splat (i64 8)
  %wide.gep403 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, <8 x i64> %i.adu
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load402, <8 x ptr> align 4 %wide.gep403, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1482, !noalias !1481
  %index.next404 = add nuw i64 %index400, 8       ; 2 uses
  %vec.ind.next405 = add nuw nsw <8 x i64> %vec.ind401, splat (i64 8)
  %i.adv = icmp eq i64 %index.next404, %n.vec396
  br i1 %i.adv, label %vec.epilog.middle.block406, label %vec.epilog.vector.body399, !llvm.loop !1417

vec.epilog.middle.block406:                       ; preds = %vec.epilog.vector.body399
  br i1 %cmp.n407, label %.loopexit.i.i, label %.lr.ph805.i.i.preheader

.lr.ph805.i.i.preheader:                          ; preds = %iter.check391, %vec.epilog.iter.check393, %vec.epilog.middle.block406
  %.0432804.i.i.ph = phi i64 [ 0, %iter.check391 ], [ %n.vec396, %vec.epilog.middle.block406 ], [ %n.vec377, %vec.epilog.iter.check393 ] ; 3 uses
  %i.adw = sub i64 %i.ti, %.0432804.i.i.ph
  br i1 %lcmp.mod575.not, label %.lr.ph805.i.i.prol.loopexit, label %.lr.ph805.i.i.prol

.lr.ph805.i.i.prol:                               ; preds = %.lr.ph805.i.i.preheader, %.lr.ph805.i.i.prol
  %.0432804.i.i.prol = phi i64 [ %i.adz, %.lr.ph805.i.i.prol ], [ %.0432804.i.i.ph, %.lr.ph805.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph805.i.i.prol ], [ 0, %.lr.ph805.i.i.preheader ]
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %gep817.i.i, i64 %.0432804.i.i.prol
  %i.ady = load float, ptr %i.adx, align 4, !tbaa !43
  %.idx.i.i.prol = shl nuw nsw i64 %.0432804.i.i.prol, 8
  %gep803.i.i.prol = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx.i.i.prol
  store float %i.ady, ptr %gep803.i.i.prol, align 4, !tbaa !43
  %i.adz = add nuw nsw i64 %.0432804.i.i.prol, 1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter574
  br i1 %prol.iter.cmp.not, label %.lr.ph805.i.i.prol.loopexit, label %.lr.ph805.i.i.prol, !llvm.loop !1418

.lr.ph805.i.i.prol.loopexit:                      ; preds = %.lr.ph805.i.i.prol, %.lr.ph805.i.i.preheader
  %.0432804.i.i.unr = phi i64 [ %.0432804.i.i.ph, %.lr.ph805.i.i.preheader ], [ %i.adz, %.lr.ph805.i.i.prol ]
  %i.aea = icmp ult i64 %i.adw, 7
  br i1 %i.aea, label %.loopexit.i.i, label %.lr.ph805.i.i

.preheader730.i.i:                                ; preds = %bb.bt
  br i1 %i.se, label %.lr.ph809.i.i.preheader, label %.loopexit.i.i

.lr.ph809.i.i.preheader:                          ; preds = %.preheader730.i.i
  br i1 %i.tk, label %.lr.ph809.i.i.epil.preheader, label %.lr.ph809.i.i

.lr.ph809.i.i:                                    ; preds = %.lr.ph809.i.i.preheader, %.lr.ph809.i.i
  %.0433808.i.i = phi i64 [ %i.aey, %.lr.ph809.i.i ], [ 0, %.lr.ph809.i.i.preheader ] ; 6 uses
  %niter581 = phi i64 [ %niter581.next.3, %.lr.ph809.i.i ], [ 0, %.lr.ph809.i.i.preheader ]
  %i.aeb = getelementptr inbounds nuw [2 x i8], ptr %gep817.i.i, i64 %.0433808.i.i
  %i.aec = load i16, ptr %i.aeb, align 2, !tbaa !41
  %i.aed = zext i16 %i.aec to i64
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.aed
  %i.aef = load float, ptr %i.aee, align 4, !tbaa !43
  %.idx512.i.i = shl nuw nsw i64 %.0433808.i.i, 8
  %gep807.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx512.i.i
  store float %i.aef, ptr %gep807.i.i, align 4, !tbaa !43
  %i.aeg = or disjoint i64 %.0433808.i.i, 1       ; 2 uses
  %i.aeh = getelementptr inbounds nuw [2 x i8], ptr %gep817.i.i, i64 %i.aeg
  %i.aei = load i16, ptr %i.aeh, align 2, !tbaa !41
  %i.aej = zext i16 %i.aei to i64
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.aej
  %i.ael = load float, ptr %i.aek, align 4, !tbaa !43
  %.idx512.i.i.1 = shl nuw nsw i64 %i.aeg, 8
  %gep807.i.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx512.i.i.1
  store float %i.ael, ptr %gep807.i.i.1, align 4, !tbaa !43
  %i.aem = or disjoint i64 %.0433808.i.i, 2       ; 2 uses
  %i.aen = getelementptr inbounds nuw [2 x i8], ptr %gep817.i.i, i64 %i.aem
  %i.aeo = load i16, ptr %i.aen, align 2, !tbaa !41
  %i.aep = zext i16 %i.aeo to i64
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.aep
  %i.aer = load float, ptr %i.aeq, align 4, !tbaa !43
  %.idx512.i.i.2 = shl nuw nsw i64 %i.aem, 8
  %gep807.i.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx512.i.i.2
  store float %i.aer, ptr %gep807.i.i.2, align 4, !tbaa !43
  %i.aes = or disjoint i64 %.0433808.i.i, 3       ; 2 uses
  %i.aet = getelementptr inbounds nuw [2 x i8], ptr %gep817.i.i, i64 %i.aes
  %i.aeu = load i16, ptr %i.aet, align 2, !tbaa !41
  %i.aev = zext i16 %i.aeu to i64
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.aev
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !43
  %.idx512.i.i.3 = shl nuw nsw i64 %i.aes, 8
  %gep807.i.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx512.i.i.3
  store float %i.aex, ptr %gep807.i.i.3, align 4, !tbaa !43
  %i.aey = add nuw nsw i64 %.0433808.i.i, 4       ; 2 uses
  %niter581.next.3 = add nuw nsw i64 %niter581, 4 ; 2 uses
  %niter581.ncmp.3 = icmp eq i64 %niter581.next.3, %unroll_iter580
  br i1 %niter581.ncmp.3, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph809.i.i, !llvm.loop !1419

.lr.ph805.i.i:                                    ; preds = %.lr.ph805.i.i.prol.loopexit, %.lr.ph805.i.i
  %.0432804.i.i = phi i64 [ %i.afw, %.lr.ph805.i.i ], [ %.0432804.i.i.unr, %.lr.ph805.i.i.prol.loopexit ] ; 10 uses
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %gep817.i.i, i64 %.0432804.i.i
  %i.afa = load float, ptr %i.aez, align 4, !tbaa !43
  %.idx.i.i = shl nuw nsw i64 %.0432804.i.i, 8
  %gep803.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx.i.i
  store float %i.afa, ptr %gep803.i.i, align 4, !tbaa !43
  %i.afb = add nuw nsw i64 %.0432804.i.i, 1       ; 2 uses
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %gep817.i.i, i64 %i.afb
  %i.afd = load float, ptr %i.afc, align 4, !tbaa !43
  %.idx.i.i.1 = shl nuw nsw i64 %i.afb, 8
  %gep803.i.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx.i.i.1
  store float %i.afd, ptr %gep803.i.i.1, align 4, !tbaa !43
  %i.afe = add nuw nsw i64 %.0432804.i.i, 2       ; 2 uses
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %gep817.i.i, i64 %i.afe
  %i.afg = load float, ptr %i.aff, align 4, !tbaa !43
  %.idx.i.i.2 = shl nuw nsw i64 %i.afe, 8
  %gep803.i.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx.i.i.2
  store float %i.afg, ptr %gep803.i.i.2, align 4, !tbaa !43
  %i.afh = add nuw nsw i64 %.0432804.i.i, 3       ; 2 uses
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %gep817.i.i, i64 %i.afh
  %i.afj = load float, ptr %i.afi, align 4, !tbaa !43
  %.idx.i.i.3 = shl nuw nsw i64 %i.afh, 8
  %gep803.i.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx.i.i.3
  store float %i.afj, ptr %gep803.i.i.3, align 4, !tbaa !43
  %i.afk = add nuw nsw i64 %.0432804.i.i, 4       ; 2 uses
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %gep817.i.i, i64 %i.afk
  %i.afm = load float, ptr %i.afl, align 4, !tbaa !43
  %.idx.i.i.4 = shl nuw nsw i64 %i.afk, 8
  %gep803.i.i.4 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx.i.i.4
  store float %i.afm, ptr %gep803.i.i.4, align 4, !tbaa !43
  %i.afn = add nuw nsw i64 %.0432804.i.i, 5       ; 2 uses
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %gep817.i.i, i64 %i.afn
  %i.afp = load float, ptr %i.afo, align 4, !tbaa !43
  %.idx.i.i.5 = shl nuw nsw i64 %i.afn, 8
  %gep803.i.i.5 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx.i.i.5
  store float %i.afp, ptr %gep803.i.i.5, align 4, !tbaa !43
  %i.afq = add nuw nsw i64 %.0432804.i.i, 6       ; 2 uses
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %gep817.i.i, i64 %i.afq
  %i.afs = load float, ptr %i.afr, align 4, !tbaa !43
  %.idx.i.i.6 = shl nuw nsw i64 %i.afq, 8
  %gep803.i.i.6 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx.i.i.6
  store float %i.afs, ptr %gep803.i.i.6, align 4, !tbaa !43
  %i.aft = add nuw nsw i64 %.0432804.i.i, 7       ; 2 uses
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %gep817.i.i, i64 %i.aft
  %i.afv = load float, ptr %i.afu, align 4, !tbaa !43
  %.idx.i.i.7 = shl nuw nsw i64 %i.aft, 8
  %gep803.i.i.7 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx.i.i.7
  store float %i.afv, ptr %gep803.i.i.7, align 4, !tbaa !43
  %i.afw = add nuw nsw i64 %.0432804.i.i, 8       ; 2 uses
  %exitcond907.not.i.i.7 = icmp eq i64 %i.afw, %i.oj
  br i1 %exitcond907.not.i.i.7, label %.loopexit.i.i, label %.lr.ph805.i.i, !llvm.loop !1420

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph809.i.i
end_hunk_0
begin_hunk_1_@ggml_compute_forward_flash_attn_ext:bb.a
  %i.apy = fcmp ogt float %.010..i.50.i.i, %i.apx
  %.010..i.51.i.i = select i1 %i.apy, float %.010..i.50.i.i, float %i.apx ; 2 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %i.aka, i64 208
  %i.aqa = load float, ptr %i.apz, align 4, !tbaa !43 ; 2 uses
  %i.aqb = fcmp ogt float %.010..i.51.i.i, %i.aqa
  %.010..i.52.i.i = select i1 %i.aqb, float %.010..i.51.i.i, float %i.aqa ; 2 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aka, i64 212
  %i.aqd = load float, ptr %i.aqc, align 4, !tbaa !43 ; 2 uses
  %i.aqe = fcmp ogt float %.010..i.52.i.i, %i.aqd
  %.010..i.53.i.i = select i1 %i.aqe, float %.010..i.52.i.i, float %i.aqd ; 2 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aka, i64 216
  %i.aqg = load float, ptr %i.aqf, align 4, !tbaa !43 ; 2 uses
  %i.aqh = fcmp ogt float %.010..i.53.i.i, %i.aqg
  %.010..i.54.i.i = select i1 %i.aqh, float %.010..i.53.i.i, float %i.aqg ; 2 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aka, i64 220
  %i.aqj = load float, ptr %i.aqi, align 4, !tbaa !43 ; 2 uses
  %i.aqk = fcmp ogt float %.010..i.54.i.i, %i.aqj
  %.010..i.55.i.i = select i1 %i.aqk, float %.010..i.54.i.i, float %i.aqj ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aka, i64 224
  %i.aqm = load float, ptr %i.aql, align 4, !tbaa !43 ; 2 uses
  %i.aqn = fcmp ogt float %.010..i.55.i.i, %i.aqm
  %.010..i.56.i.i = select i1 %i.aqn, float %.010..i.55.i.i, float %i.aqm ; 2 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aka, i64 228
  %i.aqp = load float, ptr %i.aqo, align 4, !tbaa !43 ; 2 uses
  %i.aqq = fcmp ogt float %.010..i.56.i.i, %i.aqp
  %.010..i.57.i.i = select i1 %i.aqq, float %.010..i.56.i.i, float %i.aqp ; 2 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aka, i64 232
  %i.aqs = load float, ptr %i.aqr, align 4, !tbaa !43 ; 2 uses
  %i.aqt = fcmp ogt float %.010..i.57.i.i, %i.aqs
  %.010..i.58.i.i = select i1 %i.aqt, float %.010..i.57.i.i, float %i.aqs ; 2 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aka, i64 236
  %i.aqv = load float, ptr %i.aqu, align 4, !tbaa !43 ; 2 uses
  %i.aqw = fcmp ogt float %.010..i.58.i.i, %i.aqv
  %.010..i.59.i.i = select i1 %i.aqw, float %.010..i.58.i.i, float %i.aqv ; 2 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aka, i64 240
  %i.aqy = load float, ptr %i.aqx, align 4, !tbaa !43 ; 2 uses
  %i.aqz = fcmp ogt float %.010..i.59.i.i, %i.aqy
  %.010..i.60.i.i = select i1 %i.aqz, float %.010..i.59.i.i, float %i.aqy ; 2 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aka, i64 244
  %i.arb = load float, ptr %i.ara, align 4, !tbaa !43 ; 2 uses
  %i.arc = fcmp ogt float %.010..i.60.i.i, %i.arb
  %.010..i.61.i.i = select i1 %i.arc, float %.010..i.60.i.i, float %i.arb ; 2 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aka, i64 248
  %i.are = load float, ptr %i.ard, align 4, !tbaa !43 ; 2 uses
  %i.arf = fcmp ogt float %.010..i.61.i.i, %i.are
  %.010..i.62.i.i = select i1 %i.arf, float %.010..i.61.i.i, float %i.are ; 2 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %i.aka, i64 252
  %i.arh = load float, ptr %i.arg, align 4, !tbaa !43 ; 2 uses
  %i.ari = fcmp ogt float %.010..i.62.i.i, %i.arh
  %.010..i.63.i.i = select i1 %i.ari, float %.010..i.62.i.i, float %i.arh ; 2 uses
  %i.arj = fcmp oeq float %.010..i.63.i.i, -inf
  br i1 %i.arj, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.lr.ph.i530.i.i
  %i.ark = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv923.i.i
  store i8 1, ptr %i.ark, align 1, !tbaa !1483
  br label %bb.by

bb.bv:                                            ; preds = %.lr.ph.i530.i.i
  %i.arl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv923.i.i ; 2 uses
  %i.arm = load float, ptr %i.arl, align 4, !tbaa !43 ; 3 uses
  %i.arn = tail call nsz float @llvm.maxnum.f32(float %i.arm, float %.010..i.63.i.i) ; 4 uses
  %i.aro = fcmp ogt float %i.arn, %i.arm
  br i1 %i.aro, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.arp = fsub float %i.arm, %i.arn
  %i.arq = tail call float @expf(float noundef %i.arp) #18 ; 5 uses
  %i.arr = mul nsw i64 %indvars.iv923.i.i, %i.pt
  %i.ars = getelementptr inbounds [4 x i8], ptr %i.uy, i64 %i.arr ; 4 uses
  %i.art = insertelement <16 x float> poison, float %i.arq, i64 0
  %i.aru = shufflevector <16 x float> %i.art, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br i1 %i.sq, label %.preheader27.i539.i.i, label %.preheader.i535.i.i

.preheader27.i539.i.i:                            ; preds = %bb.bw, %.preheader27.i539.i.i
  %indvars.iv.i540.i.i = phi i64 [ %indvars.iv.next.i541.i.i, %.preheader27.i539.i.i ], [ 0, %bb.bw ] ; 2 uses
  %i.arv = getelementptr inbounds nuw [4 x i8], ptr %i.ars, i64 %indvars.iv.i540.i.i ; 5 uses
  %i.arw = load <16 x float>, ptr %i.arv, align 1, !tbaa !56
  %i.arx = fmul <16 x float> %i.aru, %i.arw
  store <16 x float> %i.arx, ptr %i.arv, align 1, !tbaa !56
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arv, i64 64 ; 2 uses
  %i.arz = load <16 x float>, ptr %i.ary, align 1, !tbaa !56
  %i.asa = fmul <16 x float> %i.aru, %i.arz
  store <16 x float> %i.asa, ptr %i.ary, align 1, !tbaa !56
  %i.asb = getelementptr inbounds nuw i8, ptr %i.arv, i64 128 ; 2 uses
  %i.asc = load <16 x float>, ptr %i.asb, align 1, !tbaa !56
  %i.asd = fmul <16 x float> %i.aru, %i.asc
  store <16 x float> %i.asd, ptr %i.asb, align 1, !tbaa !56
  %i.ase = getelementptr inbounds nuw i8, ptr %i.arv, i64 192 ; 2 uses
  %i.asf = load <16 x float>, ptr %i.ase, align 1, !tbaa !56
  %i.asg = fmul <16 x float> %i.aru, %i.asf
  store <16 x float> %i.asg, ptr %i.ase, align 1, !tbaa !56
  %indvars.iv.next.i541.i.i = add nuw nsw i64 %indvars.iv.i540.i.i, 64 ; 2 uses
  %i.ash = icmp samesign ult i64 %indvars.iv.next.i541.i.i, %i.sr
  br i1 %i.ash, label %.preheader27.i539.i.i, label %.preheader.i535.i.i, !llvm.loop !2

.preheader.i535.i.i:                              ; preds = %.preheader27.i539.i.i, %bb.bw
  br i1 %.not.i.i260.i, label %_ZL18ggml_vec_scale_f32iPff.exit542.i.i, label %iter.check296

iter.check296:                                    ; preds = %.preheader.i535.i.i
  br i1 %min.iters.check279, label %.lr.ph.i537.i.i.preheader, label %vector.main.loop.iter.check280

vector.main.loop.iter.check280:                   ; preds = %iter.check296
  br i1 %min.iters.check281, label %vec.epilog.ph300, label %vector.ph282

vector.ph282:                                     ; preds = %vector.main.loop.iter.check280
  %broadcast.splatinsert284 = insertelement <8 x float> poison, float %i.arq, i64 0
  %broadcast.splat285 = shufflevector <8 x float> %broadcast.splatinsert284, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ars, i64 %i.ss
  br label %vector.body286

vector.body286:                                   ; preds = %vector.ph282, %vector.body286
  %index287 = phi i64 [ 0, %vector.ph282 ], [ %index.next292, %vector.body286 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index287 ; 5 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %gep, i64 32 ; 2 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %gep, i64 64 ; 2 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %gep, i64 96 ; 2 uses
  %wide.load288 = load <8 x float>, ptr %gep, align 4, !tbaa !43
  %wide.load289 = load <8 x float>, ptr %i.asi, align 4, !tbaa !43
  %wide.load290 = load <8 x float>, ptr %i.asj, align 4, !tbaa !43
  %wide.load291 = load <8 x float>, ptr %i.ask, align 4, !tbaa !43
  %i.asl = fmul <8 x float> %broadcast.splat285, %wide.load288
  %i.asm = fmul <8 x float> %broadcast.splat285, %wide.load289
  %i.asn = fmul <8 x float> %broadcast.splat285, %wide.load290
  %i.aso = fmul <8 x float> %broadcast.splat285, %wide.load291
  store <8 x float> %i.asl, ptr %gep, align 4, !tbaa !43
  store <8 x float> %i.asm, ptr %i.asi, align 4, !tbaa !43
  store <8 x float> %i.asn, ptr %i.asj, align 4, !tbaa !43
  store <8 x float> %i.aso, ptr %i.ask, align 4, !tbaa !43
  %index.next292 = add nuw i64 %index287, 32      ; 2 uses
  %i.asp = icmp eq i64 %index.next292, %n.vec283
  br i1 %i.asp, label %middle.block293, label %vector.body286, !llvm.loop !1431

middle.block293:                                  ; preds = %vector.body286
  br i1 %cmp.n294, label %_ZL18ggml_vec_scale_f32iPff.exit542.i.i, label %vec.epilog.iter.check298

vec.epilog.iter.check298:                         ; preds = %middle.block293
  br i1 %min.epilog.iters.check299, label %.lr.ph.i537.i.i.preheader, label %vec.epilog.ph300, !prof !50

vec.epilog.ph300:                                 ; preds = %vector.main.loop.iter.check280, %vec.epilog.iter.check298
  %vec.epilog.resume.val295 = phi i64 [ %n.vec283, %vec.epilog.iter.check298 ], [ 0, %vector.main.loop.iter.check280 ]
  %broadcast.splatinsert302 = insertelement <8 x float> poison, float %i.arq, i64 0
  %broadcast.splat303 = shufflevector <8 x float> %broadcast.splatinsert302, <8 x float> poison, <8 x i32> zeroinitializer
  %invariant.gep636 = getelementptr [4 x i8], ptr %i.ars, i64 %i.ss
  br label %vec.epilog.vector.body304

vec.epilog.vector.body304:                        ; preds = %vec.epilog.vector.body304, %vec.epilog.ph300
  %index305 = phi i64 [ %vec.epilog.resume.val295, %vec.epilog.ph300 ], [ %index.next307, %vec.epilog.vector.body304 ] ; 2 uses
  %gep637 = getelementptr [4 x i8], ptr %invariant.gep636, i64 %index305 ; 2 uses
  %wide.load306 = load <8 x float>, ptr %gep637, align 4, !tbaa !43
  %i.asq = fmul <8 x float> %broadcast.splat303, %wide.load306
  store <8 x float> %i.asq, ptr %gep637, align 4, !tbaa !43
  %index.next307 = add nuw i64 %index305, 8       ; 2 uses
  %i.asr = icmp eq i64 %index.next307, %n.vec301
  br i1 %i.asr, label %vec.epilog.middle.block308, label %vec.epilog.vector.body304, !llvm.loop !1432

vec.epilog.middle.block308:                       ; preds = %vec.epilog.vector.body304
  br i1 %cmp.n309, label %_ZL18ggml_vec_scale_f32iPff.exit542.i.i, label %.lr.ph.i537.i.i.preheader

.lr.ph.i537.i.i.preheader:                        ; preds = %iter.check296, %vec.epilog.iter.check298, %vec.epilog.middle.block308
  %indvars.iv33.i.i.i.ph = phi i64 [ %i.ss, %iter.check296 ], [ %i.tm, %vec.epilog.iter.check298 ], [ %i.to, %vec.epilog.middle.block308 ]
  br label %.lr.ph.i537.i.i

.lr.ph.i537.i.i:                                  ; preds = %.lr.ph.i537.i.i.preheader, %.lr.ph.i537.i.i
  %indvars.iv33.i.i.i = phi i64 [ %indvars.iv.next34.i.i.i, %.lr.ph.i537.i.i ], [ %indvars.iv33.i.i.i.ph, %.lr.ph.i537.i.i.preheader ] ; 2 uses
  %i.ass = getelementptr inbounds [4 x i8], ptr %i.ars, i64 %indvars.iv33.i.i.i ; 2 uses
  %i.ast = load float, ptr %i.ass, align 4, !tbaa !43
  %i.asu = fmul float %i.arq, %i.ast
  store float %i.asu, ptr %i.ass, align 4, !tbaa !43
  %indvars.iv.next34.i.i.i = add nsw i64 %indvars.iv33.i.i.i, 1 ; 2 uses
  %i.asv = icmp slt i64 %indvars.iv.next34.i.i.i, %i.st
  br i1 %i.asv, label %.lr.ph.i537.i.i, label %_ZL18ggml_vec_scale_f32iPff.exit542.i.i, !llvm.loop !1433

_ZL18ggml_vec_scale_f32iPff.exit542.i.i:          ; preds = %.lr.ph.i537.i.i, %middle.block293, %vec.epilog.middle.block308, %.preheader.i535.i.i
  %i.asw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv923.i.i ; 2 uses
  %i.asx = load float, ptr %i.asw, align 4, !tbaa !43
  %i.asy = fmul float %i.arq, %i.asx
  store float %i.asy, ptr %i.asw, align 4, !tbaa !43
  br label %bb.bx

bb.bx:                                            ; preds = %_ZL18ggml_vec_scale_f32iPff.exit542.i.i, %bb.bv
  store float %i.arn, ptr %i.arl, align 4, !tbaa !43
  %i.asz = tail call double @ggml_vec_soft_max_f32(i32 noundef 64, ptr noundef nonnull %i.aka, ptr noundef nonnull %i.aka, float noundef %i.arn)
  %i.ata = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv923.i.i ; 2 uses
  %i.atb = load float, ptr %i.ata, align 4, !tbaa !43
  %i.atc = fpext float %i.atb to double
  %i.atd = fadd double %i.asz, %i.atc
  %i.ate = fptrunc double %i.atd to float
  store float %i.ate, ptr %i.ata, align 4, !tbaa !43
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bu
  %indvars.iv.next924.i.i = add nuw nsw i64 %indvars.iv923.i.i, 1 ; 2 uses
  %exitcond926.not.i.i = icmp eq i64 %indvars.iv.next924.i.i, 64
  br i1 %exitcond926.not.i.i, label %.lr.ph824.i.i, label %.lr.ph.i530.i.i, !llvm.loop !1434

.lr.ph824.i.i:                                    ; preds = %bb.by, %bb.cb
  %indvars.iv927.i.i = phi i64 [ %indvars.iv.next928.i.i, %bb.cb ], [ 0, %bb.by ] ; 3 uses
  %i.atf = load ptr, ptr %i.su, align 8, !tbaa !37
  %i.atg = add nuw nsw i64 %indvars.iv927.i.i, %.0440826.i.i
  %i.ath = mul i64 %i.atg, %i.pu
  %i.ati = getelementptr inbounds nuw i8, ptr %i.atf, i64 %i.ath
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 %i.xc
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 %i.xf ; 2 uses
  %i.atl = mul nsw i64 %indvars.iv927.i.i, %i.pt
  %i.atm = getelementptr inbounds [4 x i8], ptr %i.vl, i64 %i.atl ; 2 uses
  br i1 %i.sd, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.lr.ph824.i.i
  tail call void @ggml_cpu_fp16_to_fp32(ptr noundef %i.atk, ptr noundef nonnull %i.atm, i64 noundef %i.pt)
  br label %bb.cb

bb.ca:                                            ; preds = %.lr.ph824.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.atm, ptr align 1 %i.atk, i64 %i.sv, i1 false)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %indvars.iv.next928.i.i = add nuw nsw i64 %indvars.iv927.i.i, 1 ; 2 uses
  %exitcond932.not.i.i = icmp eq i64 %indvars.iv.next928.i.i, %i.xv
  br i1 %exitcond932.not.i.i, label %.preheader734.i.loopexit.i, label %.lr.ph824.i.i, !llvm.loop !1435

bb.cc:                                            ; preds = %bb.cp
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  br label %.preheader158.i543.i.i

.preheader158.i543.i.i:                           ; preds = %._crit_edge.i671.i.i, %bb.cc
  %i.atn = phi i64 [ 4, %bb.cc ], [ %i.beu, %._crit_edge.i671.i.i ] ; 2 uses
  %.0107202.i544.i.i = phi ptr [ %i.uy, %bb.cc ], [ %i.bet, %._crit_edge.i671.i.i ] ; 4 uses
  %.0109200.i545.i.i = phi ptr [ %i.uw, %bb.cc ], [ %i.bes, %._crit_edge.i671.i.i ] ; 15 uses
  br i1 %.not121185.i.i.i, label %.preheader157.i.i.i, label %.lr.ph.i546.i.i

.preheader157.i.i.i:                              ; preds = %_ZL17simd_gemm_ukernelILi4ELi4EEvPfPKfS2_ii.exit.i605.i.i, %.preheader158.i543.i.i
  %.0102.lcssa.i.i.i = phi i64 [ 0, %.preheader158.i543.i.i ], [ %i.avo, %_ZL17simd_gemm_ukernelILi4ELi4EEvPfPKfS2_ii.exit.i605.i.i ] ; 3 uses
  %i.ato = or disjoint i64 %.0102.lcssa.i.i.i, 16 ; 2 uses
  %.not122188.i622.i.i = icmp sgt i64 %i.ato, %i.st
  br i1 %.not122188.i622.i.i, label %.preheader156.i639.i.i, label %.preheader53.lr.ph.i.us.i624.i.i

.preheader53.lr.ph.i.us.i624.i.i:                 ; preds = %.preheader157.i.i.i, %_ZL17simd_gemm_ukernelILi4ELi1EEvPfPKfS2_ii.exit.loopexit.us.i637.i.i
  %i.atp = phi i64 [ %i.avn, %_ZL17simd_gemm_ukernelILi4ELi1EEvPfPKfS2_ii.exit.loopexit.us.i637.i.i ], [ %i.ato, %.preheader157.i.i.i ] ; 3 uses
  %.1103189.us.i625.i.i = phi i64 [ %i.atp, %_ZL17simd_gemm_ukernelILi4ELi1EEvPfPKfS2_ii.exit.loopexit.us.i637.i.i ], [ %.0102.lcssa.i.i.i, %.preheader157.i.i.i ] ; 2 uses
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %.0107202.i544.i.i, i64 %.1103189.us.i625.i.i ; 5 uses
  %i.atr = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %.1103189.us.i625.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  %i.ats = load <16 x float>, ptr %i.atq, align 1, !tbaa !56, !alias.scope !1490, !noalias !1491
  %i.att = getelementptr inbounds [4 x i8], ptr %i.atq, i64 %i.st ; 2 uses
  %i.atu = load <16 x float>, ptr %i.att, align 1, !tbaa !56, !alias.scope !1490, !noalias !1491
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atq, i64 %.idx.i.i.i.i ; 2 uses
  %i.atw = load <16 x float>, ptr %i.atv, align 1, !tbaa !56, !alias.scope !1490, !noalias !1491
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atq, i64 %.idx109.i.i.i.i ; 2 uses
  %i.aty = load <16 x float>, ptr %i.atx, align 1, !tbaa !56, !alias.scope !1490, !noalias !1491
  br label %.preheader53.i.us.i626.i.i

.preheader53.i.us.i626.i.i:                       ; preds = %.preheader53.i.us.i626.i.i, %.preheader53.lr.ph.i.us.i624.i.i
  %.sroa.14.0.i.us.i627.i.i = phi <16 x float> [ %i.aty, %.preheader53.lr.ph.i.us.i624.i.i ], [ %i.avl, %.preheader53.i.us.i626.i.i ]
  %.sroa.10.0.i128.us.i628.i.i = phi <16 x float> [ %i.atw, %.preheader53.lr.ph.i.us.i624.i.i ], [ %i.avh, %.preheader53.i.us.i626.i.i ]
  %.sroa.6.0.i129.us.i629.i.i = phi <16 x float> [ %i.atu, %.preheader53.lr.ph.i.us.i624.i.i ], [ %i.avd, %.preheader53.i.us.i626.i.i ]
  %.sroa.0.0.i.us.i630.i.i = phi <16 x float> [ %i.ats, %.preheader53.lr.ph.i.us.i624.i.i ], [ %i.auz, %.preheader53.i.us.i626.i.i ]
  %.04759.i.us.i631.i.i = phi i64 [ 0, %.preheader53.lr.ph.i.us.i624.i.i ], [ %i.avm, %.preheader53.i.us.i626.i.i ] ; 4 uses
  %i.atz = mul nuw nsw i64 %.04759.i.us.i631.i.i, %i.st
  %i.aua = getelementptr inbounds [4 x i8], ptr %i.atr, i64 %i.atz
  %i.aub = load <16 x float>, ptr %i.aua, align 1, !tbaa !56, !alias.scope !1492, !noalias !1493 ; 4 uses
  %invariant.gep.i130.us.i632.i.i = getelementptr [4 x i8], ptr %.0109200.i545.i.i, i64 %.04759.i.us.i631.i.i ; 4 uses
  %i.auc = load float, ptr %invariant.gep.i130.us.i632.i.i, align 4, !tbaa !43, !alias.scope !1494, !noalias !1495
  %i.aud = insertelement <16 x float> poison, float %i.auc, i64 0
  %i.aue = shufflevector <16 x float> %i.aud, <16 x float> poison, <16 x i32> zeroinitializer
  %i.auf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aub, <16 x float> %i.aue, <16 x float> %.sroa.0.0.i.us.i630.i.i)
  %gep.1.i131.us.i633.i.i = getelementptr i8, ptr %invariant.gep.i130.us.i632.i.i, i64 256
  %i.aug = load float, ptr %gep.1.i131.us.i633.i.i, align 4, !tbaa !43, !alias.scope !1494, !noalias !1495
  %i.auh = insertelement <16 x float> poison, float %i.aug, i64 0
  %i.aui = shufflevector <16 x float> %i.auh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.auj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aub, <16 x float> %i.aui, <16 x float> %.sroa.6.0.i129.us.i629.i.i)
  %gep.2.i132.us.i634.i.i = getelementptr i8, ptr %invariant.gep.i130.us.i632.i.i, i64 512
  %i.auk = load float, ptr %gep.2.i132.us.i634.i.i, align 4, !tbaa !43, !alias.scope !1494, !noalias !1495
  %i.aul = insertelement <16 x float> poison, float %i.auk, i64 0
  %i.aum = shufflevector <16 x float> %i.aul, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aun = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aub, <16 x float> %i.aum, <16 x float> %.sroa.10.0.i128.us.i628.i.i)
  %gep.3.i133.us.i635.i.i = getelementptr i8, ptr %invariant.gep.i130.us.i632.i.i, i64 768
  %i.auo = load float, ptr %gep.3.i133.us.i635.i.i, align 4, !tbaa !43, !alias.scope !1494, !noalias !1495
  %i.aup = insertelement <16 x float> poison, float %i.auo, i64 0
  %i.auq = shufflevector <16 x float> %i.aup, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aur = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aub, <16 x float> %i.auq, <16 x float> %.sroa.14.0.i.us.i627.i.i)
  %i.aus = or disjoint i64 %.04759.i.us.i631.i.i, 1 ; 2 uses
  %i.aut = mul nuw nsw i64 %i.aus, %i.st
  %i.auu = getelementptr inbounds [4 x i8], ptr %i.atr, i64 %i.aut
  %i.auv = load <16 x float>, ptr %i.auu, align 1, !tbaa !56, !alias.scope !1492, !noalias !1493 ; 4 uses
  %invariant.gep.i130.us.i632.i.i.1 = getelementptr [4 x i8], ptr %.0109200.i545.i.i, i64 %i.aus ; 4 uses
  %i.auw = load float, ptr %invariant.gep.i130.us.i632.i.i.1, align 4, !tbaa !43, !alias.scope !1494, !noalias !1495
  %i.aux = insertelement <16 x float> poison, float %i.auw, i64 0
  %i.auy = shufflevector <16 x float> %i.aux, <16 x float> poison, <16 x i32> zeroinitializer
  %i.auz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auv, <16 x float> %i.auy, <16 x float> %i.auf) ; 2 uses
  %gep.1.i131.us.i633.i.i.1 = getelementptr i8, ptr %invariant.gep.i130.us.i632.i.i.1, i64 256
  %i.ava = load float, ptr %gep.1.i131.us.i633.i.i.1, align 4, !tbaa !43, !alias.scope !1494, !noalias !1495
  %i.avb = insertelement <16 x float> poison, float %i.ava, i64 0
  %i.avc = shufflevector <16 x float> %i.avb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.avd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auv, <16 x float> %i.avc, <16 x float> %i.auj) ; 2 uses
  %gep.2.i132.us.i634.i.i.1 = getelementptr i8, ptr %invariant.gep.i130.us.i632.i.i.1, i64 512
  %i.ave = load float, ptr %gep.2.i132.us.i634.i.i.1, align 4, !tbaa !43, !alias.scope !1494, !noalias !1495
  %i.avf = insertelement <16 x float> poison, float %i.ave, i64 0
  %i.avg = shufflevector <16 x float> %i.avf, <16 x float> poison, <16 x i32> zeroinitializer
  %i.avh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auv, <16 x float> %i.avg, <16 x float> %i.aun) ; 2 uses
  %gep.3.i133.us.i635.i.i.1 = getelementptr i8, ptr %invariant.gep.i130.us.i632.i.i.1, i64 768
  %i.avi = load float, ptr %gep.3.i133.us.i635.i.i.1, align 4, !tbaa !43, !alias.scope !1494, !noalias !1495
  %i.avj = insertelement <16 x float> poison, float %i.avi, i64 0
  %i.avk = shufflevector <16 x float> %i.avj, <16 x float> poison, <16 x i32> zeroinitializer
  %i.avl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auv, <16 x float> %i.avk, <16 x float> %i.aur) ; 2 uses
  %i.avm = add nuw nsw i64 %.04759.i.us.i631.i.i, 2 ; 2 uses
  %exitcond.not.i134.us.i636.i.i.1 = icmp eq i64 %i.avm, 64
  br i1 %exitcond.not.i134.us.i636.i.i.1, label %_ZL17simd_gemm_ukernelILi4ELi1EEvPfPKfS2_ii.exit.loopexit.us.i637.i.i, label %.preheader53.i.us.i626.i.i, !llvm.loop !1444

_ZL17simd_gemm_ukernelILi4ELi1EEvPfPKfS2_ii.exit.loopexit.us.i637.i.i: ; preds = %.preheader53.i.us.i626.i.i
  store <16 x float> %i.auz, ptr %i.atq, align 1, !tbaa !56, !alias.scope !1490, !noalias !1491
  store <16 x float> %i.avd, ptr %i.att, align 1, !tbaa !56, !alias.scope !1490, !noalias !1491
  store <16 x float> %i.avh, ptr %i.atv, align 1, !tbaa !56, !alias.scope !1490, !noalias !1491
  store <16 x float> %i.avl, ptr %i.atx, align 1, !tbaa !56, !alias.scope !1490, !noalias !1491
  %i.avn = add nuw nsw i64 %i.atp, 16             ; 2 uses
  %.not122.us.i638.i.i = icmp sgt i64 %i.avn, %i.st
  br i1 %.not122.us.i638.i.i, label %.preheader156.i639.i.i, label %.preheader53.lr.ph.i.us.i624.i.i, !llvm.loop !1445

.lr.ph.i546.i.i:                                  ; preds = %.preheader158.i543.i.i, %_ZL17simd_gemm_ukernelILi4ELi4EEvPfPKfS2_ii.exit.i605.i.i
  %i.avo = phi i64 [ %i.awz, %_ZL17simd_gemm_ukernelILi4ELi4EEvPfPKfS2_ii.exit.i605.i.i ], [ 64, %.preheader158.i543.i.i ] ; 3 uses
  %.0102186.i.i.i = phi i64 [ %i.avo, %_ZL17simd_gemm_ukernelILi4ELi4EEvPfPKfS2_ii.exit.i605.i.i ], [ 0, %.preheader158.i543.i.i ] ; 2 uses
  %i.avp = getelementptr inbounds nuw [4 x i8], ptr %.0107202.i544.i.i, i64 %.0102186.i.i.i ; 8 uses
  %i.avq = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %.0102186.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  %.sroa.080.0.copyload.i.i547.i.i = load <16 x float>, ptr %i.avp, align 1, !tbaa !56, !alias.scope !1499, !noalias !1500
  %.sroa.6.0..sroa_idx.i.i548.i.i = getelementptr inbounds nuw i8, ptr %i.avp, i64 64 ; 2 uses
  %.sroa.6.0.copyload.i.i549.i.i = load <16 x float>, ptr %.sroa.6.0..sroa_idx.i.i548.i.i, align 1, !tbaa !56, !alias.scope !1499, !noalias !1500
  %.sroa.8.0..sroa_idx.i.i550.i.i = getelementptr inbounds nuw i8, ptr %i.avp, i64 128 ; 2 uses
  %.sroa.8.0.copyload.i.i551.i.i = load <16 x float>, ptr %.sroa.8.0..sroa_idx.i.i550.i.i, align 1, !tbaa !56, !alias.scope !1499, !noalias !1500
  %.sroa.10.0..sroa_idx.i.i552.i.i = getelementptr inbounds nuw i8, ptr %i.avp, i64 192 ; 2 uses
  %.sroa.10.0.copyload.i.i553.i.i = load <16 x float>, ptr %.sroa.10.0..sroa_idx.i.i552.i.i, align 1, !tbaa !56, !alias.scope !1499, !noalias !1500
  %i.avr = getelementptr inbounds nuw [4 x i8], ptr %i.avp, i64 %i.st ; 5 uses
  %.sroa.12.256.copyload.i.i554.i.i = load <16 x float>, ptr %i.avr, align 1, !tbaa !56, !alias.scope !1499, !noalias !1500
  %.sroa.16.256..sroa_idx.i.i555.i.i = getelementptr inbounds nuw i8, ptr %i.avr, i64 64 ; 2 uses
  %.sroa.16.256.copyload.i.i556.i.i = load <16 x float>, ptr %.sroa.16.256..sroa_idx.i.i555.i.i, align 1, !tbaa !56, !alias.scope !1499, !noalias !1500
  %.sroa.18.256..sroa_idx.i.i557.i.i = getelementptr inbounds nuw i8, ptr %i.avr, i64 128 ; 2 uses
  %.sroa.18.256.copyload.i.i558.i.i = load <16 x float>, ptr %.sroa.18.256..sroa_idx.i.i557.i.i, align 1, !tbaa !56, !alias.scope !1499, !noalias !1500
  %.sroa.20.256..sroa_idx.i.i559.i.i = getelementptr inbounds nuw i8, ptr %i.avr, i64 192 ; 2 uses
  %.sroa.20.256.copyload.i.i560.i.i = load <16 x float>, ptr %.sroa.20.256..sroa_idx.i.i559.i.i, align 1, !tbaa !56, !alias.scope !1499, !noalias !1500
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avp, i64 %.idx.i.i.i.i ; 5 uses
  %.sroa.22.512.copyload.i.i561.i.i = load <16 x float>, ptr %i.avs, align 1, !tbaa !56, !alias.scope !1499, !noalias !1500
  %.sroa.26.512..sroa_idx.i.i562.i.i = getelementptr inbounds nuw i8, ptr %i.avs, i64 64 ; 2 uses
  %.sroa.26.512.copyload.i.i563.i.i = load <16 x float>, ptr %.sroa.26.512..sroa_idx.i.i562.i.i, align 1, !tbaa !56, !alias.scope !1499, !noalias !1500
  %.sroa.28.512..sroa_idx.i.i564.i.i = getelementptr inbounds nuw i8, ptr %i.avs, i64 128 ; 2 uses
  %.sroa.28.512.copyload.i.i565.i.i = load <16 x float>, ptr %.sroa.28.512..sroa_idx.i.i564.i.i, align 1, !tbaa !56, !alias.scope !1499, !noalias !1500
  %.sroa.30.512..sroa_idx.i.i566.i.i = getelementptr inbounds nuw i8, ptr %i.avs, i64 192 ; 2 uses
  %.sroa.30.512.copyload.i.i567.i.i = load <16 x float>, ptr %.sroa.30.512..sroa_idx.i.i566.i.i, align 1, !tbaa !56, !alias.scope !1499, !noalias !1500
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avp, i64 %.idx109.i.i.i.i ; 5 uses
  %.sroa.32.768.copyload.i.i568.i.i = load <16 x float>, ptr %i.avt, align 1, !tbaa !56, !alias.scope !1499, !noalias !1500
  %.sroa.36.768..sroa_idx.i.i569.i.i = getelementptr inbounds nuw i8, ptr %i.avt, i64 64 ; 2 uses
  %.sroa.36.768.copyload.i.i570.i.i = load <16 x float>, ptr %.sroa.36.768..sroa_idx.i.i569.i.i, align 1, !tbaa !56, !alias.scope !1499, !noalias !1500
  %.sroa.38.768..sroa_idx.i.i571.i.i = getelementptr inbounds nuw i8, ptr %i.avt, i64 128 ; 2 uses
  %.sroa.38.768.copyload.i.i572.i.i = load <16 x float>, ptr %.sroa.38.768..sroa_idx.i.i571.i.i, align 1, !tbaa !56, !alias.scope !1499, !noalias !1500
  %.sroa.40.768..sroa_idx.i.i573.i.i = getelementptr inbounds nuw i8, ptr %i.avt, i64 192 ; 2 uses
  %.sroa.40.768.copyload.i.i574.i.i = load <16 x float>, ptr %.sroa.40.768..sroa_idx.i.i573.i.i, align 1, !tbaa !56, !alias.scope !1499, !noalias !1500
  br label %.preheader52.i.i575.i.i

.preheader52.i.i575.i.i:                          ; preds = %.preheader52.i.i575.i.i, %.lr.ph.i546.i.i
  %.sroa.40.1.i.i576.i.i = phi <16 x float> [ %i.awx, %.preheader52.i.i575.i.i ], [ %.sroa.40.768.copyload.i.i574.i.i, %.lr.ph.i546.i.i ]
  %.sroa.38.1.i.i577.i.i = phi <16 x float> [ %i.aww, %.preheader52.i.i575.i.i ], [ %.sroa.38.768.copyload.i.i572.i.i, %.lr.ph.i546.i.i ]
  %.sroa.36.1.i.i578.i.i = phi <16 x float> [ %i.awv, %.preheader52.i.i575.i.i ], [ %.sroa.36.768.copyload.i.i570.i.i, %.lr.ph.i546.i.i ]
  %.sroa.32.1.i.i579.i.i = phi <16 x float> [ %i.awu, %.preheader52.i.i575.i.i ], [ %.sroa.32.768.copyload.i.i568.i.i, %.lr.ph.i546.i.i ]
  %.sroa.30.1.i.i580.i.i = phi <16 x float> [ %i.awq, %.preheader52.i.i575.i.i ], [ %.sroa.30.512.copyload.i.i567.i.i, %.lr.ph.i546.i.i ]
  %.sroa.28.1.i.i581.i.i = phi <16 x float> [ %i.awp, %.preheader52.i.i575.i.i ], [ %.sroa.28.512.copyload.i.i565.i.i, %.lr.ph.i546.i.i ]
  %.sroa.26.1.i.i582.i.i = phi <16 x float> [ %i.awo, %.preheader52.i.i575.i.i ], [ %.sroa.26.512.copyload.i.i563.i.i, %.lr.ph.i546.i.i ]
  %.sroa.22.1.i.i583.i.i = phi <16 x float> [ %i.awn, %.preheader52.i.i575.i.i ], [ %.sroa.22.512.copyload.i.i561.i.i, %.lr.ph.i546.i.i ]
  %.sroa.20.1.i.i584.i.i = phi <16 x float> [ %i.awj, %.preheader52.i.i575.i.i ], [ %.sroa.20.256.copyload.i.i560.i.i, %.lr.ph.i546.i.i ]
  %.sroa.18.1.i.i585.i.i = phi <16 x float> [ %i.awi, %.preheader52.i.i575.i.i ], [ %.sroa.18.256.copyload.i.i558.i.i, %.lr.ph.i546.i.i ]
  %.sroa.16.1.i.i586.i.i = phi <16 x float> [ %i.awh, %.preheader52.i.i575.i.i ], [ %.sroa.16.256.copyload.i.i556.i.i, %.lr.ph.i546.i.i ]
  %.sroa.12.1.i.i587.i.i = phi <16 x float> [ %i.awg, %.preheader52.i.i575.i.i ], [ %.sroa.12.256.copyload.i.i554.i.i, %.lr.ph.i546.i.i ]
  %.sroa.10.1.i.i588.i.i = phi <16 x float> [ %i.awc, %.preheader52.i.i575.i.i ], [ %.sroa.10.0.copyload.i.i553.i.i, %.lr.ph.i546.i.i ]
  %.sroa.8.1.i.i589.i.i = phi <16 x float> [ %i.awb, %.preheader52.i.i575.i.i ], [ %.sroa.8.0.copyload.i.i551.i.i, %.lr.ph.i546.i.i ]
  %.sroa.6.1.i.i590.i.i = phi <16 x float> [ %i.awa, %.preheader52.i.i575.i.i ], [ %.sroa.6.0.copyload.i.i549.i.i, %.lr.ph.i546.i.i ]
  %.sroa.080.1.i.i591.i.i = phi <16 x float> [ %i.avz, %.preheader52.i.i575.i.i ], [ %.sroa.080.0.copyload.i.i547.i.i, %.lr.ph.i546.i.i ]
  %.04760.i.i592.i.i = phi i64 [ %i.awy, %.preheader52.i.i575.i.i ], [ 0, %.lr.ph.i546.i.i ] ; 3 uses
  %i.avu = mul nuw nsw i64 %.04760.i.i592.i.i, %i.st
  %i.avv = getelementptr inbounds nuw [4 x i8], ptr %i.avq, i64 %i.avu ; 4 uses
  %.sroa.0.0.copyload.i.i593.i.i = load <16 x float>, ptr %i.avv, align 1, !tbaa !56, !alias.scope !1501, !noalias !1502 ; 4 uses
  %.sroa.7.0..sroa_idx.i.i594.i.i = getelementptr inbounds nuw i8, ptr %i.avv, i64 64
  %.sroa.7.0.copyload.i.i595.i.i = load <16 x float>, ptr %.sroa.7.0..sroa_idx.i.i594.i.i, align 1, !tbaa !56, !alias.scope !1501, !noalias !1502 ; 4 uses
  %.sroa.11.0..sroa_idx.i.i596.i.i = getelementptr inbounds nuw i8, ptr %i.avv, i64 128
  %.sroa.11.0.copyload.i.i597.i.i = load <16 x float>, ptr %.sroa.11.0..sroa_idx.i.i596.i.i, align 1, !tbaa !56, !alias.scope !1501, !noalias !1502 ; 4 uses
  %.sroa.15.0..sroa_idx.i.i598.i.i = getelementptr inbounds nuw i8, ptr %i.avv, i64 192
  %.sroa.15.0.copyload.i.i599.i.i = load <16 x float>, ptr %.sroa.15.0..sroa_idx.i.i598.i.i, align 1, !tbaa !56, !alias.scope !1501, !noalias !1502 ; 4 uses
  %invariant.gep.i.i600.i.i = getelementptr [4 x i8], ptr %.0109200.i545.i.i, i64 %.04760.i.i592.i.i ; 4 uses
  %i.avw = load float, ptr %invariant.gep.i.i600.i.i, align 4, !tbaa !43, !alias.scope !1503, !noalias !1504
  %i.avx = insertelement <16 x float> poison, float %i.avw, i64 0
  %i.avy = shufflevector <16 x float> %i.avx, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.avz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i.i593.i.i, <16 x float> %i.avy, <16 x float> %.sroa.080.1.i.i591.i.i) ; 2 uses
  %i.awa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.7.0.copyload.i.i595.i.i, <16 x float> %i.avy, <16 x float> %.sroa.6.1.i.i590.i.i) ; 2 uses
  %i.awb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.11.0.copyload.i.i597.i.i, <16 x float> %i.avy, <16 x float> %.sroa.8.1.i.i589.i.i) ; 2 uses
  %i.awc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.15.0.copyload.i.i599.i.i, <16 x float> %i.avy, <16 x float> %.sroa.10.1.i.i588.i.i) ; 2 uses
  %gep.1.i.i601.i.i = getelementptr i8, ptr %invariant.gep.i.i600.i.i, i64 256
  %i.awd = load float, ptr %gep.1.i.i601.i.i, align 4, !tbaa !43, !alias.scope !1503, !noalias !1504
  %i.awe = insertelement <16 x float> poison, float %i.awd, i64 0
end_hunk_1
