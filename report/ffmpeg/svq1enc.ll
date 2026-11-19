Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/svq1enc?download=true
inline.NumInlined: 34
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 48
begin_hunk_0_@svq1_encode_end:bb.a
  tail call void @av_freep(ptr noundef nonnull %i.t) #8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32416
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32440
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.w) #8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.x) #8
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
  %i.t = shl nuw nsw i64 %wide.trip.count333, 1
  %i.u = getelementptr i8, ptr %0, i64 %i.s
  %i.v = getelementptr i8, ptr %i.u, i64 %i.t
  %scevgep418 = getelementptr i8, ptr %i.v, i64 10896
  %min.iters.check = icmp samesign ult i32 %5, 2
  %stride.check = icmp slt i32 %4, 0
  %n.vec = and i64 %wide.trip.count333, 504
  br label %.preheader287

.preheader287:                                    ; preds = %bb.b, %.loopexit535
  %indvars.iv325 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next326, %.loopexit535 ] ; 3 uses
  %.0240297 = phi i32 [ 0, %bb.b ], [ %.lcssa415, %.loopexit535 ] ; 2 uses
  %.lcssa295296 = phi i32 [ 0, %bb.b ], [ %.lcssa414, %.loopexit535 ] ; 2 uses
  %i.w = mul nsw i64 %indvars.iv325, %i.m
  %i.x = trunc nuw nsw i64 %indvars.iv325 to i32
  %i.y = shl i32 %i.x, %i.h
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %invariant.gep403 = getelementptr [2 x i8], ptr %i.l, i64 %i.z ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader287
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.preheader287
  %i.aa = shl nsw i64 %i.z, 1
  %i.ab = getelementptr i8, ptr %scevgep418, i64 %i.aa
  %bound0 = icmp ult ptr %invariant.gep403, %scevgep
  %bound1 = icmp ult ptr %1, %i.ab
  %found.conflict = and i1 %bound0, %bound1
  %i.ac = or i1 %found.conflict, %stride.check
  br i1 %i.ac, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ad = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0240297, i64 0
  %i.ae = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.lcssa295296, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.ad, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi419 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi420 = phi <4 x i32> [ %i.ae, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi421 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %i.af = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  %wide.load = load <4 x i8>, ptr %i.af, align 1, !tbaa !80, !alias.scope !210 ; 2 uses
  %wide.load422 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !80, !alias.scope !210 ; 2 uses
  %i.ah = zext <4 x i8> %wide.load to <4 x i32>   ; 3 uses
  %i.ai = zext <4 x i8> %wide.load422 to <4 x i32> ; 3 uses
  %i.aj = zext <4 x i8> %wide.load to <4 x i16>
  %i.ak = zext <4 x i8> %wide.load422 to <4 x i16>
  %i.al = getelementptr [2 x i8], ptr %invariant.gep403, i64 %index ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 8
  store <4 x i16> %i.aj, ptr %i.al, align 2, !tbaa !83, !alias.scope !211, !noalias !210
  store <4 x i16> %i.ak, ptr %i.am, align 2, !tbaa !83, !alias.scope !211, !noalias !210
  %i.an = mul nuw nsw <4 x i32> %i.ah, %i.ah
  %i.ao = mul nuw nsw <4 x i32> %i.ai, %i.ai
  %i.ap = add <4 x i32> %i.an, %vec.phi           ; 2 uses
  %i.aq = add <4 x i32> %i.ao, %vec.phi419        ; 2 uses
  %i.ar = add <4 x i32> %vec.phi420, %i.ah        ; 2 uses
  %i.as = add <4 x i32> %vec.phi421, %i.ai        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aq, %i.ap
  %i.au = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %bin.rdx423 = add <4 x i32> %i.as, %i.ar
  %i.av = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx423)
  br label %.loopexit535

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader
  %indvars.iv = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.1, %scalar.ph ] ; 4 uses
  %.1241292 = phi i32 [ %.0240297, %scalar.ph.preheader ], [ %i.bh, %scalar.ph ]
  %i.aw = phi i32 [ %.lcssa295296, %scalar.ph.preheader ], [ %i.bi, %scalar.ph ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.ax = load i8, ptr %gep, align 1, !tbaa !80   ; 2 uses
  %i.ay = zext i8 %i.ax to i32                    ; 3 uses
  %i.az = zext i8 %i.ax to i16
  %gep404 = getelementptr [2 x i8], ptr %invariant.gep403, i64 %indvars.iv
  store i16 %i.az, ptr %gep404, align 2, !tbaa !83
  %i.ba = mul nuw nsw i32 %i.ay, %i.ay
  %i.bb = add nsw i32 %i.ba, %.1241292
  %i.bc = add nsw i32 %i.aw, %i.ay
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.bd = load i8, ptr %gep.1, align 1, !tbaa !80 ; 2 uses
  %i.be = zext i8 %i.bd to i32                    ; 3 uses
  %i.bf = zext i8 %i.bd to i16
  %gep404.1 = getelementptr [2 x i8], ptr %invariant.gep403, i64 %indvars.iv.next
  store i16 %i.bf, ptr %gep404.1, align 2, !tbaa !83
  %i.bg = mul nuw nsw i32 %i.be, %i.be
  %i.bh = add nsw i32 %i.bg, %i.bb                ; 2 uses
  %i.bi = add nsw i32 %i.bc, %i.be                ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count333
  br i1 %exitcond.not.1, label %.loopexit535, label %scalar.ph, !llvm.loop !186

.loopexit535:                                     ; preds = %scalar.ph, %middle.block
  %.lcssa415 = phi i32 [ %i.au, %middle.block ], [ %i.bh, %scalar.ph ] ; 2 uses
  %.lcssa414 = phi i32 [ %i.av, %middle.block ], [ %i.bi, %scalar.ph ] ; 2 uses
  %indvars.iv.next326 = add nuw nsw i64 %indvars.iv325, 1 ; 2 uses
  %exitcond329.not = icmp eq i64 %indvars.iv.next326, %wide.trip.count338
  br i1 %exitcond329.not, label %.loopexit286, label %.preheader287, !llvm.loop !187

bb.c:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr @ff_svq1_inter_codebooks, i64 %i.k
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !82
  %i.bl = add nsw i64 %i.o, %wide.trip.count333   ; 2 uses
  %scevgep437 = getelementptr i8, ptr %2, i64 %i.bl
  %scevgep438 = getelementptr i8, ptr %1, i64 %i.bl
  %i.bm = mul nuw nsw i64 %i.k, 3584
  %i.bn = shl nuw nsw i64 %wide.trip.count333, 1
  %i.bo = getelementptr i8, ptr %0, i64 %i.bm
  %i.bp = getelementptr i8, ptr %i.bo, i64 %i.bn
  %scevgep439 = getelementptr i8, ptr %i.bp, i64 10896
  %min.iters.check441 = icmp samesign ult i32 %5, 2
  %stride.check446 = icmp slt i32 %4, 0
  %n.vec451 = and i64 %wide.trip.count333, 504
  br label %.preheader285

.preheader285:                                    ; preds = %bb.c, %.loopexit534
  %indvars.iv335 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next336, %.loopexit534 ] ; 3 uses
  %.2242305 = phi i32 [ 0, %bb.c ], [ %.lcssa413, %.loopexit534 ] ; 2 uses
  %.lcssa299303304 = phi i32 [ 0, %bb.c ], [ %.lcssa, %.loopexit534 ] ; 2 uses
  %i.bq = mul nsw i64 %indvars.iv335, %i.m        ; 3 uses
  %i.br = trunc nuw nsw i64 %indvars.iv335 to i32
  %i.bs = shl i32 %i.br, %i.h
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %invariant.gep405 = getelementptr [2 x i8], ptr %i.l, i64 %i.bt ; 5 uses
  br i1 %min.iters.check441, label %scalar.ph440.preheader, label %vector.memcheck442

