Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/iff?download=true
inline.NumInlined: 31
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 18
begin_hunk_0_@decode_frame:bb.a
  %.0.i1110.prol = phi ptr [ %i.dkl, %.prol.preheader2236 ], [ %i.dkb, %bb.ln ] ; 3 uses
  %prol.iter2241 = phi i32 [ %prol.iter2241.next, %.prol.preheader2236 ], [ 0, %bb.ln ]
  %i.dke = load i64, ptr %.0.i1110.prol, align 8, !tbaa !32
  %i.dkf = getelementptr inbounds nuw i8, ptr %.08.i1109.prol, i64 1 ; 2 uses
  %i.dkg = load i8, ptr %.08.i1109.prol, align 1, !tbaa !32
  %i.dkh = zext i8 %i.dkg to i64
  %i.dki = getelementptr inbounds nuw [8 x i8], ptr %i.dkc, i64 %i.dkh
  %i.dkj = load i64, ptr %i.dki, align 8, !tbaa !75
  %i.dkk = or i64 %i.dkj, %i.dke
  store i64 %i.dkk, ptr %.0.i1110.prol, align 8, !tbaa !32
  %i.dkl = getelementptr inbounds nuw i8, ptr %.0.i1110.prol, i64 8 ; 2 uses
  %i.dkm = add nsw i32 %.09.i1108.prol, -1        ; 2 uses
  %prol.iter2241.next = add i32 %prol.iter2241, 1 ; 2 uses
  %prol.iter2241.cmp.not = icmp eq i32 %prol.iter2241.next, %xtraiter2239
  br i1 %prol.iter2241.cmp.not, label %.prol.loopexit2237, label %.prol.preheader2236, !llvm.loop !168

.prol.loopexit2237:                               ; preds = %.prol.preheader2236, %bb.ln
  %.09.i1108.unr = phi i32 [ %i.dka, %bb.ln ], [ %i.dkm, %.prol.preheader2236 ]
  %.08.i1109.unr = phi ptr [ %.161393, %bb.ln ], [ %i.dkf, %.prol.preheader2236 ]
  %.0.i1110.unr = phi ptr [ %i.dkb, %bb.ln ], [ %i.dkl, %.prol.preheader2236 ]
  %i.dkn = icmp ult i32 %i.dkd, 3
  br i1 %i.dkn, label %decodeplane8.exit1113, label %.new2238

