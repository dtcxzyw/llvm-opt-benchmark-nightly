Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/h264_refs?download=true
inline.NumInlined: 53
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@ff_h264_build_ref_list:bb.a
  %.not212 = icmp ugt i32 %i.jv, %i.jw
  br i1 %.not212, label %.thread, label %bb.au

.thread:                                          ; preds = %bb.at
  %i.jx = load ptr, ptr %i.b, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.jx, i32 noundef 16, ptr noundef nonnull @.str) #7
  br label %h264_fill_mbaff_ref_list.exit

bb.au:                                            ; preds = %bb.at
  %i.jy = icmp eq i8 %i.js, 0
  %i.jz = xor i32 %i.ju, -1
  %.1183.p = select i1 %i.jy, i32 %i.jz, i32 %i.jv
  %.1183 = add i32 %.1183.p, %.0182335
  %i.ka = add nsw i32 %i.jw, -1
  %i.kb = and i32 %i.ka, %.1183                   ; 8 uses
  %i.kc = load i32, ptr %i.is, align 4, !tbaa !88 ; 3 uses
  %.not.i236 = icmp eq i32 %i.kc, 3
  br i1 %.not.i236, label %pic_num_extract.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kd = and i32 %i.kb, 1
  %.not6.i = icmp eq i32 %i.kd, 0
  %i.ke = xor i32 %i.kc, 3
  %spec.select = select i1 %.not6.i, i32 %i.ke, i32 %i.kc
  %i.kf = ashr i32 %i.kb, 1
  br label %pic_num_extract.exit

pic_num_extract.exit:                             ; preds = %bb.au, %bb.av
  %.3254 = phi i32 [ 3, %bb.au ], [ %spec.select, %bb.av ] ; 2 uses
  %.0.i = phi i32 [ %i.kb, %bb.au ], [ %i.kf, %bb.av ]
  %i.kg = load i32, ptr %i.iv, align 4, !tbaa !73 ; 2 uses
  %i.kh = icmp sgt i32 %i.kg, 0
  br i1 %i.kh, label %.lr.ph.preheader, label %mismatches_ref.exit.thread

.lr.ph.preheader:                                 ; preds = %pic_num_extract.exit
  %i.ki = zext nneg i32 %i.kg to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ax
  %indvars.iv = phi i64 [ %i.ki, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ax ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %indvars.iv.next
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !74 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 148
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !75
  %i.kn = icmp eq i32 %i.km, %.0.i
  br i1 %i.kn, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.lr.ph
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 700
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !116
  %i.kq = and i32 %i.kp, %.3254
  %.not211 = icmp eq i32 %i.kq, 0
  br i1 %.not211, label %bb.ax, label %.thread263

bb.ax:                                            ; preds = %.lr.ph, %bb.aw
  %i.kr = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.kr, label %.lr.ph, label %mismatches_ref.exit.thread, !llvm.loop !117

bb.ay:                                            ; preds = %bb.as
  %i.ks = load i32, ptr %i.is, align 4, !tbaa !88 ; 3 uses
  %.not.i237 = icmp eq i32 %i.ks, 3
  br i1 %.not.i237, label %pic_num_extract.exit240, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kt = and i32 %i.ju, 1
  %.not6.i238 = icmp eq i32 %i.kt, 0
  %i.ku = xor i32 %i.ks, 3
  %spec.select307 = select i1 %.not6.i238, i32 %i.ku, i32 %i.ks
  %i.kv = ashr i32 %i.ju, 1
  br label %pic_num_extract.exit240

pic_num_extract.exit240:                          ; preds = %bb.ay, %bb.az
  %.5256 = phi i32 [ 3, %bb.ay ], [ %spec.select307, %bb.az ] ; 2 uses
  %.0.i239 = phi i32 [ %i.ju, %bb.ay ], [ %i.kv, %bb.az ] ; 2 uses
  %i.kw = icmp ult i32 %.0.i239, 32
  br i1 %i.kw, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %pic_num_extract.exit240
  %i.kx = zext nneg i32 %.0.i239 to i64
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.kx
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !74 ; 3 uses
  %.not = icmp eq ptr %i.kz, null
  br i1 %.not, label %mismatches_ref.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 700
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !116
  %i.lc = and i32 %i.lb, %.5256
  %.not210 = icmp eq i32 %i.lc, 0
  br i1 %.not210, label %mismatches_ref.exit.thread, label %.thread263.thread297

bb.bc:                                            ; preds = %pic_num_extract.exit240
  %i.ld = load ptr, ptr %i.b, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ld, i32 noundef 16, ptr noundef nonnull @.str.1) #7
  br label %h264_fill_mbaff_ref_list.exit

