inline.NumInlined: 26
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0_@dnxhd_encode_picture:bb.a
  store i32 %i.acl, ptr %i.abr, align 4, !tbaa !105
  %i.acm = add nuw nsw i32 %.02730.i, 1           ; 2 uses
  %i.acn = load i32, ptr %i.bs, align 4, !tbaa !80 ; 2 uses
  %i.aco = icmp slt i32 %i.acm, %i.acn
  br i1 %i.aco, label %bb.ah, label %._crit_edge.loopexit.i92, !llvm.loop !154

dnxhd_setup_threads_slices.exit:                  ; preds = %._crit_edge.i89
  %i.acp = icmp sgt i32 %i.acb, 0
  br i1 %i.acp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %dnxhd_setup_threads_slices.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %dnxhd_setup_threads_slices.exit ] ; 3 uses
  %.063121 = phi i32 [ %i.acx, %.lr.ph ], [ 0, %dnxhd_setup_threads_slices.exit ] ; 2 uses
  %i.acq = tail call i32 @llvm.bswap.i32(i32 %.063121)
  %i.acr = load ptr, ptr %i.ck, align 8, !tbaa !116
  %i.acs = shl nuw nsw i64 %indvars.iv, 2
  %i.act = getelementptr inbounds nuw i8, ptr %i.acr, i64 %i.acs
  store i32 %i.acq, ptr %i.act, align 1, !tbaa !115
  %i.acu = load ptr, ptr %i.cj, align 16, !tbaa !92
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %indvars.iv
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !105
  %i.acx = add i32 %i.acw, %.063121               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.acy = load i32, ptr %i.br, align 8, !tbaa !79 ; 2 uses
  %i.acz = sext i32 %i.acy to i64
  %i.ada = icmp slt i64 %indvars.iv.next, %i.acz
  br i1 %i.ada, label %.lr.ph, label %._crit_edge, !llvm.loop !155

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit, %dnxhd_setup_threads_slices.exit
  %.063.lcssa = phi i32 [ 0, %dnxhd_setup_threads_slices.exit ], [ 0, %.loopexit ], [ %i.acx, %.lr.ph ] ; 2 uses
  %.lcssa119 = phi i32 [ %i.acb, %dnxhd_setup_threads_slices.exit ], [ %i.abm, %.loopexit ], [ %i.acy, %.lr.ph ]
  %i.adb = load ptr, ptr %i.by, align 8, !tbaa !120
  %i.adc = tail call i32 %i.adb(ptr noundef %0, ptr noundef nonnull @dnxhd_encode_thread, ptr noundef %.0, ptr noundef null, i32 noundef %.lcssa119) #12 ; 0 uses
  %i.add = load i32, ptr %i.cl, align 4, !tbaa !89 ; 2 uses
  %i.ade = sext i32 %i.add to i64
  %i.adf = getelementptr inbounds i8, ptr %.0, i64 %i.ade
  %i.adg = sext i32 %.063.lcssa to i64
  %i.adh = getelementptr inbounds i8, ptr %i.adf, i64 %i.adg
  %i.adi = load i32, ptr %i.cm, align 16, !tbaa !87
  %i.adj = add i32 %.063.lcssa, %i.add
  %reass.sub = sub i32 %i.adi, %i.adj
  %i.adk = add i32 %reass.sub, -4
  %i.adl = sext i32 %i.adk to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.adh, i8 0, i64 %i.adl, i1 false)
  %i.adm = load i32, ptr %i.cm, align 16, !tbaa !87
  %i.adn = sext i32 %i.adm to i64
  %i.ado = getelementptr inbounds i8, ptr %.0, i64 %i.adn
  %i.adp = getelementptr inbounds i8, ptr %i.ado, i64 -4
  store i32 -557839008, ptr %i.adp, align 1, !tbaa !115
  %i.adq = load i32, ptr %i.bk, align 8, !tbaa !82
  %i.adr = icmp ne i32 %i.adq, 0
  %or.cond = and i1 %i.dd, %i.adr
  br i1 %or.cond, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %._crit_edge
  %i.ads = load i32, ptr %i.bi, align 4, !tbaa !113
  %i.adt = xor i32 %i.ads, 1                      ; 2 uses
  store i32 %i.adt, ptr %i.bi, align 4, !tbaa !113
  %i.adu = load i32, ptr %i.cm, align 16, !tbaa !87
  %i.adv = sext i32 %i.adu to i64
  %i.adw = getelementptr inbounds i8, ptr %.0, i64 %i.adv
  br label %bb.d

