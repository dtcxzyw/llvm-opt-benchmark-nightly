Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/svq1enc?download=true
inline.NumInlined: 34
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 48
begin_hunk_0_@svq1_encode_end:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.e, label %bb.d, !llvm.loop !177

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 10656
  tail call void @av_frame_free(ptr noundef nonnull %i.y) #8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 10664
  tail call void @av_frame_free(ptr noundef nonnull %i.z) #8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 4464
  tail call void @av_frame_free(ptr noundef nonnull %i.aa) #8
  ret i32 0
}

declare ptr @av_default_item_name(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @ff_hpeldsp_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_me_cmp_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_me_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_mpegvideoencdsp_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @av_frame_alloc() local_unnamed_addr #2

declare i32 @ff_encode_alloc_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #2

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #2

declare ptr @ff_h263_get_mv_penalty() local_unnamed_addr #2

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc range(i32 -12, 1) i32 @write_ident(ptr nofree noundef writeonly captures(none) initializes((72, 80)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = add nsw i32 %i.b, 8                      ; 3 uses
  %i.d = sext i32 %i.c to i64
  %i.e = tail call noalias ptr @av_malloc(i64 noundef %i.d) #8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.e, ptr %i.f, align 8, !tbaa !178
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.c)
  store i32 %i.g, ptr %i.e, align 1, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 827414099, ptr %i.h, align 1, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %sext = shl i64 %i.a, 32
  %i.j = ashr exact i64 %sext, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.j, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.c, ptr %i.k, align 8, !tbaa !179
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -12, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @ssd_int8_vs_int16_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #4 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, 9223372036854775800        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %vec.phi15 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %wide.load = load <4 x i8>, ptr %i.b, align 1, !tbaa !80
  %wide.load16 = load <4 x i8>, ptr %i.c, align 1, !tbaa !80
  %i.d = sext <4 x i8> %wide.load to <4 x i32>
  %i.e = sext <4 x i8> %wide.load16 to <4 x i32>
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %wide.load17 = load <4 x i16>, ptr %i.f, align 2, !tbaa !83
  %wide.load18 = load <4 x i16>, ptr %i.g, align 2, !tbaa !83
  %i.h = sext <4 x i16> %wide.load17 to <4 x i32>
  %i.i = sext <4 x i16> %wide.load18 to <4 x i32>
  %i.j = sub nsw <4 x i32> %i.d, %i.h             ; 2 uses
  %i.k = sub nsw <4 x i32> %i.e, %i.i             ; 2 uses
  %i.l = mul nsw <4 x i32> %i.j, %i.j
  %i.m = mul nsw <4 x i32> %i.k, %i.k
  %i.n = add <4 x i32> %i.l, %vec.phi             ; 2 uses
  %i.o = add <4 x i32> %i.m, %vec.phi15           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.o, %i.n
  %i.q = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.01213.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.012.lcssa = phi i32 [ 0, %bb.a ], [ %i.q, %middle.block ], [ %i.z, %.lr.ph ]
  ret i32 %.012.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader19, %.lr.ph
  %.014 = phi i64 [ %i.aa, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader19 ] ; 3 uses
  %.01213 = phi i32 [ %i.z, %.lr.ph ], [ %.01213.ph, %.lr.ph.preheader19 ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.014
  %i.s = load i8, ptr %i.r, align 1, !tbaa !80
  %i.t = sext i8 %i.s to i32
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.014
  %i.v = load i16, ptr %i.u, align 2, !tbaa !83
  %i.w = sext i16 %i.v to i32
  %i.x = sub nsw i32 %i.t, %i.w                   ; 2 uses
  %i.y = mul nsw i32 %i.x, %i.x
  %i.z = add nuw nsw i32 %i.y, %.01213            ; 2 uses
  %i.aa = add nuw nsw i64 %.014, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !181
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @ff_alloc_packet(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ff_encode_add_stats_side_data(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_match_2uint16(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_me_init_pic(ptr noundef) local_unnamed_addr #2

declare void @ff_estimate_p_frame_motion(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_fix_long_p_mvs(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_fix_long_mvs(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @encode_block(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef range(i32 0, 6) %5, i32 noundef range(i32 0, 65) %6, i32 noundef range(i32 -131072, 131072) %7, i32 noundef range(i32 0, 2) %8) unnamed_addr #1 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 4 uses
  %9 = alloca [6 x %struct.PutBitContext], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = add nuw nsw i32 %5, 2
  %i.c = lshr i32 %i.b, 1                         ; 3 uses
  %i.d = shl nuw nsw i32 2, %i.c                  ; 2 uses
  %i.e = add nuw nsw i32 %5, 1
  %i.f = lshr i32 %i.e, 1                         ; 3 uses
  %i.g = shl nuw nsw i32 2, %i.f                  ; 3 uses
  %i.h = add nuw nsw i32 %i.c, 1                  ; 5 uses
  %i.i = shl nuw nsw i32 %i.g, %i.h               ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 10896
  %i.k = zext nneg i32 %5 to i64                  ; 12 uses
  %i.l = getelementptr [3584 x i8], ptr %i.j, i64 %i.k ; 6 uses
  %.not = icmp eq i32 %8, 0                       ; 2 uses
  %i.m = sext i32 %4 to i64                       ; 4 uses
  %wide.trip.count338 = zext nneg i32 %i.g to i64 ; 4 uses
  %wide.trip.count333 = zext nneg i32 %i.d to i64 ; 11 uses
  %i.n = add nsw i64 %wide.trip.count338, -1
  %i.o = mul nsw i64 %i.n, %i.m                   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @ff_svq1_intra_codebooks, i64 %i.k
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !82
  %i.r = getelementptr i8, ptr %1, i64 %i.o
  %scevgep = getelementptr i8, ptr %i.r, i64 %wide.trip.count333
  %i.s = mul nuw nsw i64 %i.k, 3584
  %10 = shl nuw nsw i64 %wide.trip.count333, 1
  %min.iters.check = icmp samesign ult i32 %5, 2
  %11 = getelementptr i8, ptr %0, i64 %i.s
  %12 = getelementptr i8, ptr %11, i64 %10
  %invariant.gep559 = getelementptr i8, ptr %12, i64 10896
  %stride.check = icmp slt i32 %4, 0
  %n.vec = and i64 %wide.trip.count333, 504
  br label %.preheader287

.preheader287:                                    ; preds = %bb.b, %.loopexit531
  %indvars.iv325 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next326, %.loopexit531 ] ; 3 uses
  %.0240297 = phi i32 [ 0, %bb.b ], [ %.lcssa415, %.loopexit531 ] ; 2 uses
  %.lcssa295296 = phi i32 [ 0, %bb.b ], [ %.lcssa414, %.loopexit531 ] ; 2 uses
  %i.t = mul nsw i64 %indvars.iv325, %i.m
  %i.u = trunc nuw nsw i64 %indvars.iv325 to i32
  %i.v = shl i32 %i.u, %i.h
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.t ; 3 uses
  %invariant.gep403 = getelementptr [2 x i8], ptr %i.l, i64 %i.w ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader287
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.preheader287
  %i.x = shl nsw i64 %i.w, 1
  %i.y = getelementptr i8, ptr %invariant.gep559, i64 %i.x
  %bound0 = icmp ult ptr %invariant.gep403, %scevgep
  %bound1 = icmp ult ptr %1, %i.y
  %found.conflict = and i1 %bound0, %bound1
  %i.z = or i1 %found.conflict, %stride.check
  br i1 %i.z, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aa = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0240297, i64 0
  %i.ab = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.lcssa295296, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.aa, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi418 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi419 = phi <4 x i32> [ %i.ab, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi420 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %i.ac = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %wide.load = load <4 x i8>, ptr %i.ac, align 1, !tbaa !80, !alias.scope !210 ; 2 uses
  %wide.load421 = load <4 x i8>, ptr %i.ad, align 1, !tbaa !80, !alias.scope !210 ; 2 uses
  %i.ae = zext <4 x i8> %wide.load to <4 x i32>   ; 3 uses
  %i.af = zext <4 x i8> %wide.load421 to <4 x i32> ; 3 uses
  %i.ag = zext <4 x i8> %wide.load to <4 x i16>
  %i.ah = zext <4 x i8> %wide.load421 to <4 x i16>
  %i.ai = getelementptr [2 x i8], ptr %invariant.gep403, i64 %index ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  store <4 x i16> %i.ag, ptr %i.ai, align 2, !tbaa !83, !alias.scope !211, !noalias !210
  store <4 x i16> %i.ah, ptr %i.aj, align 2, !tbaa !83, !alias.scope !211, !noalias !210
  %i.ak = mul nuw nsw <4 x i32> %i.ae, %i.ae
  %i.al = mul nuw nsw <4 x i32> %i.af, %i.af
  %i.am = add <4 x i32> %i.ak, %vec.phi           ; 2 uses
  %i.an = add <4 x i32> %i.al, %vec.phi418        ; 2 uses
  %i.ao = add <4 x i32> %vec.phi419, %i.ae        ; 2 uses
  %i.ap = add <4 x i32> %vec.phi420, %i.af        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.an, %i.am
  %i.ar = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %bin.rdx422 = add <4 x i32> %i.ap, %i.ao
  %i.as = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx422)
  br label %.loopexit531

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader
  %indvars.iv = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.1, %scalar.ph ] ; 4 uses
  %.1241292 = phi i32 [ %.0240297, %scalar.ph.preheader ], [ %i.be, %scalar.ph ]
  %i.at = phi i32 [ %.lcssa295296, %scalar.ph.preheader ], [ %i.bf, %scalar.ph ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.au = load i8, ptr %gep, align 1, !tbaa !80   ; 2 uses
  %i.av = zext i8 %i.au to i32                    ; 3 uses
  %i.aw = zext i8 %i.au to i16
  %gep404 = getelementptr [2 x i8], ptr %invariant.gep403, i64 %indvars.iv
  store i16 %i.aw, ptr %gep404, align 2, !tbaa !83
  %i.ax = mul nuw nsw i32 %i.av, %i.av
  %i.ay = add nsw i32 %i.ax, %.1241292
  %i.az = add nsw i32 %i.at, %i.av
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.ba = load i8, ptr %gep.1, align 1, !tbaa !80 ; 2 uses
  %i.bb = zext i8 %i.ba to i32                    ; 3 uses
  %i.bc = zext i8 %i.ba to i16
  %gep404.1 = getelementptr [2 x i8], ptr %invariant.gep403, i64 %indvars.iv.next
  store i16 %i.bc, ptr %gep404.1, align 2, !tbaa !83
  %i.bd = mul nuw nsw i32 %i.bb, %i.bb
  %i.be = add nsw i32 %i.bd, %i.ay                ; 2 uses
  %i.bf = add nsw i32 %i.az, %i.bb                ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count333
  br i1 %exitcond.not.1, label %.loopexit531, label %scalar.ph, !llvm.loop !186

.loopexit531:                                     ; preds = %scalar.ph, %middle.block
  %.lcssa415 = phi i32 [ %i.ar, %middle.block ], [ %i.be, %scalar.ph ] ; 2 uses
  %.lcssa414 = phi i32 [ %i.as, %middle.block ], [ %i.bf, %scalar.ph ] ; 2 uses
  %indvars.iv.next326 = add nuw nsw i64 %indvars.iv325, 1 ; 2 uses
  %exitcond329.not = icmp eq i64 %indvars.iv.next326, %wide.trip.count338
  br i1 %exitcond329.not, label %.loopexit286, label %.preheader287, !llvm.loop !187

bb.c:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @ff_svq1_inter_codebooks, i64 %i.k
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !82
  %i.bi = add nsw i64 %i.o, %wide.trip.count333   ; 2 uses
  %scevgep436 = getelementptr i8, ptr %2, i64 %i.bi
  %scevgep437 = getelementptr i8, ptr %1, i64 %i.bi
  %i.bj = mul nuw nsw i64 %i.k, 3584
  %13 = shl nuw nsw i64 %wide.trip.count333, 1
  %min.iters.check439 = icmp samesign ult i32 %5, 2
  %14 = getelementptr i8, ptr %0, i64 %i.bj
  %15 = getelementptr i8, ptr %14, i64 %13
  %invariant.gep561 = getelementptr i8, ptr %15, i64 10896
  %stride.check444 = icmp slt i32 %4, 0
  %n.vec449 = and i64 %wide.trip.count333, 504
  br label %.preheader285

.preheader285:                                    ; preds = %bb.c, %.loopexit530
  %indvars.iv335 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next336, %.loopexit530 ] ; 3 uses
  %.2242305 = phi i32 [ 0, %bb.c ], [ %.lcssa413, %.loopexit530 ] ; 2 uses
  %.lcssa299303304 = phi i32 [ 0, %bb.c ], [ %.lcssa, %.loopexit530 ] ; 2 uses
  %i.bk = mul nsw i64 %indvars.iv335, %i.m        ; 3 uses
  %i.bl = trunc nuw nsw i64 %indvars.iv335 to i32
  %i.bm = shl i32 %i.bl, %i.h
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %invariant.gep405 = getelementptr [2 x i8], ptr %i.l, i64 %i.bn ; 5 uses
  br i1 %min.iters.check439, label %scalar.ph438.preheader, label %vector.memcheck440

scalar.ph438.preheader:                           ; preds = %vector.memcheck440, %.preheader285
  br label %scalar.ph438

vector.memcheck440:                               ; preds = %.preheader285
  %i.bo = shl nsw i64 %i.bn, 1
  %i.bp = getelementptr i8, ptr %invariant.gep561, i64 %i.bo ; 2 uses
  %bound0441 = icmp ult ptr %invariant.gep405, %scevgep437
  %bound1442 = icmp ult ptr %1, %i.bp
  %found.conflict443 = and i1 %bound0441, %bound1442
  %i.bq = or i1 %found.conflict443, %stride.check444
  %bound0445 = icmp ult ptr %invariant.gep405, %scevgep436
  %bound1446 = icmp ult ptr %2, %i.bp
  %found.conflict447 = and i1 %bound0445, %bound1446
  %conflict.rdx = or i1 %i.bq, %found.conflict447
  br i1 %conflict.rdx, label %scalar.ph438.preheader, label %vector.ph448

vector.ph448:                                     ; preds = %vector.memcheck440
  %i.br = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.2242305, i64 0
  %i.bs = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.lcssa299303304, i64 0
  br label %vector.body450

vector.body450:                                   ; preds = %vector.body450, %vector.ph448
  %index451 = phi i64 [ 0, %vector.ph448 ], [ %index.next460, %vector.body450 ] ; 3 uses
  %vec.phi452 = phi <4 x i32> [ %i.br, %vector.ph448 ], [ %i.ck, %vector.body450 ]
  %vec.phi453 = phi <4 x i32> [ zeroinitializer, %vector.ph448 ], [ %i.cl, %vector.body450 ]
  %vec.phi454 = phi <4 x i32> [ %i.bs, %vector.ph448 ], [ %i.cm, %vector.body450 ]
  %vec.phi455 = phi <4 x i32> [ zeroinitializer, %vector.ph448 ], [ %i.cn, %vector.body450 ]
  %i.bt = add nsw i64 %index451, %i.bk            ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %1, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %wide.load456 = load <4 x i8>, ptr %i.bu, align 1, !tbaa !80, !alias.scope !212
  %wide.load457 = load <4 x i8>, ptr %i.bv, align 1, !tbaa !80, !alias.scope !212
  %i.bw = zext <4 x i8> %wide.load456 to <4 x i32>
  %i.bx = zext <4 x i8> %wide.load457 to <4 x i32>
  %i.by = getelementptr inbounds i8, ptr %2, i64 %i.bt ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %wide.load458 = load <4 x i8>, ptr %i.by, align 1, !tbaa !80, !alias.scope !213
  %wide.load459 = load <4 x i8>, ptr %i.bz, align 1, !tbaa !80, !alias.scope !213
  %i.ca = zext <4 x i8> %wide.load458 to <4 x i32>
  %i.cb = zext <4 x i8> %wide.load459 to <4 x i32>
  %i.cc = sub nsw <4 x i32> %i.bw, %i.ca          ; 4 uses
  %i.cd = sub nsw <4 x i32> %i.bx, %i.cb          ; 4 uses
  %i.ce = trunc nsw <4 x i32> %i.cc to <4 x i16>
  %i.cf = trunc nsw <4 x i32> %i.cd to <4 x i16>
  %i.cg = getelementptr [2 x i8], ptr %invariant.gep405, i64 %index451 ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  store <4 x i16> %i.ce, ptr %i.cg, align 2, !tbaa !83, !alias.scope !214, !noalias !215
  store <4 x i16> %i.cf, ptr %i.ch, align 2, !tbaa !83, !alias.scope !214, !noalias !215
  %i.ci = mul nsw <4 x i32> %i.cc, %i.cc
  %i.cj = mul nsw <4 x i32> %i.cd, %i.cd
  %i.ck = add <4 x i32> %i.ci, %vec.phi452        ; 2 uses
  %i.cl = add <4 x i32> %i.cj, %vec.phi453        ; 2 uses
  %i.cm = add <4 x i32> %vec.phi454, %i.cc        ; 2 uses
  %i.cn = add <4 x i32> %vec.phi455, %i.cd        ; 2 uses
  %index.next460 = add nuw i64 %index451, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next460, %n.vec449
  br i1 %i.co, label %middle.block461, label %vector.body450, !llvm.loop !192

middle.block461:                                  ; preds = %vector.body450
  %bin.rdx462 = add <4 x i32> %i.cl, %i.ck
  %i.cp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx462)
  %bin.rdx463 = add <4 x i32> %i.cn, %i.cm
  %i.cq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx463)
  br label %.loopexit530

scalar.ph438:                                     ; preds = %scalar.ph438, %scalar.ph438.preheader
  %indvars.iv330 = phi i64 [ 0, %scalar.ph438.preheader ], [ %indvars.iv.next331.1, %scalar.ph438 ] ; 4 uses
  %.3300 = phi i32 [ %.2242305, %scalar.ph438.preheader ], [ %i.do, %scalar.ph438 ]
  %i.cr = phi i32 [ %.lcssa299303304, %scalar.ph438.preheader ], [ %i.dp, %scalar.ph438 ]
  %i.cs = add nsw i64 %indvars.iv330, %i.bk       ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %1, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !80
  %i.cv = zext i8 %i.cu to i32
  %i.cw = getelementptr inbounds i8, ptr %2, i64 %i.cs
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !80
  %i.cy = zext i8 %i.cx to i32
  %i.cz = sub nsw i32 %i.cv, %i.cy                ; 4 uses
  %i.da = trunc nsw i32 %i.cz to i16
  %gep406 = getelementptr [2 x i8], ptr %invariant.gep405, i64 %indvars.iv330
  store i16 %i.da, ptr %gep406, align 2, !tbaa !83
  %i.db = mul nsw i32 %i.cz, %i.cz
  %i.dc = add nsw i32 %i.db, %.3300
  %i.dd = add nsw i32 %i.cr, %i.cz
  %indvars.iv.next331 = or disjoint i64 %indvars.iv330, 1 ; 2 uses
  %i.de = add nsw i64 %indvars.iv.next331, %i.bk  ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %1, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !80
  %i.dh = zext i8 %i.dg to i32
  %i.di = getelementptr inbounds i8, ptr %2, i64 %i.de
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !80
  %i.dk = zext i8 %i.dj to i32
  %i.dl = sub nsw i32 %i.dh, %i.dk                ; 4 uses
  %i.dm = trunc nsw i32 %i.dl to i16
  %gep406.1 = getelementptr [2 x i8], ptr %invariant.gep405, i64 %indvars.iv.next331
  store i16 %i.dm, ptr %gep406.1, align 2, !tbaa !83
  %i.dn = mul nsw i32 %i.dl, %i.dl
  %i.do = add nsw i32 %i.dn, %i.dc                ; 2 uses
  %i.dp = add nsw i32 %i.dd, %i.dl                ; 2 uses
  %indvars.iv.next331.1 = add nuw nsw i64 %indvars.iv330, 2 ; 2 uses
  %exitcond334.not.1 = icmp eq i64 %indvars.iv.next331.1, %wide.trip.count333
  br i1 %exitcond334.not.1, label %.loopexit530, label %scalar.ph438, !llvm.loop !193

.loopexit530:                                     ; preds = %scalar.ph438, %middle.block461
  %.lcssa413 = phi i32 [ %i.cp, %middle.block461 ], [ %i.do, %scalar.ph438 ] ; 2 uses
  %.lcssa = phi i32 [ %i.cq, %middle.block461 ], [ %i.dp, %scalar.ph438 ] ; 2 uses
  %indvars.iv.next336 = add nuw nsw i64 %indvars.iv335, 1 ; 2 uses
  %exitcond339.not = icmp eq i64 %indvars.iv.next336, %wide.trip.count338
  br i1 %exitcond339.not, label %.loopexit286, label %.preheader285, !llvm.loop !194

.loopexit286:                                     ; preds = %.loopexit531, %.loopexit530
  %ff_svq1_intra_multistage_vlc.sink = phi ptr [ @ff_svq1_inter_multistage_vlc, %.loopexit530 ], [ @ff_svq1_intra_multistage_vlc, %.loopexit531 ]
  %storemerge = phi i32 [ %.lcssa, %.loopexit530 ], [ %.lcssa414, %.loopexit531 ] ; 4 uses
  %.4 = phi i32 [ %.lcssa413, %.loopexit530 ], [ %.lcssa415, %.loopexit531 ]
  %i.dq = phi ptr [ @svq1_inter_codebook_sum, %.loopexit530 ], [ @svq1_intra_codebook_sum, %.loopexit531 ]
  %.0235 = phi ptr [ %i.bh, %.loopexit530 ], [ %i.q, %.loopexit531 ] ; 2 uses
  %.0234 = phi ptr [ getelementptr inbounds nuw (i8, ptr @ff_svq1_inter_mean_vlc, i64 1024), %.loopexit530 ], [ @ff_svq1_intra_mean_vlc, %.loopexit531 ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %ff_svq1_intra_multistage_vlc.sink, i64 %i.k ; 2 uses
  %i.ds = mul i32 %storemerge, %storemerge
  %i.dt = add nuw nsw i32 %5, 3                   ; 4 uses
  %i.du = lshr i32 %i.ds, %i.dt
  %i.dv = sub nsw i32 %.4, %i.du                  ; 2 uses
  %i.dw = lshr exact i32 %i.i, 1                  ; 2 uses
  %i.dx = add nsw i32 %storemerge, %i.dw
  %i.dy = ashr i32 %i.dx, %i.dt                   ; 2 uses
  %i.dz = icmp samesign ult i32 %5, 4
  br i1 %i.dz, label %.preheader283, label %.loopexit284

.preheader283:                                    ; preds = %.loopexit286
  %i.ea = getelementptr inbounds nuw [96 x i8], ptr %i.dq, i64 %i.k
  %i.eb = add nuw nsw i32 %i.f, 1
  %i.ec = add nuw nsw i32 %i.eb, %i.h             ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 32480
  %i.ee = zext nneg i32 %i.i to i64               ; 5 uses
  %i.ef = zext nneg i32 %i.dt to i64
  %i.eg = select i1 %.not, i32 -256, i32 0        ; 2 uses
  %i.eh = mul nuw nsw i64 %i.k, 3584
  %i.ei = shl nuw nsw i64 %i.ee, 1
  %i.ej = getelementptr i8, ptr %0, i64 %i.eh
  %i.ek = getelementptr i8, ptr %i.ej, i64 %i.ei
  %scevgep475 = getelementptr i8, ptr %i.ek, i64 13968
  %min.iters.check477 = icmp samesign ult i32 %i.i, 8
  %n.vec483 = and i64 %i.ee, 16777208
  br label %bb.d

bb.d:                                             ; preds = %.preheader283, %middle.block489
  %i.el = phi i32 [ %storemerge, %.preheader283 ], [ %i.hd, %middle.block489 ] ; 2 uses
  %indvars.iv349 = phi i64 [ 1, %.preheader283 ], [ %indvars.iv.next350, %middle.block489 ] ; 5 uses
  %.0237314 = phi i32 [ 0, %.preheader283 ], [ %.1238, %middle.block489 ]
  %.5313 = phi i32 [ %i.dv, %.preheader283 ], [ %.6, %middle.block489 ] ; 2 uses
  %.0243312 = phi i32 [ %i.dy, %.preheader283 ], [ %.1244, %middle.block489 ]
  %i.em = add nsw i64 %indvars.iv349, -1          ; 4 uses
  %i.en = shl nuw nsw i64 %i.em, 4
  %i.eo = trunc nuw nsw i64 %i.em to i32
  %i.ep = shl i32 %i.eo, %i.ec
  %i.eq = shl nsw i32 %i.ep, 4
  %i.er = sext i32 %i.eq to i64                   ; 2 uses
  %i.es = getelementptr inbounds i8, ptr %.0235, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds [512 x i8], ptr %i.l, i64 %i.em ; 6 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.em ; 2 uses
  %invariant.gep407 = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.en
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.g
  %indvars.iv340 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next341, %bb.g ] ; 3 uses
  %.0223310 = phi i32 [ -999, %bb.d ], [ %.1, %bb.g ]
  %.0224309 = phi i32 [ -999, %bb.d ], [ %.1225, %bb.g ]
  %.0226308 = phi i32 [ 2147483647, %bb.d ], [ %.1227, %bb.g ] ; 2 uses
  %gep408 = getelementptr inbounds nuw i8, ptr %invariant.gep407, i64 %indvars.iv340
  %i.ev = load i8, ptr %gep408, align 1, !tbaa !80
  %i.ew = sext i8 %i.ev to i32                    ; 2 uses
  %i.ex = trunc nuw nsw i64 %indvars.iv340 to i32 ; 2 uses
  %i.ey = shl nuw nsw i32 %i.ex, %i.ec
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ez
  %i.fb = load ptr, ptr %i.ed, align 16, !tbaa !216
  %i.fc = tail call i32 %i.fb(ptr noundef %i.fa, ptr noundef nonnull %i.et, i64 noundef %i.ee) #8
  %i.fd = sub nsw i32 %i.el, %i.ew                ; 2 uses
  %i.fe = sext i32 %i.fd to i64                   ; 2 uses
  %i.ff = mul nsw i64 %i.fe, %i.fe
  %i.fg = lshr i64 %i.ff, %i.ef
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = sub i32 %i.fc, %i.fh                    ; 2 uses
  %i.fj = icmp slt i32 %i.fi, %.0226308
  br i1 %i.fj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.fk = add nsw i32 %i.fd, %i.dw
  %i.fl = ashr i32 %i.fk, %i.dt                   ; 2 uses
  %i.fm = icmp slt i32 %i.fl, %i.eg
  %..i = tail call i32 @llvm.smin.i32(i32 %i.fl, i32 255)
  %.0.i = select i1 %i.fm, i32 %i.eg, i32 %..i
  store i32 %i.ex, ptr %i.eu, align 4, !tbaa !65
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1227 = phi i32 [ %i.fi, %bb.f ], [ %.0226308, %bb.e ] ; 2 uses
  %.1225 = phi i32 [ %i.ew, %bb.f ], [ %.0224309, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %.0.i, %bb.f ], [ %.0223310, %bb.e ] ; 4 uses
  %indvars.iv.next341 = add nuw nsw i64 %indvars.iv340, 1 ; 2 uses
  %exitcond343.not = icmp eq i64 %indvars.iv.next341, 16
  br i1 %exitcond343.not, label %bb.h, label %bb.e, !llvm.loop !195

bb.h:                                             ; preds = %bb.g
  %.not265 = icmp eq i32 %.1, -999
  br i1 %.not265, label %bb.i, label %bb.j

end_hunk_0
begin_hunk_1_@encode_block:bb.a
  %i.im = getelementptr inbounds i8, ptr %2, i64 %i.ik
  %i.in = getelementptr inbounds i8, ptr %3, i64 %i.ik
  %i.io = tail call fastcc i32 @encode_block(ptr noundef nonnull %0, ptr noundef %i.il, ptr noundef %i.im, ptr noundef %i.in, i32 noundef %4, i32 noundef %i.hz, i32 noundef %i.ii, i32 noundef %7, i32 noundef %8)
  %i.ip = add i32 %i.ij, %7
  %i.iq = add i32 %i.ip, %i.io                    ; 2 uses
  %i.ir = icmp slt i32 %i.iq, %.7
  br i1 %i.ir, label %.thread, label %.preheader281

.preheader281:                                    ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ia, ptr nonnull align 16 %9, i64 range(i64 0, 161) %i.ib, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.k, %.preheader281
  %.0247 = phi i32 [ 1, %bb.k ], [ 0, %.preheader281 ]
  %.8 = phi i32 [ %i.iq, %bb.k ], [ %.7, %.preheader281 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.m

bb.l:                                             ; preds = %.loopexit284
  br i1 %i.hy, label %bb.m, label %.thread394

bb.m:                                             ; preds = %.thread, %bb.l
  %.9393 = phi i32 [ %.8, %.thread ], [ %.7, %bb.l ] ; 2 uses
  %.1248391 = phi i32 [ %.0247, %.thread ], [ 0, %bb.l ] ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 10680
  %i.it = getelementptr inbounds nuw [32 x i8], ptr %i.is, i64 %i.k ; 5 uses
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !81 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 4 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !79 ; 4 uses
  %i.ix = icmp sgt i32 %i.iw, 1
  br i1 %i.ix, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.iy = shl i32 %i.iu, 1
  %i.iz = or i32 %i.iy, %.1248391
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.ja = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !77
  %i.jc = getelementptr inbounds nuw i8, ptr %i.it, i64 16 ; 3 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !78 ; 2 uses
  %i.je = ptrtoint ptr %i.jb to i64
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = sub i64 %i.je, %i.jf
  %i.jh = icmp ugt i64 %i.jg, 3
  br i1 %i.jh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ji = shl i32 %i.iu, %i.iw
  %i.jj = sub nsw i32 1, %i.iw
  %i.jk = lshr i32 %.1248391, %i.jj
  %i.jl = or i32 %i.jk, %i.ji
  %i.jm = tail call i32 @llvm.bswap.i32(i32 %i.jl)
  store i32 %i.jm, ptr %i.jd, align 1, !tbaa !80
  %i.jn = load ptr, ptr %i.jc, align 8, !tbaa !78
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  store ptr %i.jo, ptr %i.jc, align 8, !tbaa !78
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.17) #8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n
  %.sink = phi i32 [ -1, %bb.n ], [ 31, %bb.q ], [ 31, %bb.p ]
  %.026.i.i = phi i32 [ %i.iz, %bb.n ], [ %.1248391, %bb.q ], [ %.1248391, %bb.p ]
  %i.jp = add nsw i32 %i.iw, %.sink
  store i32 %.026.i.i, ptr %i.it, align 8, !tbaa !81
  store i32 %i.jp, ptr %i.iv, align 4, !tbaa !79
  %.not264 = icmp eq i32 %.1248391, 0
  br i1 %.not264, label %.thread394, label %.loopexit

.thread394:                                       ; preds = %bb.l, %bb.r
  %.9392399 = phi i32 [ %.9393, %bb.r ], [ %.7, %bb.l ]
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 10680
  %i.jr = getelementptr inbounds nuw [32 x i8], ptr %i.jq, i64 %i.k ; 11 uses
  %i.js = sext i32 %.2239 to i64                  ; 3 uses
  %i.jt = getelementptr [2 x i8], ptr %i.dr, i64 %i.js ; 2 uses
  %i.ju = getelementptr i8, ptr %i.jt, i64 2
  %i.jv = getelementptr i8, ptr %i.jt, i64 3
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !80
  %i.jx = zext i8 %i.jw to i32                    ; 5 uses
  %i.jy = load i8, ptr %i.ju, align 2, !tbaa !80
  %i.jz = zext i8 %i.jy to i32                    ; 3 uses
  %i.ka = load i32, ptr %i.jr, align 8, !tbaa !81 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jr, i64 4 ; 4 uses
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !79 ; 5 uses
  %i.kd = icmp sgt i32 %i.kc, %i.jx
  br i1 %i.kd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread394
  %i.ke = shl i32 %i.ka, %i.jx
  %i.kf = or i32 %i.ke, %i.jz
  %i.kg = sub nuw nsw i32 %i.kc, %i.jx
  br label %put_bits.exit269

bb.t:                                             ; preds = %.thread394
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !77
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 3 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !78 ; 2 uses
  %i.kl = ptrtoint ptr %i.ki to i64
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = sub i64 %i.kl, %i.km
  %i.ko = icmp ugt i64 %i.kn, 3
  br i1 %i.ko, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.kp = shl i32 %i.ka, %i.kc
  %i.kq = sub nsw i32 %i.jx, %i.kc
  %i.kr = lshr i32 %i.jz, %i.kq
  %i.ks = or i32 %i.kr, %i.kp
  %i.kt = tail call i32 @llvm.bswap.i32(i32 %i.ks)
  store i32 %i.kt, ptr %i.kk, align 1, !tbaa !80
  %i.ku = load ptr, ptr %i.kj, align 8, !tbaa !78
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  store ptr %i.kv, ptr %i.kj, align 8, !tbaa !78
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.17) #8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %reass.sub = sub i32 %i.kc, %i.jx
  %i.kw = add i32 %reass.sub, 32
  br label %put_bits.exit269

put_bits.exit269:                                 ; preds = %bb.s, %bb.w
  %.026.i.i267 = phi i32 [ %i.kf, %bb.s ], [ %i.jz, %bb.w ] ; 3 uses
  %.0.i.i268 = phi i32 [ %i.kg, %bb.s ], [ %i.kw, %bb.w ] ; 6 uses
  store i32 %.026.i.i267, ptr %i.jr, align 8, !tbaa !81
  store i32 %.0.i.i268, ptr %i.kb, align 4, !tbaa !79
  %i.kx = sext i32 %.3246 to i64
  %i.ky = getelementptr inbounds [4 x i8], ptr %.0234, i64 %i.kx ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 2
  %i.la = load i16, ptr %i.kz, align 2, !tbaa !83
  %i.lb = zext i16 %i.la to i32                   ; 4 uses
  %i.lc = load i16, ptr %i.ky, align 2, !tbaa !83
  %i.ld = zext i16 %i.lc to i32                   ; 3 uses
  %i.le = icmp sgt i32 %.0.i.i268, %i.lb
  br i1 %i.le, label %bb.x, label %bb.y

bb.x:                                             ; preds = %put_bits.exit269
  %i.lf = shl i32 %.026.i.i267, %i.lb
  %i.lg = or i32 %i.lf, %i.ld
  br label %put_bits.exit273

bb.y:                                             ; preds = %put_bits.exit269
  %i.lh = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !77
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 3 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !78 ; 2 uses
  %i.ll = ptrtoint ptr %i.li to i64
  %i.lm = ptrtoint ptr %i.lk to i64
  %i.ln = sub i64 %i.ll, %i.lm
  %i.lo = icmp ugt i64 %i.ln, 3
  br i1 %i.lo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.lp = shl i32 %.026.i.i267, %.0.i.i268
  %i.lq = sub nsw i32 %i.lb, %.0.i.i268
  %i.lr = lshr i32 %i.ld, %i.lq
  %i.ls = or i32 %i.lr, %i.lp
  %i.lt = tail call i32 @llvm.bswap.i32(i32 %i.ls)
  store i32 %i.lt, ptr %i.lk, align 1, !tbaa !80
  %i.lu = load ptr, ptr %i.lj, align 8, !tbaa !78
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  store ptr %i.lv, ptr %i.lj, align 8, !tbaa !78
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.17) #8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %reass.sub.i270 = add nsw i32 %.0.i.i268, 32
  br label %put_bits.exit273

put_bits.exit273:                                 ; preds = %bb.x, %bb.ab
  %.026.i.i271 = phi i32 [ %i.lg, %bb.x ], [ %i.ld, %bb.ab ] ; 2 uses
  %.0.i.i268.pn = phi i32 [ %.0.i.i268, %bb.x ], [ %reass.sub.i270, %bb.ab ]
  %.0.i.i272 = sub i32 %.0.i.i268.pn, %i.lb       ; 2 uses
  store i32 %.026.i.i271, ptr %i.jr, align 8, !tbaa !81
  store i32 %.0.i.i272, ptr %i.kb, align 4, !tbaa !79
  %i.lw = icmp sgt i32 %.2239, 0
  br i1 %i.lw, label %.lr.ph, label %.preheader280

.lr.ph:                                           ; preds = %put_bits.exit273
  %i.lx = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.ly = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 3 uses
  %wide.trip.count362 = zext nneg i32 %.2239 to i64
  br label %bb.ac

.preheader280:                                    ; preds = %put_bits.exit277, %put_bits.exit273
  %i.lz = getelementptr inbounds [512 x i8], ptr %i.l, i64 %i.js
  %i.ma = sext i32 %4 to i64
  %wide.trip.count372 = zext nneg i32 %i.g to i64
  %wide.trip.count367 = zext nneg i32 %i.d to i64
  %16 = mul nuw nsw i64 %i.k, 3584
  %i.mb = shl nsw i64 %i.js, 9
  %17 = shl nuw nsw i64 %wide.trip.count333, 1
  %i.mc = add nsw i64 %wide.trip.count338, -1
  %i.md = mul nsw i64 %i.mc, %i.m
  %i.me = add nsw i64 %i.md, %wide.trip.count333  ; 2 uses
  %scevgep505 = getelementptr i8, ptr %1, i64 %i.me
  %scevgep506 = getelementptr i8, ptr %3, i64 %i.me ; 2 uses
  %min.iters.check508 = icmp samesign ult i32 %5, 2
  %18 = getelementptr i8, ptr %0, i64 %16
  %19 = getelementptr i8, ptr %18, i64 %i.mb
  %invariant.gep563 = getelementptr i8, ptr %19, i64 %17
  %invariant.gep565 = getelementptr i8, ptr %invariant.gep563, i64 10896
  %bound0510 = icmp ult ptr %3, %scevgep505
  %bound1511 = icmp ult ptr %1, %scevgep506
  %found.conflict512 = and i1 %bound0510, %bound1511
  %stride.check513 = icmp slt i32 %4, 0
  %i.mf = or i1 %found.conflict512, %stride.check513
  %n.vec519 = and i64 %wide.trip.count333, 504
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.3246, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.preheader

bb.ac:                                            ; preds = %.lr.ph, %put_bits.exit277
  %i.mg = phi i32 [ %.0.i.i272, %.lr.ph ], [ %i.na, %put_bits.exit277 ] ; 4 uses
  %i.mh = phi i32 [ %.026.i.i271, %.lr.ph ], [ %.026.i.i275, %put_bits.exit277 ] ; 2 uses
  %indvars.iv359 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next360, %put_bits.exit277 ] ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv359
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !65 ; 4 uses
  %i.mk = icmp sgt i32 %i.mg, 4
  br i1 %i.mk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ml = shl i32 %i.mh, 4
  %i.mm = or i32 %i.ml, %i.mj
  br label %put_bits.exit277

bb.ae:                                            ; preds = %bb.ac
  %i.mn = load ptr, ptr %i.lx, align 8, !tbaa !77
  %i.mo = load ptr, ptr %i.ly, align 8, !tbaa !78 ; 2 uses
  %i.mp = ptrtoint ptr %i.mn to i64
  %i.mq = ptrtoint ptr %i.mo to i64
  %i.mr = sub i64 %i.mp, %i.mq
  %i.ms = icmp ugt i64 %i.mr, 3
  br i1 %i.ms, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.mt = shl i32 %i.mh, %i.mg
  %i.mu = sub nsw i32 4, %i.mg
  %i.mv = lshr i32 %i.mj, %i.mu
  %i.mw = or i32 %i.mv, %i.mt
  %i.mx = tail call i32 @llvm.bswap.i32(i32 %i.mw)
  store i32 %i.mx, ptr %i.mo, align 1, !tbaa !80
  %i.my = load ptr, ptr %i.ly, align 8, !tbaa !78
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  store ptr %i.mz, ptr %i.ly, align 8, !tbaa !78
  br label %put_bits.exit277

bb.ag:                                            ; preds = %bb.ae
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.17) #8
  br label %put_bits.exit277

put_bits.exit277:                                 ; preds = %bb.af, %bb.ag, %bb.ad
  %.sink411 = phi i32 [ -4, %bb.ad ], [ 28, %bb.ag ], [ 28, %bb.af ]
  %.026.i.i275 = phi i32 [ %i.mm, %bb.ad ], [ %i.mj, %bb.ag ], [ %i.mj, %bb.af ] ; 2 uses
  %i.na = add nsw i32 %i.mg, %.sink411            ; 2 uses
  store i32 %.026.i.i275, ptr %i.jr, align 8, !tbaa !81
  store i32 %i.na, ptr %i.kb, align 4, !tbaa !79
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next360, %wide.trip.count362
  br i1 %exitcond363.not, label %.preheader280, label %bb.ac, !llvm.loop !202

.preheader:                                       ; preds = %.preheader280, %middle.block525
  %indvars.iv369 = phi i64 [ 0, %.preheader280 ], [ %indvars.iv.next370, %middle.block525 ] ; 3 uses
  %i.nb = mul nsw i64 %indvars.iv369, %i.ma       ; 3 uses
  %i.nc = trunc nuw nsw i64 %indvars.iv369 to i32
  %i.nd = shl i32 %i.nc, %i.h
  %i.ne = sext i32 %i.nd to i64                   ; 2 uses
  %invariant.gep409 = getelementptr [2 x i8], ptr %i.lz, i64 %i.ne ; 4 uses
  br i1 %min.iters.check508, label %scalar.ph507.preheader, label %vector.memcheck509

scalar.ph507.preheader:                           ; preds = %vector.memcheck509, %.preheader
  br label %scalar.ph507

vector.memcheck509:                               ; preds = %.preheader
  %i.nf = shl nsw i64 %i.ne, 1
  %i.ng = getelementptr i8, ptr %invariant.gep565, i64 %i.nf
  %bound0514 = icmp ult ptr %3, %i.ng
  %bound1515 = icmp ult ptr %invariant.gep409, %scevgep506
  %found.conflict516 = and i1 %bound0514, %bound1515
  %conflict.rdx517 = or i1 %i.mf, %found.conflict516
  br i1 %conflict.rdx517, label %scalar.ph507.preheader, label %vector.body520

vector.body520:                                   ; preds = %vector.memcheck509, %vector.body520
  %index521 = phi i64 [ %index.next524, %vector.body520 ], [ 0, %vector.memcheck509 ] ; 3 uses
  %i.nh = add nsw i64 %index521, %i.nb            ; 2 uses
  %i.ni = getelementptr inbounds i8, ptr %1, i64 %i.nh
  %wide.load522 = load <8 x i8>, ptr %i.ni, align 1, !tbaa !80, !alias.scope !219
  %i.nj = zext <8 x i8> %wide.load522 to <8 x i32>
  %i.nk = getelementptr [2 x i8], ptr %invariant.gep409, i64 %index521
  %wide.load523 = load <8 x i16>, ptr %i.nk, align 2, !tbaa !83, !alias.scope !220
  %i.nl = zext <8 x i16> %wide.load523 to <8 x i32>
  %i.nm = add nsw <8 x i32> %broadcast.splat, %i.nj
  %i.nn = sub nsw <8 x i32> %i.nm, %i.nl
  %i.no = trunc <8 x i32> %i.nn to <8 x i8>
  %i.np = getelementptr inbounds i8, ptr %3, i64 %i.nh
  store <8 x i8> %i.no, ptr %i.np, align 1, !tbaa !80, !alias.scope !221, !noalias !222
  %index.next524 = add nuw i64 %index521, 8       ; 2 uses
  %i.nq = icmp eq i64 %index.next524, %n.vec519
  br i1 %i.nq, label %middle.block525, label %vector.body520, !llvm.loop !207

scalar.ph507:                                     ; preds = %scalar.ph507, %scalar.ph507.preheader
  %indvars.iv364 = phi i64 [ 0, %scalar.ph507.preheader ], [ %indvars.iv.next365.1, %scalar.ph507 ] ; 4 uses
  %i.nr = add nsw i64 %indvars.iv364, %i.nb       ; 2 uses
  %i.ns = getelementptr inbounds i8, ptr %1, i64 %i.nr
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !80
  %i.nu = zext i8 %i.nt to i32
  %gep410 = getelementptr [2 x i8], ptr %invariant.gep409, i64 %indvars.iv364
  %i.nv = load i16, ptr %gep410, align 2, !tbaa !83
  %i.nw = zext i16 %i.nv to i32
  %i.nx = add nsw i32 %.3246, %i.nu
  %i.ny = sub nsw i32 %i.nx, %i.nw
  %i.nz = trunc i32 %i.ny to i8
  %i.oa = getelementptr inbounds i8, ptr %3, i64 %i.nr
  store i8 %i.nz, ptr %i.oa, align 1, !tbaa !80
  %indvars.iv.next365 = or disjoint i64 %indvars.iv364, 1 ; 2 uses
  %i.ob = add nsw i64 %indvars.iv.next365, %i.nb  ; 2 uses
  %i.oc = getelementptr inbounds i8, ptr %1, i64 %i.ob
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !80
  %i.oe = zext i8 %i.od to i32
  %gep410.1 = getelementptr [2 x i8], ptr %invariant.gep409, i64 %indvars.iv.next365
  %i.of = load i16, ptr %gep410.1, align 2, !tbaa !83
  %i.og = zext i16 %i.of to i32
  %i.oh = add nsw i32 %.3246, %i.oe
  %i.oi = sub nsw i32 %i.oh, %i.og
  %i.oj = trunc i32 %i.oi to i8
  %i.ok = getelementptr inbounds i8, ptr %3, i64 %i.ob
  store i8 %i.oj, ptr %i.ok, align 1, !tbaa !80
  %indvars.iv.next365.1 = add nuw nsw i64 %indvars.iv364, 2 ; 2 uses
  %exitcond368.not.1 = icmp eq i64 %indvars.iv.next365.1, %wide.trip.count367
  br i1 %exitcond368.not.1, label %middle.block525, label %scalar.ph507, !llvm.loop !208

middle.block525:                                  ; preds = %vector.body520, %scalar.ph507
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond373.not = icmp eq i64 %indvars.iv.next370, %wide.trip.count372
  br i1 %exitcond373.not, label %.loopexit, label %.preheader, !llvm.loop !209

.loopexit:                                        ; preds = %middle.block525, %bb.r
  %.9392398 = phi i32 [ %.9393, %bb.r ], [ %.9392399, %middle.block525 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.9392398
}

declare ptr @ff_h263_pred_motion(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_h263_encode_motion(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_copy_bits(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!27, !6, i64 112}
!30 = !{!27, !6, i64 116}
!31 = !{!"ScanTable", !14, i64 0, !5, i64 8, !5, i64 72}
!32 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!33 = !{!"p1 _ZTS15AVRefStructPool", !9, i64 0}
!34 = !{!"BufferPoolContext", !33, i64 0, !33, i64 8, !33, i64 16, !33, i64 24, !33, i64 32, !6, i64 40, !6, i64 44, !6, i64 48}
!35 = !{!"p1 _ZTS10MPVPicture", !9, i64 0}
!36 = !{!"MPVWorkPicture", !5, i64 0, !5, i64 24, !35, i64 48, !14, i64 56, !5, i64 64, !24, i64 80, !14, i64 88, !5, i64 96, !6, i64 112}
!37 = !{!"ScratchpadContext", !14, i64 0, !14, i64 8, !5, i64 16, !6, i64 24}
!38 = !{!"BlockDSPContext", !9, i64 0, !9, i64 8, !5, i64 16}
!39 = !{!"H264ChromaContext", !5, i64 0, !5, i64 32}
!40 = !{!"HpelDSPContext", !5, i64 0, !5, i64 128, !5, i64 256, !5, i64 352}
!41 = !{!"IDCTDSPContext", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !5, i64 48, !6, i64 112, !6, i64 116}
!42 = !{!"QpelDSPContext", !5, i64 0, !5, i64 256, !5, i64 512}
!43 = !{!"VideoDSPContext", !9, i64 0, !9, i64 8}
!44 = !{!"H263DSPContext", !9, i64 0, !9, i64 8}
!45 = !{!"short", !5, i64 0}
!46 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!47 = !{!"p1 _ZTS11ThreadFrame", !9, i64 0}
!48 = !{!"p1 _ZTS14ThreadProgress", !9, i64 0}
!49 = !{!"ERPicture", !46, i64 0, !47, i64 8, !48, i64 16, !5, i64 24, !5, i64 40, !24, i64 56, !6, i64 64}
!50 = !{!"ERContext", !32, i64 0, !9, i64 8, !24, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !13, i64 40, !13, i64 48, !5, i64 56, !6, i64 60, !14, i64 64, !14, i64 72, !5, i64 80, !14, i64 104, !14, i64 112, !5, i64 120, !49, i64 184, !49, i64 256, !49, i64 328, !5, i64 400, !5, i64 416, !45, i64 432, !45, i64 434, !6, i64 436, !6, i64 440, !9, i64 448, !9, i64 456}
!51 = !{!"MpegEncContext", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !5, i64 20, !6, i64 68, !31, i64 72, !31, i64 208, !32, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !6, i64 408, !6, i64 412, !13, i64 416, !13, i64 424, !33, i64 432, !34, i64 440, !6, i64 496, !6, i64 500, !5, i64 504, !6, i64 760, !36, i64 768, !36, i64 888, !36, i64 1008, !17, i64 1128, !14, i64 1136, !14, i64 1144, !14, i64 1152, !14, i64 1160, !14, i64 1168, !17, i64 1176, !17, i64 1184, !17, i64 1192, !6, i64 1200, !14, i64 1208, !14, i64 1216, !14, i64 1224, !14, i64 1232, !37, i64 1240, !6, i64 1272, !6, i64 1276, !6, i64 1280, !6, i64 1284, !38, i64 1288, !39, i64 1320, !40, i64 1384, !41, i64 1768, !42, i64 1888, !43, i64 2656, !44, i64 2672, !17, i64 2688, !5, i64 2696, !6, i64 2728, !6, i64 2732, !5, i64 2736, !5, i64 2800, !5, i64 2816, !5, i64 2848, !6, i64 3104, !6, i64 3108, !6, i64 3112, !6, i64 3116, !5, i64 3120, !5, i64 3144, !5, i64 3168, !24, i64 3192, !5, i64 3200, !5, i64 3328, !5, i64 3456, !5, i64 3584, !6, i64 3712, !6, i64 3716, !6, i64 3720, !6, i64 3724, !6, i64 3728, !6, i64 3732, !6, i64 3736, !6, i64 3740, !13, i64 3744, !13, i64 3752, !45, i64 3760, !45, i64 3762, !45, i64 3764, !45, i64 3766, !6, i64 3768, !6, i64 3772, !6, i64 3776, !6, i64 3780, !6, i64 3784, !6, i64 3788, !6, i64 3792, !6, i64 3796, !5, i64 3800, !6, i64 3816, !6, i64 3820, !6, i64 3824, !6, i64 3828, !6, i64 3832, !6, i64 3836, !6, i64 3840, !6, i64 3844, !6, i64 3848, !6, i64 3852, !6, i64 3856, !6, i64 3860, !6, i64 3864, !6, i64 3868, !5, i64 3872, !6, i64 3880, !6, i64 3884, !9, i64 3888, !9, i64 3896, !6, i64 3904, !6, i64 3908, !50, i64 3912}
!52 = !{!"PutBitContext", !6, i64 0, !6, i64 4, !14, i64 8, !14, i64 16, !14, i64 24}
!53 = !{!"p1 _ZTS17MPVMainEncContext", !9, i64 0}
!54 = !{!"FDCTDSPContext", !9, i64 0, !9, i64 8}
!55 = !{!"MpegvideoEncDSPContext", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !5, i64 40, !9, i64 72}
!56 = !{!"PixblockDSPContext", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!57 = !{!"MotionEstContext", !32, i64 0, !6, i64 8, !6, i64 12, !5, i64 16, !5, i64 48, !14, i64 80, !14, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !5, i64 168, !5, i64 296, !6, i64 424, !6, i64 428, !13, i64 432, !13, i64 440, !6, i64 448, !5, i64 456, !5, i64 504, !5, i64 552, !5, i64 600, !5, i64 648, !9, i64 712, !25, i64 720, !25, i64 728, !25, i64 736, !25, i64 744, !14, i64 752, !14, i64 760, !9, i64 768, !5, i64 776, !5, i64 1032}
!58 = !{!"p1 _ZTS12MJpegContext", !9, i64 0}
!59 = !{!"MPVEncContext", !51, i64 0, !52, i64 4384, !6, i64 4416, !6, i64 4420, !24, i64 4424, !6, i64 4432, !6, i64 4436, !6, i64 4440, !6, i64 4444, !6, i64 4448, !6, i64 4452, !6, i64 4456, !6, i64 4460, !46, i64 4464, !53, i64 4472, !54, i64 4480, !55, i64 4496, !56, i64 4576, !57, i64 4608, !6, i64 5896, !6, i64 5900, !17, i64 5904, !17, i64 5912, !17, i64 5920, !17, i64 5928, !17, i64 5936, !17, i64 5944, !5, i64 5952, !5, i64 6016, !5, i64 6032, !17, i64 6064, !17, i64 6072, !17, i64 6080, !14, i64 6088, !5, i64 6096, !6, i64 6120, !6, i64 6124, !6, i64 6128, !6, i64 6132, !6, i64 6136, !14, i64 6144, !14, i64 6152, !14, i64 6160, !14, i64 6168, !14, i64 6176, !14, i64 6184, !14, i64 6192, !5, i64 6200, !17, i64 6248, !24, i64 6256, !24, i64 6264, !24, i64 6272, !17, i64 6280, !17, i64 6288, !17, i64 6296, !24, i64 6304, !5, i64 6312, !17, i64 6320, !6, i64 6328, !6, i64 6332, !6, i64 6336, !6, i64 6340, !6, i64 6344, !6, i64 6348, !6, i64 6352, !6, i64 6356, !5, i64 6360, !6, i64 6372, !6, i64 6376, !6, i64 6380, !6, i64 6384, !6, i64 6388, !14, i64 6392, !6, i64 6400, !6, i64 6404, !6, i64 6408, !6, i64 6412, !6, i64 6416, !58, i64 6424, !6, i64 6432, !6, i64 6436, !6, i64 6440, !6, i64 6444, !6, i64 6448, !52, i64 6456, !52, i64 6488, !6, i64 6520, !6, i64 6524, !6, i64 6528, !6, i64 6532, !6, i64 6536, !6, i64 6540, !14, i64 6544, !9, i64 6552, !9, i64 6560, !5, i64 6568, !5, i64 6584, !5, i64 6600, !5, i64 6616, !9, i64 6632, !6, i64 6640, !5, i64 6644, !5, i64 6708, !5, i64 6784}
!60 = !{!"MECmpContext", !9, i64 0, !5, i64 8, !5, i64 56, !5, i64 104, !5, i64 152, !5, i64 200, !5, i64 248, !5, i64 296, !5, i64 344, !5, i64 392, !5, i64 440, !5, i64 488, !5, i64 536, !5, i64 584, !5, i64 632, !5, i64 680, !5, i64 744}
!61 = !{!"SVQ1EncDSPContext", !9, i64 0}
!62 = !{!"SVQ1EncContext", !59, i64 0, !32, i64 9856, !60, i64 9864, !46, i64 10656, !46, i64 10664, !6, i64 10672, !6, i64 10676, !5, i64 10680, !6, i64 10872, !6, i64 10876, !6, i64 10880, !6, i64 10884, !5, i64 10896, !17, i64 32400, !24, i64 32408, !5, i64 32416, !5, i64 32440, !13, i64 32464, !14, i64 32472, !61, i64 32480}
!63 = !{!62, !46, i64 10656}
!64 = !{!62, !46, i64 10664}
!65 = !{!6, !6, i64 0}
!66 = !{!62, !14, i64 32472}
!67 = !{!62, !6, i64 10872}
!68 = !{!62, !6, i64 10876}
!69 = !{!62, !32, i64 9856}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!17, !17, i64 0}
!72 = !{!62, !6, i64 10880}
!73 = !{!62, !6, i64 10884}
!74 = !{!62, !24, i64 32408}
!75 = !{!62, !46, i64 4464}
!76 = !{!27, !13, i64 824}
!77 = !{!52, !14, i64 24}
!78 = !{!52, !14, i64 16}
!79 = !{!52, !6, i64 4}
!80 = !{!5, !5, i64 0}
!81 = !{!52, !6, i64 0}
!82 = !{!14, !14, i64 0}
!83 = !{!45, !45, i64 0}
!84 = !{!62, !13, i64 32464}
!85 = !{!"llvm.loop.isvectorized", i32 1}
!86 = !{!"llvm.loop.unroll.runtime.disable"}
!87 = distinct !{!87, !70}
!88 = !{!27, !6, i64 64}
!89 = !{!62, !32, i64 344}
!90 = !{!62, !6, i64 3816}
!91 = !{!62, !14, i64 4688}
end_hunk_1