.new2238:                                         ; preds = %.prol.loopexit2237, %.new2238
  %.09.i1108 = phi i32 [ %i.dlu, %.new2238 ], [ %.09.i1108.unr, %.prol.loopexit2237 ]
  %.08.i1109 = phi ptr [ %i.dln, %.new2238 ], [ %.08.i1109.unr, %.prol.loopexit2237 ] ; 5 uses
  %.0.i1110 = phi ptr [ %i.dlt, %.new2238 ], [ %.0.i1110.unr, %.prol.loopexit2237 ] ; 6 uses
  %i.dko = load i64, ptr %.0.i1110, align 8, !tbaa !32
  %i.dkp = getelementptr inbounds nuw i8, ptr %.08.i1109, i64 1
  %i.dkq = load i8, ptr %.08.i1109, align 1, !tbaa !32
  %i.dkr = zext i8 %i.dkq to i64
  %i.dks = getelementptr inbounds nuw [8 x i8], ptr %i.dkc, i64 %i.dkr
  %i.dkt = load i64, ptr %i.dks, align 8, !tbaa !75
  %i.dku = or i64 %i.dkt, %i.dko
  store i64 %i.dku, ptr %.0.i1110, align 8, !tbaa !32
  %i.dkv = getelementptr inbounds nuw i8, ptr %.0.i1110, i64 8 ; 2 uses
  %i.dkw = load i64, ptr %i.dkv, align 8, !tbaa !32
  %i.dkx = getelementptr inbounds nuw i8, ptr %.08.i1109, i64 2
  %i.dky = load i8, ptr %i.dkp, align 1, !tbaa !32
  %i.dkz = zext i8 %i.dky to i64
  %i.dla = getelementptr inbounds nuw [8 x i8], ptr %i.dkc, i64 %i.dkz
  %i.dlb = load i64, ptr %i.dla, align 8, !tbaa !75
  %i.dlc = or i64 %i.dlb, %i.dkw
  store i64 %i.dlc, ptr %i.dkv, align 8, !tbaa !32
  %i.dld = getelementptr inbounds nuw i8, ptr %.0.i1110, i64 16 ; 2 uses
  %i.dle = load i64, ptr %i.dld, align 8, !tbaa !32
  %i.dlf = getelementptr inbounds nuw i8, ptr %.08.i1109, i64 3
  %i.dlg = load i8, ptr %i.dkx, align 1, !tbaa !32
  %i.dlh = zext i8 %i.dlg to i64
  %i.dli = getelementptr inbounds nuw [8 x i8], ptr %i.dkc, i64 %i.dlh
  %i.dlj = load i64, ptr %i.dli, align 8, !tbaa !75
  %i.dlk = or i64 %i.dlj, %i.dle
  store i64 %i.dlk, ptr %i.dld, align 8, !tbaa !32
  %i.dll = getelementptr inbounds nuw i8, ptr %.0.i1110, i64 24 ; 2 uses
  %i.dlm = load i64, ptr %i.dll, align 8, !tbaa !32
  %i.dln = getelementptr inbounds nuw i8, ptr %.08.i1109, i64 4
  %i.dlo = load i8, ptr %i.dlf, align 1, !tbaa !32
  %i.dlp = zext i8 %i.dlo to i64
  %i.dlq = getelementptr inbounds nuw [8 x i8], ptr %i.dkc, i64 %i.dlp
  %i.dlr = load i64, ptr %i.dlq, align 8, !tbaa !75
  %i.dls = or i64 %i.dlr, %i.dlm
  store i64 %i.dls, ptr %i.dll, align 8, !tbaa !32
  %i.dlt = getelementptr inbounds nuw i8, ptr %.0.i1110, i64 32
  %i.dlu = add nsw i32 %.09.i1108, -4             ; 2 uses
  %.not.i1111.3 = icmp eq i32 %i.dlu, 0
  br i1 %.not.i1111.3, label %decodeplane8.exit1113, label %.new2238, !llvm.loop !78

decodeplane8.exit1113:                            ; preds = %.prol.loopexit2237, %.new2238, %bb.lm
  %i.dlv = load i32, ptr %i.b, align 8, !tbaa !37 ; 2 uses
  %i.dlw = sext i32 %i.dlv to i64
  %i.dlx = getelementptr inbounds i8, ptr %.161393, i64 %i.dlw ; 2 uses
  %indvars.iv.next1555 = add nuw nsw i64 %indvars.iv1554, 1 ; 2 uses
  %i.dly = load i32, ptr %i.djo, align 8, !tbaa !40
  %i.dlz = zext i32 %i.dly to i64
  %i.dma = icmp samesign ult i64 %indvars.iv.next1555, %i.dlz
  br i1 %i.dma, label %.lr.ph1395, label %._crit_edge1396, !llvm.loop !169

._crit_edge1396:                                  ; preds = %decodeplane8.exit1113, %.._crit_edge1396_crit_edge
  %i.dmb = phi i32 [ %.pre1597, %.._crit_edge1396_crit_edge ], [ %i.dlv, %decodeplane8.exit1113 ]
  %.16.lcssa = phi ptr [ %.151399, %.._crit_edge1396_crit_edge ], [ %i.dlx, %decodeplane8.exit1113 ]
  %i.dmc = load ptr, ptr %i.djn, align 8, !tbaa !53
  %i.dmd = load ptr, ptr %i.dgn, align 8, !tbaa !54
  tail call fastcc void @decode_ham_plane32(ptr noundef %i.djt, ptr noundef %i.dmc, ptr noundef %i.dmd, i32 noundef %i.dmb)
  %i.dme = add nuw nsw i32 %.181398, 1            ; 2 uses
  %i.dmf = load i32, ptr %i.djj, align 4, !tbaa !36
  %i.dmg = icmp slt i32 %i.dme, %i.dmf
  br i1 %i.dmg, label %bb.ll, label %.loopexit, !llvm.loop !170