bb.aj:                                            ; preds = %._crit_edge
  %i.adx = load i32, ptr %i.bq, align 4, !tbaa !119
  %i.ady = mul i32 %i.adx, 118
  %i.adz = tail call i32 @ff_encode_add_stats_side_data(ptr noundef %1, i32 noundef %i.ady, ptr noundef null, i32 noundef 0, i32 noundef 1) #12 ; 0 uses
  store i32 1, ptr %3, align 4, !tbaa !105
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %bb.aj, %dnxhd_encode_rdo.exit
  %.065 = phi i32 [ 0, %bb.aj ], [ -22, %dnxhd_encode_rdo.exit ], [ %i.g, %bb.a ]
  ret i32 %.065
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @dnxhd_encode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 13360
  tail call void @av_freep(ptr noundef nonnull %i.c) #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 13368
  tail call void @av_freep(ptr noundef nonnull %i.d) #12
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 13392
  tail call void @av_freep(ptr noundef nonnull %i.e) #12
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 13400
  tail call void @av_freep(ptr noundef nonnull %i.f) #12
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 13424
  tail call void @av_freep(ptr noundef nonnull %i.g) #12
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 13432
  tail call void @av_freep(ptr noundef nonnull %i.h) #12
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 13456
  tail call void @av_freep(ptr noundef nonnull %i.i) #12
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 13440
  tail call void @av_freep(ptr noundef nonnull %i.j) #12
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 13448
  tail call void @av_freep(ptr noundef nonnull %i.k) #12
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 9904
  tail call void @av_freep(ptr noundef nonnull %i.l) #12
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 9912
  tail call void @av_freep(ptr noundef nonnull %i.m) #12
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 13296
  tail call void @av_freep(ptr noundef nonnull %i.n) #12
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 13304
  tail call void @av_freep(ptr noundef nonnull %i.o) #12
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 13320
  tail call void @av_freep(ptr noundef nonnull %i.p) #12
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 13312
  tail call void @av_freep(ptr noundef nonnull %i.q) #12
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 9920
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 9928
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !99
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !97
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %.preheader ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.x) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = load i32, ptr %i.u, align 8, !tbaa !97
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %.lr.ph, label %.loopexit, !llvm.loop !156

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @ff_dnxhdenc_init(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #2 {
bb.a:
  ret void
}

