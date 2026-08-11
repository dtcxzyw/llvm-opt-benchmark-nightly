inline.NumInlined: 56
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumUnrolled: 103
begin_hunk_0_@roq_encode_frame:bb.a
  %i.div = getelementptr inbounds [6 x i8], ptr %i.tt, i64 %i.diu
  call void @ff_apply_vector_2x2(ptr noundef %i.c, i32 noundef %i.dir, i32 noundef %i.dfu, ptr noundef nonnull %i.div) #9
  %i.diw = add nsw i32 %i.dfu, 2                  ; 2 uses
  %i.dix = getelementptr inbounds nuw i8, ptr %i.din, i64 8
  %i.diy = load i32, ptr %i.dix, align 4, !tbaa !69
  %i.diz = sext i32 %i.diy to i64
  %i.dja = getelementptr inbounds [6 x i8], ptr %i.tt, i64 %i.diz
  call void @ff_apply_vector_2x2(ptr noundef %i.c, i32 noundef %i.dfr, i32 noundef %i.diw, ptr noundef nonnull %i.dja) #9
  %i.djb = getelementptr inbounds nuw i8, ptr %i.din, i64 12
  %i.djc = load i32, ptr %i.djb, align 4, !tbaa !69
  %i.djd = sext i32 %i.djc to i64
  %i.dje = getelementptr inbounds [6 x i8], ptr %i.tt, i64 %i.djd
  call void @ff_apply_vector_2x2(ptr noundef %i.c, i32 noundef %i.dir, i32 noundef %i.diw, ptr noundef nonnull %i.dje) #9
  br label %.loopexit.i81.i

.loopexit.i81.i:                                  ; preds = %bb.be, %bb.bd, %.preheader116.i.i, %bb.bc
  %i.djf = load i32, ptr %i.dfw, align 4, !tbaa !90
  %i.djg = and i32 %i.djf, 3
  %i.djh = load i32, ptr %i.czs, align 4, !tbaa !104 ; 2 uses
  %i.dji = sub nsw i32 14, %i.djh
  %i.djj = shl i32 %i.djg, %i.dji
  %i.djk = load i32, ptr %4, align 8, !tbaa !102
  %i.djl = or i32 %i.djj, %i.djk                  ; 2 uses
  store i32 %i.djl, ptr %4, align 8, !tbaa !102
  %i.djm = add nsw i32 %i.djh, 2                  ; 2 uses
  store i32 %i.djm, ptr %i.czs, align 4, !tbaa !104
  %i.djn = icmp eq i32 %i.djm, 16
  br i1 %i.djn, label %bb.bf, label %write_typecode.exit114.i.i

bb.bf:                                            ; preds = %.loopexit.i81.i
  %i.djo = load ptr, ptr %i.czv, align 8, !tbaa !106 ; 3 uses
  %i.djp = trunc i32 %i.djl to i16
  %i.djq = load ptr, ptr %i.djo, align 8, !tbaa !65
  store i16 %i.djp, ptr %i.djq, align 1, !tbaa !66
  %i.djr = load ptr, ptr %i.djo, align 8, !tbaa !65
  %i.djs = getelementptr inbounds nuw i8, ptr %i.djr, i64 2
  store ptr %i.djs, ptr %i.djo, align 8, !tbaa !65
  %i.djt = load ptr, ptr %i.czv, align 8, !tbaa !106 ; 3 uses
  %i.dju = load ptr, ptr %i.czu, align 8, !tbaa !105
  %i.djv = ptrtoint ptr %i.dju to i64
  %i.djw = sub i64 %i.djv, %i.dan
  %i.djx = load ptr, ptr %i.djt, align 8, !tbaa !65
  %i.djy = and i64 %i.djw, 4294967295             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.djx, ptr nonnull align 8 %i.czt, i64 %i.djy, i1 false)
  %i.djz = load ptr, ptr %i.djt, align 8, !tbaa !65
  %i.dka = getelementptr inbounds nuw i8, ptr %i.djz, i64 %i.djy
  store ptr %i.dka, ptr %i.djt, align 8, !tbaa !65
  store i32 0, ptr %i.czs, align 4, !tbaa !104
  store i32 0, ptr %4, align 8, !tbaa !102
  store ptr %i.czt, ptr %i.czu, align 8, !tbaa !105
  br label %write_typecode.exit114.i.i

