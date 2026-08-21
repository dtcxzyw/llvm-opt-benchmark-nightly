inline.NumInlined: 31
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 18
begin_hunk_0_@decode_frame:bb.a
  %.0.i1110.prol = phi ptr [ %i.dkp, %.prol.preheader2266 ], [ %i.dkf, %bb.ll ] ; 3 uses
  %prol.iter2271 = phi i32 [ %prol.iter2271.next, %.prol.preheader2266 ], [ 0, %bb.ll ]
  %i.dki = load i64, ptr %.0.i1110.prol, align 8, !tbaa !32
  %i.dkj = getelementptr inbounds nuw i8, ptr %.08.i1109.prol, i64 1 ; 2 uses
  %i.dkk = load i8, ptr %.08.i1109.prol, align 1, !tbaa !32
  %i.dkl = zext i8 %i.dkk to i64
  %i.dkm = getelementptr inbounds nuw [8 x i8], ptr %i.dkg, i64 %i.dkl
  %i.dkn = load i64, ptr %i.dkm, align 8, !tbaa !75
  %i.dko = or i64 %i.dkn, %i.dki
  store i64 %i.dko, ptr %.0.i1110.prol, align 8, !tbaa !32
  %i.dkp = getelementptr inbounds nuw i8, ptr %.0.i1110.prol, i64 8 ; 2 uses
  %i.dkq = add nsw i32 %.09.i1108.prol, -1        ; 2 uses
  %prol.iter2271.next = add i32 %prol.iter2271, 1 ; 2 uses
  %prol.iter2271.cmp.not = icmp eq i32 %prol.iter2271.next, %xtraiter2269
  br i1 %prol.iter2271.cmp.not, label %.prol.loopexit2267, label %.prol.preheader2266, !llvm.loop !168

.prol.loopexit2267:                               ; preds = %.prol.preheader2266, %bb.ll
  %.09.i1108.unr = phi i32 [ %i.dke, %bb.ll ], [ %i.dkq, %.prol.preheader2266 ]
  %.08.i1109.unr = phi ptr [ %.161407, %bb.ll ], [ %i.dkj, %.prol.preheader2266 ]
  %.0.i1110.unr = phi ptr [ %i.dkf, %bb.ll ], [ %i.dkp, %.prol.preheader2266 ]
  %i.dkr = icmp ult i32 %i.dkh, 3
  br i1 %i.dkr, label %decodeplane8.exit1113, label %.new2268