bb.lo:                                            ; preds = %bb.lf
  tail call fastcc void @unsupported(ptr noundef nonnull %0)
  br label %parse_packet_header.exit

.loopexit:                                        ; preds = %._crit_edge1396, %.loopexit1165, %._crit_edge1383, %bb.le
  %i.dmh = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.dmi = load i32, ptr %i.dmh, align 4, !tbaa !69
  %.not819 = icmp eq i32 %i.dmi, 0
  br i1 %.not819, label %bb.lp, label %.thread1120

bb.lp:                                            ; preds = %.loopexit
  %i.dmj = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.dmk = load <2 x ptr>, ptr %i.dmj, align 8, !tbaa !42
  %i.dml = shufflevector <2 x ptr> %i.dmk, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.dml, ptr %i.dmj, align 8, !tbaa !42
  br label %.thread1120

.thread1120:                                      ; preds = %bb.ky, %.loopexit, %bb.lp, %bb.kz
  %i.dmm = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dmn = load i32, ptr %i.dmm, align 8, !tbaa !171
  %i.dmo = and i32 %i.dmn, 1                      ; 2 uses
  %i.dmp = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  %i.dmq = load i32, ptr %i.dmp, align 4, !tbaa !172
  %i.dmr = and i32 %i.dmq, -3
  %masksel = shl nuw nsw i32 %i.dmo, 1
  %.sink1850 = or disjoint i32 %i.dmr, %masksel
  %.sink1562 = sub nuw nsw i32 2, %i.dmo
  store i32 %.sink1850, ptr %i.dmp, align 4, !tbaa !172
  %i.dms = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 %.sink1562, ptr %i.dms, align 8, !tbaa !177
  store i32 1, ptr %2, align 4, !tbaa !55
  br label %parse_packet_header.exit

parse_packet_header.exit:                         ; preds = %bb.n, %bb.i, %bb.z, %bb.x, %.loopexit1227, %.thread1120, %bb.lo, %bb.kx, %bb.ka, %bb.jx, %bb.fq, %bb.fp, %.thread1117, %bb.fg, %bb.el, %bb.ek, %bb.eb, %bb.dy, %bb.bi, %bb.bh, %bb.an
  %.0 = phi i32 [ %i.dt, %.loopexit1227 ], [ %i.ey, %bb.z ], [ -1094995529, %bb.kx ], [ %i.eb, %.thread1120 ], [ -1094995529, %bb.lo ], [ -1094995529, %bb.an ], [ -1094995529, %bb.bh ], [ -1094995529, %bb.bi ], [ -1094995529, %bb.dy ], [ -1094995529, %bb.eb ], [ -1094995529, %bb.ek ], [ -1094995529, %bb.el ], [ -1094995529, %bb.fg ], [ -1094995529, %.thread1117 ], [ -1094995529, %bb.fp ], [ -1094995529, %bb.fq ], [ -1094995529, %bb.jx ], [ -1094995529, %bb.ka ], [ %i.er, %bb.x ], [ -1094995529, %bb.i ], [ -1094995529, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.c) #10
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @av_freep(ptr noundef nonnull %i.d) #10
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.e) #10
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @av_freep(ptr noundef nonnull %i.f) #10
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @av_freep(ptr noundef nonnull %i.g) #10
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  tail call void @av_freep(ptr noundef nonnull %i.h) #10
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  tail call void @av_freep(ptr noundef nonnull %i.i) #10
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  tail call void @av_freep(ptr noundef nonnull %i.j) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @av_image_check_size(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1163346256, 1) i32 @cmap_read_palette(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 3 uses
  %i.e = load i16, ptr %i.d, align 1, !tbaa !32
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.e)  ; 2 uses
  %i.g = zext i16 %i.f to i64                     ; 2 uses
  %i.h = getelementptr i8, ptr %i.d, i64 %i.g     ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 8 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !29   ; 5 uses
  %i.k = icmp sgt i32 %i.j, 8
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.13) #10
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load i32, ptr %i.l, align 8, !tbaa !30
  %i.n = zext i16 %i.f to i32
  %i.o = sub nsw i32 %i.m, %i.n                   ; 2 uses
  %i.p = shl nuw i32 1, %i.j                      ; 5 uses
  %i.q = udiv i32 %i.o, 3
  %. = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.p) ; 6 uses
  %.not = icmp ult i32 %i.o, 3
  br i1 %.not, label %.preheader.preheader, label %.lr.ph.preheader

