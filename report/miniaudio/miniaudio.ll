Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 216
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_linear_resampler_process_pcm_frames:bb.a
  %i.er = load ptr, ptr %i.en, align 8, !tbaa !743
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv125.i.i
  %i.et = load i32, ptr %i.es, align 4, !tbaa !9
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %indvars.iv125.i.i ; 2 uses
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !20
  %i.ew = sext i16 %i.ev to i32                   ; 3 uses
  %i.ex = mul nsw i32 %i.ec, %i.ew
  %i.ey = add nsw i32 %i.ex, %i.eq
  %i.ez = ashr i32 %i.ey, 14                      ; 3 uses
  %i.fa = mul nsw i32 %i.ee, %i.ew
  %i.fb = mul i32 %i.ei, %i.ez
  %i.fc = add i32 %i.fa, %i.et
  %i.fd = sub i32 %i.fc, %i.fb
  %i.fe = mul nsw i32 %i.eg, %i.ew
  %i.ff = mul nsw i32 %i.ez, %i.ek
  %i.fg = sub nsw i32 %i.fe, %i.ff
  %i.fh = tail call i32 @llvm.smax.i32(i32 %i.ez, i32 -32768)
  %i.fi = tail call i32 @llvm.smin.i32(i32 %i.fh, i32 32767)
  %i.fj = trunc nsw i32 %i.fi to i16
  store i16 %i.fj, ptr %i.eu, align 2, !tbaa !20
  store i32 %i.fd, ptr %i.ep, align 4, !tbaa !9
  %i.fk = load ptr, ptr %i.en, align 8, !tbaa !743
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv125.i.i
  store i32 %i.fg, ptr %i.fl, align 4, !tbaa !9
  %indvars.iv.next126.i.i = add nuw nsw i64 %indvars.iv125.i.i, 1 ; 2 uses
  %exitcond129.not.i.i = icmp eq i64 %indvars.iv.next126.i.i, %wide.trip.count128.i.i
  br i1 %exitcond129.not.i.i, label %ma_biquad_process_pcm_frame_s16.exit.i.i, label %bb.g, !llvm.loop !749

ma_biquad_process_pcm_frame_s16.exit.i.i:         ; preds = %bb.g
  %indvars.iv.next131.i.i = add nuw nsw i64 %indvars.iv130.i.i, 1 ; 2 uses
  %i.fm = load i32, ptr %i.p, align 8, !tbaa !798
  %i.fn = zext i32 %i.fm to i64
  %i.fo = icmp samesign ult i64 %indvars.iv.next131.i.i, %i.fn
  br i1 %i.fo, label %.lr.ph87.i.i, label %ma_lpf_process_pcm_frame_s16.exit.i.i, !llvm.loop !823

ma_lpf_process_pcm_frame_s16.exit.i.i:            ; preds = %ma_biquad_process_pcm_frame_s16.exit.i.i, %.preheader.i.i, %.loopexit.i.i
  %i.fp = add nuw i64 %.16089.i.i, 1              ; 3 uses
  %i.fq = load i32, ptr %i.j, align 8, !tbaa !1257
  %i.fr = add i32 %i.fq, -1                       ; 2 uses
  store i32 %i.fr, ptr %i.j, align 8, !tbaa !1257
  %i.fs = icmp ne i32 %i.fr, 0                    ; 2 uses
  %i.ft = icmp ugt i64 %i.h, %i.fp
  %i.fu = select i1 %i.fs, i1 %i.ft, i1 false
  br i1 %i.fu, label %.lr.ph90.i.i, label %._crit_edge91.i.i, !llvm.loop !1270

._crit_edge91.i.i:                                ; preds = %ma_lpf_process_pcm_frame_s16.exit.i.i, %.preheader75.i.i
  %.164.lcssa.i.i = phi ptr [ %.06395.i.i, %.preheader75.i.i ], [ %.265.i.i, %ma_lpf_process_pcm_frame_s16.exit.i.i ]
  %.160.lcssa.i.i = phi i64 [ %.05997.i.i, %.preheader75.i.i ], [ %i.fp, %ma_lpf_process_pcm_frame_s16.exit.i.i ] ; 3 uses
  %.lcssa76.i.i = phi i1 [ %i.v, %.preheader75.i.i ], [ %i.fs, %ma_lpf_process_pcm_frame_s16.exit.i.i ]
  br i1 %.lcssa76.i.i, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %._crit_edge91.i.i
  %.not.i.i = icmp eq ptr %.06196.i.i, null
  %.pre135.i.i = load i32, ptr %i.r, align 4, !tbaa !1258 ; 2 uses
  %.pre137.i.i = load i32, ptr %i.e, align 4, !tbaa !1259 ; 3 uses
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  %i.fv = load i32, ptr %i.k, align 4, !tbaa !1267, !noalias !1271 ; 3 uses
  %i.fw = shl i32 %.pre135.i.i, 12
  %i.fx = udiv i32 %i.fw, %.pre137.i.i            ; 3 uses
  %i.fy = icmp ne i32 %i.fv, 0
  tail call void @llvm.assume(i1 %i.fy)
  %i.fz = load ptr, ptr %i.m, align 8, !tbaa !9, !noalias !1271 ; 2 uses
  %i.ga = load ptr, ptr %i.l, align 8, !tbaa !9, !noalias !1271 ; 2 uses
  %i.gb = sub nsw i32 4096, %i.fx                 ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.fv to i64  ; 4 uses
  %min.iters.check265 = icmp ult i32 %i.fv, 8
  br i1 %min.iters.check265, label %scalar.ph264.preheader, label %vector.ph266

vector.ph266:                                     ; preds = %bb.i
  %n.vec267 = and i64 %wide.trip.count.i.i.i, 4294967288 ; 3 uses
  %broadcast.splatinsert268 = insertelement <8 x i32> poison, i32 %i.fx, i64 0
  %broadcast.splat269 = shufflevector <8 x i32> %broadcast.splatinsert268, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert270 = insertelement <8 x i32> poison, i32 %i.gb, i64 0
  %broadcast.splat271 = shufflevector <8 x i32> %broadcast.splatinsert270, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body272

vector.body272:                                   ; preds = %vector.body272, %vector.ph266
  %index273 = phi i64 [ 0, %vector.ph266 ], [ %index.next276, %vector.body272 ] ; 4 uses
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.fz, i64 %index273
  %wide.load274 = load <8 x i16>, ptr %i.gc, align 2, !tbaa !20, !noalias !1271
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %index273
  %wide.load275 = load <8 x i16>, ptr %i.gd, align 2, !tbaa !20, !noalias !1271
  %i.ge = sext <8 x i16> %wide.load274 to <8 x i32>
  %i.gf = mul nsw <8 x i32> %broadcast.splat271, %i.ge
  %i.gg = sext <8 x i16> %wide.load275 to <8 x i32>
  %i.gh = mul nsw <8 x i32> %broadcast.splat269, %i.gg
  %i.gi = add nsw <8 x i32> %i.gh, %i.gf
  %i.gj = lshr <8 x i32> %i.gi, splat (i32 12)
  %i.gk = trunc <8 x i32> %i.gj to <8 x i16>
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %.06196.i.i, i64 %index273
  store <8 x i16> %i.gk, ptr %i.gl, align 2, !tbaa !20, !alias.scope !1271
  %index.next276 = add nuw i64 %index273, 8       ; 2 uses
  %i.gm = icmp eq i64 %index.next276, %n.vec267
  br i1 %i.gm, label %middle.block277, label %vector.body272, !llvm.loop !1274

middle.block277:                                  ; preds = %vector.body272
  %cmp.n278 = icmp eq i64 %n.vec267, %wide.trip.count.i.i.i
  br i1 %cmp.n278, label %ma_linear_resampler_interpolate_frame_s16.exit.i.i, label %scalar.ph264.preheader

scalar.ph264.preheader:                           ; preds = %bb.i, %middle.block277
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %bb.i ], [ %n.vec267, %middle.block277 ]
  br label %scalar.ph264

scalar.ph264:                                     ; preds = %scalar.ph264.preheader, %scalar.ph264
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph264 ], [ %indvars.iv.i.i.i.ph, %scalar.ph264.preheader ] ; 4 uses
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.fz, i64 %indvars.iv.i.i.i
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !20, !noalias !1271
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv.i.i.i
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !20, !noalias !1271
  %i.gr = sext i16 %i.go to i32
  %i.gs = mul nsw i32 %i.gb, %i.gr
  %i.gt = sext i16 %i.gq to i32
  %i.gu = mul nsw i32 %i.fx, %i.gt
  %i.gv = add nsw i32 %i.gu, %i.gs
  %i.gw = lshr i32 %i.gv, 12
  %i.gx = trunc i32 %i.gw to i16
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %.06196.i.i, i64 %indvars.iv.i.i.i
  store i16 %i.gx, ptr %i.gy, align 2, !tbaa !20, !alias.scope !1271
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %ma_linear_resampler_interpolate_frame_s16.exit.i.i, label %scalar.ph264, !llvm.loop !1275

ma_linear_resampler_interpolate_frame_s16.exit.i.i: ; preds = %scalar.ph264, %middle.block277
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %.06196.i.i, i64 %wide.trip.count.i.i.i
  br label %bb.j

bb.j:                                             ; preds = %ma_linear_resampler_interpolate_frame_s16.exit.i.i, %bb.h
  %.162.i.i = phi ptr [ %i.gz, %ma_linear_resampler_interpolate_frame_s16.exit.i.i ], [ null, %bb.h ]
  %i.ha = add nuw i64 %.05898.i.i, 1              ; 2 uses
  %i.hb = load i32, ptr %i.s, align 8, !tbaa !1263 ; 3 uses
  store i32 %i.hb, ptr %i.j, align 8, !tbaa !1257
  %i.hc = load i32, ptr %i.t, align 4, !tbaa !1264
  %i.hd = add i32 %i.hc, %.pre135.i.i             ; 3 uses
  store i32 %i.hd, ptr %i.r, align 4, !tbaa !1258
  %.not69.i.i = icmp ult i32 %i.hd, %.pre137.i.i
  br i1 %.not69.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.he = sub nuw i32 %i.hd, %.pre137.i.i
  store i32 %i.he, ptr %i.r, align 4, !tbaa !1258
  %i.hf = add i32 %i.hb, 1                        ; 2 uses
  store i32 %i.hf, ptr %i.j, align 8, !tbaa !1257
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.hg = phi i32 [ %i.hf, %bb.k ], [ %i.hb, %bb.j ]
  %exitcond133.not.i.i = icmp eq i64 %i.ha, %i.i
  br i1 %exitcond133.not.i.i, label %.sink.split, label %.preheader75.i.i, !llvm.loop !1276

bb.m:                                             ; preds = %bb.c
  br i1 %.not105.i.i, label %.sink.split, label %.preheader76.lr.ph.i.i

.preheader76.lr.ph.i.i:                           ; preds = %bb.m
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 13 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.promoted.pre.i.i = load i32, ptr %i.hh, align 8, !tbaa !1257
  br label %.preheader76.i.i

.preheader76.i.i:                                 ; preds = %bb.u, %.preheader76.lr.ph.i.i
  %.pre141.i.i = phi i32 [ %i.f, %.preheader76.lr.ph.i.i ], [ %.pre141.i64.i, %bb.u ] ; 3 uses
  %.promoted.i.i = phi i32 [ %.promoted.pre.i.i, %.preheader76.lr.ph.i.i ], [ %.promoted137.i.i, %bb.u ] ; 2 uses
  %.05899.i.i = phi i64 [ 0, %.preheader76.lr.ph.i.i ], [ %i.oz, %bb.u ] ; 3 uses
  %.05998.i.i = phi i64 [ 0, %.preheader76.lr.ph.i.i ], [ %.160.lcssa152.i.i, %bb.u ] ; 4 uses
  %.06196.i12.i = phi ptr [ %3, %.preheader76.lr.ph.i.i ], [ %.162.i28.i, %bb.u ] ; 8 uses
  %.06395.i13.i = phi ptr [ %1, %.preheader76.lr.ph.i.i ], [ %.164.lcssa151.i.i, %bb.u ] ; 2 uses
  %i.hs = icmp ne i32 %.promoted.i.i, 0           ; 2 uses
  %i.ht = icmp ugt i64 %i.h, %.05998.i.i
  %i.hu = select i1 %i.hs, i1 %i.ht, i1 false
  br i1 %i.hu, label %.lr.ph84.i32.preheader.i, label %bb.n

.lr.ph84.i32.preheader.i:                         ; preds = %.preheader76.i.i
  %i.hv = load i32, ptr %i.hi, align 4, !tbaa !1267 ; 4 uses
  %.not108.i34.i = icmp eq i32 %i.hv, 0           ; 2 uses
  %wide.trip.count.i37.i = zext i32 %i.hv to i64  ; 6 uses
  %i.hw = add nsw i64 %wide.trip.count.i37.i, -1  ; 2 uses
  %xtraiter323 = and i64 %wide.trip.count.i37.i, 1
  %i.hx = icmp eq i64 %i.hw, 0
  %unroll_iter326 = and i64 %wide.trip.count.i37.i, 4294967294
  %lcmp.mod324.not = icmp eq i64 %xtraiter323, 0
  %lcmp.mod325 = trunc i32 %i.hv to i1
  %xtraiter328 = and i64 %wide.trip.count.i37.i, 1
  %i.hy = icmp eq i64 %i.hw, 0
  %unroll_iter331 = and i64 %wide.trip.count.i37.i, 4294967294
  %lcmp.mod329.not = icmp eq i64 %xtraiter328, 0
  %lcmp.mod330 = trunc i32 %i.hv to i1
  br label %.lr.ph84.i32.i

.lr.ph84.i32.i:                                   ; preds = %.loopexit.i44.i, %.lr.ph84.i32.preheader.i
  %5 = phi i32 [ %i.jx, %.loopexit.i44.i ], [ %.promoted.i.i, %.lr.ph84.i32.preheader.i ]
  %.16083.i.i = phi i64 [ %i.jw, %.loopexit.i44.i ], [ %.05998.i.i, %.lr.ph84.i32.preheader.i ]
  %.16482.i.i = phi ptr [ %.265.i45.i, %.loopexit.i44.i ], [ %.06395.i13.i, %.lr.ph84.i32.preheader.i ] ; 5 uses
  %.not71.i33.i = icmp eq ptr %.16482.i.i, null
  br i1 %.not71.i33.i, label %.preheader.i46.i, label %.preheader73.i35.i

.preheader73.i35.i:                               ; preds = %.lr.ph84.i32.i
  br i1 %.not108.i34.i, label %._crit_edge.i42.i, label %.lr.ph.i38.i.preheader

.lr.ph.i38.i.preheader:                           ; preds = %.preheader73.i35.i
  br i1 %i.hx, label %.lr.ph.i38.i.epil.preheader, label %.lr.ph.i38.i