scalar.ph440.preheader:                           ; preds = %vector.memcheck442, %.preheader285
  br label %scalar.ph440

vector.memcheck442:                               ; preds = %.preheader285
  %i.bu = shl nsw i64 %i.bt, 1
  %i.bv = getelementptr i8, ptr %scevgep439, i64 %i.bu ; 2 uses
  %bound0443 = icmp ult ptr %invariant.gep405, %scevgep438
  %bound1444 = icmp ult ptr %1, %i.bv
  %found.conflict445 = and i1 %bound0443, %bound1444
  %i.bw = or i1 %found.conflict445, %stride.check446
  %bound0447 = icmp ult ptr %invariant.gep405, %scevgep437
  %bound1448 = icmp ult ptr %2, %i.bv
  %found.conflict449 = and i1 %bound0447, %bound1448
  %conflict.rdx = or i1 %i.bw, %found.conflict449
  br i1 %conflict.rdx, label %scalar.ph440.preheader, label %vector.ph450

vector.ph450:                                     ; preds = %vector.memcheck442
  %i.bx = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.2242305, i64 0
  %i.by = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.lcssa299303304, i64 0
  br label %vector.body452

vector.body452:                                   ; preds = %vector.body452, %vector.ph450
  %index453 = phi i64 [ 0, %vector.ph450 ], [ %index.next462, %vector.body452 ] ; 3 uses
  %vec.phi454 = phi <4 x i32> [ %i.bx, %vector.ph450 ], [ %i.cq, %vector.body452 ]
  %vec.phi455 = phi <4 x i32> [ zeroinitializer, %vector.ph450 ], [ %i.cr, %vector.body452 ]
  %vec.phi456 = phi <4 x i32> [ %i.by, %vector.ph450 ], [ %i.cs, %vector.body452 ]
  %vec.phi457 = phi <4 x i32> [ zeroinitializer, %vector.ph450 ], [ %i.ct, %vector.body452 ]
  %i.bz = add nsw i64 %index453, %i.bq            ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %1, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %wide.load458 = load <4 x i8>, ptr %i.ca, align 1, !tbaa !80, !alias.scope !212
  %wide.load459 = load <4 x i8>, ptr %i.cb, align 1, !tbaa !80, !alias.scope !212
  %i.cc = zext <4 x i8> %wide.load458 to <4 x i32>
  %i.cd = zext <4 x i8> %wide.load459 to <4 x i32>
  %i.ce = getelementptr inbounds i8, ptr %2, i64 %i.bz ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %wide.load460 = load <4 x i8>, ptr %i.ce, align 1, !tbaa !80, !alias.scope !213
  %wide.load461 = load <4 x i8>, ptr %i.cf, align 1, !tbaa !80, !alias.scope !213
  %i.cg = zext <4 x i8> %wide.load460 to <4 x i32>
  %i.ch = zext <4 x i8> %wide.load461 to <4 x i32>
  %i.ci = sub nsw <4 x i32> %i.cc, %i.cg          ; 4 uses
  %i.cj = sub nsw <4 x i32> %i.cd, %i.ch          ; 4 uses
  %i.ck = trunc nsw <4 x i32> %i.ci to <4 x i16>
  %i.cl = trunc nsw <4 x i32> %i.cj to <4 x i16>
  %i.cm = getelementptr [2 x i8], ptr %invariant.gep405, i64 %index453 ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 8
  store <4 x i16> %i.ck, ptr %i.cm, align 2, !tbaa !83, !alias.scope !214, !noalias !215
  store <4 x i16> %i.cl, ptr %i.cn, align 2, !tbaa !83, !alias.scope !214, !noalias !215
  %i.co = mul nsw <4 x i32> %i.ci, %i.ci
  %i.cp = mul nsw <4 x i32> %i.cj, %i.cj
  %i.cq = add <4 x i32> %i.co, %vec.phi454        ; 2 uses
  %i.cr = add <4 x i32> %i.cp, %vec.phi455        ; 2 uses
  %i.cs = add <4 x i32> %vec.phi456, %i.ci        ; 2 uses
  %i.ct = add <4 x i32> %vec.phi457, %i.cj        ; 2 uses
  %index.next462 = add nuw i64 %index453, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next462, %n.vec451