.preheader.preheader:                             ; preds = %bb.c
  %wide.trip.count94 = zext i32 %i.p to i64       ; 4 uses
  %min.iters.check = icmp ult i32 %i.j, 3
  br i1 %min.iters.check, label %.preheader.preheader129, label %vector.memcheck104

.preheader.preheader129:                          ; preds = %vector.memcheck104, %.preheader.preheader
  %xtraiter133 = and i64 %wide.trip.count94, 1
  %i.r = icmp eq i32 %i.j, 0
  br i1 %i.r, label %.preheader.epil.preheader, label %.preheader.preheader129.new

.preheader.preheader129.new:                      ; preds = %.preheader.preheader129
  %unroll_iter136 = and i64 %wide.trip.count94, 4294967294
  br label %.preheader

vector.memcheck104:                               ; preds = %.preheader.preheader
  %i.s = shl nuw nsw i64 %wide.trip.count94, 2
  %scevgep105 = getelementptr i8, ptr %1, i64 %i.s
  %scevgep106 = getelementptr i8, ptr %0, i64 652
  %bound0107 = icmp ult ptr %1, %scevgep106
  %bound1108 = icmp ult ptr %i.i, %scevgep105
  %found.conflict109 = and i1 %bound0107, %bound1108
  br i1 %found.conflict109, label %.preheader.preheader129, label %vector.ph111