.preheader.i46.i:                                 ; preds = %.lr.ph84.i32.i
  br i1 %.not108.i34.i, label %.loopexit.i44.i, label %.lr.ph81.i.i.preheader

.lr.ph81.i.i.preheader:                           ; preds = %.preheader.i46.i
  br i1 %i.hy, label %.lr.ph81.i.i.epil.preheader, label %.lr.ph81.i.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i.preheader, %.lr.ph.i38.i
  %indvars.iv.i39.i = phi i64 [ %indvars.iv.next.i40.i.1, %.lr.ph.i38.i ], [ 0, %.lr.ph.i38.i.preheader ] ; 6 uses
  %niter327 = phi i64 [ %niter327.next.1, %.lr.ph.i38.i ], [ 0, %.lr.ph.i38.i.preheader ]
  %i.hz = load ptr, ptr %i.hj, align 8, !tbaa !9
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.hz, i64 %indvars.iv.i39.i
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !20
  %i.ic = load ptr, ptr %i.hk, align 8, !tbaa !9
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %indvars.iv.i39.i
  store i16 %i.ib, ptr %i.id, align 2, !tbaa !20
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %.16482.i.i, i64 %indvars.iv.i39.i
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !20
  %i.ig = load ptr, ptr %i.hj, align 8, !tbaa !9
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.ig, i64 %indvars.iv.i39.i
  store i16 %i.if, ptr %i.ih, align 2, !tbaa !20
  %indvars.iv.next.i40.i = or disjoint i64 %indvars.iv.i39.i, 1 ; 4 uses
  %i.ii = load ptr, ptr %i.hj, align 8, !tbaa !9
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.ii, i64 %indvars.iv.next.i40.i
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !20
  %i.il = load ptr, ptr %i.hk, align 8, !tbaa !9
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %indvars.iv.next.i40.i
  store i16 %i.ik, ptr %i.im, align 2, !tbaa !20
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %.16482.i.i, i64 %indvars.iv.next.i40.i
  %i.io = load i16, ptr %i.in, align 2, !tbaa !20
  %i.ip = load ptr, ptr %i.hj, align 8, !tbaa !9
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.ip, i64 %indvars.iv.next.i40.i
  store i16 %i.io, ptr %i.iq, align 2, !tbaa !20
  %indvars.iv.next.i40.i.1 = add nuw nsw i64 %indvars.iv.i39.i, 2 ; 2 uses
  %niter327.next.1 = add i64 %niter327, 2         ; 2 uses
  %niter327.ncmp.1 = icmp eq i64 %niter327.next.1, %unroll_iter326
  br i1 %niter327.ncmp.1, label %._crit_edge.i42.i.loopexit.unr-lcssa, label %.lr.ph.i38.i, !llvm.loop !1277

._crit_edge.i42.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i38.i
  br i1 %lcmp.mod324.not, label %._crit_edge.i42.i, label %.lr.ph.i38.i.epil.preheader

.lr.ph.i38.i.epil.preheader:                      ; preds = %._crit_edge.i42.i.loopexit.unr-lcssa, %.lr.ph.i38.i.preheader
  %indvars.iv.i39.i.epil.init = phi i64 [ 0, %.lr.ph.i38.i.preheader ], [ %indvars.iv.next.i40.i.1, %._crit_edge.i42.i.loopexit.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod325)
  %i.ir = load ptr, ptr %i.hj, align 8, !tbaa !9
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %indvars.iv.i39.i.epil.init
  %i.it = load i16, ptr %i.is, align 2, !tbaa !20
  %i.iu = load ptr, ptr %i.hk, align 8, !tbaa !9
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.iu, i64 %indvars.iv.i39.i.epil.init
  store i16 %i.it, ptr %i.iv, align 2, !tbaa !20
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %.16482.i.i, i64 %indvars.iv.i39.i.epil.init
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !20
  %i.iy = load ptr, ptr %i.hj, align 8, !tbaa !9
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.iy, i64 %indvars.iv.i39.i.epil.init
  store i16 %i.ix, ptr %i.iz, align 2, !tbaa !20
  br label %._crit_edge.i42.i

._crit_edge.i42.i:                                ; preds = %.lr.ph.i38.i.epil.preheader, %._crit_edge.i42.i.loopexit.unr-lcssa, %.preheader73.i35.i
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %.16482.i.i, i64 %wide.trip.count.i37.i
  br label %.loopexit.i44.i

.lr.ph81.i.i:                                     ; preds = %.lr.ph81.i.i.preheader, %.lr.ph81.i.i
  %indvars.iv114.i.i = phi i64 [ %indvars.iv.next115.i.i.1, %.lr.ph81.i.i ], [ 0, %.lr.ph81.i.i.preheader ] ; 5 uses
  %niter332 = phi i64 [ %niter332.next.1, %.lr.ph81.i.i ], [ 0, %.lr.ph81.i.i.preheader ]
  %i.jb = load ptr, ptr %i.hj, align 8, !tbaa !9
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.jb, i64 %indvars.iv114.i.i
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !20
  %i.je = load ptr, ptr %i.hk, align 8, !tbaa !9
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.je, i64 %indvars.iv114.i.i
  store i16 %i.jd, ptr %i.jf, align 2, !tbaa !20
  %i.jg = load ptr, ptr %i.hj, align 8, !tbaa !9
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.jg, i64 %indvars.iv114.i.i
  store i16 0, ptr %i.jh, align 2, !tbaa !20
  %indvars.iv.next115.i.i = or disjoint i64 %indvars.iv114.i.i, 1 ; 3 uses
  %i.ji = load ptr, ptr %i.hj, align 8, !tbaa !9
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.ji, i64 %indvars.iv.next115.i.i
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !20
  %i.jl = load ptr, ptr %i.hk, align 8, !tbaa !9
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %indvars.iv.next115.i.i
  store i16 %i.jk, ptr %i.jm, align 2, !tbaa !20
  %i.jn = load ptr, ptr %i.hj, align 8, !tbaa !9
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %indvars.iv.next115.i.i
  store i16 0, ptr %i.jo, align 2, !tbaa !20
  %indvars.iv.next115.i.i.1 = add nuw nsw i64 %indvars.iv114.i.i, 2 ; 2 uses
  %niter332.next.1 = add i64 %niter332, 2         ; 2 uses
  %niter332.ncmp.1 = icmp eq i64 %niter332.next.1, %unroll_iter331
  br i1 %niter332.ncmp.1, label %.loopexit.i44.i.loopexit.unr-lcssa, label %.lr.ph81.i.i, !llvm.loop !1278

.loopexit.i44.i.loopexit.unr-lcssa:               ; preds = %.lr.ph81.i.i
  br i1 %lcmp.mod329.not, label %.loopexit.i44.i, label %.lr.ph81.i.i.epil.preheader

.lr.ph81.i.i.epil.preheader:                      ; preds = %.loopexit.i44.i.loopexit.unr-lcssa, %.lr.ph81.i.i.preheader
  %indvars.iv114.i.i.epil.init = phi i64 [ 0, %.lr.ph81.i.i.preheader ], [ %indvars.iv.next115.i.i.1, %.loopexit.i44.i.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod330)
  %i.jp = load ptr, ptr %i.hj, align 8, !tbaa !9
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv114.i.i.epil.init
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !20
  %i.js = load ptr, ptr %i.hk, align 8, !tbaa !9
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %indvars.iv114.i.i.epil.init
  store i16 %i.jr, ptr %i.jt, align 2, !tbaa !20
  %i.ju = load ptr, ptr %i.hj, align 8, !tbaa !9
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.ju, i64 %indvars.iv114.i.i.epil.init
  store i16 0, ptr %i.jv, align 2, !tbaa !20
  br label %.loopexit.i44.i

.loopexit.i44.i:                                  ; preds = %.lr.ph81.i.i.epil.preheader, %.loopexit.i44.i.loopexit.unr-lcssa, %._crit_edge.i42.i, %.preheader.i46.i
  %.265.i45.i = phi ptr [ %i.ja, %._crit_edge.i42.i ], [ null, %.preheader.i46.i ], [ null, %.loopexit.i44.i.loopexit.unr-lcssa ], [ null, %.lr.ph81.i.i.epil.preheader ] ; 2 uses
  %i.jw = add nuw i64 %.16083.i.i, 1              ; 4 uses
  %i.jx = add i32 %5, -1                          ; 3 uses
  %i.jy = icmp ne i32 %i.jx, 0                    ; 2 uses
  %i.jz = icmp ugt i64 %i.h, %i.jw
  %i.ka = select i1 %i.jy, i1 %i.jz, i1 false
  br i1 %i.ka, label %.lr.ph84.i32.i, label %._crit_edge85.i.i, !llvm.loop !1279

._crit_edge85.i.i:                                ; preds = %.loopexit.i44.i
  store i32 %i.jx, ptr %i.hh, align 8, !tbaa !1257
  br i1 %i.jy, label %.sink.split, label %bb.o

bb.n:                                             ; preds = %.preheader76.i.i
  br i1 %i.hs, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge85.i.i
  %.160.lcssa152.i.i = phi i64 [ %i.jw, %._crit_edge85.i.i ], [ %.05998.i.i, %bb.n ] ; 2 uses
  %.164.lcssa151.i.i = phi ptr [ %.265.i45.i, %._crit_edge85.i.i ], [ %.06395.i13.i, %bb.n ]
  %.not.i14.i = icmp eq ptr %.06196.i12.i, null
  %.pre139.i.i.a = load i32, ptr %i.hl, align 4, !tbaa !1258 ; 2 uses
  br i1 %.not.i14.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  %i.kb = load i32, ptr %i.hi, align 4, !tbaa !1267, !noalias !1280 ; 3 uses
  %i.kc = shl i32 %.pre139.i.i.a, 12
  %i.kd = udiv i32 %i.kc, %.pre141.i.i            ; 3 uses
  %i.ke = icmp ne i32 %i.kb, 0
  tail call void @llvm.assume(i1 %i.ke)
  %i.kf = load ptr, ptr %i.hk, align 8, !tbaa !9, !noalias !1280 ; 2 uses
  %i.kg = load ptr, ptr %i.hj, align 8, !tbaa !9, !noalias !1280 ; 2 uses
  %i.kh = sub nsw i32 4096, %i.kd                 ; 2 uses
  %wide.trip.count.i.i15.i = zext i32 %i.kb to i64 ; 3 uses
  %min.iters.check249 = icmp ult i32 %i.kb, 8
  br i1 %min.iters.check249, label %scalar.ph248.preheader, label %vector.ph250

vector.ph250:                                     ; preds = %bb.p
  %n.vec251 = and i64 %wide.trip.count.i.i15.i, 4294967288 ; 3 uses
  %broadcast.splatinsert252 = insertelement <8 x i32> poison, i32 %i.kd, i64 0
  %broadcast.splat253 = shufflevector <8 x i32> %broadcast.splatinsert252, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert254 = insertelement <8 x i32> poison, i32 %i.kh, i64 0
  %broadcast.splat255 = shufflevector <8 x i32> %broadcast.splatinsert254, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph250
  %index257 = phi i64 [ 0, %vector.ph250 ], [ %index.next260, %vector.body256 ] ; 4 uses
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %i.kf, i64 %index257
  %wide.load258 = load <8 x i16>, ptr %i.ki, align 2, !tbaa !20, !noalias !1280
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.kg, i64 %index257
  %wide.load259 = load <8 x i16>, ptr %i.kj, align 2, !tbaa !20, !noalias !1280
  %i.kk = sext <8 x i16> %wide.load258 to <8 x i32>
  %i.kl = mul nsw <8 x i32> %broadcast.splat255, %i.kk
  %i.km = sext <8 x i16> %wide.load259 to <8 x i32>
  %i.kn = mul nsw <8 x i32> %broadcast.splat253, %i.km
  %i.ko = add nsw <8 x i32> %i.kn, %i.kl
  %i.kp = lshr <8 x i32> %i.ko, splat (i32 12)
  %i.kq = trunc <8 x i32> %i.kp to <8 x i16>
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %.06196.i12.i, i64 %index257
  store <8 x i16> %i.kq, ptr %i.kr, align 2, !tbaa !20, !alias.scope !1280
  %index.next260 = add nuw i64 %index257, 8       ; 2 uses
  %i.ks = icmp eq i64 %index.next260, %n.vec251
  br i1 %i.ks, label %middle.block261, label %vector.body256, !llvm.loop !1283

middle.block261:                                  ; preds = %vector.body256
  %cmp.n262 = icmp eq i64 %n.vec251, %wide.trip.count.i.i15.i
  br i1 %cmp.n262, label %ma_linear_resampler_interpolate_frame_s16.exit.i19.i, label %scalar.ph248.preheader

scalar.ph248.preheader:                           ; preds = %bb.p, %middle.block261
  %indvars.iv.i.i16.i.ph = phi i64 [ 0, %bb.p ], [ %n.vec251, %middle.block261 ]
  br label %scalar.ph248

scalar.ph248:                                     ; preds = %scalar.ph248.preheader, %scalar.ph248
  %indvars.iv.i.i16.i = phi i64 [ %indvars.iv.next.i.i17.i, %scalar.ph248 ], [ %indvars.iv.i.i16.i.ph, %scalar.ph248.preheader ] ; 4 uses
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.kf, i64 %indvars.iv.i.i16.i
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !20, !noalias !1280
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %i.kg, i64 %indvars.iv.i.i16.i
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !20, !noalias !1280
  %i.kx = sext i16 %i.ku to i32
  %i.ky = mul nsw i32 %i.kh, %i.kx
  %i.kz = sext i16 %i.kw to i32
  %i.la = mul nsw i32 %i.kd, %i.kz
  %i.lb = add nsw i32 %i.la, %i.ky
  %i.lc = lshr i32 %i.lb, 12
  %i.ld = trunc i32 %i.lc to i16
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %.06196.i12.i, i64 %indvars.iv.i.i16.i
  store i16 %i.ld, ptr %i.le, align 2, !tbaa !20, !alias.scope !1280