end_hunk_0
begin_hunk_1_@encode_block:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.if, ptr nonnull align 16 %9, i64 range(i64 0, 161) %i.ig, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.k, %.preheader281
  %.0247 = phi i32 [ 1, %bb.k ], [ 0, %.preheader281 ]
  %.8 = phi i32 [ %i.iv, %bb.k ], [ %.7, %.preheader281 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.m

bb.l:                                             ; preds = %.loopexit284
  br i1 %i.id, label %bb.m, label %.thread394

bb.m:                                             ; preds = %.thread, %bb.l
  %.9393 = phi i32 [ %.8, %.thread ], [ %.7, %bb.l ] ; 2 uses
  %.1248391 = phi i32 [ %.0247, %.thread ], [ 0, %bb.l ] ; 5 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 10680
  %i.iy = getelementptr inbounds nuw [32 x i8], ptr %i.ix, i64 %i.k ; 5 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !81 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 4 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !79 ; 4 uses
  %i.jc = icmp sgt i32 %i.jb, 1
  br i1 %i.jc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.jd = shl i32 %i.iz, 1
  %i.je = or i32 %i.jd, %.1248391
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !77
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iy, i64 16 ; 3 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !78 ; 2 uses
  %i.jj = ptrtoint ptr %i.jg to i64
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = sub i64 %i.jj, %i.jk
  %i.jm = icmp ugt i64 %i.jl, 3
  br i1 %i.jm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.jn = shl i32 %i.iz, %i.jb
  %i.jo = sub nsw i32 1, %i.jb
  %i.jp = lshr i32 %.1248391, %i.jo
  %i.jq = or i32 %i.jp, %i.jn
  %i.jr = tail call i32 @llvm.bswap.i32(i32 %i.jq)
  store i32 %i.jr, ptr %i.ji, align 1, !tbaa !80
  %i.js = load ptr, ptr %i.jh, align 8, !tbaa !78
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  store ptr %i.jt, ptr %i.jh, align 8, !tbaa !78
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.17) #8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n
  %.sink = phi i32 [ -1, %bb.n ], [ 31, %bb.q ], [ 31, %bb.p ]
  %.026.i.i = phi i32 [ %i.je, %bb.n ], [ %.1248391, %bb.q ], [ %.1248391, %bb.p ]
  %i.ju = add nsw i32 %i.jb, %.sink
  store i32 %.026.i.i, ptr %i.iy, align 8, !tbaa !81
  store i32 %i.ju, ptr %i.ja, align 4, !tbaa !79
  %.not264 = icmp eq i32 %.1248391, 0
  br i1 %.not264, label %.thread394, label %.loopexit