bb.bd:                                            ; preds = %bb.as
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 363) #7
  tail call void @abort() #8
  unreachable

.thread263:                                       ; preds = %bb.aw
  %i.le = icmp slt i64 %indvars.iv, 1
  br i1 %i.le, label %mismatches_ref.exit.thread, label %.thread263.thread297

.thread263.thread297:                             ; preds = %bb.bb, %.thread263
  %.4306 = phi ptr [ %i.kk, %.thread263 ], [ %i.kz, %bb.bb ] ; 9 uses
  %.2180305 = phi i32 [ %i.kb, %.thread263 ], [ %i.ju, %bb.bb ]
  %.3185304 = phi i32 [ %i.kb, %.thread263 ], [ %.0182335, %bb.bb ] ; 5 uses
  %.1303 = phi i32 [ %.3254, %.thread263 ], [ %.5256, %bb.bb ] ; 2 uses
  %.val = load ptr, ptr %i.hf, align 8, !tbaa !89
  %.4.val = load ptr, ptr %.4306, align 8, !tbaa !77 ; 4 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !77 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.val.val, i64 104
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !103
  %i.lh = getelementptr inbounds nuw i8, ptr %.4.val, i64 104
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !103
  %.not.i241 = icmp eq i32 %i.lg, %i.li
  br i1 %.not.i241, label %bb.be, label %mismatches_ref.exit.thread

bb.be:                                            ; preds = %.thread263.thread297
  %i.lj = getelementptr inbounds nuw i8, ptr %.val.val, i64 108
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !107
  %i.ll = getelementptr inbounds nuw i8, ptr %.4.val, i64 108
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !107
  %.not7.i = icmp eq i32 %i.lk, %i.lm
  br i1 %.not7.i, label %mismatches_ref.exit, label %mismatches_ref.exit.thread

mismatches_ref.exit:                              ; preds = %bb.be
  %i.ln = getelementptr inbounds nuw i8, ptr %.val.val, i64 116
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !108
  %i.lp = getelementptr inbounds nuw i8, ptr %.4.val, i64 116
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !108
  %.not308 = icmp eq i32 %i.lo, %i.lq
  br i1 %.not308, label %.preheader312, label %mismatches_ref.exit.thread

.preheader312:                                    ; preds = %mismatches_ref.exit
  %i.lr = load i32, ptr %i.jo, align 4, !tbaa !90 ; 2 uses
  %i.ls = add nuw nsw i64 %indvars.iv368, 1       ; 3 uses
  %i.lt = zext i32 %i.lr to i64
  %i.lu = icmp samesign ult i64 %i.ls, %i.lt
  %i.lv = trunc nuw nsw i64 %indvars.iv368 to i32
  br i1 %i.lu, label %.lr.ph327, label %._crit_edge

.lr.ph327:                                        ; preds = %.preheader312
  %i.lw = getelementptr inbounds nuw i8, ptr %.4306, i64 160
  %i.lx = add i32 %i.lr, -1                       ; 2 uses
  %wide.trip.count = zext i32 %i.lx to i64
  br label %bb.bg

mismatches_ref.exit.thread:                       ; preds = %bb.ax, %pic_num_extract.exit, %bb.bb, %bb.ba, %.thread263.thread297, %bb.be, %mismatches_ref.exit, %.thread263
  %.3185296 = phi i32 [ %.3185304, %mismatches_ref.exit ], [ %i.kb, %.thread263 ], [ %.3185304, %.thread263.thread297 ], [ %.3185304, %bb.be ], [ %.0182335, %bb.ba ], [ %.0182335, %bb.bb ], [ %i.kb, %pic_num_extract.exit ], [ %i.kb, %bb.ax ]
  %i.ly = phi ptr [ @.str.6, %mismatches_ref.exit ], [ @.str.5, %.thread263 ], [ @.str.6, %.thread263.thread297 ], [ @.str.6, %bb.be ], [ @.str.5, %bb.ba ], [ @.str.5, %bb.bb ], [ @.str.5, %pic_num_extract.exit ], [ @.str.5, %bb.ax ]
  %i.lz = load ptr, ptr %i.b, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.lz, i32 noundef 16, ptr noundef nonnull %i.ly) #7
  %i.ma = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 528
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !118
  %i.md = and i32 %i.mc, 8
  %.not216 = icmp eq i32 %i.md, 0
  br i1 %.not216, label %bb.bf, label %h264_fill_mbaff_ref_list.exit