end_hunk_0
begin_hunk_1_@ma_linear_resampler_process_pcm_frames:bb.a
  %indvars.iv125.i.i133 = phi i64 [ 0, %.lr.ph87.i.i130 ], [ %indvars.iv.next126.i.i134, %bb.z ] ; 5 uses
  %i.uc = load ptr, ptr %i.ua, align 8, !tbaa !742
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %indvars.iv125.i.i133 ; 2 uses
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !9
  %i.uf = load ptr, ptr %i.ub, align 8, !tbaa !743
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %indvars.iv125.i.i133
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !9
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %indvars.iv125.i.i133 ; 2 uses
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !336 ; 2 uses
  %i.uk = tail call float @llvm.fmuladd.f32(float %i.tu, float %i.uj, float %i.ue) ; 2 uses
  %i.ul = fneg float %i.uk
  %i.um = insertelement <2 x float> poison, float %i.ul, i64 0
  %i.un = shufflevector <2 x float> %i.um, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uo = fmul <2 x float> %i.ty, %i.un
  %i.up = insertelement <2 x float> poison, float %i.uj, i64 0
  %i.uq = shufflevector <2 x float> %i.up, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ur = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tx, <2 x float> %i.uq, <2 x float> %i.uo) ; 2 uses
  %i.us = extractelement <2 x float> %i.ur, i64 0
  %i.ut = fadd float %i.uh, %i.us
  store float %i.uk, ptr %i.ui, align 4, !tbaa !336
  store float %i.ut, ptr %i.ud, align 4, !tbaa !9
  %i.uu = load ptr, ptr %i.ub, align 8, !tbaa !743
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %indvars.iv125.i.i133
  %i.uw = extractelement <2 x float> %i.ur, i64 1
  store float %i.uw, ptr %i.uv, align 4, !tbaa !9
  %indvars.iv.next126.i.i134 = add nuw nsw i64 %indvars.iv125.i.i133, 1 ; 2 uses
  %exitcond129.not.i.i135 = icmp eq i64 %indvars.iv.next126.i.i134, %wide.trip.count128.i.i132
  br i1 %exitcond129.not.i.i135, label %ma_biquad_process_pcm_frame_f32.exit.i.i, label %bb.z, !llvm.loop !747

ma_biquad_process_pcm_frame_f32.exit.i.i:         ; preds = %bb.z
  %indvars.iv.next131.i.i136 = add nuw nsw i64 %indvars.iv130.i.i131, 1 ; 2 uses
  %i.ux = load i32, ptr %i.pt, align 8, !tbaa !798
  %i.uy = zext i32 %i.ux to i64
  %i.uz = icmp samesign ult i64 %indvars.iv.next131.i.i136, %i.uy
  br i1 %i.uz, label %.lr.ph87.i.i130, label %ma_lpf_process_pcm_frame_f32.exit.i.i, !llvm.loop !820

ma_lpf_process_pcm_frame_f32.exit.i.i:            ; preds = %ma_biquad_process_pcm_frame_f32.exit.i.i, %.preheader.i.i128, %.loopexit.i.i117
  %i.va = add nuw i64 %.16089.i.i104, 1           ; 3 uses
  %i.vb = load i32, ptr %i.pn, align 8, !tbaa !1257
  %i.vc = add i32 %i.vb, -1                       ; 2 uses
  store i32 %i.vc, ptr %i.pn, align 8, !tbaa !1257
  %i.vd = icmp ne i32 %i.vc, 0                    ; 2 uses
  %i.ve = icmp ugt i64 %i.pl, %i.va
  %i.vf = select i1 %i.vd, i1 %i.ve, i1 false
  br i1 %i.vf, label %.lr.ph90.i.i103, label %._crit_edge91.i.i89, !llvm.loop !1288

._crit_edge91.i.i89:                              ; preds = %ma_lpf_process_pcm_frame_f32.exit.i.i, %.preheader75.i.i84
  %.164.lcssa.i.i90 = phi ptr [ %.06395.i.i88, %.preheader75.i.i84 ], [ %.265.i.i118, %ma_lpf_process_pcm_frame_f32.exit.i.i ]
  %.160.lcssa.i.i91 = phi i64 [ %.05997.i.i86, %.preheader75.i.i84 ], [ %i.va, %ma_lpf_process_pcm_frame_f32.exit.i.i ] ; 3 uses
  %.lcssa76.i.i92 = phi i1 [ %i.pz, %.preheader75.i.i84 ], [ %i.vd, %ma_lpf_process_pcm_frame_f32.exit.i.i ]
  br i1 %.lcssa76.i.i92, label %.sink.split, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge91.i.i89
  %.not.i.i93 = icmp eq ptr %.06196.i.i87, null
  %.pre135.i.i94 = load i32, ptr %i.pv, align 4, !tbaa !1258 ; 2 uses
  %.pre137.i.i95 = load i32, ptr %i.pi, align 4, !tbaa !1259 ; 3 uses
  br i1 %.not.i.i93, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  %i.vg = load i32, ptr %i.po, align 4, !tbaa !1267, !noalias !1289 ; 3 uses
  %i.vh = uitofp i32 %.pre135.i.i94 to float
  %i.vi = uitofp i32 %.pre137.i.i95 to float
  %i.vj = fdiv float %i.vh, %i.vi                 ; 2 uses
  %i.vk = icmp ne i32 %i.vg, 0
  tail call void @llvm.assume(i1 %i.vk)
  %i.vl = load ptr, ptr %i.pq, align 8, !tbaa !9, !noalias !1289 ; 2 uses
  %i.vm = load ptr, ptr %i.pp, align 8, !tbaa !9, !noalias !1289 ; 2 uses
  %wide.trip.count.i.i.i96 = zext i32 %i.vg to i64 ; 4 uses
  %min.iters.check233 = icmp ult i32 %i.vg, 8
  br i1 %min.iters.check233, label %scalar.ph232.preheader, label %vector.ph234

vector.ph234:                                     ; preds = %bb.ab
  %n.vec235 = and i64 %wide.trip.count.i.i.i96, 4294967288 ; 3 uses
  %broadcast.splatinsert236 = insertelement <4 x float> poison, float %i.vj, i64 0
  %broadcast.splat237 = shufflevector <4 x float> %broadcast.splatinsert236, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body238

vector.body238:                                   ; preds = %vector.body238, %vector.ph234
  %index239 = phi i64 [ 0, %vector.ph234 ], [ %index.next244, %vector.body238 ] ; 4 uses
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %index239 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  %wide.load240 = load <4 x float>, ptr %i.vn, align 4, !tbaa !336, !noalias !1289 ; 2 uses
  %wide.load241 = load <4 x float>, ptr %i.vo, align 4, !tbaa !336, !noalias !1289 ; 2 uses
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.vm, i64 %index239 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %wide.load242 = load <4 x float>, ptr %i.vp, align 4, !tbaa !336, !noalias !1289
  %wide.load243 = load <4 x float>, ptr %i.vq, align 4, !tbaa !336, !noalias !1289
  %i.vr = fsub <4 x float> %wide.load242, %wide.load240
  %i.vs = fsub <4 x float> %wide.load243, %wide.load241
  %i.vt = fmul <4 x float> %broadcast.splat237, %i.vr
  %i.vu = fmul <4 x float> %broadcast.splat237, %i.vs
  %i.vv = fadd <4 x float> %wide.load240, %i.vt
  %i.vw = fadd <4 x float> %wide.load241, %i.vu
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %.06196.i.i87, i64 %index239 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  store <4 x float> %i.vv, ptr %i.vx, align 4, !tbaa !336, !alias.scope !1289
  store <4 x float> %i.vw, ptr %i.vy, align 4, !tbaa !336, !alias.scope !1289
  %index.next244 = add nuw i64 %index239, 8       ; 2 uses
  %i.vz = icmp eq i64 %index.next244, %n.vec235
  br i1 %i.vz, label %middle.block245, label %vector.body238, !llvm.loop !1292

middle.block245:                                  ; preds = %vector.body238
  %cmp.n246 = icmp eq i64 %n.vec235, %wide.trip.count.i.i.i96
  br i1 %cmp.n246, label %ma_linear_resampler_interpolate_frame_f32.exit.i.i, label %scalar.ph232.preheader

scalar.ph232.preheader:                           ; preds = %bb.ab, %middle.block245
  %indvars.iv.i.i.i97.ph = phi i64 [ 0, %bb.ab ], [ %n.vec235, %middle.block245 ]
  br label %scalar.ph232

scalar.ph232:                                     ; preds = %scalar.ph232.preheader, %scalar.ph232
  %indvars.iv.i.i.i97 = phi i64 [ %indvars.iv.next.i.i.i98, %scalar.ph232 ], [ %indvars.iv.i.i.i97.ph, %scalar.ph232.preheader ] ; 4 uses
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %indvars.iv.i.i.i97
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !336, !noalias !1289 ; 2 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.vm, i64 %indvars.iv.i.i.i97
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !336, !noalias !1289
  %i.we = fsub float %i.wd, %i.wb
  %i.wf = fmul float %i.vj, %i.we
  %i.wg = fadd float %i.wb, %i.wf
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %.06196.i.i87, i64 %indvars.iv.i.i.i97
  store float %i.wg, ptr %i.wh, align 4, !tbaa !336, !alias.scope !1289
  %indvars.iv.next.i.i.i98 = add nuw nsw i64 %indvars.iv.i.i.i97, 1 ; 2 uses
  %exitcond.not.i.i.i99 = icmp eq i64 %indvars.iv.next.i.i.i98, %wide.trip.count.i.i.i96
  br i1 %exitcond.not.i.i.i99, label %ma_linear_resampler_interpolate_frame_f32.exit.i.i, label %scalar.ph232, !llvm.loop !1293

ma_linear_resampler_interpolate_frame_f32.exit.i.i: ; preds = %scalar.ph232, %middle.block245
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %.06196.i.i87, i64 %wide.trip.count.i.i.i96
  br label %bb.ac

bb.ac:                                            ; preds = %ma_linear_resampler_interpolate_frame_f32.exit.i.i, %bb.aa
  %.162.i.i100 = phi ptr [ %i.wi, %ma_linear_resampler_interpolate_frame_f32.exit.i.i ], [ null, %bb.aa ]
  %i.wj = add nuw i64 %.05898.i.i85, 1            ; 2 uses
  %i.wk = load i32, ptr %i.pw, align 8, !tbaa !1263 ; 3 uses
  store i32 %i.wk, ptr %i.pn, align 8, !tbaa !1257
  %i.wl = load i32, ptr %i.px, align 4, !tbaa !1264
  %i.wm = add i32 %i.wl, %.pre135.i.i94           ; 3 uses
  store i32 %i.wm, ptr %i.pv, align 4, !tbaa !1258
  %.not69.i.i101 = icmp ult i32 %i.wm, %.pre137.i.i95
  br i1 %.not69.i.i101, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.wn = sub nuw i32 %i.wm, %.pre137.i.i95
  store i32 %i.wn, ptr %i.pv, align 4, !tbaa !1258
  %i.wo = add i32 %i.wk, 1                        ; 2 uses
  store i32 %i.wo, ptr %i.pn, align 8, !tbaa !1257
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.wp = phi i32 [ %i.wo, %bb.ad ], [ %i.wk, %bb.ac ]
  %exitcond133.not.i.i102 = icmp eq i64 %i.wj, %i.pm
  br i1 %exitcond133.not.i.i102, label %.sink.split, label %.preheader75.i.i84, !llvm.loop !1294

bb.af:                                            ; preds = %bb.v
  br i1 %.not105.i.i15, label %.sink.split, label %.preheader76.lr.ph.i.i16

.preheader76.lr.ph.i.i16:                         ; preds = %bb.af
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 13 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.promoted.pre.i.i17 = load i32, ptr %i.wq, align 8, !tbaa !1257
  br label %.preheader76.i.i18

.preheader76.i.i18:                               ; preds = %bb.an, %.preheader76.lr.ph.i.i16
  %.pre141.i.i19 = phi i32 [ %i.pj, %.preheader76.lr.ph.i.i16 ], [ %.pre141.i61.i, %bb.an ] ; 3 uses
  %.promoted.i.i20 = phi i32 [ %.promoted.pre.i.i17, %.preheader76.lr.ph.i.i16 ], [ %.promoted137.i.i57, %bb.an ] ; 2 uses
  %.05899.i.i21 = phi i64 [ 0, %.preheader76.lr.ph.i.i16 ], [ %i.adn, %bb.an ] ; 3 uses
  %.05998.i.i22 = phi i64 [ 0, %.preheader76.lr.ph.i.i16 ], [ %.160.lcssa152.i.i25, %bb.an ] ; 4 uses
  %.06196.i12.i23 = phi ptr [ %3, %.preheader76.lr.ph.i.i16 ], [ %.162.i28.i55, %bb.an ] ; 8 uses
  %.06395.i13.i24 = phi ptr [ %1, %.preheader76.lr.ph.i.i16 ], [ %.164.lcssa151.i.i26, %bb.an ] ; 2 uses
  %i.xb = icmp ne i32 %.promoted.i.i20, 0         ; 2 uses
  %i.xc = icmp ugt i64 %i.pl, %.05998.i.i22
  %i.xd = select i1 %i.xb, i1 %i.xc, i1 false
  br i1 %i.xd, label %.lr.ph84.i32.preheader.i61, label %bb.ag

.lr.ph84.i32.preheader.i61:                       ; preds = %.preheader76.i.i18
  %i.xe = load i32, ptr %i.wr, align 4, !tbaa !1267 ; 4 uses
  %.not108.i34.i62 = icmp eq i32 %i.xe, 0         ; 2 uses
  %wide.trip.count.i37.i63 = zext i32 %i.xe to i64 ; 6 uses
  %i.xf = add nsw i64 %wide.trip.count.i37.i63, -1 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i37.i63, 1
  %i.xg = icmp eq i64 %i.xf, 0
  %unroll_iter = and i64 %wide.trip.count.i37.i63, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod296 = trunc i32 %i.xe to i1
  %xtraiter297 = and i64 %wide.trip.count.i37.i63, 1
  %i.xh = icmp eq i64 %i.xf, 0
  %unroll_iter300 = and i64 %wide.trip.count.i37.i63, 4294967294
  %lcmp.mod298.not = icmp eq i64 %xtraiter297, 0
  %lcmp.mod299 = trunc i32 %i.xe to i1
  br label %.lr.ph84.i32.i64

.lr.ph84.i32.i64:                                 ; preds = %.loopexit.i44.i74, %.lr.ph84.i32.preheader.i61
  %6 = phi i32 [ %i.zg, %.loopexit.i44.i74 ], [ %.promoted.i.i20, %.lr.ph84.i32.preheader.i61 ]
  %.16083.i.i63 = phi i64 [ %i.zf, %.loopexit.i44.i74 ], [ %.05998.i.i22, %.lr.ph84.i32.preheader.i61 ]
  %.16482.i.i64 = phi ptr [ %.265.i45.i75, %.loopexit.i44.i74 ], [ %.06395.i13.i24, %.lr.ph84.i32.preheader.i61 ] ; 5 uses
  %.not71.i33.i67 = icmp eq ptr %.16482.i.i64, null
  br i1 %.not71.i33.i67, label %.preheader.i46.i77, label %.preheader73.i35.i68

.preheader73.i35.i68:                             ; preds = %.lr.ph84.i32.i64
  br i1 %.not108.i34.i62, label %._crit_edge.i42.i73, label %.lr.ph.i38.i69.preheader

.lr.ph.i38.i69.preheader:                         ; preds = %.preheader73.i35.i68
  br i1 %i.xg, label %.lr.ph.i38.i69.epil.preheader, label %.lr.ph.i38.i69

.preheader.i46.i77:                               ; preds = %.lr.ph84.i32.i64
  br i1 %.not108.i34.i62, label %.loopexit.i44.i74, label %.lr.ph81.i.i78.preheader