.thread394:                                       ; preds = %bb.l, %bb.r
  %.9392399 = phi i32 [ %.9393, %bb.r ], [ %.7, %bb.l ]
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 10680
  %i.jw = getelementptr inbounds nuw [32 x i8], ptr %i.jv, i64 %i.k ; 11 uses
  %i.jx = sext i32 %.2239 to i64                  ; 3 uses
  %i.jy = getelementptr [2 x i8], ptr %i.dx, i64 %i.jx ; 2 uses
  %i.jz = getelementptr i8, ptr %i.jy, i64 2
  %i.ka = getelementptr i8, ptr %i.jy, i64 3
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !80
  %i.kc = zext i8 %i.kb to i32                    ; 5 uses
  %i.kd = load i8, ptr %i.jz, align 2, !tbaa !80
  %i.ke = zext i8 %i.kd to i32                    ; 3 uses
  %i.kf = load i32, ptr %i.jw, align 8, !tbaa !81 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jw, i64 4 ; 4 uses
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !79 ; 5 uses
  %i.ki = icmp sgt i32 %i.kh, %i.kc
  br i1 %i.ki, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread394
  %i.kj = shl i32 %i.kf, %i.kc
  %i.kk = or i32 %i.kj, %i.ke
  %i.kl = sub nuw nsw i32 %i.kh, %i.kc
  br label %put_bits.exit269