bb.bf:                                            ; preds = %mismatches_ref.exit.thread
  %i.me = getelementptr inbounds nuw [56 x i8], ptr %i.jn, i64 %indvars.iv368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.me, i8 0, i64 56, i1 false)
  %.pre399 = add nuw nsw i64 %indvars.iv368, 1
  br label %bb.bl

bb.bg:                                            ; preds = %.lr.ph327, %bb.bj
  %indvars.iv370 = phi i64 [ %indvars.iv368, %.lr.ph327 ], [ %indvars.iv.next371, %bb.bj ] ; 3 uses
  %i.mf = getelementptr inbounds nuw [56 x i8], ptr %i.jn, i64 %indvars.iv370 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 48
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !92 ; 2 uses
  %.not214 = icmp eq ptr %i.mh, null
  br i1 %.not214, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.mi = load i32, ptr %i.lw, align 8, !tbaa !119
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 160
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !119
  %i.ml = icmp eq i32 %i.mi, %i.mk
  br i1 %i.ml, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mf, i64 44
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !120
  %i.mo = icmp eq i32 %.2180305, %i.mn
  br i1 %i.mo, label %._crit_edge.loopexit.split.loop.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bg, %bb.bh, %bb.bi
  %indvars.iv.next371 = add nuw nsw i64 %indvars.iv370, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next371, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bg, !llvm.loop !121

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.bi
  %i.mp = trunc nuw nsw i64 %indvars.iv370 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.bj, %._crit_edge.loopexit.split.loop.exit, %.preheader312
  %.5.lcssa = phi i32 [ %i.lv, %.preheader312 ], [ %i.mp, %._crit_edge.loopexit.split.loop.exit ], [ %i.lx, %bb.bj ] ; 2 uses
  %i.mq = sext i32 %.5.lcssa to i64               ; 2 uses
  %i.mr = icmp slt i64 %indvars.iv368, %i.mq
  br i1 %i.mr, label %.lr.ph333.preheader, label %._crit_edge334

.lr.ph333.preheader:                              ; preds = %._crit_edge
  %i.ms = add i32 %.5.lcssa, %i.jq
  %i.mt = zext i32 %i.ms to i64                   ; 2 uses
  %i.mu = mul nuw nsw i64 %i.mt, 56
  %i.mv = sub nsw i64 %i.mq, %i.mt
  %i.mw = mul nsw i64 %i.mv, 56                   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.jn, i64 %i.mw
  %scevgep376 = getelementptr i8, ptr %scevgep375, i64 %i.mw
  %i.mx = add nuw nsw i64 %i.mu, 56
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep376, i64 %i.mx, i1 false)
  %.pre = load ptr, ptr %.4306, align 8, !tbaa !77
  br label %._crit_edge334

._crit_edge334:                                   ; preds = %.lr.ph333.preheader, %._crit_edge
  %i.my = phi ptr [ %.pre, %.lr.ph333.preheader ], [ %.4.val, %._crit_edge ]
  %i.mz = getelementptr inbounds nuw [56 x i8], ptr %i.jn, i64 %indvars.iv368 ; 13 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mz, ptr noundef nonnull align 8 dereferenceable(24) %i.my, i64 24, i1 false)
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 24 ; 4 uses
  %i.nb = load ptr, ptr %.4306, align 8, !tbaa !77
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.na, ptr noundef nonnull align 8 dereferenceable(12) %i.nc, i64 12, i1 false)
  %i.nd = getelementptr inbounds nuw i8, ptr %.4306, i64 700
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !116
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mz, i64 36 ; 3 uses
  store i32 %i.ne, ptr %i.nf, align 4, !tbaa !122
  %i.ng = getelementptr inbounds nuw i8, ptr %.4306, i64 144
  %i.nh = load i32, ptr %i.ng, align 8, !tbaa !76
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mz, i64 40 ; 2 uses
  store i32 %i.nh, ptr %i.ni, align 8, !tbaa !123
  %i.nj = getelementptr inbounds nuw i8, ptr %.4306, i64 156
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !124
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mz, i64 44
  store i32 %i.nk, ptr %i.nl, align 4, !tbaa !120
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mz, i64 48
  store ptr %.4306, ptr %i.nm, align 8, !tbaa !92
  %i.nn = load i32, ptr %i.is, align 4, !tbaa !88
  %.not215 = icmp eq i32 %i.nn, 3
  br i1 %.not215, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge334
  %i.no = icmp eq i32 %.1303, 2                   ; 2 uses
  %i.np = load i32, ptr %i.na, align 8, !tbaa !90 ; 3 uses
  br i1 %i.no, label %.split.us.preheader.i, label %.split.preheader.i

