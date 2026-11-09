Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 97
begin_hunk_0_@process:bb.a
  %i.atc = phi i32 [ %i.aql, %.lr.ph.i358 ], [ %i.atv, %bb.fl ]
  %.091.i = phi i32 [ 0, %.lr.ph.i358 ], [ %i.atu, %bb.fl ] ; 2 uses
  %i.atd = add nsw i32 %i.atc, -1
  %i.ate = icmp eq i32 %.091.i, %i.atd
  %i.atf = zext i1 %i.ate to i32                  ; 2 uses
  %i.atg = load ptr, ptr %i.h, align 8, !tbaa !139, !noalias !423
  %i.ath = load ptr, ptr %i.f, align 8, !tbaa !139, !noalias !423
  %i.ati = load ptr, ptr %i.i, align 8, !tbaa !139, !noalias !423
  %i.atj = load ptr, ptr %i.g, align 8, !tbaa !139, !noalias !423
  %i.atk = load ptr, ptr %i.d, align 8, !tbaa !139, !noalias !423
  %i.atl = load ptr, ptr %i.e, align 8, !tbaa !139, !noalias !423
  %i.atm = load float, ptr %i.aqn, align 4, !tbaa !438, !noalias !423
  call fastcc void @wavelets_process(ptr noundef %i.atg, ptr noundef %i.ath, ptr noundef %i.ati, i64 noundef %i.aan, i64 noundef %i.aam, i32 noundef %i.abr, ptr noundef %i.atj, ptr noundef %i.atk, ptr noundef %i.atl, i32 noundef 0, float noundef %i.abu, i32 noundef %i.atf, float noundef %i.atm)
  %i.atn = load ptr, ptr %i.f, align 8, !tbaa !139, !noalias !423
  %i.ato = load ptr, ptr %i.h, align 8, !tbaa !139, !noalias !423
  %i.atp = load ptr, ptr %i.i, align 8, !tbaa !139, !noalias !423
  %i.atq = load ptr, ptr %i.g, align 8, !tbaa !139, !noalias !423
  %i.atr = load ptr, ptr %i.d, align 8, !tbaa !139, !noalias !423
  %i.ats = load ptr, ptr %i.e, align 8, !tbaa !139, !noalias !423
  %i.att = load float, ptr %i.aqn, align 4, !tbaa !438, !noalias !423
  call fastcc void @wavelets_process(ptr noundef %i.atn, ptr noundef %i.ato, ptr noundef %i.atp, i64 noundef %i.aan, i64 noundef %i.aam, i32 noundef %i.abr, ptr noundef %i.atq, ptr noundef %i.atr, ptr noundef %i.ats, i32 noundef 1, float noundef %i.abu, i32 noundef %i.atf, float noundef %i.att)
  %i.atu = add nuw nsw i32 %.091.i, 1             ; 2 uses
  %i.atv = load i32, ptr %i.aqk, align 4, !tbaa !430, !noalias !423 ; 2 uses
  %i.atw = icmp slt i32 %i.atu, %i.atv
  br i1 %i.atw, label %bb.fl, label %._crit_edge.i356

bb.fm:                                            ; preds = %_remosaic_and_replace.exit.i
  call void @dt_dump_pfm(ptr noundef nonnull @.str.122, ptr noundef %i.aqq, i32 noundef %i.aai, i32 noundef %i.aaj, i32 noundef 16, ptr noundef nonnull @.str.123) #33, !noalias !423
  %i.atx = load ptr, ptr %i.c, align 8, !tbaa !139, !noalias !423
  call void @dt_dump_pfm(ptr noundef nonnull @.str.124, ptr noundef %i.atx, i32 noundef %i.aai, i32 noundef %i.aaj, i32 noundef 16, ptr noundef nonnull @.str.123) #33, !noalias !423
  %.pre.i357 = load ptr, ptr %i.b, align 8, !tbaa !139, !noalias !423
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %_remosaic_and_replace.exit.i
  %i.aty = phi ptr [ %.pre.i357, %bb.fm ], [ %i.aqq, %_remosaic_and_replace.exit.i ]
  call void @free(ptr noundef %i.aty) #33, !noalias !423
  %i.atz = load ptr, ptr %i.c, align 8, !tbaa !139, !noalias !423
  call void @free(ptr noundef %i.atz) #33, !noalias !423
  %i.aua = load ptr, ptr %i.f, align 8, !tbaa !139, !noalias !423
  call void @free(ptr noundef %i.aua) #33, !noalias !423
  %i.aub = load ptr, ptr %i.e, align 8, !tbaa !139, !noalias !423
  call void @free(ptr noundef %i.aub) #33, !noalias !423
  %i.auc = load ptr, ptr %i.d, align 8, !tbaa !139, !noalias !423
  call void @free(ptr noundef %i.auc) #33, !noalias !423
  %i.aud = load ptr, ptr %i.g, align 8, !tbaa !139, !noalias !423
  call void @free(ptr noundef %i.aud) #33, !noalias !423
  %i.aue = load ptr, ptr %i.h, align 8, !tbaa !139, !noalias !423
  call void @free(ptr noundef %i.aue) #33, !noalias !423
  %i.auf = load ptr, ptr %i.i, align 8, !tbaa !139, !noalias !423
  call void @free(ptr noundef %i.auf) #33, !noalias !423
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33, !noalias !423
  br label %process_laplacian_bayer.exit

process_laplacian_bayer.exit:                     ; preds = %bb.ep, %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #33
  br label %bb.fq

bb.fp:                                            ; preds = %bb.be
  %i.aug = tail call fastcc ptr @_process_opposed(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef 0, i32 noundef %.0269, float noundef %i.bn) ; 0 uses
  br label %bb.fq

bb.fq:                                            ; preds = %bb.ee, %bb.ef, %bb.fp, %process_laplacian_bayer.exit, %bb.el, %bb.ek, %.loopexit381
  %.not280 = icmp eq i32 %i.aq, 0
  br i1 %.not280, label %.thread368, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.auh = call fastcc ptr @_provide_raster_mask(ptr noundef %4, ptr noundef %5, ptr noundef %3, float noundef %i.bn, ptr noundef %1) ; 2 uses
  %.not281 = icmp eq ptr %i.auh, null
  br i1 %.not281, label %.thread368, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call void @dt_iop_piece_set_raster(ptr noundef %1, ptr noundef nonnull %i.auh, ptr noundef %4, ptr noundef %5) #33
  br label %bb.ft

.thread368:                                       ; preds = %bb.fq, %bb.fr
  call void @dt_iop_piece_clear_raster(ptr noundef %1, ptr noundef null) #33
  br label %bb.ft

bb.ft:                                            ; preds = %.thread368, %bb.fs
  %i.aui = add i32 %i.aa, -6
  %or.cond9 = icmp ult i32 %i.aui, -3
  br i1 %or.cond9, label %.loopexit380.loopexit, label %.loopexit380

.loopexit380.loopexit:                            ; preds = %bb.ft
  %.val293 = load ptr, ptr %i.l, align 8, !tbaa !56 ; 3 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %.val293, i64 272
  %i.auk = load float, ptr %i.auj, align 4, !tbaa !12
  %i.aul = getelementptr inbounds nuw i8, ptr %.val293, i64 276
  %i.aum = load float, ptr %i.aul, align 4, !tbaa !12
  %i.aun = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.auk, float %i.aum)
  %i.auo = getelementptr inbounds nuw i8, ptr %.val293, i64 280
  %i.aup = load float, ptr %i.auo, align 4, !tbaa !12
  %i.auq = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aun, float %i.aup)
  %i.aur = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.auq, float 1.000000e+00) ; 3 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %i.m, i64 272
  store float %i.aur, ptr %i.aus, align 4, !tbaa !12
  %i.aut = getelementptr inbounds nuw i8, ptr %i.m, i64 276
  store float %i.aur, ptr %i.aut, align 4, !tbaa !12
  %i.auu = getelementptr inbounds nuw i8, ptr %i.m, i64 280
  store float %i.aur, ptr %i.auu, align 4, !tbaa !12
  br label %.loopexit380