bb.t:                                             ; preds = %.thread394
  %i.km = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !77
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jw, i64 16 ; 3 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !78 ; 2 uses
  %i.kq = ptrtoint ptr %i.kn to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = icmp ugt i64 %i.ks, 3
  br i1 %i.kt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ku = shl i32 %i.kf, %i.kh
  %i.kv = sub nsw i32 %i.kc, %i.kh
  %i.kw = lshr i32 %i.ke, %i.kv
  %i.kx = or i32 %i.kw, %i.ku
  %i.ky = tail call i32 @llvm.bswap.i32(i32 %i.kx)
  store i32 %i.ky, ptr %i.kp, align 1, !tbaa !80
  %i.kz = load ptr, ptr %i.ko, align 8, !tbaa !78
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  store ptr %i.la, ptr %i.ko, align 8, !tbaa !78
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.17) #8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %reass.sub = sub i32 %i.kh, %i.kc
  %i.lb = add i32 %reass.sub, 32
  br label %put_bits.exit269

put_bits.exit269:                                 ; preds = %bb.s, %bb.w
  %.026.i.i267 = phi i32 [ %i.kk, %bb.s ], [ %i.ke, %bb.w ] ; 3 uses
  %.0.i.i268 = phi i32 [ %i.kl, %bb.s ], [ %i.lb, %bb.w ] ; 6 uses
  store i32 %.026.i.i267, ptr %i.jw, align 8, !tbaa !81
  store i32 %.0.i.i268, ptr %i.kg, align 4, !tbaa !79
  %i.lc = sext i32 %.3246 to i64
  %i.ld = getelementptr inbounds [4 x i8], ptr %.0234, i64 %i.lc ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 2
  %i.lf = load i16, ptr %i.le, align 2, !tbaa !83
  %i.lg = zext i16 %i.lf to i32                   ; 4 uses
  %i.lh = load i16, ptr %i.ld, align 2, !tbaa !83
  %i.li = zext i16 %i.lh to i32                   ; 3 uses
  %i.lj = icmp sgt i32 %.0.i.i268, %i.lg
  br i1 %i.lj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %put_bits.exit269
  %i.lk = shl i32 %.026.i.i267, %i.lg
  %i.ll = or i32 %i.lk, %i.li
  br label %put_bits.exit273

bb.y:                                             ; preds = %put_bits.exit269
  %i.lm = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !77
  %i.lo = getelementptr inbounds nuw i8, ptr %i.jw, i64 16 ; 3 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !78 ; 2 uses
  %i.lq = ptrtoint ptr %i.ln to i64
  %i.lr = ptrtoint ptr %i.lp to i64
  %i.ls = sub i64 %i.lq, %i.lr
  %i.lt = icmp ugt i64 %i.ls, 3
  br i1 %i.lt, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.lu = shl i32 %.026.i.i267, %.0.i.i268
  %i.lv = sub nsw i32 %i.lg, %.0.i.i268
  %i.lw = lshr i32 %i.li, %i.lv
  %i.lx = or i32 %i.lw, %i.lu
  %i.ly = tail call i32 @llvm.bswap.i32(i32 %i.lx)
  store i32 %i.ly, ptr %i.lp, align 1, !tbaa !80
  %i.lz = load ptr, ptr %i.lo, align 8, !tbaa !78
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  store ptr %i.ma, ptr %i.lo, align 8, !tbaa !78
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.17) #8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %reass.sub.i270 = add nsw i32 %.0.i.i268, 32
  br label %put_bits.exit273