.split.preheader.i:                               ; preds = %bb.bk
  %i.nq = shl nsw i32 %i.np, 1
  store i32 %i.nq, ptr %i.na, align 8, !tbaa !90
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mz, i64 28 ; 2 uses
  store i32 %.1303, ptr %i.nf, align 4, !tbaa !122
  %i.ns = load <2 x i32>, ptr %i.nr, align 4, !tbaa !90
  %i.nt = shl nsw <2 x i32> %i.ns, splat (i32 1)
  store <2 x i32> %i.nt, ptr %i.nr, align 4, !tbaa !90
  br label %pic_as_field.exit

.split.us.preheader.i:                            ; preds = %bb.bk
  %i.nu = load ptr, ptr %i.mz, align 8, !tbaa !78
  %i.nv = sext i32 %i.np to i64
  %i.nw = getelementptr inbounds i8, ptr %i.nu, i64 %i.nv
  store ptr %i.nw, ptr %i.mz, align 8, !tbaa !78
  %i.nx = shl nsw i32 %i.np, 1
  store i32 %i.nx, ptr %i.na, align 8, !tbaa !90
  %i.ny = getelementptr inbounds nuw i8, ptr %i.mz, i64 28 ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !90 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.mz, i64 8 ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !78
  %i.oc = sext i32 %i.nz to i64
  %i.od = getelementptr inbounds i8, ptr %i.ob, i64 %i.oc
  store ptr %i.od, ptr %i.oa, align 8, !tbaa !78
  %i.oe = shl nsw i32 %i.nz, 1
  store i32 %i.oe, ptr %i.ny, align 4, !tbaa !90
  %i.of = getelementptr inbounds nuw i8, ptr %i.mz, i64 32 ; 2 uses
  %i.og = load i32, ptr %i.of, align 8, !tbaa !90 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.mz, i64 16 ; 2 uses
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !78
  %i.oj = sext i32 %i.og to i64
  %i.ok = getelementptr inbounds i8, ptr %i.oi, i64 %i.oj
  store ptr %i.ok, ptr %i.oh, align 8, !tbaa !78
  store i32 2, ptr %i.nf, align 4, !tbaa !122
  %i.ol = shl nsw i32 %i.og, 1
  store i32 %i.ol, ptr %i.of, align 8, !tbaa !90
  br label %pic_as_field.exit

pic_as_field.exit:                                ; preds = %.split.preheader.i, %.split.us.preheader.i
  %i.om = getelementptr inbounds nuw i8, ptr %.4306, i64 136
  %i.on = zext i1 %i.no to i64
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %i.on
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !90
  store i32 %i.op, ptr %i.ni, align 8, !tbaa !123
  br label %bb.bl

bb.bl:                                            ; preds = %._crit_edge334, %pic_as_field.exit, %bb.bf
  %indvars.iv.next369.pre-phi = phi i64 [ %i.ls, %._crit_edge334 ], [ %i.ls, %pic_as_field.exit ], [ %.pre399, %bb.bf ] ; 2 uses
  %.4186 = phi i32 [ %.3185304, %._crit_edge334 ], [ %.3185304, %pic_as_field.exit ], [ %.3185296, %bb.bf ]
  %i.oq = load i32, ptr %i.ji, align 4, !tbaa !90
  %i.or = sext i32 %i.oq to i64
  %i.os = icmp slt i64 %indvars.iv.next369.pre-phi, %i.or
  br i1 %i.os, label %bb.as, label %._crit_edge340.loopexit, !llvm.loop !125

._crit_edge340.loopexit:                          ; preds = %bb.bl
  %.pre394 = load i32, ptr %i.hk, align 8, !tbaa !101
  br label %._crit_edge340

._crit_edge340:                                   ; preds = %._crit_edge340.loopexit, %bb.ar
  %i.ot = phi i32 [ %.pre394, %._crit_edge340.loopexit ], [ %i.jf, %bb.ar ] ; 4 uses
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.ou = zext i32 %i.ot to i64
  %i.ov = icmp samesign ult i64 %indvar.next, %i.ou
  br i1 %i.ov, label %bb.ar, label %.preheader311, !llvm.loop !126

.preheader309:                                    ; preds = %.preheader309.lr.ph, %.thread283
  %i.ow = phi i32 [ %i.ot, %.preheader309.lr.ph ], [ %i.qx, %.thread283 ]
  %indvars.iv390 = phi i64 [ 0, %.preheader309.lr.ph ], [ %indvars.iv.next391, %.thread283 ] ; 5 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv390 ; 2 uses
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !90
  %.not224346.not = icmp eq i32 %i.oy, 0
  br i1 %.not224346.not, label %.thread283, label %.lr.ph348