.loopexit380:                                     ; preds = %.loopexit380.loopexit, %bb.g, %bb.n, %bb.ft, %bb.bd, %.thread361, %bb.c, %bb.d
  ret void
}

declare void @dt_iop_clip_and_zoom_roi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_print_pipe_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @dt_iop_piece_clear_raster(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @process_visualize(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 %.0.val, float %.16.val) unnamed_addr #15 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.d = load i32, ptr %i.c, align 4, !tbaa !80
  %.fr18 = freeze i32 %i.d                        ; 6 uses
  %i.e = zext i32 %.0.val to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @highlights_clip_magics, i64 %i.e
  %i.g = load float, ptr %i.f, align 4, !tbaa !12
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, %.16.val ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.l = load float, ptr %i.k, align 4, !tbaa !12 ; 2 uses
  %i.m = fcmp reassoc nsz arcp contract afn ugt float %i.l, 0.000000e+00
  %i.n = fmul reassoc nsz arcp contract afn float %i.l, %i.h
  %spec.select = select i1 %i.m, float %i.n, float %i.h ; 3 uses
  store float %spec.select, ptr %i.a, align 16, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 260
  %i.q = load float, ptr %i.p, align 4, !tbaa !12 ; 2 uses
  %i.r = fcmp reassoc nsz arcp contract afn ugt float %i.q, 0.000000e+00
  %i.s = fmul reassoc nsz arcp contract afn float %i.q, %i.h
  %i.t = select i1 %i.r, float %i.s, float %i.h   ; 4 uses
  store float %i.t, ptr %i.o, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 264
  %i.w = load float, ptr %i.v, align 4, !tbaa !12 ; 2 uses
  %i.x = fcmp reassoc nsz arcp contract afn ugt float %i.w, 0.000000e+00
  %i.y = fmul reassoc nsz arcp contract afn float %i.w, %i.h
  %i.z = select i1 %i.x, float %i.y, float %i.h   ; 3 uses
  store float %i.z, ptr %i.u, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.t, ptr %i.aa, align 4, !tbaa !12
  %i.ab = icmp eq i32 %.fr18, 0
  br i1 %i.ab, label %bb.d, label %.preheader3

.preheader3:                                      ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !78 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.preheader2.lr.ph, label %.loopexit

.preheader2.lr.ph:                                ; preds = %.preheader3
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !79 ; 4 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  %i.ai = sext i32 %i.ag to i64                   ; 4 uses
  %i.aj = getelementptr i8, ptr %3, i64 12        ; 6 uses
  br i1 %i.ah, label %.preheader2.lr.ph.split, label %.loopexit

.preheader2.lr.ph.split:                          ; preds = %.preheader2.lr.ph
  %i.ak = icmp eq i32 %.fr18, 9
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !75
  %i.ap = load i32, ptr %i.am, align 4, !tbaa !75
  %invariant.op10 = sub i32 %i.ao, %i.ap          ; 2 uses
  %i.aq = load i32, ptr %4, align 4, !tbaa !74    ; 2 uses
  %i.ar = load i32, ptr %3, align 4, !tbaa !74    ; 2 uses
  %invariant.op = sub i32 %i.aq, %i.ar            ; 8 uses
  %i.as = load i32, ptr %i.al, align 4, !tbaa !79 ; 6 uses
  %i.at = zext i32 %i.as to i64                   ; 3 uses
  %i.au = shl nuw nsw i64 %i.ai, 2                ; 2 uses
  %i.av = zext nneg i32 %i.ag to i64              ; 10 uses
  %i.aw = shl nuw nsw i64 %i.av, 2                ; 2 uses
  %wide.trip.count40 = zext nneg i32 %i.ad to i64 ; 3 uses
  br i1 %i.ak, label %.preheader2.us, label %.preheader2.preheader

.preheader2.preheader:                            ; preds = %.preheader2.lr.ph.split
  %i.ax = add nsw i64 %i.av, -1                   ; 2 uses
  %i.ay = zext i32 %invariant.op to i64           ; 2 uses
  %5 = shl nuw nsw i64 %i.ay, 2
  %scevgep61 = getelementptr i8, ptr %3, i64 16
  %i.az = add nuw nsw i64 %wide.trip.count40, 4611686018427387903
  %i.ba = mul i64 %i.az, %i.ai
  %i.bb = add i64 %i.ba, %i.av
  %i.bc = shl i64 %i.bb, 2
  %scevgep62 = getelementptr i8, ptr %2, i64 %i.bc ; 2 uses
  %i.bd = sub i32 %i.aq, %i.ar
  %min.iters.check = icmp ult i32 %i.ag, 8
  %i.be = trunc nsw i64 %i.ax to i32
  %i.bf = xor i32 %invariant.op, -1
  %i.bg = icmp ult i32 %i.bf, %i.be
  %i.bh = icmp ugt i64 %i.ax, 4294967295
  %i.bi = or i1 %i.bg, %i.bh
  %invariant.gep = getelementptr i8, ptr %1, i64 %5
  %invariant.op108 = add i64 %i.av, %i.ay
  %bound0 = icmp ult ptr %2, %scevgep61
  %bound1 = icmp ult ptr %i.aj, %scevgep62
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %i.av, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %invariant.op, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert66 = insertelement <8 x ptr> poison, ptr %i.aj, i64 0
  %broadcast.splat67 = shufflevector <8 x ptr> %broadcast.splatinsert66, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert70 = insertelement <8 x i32> poison, i32 %i.as, i64 0
  %broadcast.splat71 = shufflevector <8 x i32> %broadcast.splatinsert70, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert74 = insertelement <8 x i32> poison, i32 %.fr18, i64 0
  %broadcast.splat75 = shufflevector <8 x i32> %broadcast.splatinsert74, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.av
  %xtraiter = and i64 %i.av, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bj = and i32 %invariant.op, 1
  %i.bk = add nsw i64 %i.av, -1
  br label %.preheader2

.preheader2.us:                                   ; preds = %.preheader2.lr.ph.split, %._crit_edge.us
  %indvar28 = phi i64 [ %indvar.next29, %._crit_edge.us ], [ 0, %.preheader2.lr.ph.split ] ; 4 uses
  %i.bl = mul nuw nsw i64 %indvar28, %i.ai
  %i.bm = trunc nuw nsw i64 %indvar28 to i32
  %.reass11.us = add i32 %invariant.op10, %i.bm
  %.reass11.us.fr = freeze i32 %.reass11.us       ; 4 uses
  %i.bn = zext nneg i32 %.reass11.us.fr to i64
  %i.bo = mul nuw nsw i64 %i.at, %i.bn
  %i.bp = icmp sgt i32 %.reass11.us.fr, -1
  %i.bq = add nuw nsw i32 %.reass11.us.fr, 600
  %i.br = urem i32 %i.bq, 6
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [6 x i8], ptr %i.b, i64 %i.bs
  %i.bu = getelementptr [4 x i8], ptr %1, i64 %i.bo
  br i1 %i.bp, label %.lr.ph.split.us12.preheader, label %.lr.ph.split.us.us.preheader

.lr.ph.split.us12.preheader:                      ; preds = %.preheader2.us
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bl
  br label %.lr.ph.split.us12

.lr.ph.split.us.us.preheader:                     ; preds = %.preheader2.us
  %i.bw = mul i64 %i.au, %indvar28
  %scevgep30 = getelementptr i8, ptr %2, i64 %i.bw
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep30, i8 0, i64 %i.aw, i1 false), !tbaa !12
  br label %._crit_edge.us