put_bits.exit273:                                 ; preds = %bb.x, %bb.ab
  %.026.i.i271 = phi i32 [ %i.ll, %bb.x ], [ %i.li, %bb.ab ] ; 2 uses
  %.0.i.i268.pn = phi i32 [ %.0.i.i268, %bb.x ], [ %reass.sub.i270, %bb.ab ]
  %.0.i.i272 = sub i32 %.0.i.i268.pn, %i.lg       ; 2 uses
  store i32 %.026.i.i271, ptr %i.jw, align 8, !tbaa !81
  store i32 %.0.i.i272, ptr %i.kg, align 4, !tbaa !79
  %i.mb = icmp sgt i32 %.2239, 0
  br i1 %i.mb, label %.lr.ph, label %.preheader280

.lr.ph:                                           ; preds = %put_bits.exit273
  %i.mc = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.md = getelementptr inbounds nuw i8, ptr %i.jw, i64 16 ; 3 uses
  %wide.trip.count362 = zext nneg i32 %.2239 to i64
  br label %bb.ac

.preheader280:                                    ; preds = %put_bits.exit277, %put_bits.exit273
  %i.me = getelementptr inbounds [512 x i8], ptr %i.l, i64 %i.jx
  %i.mf = sext i32 %4 to i64
  %wide.trip.count372 = zext nneg i32 %i.g to i64
  %wide.trip.count367 = zext nneg i32 %i.d to i64
  %i.mg = mul nuw nsw i64 %i.k, 3584
  %i.mh = shl nsw i64 %i.jx, 9
  %i.mi = shl nuw nsw i64 %wide.trip.count333, 1
  %i.mj = getelementptr i8, ptr %0, i64 %i.mg
  %i.mk = getelementptr i8, ptr %i.mj, i64 %i.mh
  %i.ml = getelementptr i8, ptr %i.mk, i64 %i.mi
  %scevgep508 = getelementptr i8, ptr %i.ml, i64 10896
  %i.mm = add nsw i64 %wide.trip.count338, -1
  %i.mn = mul nsw i64 %i.mm, %i.m
  %10 = add nsw i64 %i.mn, %wide.trip.count333    ; 2 uses
  %scevgep509 = getelementptr i8, ptr %1, i64 %10
  %scevgep510.a = getelementptr i8, ptr %3, i64 %10 ; 2 uses
  %min.iters.check512 = icmp samesign ult i32 %5, 2
  %bound0514 = icmp ult ptr %3, %scevgep509
  %bound1515 = icmp ult ptr %1, %scevgep510.a
  %found.conflict516 = and i1 %bound0514, %bound1515
  %stride.check517 = icmp slt i32 %4, 0
  %i.mo = or i1 %found.conflict516, %stride.check517
  %n.vec523 = and i64 %wide.trip.count333, 504
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.3246, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.preheader

bb.ac:                                            ; preds = %.lr.ph, %put_bits.exit277
  %i.mp = phi i32 [ %.0.i.i272, %.lr.ph ], [ %i.nj, %put_bits.exit277 ] ; 4 uses
  %i.mq = phi i32 [ %.026.i.i271, %.lr.ph ], [ %.026.i.i275, %put_bits.exit277 ] ; 2 uses
  %indvars.iv359 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next360, %put_bits.exit277 ] ; 2 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv359
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !65 ; 4 uses
  %i.mt = icmp sgt i32 %i.mp, 4
  br i1 %i.mt, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.mu = shl i32 %i.mq, 4
  %i.mv = or i32 %i.mu, %i.ms
  br label %put_bits.exit277