vector.ph111:                                     ; preds = %vector.memcheck104
  %n.vec = and i64 %wide.trip.count94, 2147483640
  %i.t = load i32, ptr %i.i, align 8, !tbaa !29, !alias.scope !178
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph111
  %index113 = phi i64 [ 0, %vector.ph111 ], [ %index.next114, %vector.body112 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph111 ], [ %vec.ind.next, %vector.body112 ] ; 3 uses
  %i.u = mul <4 x i32> %vec.ind, splat (i32 255)
  %i.v = mul <4 x i32> %vec.ind, splat (i32 255)
  %i.w = add <4 x i32> %i.v, splat (i32 1020)
  %i.x = lshr <4 x i32> %i.u, %broadcast.splat    ; 3 uses
  %i.y = lshr <4 x i32> %i.w, %broadcast.splat    ; 3 uses
  %i.z = shl <4 x i32> %i.x, splat (i32 16)
  %i.aa = shl <4 x i32> %i.y, splat (i32 16)
  %i.ab = shl <4 x i32> %i.x, splat (i32 8)
  %i.ac = shl <4 x i32> %i.y, splat (i32 8)
  %i.ad = or <4 x i32> %i.ab, %i.z
  %i.ae = or <4 x i32> %i.ac, %i.aa
  %i.af = or <4 x i32> %i.ad, %i.x
  %i.ag = or <4 x i32> %i.ae, %i.y
  %i.ah = or <4 x i32> %i.af, splat (i32 -16777216)
  %i.ai = or <4 x i32> %i.ag, splat (i32 -16777216)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index113 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <4 x i32> %i.ah, ptr %i.aj, align 4, !tbaa !55, !alias.scope !181, !noalias !178
  store <4 x i32> %i.ai, ptr %i.ak, align 4, !tbaa !55, !alias.scope !181, !noalias !178
  %index.next114 = add nuw i64 %index113, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.al = icmp eq i64 %index.next114, %n.vec
  br i1 %i.al, label %.loopexit75, label %vector.body112, !llvm.loop !183

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %. to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %2 = icmp eq i32 %., 1
  br i1 %2, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.am = mul nuw nsw i64 %indvars.iv, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.am ; 3 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !32
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !32
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !32
  %i.ax = zext i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.aq, %i.au
  %i.az = or disjoint i32 %i.ay, %i.ax
  %i.ba = or disjoint i32 %i.az, -16777216
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !55
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bc = mul nuw nsw i64 %indvars.iv.next, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bc ; 3 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !32
  %i.bf = zext i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !32
  %i.bj = zext i8 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bj, 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !32
  %i.bn = zext i8 %i.bm to i32
  %i.bo = or disjoint i32 %i.bg, %i.bk
  %i.bp = or disjoint i32 %i.bo, %i.bn
  %i.bq = or disjoint i32 %i.bp, -16777216
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !55
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !184

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod132 = trunc i32 %. to i1
  tail call void @llvm.assume(i1 %lcmp.mod132)
  %i.bs = mul nuw nsw i64 %indvars.iv.epil.init, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bs ; 3 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !32
  %i.bv = zext i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !32
  %i.bz = zext i8 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bz, 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !32
  %i.cd = zext i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.bw, %i.ca
  %i.cf = or disjoint i32 %i.ce, %i.cd
  %i.cg = or disjoint i32 %i.cf, -16777216
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !55
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !46
  %i.ck = icmp ne i32 %i.cj, 0
  %i.cl = icmp samesign ugt i32 %., 31
  %or.cond = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %or.cond, label %vector.memcheck, label %.loopexit75