.lr.ph.split.us12:                                ; preds = %.lr.ph.split.us12.preheader, %bb.c
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %bb.c ], [ 0, %.lr.ph.split.us12.preheader ] ; 3 uses
  %i.bx = trunc nuw nsw i64 %indvars.iv34 to i32
  %.reass.us7.us = add i32 %invariant.op, %i.bx   ; 4 uses
  %i.by = zext nneg i32 %.reass.us7.us to i64
  %i.bz = icmp sgt i32 %.reass.us7.us, -1
  br i1 %i.bz, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us12
  %i.ca = load i32, ptr %i.aj, align 4, !tbaa !78
  %i.cb = icmp slt i32 %.reass11.us.fr, %i.ca
  %i.cc = icmp slt i32 %.reass.us7.us, %i.as
  %or.cond89.us.us = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %or.cond89.us.us, label %fcol.exit.us.us, label %bb.c

fcol.exit.us.us:                                  ; preds = %bb.b
  %i.cd = add nuw nsw i32 %.reass.us7.us, 600
  %i.ce = urem i32 %i.cd, 6
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !97
  %i.ci = getelementptr [4 x i8], ptr %i.bu, i64 %i.by
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !12 ; 2 uses
  %i.ck = zext i8 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ck
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !12
  %i.cn = fcmp reassoc nsz arcp contract afn olt float %i.cj, %i.cm
  %i.co = fmul reassoc nsz arcp contract afn float %i.cj, 2.000000e-01
  %i.cp = select reassoc nsz arcp contract afn i1 %i.cn, float %i.co, float 1.000000e+00
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us12, %bb.b, %fcol.exit.us.us
  %.sink = phi float [ %i.cp, %fcol.exit.us.us ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %.lr.ph.split.us12 ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv34
  store float %.sink, ptr %i.cq, align 4, !tbaa !12
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next35, %i.av
  br i1 %exitcond38.not, label %._crit_edge.us, label %.lr.ph.split.us12

._crit_edge.us:                                   ; preds = %bb.c, %.lr.ph.split.us.us.preheader
  %indvar.next29 = add nuw nsw i64 %indvar28, 1   ; 2 uses
  %exitcond41.not = icmp eq i64 %indvar.next29, %wide.trip.count40
  br i1 %exitcond41.not, label %.loopexit, label %.preheader2.us

bb.d:                                             ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !79
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !78
  %i.cw = sext i32 %i.cv to i64
  %i.cx = shl nsw i64 %i.ct, 2
  %i.cy = mul i64 %i.cx, %i.cw                    ; 4 uses
  %.not = icmp eq i64 %i.cy, 0
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.d
  %i.cz = add i64 %i.cy, -1                       ; 2 uses
  %i.da = lshr i64 %i.cz, 2
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check84 = icmp ult i64 %i.cy, 33
  br i1 %min.iters.check84, label %.preheader.preheader104, label %vector.memcheck85

vector.memcheck85:                                ; preds = %.preheader.preheader
  %i.dc = shl i64 %i.cz, 2                        ; 2 uses
  %i.dd = and i64 %i.dc, -16
  %i.de = getelementptr i8, ptr %2, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 16
  %i.dg = getelementptr i8, ptr %1, i64 %i.dc
  %bound086 = icmp ult ptr %2, %i.dg
  %bound187 = icmp ult ptr %1, %i.df
  %found.conflict88 = and i1 %bound086, %bound187
  br i1 %found.conflict88, label %.preheader.preheader104, label %vector.ph89

vector.ph89:                                      ; preds = %vector.memcheck85
  %i.dh = and i64 %i.db, 7                        ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  %i.dj = select i1 %i.di, i64 8, i64 %i.dh
  %n.vec90 = sub nsw i64 %i.db, %i.dj             ; 2 uses
  %i.dk = shl i64 %n.vec90, 2
  %broadcast.splatinsert91 = insertelement <8 x float> poison, float %spec.select, i64 0
  %broadcast.splat92 = shufflevector <8 x float> %broadcast.splatinsert91, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert93 = insertelement <8 x float> poison, float %i.t, i64 0
  %broadcast.splat94 = shufflevector <8 x float> %broadcast.splatinsert93, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert95 = insertelement <8 x float> poison, float %i.z, i64 0
  %broadcast.splat96 = shufflevector <8 x float> %broadcast.splatinsert95, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body97

vector.body97:                                    ; preds = %vector.body97, %vector.ph89
  %index98 = phi i64 [ 0, %vector.ph89 ], [ %index.next101, %vector.body97 ] ; 2 uses
  %i.dl = shl nuw i64 %index98, 2                 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dl
  %wide.vec = load <32 x float>, ptr %i.dm, align 4, !tbaa !12, !alias.scope !450 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 2 uses
  %strided.vec99 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 2 uses
  %strided.vec100 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 2 uses
  %i.dn = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec, %broadcast.splat92
  %i.do = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float 2.000000e-01)
  %i.dp = select reassoc nsz arcp contract afn <8 x i1> %i.dn, <8 x float> %i.do, <8 x float> splat (float 1.000000e+00)
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dl
  %i.dr = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec99, %broadcast.splat94
  %i.ds = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec99, splat (float 2.000000e-01)
  %i.dt = select reassoc nsz arcp contract afn <8 x i1> %i.dr, <8 x float> %i.ds, <8 x float> splat (float 1.000000e+00)
  %i.du = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec100, %broadcast.splat96
  %i.dv = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec100, splat (float 2.000000e-01)
  %i.dw = select reassoc nsz arcp contract afn <8 x i1> %i.du, <8 x float> %i.dv, <8 x float> splat (float 1.000000e+00)
  %i.dx = shufflevector <8 x float> %i.dp, <8 x float> %i.dt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dy = shufflevector <8 x float> %i.dw, <8 x float> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.dx, <16 x float> %i.dy, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.dq, align 4, !tbaa !12, !alias.scope !451, !noalias !450
  %index.next101 = add nuw i64 %index98, 8        ; 2 uses
  %i.dz = icmp eq i64 %index.next101, %n.vec90
  br i1 %i.dz, label %.preheader.preheader104, label %vector.body97, !llvm.loop !442