bb.ae:                                            ; preds = %bb.ac
  %i.mw = load ptr, ptr %i.mc, align 8, !tbaa !77
  %i.mx = load ptr, ptr %i.md, align 8, !tbaa !78 ; 2 uses
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = ptrtoint ptr %i.mx to i64
  %i.na = sub i64 %i.my, %i.mz
  %i.nb = icmp ugt i64 %i.na, 3
  br i1 %i.nb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.nc = shl i32 %i.mq, %i.mp
  %i.nd = sub nsw i32 4, %i.mp
  %i.ne = lshr i32 %i.ms, %i.nd
  %i.nf = or i32 %i.ne, %i.nc
  %i.ng = tail call i32 @llvm.bswap.i32(i32 %i.nf)
  store i32 %i.ng, ptr %i.mx, align 1, !tbaa !80
  %i.nh = load ptr, ptr %i.md, align 8, !tbaa !78
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  store ptr %i.ni, ptr %i.md, align 8, !tbaa !78
  br label %put_bits.exit277

bb.ag:                                            ; preds = %bb.ae
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.17) #8
  br label %put_bits.exit277

put_bits.exit277:                                 ; preds = %bb.af, %bb.ag, %bb.ad
  %.sink411 = phi i32 [ -4, %bb.ad ], [ 28, %bb.ag ], [ 28, %bb.af ]
  %.026.i.i275 = phi i32 [ %i.mv, %bb.ad ], [ %i.ms, %bb.ag ], [ %i.ms, %bb.af ] ; 2 uses
  %i.nj = add nsw i32 %i.mp, %.sink411            ; 2 uses
  store i32 %.026.i.i275, ptr %i.jw, align 8, !tbaa !81
  store i32 %i.nj, ptr %i.kg, align 4, !tbaa !79
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next360, %wide.trip.count362
  br i1 %exitcond363.not, label %.preheader280, label %bb.ac, !llvm.loop !202

.preheader:                                       ; preds = %.preheader280, %middle.block529
  %indvars.iv369 = phi i64 [ 0, %.preheader280 ], [ %indvars.iv.next370, %middle.block529 ] ; 3 uses
  %i.nk = mul nsw i64 %indvars.iv369, %i.mf       ; 3 uses
  %i.nl = trunc nuw nsw i64 %indvars.iv369 to i32
  %i.nm = shl i32 %i.nl, %i.h
  %i.nn = sext i32 %i.nm to i64                   ; 2 uses
  %invariant.gep409 = getelementptr [2 x i8], ptr %i.me, i64 %i.nn ; 4 uses
  br i1 %min.iters.check512, label %scalar.ph511.preheader, label %vector.memcheck513

scalar.ph511.preheader:                           ; preds = %vector.memcheck513, %.preheader
  br label %scalar.ph511

vector.memcheck513:                               ; preds = %.preheader
  %i.no = shl nsw i64 %i.nn, 1
  %i.np = getelementptr i8, ptr %scevgep508, i64 %i.no
  %bound0518 = icmp ult ptr %3, %i.np
  %bound1519 = icmp ult ptr %invariant.gep409, %scevgep510.a
  %found.conflict520 = and i1 %bound0518, %bound1519
  %conflict.rdx521 = or i1 %i.mo, %found.conflict520
  br i1 %conflict.rdx521, label %scalar.ph511.preheader, label %vector.body524