vector.memcheck:                                  ; preds = %._crit_edge
  %scevgep = getelementptr i8, ptr %1, i64 128
  %scevgep102 = getelementptr i8, ptr %1, i64 256
  %i.cm = getelementptr i8, ptr %i.d, i64 %i.g
  %scevgep103 = getelementptr i8, ptr %i.cm, i64 96
  %bound0 = icmp ult ptr %scevgep, %scevgep103
  %bound1 = icmp ult ptr %i.h, %scevgep102
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader76, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 6 uses
  %i.cn = mul nuw nsw i64 %index, 3
  %i.co = mul nuw i64 %index, 3
  %i.cp = mul nuw i64 %index, 3
  %i.cq = mul nuw i64 %index, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cn ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.co ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cp ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 6
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cq ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 9
  %i.cy = load i8, ptr %i.cr, align 1, !tbaa !32, !alias.scope !185
  %i.cz = load i8, ptr %i.ct, align 1, !tbaa !32, !alias.scope !185
  %i.da = load i8, ptr %i.cv, align 1, !tbaa !32, !alias.scope !185
  %i.db = load i8, ptr %i.cx, align 1, !tbaa !32, !alias.scope !185
  %i.dc = insertelement <4 x i8> poison, i8 %i.cy, i64 0
  %i.dd = insertelement <4 x i8> %i.dc, i8 %i.cz, i64 1
  %i.de = insertelement <4 x i8> %i.dd, i8 %i.da, i64 2
  %i.df = insertelement <4 x i8> %i.de, i8 %i.db, i64 3
  %i.dg = zext <4 x i8> %i.df to <4 x i32>
  %i.dh = shl nuw nsw <4 x i32> %i.dg, splat (i32 16)
  %i.di = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cu, i64 7
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cw, i64 10
  %i.dm = load i8, ptr %i.di, align 1, !tbaa !32, !alias.scope !185
  %i.dn = load i8, ptr %i.dj, align 1, !tbaa !32, !alias.scope !185
  %i.do = load i8, ptr %i.dk, align 1, !tbaa !32, !alias.scope !185
  %i.dp = load i8, ptr %i.dl, align 1, !tbaa !32, !alias.scope !185
  %i.dq = insertelement <4 x i8> poison, i8 %i.dm, i64 0
  %i.dr = insertelement <4 x i8> %i.dq, i8 %i.dn, i64 1
  %i.ds = insertelement <4 x i8> %i.dr, i8 %i.do, i64 2
  %i.dt = insertelement <4 x i8> %i.ds, i8 %i.dp, i64 3
  %i.du = zext <4 x i8> %i.dt to <4 x i32>
  %i.dv = shl nuw nsw <4 x i32> %i.du, splat (i32 8)
  %i.dw = or disjoint <4 x i32> %i.dv, %i.dh
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cs, i64 5
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cw, i64 11
  %i.eb = load i8, ptr %i.dx, align 1, !tbaa !32, !alias.scope !185
  %i.ec = load i8, ptr %i.dy, align 1, !tbaa !32, !alias.scope !185
  %i.ed = load i8, ptr %i.dz, align 1, !tbaa !32, !alias.scope !185
  %i.ee = load i8, ptr %i.ea, align 1, !tbaa !32, !alias.scope !185
  %i.ef = insertelement <4 x i8> poison, i8 %i.eb, i64 0
  %i.eg = insertelement <4 x i8> %i.ef, i8 %i.ec, i64 1
  %i.eh = insertelement <4 x i8> %i.eg, i8 %i.ed, i64 2
  %i.ei = insertelement <4 x i8> %i.eh, i8 %i.ee, i64 3
  %i.ej = zext <4 x i8> %i.ei to <4 x i32>
  %i.ek = or disjoint <4 x i32> %i.dw, %i.ej
  %i.el = lshr <4 x i32> %i.ek, splat (i32 1)
  %i.em = and <4 x i32> %i.el, splat (i32 8355711)
  %i.en = or disjoint <4 x i32> %i.em, splat (i32 -16777216)
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 128
  store <4 x i32> %i.en, ptr %i.ep, align 4, !tbaa !55, !alias.scope !188, !noalias !185
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eq = icmp eq i64 %index.next, 32
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !190

.preheader76:                                     ; preds = %vector.memcheck, %.preheader76
  %indvars.iv87 = phi i64 [ %indvars.iv.next88.1, %.preheader76 ], [ 0, %vector.memcheck ] ; 4 uses
  %i.er = mul nuw nsw i64 %indvars.iv87, 3
  %i.es = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.er ; 3 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !32
  %i.eu = zext i8 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !32
  %i.ey = zext i8 %i.ex to i32
  %i.ez = shl nuw nsw i32 %i.ey, 8
  %i.fa = or disjoint i32 %i.ez, %i.ev
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !32
  %i.fd = zext i8 %i.fc to i32
  %i.fe = or disjoint i32 %i.fa, %i.fd
  %i.ff = lshr i32 %i.fe, 1
  %i.fg = and i32 %i.ff, 8355711
  %i.fh = or disjoint i32 %i.fg, -16777216
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv87
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 128
  store i32 %i.fh, ptr %i.fj, align 4, !tbaa !55
  %indvars.iv.next88 = or disjoint i64 %indvars.iv87, 1 ; 2 uses
  %i.fk = mul nuw nsw i64 %indvars.iv.next88, 3
  %i.fl = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fk ; 3 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !32
  %i.fn = zext i8 %i.fm to i32
  %i.fo = shl nuw nsw i32 %i.fn, 16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !32
  %i.fr = zext i8 %i.fq to i32
  %i.fs = shl nuw nsw i32 %i.fr, 8
  %i.ft = or disjoint i32 %i.fs, %i.fo
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !32
  %i.fw = zext i8 %i.fv to i32
  %i.fx = or disjoint i32 %i.ft, %i.fw
  %i.fy = lshr i32 %i.fx, 1
  %i.fz = and i32 %i.fy, 8355711
  %i.ga = or disjoint i32 %i.fz, -16777216
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next88
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 128
  store i32 %i.ga, ptr %i.gc, align 4, !tbaa !55
  %indvars.iv.next88.1 = add nuw nsw i64 %indvars.iv87, 2 ; 2 uses
  %exitcond90.not.1 = icmp eq i64 %indvars.iv.next88.1, 32
  br i1 %exitcond90.not.1, label %middle.block, label %.preheader76, !llvm.loop !191