.new2268:                                         ; preds = %.prol.loopexit2267, %.new2268
  %.09.i1108 = phi i32 [ %i.dly, %.new2268 ], [ %.09.i1108.unr, %.prol.loopexit2267 ]
  %.08.i1109 = phi ptr [ %i.dlr, %.new2268 ], [ %.08.i1109.unr, %.prol.loopexit2267 ] ; 5 uses
  %.0.i1110 = phi ptr [ %i.dlx, %.new2268 ], [ %.0.i1110.unr, %.prol.loopexit2267 ] ; 6 uses
  %i.dks = load i64, ptr %.0.i1110, align 8, !tbaa !32
  %i.dkt = getelementptr inbounds nuw i8, ptr %.08.i1109, i64 1
  %i.dku = load i8, ptr %.08.i1109, align 1, !tbaa !32
  %i.dkv = zext i8 %i.dku to i64
  %i.dkw = getelementptr inbounds nuw [8 x i8], ptr %i.dkg, i64 %i.dkv
  %i.dkx = load i64, ptr %i.dkw, align 8, !tbaa !75
  %i.dky = or i64 %i.dkx, %i.dks
  store i64 %i.dky, ptr %.0.i1110, align 8, !tbaa !32
  %i.dkz = getelementptr inbounds nuw i8, ptr %.0.i1110, i64 8 ; 2 uses
  %i.dla = load i64, ptr %i.dkz, align 8, !tbaa !32
  %i.dlb = getelementptr inbounds nuw i8, ptr %.08.i1109, i64 2
  %i.dlc = load i8, ptr %i.dkt, align 1, !tbaa !32
  %i.dld = zext i8 %i.dlc to i64
  %i.dle = getelementptr inbounds nuw [8 x i8], ptr %i.dkg, i64 %i.dld
  %i.dlf = load i64, ptr %i.dle, align 8, !tbaa !75
  %i.dlg = or i64 %i.dlf, %i.dla
  store i64 %i.dlg, ptr %i.dkz, align 8, !tbaa !32
  %i.dlh = getelementptr inbounds nuw i8, ptr %.0.i1110, i64 16 ; 2 uses
  %i.dli = load i64, ptr %i.dlh, align 8, !tbaa !32
  %i.dlj = getelementptr inbounds nuw i8, ptr %.08.i1109, i64 3
  %i.dlk = load i8, ptr %i.dlb, align 1, !tbaa !32
  %i.dll = zext i8 %i.dlk to i64
  %i.dlm = getelementptr inbounds nuw [8 x i8], ptr %i.dkg, i64 %i.dll
  %i.dln = load i64, ptr %i.dlm, align 8, !tbaa !75
  %i.dlo = or i64 %i.dln, %i.dli
  store i64 %i.dlo, ptr %i.dlh, align 8, !tbaa !32
  %i.dlp = getelementptr inbounds nuw i8, ptr %.0.i1110, i64 24 ; 2 uses
  %i.dlq = load i64, ptr %i.dlp, align 8, !tbaa !32
  %i.dlr = getelementptr inbounds nuw i8, ptr %.08.i1109, i64 4
  %i.dls = load i8, ptr %i.dlj, align 1, !tbaa !32
  %i.dlt = zext i8 %i.dls to i64
  %i.dlu = getelementptr inbounds nuw [8 x i8], ptr %i.dkg, i64 %i.dlt
  %i.dlv = load i64, ptr %i.dlu, align 8, !tbaa !75
  %i.dlw = or i64 %i.dlv, %i.dlq
  store i64 %i.dlw, ptr %i.dlp, align 8, !tbaa !32
  %i.dlx = getelementptr inbounds nuw i8, ptr %.0.i1110, i64 32
  %i.dly = add nsw i32 %.09.i1108, -4             ; 2 uses
  %.not.i1111.3 = icmp eq i32 %i.dly, 0
  br i1 %.not.i1111.3, label %decodeplane8.exit1113, label %.new2268, !llvm.loop !78

decodeplane8.exit1113:                            ; preds = %.prol.loopexit2267, %.new2268, %bb.lk
  %i.dlz = load i32, ptr %i.b, align 8, !tbaa !37 ; 2 uses
  %i.dma = sext i32 %i.dlz to i64
  %i.dmb = getelementptr inbounds i8, ptr %.161407, i64 %i.dma ; 2 uses
  %indvars.iv.next1573 = add nuw nsw i64 %indvars.iv1572, 1 ; 2 uses
  %i.dmc = load i32, ptr %i.djs, align 8, !tbaa !40
  %i.dmd = zext i32 %i.dmc to i64
  %i.dme = icmp samesign ult i64 %indvars.iv.next1573, %i.dmd
  br i1 %i.dme, label %.lr.ph1409, label %._crit_edge1410, !llvm.loop !169

._crit_edge1410:                                  ; preds = %decodeplane8.exit1113, %.._crit_edge1410_crit_edge
  %i.dmf = phi i32 [ %.pre1615, %.._crit_edge1410_crit_edge ], [ %i.dlz, %decodeplane8.exit1113 ]
  %.16.lcssa = phi ptr [ %.151413, %.._crit_edge1410_crit_edge ], [ %i.dmb, %decodeplane8.exit1113 ]
  %i.dmg = load ptr, ptr %i.djr, align 8, !tbaa !53
  %i.dmh = load ptr, ptr %i.dgr, align 8, !tbaa !54
  tail call fastcc void @decode_ham_plane32(ptr noundef %i.djx, ptr noundef %i.dmg, ptr noundef %i.dmh, i32 noundef %i.dmf)
  %i.dmi = add nuw nsw i32 %.181412, 1            ; 2 uses
  %i.dmj = load i32, ptr %i.djn, align 4, !tbaa !36
  %i.dmk = icmp slt i32 %i.dmi, %i.dmj
  br i1 %i.dmk, label %bb.lj, label %.loopexit, !llvm.loop !170