.preheader.preheader104:                          ; preds = %vector.body97, %vector.memcheck85, %.preheader.preheader
  %.07817.ph = phi i64 [ 0, %vector.memcheck85 ], [ 0, %.preheader.preheader ], [ %i.dk, %vector.body97 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader104, %.preheader
  %.07817 = phi i64 [ %i.es, %.preheader ], [ %.07817.ph, %.preheader.preheader104 ] ; 5 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07817
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !12 ; 2 uses
  %i.ec = fcmp reassoc nsz arcp contract afn olt float %i.eb, %spec.select
  %i.ed = fmul reassoc nsz arcp contract afn float %i.eb, 2.000000e-01
  %spec.select88 = select reassoc nsz arcp contract afn i1 %i.ec, float %i.ed, float 1.000000e+00
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.07817 ; 2 uses
  store float %spec.select88, ptr %i.ee, align 4, !tbaa !12
  %i.ef = or disjoint i64 %.07817, 1              ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ef
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !12 ; 2 uses
  %i.ei = fcmp reassoc nsz arcp contract afn olt float %i.eh, %i.t
  %i.ej = fmul reassoc nsz arcp contract afn float %i.eh, 2.000000e-01
  %spec.select88.1 = select reassoc nsz arcp contract afn i1 %i.ei, float %i.ej, float 1.000000e+00
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ef
  store float %spec.select88.1, ptr %i.ek, align 4, !tbaa !12
  %i.el = or disjoint i64 %.07817, 2              ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.el
  %i.en = load float, ptr %i.em, align 4, !tbaa !12 ; 2 uses
  %i.eo = fcmp reassoc nsz arcp contract afn olt float %i.en, %i.z
  %i.ep = fmul reassoc nsz arcp contract afn float %i.en, 2.000000e-01
  %spec.select88.2 = select reassoc nsz arcp contract afn i1 %i.eo, float %i.ep, float 1.000000e+00
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.el
  store float %spec.select88.2, ptr %i.eq, align 4, !tbaa !12
  %i.er = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store float 0.000000e+00, ptr %i.er, align 4, !tbaa !12
  %i.es = add nuw i64 %.07817, 4                  ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.cy
  br i1 %i.et, label %.preheader, label %.loopexit, !llvm.loop !443

.preheader2:                                      ; preds = %.preheader2.preheader, %._crit_edge
  %indvar = phi i64 [ %indvar.next, %._crit_edge ], [ 0, %.preheader2.preheader ] ; 4 uses
  %i.eu = mul nuw nsw i64 %indvar, %i.ai          ; 4 uses
  %i.ev = trunc nuw nsw i64 %indvar to i32
  %.reass11 = add i32 %invariant.op10, %i.ev
  %.reass11.fr = freeze i32 %.reass11             ; 7 uses
  %i.ew = zext i32 %.reass11.fr to i64            ; 2 uses
  %i.ex = mul nuw nsw i64 %i.at, %i.ew
  %i.ey = icmp sgt i32 %.reass11.fr, -1
  %i.ez = shl nuw i32 %.reass11.fr, 1
  %i.fa = and i32 %i.ez, 14                       ; 4 uses
  %i.fb = getelementptr [4 x i8], ptr %1, i64 %i.ex ; 4 uses
  br i1 %i.ey, label %.lr.ph.split.preheader, label %.lr.ph.split.us.preheader

.lr.ph.split.preheader:                           ; preds = %.preheader2
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bi
  br i1 %brmerge, label %.lr.ph.split.preheader106, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.preheader
  %i.fc = mul nuw nsw i64 %i.ew, %i.at            ; 2 uses
  %i.fd = shl i64 %i.fc, 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.fd
  %.reass109 = add i64 %i.fc, %invariant.op108
  %i.fe = shl i64 %.reass109, 2
  %i.ff = getelementptr i8, ptr %1, i64 %i.fe
  %bound063 = icmp ult ptr %2, %i.ff
  %bound164 = icmp ult ptr %gep, %scevgep62
  %found.conflict65 = and i1 %bound063, %bound164
  %conflict.rdx = or i1 %found.conflict, %found.conflict65
  br i1 %conflict.rdx, label %.lr.ph.split.preheader106, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.eu
  %broadcast.splatinsert68 = insertelement <8 x i32> poison, i32 %.reass11.fr, i64 0
  %broadcast.splat69 = shufflevector <8 x i32> %broadcast.splatinsert68, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert72 = insertelement <8 x i32> poison, i32 %i.fa, i64 0
  %broadcast.splat73 = shufflevector <8 x i32> %broadcast.splatinsert72, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.fh = add <8 x i32> %broadcast.splat, %vec.ind ; 4 uses
  %i.fi = extractelement <8 x i32> %i.fh, i64 0
  %i.fj = zext i32 %i.fi to i64
  %i.fk = icmp sgt <8 x i32> %i.fh, splat (i32 -1) ; 2 uses
  %wide.masked.gather = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %broadcast.splat67, <8 x i1> %i.fk, <8 x i32> poison), !tbaa !78, !alias.scope !452
  %i.fl = icmp slt <8 x i32> %broadcast.splat69, %wide.masked.gather
  %i.fm = icmp slt <8 x i32> %i.fh, %broadcast.splat71
  %i.fn = select <8 x i1> %i.fk, <8 x i1> %i.fl, <8 x i1> zeroinitializer
  %i.fo = select <8 x i1> %i.fn, <8 x i1> %i.fm, <8 x i1> zeroinitializer ; 3 uses
  %i.fp = and <8 x i32> %i.fh, splat (i32 1)
  %i.fq = or disjoint <8 x i32> %i.fp, %broadcast.splat73
  %i.fr = shl nuw nsw <8 x i32> %i.fq, splat (i32 1)
  %i.fs = lshr <8 x i32> %broadcast.splat75, %i.fr
  %i.ft = and <8 x i32> %i.fs, splat (i32 3)
  %i.fu = getelementptr [4 x i8], ptr %i.fb, i64 %i.fj
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.fu, <8 x i1> %i.fo, <8 x float> poison), !tbaa !12, !alias.scope !453 ; 2 uses
  %i.fv = zext nneg <8 x i32> %i.ft to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.a, <8 x i64> %i.fv
  %wide.masked.gather76 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> %i.fo, <8 x float> poison), !tbaa !12
  %i.fw = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.masked.load, %wide.masked.gather76
  %i.fx = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load, splat (float 2.000000e-01)
  %i.fy = select reassoc nsz arcp contract afn <8 x i1> %i.fw, <8 x float> %i.fx, <8 x float> splat (float 1.000000e+00)
  %predphi = select <8 x i1> %i.fo, <8 x float> %i.fy, <8 x float> zeroinitializer
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %index
  store <8 x float> %predphi, ptr %i.fz, align 4, !tbaa !12, !alias.scope !454, !noalias !455
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.ga = icmp eq i64 %index.next, %n.vec
  br i1 %i.ga, label %middle.block, label %vector.body, !llvm.loop !448

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader106

.lr.ph.split.preheader106:                        ; preds = %.lr.ph.split.preheader, %vector.memcheck, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph.split.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader106
  %i.gb = trunc nuw nsw i64 %indvars.iv.ph to i32
  %.reass.prol = add i32 %invariant.op, %i.gb     ; 3 uses
  %i.gc = zext nneg i32 %.reass.prol to i64
  %i.gd = icmp sgt i32 %.reass.prol, -1
  br i1 %i.gd, label %bb.e, label %.lr.ph.split.prol.loopexit.unr-lcssa

bb.e:                                             ; preds = %.lr.ph.split.prol
  %i.ge = load i32, ptr %i.aj, align 4, !tbaa !78
  %i.gf = icmp slt i32 %.reass11.fr, %i.ge
  %i.gg = icmp slt i32 %.reass.prol, %i.as
  %or.cond89.prol = select i1 %i.gf, i1 %i.gg, i1 false
  br i1 %or.cond89.prol, label %fcol.exit.prol, label %.lr.ph.split.prol.loopexit.unr-lcssa

fcol.exit.prol:                                   ; preds = %bb.e
  %.tr.i.i.prol = or disjoint i32 %i.bj, %i.fa
  %i.gh = shl nuw nsw i32 %.tr.i.i.prol, 1
  %i.gi = lshr i32 %.fr18, %i.gh
  %i.gj = and i32 %i.gi, 3
  %i.gk = getelementptr [4 x i8], ptr %i.fb, i64 %i.gc
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !12 ; 2 uses
  %i.gm = zext nneg i32 %i.gj to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gm
  %i.go = load float, ptr %i.gn, align 4, !tbaa !12
  %i.gp = fcmp reassoc nsz arcp contract afn olt float %i.gl, %i.go
  %i.gq = fmul reassoc nsz arcp contract afn float %i.gl, 2.000000e-01
  %i.gr = select reassoc nsz arcp contract afn i1 %i.gp, float %i.gq, float 1.000000e+00
  br label %.lr.ph.split.prol.loopexit.unr-lcssa