.lr.ph348:                                        ; preds = %.preheader309
  %i.oz = getelementptr inbounds nuw [2688 x i8], ptr %i.he, i64 %indvars.iv390
  %i.pa = getelementptr inbounds nuw [56 x i8], ptr %i.iy, i64 %indvars.iv390 ; 4 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 40
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 48
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 36
  %i.pe = trunc nuw nsw i64 %indvars.iv390 to i32
  br label %bb.bn

bb.bm:                                            ; preds = %.loopexit
  %indvars.iv.next388 = add nuw nsw i64 %indvars.iv387, 1 ; 2 uses
  %i.pf = load i32, ptr %i.ox, align 4, !tbaa !90
  %i.pg = zext i32 %i.pf to i64
  %.not224 = icmp samesign ult i64 %indvars.iv.next388, %i.pg
  br i1 %.not224, label %bb.bn, label %.thread283.loopexit, !llvm.loop !127

bb.bn:                                            ; preds = %.lr.ph348, %bb.bm
  %indvars.iv387 = phi i64 [ 0, %.lr.ph348 ], [ %indvars.iv.next388, %bb.bm ] ; 2 uses
  %i.ph = getelementptr inbounds nuw [56 x i8], ptr %i.oz, i64 %indvars.iv387 ; 4 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 48 ; 3 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !92 ; 3 uses
  %.not217 = icmp eq ptr %i.pj, null
  br i1 %.not217, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.pk = load i32, ptr %i.ix, align 4, !tbaa !88
  %.not218 = icmp eq i32 %i.pk, 3
  br i1 %.not218, label %bb.bp, label %bb.bv

bb.bp:                                            ; preds = %bb.bo
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ph, i64 36
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !122
  %i.pn = and i32 %i.pm, 3
  %.not219 = icmp eq i32 %i.pn, 3
  br i1 %.not219, label %bb.bv, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bn
  %i.po = load ptr, ptr %i.b, align 8, !tbaa !9   ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 528
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !118
  %i.pr = and i32 %i.pq, 8
  %.not220 = icmp eq i32 %i.pr, 0
  br i1 %.not220, label %bb.br, label %.thread280

.thread280:                                       ; preds = %bb.bq
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.po, i32 noundef 16, ptr noundef nonnull @.str.7) #7
  br label %h264_fill_mbaff_ref_list.exit

bb.br:                                            ; preds = %bb.bq
  %i.ps = load i32, ptr %i.pb, align 8, !tbaa !123
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.po, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %i.ps) #7
  store <4 x i32> splat (i32 -2147483648), ptr %i.iz, align 8, !tbaa !90
  store <4 x i32> splat (i32 -2147483648), ptr %i.jc, align 8, !tbaa !90
  store <4 x i32> splat (i32 -2147483648), ptr %i.jd, align 8, !tbaa !90
  store <4 x i32> splat (i32 -2147483648), ptr %i.je, align 8, !tbaa !90
  %i.pt = load ptr, ptr %i.pc, align 8, !tbaa !92
  %.not221 = icmp eq ptr %i.pt, null
  br i1 %.not221, label %h264_fill_mbaff_ref_list.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.pu = load i32, ptr %i.ix, align 4, !tbaa !88
  %.not222 = icmp eq i32 %i.pu, 3
  br i1 %.not222, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.pv = load i32, ptr %i.pd, align 4, !tbaa !122
  %i.pw = and i32 %i.pv, 3
  %.not223 = icmp eq i32 %i.pw, 3
  br i1 %.not223, label %bb.bu, label %h264_fill_mbaff_ref_list.exit

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ph, ptr noundef nonnull align 8 dereferenceable(56) %i.pa, i64 56, i1 false), !tbaa.struct !99
  %.pre396.pre = load ptr, ptr %i.pi, align 8, !tbaa !92
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bp, %bb.bo
  %.pre396 = phi ptr [ %.pre396.pre, %bb.bu ], [ %i.pj, %bb.bp ], [ %i.pj, %bb.bo ] ; 6 uses
  %i.px = load i32, ptr %i.ja, align 4, !tbaa !128
  %i.py = icmp sgt i32 %i.px, 0
  br i1 %i.py, label %bb.bw, label %.loopexit

bb.bw:                                            ; preds = %bb.bv
  %i.pz = getelementptr inbounds nuw i8, ptr %.pre396, i64 752
  %i.qa = load i32, ptr %i.pz, align 8, !tbaa !129
  %.not226 = icmp eq i32 %i.qa, 0
  br i1 %.not226, label %.loopexit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
end_hunk_0
