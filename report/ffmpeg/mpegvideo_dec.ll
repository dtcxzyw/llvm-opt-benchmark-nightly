Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegvideo_dec?download=true
inline.NumInlined: 81
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ff_mpv_reconstruct_mb:bb.a

mpv_reconstruct_mb_internal.exit57:               ; preds = %bb.en, %bb.em, %bb.el, %bb.ej, %bb.ei, %bb.ef, %add_dct.exit120, %bb.de, %bb.dc, %add_dequant_dct.exit109, %bb.dl, %add_dct.exit115, %bb.dt, %add_dct.exit123, %bb.ed, %bb.cg, %bb.cf, %bb.cd, %bb.cb, %add_dct.exit85, %bb.ba, %bb.ay, %add_dequant_dct.exit74, %bb.bh, %add_dct.exit80, %bb.bq, %add_dct.exit88, %bb.ca, %bb.ak, %bb.aj, %bb.ai, %add_dct.exit66, %bb.p, %bb.n, %add_dct.exit61, %bb.w, %add_dct.exit69, %bb.ag
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc void @debug_dct_coeffs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3108
  %i.e = load i32, ptr %i.d, align 4, !tbaa !138
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.g = load i32, ptr %i.f, align 8, !tbaa !136
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 48, ptr noundef nonnull @.str.9, i32 noundef %i.e, i32 noundef %i.g) #11
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.c
  %indvars.iv20 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next21, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw [128 x i8], ptr %1, i64 %indvars.iv20
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 48, ptr noundef nonnull @.str.11) #11
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %exitcond23.not = icmp eq i64 %indvars.iv.next21, 6
  br i1 %exitcond23.not, label %.loopexit, label %.preheader, !llvm.loop !167

bb.d:                                             ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1, !tbaa !62
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !168
  %i.n = sext i16 %i.m to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 48, ptr noundef nonnull @.str.10, i32 noundef %i.n) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !169

.loopexit:                                        ; preds = %bb.c, %bb.a
  ret void
}

declare void @av_refstruct_unref(ptr noundef) local_unnamed_addr #2

declare ptr @av_refstruct_pool_get(ptr noundef) local_unnamed_addr #2