.lr.ph81.i.i78.preheader:                         ; preds = %.preheader.i46.i77
  br i1 %i.xh, label %.lr.ph81.i.i78.epil.preheader, label %.lr.ph81.i.i78

.lr.ph.i38.i69:                                   ; preds = %.lr.ph.i38.i69.preheader, %.lr.ph.i38.i69
  %indvars.iv.i39.i70 = phi i64 [ %indvars.iv.next.i40.i71.1, %.lr.ph.i38.i69 ], [ 0, %.lr.ph.i38.i69.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i38.i69 ], [ 0, %.lr.ph.i38.i69.preheader ]
  %i.xi = load ptr, ptr %i.ws, align 8, !tbaa !9
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.xi, i64 %indvars.iv.i39.i70
  %i.xk = load float, ptr %i.xj, align 4, !tbaa !336
  %i.xl = load ptr, ptr %i.wt, align 8, !tbaa !9
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.xl, i64 %indvars.iv.i39.i70
  store float %i.xk, ptr %i.xm, align 4, !tbaa !336
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %.16482.i.i64, i64 %indvars.iv.i39.i70
  %i.xo = load float, ptr %i.xn, align 4, !tbaa !336
  %i.xp = load ptr, ptr %i.ws, align 8, !tbaa !9
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %indvars.iv.i39.i70
  store float %i.xo, ptr %i.xq, align 4, !tbaa !336
  %indvars.iv.next.i40.i71 = or disjoint i64 %indvars.iv.i39.i70, 1 ; 4 uses
  %i.xr = load ptr, ptr %i.ws, align 8, !tbaa !9
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.xr, i64 %indvars.iv.next.i40.i71
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !336
  %i.xu = load ptr, ptr %i.wt, align 8, !tbaa !9
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.xu, i64 %indvars.iv.next.i40.i71
  store float %i.xt, ptr %i.xv, align 4, !tbaa !336
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %.16482.i.i64, i64 %indvars.iv.next.i40.i71
  %i.xx = load float, ptr %i.xw, align 4, !tbaa !336
  %i.xy = load ptr, ptr %i.ws, align 8, !tbaa !9
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %indvars.iv.next.i40.i71
  store float %i.xx, ptr %i.xz, align 4, !tbaa !336
  %indvars.iv.next.i40.i71.1 = add nuw nsw i64 %indvars.iv.i39.i70, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i42.i73.loopexit.unr-lcssa, label %.lr.ph.i38.i69, !llvm.loop !1295

._crit_edge.i42.i73.loopexit.unr-lcssa:           ; preds = %.lr.ph.i38.i69
  br i1 %lcmp.mod.not, label %._crit_edge.i42.i73, label %.lr.ph.i38.i69.epil.preheader

.lr.ph.i38.i69.epil.preheader:                    ; preds = %._crit_edge.i42.i73.loopexit.unr-lcssa, %.lr.ph.i38.i69.preheader
  %indvars.iv.i39.i70.epil.init = phi i64 [ 0, %.lr.ph.i38.i69.preheader ], [ %indvars.iv.next.i40.i71.1, %._crit_edge.i42.i73.loopexit.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod296)
  %i.ya = load ptr, ptr %i.ws, align 8, !tbaa !9
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %indvars.iv.i39.i70.epil.init
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !336
  %i.yd = load ptr, ptr %i.wt, align 8, !tbaa !9
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %indvars.iv.i39.i70.epil.init
  store float %i.yc, ptr %i.ye, align 4, !tbaa !336
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %.16482.i.i64, i64 %indvars.iv.i39.i70.epil.init
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !336
  %i.yh = load ptr, ptr %i.ws, align 8, !tbaa !9
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %indvars.iv.i39.i70.epil.init
  store float %i.yg, ptr %i.yi, align 4, !tbaa !336
  br label %._crit_edge.i42.i73

._crit_edge.i42.i73:                              ; preds = %.lr.ph.i38.i69.epil.preheader, %._crit_edge.i42.i73.loopexit.unr-lcssa, %.preheader73.i35.i68
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %.16482.i.i64, i64 %wide.trip.count.i37.i63
  br label %.loopexit.i44.i74

.lr.ph81.i.i78:                                   ; preds = %.lr.ph81.i.i78.preheader, %.lr.ph81.i.i78
  %indvars.iv114.i.i79 = phi i64 [ %indvars.iv.next115.i.i80.1, %.lr.ph81.i.i78 ], [ 0, %.lr.ph81.i.i78.preheader ] ; 5 uses
  %niter301 = phi i64 [ %niter301.next.1, %.lr.ph81.i.i78 ], [ 0, %.lr.ph81.i.i78.preheader ]
  %i.yk = load ptr, ptr %i.ws, align 8, !tbaa !9
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.yk, i64 %indvars.iv114.i.i79
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !336
  %i.yn = load ptr, ptr %i.wt, align 8, !tbaa !9
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.yn, i64 %indvars.iv114.i.i79
  store float %i.ym, ptr %i.yo, align 4, !tbaa !336
  %i.yp = load ptr, ptr %i.ws, align 8, !tbaa !9
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %indvars.iv114.i.i79
  store float 0.000000e+00, ptr %i.yq, align 4, !tbaa !336
  %indvars.iv.next115.i.i80 = or disjoint i64 %indvars.iv114.i.i79, 1 ; 3 uses
  %i.yr = load ptr, ptr %i.ws, align 8, !tbaa !9
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %indvars.iv.next115.i.i80
  %i.yt = load float, ptr %i.ys, align 4, !tbaa !336
  %i.yu = load ptr, ptr %i.wt, align 8, !tbaa !9
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.yu, i64 %indvars.iv.next115.i.i80
  store float %i.yt, ptr %i.yv, align 4, !tbaa !336
  %i.yw = load ptr, ptr %i.ws, align 8, !tbaa !9
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.yw, i64 %indvars.iv.next115.i.i80
  store float 0.000000e+00, ptr %i.yx, align 4, !tbaa !336
  %indvars.iv.next115.i.i80.1 = add nuw nsw i64 %indvars.iv114.i.i79, 2 ; 2 uses
  %niter301.next.1 = add i64 %niter301, 2         ; 2 uses
  %niter301.ncmp.1 = icmp eq i64 %niter301.next.1, %unroll_iter300
  br i1 %niter301.ncmp.1, label %.loopexit.i44.i74.loopexit.unr-lcssa, label %.lr.ph81.i.i78, !llvm.loop !1296

.loopexit.i44.i74.loopexit.unr-lcssa:             ; preds = %.lr.ph81.i.i78
  br i1 %lcmp.mod298.not, label %.loopexit.i44.i74, label %.lr.ph81.i.i78.epil.preheader

.lr.ph81.i.i78.epil.preheader:                    ; preds = %.loopexit.i44.i74.loopexit.unr-lcssa, %.lr.ph81.i.i78.preheader
  %indvars.iv114.i.i79.epil.init = phi i64 [ 0, %.lr.ph81.i.i78.preheader ], [ %indvars.iv.next115.i.i80.1, %.loopexit.i44.i74.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod299)
  %i.yy = load ptr, ptr %i.ws, align 8, !tbaa !9
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %indvars.iv114.i.i79.epil.init
  %i.za = load float, ptr %i.yz, align 4, !tbaa !336
  %i.zb = load ptr, ptr %i.wt, align 8, !tbaa !9
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %indvars.iv114.i.i79.epil.init
  store float %i.za, ptr %i.zc, align 4, !tbaa !336
  %i.zd = load ptr, ptr %i.ws, align 8, !tbaa !9
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.zd, i64 %indvars.iv114.i.i79.epil.init
  store float 0.000000e+00, ptr %i.ze, align 4, !tbaa !336
  br label %.loopexit.i44.i74

.loopexit.i44.i74:                                ; preds = %.lr.ph81.i.i78.epil.preheader, %.loopexit.i44.i74.loopexit.unr-lcssa, %._crit_edge.i42.i73, %.preheader.i46.i77
  %.265.i45.i75 = phi ptr [ %i.yj, %._crit_edge.i42.i73 ], [ null, %.preheader.i46.i77 ], [ null, %.loopexit.i44.i74.loopexit.unr-lcssa ], [ null, %.lr.ph81.i.i78.epil.preheader ] ; 2 uses
  %i.zf = add nuw i64 %.16083.i.i63, 1            ; 4 uses
  %i.zg = add i32 %6, -1                          ; 3 uses
  %i.zh = icmp ne i32 %i.zg, 0                    ; 2 uses
  %i.zi = icmp ugt i64 %i.pl, %i.zf
  %i.zj = select i1 %i.zh, i1 %i.zi, i1 false
  br i1 %i.zj, label %.lr.ph84.i32.i64, label %._crit_edge85.i.i76, !llvm.loop !1297

._crit_edge85.i.i76:                              ; preds = %.loopexit.i44.i74
  store i32 %i.zg, ptr %i.wq, align 8, !tbaa !1257
  br i1 %i.zh, label %.sink.split, label %bb.ah