.lr.ph.split.prol.loopexit.unr-lcssa:             ; preds = %fcol.exit.prol, %bb.e, %.lr.ph.split.prol
  %.sink48.prol = phi float [ %i.gr, %fcol.exit.prol ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %.lr.ph.split.prol ]
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.eu
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv.ph
  store float %.sink48.prol, ptr %i.gt, align 4, !tbaa !12
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.split.prol.loopexit

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol.loopexit.unr-lcssa, %.lr.ph.split.preheader106
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.split.preheader106 ], [ %indvars.iv.next.prol, %.lr.ph.split.prol.loopexit.unr-lcssa ] ; 2 uses
  %i.gu = icmp eq i64 %indvars.iv.ph, %i.bk
  br i1 %i.gu, label %._crit_edge, label %.lr.ph.split.preheader106.new

.lr.ph.split.preheader106.new:                    ; preds = %.lr.ph.split.prol.loopexit
  %i.gv = trunc nsw i64 %indvars.iv.unr to i32
  %i.gw = add i32 %i.bd, %i.gv
  %i.gx = and i32 %i.gw, 1
  %.tr.i.i = or disjoint i32 %i.gx, %i.fa
  %i.gy = shl nuw nsw i32 %.tr.i.i, 1
  %i.gz = lshr i32 %.fr18, %i.gy
  %i.ha = and i32 %i.gz, 3
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hb
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.eu
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.eu
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.preheader2
  %i.hf = mul i64 %i.au, %indvar
  %scevgep = getelementptr i8, ptr %2, i64 %i.hf
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.aw, i1 false), !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %bb.h, %middle.block, %.lr.ph.split.us.preheader
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond27.not = icmp eq i64 %indvar.next, %wide.trip.count40
  br i1 %exitcond27.not, label %.loopexit, label %.preheader2

.lr.ph.split:                                     ; preds = %bb.h, %.lr.ph.split.preheader106.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph.split.preheader106.new ], [ %indvars.iv.next.1, %bb.h ] ; 4 uses
  %i.hg = trunc nuw nsw i64 %indvars.iv to i32
  %.reass = add i32 %invariant.op, %i.hg          ; 3 uses
  %i.hh = zext nneg i32 %.reass to i64
  %i.hi = icmp sgt i32 %.reass, -1
  br i1 %i.hi, label %bb.f, label %.lr.ph.split.1

bb.f:                                             ; preds = %.lr.ph.split
  %i.hj = load i32, ptr %i.aj, align 4, !tbaa !78
  %i.hk = icmp slt i32 %.reass11.fr, %i.hj
  %i.hl = icmp slt i32 %.reass, %i.as
  %or.cond89 = select i1 %i.hk, i1 %i.hl, i1 false
  br i1 %or.cond89, label %fcol.exit, label %.lr.ph.split.1

fcol.exit:                                        ; preds = %bb.f
  %i.hm = getelementptr [4 x i8], ptr %i.fb, i64 %i.hh
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !12 ; 2 uses
  %i.ho = load float, ptr %i.hc, align 4, !tbaa !12
  %i.hp = fcmp reassoc nsz arcp contract afn olt float %i.hn, %i.ho
  %i.hq = fmul reassoc nsz arcp contract afn float %i.hn, 2.000000e-01
  %i.hr = select reassoc nsz arcp contract afn i1 %i.hp, float %i.hq, float 1.000000e+00
  br label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %.lr.ph.split, %bb.f, %fcol.exit
  %.sink48 = phi float [ %i.hr, %fcol.exit ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %.lr.ph.split ]
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv
  store float %.sink48, ptr %i.hs, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ht = trunc nuw nsw i64 %indvars.iv.next to i32
  %.reass.1 = add i32 %invariant.op, %i.ht        ; 4 uses
  %i.hu = zext nneg i32 %.reass.1 to i64
  %i.hv = icmp sgt i32 %.reass.1, -1
  br i1 %i.hv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.split.1
  %i.hw = load i32, ptr %i.aj, align 4, !tbaa !78
  %i.hx = icmp slt i32 %.reass11.fr, %i.hw
  %i.hy = icmp slt i32 %.reass.1, %i.as
  %or.cond89.1 = select i1 %i.hx, i1 %i.hy, i1 false
  br i1 %or.cond89.1, label %fcol.exit.1, label %bb.h

fcol.exit.1:                                      ; preds = %bb.g
  %i.hz = and i32 %.reass.1, 1
  %.tr.i.i.1 = or disjoint i32 %i.hz, %i.fa
  %i.ia = shl nuw nsw i32 %.tr.i.i.1, 1
  %i.ib = lshr i32 %.fr18, %i.ia
  %i.ic = and i32 %i.ib, 3
  %i.id = getelementptr [4 x i8], ptr %i.fb, i64 %i.hu
  %i.ie = load float, ptr %i.id, align 4, !tbaa !12 ; 2 uses
  %i.if = zext nneg i32 %i.ic to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.if
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !12
  %i.ii = fcmp reassoc nsz arcp contract afn olt float %i.ie, %i.ih
  %i.ij = fmul reassoc nsz arcp contract afn float %i.ie, 2.000000e-01
  %i.ik = select reassoc nsz arcp contract afn i1 %i.ii, float %i.ij, float 1.000000e+00
  br label %bb.h

bb.h:                                             ; preds = %fcol.exit.1, %bb.g, %.lr.ph.split.1
  %.sink48.1 = phi float [ %i.ik, %fcol.exit.1 ], [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %.lr.ph.split.1 ]
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.next
  store float %.sink48.1, ptr %i.il, align 4, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.av
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.split, !llvm.loop !449

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge.us, %.preheader, %.preheader3, %.preheader2.lr.ph, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

declare i32 @dt_mipmap_cache_get_matching_size(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_conf_get_string_const(ptr noundef) local_unnamed_addr #3

declare i32 @dt_mipmap_cache_get_min_mip_from_pref(ptr noundef) local_unnamed_addr #3

end_hunk_0
begin_hunk_1_@process_clip:bb.a
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = alloca [4 x float], align 16             ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 516
  %i.e = load i32, ptr %i.d, align 4, !tbaa !80
  %.fr89 = freeze i32 %i.e                        ; 6 uses
  %.not = icmp eq i32 %.fr89, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !79
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !78
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.h, 2
  %i.m = mul i64 %i.l, %i.k                       ; 7 uses
  %.not90 = icmp eq i64 %i.m, 0
  br i1 %.not90, label %.loopexit, label %vector.memcheck149

vector.memcheck149:                               ; preds = %bb.b
  %i.n = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.n, -128
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck149
  %min.iters.check150 = icmp ult i64 %i.m, 32
  br i1 %min.iters.check150, label %vec.epilog.ph, label %vector.ph151

vector.ph151:                                     ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.m, 28
  %n.vec152 = and i64 %i.m, -32                   ; 4 uses
  %broadcast.splatinsert153 = insertelement <8 x float> poison, float %6, i64 0
  %broadcast.splat154 = shufflevector <8 x float> %broadcast.splatinsert153, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body155

vector.body155:                                   ; preds = %vector.ph151, %vector.body155
  %index156 = phi i64 [ 0, %vector.ph151 ], [ %index.next160, %vector.body155 ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index156 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %wide.load = load <8 x float>, ptr %i.p, align 4, !tbaa !12
  %wide.load157 = load <8 x float>, ptr %i.q, align 4, !tbaa !12
  %wide.load158 = load <8 x float>, ptr %i.r, align 4, !tbaa !12
  %wide.load159 = load <8 x float>, ptr %i.s, align 4, !tbaa !12
  %i.t = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %broadcast.splat154, <8 x float> %wide.load)
  %i.u = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %broadcast.splat154, <8 x float> %wide.load157)
  %i.v = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %broadcast.splat154, <8 x float> %wide.load158)
  %i.w = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %broadcast.splat154, <8 x float> %wide.load159)
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index156 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  store <8 x float> %i.t, ptr %i.x, align 4, !tbaa !12
  store <8 x float> %i.u, ptr %i.y, align 4, !tbaa !12
  store <8 x float> %i.v, ptr %i.z, align 4, !tbaa !12
  store <8 x float> %i.w, ptr %i.aa, align 4, !tbaa !12
  %index.next160 = add nuw i64 %index156, 32      ; 2 uses
  %i.ab = icmp eq i64 %index.next160, %n.vec152
  br i1 %i.ab, label %middle.block161, label %vector.body155, !llvm.loop !456