write_typecode.exit114.i.i:                       ; preds = %bb.bf, %.loopexit.i81.i
  %indvars.iv.next.i82.i = add nuw nsw i64 %indvars.iv.i80.i, 1 ; 2 uses
  %exitcond.not.i83.i = icmp eq i64 %indvars.iv.next.i82.i, 4
  br i1 %exitcond.not.i83.i, label %write_typecode.exit.i.i, label %bb.bc, !llvm.loop !108

write_typecode.exit.i.i:                          ; preds = %write_typecode.exit114.i.i, %write_typecode.exit110.i.i, %write_typecode.exit109.i.i, %bb.av, %bb.au, %bb.at
  %indvars.iv.next125.i.i = add nuw nsw i64 %indvars.iv124.i.i, 1 ; 2 uses
  %exitcond127.not.i.i = icmp eq i64 %indvars.iv.next125.i.i, %wide.trip.count.i.i
  br i1 %exitcond127.not.i.i, label %.preheader.i77.i, label %bb.at, !llvm.loop !109

bb.bg:                                            ; preds = %bb.bg, %.lr.ph121.i.i
  %i.dkb = phi i32 [ %i.dao, %.lr.ph121.i.i ], [ %i.dkc, %bb.bg ]
  %i.dkc = add nsw i32 %i.dkb, 2                  ; 2 uses
  switch i32 %i.dkc, label %bb.bg [
    i32 16, label %write_typecode.exit115.thread.i.i
    i32 0, label %.loopexit
  ]

write_typecode.exit115.thread.i.i:                ; preds = %bb.bg
  %i.dkd = load ptr, ptr %i.czv, align 8, !tbaa !106 ; 3 uses
  %i.dke = trunc i32 %.pre.i.i to i16
  %i.dkf = load ptr, ptr %i.dkd, align 8, !tbaa !65
  store i16 %i.dke, ptr %i.dkf, align 1, !tbaa !66
  %i.dkg = load ptr, ptr %i.dkd, align 8, !tbaa !65
  %i.dkh = getelementptr inbounds nuw i8, ptr %i.dkg, i64 2
  store ptr %i.dkh, ptr %i.dkd, align 8, !tbaa !65
  %i.dki = load ptr, ptr %i.czv, align 8, !tbaa !106 ; 3 uses
  %i.dkj = load ptr, ptr %i.czu, align 8, !tbaa !105
  %i.dkk = ptrtoint ptr %i.dkj to i64
  %i.dkl = sub i64 %i.dkk, %i.dap
  %i.dkm = load ptr, ptr %i.dki, align 8, !tbaa !65
  %i.dkn = and i64 %i.dkl, 4294967295             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dkm, ptr nonnull align 8 %i.czt, i64 %i.dkn, i1 false)
  %i.dko = load ptr, ptr %i.dki, align 8, !tbaa !65
  %i.dkp = getelementptr inbounds nuw i8, ptr %i.dko, i64 %i.dkn
  store ptr %i.dkp, ptr %i.dki, align 8, !tbaa !65
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bg, %write_typecode.exit115.thread.i.i, %.preheader.i77.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.dkq = load <2 x ptr>, ptr %i.afo, align 8, !tbaa !110
  %i.dkr = shufflevector <2 x ptr> %i.dkq, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.dkr, ptr %i.afo, align 8, !tbaa !110
  %i.dks = getelementptr inbounds nuw i8, ptr %i.c, i64 5952 ; 2 uses
  %i.dkt = load <2 x ptr>, ptr %i.dks, align 8, !tbaa !111
  %i.dku = shufflevector <2 x ptr> %i.dkt, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.dku, ptr %i.dks, align 8, !tbaa !111
  %i.dkv = load <2 x ptr>, ptr %i.afn, align 8, !tbaa !111
  %i.dkw = shufflevector <2 x ptr> %i.dkv, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.dkw, ptr %i.afn, align 8, !tbaa !111
  %i.dkx = load i32, ptr %i.y, align 8, !tbaa !32 ; 2 uses
  %i.dky = add i32 %i.dkx, 1
  store i32 %i.dky, ptr %i.y, align 8, !tbaa !32
  %i.dkz = load ptr, ptr %i.x, align 8, !tbaa !63
  %i.dla = load ptr, ptr %i.v, align 8, !tbaa !61
  %i.dlb = ptrtoint ptr %i.dkz to i64
  %i.dlc = ptrtoint ptr %i.dla to i64
  %i.dld = sub i64 %i.dlb, %i.dlc
  %i.dle = trunc i64 %i.dld to i32
  %i.dlf = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.dle, ptr %i.dlf, align 8, !tbaa !112
  %i.dlg = icmp eq i32 %i.dkx, 0
  br i1 %i.dlg, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.loopexit
  %i.dlh = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.dli = load i32, ptr %i.dlh, align 8, !tbaa !113
  %i.dlj = or i32 %i.dli, 1
  store i32 %i.dlj, ptr %i.dlh, align 8, !tbaa !113
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.loopexit
  store i32 1, ptr %3, align 4, !tbaa !69
  br label %roq_encode_video.exit.thread