bb.lm:                                            ; preds = %bb.ld
  tail call fastcc void @unsupported(ptr noundef nonnull %0)
  br label %parse_packet_header.exit

.loopexit:                                        ; preds = %._crit_edge1410, %.loopexit1165, %._crit_edge1397, %bb.lc
  %i.dml = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.dmm = load i32, ptr %i.dml, align 4, !tbaa !69
  %.not819 = icmp eq i32 %i.dmm, 0
  br i1 %.not819, label %bb.ln, label %.thread1120

bb.ln:                                            ; preds = %.loopexit
  %i.dmn = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.dmo = load <2 x ptr>, ptr %i.dmn, align 8, !tbaa !42
  %i.dmp = shufflevector <2 x ptr> %i.dmo, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.dmp, ptr %i.dmn, align 8, !tbaa !42
  br label %.thread1120

.thread1120:                                      ; preds = %bb.kw, %.loopexit, %bb.ln, %bb.kx
  %i.dmq = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dmr = load i32, ptr %i.dmq, align 8, !tbaa !171
  %i.dms = and i32 %i.dmr, 1                      ; 2 uses
  %i.dmt = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  %i.dmu = load i32, ptr %i.dmt, align 4, !tbaa !172
  %i.dmv = and i32 %i.dmu, -3
  %masksel = shl nuw nsw i32 %i.dms, 1
  %.sink1869 = or disjoint i32 %i.dmv, %masksel
  %.sink1580 = sub nuw nsw i32 2, %i.dms
  store i32 %.sink1869, ptr %i.dmt, align 4, !tbaa !172
  %i.dmw = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 %.sink1580, ptr %i.dmw, align 8, !tbaa !177
  store i32 1, ptr %2, align 4, !tbaa !55
  br label %parse_packet_header.exit

parse_packet_header.exit:                         ; preds = %bb.n, %bb.i, %bb.z, %bb.x, %.loopexit1227, %.thread1120, %bb.lm, %bb.kv, %bb.jy, %bb.jv, %bb.fo, %bb.fn, %.thread1117, %bb.fe, %bb.ej, %bb.ei, %bb.dz, %bb.dw, %bb.bi, %bb.bh, %bb.an
  %.0 = phi i32 [ %i.dn, %.loopexit1227 ], [ %i.es, %bb.z ], [ -1094995529, %bb.kv ], [ %i.dv, %.thread1120 ], [ -1094995529, %bb.lm ], [ -1094995529, %bb.an ], [ -1094995529, %bb.bh ], [ -1094995529, %bb.bi ], [ -1094995529, %bb.dw ], [ -1094995529, %bb.dz ], [ -1094995529, %bb.ei ], [ -1094995529, %bb.ej ], [ -1094995529, %bb.fe ], [ -1094995529, %.thread1117 ], [ -1094995529, %bb.fn ], [ -1094995529, %bb.fo ], [ -1094995529, %bb.jv ], [ -1094995529, %bb.jy ], [ %i.el, %bb.x ], [ -1094995529, %bb.i ], [ -1094995529, %bb.n ]
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
  %i.p = shl nuw nsw i32 1, %i.j                  ; 5 uses
  %i.q = udiv i32 %i.o, 3
  %. = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.p) ; 5 uses
  %.not = icmp ult i32 %i.o, 3
  br i1 %.not, label %.preheader.preheader, label %.lr.ph.preheader

.preheader.preheader:                             ; preds = %bb.c
  %wide.trip.count94 = zext nneg i32 %i.p to i64  ; 4 uses
  %min.iters.check = icmp ult i32 %i.j, 3
  br i1 %min.iters.check, label %.preheader.preheader129, label %vector.memcheck104

.preheader.preheader129:                          ; preds = %vector.memcheck104, %.preheader.preheader
  %xtraiter133 = and i64 %wide.trip.count94, 1
  %i.r = icmp eq i32 %i.j, 0
  br i1 %i.r, label %.preheader.epil.preheader, label %.preheader.preheader129.new