middle.block161:                                  ; preds = %vector.body155
  %cmp.n162 = icmp eq i64 %i.m, %n.vec152
  br i1 %cmp.n162, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block161
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !142

.lr.ph.preheader:                                 ; preds = %vector.memcheck149, %vec.epilog.iter.check
  %.06687.ph = phi i64 [ %n.vec152, %vec.epilog.iter.check ], [ 0, %vector.memcheck149 ]
  br label %.lr.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec152, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert164 = insertelement <4 x float> poison, float %6, i64 0
  %broadcast.splat165 = shufflevector <4 x float> %broadcast.splatinsert164, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index166 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next168, %vec.epilog.vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index166
  %wide.load167 = load <4 x float>, ptr %i.ac, align 4, !tbaa !12
  %i.ad = tail call reassoc nsz arcp contract afn <4 x float> @llvm.minnum.v4f32(<4 x float> %broadcast.splat165, <4 x float> %wide.load167)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index166
  store <4 x float> %i.ad, ptr %i.ae, align 4, !tbaa !12
  %index.next168 = add nuw i64 %index166, 4       ; 2 uses
  %i.af = icmp eq i64 %index.next168, %i.m
  br i1 %i.af, label %.loopexit, label %vec.epilog.vector.body, !llvm.loop !457

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %.06687 = phi i64 [ %.06687.ph, %.lr.ph.preheader ], [ %i.az, %.lr.ph ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.06687
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !12
  %i.ai = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %6, float %i.ah)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.06687
  store float %i.ai, ptr %i.aj, align 4, !tbaa !12
  %i.ak = or disjoint i64 %.06687, 1              ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ak
  %i.am = load float, ptr %i.al, align 4, !tbaa !12
  %i.an = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %6, float %i.am)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ak
  store float %i.an, ptr %i.ao, align 4, !tbaa !12
  %i.ap = or disjoint i64 %.06687, 2              ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !12
  %i.as = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %6, float %i.ar)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ap
  store float %i.as, ptr %i.at, align 4, !tbaa !12
  %i.au = or disjoint i64 %.06687, 3              ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !12
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %6, float %i.aw)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.au
  store float %i.ax, ptr %i.ay, align 4, !tbaa !12
  %i.az = add nuw i64 %.06687, 4                  ; 2 uses
  %exitcond113.not.3 = icmp eq i64 %i.az, %i.m
  br i1 %exitcond113.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !458

bb.c:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !99 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.be = insertelement <4 x float> poison, float %6, i64 0
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.bf, ptr %i.c, align 16, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !56
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 240
  %i.bj = load i32, ptr %i.bi, align 16, !tbaa !465
  %.not71 = icmp eq i32 %i.bj, 0
  br i1 %.not71, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 2480
  %i.bl = load i32, ptr %i.bk, align 16, !tbaa !144
  %.not72 = icmp eq i32 %i.bl, 0
  br i1 %.not72, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 2448
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 2416
  %i.bo = fpext reassoc nsz arcp contract afn float %6 to double ; 2 uses
  %i.bp = load <2 x double>, ptr %i.bm, align 16, !tbaa !145
  %i.bq = load <2 x double>, ptr %i.bn, align 16, !tbaa !145
  %i.br = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = fmul reassoc nsz arcp contract afn <2 x double> %i.bp, %i.bs
  %i.bu = fdiv reassoc nsz arcp contract afn <2 x double> %i.bt, %i.bq
  %i.bv = fptrunc reassoc nsz arcp contract afn <2 x double> %i.bu to <2 x float>
  store <2 x float> %i.bv, ptr %i.c, align 16, !tbaa !12
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bc, i64 2464
  %i.bx = load double, ptr %i.bw, align 16, !tbaa !145
  %i.by = getelementptr inbounds nuw i8, ptr %i.bc, i64 2432
  %i.bz = load double, ptr %i.by, align 16, !tbaa !145
  %i.ca = fmul reassoc nsz arcp contract afn double %i.bx, %i.bo
  %i.cb = fdiv reassoc nsz arcp contract afn double %i.ca, %i.bz
  %i.cc = fptrunc reassoc nsz arcp contract afn double %i.cb to float
  store float %i.cc, ptr %i.bd, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !78 ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.preheader.lr.ph, label %._crit_edge80.split

.preheader.lr.ph:                                 ; preds = %bb.f
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !79 ; 4 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  %i.cj = sext i32 %i.ch to i64                   ; 4 uses
  %i.ck = getelementptr i8, ptr %4, i64 12        ; 6 uses
  br i1 %i.ci, label %.preheader.lr.ph.split, label %._crit_edge80.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.cl = icmp eq i32 %.fr89, 9
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !75
  %i.cq = load i32, ptr %i.cn, align 4, !tbaa !75
  %invariant.op81 = sub i32 %i.cp, %i.cq          ; 2 uses
  %i.cr = load i32, ptr %5, align 4, !tbaa !74    ; 2 uses
  %i.cs = load i32, ptr %4, align 4, !tbaa !74    ; 2 uses
  %invariant.op = sub i32 %i.cr, %i.cs            ; 8 uses
  %i.ct = load i32, ptr %i.cm, align 4, !tbaa !79 ; 6 uses
  %i.cu = zext i32 %i.ct to i64                   ; 3 uses
  %i.cv = shl nuw nsw i64 %i.cj, 2                ; 2 uses
  %i.cw = zext nneg i32 %i.ch to i64              ; 10 uses
  %i.cx = shl nuw nsw i64 %i.cw, 2                ; 2 uses
  %wide.trip.count111 = zext nneg i32 %i.ce to i64 ; 3 uses
  br i1 %i.cl, label %.preheader.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.cy = add nsw i64 %i.cw, -1                   ; 2 uses
  %i.cz = zext i32 %invariant.op to i64           ; 2 uses
  %7 = shl nuw nsw i64 %i.cz, 2
  %scevgep130 = getelementptr i8, ptr %4, i64 16
  %i.da = add nuw nsw i64 %wide.trip.count111, 4611686018427387903
  %i.db = mul i64 %i.da, %i.cj
  %i.dc = add i64 %i.db, %i.cw
  %i.dd = shl i64 %i.dc, 2
  %scevgep131 = getelementptr i8, ptr %3, i64 %i.dd ; 2 uses
  %i.de = sub i32 %i.cr, %i.cs
  %min.iters.check = icmp ult i32 %i.ch, 8
  %i.df = trunc nsw i64 %i.cy to i32
  %i.dg = xor i32 %invariant.op, -1
  %i.dh = icmp ult i32 %i.dg, %i.df
  %i.di = icmp ugt i64 %i.cy, 4294967295
  %i.dj = or i1 %i.dh, %i.di
  %invariant.gep = getelementptr i8, ptr %2, i64 %7
  %invariant.op174 = add i64 %i.cw, %i.cz
  %bound0 = icmp ult ptr %3, %scevgep130
  %bound1 = icmp ult ptr %i.ck, %scevgep131
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %i.cw, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %invariant.op, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert135 = insertelement <8 x ptr> poison, ptr %i.ck, i64 0
  %broadcast.splat136 = shufflevector <8 x ptr> %broadcast.splatinsert135, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert139 = insertelement <8 x i32> poison, i32 %i.ct, i64 0
  %broadcast.splat140 = shufflevector <8 x i32> %broadcast.splatinsert139, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert143 = insertelement <8 x i32> poison, i32 %.fr89, i64 0
  %broadcast.splat144 = shufflevector <8 x i32> %broadcast.splatinsert143, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.cw
  %xtraiter = and i64 %i.cw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.dk = and i32 %invariant.op, 1
  %i.dl = add nsw i64 %i.cw, -1
  br label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph.split, %._crit_edge.us
  %indvar99 = phi i64 [ %indvar.next100, %._crit_edge.us ], [ 0, %.preheader.lr.ph.split ] ; 4 uses
  %i.dm = mul nuw nsw i64 %indvar99, %i.cj
  %i.dn = trunc nuw nsw i64 %indvar99 to i32
  %.reass82.us = add i32 %invariant.op81, %i.dn
  %.reass82.us.fr = freeze i32 %.reass82.us       ; 4 uses
  %i.do = zext nneg i32 %.reass82.us.fr to i64
  %i.dp = mul nuw nsw i64 %i.cu, %i.do
  %i.dq = icmp sgt i32 %.reass82.us.fr, -1
  %i.dr = add nuw nsw i32 %.reass82.us.fr, 600
  %i.ds = urem i32 %i.dr, 6
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [6 x i8], ptr %i.ba, i64 %i.dt
  %i.dv = getelementptr [4 x i8], ptr %2, i64 %i.dp
  br i1 %i.dq, label %.lr.ph.split.us83.preheader, label %.lr.ph.split.us.us.preheader