middle.block:                                     ; preds = %vector.body, %.preheader76
  %i.gd = tail call i32 @llvm.umax.i32(i32 %., i32 64)
  br label %.loopexit75

.preheader:                                       ; preds = %.preheader, %.preheader.preheader129.new
  %indvars.iv91 = phi i64 [ 0, %.preheader.preheader129.new ], [ %indvars.iv.next92.1, %.preheader ] ; 4 uses
  %niter137 = phi i64 [ 0, %.preheader.preheader129.new ], [ %niter137.next.1, %.preheader ]
  %i.ge = trunc nuw nsw i64 %indvars.iv91 to i32
  %i.gf = mul i32 %i.ge, 255
  %i.gg = load i32, ptr %i.i, align 8, !tbaa !29
  %i.gh = lshr i32 %i.gf, %i.gg                   ; 3 uses
  %i.gi = shl i32 %i.gh, 16
  %i.gj = shl i32 %i.gh, 8
  %i.gk = or i32 %i.gj, %i.gi
  %i.gl = or i32 %i.gk, %i.gh
  %i.gm = or i32 %i.gl, -16777216
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv91
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !55
  %indvars.iv.next92 = or disjoint i64 %indvars.iv91, 1 ; 2 uses
  %i.go = trunc nuw nsw i64 %indvars.iv.next92 to i32
  %i.gp = mul i32 %i.go, 255
  %i.gq = load i32, ptr %i.i, align 8, !tbaa !29
  %i.gr = lshr i32 %i.gp, %i.gq                   ; 3 uses
  %i.gs = shl i32 %i.gr, 16
  %i.gt = shl i32 %i.gr, 8
  %i.gu = or i32 %i.gt, %i.gs
  %i.gv = or i32 %i.gu, %i.gr
  %i.gw = or i32 %i.gv, -16777216
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next92
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !55
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %niter137.next.1 = add i64 %niter137, 2         ; 2 uses
  %niter137.ncmp.1 = icmp eq i64 %niter137.next.1, %unroll_iter136
  br i1 %niter137.ncmp.1, label %.loopexit75.loopexit.unr-lcssa, label %.preheader, !llvm.loop !192

.loopexit75.loopexit.unr-lcssa:                   ; preds = %.preheader
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %.loopexit75, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit75.loopexit.unr-lcssa, %.preheader.preheader129
  %indvars.iv91.epil.init = phi i64 [ 0, %.preheader.preheader129 ], [ %indvars.iv.next92.1, %.loopexit75.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod135 = icmp eq i32 %i.j, 0
  tail call void @llvm.assume(i1 %lcmp.mod135)
  %i.gy = trunc nuw nsw i64 %indvars.iv91.epil.init to i32
  %i.gz = mul i32 %i.gy, 255
  %i.ha = load i32, ptr %i.i, align 8, !tbaa !29
  %i.hb = lshr i32 %i.gz, %i.ha                   ; 3 uses
  %i.hc = shl i32 %i.hb, 16
  %i.hd = shl i32 %i.hb, 8
  %i.he = or i32 %i.hd, %i.hc
  %i.hf = or i32 %i.he, %i.hb
  %i.hg = or i32 %i.hf, -16777216
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv91.epil.init
end_hunk_0