declare ptr @av_default_item_name(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @ff_dnxhd_find_cid(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_dnxhd_print_profiles(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ff_dnxhd_get_cid_table(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare void @ff_blockdsp_init(ptr noundef) local_unnamed_addr #3

declare hidden void @ff_fdctdsp_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_mpv_idct_init(ptr noundef) local_unnamed_addr #3

declare void @ff_mpegvideoencdsp_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_pixblockdsp_init(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_dct_encode_init(ptr noundef) local_unnamed_addr #3

declare void @ff_videodsp_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 2147483647) i32 @dnxhd_10bit_dct_quantize_444(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !157 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4480
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !158
  tail call void %i.d(ptr noundef %1) #12
  %i.e = load i16, ptr %1, align 2, !tbaa !159
  %i.f = sext i16 %i.e to i32
  %i.g = add nsw i32 %i.f, 2
  %i.h = lshr i32 %i.g, 2
  %i.i = trunc i32 %i.h to i16
  store i16 %i.i, ptr %1, align 2, !tbaa !159
  %i.j = icmp slt i32 %2, 4
  %i.k = sext i32 %3 to i64
  %. = select i1 %i.j, i64 6256, i64 6264
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %.sink = load ptr, ptr %i.l, align 8, !tbaa !160
  %i.m = getelementptr inbounds [256 x i8], ptr %.sink, i64 %i.k ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 6120
  %i.o = load i32, ptr %i.n, align 8, !tbaa !161
  %i.p = shl nsw i32 %i.o, 8                      ; 3 uses
  %i.q = sub i32 65535, %i.p                      ; 4 uses
  %i.r = shl i32 %i.q, 1                          ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %indvars.iv = phi i64 [ 63, %bb.a ], [ %indvars.iv.next.1, %bb.e ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.t = load i8, ptr %i.s, align 1, !tbaa !115
  %i.u = zext i8 %i.t to i64                      ; 2 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.u ; 2 uses
  %i.w = load i16, ptr %i.v, align 2, !tbaa !159
  %i.x = sext i16 %i.w to i32
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.u
  %i.z = load i32, ptr %i.y, align 4, !tbaa !105
  %i.aa = mul nsw i32 %i.z, %i.x
  %i.ab = add i32 %i.aa, %i.q
  %i.ac = icmp ugt i32 %i.ab, %i.r
  br i1 %i.ac, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 0, ptr %i.v, align 2, !tbaa !159
  %i.ad = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ad, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !115
  %i.ag = zext i8 %i.af to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ag ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !159
  %i.aj = sext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ag
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !105
  %i.am = mul nsw i32 %i.al, %i.aj
  %i.an = add i32 %i.am, %i.q
  %i.ao = icmp ugt i32 %i.an, %i.r
  br i1 %i.ao, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i16 0, ptr %i.ah, align 2, !tbaa !159
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  br label %bb.b

bb.f:                                             ; preds = %bb.d, %bb.b
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %bb.b ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %5 = trunc nuw nsw i64 %indvars.iv.lcssa to i32 ; 2 uses
  %.not72 = icmp slt i64 %indvars.iv.lcssa, 1
  br i1 %.not72, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %6 = add nuw i64 %indvars.iv.lcssa, 1
  %wide.trip.count = and i64 %6, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %indvars.iv.a = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.a, %bb.l ] ; 2 uses
  %.074 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1, %bb.l ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.a
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !115
  %i.ar = zext i8 %i.aq to i64                    ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ar ; 3 uses
  %i.at = load i16, ptr %i.as, align 2, !tbaa !159
  %i.au = sext i16 %i.at to i32
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ar
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !105
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 4 uses
  %i.ay = add i32 %i.ax, %i.q
  %i.az = icmp ugt i32 %i.ay, %i.r
  br i1 %i.az, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.lr.ph
  %i.ba = icmp sgt i32 %i.ax, 0
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bb = add nsw i32 %i.ax, %i.p
  %i.bc = ashr i32 %i.bb, 16                      ; 2 uses
  %i.bd = trunc nsw i32 %i.bc to i16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.be = sub nsw i32 %i.p, %i.ax
  %i.bf = ashr i32 %i.be, 16                      ; 2 uses
  %i.bg = trunc nsw i32 %i.bf to i16
  %i.bh = sub i16 0, %i.bg
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %storemerge = phi i16 [ %i.bh, %bb.i ], [ %i.bd, %bb.h ]
  %.065 = phi i32 [ %i.bf, %bb.i ], [ %i.bc, %bb.h ]
  store i16 %storemerge, ptr %i.as, align 2, !tbaa !159
  %i.bi = or i32 %.065, %.074
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph
  store i16 0, ptr %i.as, align 2, !tbaa !159
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.1 = phi i32 [ %i.bi, %bb.j ], [ %.074, %bb.k ] ; 2 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !162

._crit_edge:                                      ; preds = %bb.c, %bb.l, %bb.f
  %.06479 = phi i32 [ %5, %bb.f ], [ %5, %bb.l ], [ 0, %bb.c ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.f ], [ %.1, %bb.l ], [ 0, %bb.c ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 6132
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !163
  %i.bl = icmp slt i32 %i.bk, %.0.lcssa
  %i.bm = zext i1 %i.bl to i32
  store i32 %i.bm, ptr %4, align 4, !tbaa !105
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !164
  %.not70 = icmp eq i32 %i.bo, 0
  br i1 %.not70, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1816
  tail call void @ff_block_permute(ptr noundef nonnull %1, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.b, i32 noundef %.06479) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  ret i32 %.06479
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @dnxhd_10bit_get_pixels_8x4_sym(ptr noalias nofree noundef writeonly captures(none) initializes((0, 128)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds i8, ptr %1, i64 %2 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = shl nsw i64 %2, 1
  %i.g = getelementptr inbounds i8, ptr %1, i64 %i.f ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.e, ptr noundef nonnull align 1 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.h, ptr noundef nonnull align 1 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = mul nsw i64 %2, 3
  %i.k = getelementptr inbounds i8, ptr %1, i64 %i.j ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.i, ptr noundef nonnull align 1 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.l, ptr noundef nonnull align 1 dereferenceable(16) %i.k, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @dnxhd_10bit_dct_quantize(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree readnone captures(none) %4) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !157 ; 2 uses
  %i.c = icmp slt i32 %2, 4
  %i.d = sext i32 %3 to i64
  %. = select i1 %i.c, i64 6256, i64 6264
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %.sink = load ptr, ptr %i.e, align 8, !tbaa !160
  %i.f = getelementptr inbounds [256 x i8], ptr %.sink, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4480
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !158
  tail call void %i.h(ptr noundef %1) #12
  %i.i = load i16, ptr %1, align 2, !tbaa !159
  %i.j = sext i16 %i.i to i32
  %i.k = add nsw i32 %i.j, 2
  %i.l = lshr i32 %i.k, 2
  %i.m = trunc i32 %i.l to i16
  store i16 %i.m, ptr %1, align 2, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.03537 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !115
  %i.p = zext i8 %i.o to i64                      ; 2 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.p ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !159
  %i.s = sext i16 %i.r to i32                     ; 2 uses
  %i.t = ashr i32 %i.s, 15                        ; 4 uses
  %i.u = xor i32 %i.t, %i.s
  %i.v = sub nsw i32 %i.u, %i.t
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.p
  %i.x = load i32, ptr %i.w, align 4, !tbaa !105
  %i.y = mul nsw i32 %i.v, %i.x
  %i.z = ashr i32 %i.y, 18                        ; 2 uses
  %i.aa = xor i32 %i.z, %i.t
  %i.ab = sub nsw i32 %i.aa, %i.t
  %i.ac = trunc nsw i32 %i.ab to i16
  store i16 %i.ac, ptr %i.q, align 2, !tbaa !159
  %.not36 = icmp eq i32 %i.z, 0
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %.not36, i32 %.03537, i32 %i.ad ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !165

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !164
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1816
  tail call void @ff_block_permute(ptr noundef nonnull %1, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.b, i32 noundef %spec.select) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @dnxhd_8bit_get_pixels_8x4_sym(ptr noalias nofree noundef captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #7 {
bb.a:
  %i.a = load <8 x i8>, ptr %1, align 1, !tbaa !115
  %i.b = zext <8 x i8> %i.a to <8 x i16>
  store <8 x i16> %i.b, ptr %0, align 2, !tbaa !159
  %i.c = getelementptr inbounds i8, ptr %1, i64 %2 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load <8 x i8>, ptr %i.c, align 1, !tbaa !115
  %i.f = zext <8 x i8> %i.e to <8 x i16>
  store <8 x i16> %i.f, ptr %i.d, align 2, !tbaa !159
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %2 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load <8 x i8>, ptr %i.g, align 1, !tbaa !115
  %i.j = zext <8 x i8> %i.i to <8 x i16>
  store <8 x i16> %i.j, ptr %i.h, align 2, !tbaa !159
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 %2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load <8 x i8>, ptr %i.k, align 1, !tbaa !115
  %i.n = zext <8 x i8> %i.m to <8 x i16>
  store <8 x i16> %i.n, ptr %i.l, align 2, !tbaa !159
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.o, ptr noundef nonnull align 2 dereferenceable(16) %i.l, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.p, ptr noundef nonnull align 2 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.r, ptr noundef nonnull align 2 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.t, ptr noundef nonnull align 2 dereferenceable(16) %0, i64 16, i1 false)
  ret void
}

declare i32 @ff_dnxhd_get_hr_frame_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc range(i32 -12, 1) i32 @dnxhd_init_qmat(ptr noundef initializes((13304, 13312)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i16], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  store i16 1, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9888 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !71  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !166
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !167
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 8 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 440
  %i.l = load i32, ptr %i.k, align 8, !tbaa !98
  %i.m = add nsw i32 %i.l, 1
  %i.n = sext i32 %i.m to i64
  %i.o = tail call noalias ptr @av_calloc(i64 noundef %i.n, i64 noundef 256) #12 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 13304 ; 4 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !168
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !72
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 440
  %i.s = load i32, ptr %i.r, align 8, !tbaa !98
  %i.t = add nsw i32 %i.s, 1
  %i.u = sext i32 %i.t to i64
  %i.v = tail call noalias ptr @av_calloc(i64 noundef %i.u, i64 noundef 256) #12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 13296 ; 4 uses
  store ptr %i.v, ptr %i.w, align 16, !tbaa !169
  %.not90 = icmp eq ptr %i.v, null
  br i1 %.not90, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !72
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 440
  %i.z = load i32, ptr %i.y, align 8, !tbaa !98
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = tail call noalias ptr @av_calloc(i64 noundef %i.ab, i64 noundef 256) #12 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 13312 ; 4 uses
  store ptr %i.ac, ptr %i.ad, align 16, !tbaa !170
  %.not91 = icmp eq ptr %i.ac, null
  br i1 %.not91, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !72
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 440
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !98
end_hunk_0