.lr.ph.split.us83.preheader:                      ; preds = %.preheader.us
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dm
  br label %.lr.ph.split.us83

.lr.ph.split.us.us.preheader:                     ; preds = %.preheader.us
  %i.dx = mul i64 %i.cv, %indvar99
  %scevgep101 = getelementptr i8, ptr %3, i64 %i.dx
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep101, i8 0, i64 %i.cx, i1 false), !tbaa !12
  br label %._crit_edge.us

.lr.ph.split.us83:                                ; preds = %.lr.ph.split.us83.preheader, %bb.h
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %bb.h ], [ 0, %.lr.ph.split.us83.preheader ] ; 3 uses
  %i.dy = trunc nuw nsw i64 %indvars.iv105 to i32
  %.reass.us77.us = add i32 %invariant.op, %i.dy  ; 4 uses
  %i.dz = zext nneg i32 %.reass.us77.us to i64
  %i.ea = icmp sgt i32 %.reass.us77.us, -1
  br i1 %i.ea, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.split.us83
  %i.eb = load i32, ptr %i.ck, align 4, !tbaa !78
  %i.ec = icmp slt i32 %.reass82.us.fr, %i.eb
  %i.ed = icmp slt i32 %.reass.us77.us, %i.ct
  %or.cond73.us.us = select i1 %i.ec, i1 %i.ed, i1 false
  br i1 %or.cond73.us.us, label %fcol.exit.us.us, label %bb.h

fcol.exit.us.us:                                  ; preds = %bb.g
  %i.ee = add nuw nsw i32 %.reass.us77.us, 600
  %i.ef = urem i32 %i.ee, 6
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !97
  %i.ej = getelementptr [4 x i8], ptr %i.dv, i64 %i.dz
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !12
  %i.el = zext i8 %i.ei to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.el
  %i.en = load float, ptr %i.em, align 4, !tbaa !12
  %i.eo = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ek, float %i.en)
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us83, %bb.g, %fcol.exit.us.us
  %.sink = phi float [ %i.eo, %fcol.exit.us.us ], [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %.lr.ph.split.us83 ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv105
  store float %.sink, ptr %i.ep, align 4, !tbaa !12
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %i.cw
  br i1 %exitcond109.not, label %._crit_edge.us, label %.lr.ph.split.us83

._crit_edge.us:                                   ; preds = %bb.h, %.lr.ph.split.us.us.preheader
  %indvar.next100 = add nuw nsw i64 %indvar99, 1  ; 2 uses
  %exitcond112.not = icmp eq i64 %indvar.next100, %wide.trip.count111
  br i1 %exitcond112.not, label %._crit_edge80.split, label %.preheader.us

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvar = phi i64 [ %indvar.next, %._crit_edge ], [ 0, %.preheader.preheader ] ; 4 uses
  %i.eq = mul nuw nsw i64 %indvar, %i.cj          ; 4 uses
  %i.er = trunc nuw nsw i64 %indvar to i32
  %.reass82 = add i32 %invariant.op81, %i.er
  %.reass82.fr = freeze i32 %.reass82             ; 7 uses
  %i.es = zext i32 %.reass82.fr to i64            ; 2 uses
  %i.et = mul nuw nsw i64 %i.cu, %i.es
  %i.eu = icmp sgt i32 %.reass82.fr, -1
  %i.ev = shl nuw i32 %.reass82.fr, 1
  %i.ew = and i32 %i.ev, 14                       ; 4 uses
  %i.ex = getelementptr [4 x i8], ptr %2, i64 %i.et ; 4 uses
  br i1 %i.eu, label %.lr.ph.split.preheader, label %.lr.ph.split.us.preheader

.lr.ph.split.preheader:                           ; preds = %.preheader
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.dj
  br i1 %brmerge, label %.lr.ph.split.preheader172, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.preheader
  %i.ey = mul nuw nsw i64 %i.es, %i.cu            ; 2 uses
  %i.ez = shl i64 %i.ey, 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ez
  %.reass175 = add i64 %i.ey, %invariant.op174
  %i.fa = shl i64 %.reass175, 2
  %i.fb = getelementptr i8, ptr %2, i64 %i.fa
  %bound0132 = icmp ult ptr %3, %i.fb
  %bound1133 = icmp ult ptr %gep, %scevgep131
  %found.conflict134 = and i1 %bound0132, %bound1133
  %conflict.rdx = or i1 %found.conflict, %found.conflict134
  br i1 %conflict.rdx, label %.lr.ph.split.preheader172, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.eq
  %broadcast.splatinsert137 = insertelement <8 x i32> poison, i32 %.reass82.fr, i64 0
  %broadcast.splat138 = shufflevector <8 x i32> %broadcast.splatinsert137, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert141 = insertelement <8 x i32> poison, i32 %i.ew, i64 0
  %broadcast.splat142 = shufflevector <8 x i32> %broadcast.splatinsert141, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.fd = add <8 x i32> %broadcast.splat, %vec.ind ; 4 uses
  %i.fe = extractelement <8 x i32> %i.fd, i64 0
  %i.ff = zext i32 %i.fe to i64
  %i.fg = icmp sgt <8 x i32> %i.fd, splat (i32 -1) ; 2 uses
  %wide.masked.gather = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %broadcast.splat136, <8 x i1> %i.fg, <8 x i32> poison), !tbaa !78, !alias.scope !466
  %i.fh = icmp slt <8 x i32> %broadcast.splat138, %wide.masked.gather
  %i.fi = icmp slt <8 x i32> %i.fd, %broadcast.splat140
  %i.fj = select <8 x i1> %i.fg, <8 x i1> %i.fh, <8 x i1> zeroinitializer
  %i.fk = select <8 x i1> %i.fj, <8 x i1> %i.fi, <8 x i1> zeroinitializer ; 3 uses
  %i.fl = and <8 x i32> %i.fd, splat (i32 1)
  %i.fm = or disjoint <8 x i32> %i.fl, %broadcast.splat142
  %i.fn = shl nuw nsw <8 x i32> %i.fm, splat (i32 1)
  %i.fo = lshr <8 x i32> %broadcast.splat144, %i.fn
  %i.fp = and <8 x i32> %i.fo, splat (i32 3)
  %i.fq = getelementptr [4 x i8], ptr %i.ex, i64 %i.ff
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.fq, <8 x i1> %i.fk, <8 x float> poison), !tbaa !12, !alias.scope !467
  %i.fr = zext nneg <8 x i32> %i.fp to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.c, <8 x i64> %i.fr
  %wide.masked.gather145 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> %i.fk, <8 x float> poison), !tbaa !12
  %i.fs = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %wide.masked.load, <8 x float> %wide.masked.gather145)
  %predphi = select <8 x i1> %i.fk, <8 x float> %i.fs, <8 x float> zeroinitializer
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %index
  store <8 x float> %predphi, ptr %i.ft, align 4, !tbaa !12, !alias.scope !468, !noalias !469
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %middle.block, label %vector.body, !llvm.loop !463

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader172