roq_encode_video.exit.thread:                     ; preds = %create_clusters.exit.i.i, %generate_codebook.exit.i.i, %bb.ae, %bb.e, %bb.f, %bb.a, %bb.bi
  %.036 = phi i32 [ 0, %bb.bi ], [ %i.t, %bb.a ], [ %i.al, %bb.f ], [ %i.ah, %bb.e ], [ %i.px, %create_clusters.exit.i.i ], [ %i.tv, %generate_codebook.exit.i.i ], [ -22, %bb.ae ]
  ret i32 %.036
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @roq_encode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @av_frame_free(ptr noundef nonnull %i.d) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 107424
  tail call void @av_freep(ptr noundef nonnull %i.e) #9
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 107432
  tail call void @av_freep(ptr noundef nonnull %i.f) #9
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 5952
  tail call void @av_freep(ptr noundef nonnull %i.g) #9
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 5960
  tail call void @av_freep(ptr noundef nonnull %i.h) #9
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 5968
  tail call void @av_freep(ptr noundef nonnull %i.i) #9
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 5976
  tail call void @av_freep(ptr noundef nonnull %i.j) #9
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 5672
  tail call void @avpriv_elbg_free(ptr noundef nonnull %i.k) #9
  ret i32 0
}

declare ptr @av_default_item_name(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @av_lfg_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @av_frame_alloc() local_unnamed_addr #2

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 1) i32 @create_cel_evals(ptr nofree noundef captures(none) initializes((107424, 107432)) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !44
  %i.e = mul nsw i32 %i.d, %i.b
  %i.f = sdiv i32 %i.e, 64
  %i.g = sext i32 %i.f to i64
  %i.h = tail call ptr @av_malloc_array(i64 noundef %i.g, i64 noundef 248) #9 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 107424
  store ptr %i.h, ptr %i.i, align 8, !tbaa !84
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.loopexit, label %.preheader26

.preheader26:                                     ; preds = %bb.a
  %i.j = load i32, ptr %i.c, align 4, !tbaa !44   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.preheader25.lr.ph, label %.loopexit

.preheader25.lr.ph:                               ; preds = %.preheader26
  %i.l = load i32, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.preheader25, label %.loopexit

.preheader25:                                     ; preds = %.preheader25.lr.ph, %._crit_edge
  %.02232 = phi i32 [ %indvars.iv.next34.3, %._crit_edge ], [ 0, %.preheader25.lr.ph ]
  %.02331 = phi i32 [ %i.ad, %._crit_edge ], [ 0, %.preheader25.lr.ph ] ; 4 uses
  %i.n = or disjoint i32 %.02331, 8               ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader25, %.preheader
  %indvars.iv = phi i32 [ %.02232, %.preheader25 ], [ %indvars.iv.next, %.preheader ] ; 3 uses
  %.02130 = phi i32 [ 0, %.preheader25 ], [ %i.ab, %.preheader ] ; 4 uses
  %1 = sext i32 %indvars.iv to i64                ; 4 uses
  %i.o = getelementptr inbounds [248 x i8], ptr %i.h, i64 %1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  store i32 %.02130, ptr %i.p, align 4, !tbaa !88
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 244
  store i32 %.02331, ptr %i.q, align 4, !tbaa !85
  %i.r = or disjoint i32 %.02130, 8               ; 2 uses
  %i.s = getelementptr [248 x i8], ptr %i.h, i64 %1 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 488
  store i32 %i.r, ptr %i.t, align 4, !tbaa !88
  %i.u = getelementptr i8, ptr %i.s, i64 492
  store i32 %.02331, ptr %i.u, align 4, !tbaa !85
  %i.v = getelementptr [248 x i8], ptr %i.h, i64 %1 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 736
  store i32 %.02130, ptr %i.w, align 4, !tbaa !88
  %i.x = getelementptr i8, ptr %i.v, i64 740
  store i32 %i.n, ptr %i.x, align 4, !tbaa !85
  %i.y = getelementptr [248 x i8], ptr %i.h, i64 %1 ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 984
  store i32 %i.r, ptr %i.z, align 4, !tbaa !88
  %i.aa = getelementptr i8, ptr %i.y, i64 988
  store i32 %i.n, ptr %i.aa, align 4, !tbaa !85
  %i.ab = add nuw nsw i32 %.02130, 16             ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.l
  %indvars.iv.next = add i32 %indvars.iv, 4
  br i1 %i.ac, label %.preheader, label %._crit_edge, !llvm.loop !114

._crit_edge:                                      ; preds = %.preheader
  %indvars.iv.next34.3 = add i32 %indvars.iv, 4
  %i.ad = add nuw nsw i32 %.02331, 16             ; 2 uses
  %i.ae = icmp slt i32 %i.ad, %i.j
  br i1 %i.ae, label %.preheader25, label %.loopexit, !llvm.loop !115

.loopexit:                                        ; preds = %._crit_edge, %.preheader26, %.preheader25.lr.ph, %bb.a
  %.024 = phi i32 [ -12, %bb.a ], [ 0, %.preheader25.lr.ph ], [ 0, %.preheader26 ], [ 0, %._crit_edge ]
  ret i32 %.024
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @ff_alloc_packet(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ff_encode_alloc_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @motion_search(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 4, 9) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %i.c = sdiv i32 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 13 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !44   ; 3 uses
  %i.f = mul nsw i32 %i.e, %i.c
  %i.g = sdiv i32 %i.f, %1                        ; 3 uses
  %i.h = icmp eq i32 %1, 4                        ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5968 ; 2 uses
  %.0204.in.v = select i1 %i.h, i64 5960, i64 5976
  %.0204.in = getelementptr inbounds nuw i8, ptr %0, i64 %.0204.in.v
  %.0203.in = select i1 %i.h, ptr %i.i, ptr %i.j
  %.0203 = load ptr, ptr %.0203.in, align 8, !tbaa !111 ; 5 uses
  %.0204 = load ptr, ptr %.0204.in, align 8, !tbaa !111 ; 3 uses
  %i.k = icmp sgt i32 %i.e, 0
  br i1 %i.k, label %.preheader641.lr.ph, label %._crit_edge717

.preheader641.lr.ph:                              ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5992 ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 32 uses
  %i.n = icmp sgt i32 %i.b, 0
  br i1 %i.n, label %.preheader641.preheader, label %._crit_edge717

.preheader641.preheader:                          ; preds = %.preheader641.lr.ph
  %.not.i.i.3 = icmp eq i32 %1, 4
  %.not.i.i.4 = icmp eq i32 %1, 5
  %.not.i.i.5 = icmp eq i32 %1, 6
  %.not.i.i.6 = icmp eq i32 %1, 7
  %.not.i.1.i.3 = icmp eq i32 %1, 4
  %.not.i.1.i.4 = icmp eq i32 %1, 5
  %.not.i.1.i.5 = icmp eq i32 %1, 6
  %.not.i.1.i.6 = icmp eq i32 %1, 7
  %.not.i.2.i.3 = icmp eq i32 %1, 4
  %.not.i.2.i.4 = icmp eq i32 %1, 5
  %.not.i.2.i.5 = icmp eq i32 %1, 6
  %.not.i.2.i.6 = icmp eq i32 %1, 7
  %.not.i.i337.3 = icmp eq i32 %1, 4
  %.not.i.i337.4 = icmp eq i32 %1, 5
  %.not.i.i337.5 = icmp eq i32 %1, 6
  %.not.i.i337.6 = icmp eq i32 %1, 7
  %.not.i.1.i351.3 = icmp eq i32 %1, 4
  %.not.i.1.i351.4 = icmp eq i32 %1, 5
  %.not.i.1.i351.5 = icmp eq i32 %1, 6
  %.not.i.1.i351.6 = icmp eq i32 %1, 7
  %.not.i.2.i365.3 = icmp eq i32 %1, 4
  %.not.i.2.i365.4 = icmp eq i32 %1, 5
  %.not.i.2.i365.5 = icmp eq i32 %1, 6
  %.not.i.2.i365.6 = icmp eq i32 %1, 7
  %.not.i.i381.3 = icmp eq i32 %1, 4
  %.not.i.i381.4 = icmp eq i32 %1, 5
  %.not.i.i381.5 = icmp eq i32 %1, 6
  %.not.i.i381.6 = icmp eq i32 %1, 7
  %.not.i.1.i395.3 = icmp eq i32 %1, 4
  %.not.i.1.i395.4 = icmp eq i32 %1, 5
  %.not.i.1.i395.5 = icmp eq i32 %1, 6
  %.not.i.1.i395.6 = icmp eq i32 %1, 7
  %.not.i.2.i409.3 = icmp eq i32 %1, 4
  %.not.i.2.i409.4 = icmp eq i32 %1, 5
  %.not.i.2.i409.5 = icmp eq i32 %1, 6
  %.not.i.2.i409.6 = icmp eq i32 %1, 7
  %.not.i.i425.3 = icmp eq i32 %1, 4
  %.not.i.i425.4 = icmp eq i32 %1, 5
  %.not.i.i425.5 = icmp eq i32 %1, 6
  %.not.i.i425.6 = icmp eq i32 %1, 7
  %.not.i.1.i439.3 = icmp eq i32 %1, 4
  %.not.i.1.i439.4 = icmp eq i32 %1, 5
  %.not.i.1.i439.5 = icmp eq i32 %1, 6
  %.not.i.1.i439.6 = icmp eq i32 %1, 7
  %.not.i.2.i453.3 = icmp eq i32 %1, 4
  %.not.i.2.i453.4 = icmp eq i32 %1, 5
  %.not.i.2.i453.5 = icmp eq i32 %1, 6
  %.not.i.2.i453.6 = icmp eq i32 %1, 7
  %.not.i.i469.3 = icmp eq i32 %1, 4
  %.not.i.i469.4 = icmp eq i32 %1, 5
  %.not.i.i469.5 = icmp eq i32 %1, 6
  %.not.i.i469.6 = icmp eq i32 %1, 7
  %.not.i.1.i483.3 = icmp eq i32 %1, 4
  %.not.i.1.i483.4 = icmp eq i32 %1, 5
  %.not.i.1.i483.5 = icmp eq i32 %1, 6
  %.not.i.1.i483.6 = icmp eq i32 %1, 7
  %.not.i.2.i497.3 = icmp eq i32 %1, 4
  %.not.i.2.i497.4 = icmp eq i32 %1, 5
  %.not.i.2.i497.5 = icmp eq i32 %1, 6
  %.not.i.2.i497.6 = icmp eq i32 %1, 7
  %.not.i.i513.3 = icmp eq i32 %1, 4
  %.not.i.i513.4 = icmp eq i32 %1, 5
  %.not.i.i513.5 = icmp eq i32 %1, 6
  %.not.i.i513.6 = icmp eq i32 %1, 7
  %.not.i.1.i527.3 = icmp eq i32 %1, 4
  %.not.i.1.i527.4 = icmp eq i32 %1, 5
  %.not.i.1.i527.5 = icmp eq i32 %1, 6
  %.not.i.1.i527.6 = icmp eq i32 %1, 7
  %.not.i.2.i541.3 = icmp eq i32 %1, 4
  %.not.i.2.i541.4 = icmp eq i32 %1, 5
  %.not.i.2.i541.5 = icmp eq i32 %1, 6
  %.not.i.2.i541.6 = icmp eq i32 %1, 7
  %.not.i.i513.1.3 = icmp eq i32 %1, 4
  %.not.i.i513.1.4 = icmp eq i32 %1, 5
  %.not.i.i513.1.5 = icmp eq i32 %1, 6
  %.not.i.i513.1.6 = icmp eq i32 %1, 7
  %.not.i.1.i527.1.3 = icmp eq i32 %1, 4
  %.not.i.1.i527.1.4 = icmp eq i32 %1, 5
  %.not.i.1.i527.1.5 = icmp eq i32 %1, 6
  %.not.i.1.i527.1.6 = icmp eq i32 %1, 7
  %.not.i.2.i541.1.3 = icmp eq i32 %1, 4
  %.not.i.2.i541.1.4 = icmp eq i32 %1, 5
  %.not.i.2.i541.1.5 = icmp eq i32 %1, 6
  %.not.i.2.i541.1.6 = icmp eq i32 %1, 7
  %.not.i.i513.2.3 = icmp eq i32 %1, 4
  %.not.i.i513.2.4 = icmp eq i32 %1, 5
  %.not.i.i513.2.5 = icmp eq i32 %1, 6
  %.not.i.i513.2.6 = icmp eq i32 %1, 7
  %.not.i.1.i527.2.3 = icmp eq i32 %1, 4
  %.not.i.1.i527.2.4 = icmp eq i32 %1, 5
  %.not.i.1.i527.2.5 = icmp eq i32 %1, 6
  %.not.i.1.i527.2.6 = icmp eq i32 %1, 7
  %.not.i.2.i541.2.3 = icmp eq i32 %1, 4
  %.not.i.2.i541.2.4 = icmp eq i32 %1, 5
  %.not.i.2.i541.2.5 = icmp eq i32 %1, 6
  %.not.i.2.i541.2.6 = icmp eq i32 %1, 7
  %.not.i.i557.3 = icmp eq i32 %1, 4
  %.not.i.i557.4 = icmp eq i32 %1, 5
  %.not.i.i557.5 = icmp eq i32 %1, 6
  %.not.i.i557.6 = icmp eq i32 %1, 7
  %.not.i.1.i571.3 = icmp eq i32 %1, 4
  %.not.i.1.i571.4 = icmp eq i32 %1, 5
  %.not.i.1.i571.5 = icmp eq i32 %1, 6
  %.not.i.1.i571.6 = icmp eq i32 %1, 7
  %.not.i.2.i585.3 = icmp eq i32 %1, 4
  %.not.i.2.i585.4 = icmp eq i32 %1, 5
  %.not.i.2.i585.5 = icmp eq i32 %1, 6
  %.not.i.2.i585.6 = icmp eq i32 %1, 7
  %.not.i.i601.3 = icmp eq i32 %1, 4
  %.not.i.i601.4 = icmp eq i32 %1, 5
  %.not.i.i601.5 = icmp eq i32 %1, 6
  %.not.i.i601.6 = icmp eq i32 %1, 7
  %.not.i.1.i615.3 = icmp eq i32 %1, 4
  %.not.i.1.i615.4 = icmp eq i32 %1, 5
  %.not.i.1.i615.5 = icmp eq i32 %1, 6
  %.not.i.1.i615.6 = icmp eq i32 %1, 7
  %.not.i.2.i629.3 = icmp eq i32 %1, 4
  %.not.i.2.i629.4 = icmp eq i32 %1, 5
  %.not.i.2.i629.5 = icmp eq i32 %1, 6
  %.not.i.2.i629.6 = icmp eq i32 %1, 7
  br label %.preheader641

.preheader641:                                    ; preds = %.preheader641.preheader, %._crit_edge715
  %i.o = phi i32 [ %i.dfh, %._crit_edge715 ], [ %i.e, %.preheader641.preheader ]
  %i.p = phi i32 [ %i.dfi, %._crit_edge715 ], [ %i.b, %.preheader641.preheader ] ; 3 uses
  %indvars.iv778 = phi i64 [ %indvars.iv.next779, %._crit_edge715 ], [ 0, %.preheader641.preheader ] ; 37 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge715

.lr.ph:                                           ; preds = %.preheader641
  %i.r = trunc nuw nsw i64 %indvars.iv778 to i32  ; 11 uses
  %i.s = lshr i32 %i.r, 3
  %i.t = udiv i32 %i.r, %1                        ; 2 uses
  %i.u = add nuw nsw i32 %i.t, 1
  %.not = icmp eq i64 %indvars.iv778, 0
  %i.v = add nuw nsw i64 %indvars.iv778, 1        ; 3 uses
  %i.w = add nuw nsw i64 %indvars.iv778, 2        ; 3 uses
  %i.x = add nuw nsw i64 %indvars.iv778, 3        ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge
  %indvars.iv775 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next776, %._crit_edge ] ; 41 uses
  %i.y = phi i32 [ %i.p, %.lr.ph ], [ %i.dfe, %._crit_edge ] ; 6 uses
  %i.z = sub nsw i32 %i.y, %1                     ; 10 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = icmp samesign ugt i64 %indvars.iv775, %i.aa
  br i1 %i.ab, label %eval_motion_dist.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = load i32, ptr %i.d, align 4, !tbaa !44
  %i.ad = sub nsw i32 %i.ac, %1
  %i.ae = zext i32 %i.ad to i64
end_hunk_0