declare i32 @ff_thread_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @avcodec_default_get_buffer2(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_mpv_pic_check_linesize(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_hwaccel_frame_priv_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_mpv_alloc_pic_accessories(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_thread_progress_await(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @lowest_referenced_row(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3772
  %i.b = load i32, ptr %i.a, align 4, !tbaa !76
  %.not = icmp eq i32 %i.b, 0
  %i.c = zext i1 %.not to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3816
  %i.e = load i32, ptr %i.d, align 8, !tbaa !84
  %.not31 = icmp eq i32 %i.e, 3
  br i1 %.not31, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3768
  %i.g = load i32, ptr %i.f, align 8, !tbaa !162
  %.not32 = icmp eq i32 %i.g, 0
  br i1 %.not32, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2732
  %i.i = load i32, ptr %i.h, align 4, !tbaa !163  ; 2 uses
  %i.j = icmp ult i32 %i.i, 3
  br i1 %i.j, label %switch.lookup, label %bb.f

switch.lookup:                                    ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.lowest_referenced_row, i64 %i.k
  %switch.load = load i8, ptr %switch.gep, align 1 ; 2 uses
  %switch.ext = zext i8 %switch.load to i64       ; 2 uses
  %i.l = zext nneg i32 %1 to i64
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.l ; 5 uses
  %xtraiter = and i64 %switch.ext, 3              ; 3 uses
  %i.n = add i8 %switch.load, -1
  %i.o = icmp ult i8 %i.n, 3
  br i1 %i.o, label %.epil.preheader, label %switch.lookup.new

switch.lookup.new:                                ; preds = %switch.lookup
  %unroll_iter = and i64 %switch.ext, 252
  br label %bb.e

.unr-lcssa:                                       ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %switch.lookup
  %indvars.iv.epil.init = phi i64 [ 0, %switch.lookup ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %.02934.epil.init = phi i32 [ 2147483647, %switch.lookup ], [ %i.az, %.unr-lcssa ]
  %.03033.epil.init = phi i32 [ -2147483648, %switch.lookup ], [ %i.ay, %.unr-lcssa ]
  %lcmp.mod43 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %.02934.epil = phi i32 [ %.02934.epil.init, %.epil.preheader ], [ %i.t, %bb.d ]
  %.03033.epil = phi i32 [ %.03033.epil.init, %.epil.preheader ], [ %i.s, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.epil
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2740
  %i.r = load i32, ptr %i.q, align 4, !tbaa !37   ; 2 uses
  %i.s = tail call i32 @llvm.smax.i32(i32 %.03033.epil, i32 %i.r) ; 2 uses
  %i.t = tail call i32 @llvm.smin.i32(i32 %.02934.epil, i32 %i.r) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.d, !llvm.loop !170

.epilog-lcssa:                                    ; preds = %bb.d, %.unr-lcssa
  %.lcssa40 = phi i32 [ %i.ay, %.unr-lcssa ], [ %i.s, %bb.d ]
  %.lcssa = phi i32 [ %i.az, %.unr-lcssa ], [ %i.t, %bb.d ]
  %i.u = sub nsw i32 0, %.lcssa
  %i.v = tail call i32 @llvm.smax.i32(i32 %.lcssa40, i32 %i.u)
  %i.w = shl i32 %i.v, %i.c
  %i.x = add nsw i32 %i.w, 63
  %i.y = ashr i32 %i.x, 6
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !136
  %i.ab = add nsw i32 %i.aa, %i.y                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !115
  %i.ae = add nsw i32 %i.ad, -1
  %i.af = icmp slt i32 %i.ab, 0
  %..i = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 %i.ae)
  %.0.i = select i1 %i.af, i32 0, i32 %..i
  br label %bb.g

bb.e:                                             ; preds = %bb.e, %switch.lookup.new
  %indvars.iv = phi i64 [ 0, %switch.lookup.new ], [ %indvars.iv.next.3, %bb.e ] ; 5 uses
  %.02934 = phi i32 [ 2147483647, %switch.lookup.new ], [ %i.az, %bb.e ]
  %.03033 = phi i32 [ -2147483648, %switch.lookup.new ], [ %i.ay, %bb.e ]
  %niter = phi i64 [ 0, %switch.lookup.new ], [ %niter.next.3, %bb.e ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2740
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !37 ; 2 uses
  %i.aj = tail call i32 @llvm.smax.i32(i32 %.03033, i32 %i.ai)
  %i.ak = tail call i32 @llvm.smin.i32(i32 %.02934, i32 %i.ai)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2748
  %i.an = load i32, ptr %i.am, align 4, !tbaa !37 ; 2 uses
  %i.ao = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 %i.an)
  %i.ap = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %i.an)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2756
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !37 ; 2 uses
  %i.at = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 %i.as)
  %i.au = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.as)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2764
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !37 ; 2 uses
  %i.ay = tail call i32 @llvm.smax.i32(i32 %i.at, i32 %i.ax) ; 3 uses
  %i.az = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %i.ax) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.e, !llvm.loop !165

bb.f:                                             ; preds = %bb.c, %bb.a, %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !115
  %i.bc = add nsw i32 %i.bb, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.epilog-lcssa
  %.0 = phi i32 [ %i.bc, %bb.f ], [ %.0.i, %.epilog-lcssa ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @MPV_motion_lowres(ptr nofree noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 720
  %i.d = load i32, ptr %i.c, align 8, !tbaa !142  ; 38 uses
  %i.e = lshr i32 8, %i.d                         ; 41 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3108 ; 6 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !138  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3112 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !136  ; 18 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2732
  %i.k = load i32, ptr %i.j, align 4, !tbaa !163
  switch i32 %i.k, label %bb.dm [
    i32 0, label %bb.b
    i32 1, label %.preheader
    i32 3, label %bb.v
    i32 2, label %.preheader420
    i32 4, label %bb.cf
  ]

.preheader420:                                    ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3816
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %i.n = zext nneg i32 %4 to i64                  ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.n
  %i.r = shl nuw nsw i32 %i.e, 1                  ; 3 uses
  %i.s = ashr i32 %i.i, 1                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3860
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3864 ; 2 uses
  %i.x = add nuw nsw i32 %i.e, 1
  %i.y = lshr i32 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3772
  %i.ac = and i32 %i.i, -2
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3884
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2656 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.am = zext nneg i32 %i.r to i64
  br label %bb.bl

.preheader:                                       ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ao = zext nneg i32 %i.e to i64
  %i.ap = shl nsw i32 %i.g, 1
  %i.aq = shl nsw i32 %i.i, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.au = zext nneg i32 %4 to i64
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 3772 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2656 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 6 uses
  %i.az = add nuw nsw i32 %i.e, 1                 ; 2 uses
  br label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.bb = zext nneg i32 %4 to i64
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load <2 x i32>, ptr %i.bc, align 16, !tbaa !37 ; 2 uses
  %i.be = shl nuw nsw i32 %i.e, 1                 ; 5 uses
  %i.bf = add nsw i32 %i.d, -1                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 3860
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !151 ; 2 uses
  %i.bi = add nsw i32 %i.bh, %i.bf
  %i.bj = shl i32 2, %i.d
  %i.bk = add nsw i32 %i.bj, -1                   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !171
  %i.bn = ashr i32 %i.bm, %i.d                    ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !172
  %i.bq = ashr i32 %i.bp, %i.d                    ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 3864
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !150 ; 2 uses
  %.not.i367 = icmp eq i32 %i.bs, 0               ; 2 uses
  %i.bt = select i1 %.not.i367, i32 %i.be, i32 %i.e ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !77 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !77 ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 3772
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !76
  %.not256.i368 = icmp eq i32 %i.bz, 0
  %i.ca = sdiv <2 x i32> %i.bd, splat (i32 2)
  %i.cb = select i1 %.not256.i368, <2 x i32> %i.bd, <2 x i32> %i.ca ; 7 uses
  %i.cc = insertelement <2 x i32> poison, i32 %i.bk, i64 0
  %i.cd = shufflevector <2 x i32> %i.cc, <2 x i32> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ce = and <2 x i32> %i.cb, %i.cd              ; 5 uses
  %i.cf = mul i32 %i.e, %i.g                      ; 4 uses
  %i.cg = shl i32 %i.cf, 1
  %i.ch = add nsw i32 %i.d, 1                     ; 5 uses
  %i.ci = extractelement <2 x i32> %i.cb, i64 0   ; 2 uses
  %i.cj = ashr i32 %i.ci, %i.ch
  %i.ck = add nsw i32 %i.cj, %i.cg                ; 5 uses
  %i.cl = mul i32 %i.be, %i.i
  %i.cm = extractelement <2 x i32> %i.cb, i64 1
  %i.cn = ashr i32 %i.cm, %i.ch
  %i.co = add nsw i32 %i.cn, %i.cl                ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !143
  switch i32 %i.cq, label %bb.e [
    i32 2, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.cr = ashr <2 x i32> %i.cb, splat (i32 1)
  %i.cs = and <2 x i32> %i.cb, splat (i32 1)
  %i.ct = and <2 x i32> %i.cr, %i.cd
  %i.cu = or <2 x i32> %i.ct, %i.cs
  %i.cv = ashr i32 %i.ck, 1
  %i.cw = ashr i32 %i.co, 1
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.cx = sdiv <2 x i32> %i.cb, splat (i32 4)     ; 3 uses
  %i.cy = shl nsw <2 x i32> %i.cx, splat (i32 1)
  %i.cz = and <2 x i32> %i.cy, %i.cd
  %i.da = extractelement <2 x i32> %i.cx, i64 0
  %i.db = ashr i32 %i.da, %i.d
  %i.dc = add nsw i32 %i.db, %i.cf
  %7 = mul nsw i32 %i.i, %i.e
  %i.dd = extractelement <2 x i32> %i.cx, i64 1
  %i.de = ashr i32 %i.dd, %i.d
  %i.df = add nsw i32 %i.de, %7
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  br i1 %.not.i367, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dg = sdiv <2 x i32> %i.cb, splat (i32 2)     ; 3 uses
  %i.dh = and <2 x i32> %i.dg, %i.cd
  %i.di = extractelement <2 x i32> %i.dg, i64 0
  %i.dj = ashr i32 %i.di, %i.ch
  %i.dk = add nsw i32 %i.dj, %i.cf
  %8 = mul nsw i32 %i.i, %i.e
  %i.dl = extractelement <2 x i32> %i.dg, i64 1
  %i.dm = ashr i32 %i.dl, %i.ch
  %i.dn = add nsw i32 %i.dm, %8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %.not259.i395 = icmp eq i32 %i.bh, 0
  br i1 %.not259.i395, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.do = sdiv i32 %i.ci, 2                       ; 2 uses
  %i.dp = and i32 %i.do, %i.bk
  %i.dq = ashr i32 %i.do, %i.ch
  %i.dr = add nsw i32 %i.dq, %i.cf
  %i.ds = insertelement <2 x i32> %i.ce, i32 %i.dp, i64 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.c
  %.0237.i372 = phi i32 [ %i.cv, %bb.c ], [ %i.dc, %bb.d ], [ %i.dk, %bb.f ], [ %i.dr, %bb.h ], [ %i.ck, %bb.g ] ; 3 uses
  %.0236.i373 = phi i32 [ %i.cw, %bb.c ], [ %i.df, %bb.d ], [ %i.dn, %bb.f ], [ %i.co, %bb.h ], [ %i.co, %bb.g ] ; 4 uses
  %i.dt = phi <2 x i32> [ %i.cu, %bb.c ], [ %i.cz, %bb.d ], [ %i.dh, %bb.f ], [ %i.ds, %bb.h ], [ %i.ce, %bb.g ]
  %i.du = load ptr, ptr %5, align 8, !tbaa !98
  %i.dv = sext i32 %i.co to i64
  %i.dw = mul nsw i64 %i.bv, %i.dv
  %i.dx = getelementptr inbounds i8, ptr %i.du, i64 %i.dw
  %i.dy = sext i32 %i.ck to i64
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !98
  %i.ec = sext i32 %.0236.i373 to i64
  %i.ed = mul nsw i64 %i.bx, %i.ec                ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %i.eb, i64 %i.ed
  %i.ef = sext i32 %.0237.i372 to i64             ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !98
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 %i.ed
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 %i.ef ; 2 uses
  %i.el = extractelement <2 x i32> %i.ce, i64 0
  %i.em = icmp ne i32 %i.el, 0
  %.neg.i376 = sext i1 %i.em to i32
  %i.en = sub i32 %i.bn, %i.be
  %i.eo = add i32 %i.en, %.neg.i376
  %spec.select.i377 = tail call i32 @llvm.smax.i32(i32 %i.eo, i32 0)
  %i.ep = icmp ugt i32 %i.ck, %spec.select.i377
  %i.eq = icmp slt i32 %.0236.i373, 0
  %or.cond.i378 = select i1 %i.ep, i1 true, i1 %i.eq
  br i1 %or.cond.i378, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.er = extractelement <2 x i32> %i.ce, i64 1
  %i.es = icmp ne i32 %i.er, 0
  %.neg260.i379 = sext i1 %i.es to i32
  %i.et = add i32 %i.bq, %.neg260.i379            ; 2 uses
  %i.eu = shl i32 %i.bt, %i.bs
  %..i380 = tail call i32 @llvm.smax.i32(i32 %i.be, i32 %i.eu) ; 2 uses
  %i.ev = icmp sgt i32 %i.et, %..i380
  %i.ew = sub nsw i32 %i.et, %..i380
  %spec.select = select i1 %i.ev, i32 %i.ew, i32 0
  %i.ex = icmp ugt i32 %i.co, %spec.select
  br i1 %i.ex, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 2656 ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 16, !tbaa !173
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !174
  tail call void %i.ez(ptr noundef %i.fb, ptr noundef %i.dz, i64 noundef %i.bv, i64 noundef %i.bv, i32 noundef 17, i32 noundef 17, i32 noundef %i.ck, i32 noundef %i.co, i32 noundef %i.bn, i32 noundef %i.bq) #11, !inline_history !175
  %i.fc = load ptr, ptr %i.fa, align 8, !tbaa !174 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.fe = load i64, ptr %i.fd, align 16, !tbaa !176
  %i.ff = mul nsw i64 %i.fe, 18
  %i.fg = getelementptr inbounds i8, ptr %i.fc, i64 %i.ff ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !177 ; 2 uses
  %i.fj = mul nsw i64 %i.fi, 10
  %i.fk = getelementptr inbounds i8, ptr %i.fg, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !57
  %i.fn = and i32 %i.fm, 32768
  %.not261.i391 = icmp eq i32 %i.fn, 0
  %i.fo = sub i64 0, %i.fi
  %.0.i392.idx = select i1 %.not261.i391, i64 0, i64 %i.fo
  %.0.i392 = getelementptr inbounds i8, ptr %i.fk, i64 %.0.i392.idx ; 2 uses
  %i.fp = load ptr, ptr %i.ey, align 16, !tbaa !173
  %i.fq = ashr i32 %i.bn, 1                       ; 2 uses
  %i.fr = ashr i32 %i.bq, 1                       ; 2 uses
  tail call void %i.fp(ptr noundef %i.fg, ptr noundef %i.eg, i64 noundef %i.bx, i64 noundef %i.bx, i32 noundef 9, i32 noundef 9, i32 noundef %.0237.i372, i32 noundef %.0236.i373, i32 noundef %i.fq, i32 noundef %i.fr) #11, !inline_history !175
  %i.fs = load ptr, ptr %i.ey, align 16, !tbaa !173
  tail call void %i.fs(ptr noundef %.0.i392, ptr noundef %i.ek, i64 noundef %i.bx, i64 noundef %i.bx, i32 noundef 9, i32 noundef 9, i32 noundef %.0237.i372, i32 noundef %.0236.i373, i32 noundef %i.fq, i32 noundef %i.fr) #11, !inline_history !175
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0241.i381 = phi ptr [ %i.fc, %bb.k ], [ %i.dz, %bb.j ]
  %.0239.i382 = phi ptr [ %i.fg, %bb.k ], [ %i.eg, %bb.j ]
  %.0238.i383 = phi ptr [ %.0.i392, %bb.k ], [ %i.ek, %bb.j ]
  %i.ft = shl <2 x i32> %i.ce, splat (i32 2)      ; 2 uses
  %i.fu = extractelement <2 x i32> %i.ft, i64 0
  %i.fv = ashr i32 %i.fu, %i.d
  %i.fw = extractelement <2 x i32> %i.ft, i64 1
  %i.fx = ashr i32 %i.fw, %i.d
  %i.fy = sext i32 %i.bf to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr %6, i64 %i.fy
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !60
  tail call void %i.ga(ptr noundef %1, ptr noundef %.0241.i381, i64 noundef %i.bv, i32 noundef range(i32 0, 17) %i.be, i32 noundef %i.fv, i32 noundef %i.fx) #11, !inline_history !175
  %.not264.i390 = icmp eq i32 %i.bt, 0
  br i1 %.not264.i390, label %mpeg_motion_lowres.exit396, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gb = shl <2 x i32> %i.dt, splat (i32 2)      ; 2 uses
  %i.gc = extractelement <2 x i32> %i.gb, i64 1
  %i.gd = ashr i32 %i.gc, %i.d                    ; 2 uses
  %i.ge = extractelement <2 x i32> %i.gb, i64 0
  %i.gf = ashr i32 %i.ge, %i.d                    ; 2 uses
  %i.gg = sext i32 %i.bi to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %6, i64 %i.gg ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !60
  tail call void %i.gi(ptr noundef %2, ptr noundef %.0239.i382, i64 noundef %i.bx, i32 noundef %i.bt, i32 noundef %i.gf, i32 noundef %i.gd) #11, !inline_history !175
  %i.gj = load ptr, ptr %i.gh, align 8, !tbaa !60
  tail call void %i.gj(ptr noundef %3, ptr noundef %.0238.i383, i64 noundef %i.bx, i32 noundef %i.bt, i32 noundef %i.gf, i32 noundef %i.gd) #11, !inline_history !175
  br label %mpeg_motion_lowres.exit396

bb.n:                                             ; preds = %hpel_motion_lowres.exit
  %i.gk = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 720
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !142 ; 6 uses
  %i.gn = lshr i32 8, %i.gm                       ; 6 uses
  %i.go = shl i32 2, %i.gm
  %i.gp = add nsw i32 %i.go, -1                   ; 2 uses
  %i.gq = load i32, ptr %i.ar, align 4, !tbaa !171
  %i.gr = add nsw i32 %i.gm, 1                    ; 4 uses
  %i.gs = ashr i32 %i.gq, %i.gr                   ; 3 uses
  %i.gt = load i32, ptr %i.as, align 8, !tbaa !172
  %i.gu = ashr i32 %i.gt, %i.gr                   ; 3 uses
  %i.gv = load i32, ptr %i.aw, align 4, !tbaa !76
  %.not.i397 = icmp eq i32 %i.gv, 0
  %i.gw = sdiv <2 x i32> %i.lu, splat (i32 2)
  %i.gx = select i1 %.not.i397, <2 x i32> %i.lu, <2 x i32> %i.gw ; 2 uses
  %i.gy = extractelement <2 x i32> %i.gx, i64 0   ; 2 uses
  %i.gz = and i32 %i.gy, 15
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr @ff_h263_round_chroma.h263_chroma_roundtab, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !62
  %i.hd = zext i8 %i.hc to i32
  %i.he = ashr i32 %i.gy, 3
  %i.hf = add nsw i32 %i.he, %i.hd                ; 2 uses
  %i.hg = extractelement <2 x i32> %i.gx, i64 1   ; 2 uses
  %i.hh = and i32 %i.hg, 15
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr @ff_h263_round_chroma.h263_chroma_roundtab, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !62
  %i.hl = zext i8 %i.hk to i32
  %i.hm = ashr i32 %i.hg, 3
  %i.hn = add nsw i32 %i.hm, %i.hl                ; 2 uses
  %i.ho = and i32 %i.hf, %i.gp                    ; 2 uses
  %i.hp = and i32 %i.hn, %i.gp                    ; 2 uses
  %i.hq = load i32, ptr %i.f, align 4, !tbaa !138
  %i.hr = mul nsw i32 %i.hq, %i.gn
  %i.hs = ashr i32 %i.hf, %i.gr
  %i.ht = add nsw i32 %i.hr, %i.hs                ; 4 uses
  %i.hu = load i32, ptr %i.h, align 8, !tbaa !136
  %i.hv = mul nsw i32 %i.hu, %i.gn
  %i.hw = ashr i32 %i.hn, %i.gr
  %i.hx = add nsw i32 %i.hv, %i.hw                ; 4 uses
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !177 ; 4 uses
  %i.ib = mul nsw i64 %i.ia, %i.hy
  %i.ic = sext i32 %i.ht to i64
  %i.id = add nsw i64 %i.ib, %i.ic                ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !98
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 %i.id ; 2 uses
  %i.ih = icmp ne i32 %i.ho, 0
  %.neg.i398 = sext i1 %i.ih to i32
  %i.ii = sub i32 %i.gs, %i.gn
  %i.ij = add i32 %i.ii, %.neg.i398
  %spec.select.i399 = tail call i32 @llvm.smax.i32(i32 %i.ij, i32 0)
  %i.ik = icmp ugt i32 %i.ht, %spec.select.i399
  br i1 %i.ik, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.il = icmp ne i32 %i.hp, 0
  %.neg91.i = sext i1 %i.il to i32
  %i.im = sub i32 %i.gu, %i.gn
  %i.in = add i32 %i.im, %.neg91.i
  %spec.select93.i = tail call i32 @llvm.smax.i32(i32 %i.in, i32 0)
  %i.io = icmp ugt i32 %i.hx, %spec.select93.i
  br i1 %i.io, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ip = load ptr, ptr %i.ax, align 16, !tbaa !173
  %i.iq = load ptr, ptr %i.ay, align 8, !tbaa !174
  tail call void %i.ip(ptr noundef %i.iq, ptr noundef %i.ig, i64 noundef %i.ia, i64 noundef %i.ia, i32 noundef 9, i32 noundef 9, i32 noundef %i.ht, i32 noundef %i.hx, i32 noundef %i.gs, i32 noundef %i.gu) #11, !inline_history !178
  %i.ir = load ptr, ptr %i.ay, align 8, !tbaa !174
  %.pre.i = load i64, ptr %i.hz, align 8, !tbaa !177
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.is = phi i64 [ %.pre.i, %bb.p ], [ %i.ia, %bb.o ]
  %.not92.i = phi i1 [ false, %bb.p ], [ true, %bb.o ]
  %.0.i400 = phi ptr [ %i.ir, %bb.p ], [ %i.ig, %bb.o ]
  %i.it = shl i32 %i.ho, 2
end_hunk_0