.lr.ph.split.preheader172:                        ; preds = %.lr.ph.split.preheader, %vector.memcheck, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph.split.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader172
  %i.fv = trunc nuw nsw i64 %indvars.iv.ph to i32
  %.reass.prol = add i32 %invariant.op, %i.fv     ; 3 uses
  %i.fw = zext nneg i32 %.reass.prol to i64
  %i.fx = icmp sgt i32 %.reass.prol, -1
  br i1 %i.fx, label %bb.i, label %.lr.ph.split.prol.loopexit.unr-lcssa

bb.i:                                             ; preds = %.lr.ph.split.prol
  %i.fy = load i32, ptr %i.ck, align 4, !tbaa !78
  %i.fz = icmp slt i32 %.reass82.fr, %i.fy
  %i.ga = icmp slt i32 %.reass.prol, %i.ct
  %or.cond73.prol = select i1 %i.fz, i1 %i.ga, i1 false
  br i1 %or.cond73.prol, label %fcol.exit.prol, label %.lr.ph.split.prol.loopexit.unr-lcssa

fcol.exit.prol:                                   ; preds = %bb.i
  %.tr.i.i.prol = or disjoint i32 %i.dk, %i.ew
  %i.gb = shl nuw nsw i32 %.tr.i.i.prol, 1
  %i.gc = lshr i32 %.fr89, %i.gb
  %i.gd = and i32 %i.gc, 3
  %i.ge = getelementptr [4 x i8], ptr %i.ex, i64 %i.fw
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !12
  %i.gg = zext nneg i32 %i.gd to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gg
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !12
  %i.gj = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gf, float %i.gi)
  br label %.lr.ph.split.prol.loopexit.unr-lcssa

.lr.ph.split.prol.loopexit.unr-lcssa:             ; preds = %fcol.exit.prol, %bb.i, %.lr.ph.split.prol
  %.sink118.prol = phi float [ %i.gj, %fcol.exit.prol ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %.lr.ph.split.prol ]
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.eq
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.ph
  store float %.sink118.prol, ptr %i.gl, align 4, !tbaa !12
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.split.prol.loopexit

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol.loopexit.unr-lcssa, %.lr.ph.split.preheader172
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.split.preheader172 ], [ %indvars.iv.next.prol, %.lr.ph.split.prol.loopexit.unr-lcssa ] ; 2 uses
  %i.gm = icmp eq i64 %indvars.iv.ph, %i.dl
  br i1 %i.gm, label %._crit_edge, label %.lr.ph.split.preheader172.new

.lr.ph.split.preheader172.new:                    ; preds = %.lr.ph.split.prol.loopexit
  %i.gn = trunc nsw i64 %indvars.iv.unr to i32
  %i.go = add i32 %i.de, %i.gn
  %i.gp = and i32 %i.go, 1
  %.tr.i.i = or disjoint i32 %i.gp, %i.ew
  %i.gq = shl nuw nsw i32 %.tr.i.i, 1
  %i.gr = lshr i32 %.fr89, %i.gq
  %i.gs = and i32 %i.gr, 3
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gt
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.eq
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.eq
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.preheader
  %i.gx = mul i64 %i.cv, %indvar
  %scevgep = getelementptr i8, ptr %3, i64 %i.gx
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.cx, i1 false), !tbaa !12
  br label %._crit_edge

._crit_edge80.split:                              ; preds = %._crit_edge, %._crit_edge.us, %.preheader.lr.ph, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %.loopexit

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %bb.l, %middle.block, %.lr.ph.split.us.preheader
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond98.not = icmp eq i64 %indvar.next, %wide.trip.count111
  br i1 %exitcond98.not, label %._crit_edge80.split, label %.preheader

.lr.ph.split:                                     ; preds = %bb.l, %.lr.ph.split.preheader172.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph.split.preheader172.new ], [ %indvars.iv.next.1, %bb.l ] ; 4 uses
  %i.gy = trunc nuw nsw i64 %indvars.iv to i32
  %.reass = add i32 %invariant.op, %i.gy          ; 3 uses
  %i.gz = zext nneg i32 %.reass to i64
  %i.ha = icmp sgt i32 %.reass, -1
  br i1 %i.ha, label %bb.j, label %.lr.ph.split.1

bb.j:                                             ; preds = %.lr.ph.split
  %i.hb = load i32, ptr %i.ck, align 4, !tbaa !78
  %i.hc = icmp slt i32 %.reass82.fr, %i.hb
  %i.hd = icmp slt i32 %.reass, %i.ct
  %or.cond73 = select i1 %i.hc, i1 %i.hd, i1 false
  br i1 %or.cond73, label %fcol.exit, label %.lr.ph.split.1

fcol.exit:                                        ; preds = %bb.j
  %i.he = getelementptr [4 x i8], ptr %i.ex, i64 %i.gz
  %i.hf = load float, ptr %i.he, align 4, !tbaa !12
  %i.hg = load float, ptr %i.gu, align 4, !tbaa !12
  %i.hh = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.hf, float %i.hg)
  br label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %.lr.ph.split, %bb.j, %fcol.exit
  %.sink118 = phi float [ %i.hh, %fcol.exit ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %.lr.ph.split ]
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv
  store float %.sink118, ptr %i.hi, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hj = trunc nuw nsw i64 %indvars.iv.next to i32
  %.reass.1 = add i32 %invariant.op, %i.hj        ; 4 uses
  %i.hk = zext nneg i32 %.reass.1 to i64
  %i.hl = icmp sgt i32 %.reass.1, -1
  br i1 %i.hl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.1
  %i.hm = load i32, ptr %i.ck, align 4, !tbaa !78
  %i.hn = icmp slt i32 %.reass82.fr, %i.hm
  %i.ho = icmp slt i32 %.reass.1, %i.ct
  %or.cond73.1 = select i1 %i.hn, i1 %i.ho, i1 false
  br i1 %or.cond73.1, label %fcol.exit.1, label %bb.l

fcol.exit.1:                                      ; preds = %bb.k
  %i.hp = and i32 %.reass.1, 1
  %.tr.i.i.1 = or disjoint i32 %i.hp, %i.ew
  %i.hq = shl nuw nsw i32 %.tr.i.i.1, 1
  %i.hr = lshr i32 %.fr89, %i.hq
  %i.hs = and i32 %i.hr, 3
  %i.ht = getelementptr [4 x i8], ptr %i.ex, i64 %i.hk
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !12
  %i.hv = zext nneg i32 %i.hs to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hv
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !12
  %i.hy = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.hu, float %i.hx)
  br label %bb.l

bb.l:                                             ; preds = %fcol.exit.1, %bb.k, %.lr.ph.split.1
  %.sink118.1 = phi float [ %i.hy, %fcol.exit.1 ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %.lr.ph.split.1 ]
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv.next
  store float %.sink118.1, ptr %i.hz, align 4, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.cw
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.split, !llvm.loop !464

.loopexit:                                        ; preds = %vec.epilog.vector.body, %.lr.ph, %middle.block161, %bb.b, %._crit_edge80.split
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_provide_raster_mask(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, float noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = alloca [4 x float], align 16             ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !79
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !78
  %i.h = sext i32 %i.g to i64
end_hunk_1