vector.body524:                                   ; preds = %vector.memcheck513, %vector.body524
  %index525 = phi i64 [ %index.next528, %vector.body524 ], [ 0, %vector.memcheck513 ] ; 3 uses
  %i.nq = add nsw i64 %index525, %i.nk            ; 2 uses
  %i.nr = getelementptr inbounds i8, ptr %1, i64 %i.nq
  %wide.load526 = load <8 x i8>, ptr %i.nr, align 1, !tbaa !80, !alias.scope !219
  %i.ns = zext <8 x i8> %wide.load526 to <8 x i32>
  %i.nt = getelementptr [2 x i8], ptr %invariant.gep409, i64 %index525
  %wide.load527 = load <8 x i16>, ptr %i.nt, align 2, !tbaa !83, !alias.scope !220
  %i.nu = zext <8 x i16> %wide.load527 to <8 x i32>
  %i.nv = add nsw <8 x i32> %broadcast.splat, %i.ns
  %i.nw = sub nsw <8 x i32> %i.nv, %i.nu
  %i.nx = trunc <8 x i32> %i.nw to <8 x i8>
  %i.ny = getelementptr inbounds i8, ptr %3, i64 %i.nq
  store <8 x i8> %i.nx, ptr %i.ny, align 1, !tbaa !80, !alias.scope !221, !noalias !222
  %index.next528 = add nuw i64 %index525, 8       ; 2 uses
  %i.nz = icmp eq i64 %index.next528, %n.vec523
  br i1 %i.nz, label %middle.block529, label %vector.body524, !llvm.loop !207

scalar.ph511:                                     ; preds = %scalar.ph511, %scalar.ph511.preheader
  %indvars.iv364 = phi i64 [ 0, %scalar.ph511.preheader ], [ %indvars.iv.next365.1, %scalar.ph511 ] ; 4 uses
  %i.oa = add nsw i64 %indvars.iv364, %i.nk       ; 2 uses
  %i.ob = getelementptr inbounds i8, ptr %1, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !80
  %i.od = zext i8 %i.oc to i32
  %gep410 = getelementptr [2 x i8], ptr %invariant.gep409, i64 %indvars.iv364
  %i.oe = load i16, ptr %gep410, align 2, !tbaa !83
  %i.of = zext i16 %i.oe to i32
  %i.og = add nsw i32 %.3246, %i.od
  %i.oh = sub nsw i32 %i.og, %i.of
  %i.oi = trunc i32 %i.oh to i8
  %i.oj = getelementptr inbounds i8, ptr %3, i64 %i.oa
  store i8 %i.oi, ptr %i.oj, align 1, !tbaa !80
  %indvars.iv.next365 = or disjoint i64 %indvars.iv364, 1 ; 2 uses
  %i.ok = add nsw i64 %indvars.iv.next365, %i.nk  ; 2 uses
  %i.ol = getelementptr inbounds i8, ptr %1, i64 %i.ok
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !80
  %i.on = zext i8 %i.om to i32
  %gep410.1 = getelementptr [2 x i8], ptr %invariant.gep409, i64 %indvars.iv.next365
  %i.oo = load i16, ptr %gep410.1, align 2, !tbaa !83
  %i.op = zext i16 %i.oo to i32
  %i.oq = add nsw i32 %.3246, %i.on
  %i.or = sub nsw i32 %i.oq, %i.op
  %i.os = trunc i32 %i.or to i8
  %i.ot = getelementptr inbounds i8, ptr %3, i64 %i.ok
  store i8 %i.os, ptr %i.ot, align 1, !tbaa !80
  %indvars.iv.next365.1 = add nuw nsw i64 %indvars.iv364, 2 ; 2 uses
  %exitcond368.not.1 = icmp eq i64 %indvars.iv.next365.1, %wide.trip.count367
  br i1 %exitcond368.not.1, label %middle.block529, label %scalar.ph511, !llvm.loop !208

middle.block529:                                  ; preds = %vector.body524, %scalar.ph511
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond373.not = icmp eq i64 %indvars.iv.next370, %wide.trip.count372
  br i1 %exitcond373.not, label %.loopexit, label %.preheader, !llvm.loop !209

.loopexit:                                        ; preds = %middle.block529, %bb.r
  %.9392398 = phi i32 [ %.9393, %bb.r ], [ %.9392399, %middle.block529 ]
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
!92 = !{!62, !14, i64 4696}
!93 = !{!62, !17, i64 32400}
!94 = !{!61, !9, i64 0}
!95 = !{!62, !14, i64 5360}
end_hunk_1