.preheader.preheader129.new:                      ; preds = %.preheader.preheader129
  %unroll_iter136 = and i64 %wide.trip.count94, 2147483646
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
  %umax = tail call i32 @llvm.umax.i32(i32 %., i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %umax to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.am = icmp samesign ult i32 %., 2
  br i1 %i.am, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.an = mul nuw nsw i64 %indvars.iv, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.an ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !32
  %i.aq = zext i8 %i.ap to i32
  %i.ar = shl nuw nsw i32 %i.aq, 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !32
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !32
  %i.ay = zext i8 %i.ax to i32
  %i.az = or disjoint i32 %i.ar, %i.av
  %i.ba = or disjoint i32 %i.az, %i.ay
  %i.bb = or disjoint i32 %i.ba, -16777216
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !55
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bd = mul nuw nsw i64 %indvars.iv.next, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bd ; 3 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !32
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw nsw i32 %i.bg, 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !32
  %i.bk = zext i8 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !32
  %i.bo = zext i8 %i.bn to i32
  %i.bp = or disjoint i32 %i.bh, %i.bl
  %i.bq = or disjoint i32 %i.bp, %i.bo
  %i.br = or disjoint i32 %i.bq, -16777216
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !55
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !184

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod132 = trunc i32 %umax to i1
  tail call void @llvm.assume(i1 %lcmp.mod132)
  %i.bt = mul nuw nsw i64 %indvars.iv.epil.init, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bt ; 3 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !32
  %i.bw = zext i8 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !32
  %i.ca = zext i8 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !32
  %i.ce = zext i8 %i.cd to i32
  %i.cf = or disjoint i32 %i.bx, %i.cb
  %i.cg = or disjoint i32 %i.cf, %i.ce
  %i.ch = or disjoint i32 %i.cg, -16777216
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !55
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !46
  %i.cl = icmp ne i32 %i.ck, 0
  %i.cm = icmp samesign ugt i32 %., 31
  %or.cond = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond, label %vector.memcheck, label %.loopexit75

vector.memcheck:                                  ; preds = %._crit_edge
  %scevgep = getelementptr i8, ptr %1, i64 128
  %scevgep102 = getelementptr i8, ptr %1, i64 256
  %i.cn = getelementptr i8, ptr %i.d, i64 %i.g
  %scevgep103 = getelementptr i8, ptr %i.cn, i64 96
  %bound0 = icmp ult ptr %scevgep, %scevgep103
  %bound1 = icmp ult ptr %i.h, %scevgep102
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader76, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 6 uses
  %i.co = mul nuw nsw i64 %index, 3
  %i.cp = mul nuw i64 %index, 3
  %i.cq = mul nuw i64 %index, 3
  %i.cr = mul nuw i64 %index, 3
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.co ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cp ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cq ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 6
  %i.cx = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cr ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 9
  %i.cz = load i8, ptr %i.cs, align 1, !tbaa !32, !alias.scope !185
  %i.da = load i8, ptr %i.cu, align 1, !tbaa !32, !alias.scope !185
  %i.db = load i8, ptr %i.cw, align 1, !tbaa !32, !alias.scope !185
  %i.dc = load i8, ptr %i.cy, align 1, !tbaa !32, !alias.scope !185
  %i.dd = insertelement <4 x i8> poison, i8 %i.cz, i64 0
  %i.de = insertelement <4 x i8> %i.dd, i8 %i.da, i64 1
  %i.df = insertelement <4 x i8> %i.de, i8 %i.db, i64 2
  %i.dg = insertelement <4 x i8> %i.df, i8 %i.dc, i64 3
  %i.dh = zext <4 x i8> %i.dg to <4 x i32>
  %i.di = shl nuw nsw <4 x i32> %i.dh, splat (i32 16)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cv, i64 7
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cx, i64 10
  %i.dn = load i8, ptr %i.dj, align 1, !tbaa !32, !alias.scope !185
  %i.do = load i8, ptr %i.dk, align 1, !tbaa !32, !alias.scope !185
  %i.dp = load i8, ptr %i.dl, align 1, !tbaa !32, !alias.scope !185
  %i.dq = load i8, ptr %i.dm, align 1, !tbaa !32, !alias.scope !185
  %i.dr = insertelement <4 x i8> poison, i8 %i.dn, i64 0
  %i.ds = insertelement <4 x i8> %i.dr, i8 %i.do, i64 1
  %i.dt = insertelement <4 x i8> %i.ds, i8 %i.dp, i64 2
  %i.du = insertelement <4 x i8> %i.dt, i8 %i.dq, i64 3
  %i.dv = zext <4 x i8> %i.du to <4 x i32>
  %i.dw = shl nuw nsw <4 x i32> %i.dv, splat (i32 8)
  %i.dx = or disjoint <4 x i32> %i.dw, %i.di
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ct, i64 5
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cx, i64 11
  %i.ec = load i8, ptr %i.dy, align 1, !tbaa !32, !alias.scope !185
  %i.ed = load i8, ptr %i.dz, align 1, !tbaa !32, !alias.scope !185
  %i.ee = load i8, ptr %i.ea, align 1, !tbaa !32, !alias.scope !185
  %i.ef = load i8, ptr %i.eb, align 1, !tbaa !32, !alias.scope !185
  %i.eg = insertelement <4 x i8> poison, i8 %i.ec, i64 0
  %i.eh = insertelement <4 x i8> %i.eg, i8 %i.ed, i64 1
  %i.ei = insertelement <4 x i8> %i.eh, i8 %i.ee, i64 2
  %i.ej = insertelement <4 x i8> %i.ei, i8 %i.ef, i64 3
  %i.ek = zext <4 x i8> %i.ej to <4 x i32>
  %i.el = or disjoint <4 x i32> %i.dx, %i.ek
  %i.em = lshr <4 x i32> %i.el, splat (i32 1)
  %i.en = and <4 x i32> %i.em, splat (i32 8355711)
  %i.eo = or disjoint <4 x i32> %i.en, splat (i32 -16777216)
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 128
  store <4 x i32> %i.eo, ptr %i.eq, align 4, !tbaa !55, !alias.scope !188, !noalias !185
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.er = icmp eq i64 %index.next, 32
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !190

.preheader76:                                     ; preds = %vector.memcheck, %.preheader76
  %indvars.iv87 = phi i64 [ %indvars.iv.next88.1, %.preheader76 ], [ 0, %vector.memcheck ] ; 4 uses
  %i.es = mul nuw nsw i64 %indvars.iv87, 3
  %i.et = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.es ; 3 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !32
  %i.ev = zext i8 %i.eu to i32
  %i.ew = shl nuw nsw i32 %i.ev, 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !32
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl nuw nsw i32 %i.ez, 8
  %i.fb = or disjoint i32 %i.fa, %i.ew
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 2
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !32
  %i.fe = zext i8 %i.fd to i32
  %i.ff = or disjoint i32 %i.fb, %i.fe
  %i.fg = lshr i32 %i.ff, 1
  %i.fh = and i32 %i.fg, 8355711
  %i.fi = or disjoint i32 %i.fh, -16777216
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv87
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 128
  store i32 %i.fi, ptr %i.fk, align 4, !tbaa !55
  %indvars.iv.next88 = or disjoint i64 %indvars.iv87, 1 ; 2 uses
  %i.fl = mul nuw nsw i64 %indvars.iv.next88, 3
  %i.fm = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fl ; 3 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !32
  %i.fo = zext i8 %i.fn to i32
  %i.fp = shl nuw nsw i32 %i.fo, 16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !32
  %i.fs = zext i8 %i.fr to i32
  %i.ft = shl nuw nsw i32 %i.fs, 8
  %i.fu = or disjoint i32 %i.ft, %i.fp
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !32
  %i.fx = zext i8 %i.fw to i32
  %i.fy = or disjoint i32 %i.fu, %i.fx
  %i.fz = lshr i32 %i.fy, 1
  %i.ga = and i32 %i.fz, 8355711
  %i.gb = or disjoint i32 %i.ga, -16777216
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next88
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 128
  store i32 %i.gb, ptr %i.gd, align 4, !tbaa !55
  %indvars.iv.next88.1 = add nuw nsw i64 %indvars.iv87, 2 ; 2 uses
end_hunk_0