bb.ag:                                            ; preds = %.preheader76.i.i18
  br i1 %i.xb, label %.sink.split, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge85.i.i76
  %.160.lcssa152.i.i25 = phi i64 [ %i.zf, %._crit_edge85.i.i76 ], [ %.05998.i.i22, %bb.ag ] ; 2 uses
  %.164.lcssa151.i.i26 = phi ptr [ %.265.i45.i75, %._crit_edge85.i.i76 ], [ %.06395.i13.i24, %bb.ag ]
  %.not.i14.i27 = icmp eq ptr %.06196.i12.i23, null
  %.pre139.i.i28 = load i32, ptr %i.wu, align 4, !tbaa !1258 ; 2 uses
  br i1 %.not.i14.i27, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  %i.zk = load i32, ptr %i.wr, align 4, !tbaa !1267, !noalias !1298 ; 3 uses
  %i.zl = uitofp i32 %.pre139.i.i28 to float
  %i.zm = uitofp i32 %.pre141.i.i19 to float
  %i.zn = fdiv float %i.zl, %i.zm                 ; 2 uses
  %i.zo = icmp ne i32 %i.zk, 0
  tail call void @llvm.assume(i1 %i.zo)
  %i.zp = load ptr, ptr %i.wt, align 8, !tbaa !9, !noalias !1298 ; 2 uses
  %i.zq = load ptr, ptr %i.ws, align 8, !tbaa !9, !noalias !1298 ; 2 uses
  %wide.trip.count.i.i15.i29 = zext i32 %i.zk to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.zk, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ai
  %n.vec = and i64 %wide.trip.count.i.i15.i29, 4294967288 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.zn, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %index ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 16
  %wide.load = load <4 x float>, ptr %i.zr, align 4, !tbaa !336, !noalias !1298 ; 2 uses
  %wide.load229 = load <4 x float>, ptr %i.zs, align 4, !tbaa !336, !noalias !1298 ; 2 uses
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.zq, i64 %index ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  %wide.load230 = load <4 x float>, ptr %i.zt, align 4, !tbaa !336, !noalias !1298
  %wide.load231 = load <4 x float>, ptr %i.zu, align 4, !tbaa !336, !noalias !1298
  %i.zv = fsub <4 x float> %wide.load230, %wide.load
  %i.zw = fsub <4 x float> %wide.load231, %wide.load229
  %i.zx = fmul <4 x float> %broadcast.splat, %i.zv
  %i.zy = fmul <4 x float> %broadcast.splat, %i.zw
  %i.zz = fadd <4 x float> %wide.load, %i.zx
  %i.aaa = fadd <4 x float> %wide.load229, %i.zy
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %.06196.i12.i23, i64 %index ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 16
  store <4 x float> %i.zz, ptr %i.aab, align 4, !tbaa !336, !alias.scope !1298
  store <4 x float> %i.aaa, ptr %i.aac, align 4, !tbaa !336, !alias.scope !1298
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aad = icmp eq i64 %index.next, %n.vec
  br i1 %i.aad, label %middle.block, label %vector.body, !llvm.loop !1301

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i15.i29
  br i1 %cmp.n, label %ma_linear_resampler_interpolate_frame_f32.exit.i19.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.ai, %middle.block
  %indvars.iv.i.i16.i30.ph = phi i64 [ 0, %bb.ai ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i16.i30 = phi i64 [ %indvars.iv.next.i.i17.i31, %scalar.ph ], [ %indvars.iv.i.i16.i30.ph, %scalar.ph.preheader ] ; 4 uses
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %indvars.iv.i.i16.i30
  %i.aaf = load float, ptr %i.aae, align 4, !tbaa !336, !noalias !1298 ; 2 uses
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.zq, i64 %indvars.iv.i.i16.i30
  %i.aah = load float, ptr %i.aag, align 4, !tbaa !336, !noalias !1298
  %i.aai = fsub float %i.aah, %i.aaf
  %i.aaj = fmul float %i.zn, %i.aai
  %i.aak = fadd float %i.aaf, %i.aaj
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %.06196.i12.i23, i64 %indvars.iv.i.i16.i30
  store float %i.aak, ptr %i.aal, align 4, !tbaa !336, !alias.scope !1298
  %indvars.iv.next.i.i17.i31 = add nuw nsw i64 %indvars.iv.i.i16.i30, 1 ; 2 uses
  %exitcond.not.i.i18.i32 = icmp eq i64 %indvars.iv.next.i.i17.i31, %wide.trip.count.i.i15.i29
  br i1 %exitcond.not.i.i18.i32, label %ma_linear_resampler_interpolate_frame_f32.exit.i19.i, label %scalar.ph, !llvm.loop !1302

ma_linear_resampler_interpolate_frame_f32.exit.i19.i: ; preds = %scalar.ph, %middle.block
  %i.aam = load i32, ptr %i.pg, align 8, !tbaa !1260
  %.not69.i20.i33 = icmp eq i32 %i.aam, %.pre141.i.i19
  br i1 %.not69.i20.i33, label %ma_lpf_process_pcm_frame_f32.exit.i26.i, label %.preheader75.i21.i34

.preheader75.i21.i34:                             ; preds = %ma_linear_resampler_interpolate_frame_f32.exit.i19.i
  %i.aan = load i32, ptr %i.wv, align 4, !tbaa !797
  %.not109.i22.i35 = icmp eq i32 %i.aan, 0
  br i1 %.not109.i22.i35, label %.preheader74.i24.i43, label %.lr.ph91.i.i36

.preheader74.i24.i43:                             ; preds = %ma_lpf1_process_pcm_frame_f32.exit.i.i23.i, %.preheader75.i21.i34
  %i.aao = load i32, ptr %i.wx, align 8, !tbaa !798
  %.not110.i.i44 = icmp eq i32 %i.aao, 0
  br i1 %.not110.i.i44, label %ma_lpf_process_pcm_frame_f32.exit.i26.i, label %.lr.ph94.i.i45

.lr.ph91.i.i36:                                   ; preds = %.preheader75.i21.i34, %ma_lpf1_process_pcm_frame_f32.exit.i.i23.i
  %indvars.iv124.i.i37 = phi i64 [ %indvars.iv.next125.i.i42, %ma_lpf1_process_pcm_frame_f32.exit.i.i23.i ], [ 0, %.preheader75.i21.i34 ] ; 2 uses
  %i.aap = load ptr, ptr %i.ww, align 8, !tbaa !801
  %i.aaq = getelementptr inbounds nuw [40 x i8], ptr %i.aap, i64 %indvars.iv124.i.i37 ; 3 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 4
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !761 ; 4 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8
  %i.aau = load float, ptr %i.aat, align 8, !tbaa !9 ; 4 uses
  %i.aav = fsub float 1.000000e+00, %i.aau        ; 3 uses
  %i.aaw = icmp ne i32 %i.aas, 0
  tail call void @llvm.assume(i1 %i.aaw)
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaq, i64 16 ; 3 uses
  %wide.trip.count122.i.i38 = zext i32 %i.aas to i64 ; 2 uses
  %xtraiter302 = and i64 %wide.trip.count122.i.i38, 1
  %i.aay = icmp eq i32 %i.aas, 1
  br i1 %i.aay, label %.epil.preheader, label %.lr.ph91.i.i36.new

.lr.ph91.i.i36.new:                               ; preds = %.lr.ph91.i.i36
  %unroll_iter305 = and i64 %wide.trip.count122.i.i38, 4294967294
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph91.i.i36.new
  %indvars.iv119.i.i39 = phi i64 [ 0, %.lr.ph91.i.i36.new ], [ %indvars.iv.next120.i.i40.1, %bb.aj ] ; 4 uses
  %niter306 = phi i64 [ 0, %.lr.ph91.i.i36.new ], [ %niter306.next.1, %bb.aj ]
  %i.aaz = load ptr, ptr %i.aax, align 8, !tbaa !759
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %indvars.iv119.i.i39 ; 2 uses
  %i.abb = load float, ptr %i.aba, align 4, !tbaa !9
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %.06196.i12.i23, i64 %indvars.iv119.i.i39 ; 2 uses
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !336
  %i.abe = fmul float %i.aau, %i.abb
  %i.abf = tail call float @llvm.fmuladd.f32(float %i.aav, float %i.abd, float %i.abe) ; 2 uses
  store float %i.abf, ptr %i.abc, align 4, !tbaa !336
  store float %i.abf, ptr %i.aba, align 4, !tbaa !9
  %indvars.iv.next120.i.i40 = or disjoint i64 %indvars.iv119.i.i39, 1 ; 2 uses
  %i.abg = load ptr, ptr %i.aax, align 8, !tbaa !759
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.abg, i64 %indvars.iv.next120.i.i40 ; 2 uses
  %i.abi = load float, ptr %i.abh, align 4, !tbaa !9
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %.06196.i12.i23, i64 %indvars.iv.next120.i.i40 ; 2 uses
  %i.abk = load float, ptr %i.abj, align 4, !tbaa !336
  %i.abl = fmul float %i.aau, %i.abi
  %i.abm = tail call float @llvm.fmuladd.f32(float %i.aav, float %i.abk, float %i.abl) ; 2 uses
  store float %i.abm, ptr %i.abj, align 4, !tbaa !336
  store float %i.abm, ptr %i.abh, align 4, !tbaa !9
  %indvars.iv.next120.i.i40.1 = add nuw nsw i64 %indvars.iv119.i.i39, 2 ; 2 uses
  %niter306.next.1 = add i64 %niter306, 2         ; 2 uses
  %niter306.ncmp.1 = icmp eq i64 %niter306.next.1, %unroll_iter305
  br i1 %niter306.ncmp.1, label %ma_lpf1_process_pcm_frame_f32.exit.i.i23.i.unr-lcssa, label %bb.aj, !llvm.loop !763

ma_lpf1_process_pcm_frame_f32.exit.i.i23.i.unr-lcssa: ; preds = %bb.aj
  %lcmp.mod303.not = icmp eq i64 %xtraiter302, 0
  br i1 %lcmp.mod303.not, label %ma_lpf1_process_pcm_frame_f32.exit.i.i23.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %ma_lpf1_process_pcm_frame_f32.exit.i.i23.i.unr-lcssa, %.lr.ph91.i.i36
  %indvars.iv119.i.i39.epil.init = phi i64 [ 0, %.lr.ph91.i.i36 ], [ %indvars.iv.next120.i.i40.1, %ma_lpf1_process_pcm_frame_f32.exit.i.i23.i.unr-lcssa ] ; 2 uses
  %lcmp.mod304 = trunc i32 %i.aas to i1
  tail call void @llvm.assume(i1 %lcmp.mod304)
  %i.abn = load ptr, ptr %i.aax, align 8, !tbaa !759
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.abn, i64 %indvars.iv119.i.i39.epil.init ; 2 uses
  %i.abp = load float, ptr %i.abo, align 4, !tbaa !9
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %.06196.i12.i23, i64 %indvars.iv119.i.i39.epil.init ; 2 uses
  %i.abr = load float, ptr %i.abq, align 4, !tbaa !336
  %i.abs = fmul float %i.aau, %i.abp
  %i.abt = tail call float @llvm.fmuladd.f32(float %i.aav, float %i.abr, float %i.abs) ; 2 uses
  store float %i.abt, ptr %i.abq, align 4, !tbaa !336
  store float %i.abt, ptr %i.abo, align 4, !tbaa !9
  br label %ma_lpf1_process_pcm_frame_f32.exit.i.i23.i

ma_lpf1_process_pcm_frame_f32.exit.i.i23.i:       ; preds = %ma_lpf1_process_pcm_frame_f32.exit.i.i23.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next125.i.i42 = add nuw nsw i64 %indvars.iv124.i.i37, 1 ; 2 uses
  %i.abu = load i32, ptr %i.wv, align 4, !tbaa !797
  %i.abv = zext i32 %i.abu to i64
  %i.abw = icmp samesign ult i64 %indvars.iv.next125.i.i42, %i.abv
  br i1 %i.abw, label %.lr.ph91.i.i36, label %.preheader74.i24.i43, !llvm.loop !819

.lr.ph94.i.i45:                                   ; preds = %.preheader74.i24.i43, %ma_biquad_process_pcm_frame_f32.exit.i25.i
  %indvars.iv132.i.i46 = phi i64 [ %indvars.iv.next133.i.i51, %ma_biquad_process_pcm_frame_f32.exit.i25.i ], [ 0, %.preheader74.i24.i43 ] ; 2 uses
  %i.abx = load ptr, ptr %i.wy, align 8, !tbaa !802
  %i.aby = getelementptr inbounds nuw [64 x i8], ptr %i.abx, i64 %indvars.iv132.i.i46 ; 6 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 4
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !745 ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aby, i64 8
  %i.acc = load float, ptr %i.acb, align 8, !tbaa !9
  %i.acd = getelementptr inbounds nuw i8, ptr %i.aby, i64 12
  %i.ace = getelementptr inbounds nuw i8, ptr %i.aby, i64 20
  %i.acf = load <2 x float>, ptr %i.acd, align 4, !tbaa !9
  %i.acg = load <2 x float>, ptr %i.ace, align 4, !tbaa !9
  %i.ach = icmp ne i32 %i.aca, 0
  tail call void @llvm.assume(i1 %i.ach)
  %i.aci = getelementptr inbounds nuw i8, ptr %i.aby, i64 32
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aby, i64 40 ; 2 uses
  %wide.trip.count130.i.i47 = zext i32 %i.aca to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph94.i.i45
  %indvars.iv127.i.i48 = phi i64 [ 0, %.lr.ph94.i.i45 ], [ %indvars.iv.next128.i.i49, %bb.ak ] ; 5 uses
  %i.ack = load ptr, ptr %i.aci, align 8, !tbaa !742
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.ack, i64 %indvars.iv127.i.i48 ; 2 uses
  %i.acm = load float, ptr %i.acl, align 4, !tbaa !9
end_hunk_1
begin_hunk_2_@ma_dr_wav_read_pcm_frames_be:bb.a

vector.ph78:                                      ; preds = %.lr.ph35.preheader
  %n.vec79 = and i64 %i.bg, -4                    ; 3 uses
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next84, %vector.body80 ] ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index81 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %wide.load82 = load <2 x i64>, ptr %i.by, align 8, !tbaa !69
  %wide.load83 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !69
  %i.ca = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load82)
  %i.cb = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load83)
  store <2 x i64> %i.ca, ptr %i.by, align 8, !tbaa !69
  store <2 x i64> %i.cb, ptr %i.bz, align 8, !tbaa !69
  %index.next84 = add nuw i64 %index81, 4         ; 2 uses
  %i.cc = icmp eq i64 %index.next84, %n.vec79
  br i1 %i.cc, label %middle.block85, label %vector.body80, !llvm.loop !2700

middle.block85:                                   ; preds = %vector.body80
  %cmp.n86 = icmp eq i64 %i.bg, %n.vec79
  br i1 %cmp.n86, label %.critedge, label %.lr.ph35.preheader88

.lr.ph35.preheader88:                             ; preds = %.lr.ph35.preheader, %middle.block85
  %.0.i1934.ph = phi i64 [ 0, %.lr.ph35.preheader ], [ %n.vec79, %middle.block85 ]
  br label %.lr.ph35

.lr.ph33:                                         ; preds = %.lr.ph33.preheader, %.lr.ph33
  %.0.i32 = phi i64 [ %i.cg, %.lr.ph33 ], [ %.0.i32.ph, %.lr.ph33.preheader ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.0.i32 ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !20
  %i.cf = tail call i16 @llvm.bswap.i16(i16 %i.ce)
  store i16 %i.cf, ptr %i.cd, align 2, !tbaa !20
  %i.cg = add nuw i64 %.0.i32, 1                  ; 2 uses
  %exitcond44.not = icmp eq i64 %i.cg, %i.bg
  br i1 %exitcond44.not, label %.critedge, label %.lr.ph33, !llvm.loop !2701

.lr.ph31:                                         ; preds = %.lr.ph31, %.lr.ph31.preheader.new
  %.0.i1830 = phi i64 [ 0, %.lr.ph31.preheader.new ], [ %i.cs, %.lr.ph31 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph31.preheader.new ], [ %niter.next.1, %.lr.ph31 ]
  %i.ch = mul i64 %.0.i1830, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 %i.ch ; 3 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !9
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 2 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !9
  store i8 %i.cl, ptr %i.ci, align 1, !tbaa !9
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !9
  %i.cm = mul i64 %.0.i1830, 3
  %i.cn = getelementptr i8, ptr %2, i64 %i.cm     ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 3      ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !9
  %i.cq = getelementptr i8, ptr %i.cn, i64 5      ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !9
  store i8 %i.cr, ptr %i.co, align 1, !tbaa !9
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !9
  %i.cs = add nuw i64 %.0.i1830, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.loopexit90.unr-lcssa, label %.lr.ph31, !llvm.loop !2702

.lr.ph:                                           ; preds = %.lr.ph.preheader91, %.lr.ph
  %.0.i1729 = phi i64 [ %i.cw, %.lr.ph ], [ %.0.i1729.ph, %.lr.ph.preheader91 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0.i1729 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !8
  %i.cv = tail call i32 @llvm.bswap.i32(i32 %i.cu)
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !8
  %i.cw = add nuw i64 %.0.i1729, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cw, %i.bg
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !2703

.lr.ph35:                                         ; preds = %.lr.ph35.preheader88, %.lr.ph35
  %.0.i1934 = phi i64 [ %i.da, %.lr.ph35 ], [ %.0.i1934.ph, %.lr.ph35.preheader88 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0.i1934 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !69
  %i.cz = tail call i64 @llvm.bswap.i64(i64 %i.cy)
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !69
  %i.da = add nuw i64 %.0.i1934, 1                ; 2 uses
  %exitcond45.not = icmp eq i64 %i.da, %i.bg
  br i1 %exitcond45.not, label %.critedge, label %.lr.ph35, !llvm.loop !2704

.critedge.loopexit90.unr-lcssa:                   ; preds = %.lr.ph31
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.lr.ph31.epil.preheader

.lr.ph31.epil.preheader:                          ; preds = %.critedge.loopexit90.unr-lcssa, %.lr.ph31.preheader
  %.0.i1830.epil.init = phi i64 [ 0, %.lr.ph31.preheader ], [ %i.cs, %.critedge.loopexit90.unr-lcssa ]
  %lcmp.mod93 = trunc i64 %i.bg to i1
  tail call void @llvm.assume(i1 %lcmp.mod93)
  %i.db = mul i64 %.0.i1830.epil.init, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 %i.db ; 3 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !9
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 2 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !9
  store i8 %i.df, ptr %i.dc, align 1, !tbaa !9
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !9
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.lr.ph31.epil.preheader, %.critedge.loopexit90.unr-lcssa, %.lr.ph33, %.lr.ph35, %middle.block, %middle.block68, %vec.epilog.middle.block, %middle.block85, %.preheader27, %.preheader25, %.preheader23, %.preheader, %bb.o, %bb.p, %ma_dr_wav_read_pcm_frames_le.exit, %ma_dr_wav_get_bytes_per_pcm_frame.exit
  %.1 = phi i64 [ 0, %ma_dr_wav_get_bytes_per_pcm_frame.exit ], [ %.021.i, %bb.p ], [ %.021.i, %ma_dr_wav_read_pcm_frames_le.exit ], [ 0, %bb.o ], [ %.021.i, %.preheader23 ], [ %.021.i, %.preheader ], [ %.021.i, %.preheader25 ], [ %.021.i, %.preheader27 ], [ %.021.i, %middle.block68 ], [ %.021.i, %.lr.ph35 ], [ %.021.i, %middle.block85 ], [ %.021.i, %middle.block ], [ %.021.i, %.lr.ph31.epil.preheader ], [ %.021.i, %vec.epilog.middle.block ], [ %.021.i, %.lr.ph33 ], [ %.021.i, %.critedge.loopexit90.unr-lcssa ], [ %.021.i, %.lr.ph ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ma_dr_wav_seek_to_first_pcm_frame(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1618
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1610
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1612
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1626
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call i32 %i.d(ptr noundef %i.f, i32 noundef %i.i, i32 noundef 0) #55
  %.not13 = icmp eq i32 %i.j, 0
  br i1 %.not13, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.l = load i16, ptr %i.k, align 4, !tbaa !1633
  switch i16 %i.l, label %bb.f [
    i16 2, label %bb.d
    i16 17, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.m, i8 0, i64 52, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 316
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.n, i8 0, i64 88, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %i.o, align 8, !tbaa !1698
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1620
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.q, ptr %i.r, align 8, !tbaa !1702
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %bb.f
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.f ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ma_dr_wav_read_pcm_frames_s16__msadpcm(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca [7 x i8], align 1                 ; 8 uses
  %i.b = alloca [14 x i8], align 1                ; 12 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.f = load i64, ptr %i.d, align 8, !tbaa !1698
  %i.g = load i64, ptr %i.e, align 8, !tbaa !1697
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %.lr.ph283, label %.loopexit

.lr.ph283:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 270 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %.pre = load i32, ptr %i.j, align 8, !tbaa !2705
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph283, %.backedge
  %.promoted307 = phi i32 [ %.pre, %.lr.ph283 ], [ %.promoted308, %.backedge ] ; 2 uses
  %.0191281 = phi i64 [ 0, %.lr.ph283 ], [ %.1192272, %.backedge ] ; 7 uses
  %.0194280 = phi ptr [ %2, %.lr.ph283 ], [ %.1195271, %.backedge ]
  %.0197279 = phi i64 [ %1, %.lr.ph283 ], [ %.1198270, %.backedge ] ; 3 uses
  %i.aj = icmp eq i32 %.promoted307, 0
  br i1 %i.aj, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.ak = load i32, ptr %i.i, align 8, !tbaa !2706
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.am = load i16, ptr %i.k, align 8, !tbaa !1632
  %i.an = icmp eq i16 %i.am, 1
  br i1 %i.an, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.ao = load ptr, ptr %0, align 8, !tbaa !1609
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !1612
  %i.aq = call i64 %i.ao(ptr noundef %i.ap, ptr noundef nonnull %i.a, i64 noundef 7) #55
  %.not217 = icmp eq i64 %i.aq, 7
  br i1 %.not217, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ar = load i16, ptr %i.m, align 8, !tbaa !1636
  %i.as = zext i16 %i.ar to i32
  %i.at = add nsw i32 %i.as, -7
  store i32 %i.at, ptr %i.i, align 8, !tbaa !2706
  %i.au = load i8, ptr %i.a, align 1, !tbaa !9    ; 2 uses
  %i.av = zext i8 %i.au to i16
  store i16 %i.av, ptr %i.n, align 4, !tbaa !20
  %i.aw = load i16, ptr %i.ag, align 1
  %i.ax = sext i16 %i.aw to i32
  store i32 %i.ax, ptr %i.r, align 8, !tbaa !8
  %i.ay = load i16, ptr %i.ah, align 1
  %i.az = sext i16 %i.ay to i32                   ; 2 uses
  store i32 %i.az, ptr %i.w, align 8, !tbaa !8
  %i.ba = load i16, ptr %i.ai, align 1
  %i.bb = sext i16 %i.ba to i32                   ; 2 uses
  store i32 %i.bb, ptr %i.v, align 4, !tbaa !8
  store i32 %i.bb, ptr %i.ae, align 8, !tbaa !8
  store i32 %i.az, ptr %i.af, align 4, !tbaa !8
  store i32 2, ptr %i.j, align 8, !tbaa !2705
  %i.bc = icmp ult i8 %i.au, 7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br i1 %i.bc, label %bb.j, label %.loopexit

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.bd = load ptr, ptr %0, align 8, !tbaa !1609
  %i.be = load ptr, ptr %i.l, align 8, !tbaa !1612
  %i.bf = call i64 %i.bd(ptr noundef %i.be, ptr noundef nonnull %i.b, i64 noundef 14) #55
  %.not = icmp eq i64 %i.bf, 14
  br i1 %.not, label %bb.h, label %.thread237

bb.h:                                             ; preds = %bb.g
  %i.bg = load i16, ptr %i.m, align 8, !tbaa !1636
  %i.bh = zext i16 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, -14
  store i32 %i.bi, ptr %i.i, align 8, !tbaa !2706
  %i.bj = load i8, ptr %i.b, align 1, !tbaa !9    ; 2 uses
  %i.bk = zext i8 %i.bj to i16
  store i16 %i.bk, ptr %i.n, align 4, !tbaa !20
  %i.bl = load i8, ptr %i.o, align 1, !tbaa !9    ; 2 uses
  %i.bm = zext i8 %i.bl to i16
  store i16 %i.bm, ptr %i.p, align 2, !tbaa !20
  %i.bn = load i16, ptr %i.q, align 1
  %i.bo = sext i16 %i.bn to i32
  store i32 %i.bo, ptr %i.r, align 8, !tbaa !8
  %i.bp = load i16, ptr %i.s, align 1
  %i.bq = sext i16 %i.bp to i32
  store i32 %i.bq, ptr %i.t, align 4, !tbaa !8
  %i.br = load i16, ptr %i.u, align 1
  %i.bs = sext i16 %i.br to i32                   ; 2 uses
  store i32 %i.bs, ptr %i.w, align 8, !tbaa !8
  %i.bt = load i16, ptr %i.x, align 1
  %i.bu = sext i16 %i.bt to i32                   ; 2 uses
  store i32 %i.bu, ptr %i.z, align 8, !tbaa !8
  %i.bv = load i16, ptr %i.aa, align 1
  %i.bw = sext i16 %i.bv to i32                   ; 2 uses
  store i32 %i.bw, ptr %i.v, align 4, !tbaa !8
  %i.bx = load i16, ptr %i.ab, align 1
  %i.by = sext i16 %i.bx to i32                   ; 2 uses
  store i32 %i.by, ptr %i.y, align 4, !tbaa !8
  store i32 %i.bw, ptr %i.ac, align 8, !tbaa !8
  store i32 %i.by, ptr %i.ad, align 4, !tbaa !8
  store i32 %i.bs, ptr %i.ae, align 8, !tbaa !8
  store i32 %i.bu, ptr %i.af, align 4, !tbaa !8
  store i32 2, ptr %i.j, align 8, !tbaa !2705
  %i.bz = icmp ugt i8 %i.bj, 6
  br i1 %i.bz, label %.thread237, label %bb.i

.thread237:                                       ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ca = icmp ult i8 %i.bl, 7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br i1 %i.ca, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.c, %bb.b
  %.promoted = phi i32 [ 2, %bb.f ], [ 2, %bb.i ], [ 0, %bb.c ], [ %.promoted307, %bb.b ]
  %cond234269 = icmp eq i64 %.0197279, 0
  br i1 %cond234269, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %.promoted309 = phi i32 [ %i.cu, %._crit_edge ], [ %.promoted, %bb.j ] ; 4 uses
  %.1192272 = phi i64 [ %i.cs, %._crit_edge ], [ %.0191281, %bb.j ] ; 4 uses
  %.1195271 = phi ptr [ %i.cq, %._crit_edge ], [ %.0194280, %bb.j ] ; 3 uses
  %.1198270 = phi i64 [ %i.cr, %._crit_edge ], [ %.0197279, %bb.j ] ; 2 uses
  %.not219 = icmp eq i32 %.promoted309, 0
  br i1 %.not219, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = load i64, ptr %i.d, align 8, !tbaa !1698 ; 2 uses
  %i.cc = load i64, ptr %i.e, align 8, !tbaa !1697
  %i.cd = icmp ult i64 %i.cb, %i.cc
  br i1 %i.cd, label %.preheader, label %.backedge

.preheader:                                       ; preds = %bb.l
  %i.ce = load i16, ptr %i.k, align 8, !tbaa !1632 ; 2 uses
  %.not289 = icmp eq i16 %i.ce, 0
  br i1 %.not289, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %.in = phi i16 [ %i.cm, %.lr.ph ], [ %i.ce, %.preheader ]
  %i.cf = zext i16 %.in to i32
  %i.cg = mul i32 %.promoted309, %i.cf
  %i.ch = zext i32 %i.cg to i64
  %reass.sub = sub nsw i64 %indvars.iv, %i.ch
  %i.ci = getelementptr [4 x i8], ptr %i.j, i64 %reass.sub
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !8
  %i.ck = trunc i32 %i.cj to i16
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %.1195271, i64 %indvars.iv
  store i16 %i.ck, ptr %i.cl, align 2, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cm = load i16, ptr %i.k, align 8, !tbaa !1632 ; 3 uses
  %i.cn = zext i16 %i.cm to i64
  %i.co = icmp samesign ult i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !2707

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.cp = zext i16 %i.cm to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.lcssa = phi i64 [ 0, %.preheader ], [ %i.cp, %._crit_edge.loopexit ]
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %.1195271, i64 %.lcssa
  %i.cr = add i64 %.1198270, -1                   ; 2 uses
  %i.cs = add i64 %.1192272, 1
  %i.ct = add nuw i64 %i.cb, 1
  store i64 %i.ct, ptr %i.d, align 8, !tbaa !1698
  %i.cu = add i32 %.promoted309, -1               ; 2 uses
  store i32 %i.cu, ptr %i.j, align 8, !tbaa !2705
  %cond234 = icmp eq i64 %i.cr, 0
  br i1 %cond234, label %.loopexit.loopexit, label %bb.k, !llvm.loop !2708

bb.m:                                             ; preds = %bb.k
  %i.cv = load i32, ptr %i.i, align 8, !tbaa !2706
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %.backedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  %i.cx = load ptr, ptr %0, align 8, !tbaa !1609
  %i.cy = load ptr, ptr %i.l, align 8, !tbaa !1612
  %i.cz = call i64 %i.cx(ptr noundef %i.cy, ptr noundef nonnull %i.c, i64 noundef 1) #55
  %.not220 = icmp eq i64 %i.cz, 1
  br i1 %.not220, label %bb.o, label %.thread247

bb.o:                                             ; preds = %bb.n
  %i.da = load i32, ptr %i.i, align 8, !tbaa !2706
  %i.db = add i32 %i.da, -1
  store i32 %i.db, ptr %i.i, align 8, !tbaa !2706
  %i.dc = load i8, ptr %i.c, align 1, !tbaa !9    ; 5 uses
  %i.dd = lshr i8 %i.dc, 4                        ; 4 uses
  %i.de = zext nneg i8 %i.dd to i32
  %i.df = or disjoint i8 %i.dd, -16
  %i.dg = sext i8 %i.df to i32
  %.not221250 = icmp slt i8 %i.dc, 0
  %.0188 = select i1 %.not221250, i32 %i.dg, i32 %i.de ; 2 uses
  %i.dh = zext i8 %i.dc to i32                    ; 2 uses
  %i.di = and i32 %i.dh, 15
  %i.dj = and i32 %i.dh, 8
  %.not222 = icmp eq i32 %i.dj, 0
  %masksel = select i1 %.not222, i32 0, i32 -16
  %.0 = or disjoint i32 %masksel, %i.di           ; 2 uses
  %i.dk = load i16, ptr %i.k, align 8, !tbaa !1632
  %i.dl = icmp eq i16 %i.dk, 1
  %i.dm = load i16, ptr %i.n, align 4, !tbaa !20  ; 4 uses
  br i1 %i.dl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dn = icmp ult i16 %i.dm, 7
  br i1 %i.dn, label %.thread240, label %.thread247

.thread240:                                       ; preds = %bb.p
  %i.do = zext nneg i16 %i.dm to i64              ; 2 uses
  %i.dp = load i32, ptr %i.w, align 8, !tbaa !8   ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_wav_read_pcm_frames_s16__msadpcm.coeff1Table, i64 %i.do
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !8  ; 2 uses
  %i.ds = mul nsw i32 %i.dr, %i.dp
  %i.dt = load i32, ptr %i.v, align 4, !tbaa !8
  %i.du = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_wav_read_pcm_frames_s16__msadpcm.coeff2Table, i64 %i.do
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !8  ; 2 uses
  %i.dw = mul nsw i32 %i.dv, %i.dt
  %i.dx = add nsw i32 %i.dw, %i.ds
  %i.dy = ashr i32 %i.dx, 8
  %i.dz = load i32, ptr %i.r, align 8, !tbaa !8   ; 2 uses
  %i.ea = mul nsw i32 %i.dz, %.0188
  %i.eb = add nsw i32 %i.dy, %i.ea
  %i.ec = call i32 @llvm.smax.i32(i32 %i.eb, i32 -32768)
  %i.ed = call i32 @llvm.smin.i32(i32 %i.ec, i32 32767) ; 3 uses
  %i.ee = zext nneg i8 %i.dd to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_wav_read_pcm_frames_s16__msadpcm.adaptationTable, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !8
  %i.eh = sext i32 %i.eg to i64
  %i.ei = sext i32 %i.dz to i64
  %i.ej = mul nsw i64 %i.eh, %i.ei
  %i.ek = ashr i64 %i.ej, 8                       ; 3 uses
  %i.el = icmp slt i64 %i.ek, 2147483648
  %i.em = icmp slt i64 %i.ek, 16
  %i.en = trunc i64 %i.ek to i32
  %spec.select223 = select i1 %i.el, i32 %i.en, i32 2147483647
  %i.eo = select i1 %i.em, i32 16, i32 %spec.select223 ; 2 uses
  %i.ep = mul nsw i32 %i.ed, %i.dr
  %i.eq = mul nsw i32 %i.dv, %i.dp
  %i.er = add nsw i32 %i.ep, %i.eq
  %i.es = ashr i32 %i.er, 8
  %i.et = mul nsw i32 %i.eo, %.0
  %i.eu = add nsw i32 %i.es, %i.et
  %i.ev = call i32 @llvm.smax.i32(i32 %i.eu, i32 -32768)
  %i.ew = call i32 @llvm.smin.i32(i32 %i.ev, i32 32767) ; 2 uses
  %i.ex = and i8 %i.dc, 15
  %i.ey = zext nneg i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_wav_read_pcm_frames_s16__msadpcm.adaptationTable, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !8
  %i.fb = sext i32 %i.fa to i64
  %i.fc = sext i32 %i.eo to i64
  %i.fd = mul nsw i64 %i.fc, %i.fb
  %i.fe = ashr i64 %i.fd, 8                       ; 3 uses
  %i.ff = icmp slt i64 %i.fe, 2147483648
  %i.fg = icmp slt i64 %i.fe, 16
  %i.fh = trunc i64 %i.fe to i32
  %spec.select225 = select i1 %i.ff, i32 %i.fh, i32 2147483647
  %i.fi = select i1 %i.fg, i32 16, i32 %spec.select225
  store i32 %i.fi, ptr %i.r, align 8, !tbaa !8
  store i32 %i.ed, ptr %i.v, align 4, !tbaa !8
  store i32 %i.ew, ptr %i.w, align 8, !tbaa !8
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.fj = icmp ugt i16 %i.dm, 6
  br i1 %i.fj, label %.thread247, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fk = zext nneg i16 %i.dm to i64              ; 2 uses
  %i.fl = load i32, ptr %i.w, align 8, !tbaa !8   ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_wav_read_pcm_frames_s16__msadpcm.coeff1Table, i64 %i.fk
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !8
  %i.fo = mul nsw i32 %i.fn, %i.fl
  %i.fp = load i32, ptr %i.v, align 4, !tbaa !8
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_wav_read_pcm_frames_s16__msadpcm.coeff2Table, i64 %i.fk
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !8
  %i.fs = mul nsw i32 %i.fr, %i.fp
  %i.ft = add nsw i32 %i.fs, %i.fo
  %i.fu = ashr i32 %i.ft, 8
  %i.fv = load i32, ptr %i.r, align 8, !tbaa !8   ; 2 uses
  %i.fw = mul nsw i32 %i.fv, %.0188
  %i.fx = add nsw i32 %i.fu, %i.fw
  %i.fy = call i32 @llvm.smax.i32(i32 %i.fx, i32 -32768)
  %i.fz = call i32 @llvm.smin.i32(i32 %i.fy, i32 32767) ; 2 uses
  %i.ga = zext nneg i8 %i.dd to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_wav_read_pcm_frames_s16__msadpcm.adaptationTable, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !8
  %i.gd = sext i32 %i.gc to i64
  %i.ge = sext i32 %i.fv to i64
  %i.gf = mul nsw i64 %i.gd, %i.ge
  %i.gg = ashr i64 %i.gf, 8                       ; 3 uses
  %i.gh = icmp slt i64 %i.gg, 2147483648
  %i.gi = icmp slt i64 %i.gg, 16
  %i.gj = trunc i64 %i.gg to i32
  %spec.select227 = select i1 %i.gh, i32 %i.gj, i32 2147483647
  %i.gk = select i1 %i.gi, i32 16, i32 %spec.select227
  store i32 %i.gk, ptr %i.r, align 8, !tbaa !8
  store i32 %i.fl, ptr %i.v, align 4, !tbaa !8
  store i32 %i.fz, ptr %i.w, align 8, !tbaa !8
  %i.gl = load i16, ptr %i.p, align 2, !tbaa !20  ; 2 uses
  %i.gm = icmp ugt i16 %i.gl, 6
  br i1 %i.gm, label %.thread247, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gn = zext nneg i16 %i.gl to i64              ; 2 uses
  %i.go = load i32, ptr %i.z, align 8, !tbaa !8   ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_wav_read_pcm_frames_s16__msadpcm.coeff1Table, i64 %i.gn
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !8
  %i.gr = mul nsw i32 %i.gq, %i.go
  %i.gs = load i32, ptr %i.y, align 4, !tbaa !8
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_wav_read_pcm_frames_s16__msadpcm.coeff2Table, i64 %i.gn
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !8
  %i.gv = mul nsw i32 %i.gu, %i.gs
  %i.gw = add nsw i32 %i.gv, %i.gr
  %i.gx = ashr i32 %i.gw, 8
  %i.gy = load i32, ptr %i.t, align 4, !tbaa !8   ; 2 uses
  %i.gz = mul nsw i32 %i.gy, %.0
  %i.ha = add nsw i32 %i.gx, %i.gz
  %i.hb = call i32 @llvm.smax.i32(i32 %i.ha, i32 -32768)
  %i.hc = call i32 @llvm.smin.i32(i32 %i.hb, i32 32767) ; 2 uses
  %i.hd = and i8 %i.dc, 15
  %i.he = zext nneg i8 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_wav_read_pcm_frames_s16__msadpcm.adaptationTable, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !8
  %i.hh = sext i32 %i.hg to i64
  %i.hi = sext i32 %i.gy to i64
  %i.hj = mul nsw i64 %i.hh, %i.hi
  %i.hk = ashr i64 %i.hj, 8                       ; 3 uses
  %i.hl = icmp slt i64 %i.hk, 2147483648
  %i.hm = icmp slt i64 %i.hk, 16
  %i.hn = trunc i64 %i.hk to i32
  %spec.select229 = select i1 %i.hl, i32 %i.hn, i32 2147483647
  %i.ho = select i1 %i.hm, i32 16, i32 %spec.select229
  store i32 %i.ho, ptr %i.t, align 4, !tbaa !8
  store i32 %i.go, ptr %i.y, align 4, !tbaa !8
  store i32 %i.hc, ptr %i.z, align 8, !tbaa !8
  br label %bb.t

.thread247:                                       ; preds = %bb.p, %bb.n, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  br label %.loopexit

bb.t:                                             ; preds = %.thread240, %bb.s
  %storemerge317 = phi i32 [ %i.fz, %bb.s ], [ %i.ed, %.thread240 ]
  %storemerge316 = phi i32 [ %i.hc, %bb.s ], [ %i.ew, %.thread240 ]
  %storemerge = phi i32 [ 1, %bb.s ], [ 2, %.thread240 ] ; 2 uses
  store i32 %storemerge317, ptr %i.ae, align 8, !tbaa !8
  store i32 %storemerge316, ptr %i.af, align 4, !tbaa !8
  store i32 %storemerge, ptr %i.j, align 8, !tbaa !2705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  br label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.t, %bb.m
  %.promoted308 = phi i32 [ 0, %bb.m ], [ %storemerge, %bb.t ], [ %.promoted309, %bb.l ]
  %i.hp = load i64, ptr %i.d, align 8, !tbaa !1698
  %i.hq = load i64, ptr %i.e, align 8, !tbaa !1697
  %i.hr = icmp ult i64 %i.hp, %i.hq
  br i1 %i.hr, label %bb.b, label %.loopexit, !llvm.loop !2709

.loopexit.loopexit:                               ; preds = %._crit_edge
  %i.hs = add i64 %.0197279, %.0191281
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.f, %.backedge, %bb.j, %.loopexit.loopexit, %bb.a, %.thread247, %.thread237, %.thread
  %.9 = phi i64 [ 0, %bb.a ], [ %.1192272, %.thread247 ], [ %.0191281, %.thread ], [ %.0191281, %.thread237 ], [ %i.hs, %.loopexit.loopexit ], [ %.0191281, %bb.j ], [ %.0191281, %bb.f ], [ %.0191281, %bb.i ], [ %.1192272, %.backedge ]
  ret i64 %.9
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ma_dr_wav_read_pcm_frames_s16__ima(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca [4 x i8], align 2                 ; 6 uses
  %i.b = alloca [8 x i8], align 2                 ; 8 uses
  %i.c = alloca [4 x i8], align 1                 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.f = load i64, ptr %i.d, align 8, !tbaa !1698
  %i.g = load i64, ptr %i.e, align 8, !tbaa !1697
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %.lr.ph293, label %.loopexit

.lr.ph293:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph293, %.backedge
  %.0186291 = phi i64 [ 0, %.lr.ph293 ], [ %.1187279, %.backedge ] ; 5 uses
  %.0189290 = phi ptr [ %2, %.lr.ph293 ], [ %.1190278, %.backedge ]
  %.0192289 = phi i64 [ %1, %.lr.ph293 ], [ %.1193277, %.backedge ] ; 3 uses
  %i.y = load i32, ptr %i.j, align 8, !tbaa !2710 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.aa = load i32, ptr %i.i, align 4, !tbaa !2711
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.ac = load i16, ptr %i.k, align 8, !tbaa !1632
  %i.ad = icmp eq i16 %i.ac, 1
  br i1 %i.ad, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.ae = load ptr, ptr %0, align 8, !tbaa !1609
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !1612
  %i.ag = call i64 %i.ae(ptr noundef %i.af, ptr noundef nonnull %i.a, i64 noundef 4) #55
  %.not210 = icmp eq i64 %i.ag, 4
  br i1 %.not210, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ah = load i16, ptr %i.m, align 8, !tbaa !1636
  %i.ai = zext i16 %i.ah to i32
  %i.aj = add nsw i32 %i.ai, -4                   ; 2 uses
  store i32 %i.aj, ptr %i.i, align 4, !tbaa !2711
  %i.ak = load i8, ptr %i.w, align 2, !tbaa !9    ; 2 uses
  %i.al = icmp ugt i8 %i.ak, 88
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1610
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !1612
  %i.ap = call i32 %i.an(ptr noundef %i.ao, i32 noundef %i.aj, i32 noundef 1) #55 ; 0 uses
  store i32 0, ptr %i.i, align 4, !tbaa !2711
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.aq = load i16, ptr %i.a, align 2
  %i.ar = sext i16 %i.aq to i32                   ; 2 uses
  store i32 %i.ar, ptr %i.p, align 8, !tbaa !8
  %i.as = zext nneg i8 %i.ak to i32
  store i32 %i.as, ptr %i.q, align 8, !tbaa !8
  store i32 %i.ar, ptr %i.v, align 4, !tbaa !8
  store i32 1, ptr %i.j, align 8, !tbaa !2710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.m

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.at = load ptr, ptr %0, align 8, !tbaa !1609
  %i.au = load ptr, ptr %i.l, align 8, !tbaa !1612
  %i.av = call i64 %i.at(ptr noundef %i.au, ptr noundef nonnull %i.b, i64 noundef 8) #55
  %.not = icmp eq i64 %i.av, 8
  br i1 %.not, label %bb.j, label %.thread228

bb.j:                                             ; preds = %bb.i
  %i.aw = load i16, ptr %i.m, align 8, !tbaa !1636
  %i.ax = zext i16 %i.aw to i32
  %i.ay = add nsw i32 %i.ax, -8                   ; 2 uses
  store i32 %i.ay, ptr %i.i, align 4, !tbaa !2711
  %i.az = load i8, ptr %i.n, align 2, !tbaa !9    ; 2 uses
  %i.ba = icmp ugt i8 %i.az, 88
  %i.bb = load i8, ptr %i.o, align 2              ; 2 uses
  %i.bc = icmp ugt i8 %i.bb, 88
  %or.cond = select i1 %i.ba, i1 true, i1 %i.bc
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1610
  %i.bf = load ptr, ptr %i.l, align 8, !tbaa !1612
  %i.bg = call i32 %i.be(ptr noundef %i.bf, i32 noundef %i.ay, i32 noundef 1) #55 ; 0 uses
  store i32 0, ptr %i.i, align 4, !tbaa !2711
  br label %.thread228

.thread228:                                       ; preds = %bb.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.bh = load i16, ptr %i.b, align 2
  %i.bi = sext i16 %i.bh to i32                   ; 2 uses
  store i32 %i.bi, ptr %i.p, align 8, !tbaa !8
  %i.bj = zext nneg i8 %i.az to i32
  store i32 %i.bj, ptr %i.q, align 8, !tbaa !8
  %i.bk = load i16, ptr %i.r, align 2
  %i.bl = sext i16 %i.bk to i32                   ; 2 uses
  store i32 %i.bl, ptr %i.s, align 4, !tbaa !8
  %i.bm = zext nneg i8 %i.bb to i32
  store i32 %i.bm, ptr %i.t, align 4, !tbaa !8
  store i32 %i.bi, ptr %i.u, align 8, !tbaa !8
  store i32 %i.bl, ptr %i.v, align 4, !tbaa !8
  store i32 1, ptr %i.j, align 8, !tbaa !2710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h, %bb.c, %bb.b
  %.promoted = phi i32 [ 1, %bb.l ], [ 1, %bb.h ], [ 0, %bb.c ], [ %i.y, %bb.b ]
  %cond276 = icmp eq i64 %.0192289, 0
  br i1 %cond276, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %i.bn = phi i32 [ %i.ch, %._crit_edge ], [ %.promoted, %bb.m ] ; 3 uses
  %.1187279 = phi i64 [ %i.cf, %._crit_edge ], [ %.0186291, %bb.m ] ; 4 uses
  %.1190278 = phi ptr [ %i.cd, %._crit_edge ], [ %.0189290, %bb.m ] ; 3 uses
  %.1193277 = phi i64 [ %i.ce, %._crit_edge ], [ %.0192289, %bb.m ] ; 2 uses
  %.not212 = icmp eq i32 %i.bn, 0
  br i1 %.not212, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load i64, ptr %i.d, align 8, !tbaa !1698 ; 2 uses
  %i.bp = load i64, ptr %i.e, align 8, !tbaa !1697
  %i.bq = icmp ult i64 %i.bo, %i.bp
  br i1 %i.bq, label %.preheader, label %.backedge

.preheader:                                       ; preds = %bb.o
  %i.br = load i16, ptr %i.k, align 8, !tbaa !1632 ; 2 uses
  %.not295 = icmp eq i16 %i.br, 0
  br i1 %.not295, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %.in = phi i16 [ %i.bz, %.lr.ph ], [ %i.br, %.preheader ]
  %i.bs = zext i16 %.in to i32
  %i.bt = mul i32 %i.bn, %i.bs
  %i.bu = zext i32 %i.bt to i64
  %reass.sub223 = sub nsw i64 %indvars.iv, %i.bu
  %i.bv = getelementptr [4 x i8], ptr %i.j, i64 %reass.sub223
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !8
  %i.bx = trunc i32 %i.bw to i16
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %.1190278, i64 %indvars.iv
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bz = load i16, ptr %i.k, align 8, !tbaa !1632 ; 3 uses
  %i.ca = zext i16 %i.bz to i64
  %i.cb = icmp samesign ult i64 %indvars.iv.next, %i.ca
  br i1 %i.cb, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !2712

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.cc = zext i16 %i.bz to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.lcssa = phi i64 [ 0, %.preheader ], [ %i.cc, %._crit_edge.loopexit ]
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %.1190278, i64 %.lcssa
  %i.ce = add i64 %.1193277, -1                   ; 2 uses
  %i.cf = add i64 %.1187279, 1
  %i.cg = add nuw i64 %i.bo, 1
  store i64 %i.cg, ptr %i.d, align 8, !tbaa !1698
  %i.ch = add i32 %i.bn, -1                       ; 2 uses
  store i32 %i.ch, ptr %i.j, align 8, !tbaa !2710
  %cond = icmp eq i64 %i.ce, 0
  br i1 %cond, label %.loopexit.loopexit, label %bb.n, !llvm.loop !2713

bb.p:                                             ; preds = %bb.n
  %i.ci = load i32, ptr %i.i, align 4, !tbaa !2711
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %.backedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 8, ptr %i.j, align 8, !tbaa !2710
  %i.ck = load i16, ptr %i.k, align 8, !tbaa !1632
  %.not296 = icmp eq i16 %i.ck, 0
  br i1 %.not296, label %.backedge, label %.lr.ph288

.lr.ph288:                                        ; preds = %bb.q, %bb.t
  %indvars.iv324 = phi i64 [ %indvars.iv.next325, %bb.t ], [ 0, %bb.q ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  %i.cl = load ptr, ptr %0, align 8, !tbaa !1609
  %i.cm = load ptr, ptr %i.l, align 8, !tbaa !1612
  %i.cn = call i64 %i.cl(ptr noundef %i.cm, ptr noundef nonnull %i.c, i64 noundef 4) #55
  %.not213 = icmp eq i64 %i.cn, 4
  br i1 %.not213, label %bb.r, label %.thread231

.thread231:                                       ; preds = %.lr.ph288
  store i32 0, ptr %i.j, align 8, !tbaa !2710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  br label %.loopexit

bb.r:                                             ; preds = %.lr.ph288
  %i.co = load i32, ptr %i.i, align 4, !tbaa !2711
  %i.cp = add i32 %i.co, -4
  store i32 %i.cp, ptr %i.i, align 4, !tbaa !2711
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv324 ; 4 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv324 ; 4 uses
  %i.cs = load i16, ptr %i.k, align 8, !tbaa !1632 ; 2 uses
  %i.ct = zext i16 %i.cs to i32                   ; 2 uses
  %i.cu = zext i16 %i.cs to i64                   ; 3 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.s
  %indvars.iv321 = phi i64 [ 0, %bb.r ], [ %indvars.iv.next322, %bb.s ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv321
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !9   ; 3 uses
  %i.cx = and i8 %i.cw, 15                        ; 3 uses
  %i.cy = lshr i8 %i.cw, 4                        ; 2 uses
  %i.cz = load i32, ptr %i.cq, align 4, !tbaa !8  ; 2 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr @ma_dr_wav_read_pcm_frames_s16__ima.stepTable, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !8  ; 4 uses
  %i.dd = load i32, ptr %i.cr, align 4, !tbaa !8
  %i.de = ashr i32 %i.dc, 3
  %i.df = zext nneg i8 %i.cx to i32               ; 3 uses
  %i.dg = and i32 %i.df, 1
  %.not214 = icmp eq i32 %i.dg, 0
  %i.dh = ashr i32 %i.dc, 2
  %i.di = select i1 %.not214, i32 0, i32 %i.dh
  %.0 = add nsw i32 %i.di, %i.de
  %i.dj = and i32 %i.df, 2
  %.not215 = icmp eq i32 %i.dj, 0
  %i.dk = ashr i32 %i.dc, 1
  %i.dl = select i1 %.not215, i32 0, i32 %i.dk
  %.1 = add nsw i32 %.0, %i.dl
  %i.dm = and i32 %i.df, 4
  %.not216 = icmp eq i32 %i.dm, 0
  %i.dn = select i1 %.not216, i32 0, i32 %i.dc
  %.2 = add nsw i32 %.1, %i.dn                    ; 2 uses
  %.not217 = icmp samesign ult i8 %i.cx, 8
  %i.do = sub nsw i32 0, %.2
  %.3 = select i1 %.not217, i32 %.2, i32 %i.do
  %i.dp = add nsw i32 %.3, %i.dd
  %i.dq = call i32 @llvm.smax.i32(i32 %i.dp, i32 -32768)
  %i.dr = call i32 @llvm.smin.i32(i32 %i.dq, i32 32767) ; 2 uses
  store i32 %i.dr, ptr %i.cr, align 4, !tbaa !8
  %i.ds = zext nneg i8 %i.cx to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_wav_read_pcm_frames_s16__ima.indexTable, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !8
  %i.dv = add nsw i32 %i.du, %i.cz
  %i.dw = call i32 @llvm.smax.i32(i32 %i.dv, i32 0)
  %i.dx = call i32 @llvm.umin.i32(i32 %i.dw, i32 88)
  store i32 %i.dx, ptr %i.cq, align 4, !tbaa !8
  %i.dy = load i32, ptr %i.j, align 8, !tbaa !2710
  %i.dz = mul i32 %i.dy, %i.ct
  %i.ea = zext i32 %i.dz to i64
  %i.eb = shl nuw nsw i64 %indvars.iv321, 1       ; 2 uses
  %i.ec = mul nuw nsw i64 %i.eb, %i.cu
  %reass.sub = sub nsw i64 %i.ec, %i.ea
  %i.ed = getelementptr [4 x i8], ptr %i.x, i64 %reass.sub
  %i.ee = getelementptr i8, ptr %i.ed, i64 64
  %i.ef = getelementptr [4 x i8], ptr %i.ee, i64 %indvars.iv324
  store i32 %i.dr, ptr %i.ef, align 4, !tbaa !8
  %i.eg = load i32, ptr %i.cq, align 4, !tbaa !8  ; 2 uses
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr @ma_dr_wav_read_pcm_frames_s16__ima.stepTable, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !8  ; 4 uses
  %i.ek = load i32, ptr %i.cr, align 4, !tbaa !8
  %i.el = ashr i32 %i.ej, 3
  %i.em = zext nneg i8 %i.cy to i32               ; 3 uses
  %i.en = and i32 %i.em, 1
  %.not218 = icmp eq i32 %i.en, 0
  %i.eo = ashr i32 %i.ej, 2
  %i.ep = select i1 %.not218, i32 0, i32 %i.eo
  %i.eq = and i32 %i.em, 2
  %.not219 = icmp eq i32 %i.eq, 0
  %i.er = ashr i32 %i.ej, 1
  %i.es = select i1 %.not219, i32 0, i32 %i.er
  %i.et = and i32 %i.em, 4
  %.not220 = icmp eq i32 %i.et, 0
  %i.eu = select i1 %.not220, i32 0, i32 %i.ej
  %.4 = add i32 %i.eu, %i.el
  %.5 = add i32 %.4, %i.ep
  %.6 = add i32 %.5, %i.es                        ; 2 uses
  %i.ev = sub nsw i32 0, %.6
  %.not221234 = icmp slt i8 %i.cw, 0
  %.7 = select i1 %.not221234, i32 %i.ev, i32 %.6
  %i.ew = add nsw i32 %.7, %i.ek
  %i.ex = call i32 @llvm.smax.i32(i32 %i.ew, i32 -32768)
  %i.ey = call i32 @llvm.smin.i32(i32 %i.ex, i32 32767) ; 2 uses
  store i32 %i.ey, ptr %i.cr, align 4, !tbaa !8
  %i.ez = zext nneg i8 %i.cy to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_wav_read_pcm_frames_s16__ima.indexTable, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !8
  %i.fc = add nsw i32 %i.fb, %i.eg
  %i.fd = call i32 @llvm.smax.i32(i32 %i.fc, i32 0)
  %i.fe = call i32 @llvm.umin.i32(i32 %i.fd, i32 88)
  store i32 %i.fe, ptr %i.cq, align 4, !tbaa !8
  %i.ff = load i32, ptr %i.j, align 8, !tbaa !2710
  %i.fg = mul i32 %i.ff, %i.ct
  %i.fh = zext i32 %i.fg to i64
  %i.fi = or disjoint i64 %i.eb, 1
  %i.fj = mul nuw nsw i64 %i.fi, %i.cu
  %reass.sub222 = sub nsw i64 %i.fj, %i.fh
  %i.fk = getelementptr [4 x i8], ptr %i.x, i64 %reass.sub222
  %i.fl = getelementptr i8, ptr %i.fk, i64 64
  %i.fm = getelementptr [4 x i8], ptr %i.fl, i64 %indvars.iv324
  store i32 %i.ey, ptr %i.fm, align 4, !tbaa !8
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next322, 4
  br i1 %exitcond.not, label %bb.t, label %bb.s, !llvm.loop !2714

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %i.fn = icmp samesign ult i64 %indvars.iv.next325, %i.cu
  br i1 %i.fn, label %.lr.ph288, label %.backedge, !llvm.loop !2715

.backedge:                                        ; preds = %bb.o, %bb.t, %bb.q, %bb.p
  %i.fo = load i64, ptr %i.d, align 8, !tbaa !1698
  %i.fp = load i64, ptr %i.e, align 8, !tbaa !1697
  %i.fq = icmp ult i64 %i.fo, %i.fp
  br i1 %i.fq, label %bb.b, label %.loopexit, !llvm.loop !2716

.loopexit.loopexit:                               ; preds = %._crit_edge
  %i.fr = add i64 %.0192289, %.0186291
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge, %bb.m, %.loopexit.loopexit, %bb.a, %.thread231, %.thread228, %.thread
  %.7201 = phi i64 [ %.0186291, %.thread228 ], [ %.1187279, %.thread231 ], [ %.0186291, %.thread ], [ 0, %bb.a ], [ %i.fr, %.loopexit.loopexit ], [ %.0186291, %bb.m ], [ %.1187279, %.backedge ]
  ret i64 %.7201
}

; Function Attrs: nounwind uwtable
define i64 @ma_dr_wav_write_raw(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1618
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1612
  %i.h = tail call i64 %i.e(ptr noundef %i.g, ptr noundef nonnull %2, i64 noundef %1) #55 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1620
  %i.k = add i64 %i.j, %i.h
  store i64 %i.k, ptr %i.i, align 8, !tbaa !1620
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define range(i64 0, -7) i64 @ma_dr_wav_write_pcm_frames_le(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !1632
  %i.f = zext i16 %i.e to i64                     ; 2 uses
  %i.g = mul i64 %1, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 122 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !1634
  %i.j = zext i16 %i.i to i64                     ; 2 uses
  %i.k = mul i64 %i.g, %i.j                       ; 2 uses
  %i.l = icmp ugt i64 %i.k, 34359738367
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = lshr i64 %i.k, 3                         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not44 = icmp eq i64 %i.m, 0
  br i1 %.not44, label %.thread, label %ma_dr_wav_write_raw.exit.lr.ph

ma_dr_wav_write_raw.exit.lr.ph:                   ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  br label %ma_dr_wav_write_raw.exit

ma_dr_wav_write_raw.exit:                         ; preds = %ma_dr_wav_write_raw.exit.lr.ph, %bb.d
  %.02747 = phi ptr [ %2, %ma_dr_wav_write_raw.exit.lr.ph ], [ %i.y, %bb.d ] ; 2 uses
  %.02846 = phi i64 [ 0, %ma_dr_wav_write_raw.exit.lr.ph ], [ %i.x, %bb.d ] ; 2 uses
  %.03045 = phi i64 [ %i.m, %ma_dr_wav_write_raw.exit.lr.ph ], [ %i.w, %bb.d ] ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !1618
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !1612
  %i.s = tail call i64 %i.q(ptr noundef %i.r, ptr noundef nonnull %.02747, i64 noundef %.03045) #55, !inline_history !2717 ; 5 uses
  %i.t = load i64, ptr %i.p, align 8, !tbaa !1620
  %i.u = add i64 %i.t, %i.s
  store i64 %i.u, ptr %i.p, align 8, !tbaa !1620
  %i.v = icmp eq i64 %i.s, 0
  br i1 %i.v, label %.thread.loopexit, label %bb.d

bb.d:                                             ; preds = %ma_dr_wav_write_raw.exit
  %i.w = sub i64 %.03045, %i.s                    ; 2 uses
  %i.x = add i64 %i.s, %.02846                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.02747, i64 %i.s
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %.thread.loopexit, label %ma_dr_wav_write_raw.exit

.thread.loopexit:                                 ; preds = %ma_dr_wav_write_raw.exit, %bb.d
  %.028.lcssa.ph = phi i64 [ %i.x, %bb.d ], [ %.02846, %ma_dr_wav_write_raw.exit ]
  %.pre = load i16, ptr %i.h, align 2, !tbaa !1634
  %.pre49 = load i16, ptr %i.d, align 8, !tbaa !1632
  %.pre50 = zext i16 %.pre to i64
  %.pre51 = zext i16 %.pre49 to i64
  %i.z = shl i64 %.028.lcssa.ph, 3
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.c
  %.pre-phi52 = phi i64 [ %.pre51, %.thread.loopexit ], [ %i.f, %bb.c ]
  %.pre-phi = phi i64 [ %.pre50, %.thread.loopexit ], [ %i.j, %bb.c ]
  %.028.lcssa = phi i64 [ %i.z, %.thread.loopexit ], [ 0, %bb.c ]
  %i.aa = mul nuw nsw i64 %.pre-phi52, %.pre-phi
  %i.ab = udiv i64 %.028.lcssa, %i.aa
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %.thread
  %.032 = phi i64 [ %i.ab, %.thread ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i64 %.032
}

; Function Attrs: nounwind uwtable
define range(i64 0, -7) i64 @ma_dr_wav_write_pcm_frames_be(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 15 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq i64 %1, 0
  %or.cond = or i1 %i.b, %i.c
  %i.d = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !tbaa !1632 ; 2 uses
  %i.g = zext i16 %i.f to i64
  %i.h = mul i64 %1, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 122 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !1634 ; 2 uses
  %i.k = zext i16 %i.j to i64
  %i.l = mul i64 %i.h, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.l, 34359738367
  br i1 %i.m, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = lshr i64 %i.l, 3                         ; 2 uses
  %i.o = zext i16 %i.j to i32                     ; 2 uses
  %i.p = and i32 %i.o, 7
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.s = load i16, ptr %i.r, align 2, !tbaa !1635
  %i.t = zext i16 %i.s to i32
  %i.u = mul nuw nsw i32 %i.t, %i.o
  %i.v = lshr exact i32 %i.u, 3
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = load i16, ptr %i.w, align 8, !tbaa !1636
  %i.y = zext i16 %i.x to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i55 = phi i32 [ %i.v, %bb.d ], [ %i.y, %bb.e ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !1633
  %i.ab = and i16 %i.aa, -2
  %switch.i = icmp eq i16 %i.ab, 6
  br i1 %switch.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !1635
  %i.ae = zext i16 %i.ad to i32
  %.not.i = icmp eq i32 %.0.i55, %i.ae
  br i1 %.not.i, label %bb.h, label %ma_dr_wav_get_bytes_per_pcm_frame.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %ma_dr_wav_get_bytes_per_pcm_frame.exit

ma_dr_wav_get_bytes_per_pcm_frame.exit:           ; preds = %bb.g, %bb.h
  %.09.i = phi i32 [ %.0.i55, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.af = zext i16 %i.f to i32                    ; 2 uses
  %i.ag = udiv i32 %.09.i, %i.af                  ; 9 uses
  %i.ah = icmp samesign ult i32 %.09.i, %i.af
  br i1 %i.ah, label %bb.k, label %.preheader68

.preheader68:                                     ; preds = %ma_dr_wav_get_bytes_per_pcm_frame.exit
  %.not78 = icmp eq i64 %i.n, 0
  br i1 %.not78, label %.loopexit, label %.lr.ph82

.lr.ph82:                                         ; preds = %.preheader68
  %i.ai = zext nneg i32 %i.ag to i64
  %i.aj = udiv i32 4096, %i.ag
  %i.ak = zext nneg i32 %i.aj to i64              ; 12 uses
  %i.al = mul nuw nsw i64 %i.ak, %i.ai
  %.not83 = icmp samesign ugt i32 %i.ag, 4096
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %min.iters.check123 = icmp ugt i32 %i.ag, 512
  %n.vec125 = and i64 %i.ak, 8184                 ; 3 uses
  %cmp.n132 = icmp eq i64 %n.vec125, %i.ak
  %umax139 = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1) ; 3 uses
  %xtraiter = and i64 %umax139, 1
  %i.ap = icmp ugt i32 %i.ag, 2048
  %unroll_iter = and i64 %umax139, 8190
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod140 = trunc i64 %umax139 to i1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1) ; 3 uses
  %min.iters.check105 = icmp ugt i32 %i.ag, 1024
  %min.iters.check106 = icmp ugt i32 %i.ag, 256
  %i.aq = and i64 %umax, 12
end_hunk_2
