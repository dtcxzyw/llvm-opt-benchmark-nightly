Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/svq1dec?download=true
inline.NumInlined: 51
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@svq1_decode_frame:bb.a
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next248, 3
  br i1 %exitcond.not, label %bb.bf, label %bb.af, !llvm.loop !61

bb.bf:                                            ; preds = %bb.ah, %.loopexit
  %i.uz = load i32, ptr %i.jf, align 8, !tbaa !71
  %.not177 = icmp eq i32 %i.uz, 0
  br i1 %.not177, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.va = load ptr, ptr %i.jx, align 8, !tbaa !34
  %i.vb = call i32 @av_frame_replace(ptr noundef %i.va, ptr noundef %1) #9 ; 2 uses
  %i.vc = icmp slt i32 %i.vb, 0
  br i1 %i.vc, label %.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  store i32 1, ptr %2, align 4, !tbaa !35
  br label %.thread

.thread:                                          ; preds = %bb.x, %svq1_decode_delta_block.exit.us, %svq1_motion_inter_4v_block.exit.thread.i, %svq1_motion_inter_block.exit.i, %bb.aq, %bb.am, %bb.w, %skip_1stop_8data_bits.exit.i, %bb.u, %bb.r, %bb.k, %bb.f, %bb.e, %bb.bg, %bb.ae, %bb.ad, %.thread192, %bb.aa, %bb.ac, %bb.y, %bb.b, %bb.a, %bb.bh
  %.6 = phi i32 [ %i.vb, %bb.bg ], [ -1094995529, %bb.a ], [ -1094995529, %bb.b ], [ -1094995529, %bb.e ], [ %i.ik, %bb.y ], [ %i.g, %bb.aa ], [ -1094995529, %.thread192 ], [ %.0.i183.us, %svq1_decode_delta_block.exit.us ], [ %i.g, %bb.bh ], [ -12, %bb.ae ], [ %i.ji, %bb.ad ], [ %i.sf, %svq1_motion_inter_block.exit.i ], [ %i.g, %bb.ac ], [ -12, %bb.f ], [ -1094995529, %bb.k ], [ -1094995529, %bb.r ], [ -1094995529, %bb.u ], [ -1094995529, %skip_1stop_8data_bits.exit.i ], [ -1094995529, %bb.w ], [ %i.lf, %bb.am ], [ -1094995529, %bb.aq ], [ %.062.i.ph.i.us, %svq1_motion_inter_4v_block.exit.thread.i ], [ -1094995529, %bb.x ]
  ret i32 %.6
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @svq1_decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  tail call void @av_freep(ptr noundef nonnull %i.d) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  store i32 0, ptr %i.e, align 8, !tbaa !84
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  tail call void @av_freep(ptr noundef nonnull %i.f) #9
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  store i32 0, ptr %i.g, align 8, !tbaa !85
  ret i32 0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @svq1_flush(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  tail call void @av_frame_unref(ptr noundef %i.d) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @av_frame_alloc() local_unnamed_addr #3

declare void @ff_hpeldsp_init(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define internal void @svq1_static_init() #0 {
bb.a:
  %0 = alloca %struct.VLCInitState, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @__const.svq1_static_init.state, i64 16, i1 false)
  tail call void @ff_vlc_init_table_sparse(ptr noundef nonnull @svq1_block_type, i32 noundef 8, i32 noundef 3, i32 noundef 4, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ff_svq1_block_type_vlc, i64 1), i32 noundef 2, i32 noundef 1, ptr noundef nonnull @ff_svq1_block_type_vlc, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  tail call void @ff_vlc_init_table_sparse(ptr noundef nonnull @svq1_motion_component, i32 noundef 176, i32 noundef 7, i32 noundef 33, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ff_mvtab, i64 1), i32 noundef 2, i32 noundef 1, ptr noundef nonnull @ff_mvtab, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  call void @ff_vlc_init_table_sparse(ptr noundef nonnull @svq1_intra_mean, i32 noundef 632, i32 noundef 8, i32 noundef 256, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ff_svq1_intra_mean_vlc, i64 2), i32 noundef 4, i32 noundef 2, ptr noundef nonnull @ff_svq1_intra_mean_vlc, i32 noundef 4, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  call void @ff_vlc_init_table_sparse(ptr noundef nonnull @svq1_inter_mean, i32 noundef 1434, i32 noundef 9, i32 noundef 512, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ff_svq1_inter_mean_vlc, i64 2), i32 noundef 4, i32 noundef 2, ptr noundef nonnull @ff_svq1_inter_mean_vlc, i32 noundef 4, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %i.a = getelementptr inbounds nuw [16 x i8], ptr @ff_svq1_intra_multistage_vlc, i64 %indvars.iv ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.c = call ptr @ff_vlc_init_tables_sparse(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %i.b, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @svq1_intra_multistage, i64 %indvars.iv
  store ptr %i.c, ptr %i.d, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw [16 x i8], ptr @ff_svq1_inter_multistage_vlc, i64 %indvars.iv ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = call ptr @ff_vlc_init_tables_sparse(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %i.f, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %i.e, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @svq1_inter_multistage, i64 %indvars.iv
  store ptr %i.g, ptr %i.h, align 8, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !86
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @ff_vlc_init_table_sparse(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ff_vlc_init_tables_sparse(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @av_fast_padded_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @svq1_decode_block_intra(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef range(i64 -2147483648, 2147483648) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [63 x ptr], align 16              ; 6 uses
  %i.b = alloca [6 x i32], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr %1, ptr %i.a, align 16, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.lhs.trunc = trunc i64 %2 to i32
  %i.e = sdiv i32 %.lhs.trunc, 4
  %.sext = sext i32 %i.e to i64                   ; 19 uses
  br label %.preheader141

.preheader141:                                    ; preds = %bb.a, %.loopexit
  %.0102216 = phi i32 [ 5, %bb.a ], [ %.3, %.loopexit ] ; 2 uses
  %.0108215 = phi i32 [ 1, %bb.a ], [ %.1109.lcssa, %.loopexit ] ; 2 uses
  %.0110214 = phi i32 [ 1, %bb.a ], [ %.3113, %.loopexit ] ; 2 uses
  %.0116213 = phi i32 [ 0, %bb.a ], [ %i.kg, %.loopexit ] ; 2 uses
  %.not142 = icmp eq i32 %.0102216, 0
  br i1 %.not142, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader141
  %i.f = sext i32 %.0108215 to i64
  %i.g = sext i32 %.0116213 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph.preheader
  %indvars.iv231 = phi i64 [ %i.g, %.lr.ph.preheader ], [ %indvars.iv.next232, %bb.d ] ; 3 uses
  %indvars.iv = phi i64 [ %i.f, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.1103146 = phi i32 [ %.0102216, %.lr.ph.preheader ], [ %.2, %bb.d ] ; 2 uses
  %.1111144 = phi i32 [ %.0110214, %.lr.ph.preheader ], [ %.2112, %bb.d ] ; 3 uses
  %i.h = trunc nsw i64 %indvars.iv231 to i32      ; 2 uses
  %i.i = icmp eq i32 %.1111144, %i.h
  %i.j = trunc nsw i64 %indvars.iv to i32         ; 4 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.k = add i32 %.1103146, -1                    ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.2112 = phi i32 [ %i.j, %bb.b ], [ %.1111144, %.lr.ph ] ; 2 uses
  %.2 = phi i32 [ %i.k, %bb.b ], [ %.1103146, %.lr.ph ] ; 4 uses
  %i.m = load i32, ptr %i.c, align 8, !tbaa !40   ; 4 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !38
  %i.o = lshr i32 %i.m, 3
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !41
  %i.s = load i32, ptr %i.d, align 8, !tbaa !39
  %i.t = icmp slt i32 %i.m, %i.s
  %i.u = zext i1 %i.t to i32
  %spec.select.i = add i32 %i.m, %i.u
  %i.v = zext i8 %i.r to i32
  %i.w = and i32 %i.m, 7
  store i32 %spec.select.i, ptr %i.c, align 8, !tbaa !40
  %i.x = lshr exact i32 128, %i.w
  %i.y = and i32 %i.x, %i.v
  %.not128 = icmp eq i32 %i.y, 0
  br i1 %.not128, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv231
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !43  ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !43
  %i.ac = and i32 %.2, 1
  %.not129 = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not129, i64 1, i64 %2
  %i.ae = lshr i32 %.2, 1
  %i.af = add nuw i32 %i.ae, 1
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl i64 %i.ad, %i.ag
  %i.ai = getelementptr inbounds i8, ptr %i.aa, i64 %i.ah
  %indvars.iv.next = add nsw i64 %indvars.iv, 2
  %i.aj = getelementptr i8, ptr %i.ab, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !43
  %indvars.iv.next232 = add nsw i64 %indvars.iv231, 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.c, %.preheader141
  %.1117.lcssa = phi i32 [ %.0116213, %.preheader141 ], [ %.1111144, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %.1109.lcssa = phi i32 [ %.0108215, %.preheader141 ], [ %i.j, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %.3113 = phi i32 [ %.0110214, %.preheader141 ], [ %i.j, %bb.b ], [ %.2112, %bb.c ]
  %.3 = phi i32 [ 0, %.preheader141 ], [ 0, %bb.b ], [ %.2, %bb.c ] ; 8 uses
  %i.ak = sext i32 %.1117.lcssa to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !43 ; 19 uses
  %i.an = add nuw i32 %.3, 4
  %i.ao = lshr i32 %i.an, 1
  %i.ap = shl nuw i32 1, %i.ao                    ; 3 uses
  %i.aq = add nuw i32 %.3, 3
  %i.ar = lshr i32 %i.aq, 1
  %i.as = shl nuw i32 1, %i.ar                    ; 3 uses
  %i.at = zext i32 %.3 to i64                     ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @svq1_intra_multistage, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !49 ; 2 uses
  %i.aw = load i32, ptr %i.c, align 8, !tbaa !40  ; 4 uses
  %i.ax = load i32, ptr %i.d, align 8, !tbaa !39  ; 6 uses
  %i.ay = load ptr, ptr %0, align 8, !tbaa !38    ; 6 uses
  %i.az = lshr i32 %i.aw, 3
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 1, !tbaa !41
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.bc)
  %i.be = and i32 %i.aw, 7
  %i.bf = shl i32 %i.bd, %i.be
  %i.bg = lshr i32 %i.bf, 28
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bh ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !41
  %i.bk = sext i16 %i.bj to i32                   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !41 ; 2 uses
  %i.bn = sext i16 %i.bm to i32                   ; 2 uses
  %i.bo = icmp slt i16 %i.bm, 0
  br i1 %i.bo, label %bb.e, label %get_vlc2.exit135

bb.e:                                             ; preds = %._crit_edge
  %i.bp = add i32 %i.aw, 4
  %i.bq = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 %i.bp) ; 3 uses
  %i.br = lshr i32 %i.bq, 3
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 1, !tbaa !41
  %i.bv = tail call i32 @llvm.bswap.i32(i32 %i.bu)
  %i.bw = and i32 %i.bq, 7
  %i.bx = shl i32 %i.bv, %i.bw
  %i.by = add nsw i32 %i.bn, 32
  %i.bz = lshr i32 %i.bx, %i.by
  %i.ca = add i32 %i.bz, %i.bk
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.cb ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !41
  %i.ce = sext i16 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !41
  %i.ch = sext i16 %i.cg to i32
  br label %get_vlc2.exit135

get_vlc2.exit135:                                 ; preds = %._crit_edge, %bb.e
  %.167.i132 = phi i32 [ %i.bk, %._crit_edge ], [ %i.ce, %bb.e ] ; 5 uses
  %.165.i133 = phi i32 [ %i.aw, %._crit_edge ], [ %i.bq, %bb.e ]
  %.1.i134 = phi i32 [ %i.bn, %._crit_edge ], [ %i.ch, %bb.e ]
  %i.ci = add i32 %.1.i134, %.165.i133
  %i.cj = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 %i.ci) ; 5 uses
  store i32 %i.cj, ptr %i.c, align 8, !tbaa !40
  %i.ck = add nsw i32 %.167.i132, -1              ; 8 uses
  %i.cl = icmp eq i32 %.167.i132, 0
  br i1 %i.cl, label %.preheader137, label %bb.g

.preheader137:                                    ; preds = %get_vlc2.exit135
  %i.cm = zext i32 %i.ap to i64                   ; 9 uses
  %wide.trip.count287 = zext i32 %i.as to i64     ; 2 uses
  %xtraiter328 = and i64 %wide.trip.count287, 7   ; 3 uses
  %i.cn = icmp ult i32 %.3, 3
  br i1 %i.cn, label %.epil.preheader327, label %.preheader137.new

.preheader137.new:                                ; preds = %.preheader137
  %unroll_iter332 = and i64 %wide.trip.count287, 4294967288
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader137.new
  %indvars.iv284 = phi i64 [ 0, %.preheader137.new ], [ %indvars.iv.next285.7, %bb.f ] ; 9 uses
  %niter333 = phi i64 [ 0, %.preheader137.new ], [ %niter333.next.7, %bb.f ]
  %i.co = mul nsw i64 %indvars.iv284, %.sext
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.co
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cp, i8 0, i64 %i.cm, i1 false)
  %indvars.iv.next285 = or disjoint i64 %indvars.iv284, 1
  %i.cq = mul nsw i64 %indvars.iv.next285, %.sext
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.cq
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cr, i8 0, i64 %i.cm, i1 false)
  %indvars.iv.next285.1 = or disjoint i64 %indvars.iv284, 2
  %i.cs = mul nsw i64 %indvars.iv.next285.1, %.sext
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.cs
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ct, i8 0, i64 %i.cm, i1 false)
  %indvars.iv.next285.2 = or disjoint i64 %indvars.iv284, 3
  %i.cu = mul nsw i64 %indvars.iv.next285.2, %.sext
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.cu
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cv, i8 0, i64 %i.cm, i1 false)
  %indvars.iv.next285.3 = or disjoint i64 %indvars.iv284, 4
  %i.cw = mul nsw i64 %indvars.iv.next285.3, %.sext
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.cw
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cx, i8 0, i64 %i.cm, i1 false)
  %indvars.iv.next285.4 = or disjoint i64 %indvars.iv284, 5
  %i.cy = mul nsw i64 %indvars.iv.next285.4, %.sext
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.cy
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cz, i8 0, i64 %i.cm, i1 false)
  %indvars.iv.next285.5 = or disjoint i64 %indvars.iv284, 6
  %i.da = mul nsw i64 %indvars.iv.next285.5, %.sext
  %i.db = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.da
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.db, i8 0, i64 %i.cm, i1 false)
  %indvars.iv.next285.6 = or disjoint i64 %indvars.iv284, 7
  %i.dc = mul nsw i64 %indvars.iv.next285.6, %.sext
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.dc
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dd, i8 0, i64 %i.cm, i1 false)
  %indvars.iv.next285.7 = add nuw nsw i64 %indvars.iv284, 8 ; 2 uses
  %niter333.next.7 = add i64 %niter333, 8         ; 2 uses
  %niter333.ncmp.7 = icmp eq i64 %niter333.next.7, %unroll_iter332
  br i1 %niter333.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !87

bb.g:                                             ; preds = %get_vlc2.exit135
  %i.de = icmp sgt i32 %.167.i132, 1
  %i.df = icmp ugt i32 %.3, 3
  %or.cond = and i1 %i.df, %i.de
  br i1 %or.cond, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dg = icmp sgt i32 %.167.i132, 0
  br i1 %i.dg, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 209) #9
  tail call void @abort() #10
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.dh = lshr i32 %i.cj, 3
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 1, !tbaa !41
  %i.dl = tail call i32 @llvm.bswap.i32(i32 %i.dk)
  %i.dm = and i32 %i.cj, 7
  %i.dn = shl i32 %i.dl, %i.dm
  %i.do = lshr i32 %i.dn, 24
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr @svq1_intra_mean, i64 %i.dp ; 2 uses
  %i.dr = load i16, ptr %i.dq, align 4, !tbaa !41
  %i.ds = sext i16 %i.dr to i32                   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !41 ; 2 uses
  %i.dv = sext i16 %i.du to i32                   ; 3 uses
  %i.dw = icmp slt i16 %i.du, 0
  br i1 %i.dw, label %bb.k, label %get_vlc2.exit

bb.k:                                             ; preds = %bb.j
  %i.dx = add i32 %i.cj, 8
  %i.dy = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 %i.dx) ; 4 uses
  %i.dz = lshr i32 %i.dy, 3
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 1, !tbaa !41
  %i.ed = tail call i32 @llvm.bswap.i32(i32 %i.ec)
  %i.ee = and i32 %i.dy, 7
  %i.ef = shl i32 %i.ed, %i.ee
  %i.eg = add nsw i32 %i.dv, 32
  %i.eh = lshr i32 %i.ef, %i.eg
  %i.ei = add i32 %i.eh, %i.ds
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr @svq1_intra_mean, i64 %i.ej ; 2 uses
  %i.el = load i16, ptr %i.ek, align 4, !tbaa !41
  %i.em = sext i16 %i.el to i32                   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !41 ; 2 uses
  %i.ep = sext i16 %i.eo to i32                   ; 2 uses
  %i.eq = icmp slt i16 %i.eo, 0
  br i1 %i.eq, label %bb.l, label %get_vlc2.exit

bb.l:                                             ; preds = %bb.k
  %i.er = sub i32 %i.dy, %i.dv
  %i.es = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 %i.er) ; 3 uses
  %i.et = lshr i32 %i.es, 3
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 1, !tbaa !41
  %i.ex = tail call i32 @llvm.bswap.i32(i32 %i.ew)
  %i.ey = and i32 %i.es, 7
  %i.ez = shl i32 %i.ex, %i.ey
  %i.fa = add nsw i32 %i.ep, 32
  %i.fb = lshr i32 %i.ez, %i.fa
  %i.fc = add i32 %i.fb, %i.em
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr @svq1_intra_mean, i64 %i.fd ; 2 uses
  %i.ff = load i16, ptr %i.fe, align 4, !tbaa !41
  %i.fg = sext i16 %i.ff to i32
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !41
  %i.fj = sext i16 %i.fi to i32
  br label %get_vlc2.exit

get_vlc2.exit:                                    ; preds = %bb.j, %bb.k, %bb.l
  %.167.i = phi i32 [ %i.ds, %bb.j ], [ %i.fg, %bb.l ], [ %i.em, %bb.k ] ; 2 uses
  %.165.i = phi i32 [ %i.cj, %bb.j ], [ %i.es, %bb.l ], [ %i.dy, %bb.k ]
  %.1.i = phi i32 [ %i.dv, %bb.j ], [ %i.fj, %bb.l ], [ %i.ep, %bb.k ]
  %i.fk = add i32 %.1.i, %.165.i
  %i.fl = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 %i.fk) ; 4 uses
  store i32 %i.fl, ptr %i.c, align 8, !tbaa !40
  %i.fm = icmp eq i32 %i.ck, 0
  br i1 %i.fm, label %.preheader138, label %.lr.ph162

.preheader138:                                    ; preds = %get_vlc2.exit
  %i.fn = trunc i32 %.167.i to i8                 ; 9 uses
  %i.fo = zext i32 %i.ap to i64                   ; 9 uses
  %wide.trip.count282 = zext i32 %i.as to i64     ; 2 uses
  %xtraiter322 = and i64 %wide.trip.count282, 7   ; 3 uses
  %i.fp = icmp ult i32 %.3, 3
  br i1 %i.fp, label %.epil.preheader321, label %.preheader138.new

.preheader138.new:                                ; preds = %.preheader138
  %unroll_iter325 = and i64 %wide.trip.count282, 4294967288
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader138.new
  %indvars.iv279 = phi i64 [ 0, %.preheader138.new ], [ %indvars.iv.next280.7, %bb.m ] ; 9 uses
  %niter326 = phi i64 [ 0, %.preheader138.new ], [ %niter326.next.7, %bb.m ]
  %i.fq = mul nsw i64 %indvars.iv279, %.sext
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.fq
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fr, i8 %i.fn, i64 %i.fo, i1 false)
  %indvars.iv.next280 = or disjoint i64 %indvars.iv279, 1
  %i.fs = mul nsw i64 %indvars.iv.next280, %.sext
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.fs
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ft, i8 %i.fn, i64 %i.fo, i1 false)
  %indvars.iv.next280.1 = or disjoint i64 %indvars.iv279, 2
  %i.fu = mul nsw i64 %indvars.iv.next280.1, %.sext
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.fu
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fv, i8 %i.fn, i64 %i.fo, i1 false)
  %indvars.iv.next280.2 = or disjoint i64 %indvars.iv279, 3
  %i.fw = mul nsw i64 %indvars.iv.next280.2, %.sext
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.fw
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fx, i8 %i.fn, i64 %i.fo, i1 false)
  %indvars.iv.next280.3 = or disjoint i64 %indvars.iv279, 4
  %i.fy = mul nsw i64 %indvars.iv.next280.3, %.sext
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.fy
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fz, i8 %i.fn, i64 %i.fo, i1 false)
  %indvars.iv.next280.4 = or disjoint i64 %indvars.iv279, 5
  %i.ga = mul nsw i64 %indvars.iv.next280.4, %.sext
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ga
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.gb, i8 %i.fn, i64 %i.fo, i1 false)
  %indvars.iv.next280.5 = or disjoint i64 %indvars.iv279, 6
  %i.gc = mul nsw i64 %indvars.iv.next280.5, %.sext
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.gc
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.gd, i8 %i.fn, i64 %i.fo, i1 false)
  %indvars.iv.next280.6 = or disjoint i64 %indvars.iv279, 7
  %i.ge = mul nsw i64 %indvars.iv.next280.6, %.sext
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.gf, i8 %i.fn, i64 %i.fo, i1 false)
  %indvars.iv.next280.7 = add nuw nsw i64 %indvars.iv279, 8 ; 2 uses
  %niter326.next.7 = add i64 %niter326, 8         ; 2 uses
  %niter326.ncmp.7 = icmp eq i64 %niter326.next.7, %unroll_iter325
  br i1 %niter326.ncmp.7, label %.loopexit.loopexit313.unr-lcssa, label %bb.m, !llvm.loop !88

.lr.ph162:                                        ; preds = %get_vlc2.exit
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr @ff_svq1_intra_codebooks, i64 %i.at
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !43
  %i.gi = shl nuw nsw i32 %i.ck, 2                ; 2 uses
  %i.gj = lshr i32 %i.fl, 3
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 1, !tbaa !41
  %i.gn = tail call i32 @llvm.bswap.i32(i32 %i.gm)
  %i.go = and i32 %i.fl, 7
  %i.gp = shl i32 %i.gn, %i.go
  %i.gq = sub nsw i32 32, %i.gi
  %i.gr = lshr i32 %i.gp, %i.gq                   ; 2 uses
  %i.gs = add i32 %i.fl, %i.gi
  %i.gt = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 %i.gs)
  store i32 %i.gt, ptr %i.c, align 8, !tbaa !40
  %i.gu = add nuw i32 %.3, 1                      ; 2 uses
  %wide.trip.count = zext i32 %i.ck to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %.167.i132, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph162
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.gr, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert307 = insertelement <4 x i32> poison, i32 %i.gu, i64 0
  %broadcast.splat308 = shufflevector <4 x i32> %broadcast.splatinsert307, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert309 = insertelement <4 x i32> poison, i32 %i.ck, i64 0
  %broadcast.splat310 = shufflevector <4 x i32> %broadcast.splatinsert309, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind311 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next312, %vector.body ] ; 2 uses
  %i.gv = xor <4 x i32> %vec.ind, splat (i32 -1)
  %i.gw = add nsw <4 x i32> %broadcast.splat310, %i.gv
  %i.gx = shl nsw <4 x i32> %i.gw, splat (i32 2)
  %i.gy = lshr <4 x i32> %broadcast.splat, %i.gx
  %i.gz = and <4 x i32> %i.gy, splat (i32 15)
  %i.ha = shl nuw nsw <4 x i32> %vec.ind311, splat (i32 4)
  %i.hb = or disjoint <4 x i32> %i.gz, %i.ha
  %i.hc = shl <4 x i32> %i.hb, %broadcast.splat308
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index
  store <4 x i32> %i.hc, ptr %i.hd, align 16, !tbaa !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %vec.ind.next312 = add <4 x i32> %vec.ind311, splat (i32 4)
  %i.he = icmp eq i64 %index.next, %n.vec
  br i1 %i.he, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader136.us.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph162, %middle.block
  %indvars.iv236.ph = phi i64 [ 0, %.lr.ph162 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %scalar.ph ], [ %indvars.iv236.ph, %scalar.ph.preheader ] ; 4 uses
  %i.hf = trunc nuw nsw i64 %indvars.iv236 to i32
  %i.hg = xor i32 %i.hf, -1
  %i.hh = add nsw i32 %i.ck, %i.hg
  %i.hi = shl nsw i32 %i.hh, 2
  %i.hj = lshr i32 %i.gr, %i.hi
  %i.hk = and i32 %i.hj, 15
  %indvars.iv236.tr = trunc nuw nsw i64 %indvars.iv236 to i32
  %i.hl = shl nuw nsw i32 %indvars.iv236.tr, 4
  %i.hm = or disjoint i32 %i.hk, %i.hl
  %i.hn = shl i32 %i.hm, %i.gu
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv236
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !35
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next237, %wide.trip.count
  br i1 %exitcond.not, label %.preheader136.us.preheader, label %scalar.ph, !llvm.loop !90

.preheader136.us.preheader:                       ; preds = %scalar.ph, %middle.block
  %3 = shl nuw nsw i32 %i.ck, 7
  %4 = sub nsw i32 %.167.i, %3
  %5 = mul i32 %4, 65537                          ; 4 uses
  %6 = lshr i32 %i.ap, 2
  %wide.trip.count248 = zext nneg i32 %6 to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %i.hp = icmp eq i32 %i.ck, 1
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod320 = trunc i32 %i.ck to i1
  br label %.preheader136.us

.preheader136.us:                                 ; preds = %.preheader136.us.preheader, %._crit_edge173.split.us.us
  %.2106194.us = phi i32 [ %i.kb, %._crit_edge173.split.us.us ], [ 0, %.preheader136.us.preheader ]
  %.0118193.us = phi ptr [ %i.jn, %._crit_edge173.split.us.us ], [ %i.gh, %.preheader136.us.preheader ]
  %.0120189.us = phi ptr [ %i.ka, %._crit_edge173.split.us.us ], [ %i.am, %.preheader136.us.preheader ] ; 2 uses
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %bb.q, %.preheader136.us
  %indvars.iv245 = phi i64 [ %indvars.iv.next246, %bb.q ], [ 0, %.preheader136.us ] ; 2 uses
  %.1119171.us.us = phi ptr [ %i.jn, %bb.q ], [ %.0118193.us, %.preheader136.us ] ; 4 uses
  br i1 %i.hp, label %.epil.preheader, label %.preheader.us.us.new

.preheader.us.us.new:                             ; preds = %.preheader.us.us, %.preheader.us.us.new
  %indvars.iv239 = phi i64 [ %indvars.iv.next240.1, %.preheader.us.us.new ], [ 0, %.preheader.us.us ] ; 3 uses
  %.0166.us.us = phi i32 [ %i.im, %.preheader.us.us.new ], [ %5, %.preheader.us.us ]
  %.0100165.us.us = phi i32 [ %i.ik, %.preheader.us.us.new ], [ %5, %.preheader.us.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader.us.us.new ], [ 0, %.preheader.us.us ]
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv239
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !35
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [4 x i8], ptr %.1119171.us.us, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !35
  %i.hv = xor i32 %i.hu, -2139062144              ; 2 uses
  %i.hw = lshr i32 %i.hv, 8
  %i.hx = and i32 %i.hw, 16711935
  %i.hy = add i32 %i.hx, %.0100165.us.us
  %i.hz = and i32 %i.hv, 16711935
  %i.ia = add i32 %i.hz, %.0166.us.us
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv239
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !35
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %.1119171.us.us, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !35
  %i.ih = xor i32 %i.ig, -2139062144              ; 2 uses
  %i.ii = lshr i32 %i.ih, 8
  %i.ij = and i32 %i.ii, 16711935
  %i.ik = add i32 %i.ij, %i.hy                    ; 3 uses
  %i.il = and i32 %i.ih, 16711935
  %i.im = add i32 %i.il, %i.ia                    ; 3 uses
  %indvars.iv.next240.1 = add nuw nsw i64 %indvars.iv239, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge168.us.us.unr-lcssa, label %.preheader.us.us.new, !llvm.loop !91

bb.n:                                             ; preds = %._crit_edge168.us.us
  %i.in = lshr i32 %.lcssa316, 15
  %i.io = and i32 %i.in, 65537
  %i.ip = add nuw nsw i32 %i.io, 16711935
  %i.iq = add i32 %.lcssa316, 32512
  %i.ir = sub i32 -2130738945, %.lcssa316
  %i.is = lshr i32 %i.ir, 15
  %i.it = and i32 %i.is, 65537
  %i.iu = add nuw nsw i32 %i.it, 16711935
  %i.iv = or i32 %i.iu, %i.iq
  %i.iw = and i32 %i.ip, 16711935
  %i.ix = and i32 %i.iw, %i.iv
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge168.us.us, %bb.n
  %.1101.us.us = phi i32 [ %i.ix, %bb.n ], [ %.lcssa316, %._crit_edge168.us.us ]
  %i.iy = and i32 %.lcssa315, -16711936
  %.not131.us.us = icmp eq i32 %i.iy, 0
  br i1 %.not131.us.us, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.iz = lshr i32 %.lcssa315, 15
  %i.ja = and i32 %i.iz, 65537
  %i.jb = add nuw nsw i32 %i.ja, 16711935
  %i.jc = add i32 %.lcssa315, 32512
  %i.jd = sub i32 -2130738945, %.lcssa315
  %i.je = lshr i32 %i.jd, 15
  %i.jf = and i32 %i.je, 65537
  %i.jg = add nuw nsw i32 %i.jf, 16711935
  %i.jh = or i32 %i.jg, %i.jc
  %i.ji = and i32 %i.jb, 16711935
  %i.jj = and i32 %i.ji, %i.jh
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.us.us = phi i32 [ %i.jj, %bb.p ], [ %.lcssa315, %bb.o ]
  %i.jk = shl nuw i32 %.1101.us.us, 8
  %i.jl = or i32 %.1.us.us, %i.jk
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.0120189.us, i64 %indvars.iv245
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !35
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.1119171.us.us, i64 4 ; 2 uses
  %exitcond249.not = icmp eq i64 %indvars.iv.next246, %wide.trip.count248
  br i1 %exitcond249.not, label %._crit_edge173.split.us.us, label %.preheader.us.us, !llvm.loop !92

._crit_edge168.us.us.unr-lcssa:                   ; preds = %.preheader.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge168.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge168.us.us.unr-lcssa, %.preheader.us.us
  %indvars.iv239.epil.init = phi i64 [ 0, %.preheader.us.us ], [ %indvars.iv.next240.1, %._crit_edge168.us.us.unr-lcssa ]
  %.0166.us.us.epil.init = phi i32 [ %5, %.preheader.us.us ], [ %i.im, %._crit_edge168.us.us.unr-lcssa ]
  %.0100165.us.us.epil.init = phi i32 [ %5, %.preheader.us.us ], [ %i.ik, %._crit_edge168.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod320)
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv239.epil.init
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !35
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [4 x i8], ptr %.1119171.us.us, i64 %i.jq
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !35
  %i.jt = xor i32 %i.js, -2139062144              ; 2 uses
  %i.ju = lshr i32 %i.jt, 8
  %i.jv = and i32 %i.ju, 16711935
  %i.jw = add i32 %i.jv, %.0100165.us.us.epil.init
  %i.jx = and i32 %i.jt, 16711935
  %i.jy = add i32 %i.jx, %.0166.us.us.epil.init
  br label %._crit_edge168.us.us

._crit_edge168.us.us:                             ; preds = %._crit_edge168.us.us.unr-lcssa, %.epil.preheader
  %.lcssa316 = phi i32 [ %i.ik, %._crit_edge168.us.us.unr-lcssa ], [ %i.jw, %.epil.preheader ] ; 5 uses
  %.lcssa315 = phi i32 [ %i.im, %._crit_edge168.us.us.unr-lcssa ], [ %i.jy, %.epil.preheader ] ; 5 uses
  %i.jz = and i32 %.lcssa316, -16711936
  %.not130.us.us = icmp eq i32 %i.jz, 0
  br i1 %.not130.us.us, label %bb.o, label %bb.n

._crit_edge173.split.us.us:                       ; preds = %bb.q
  %i.ka = getelementptr inbounds [4 x i8], ptr %.0120189.us, i64 %.sext
  %i.kb = add nuw i32 %.2106194.us, 1             ; 2 uses
  %exitcond250.not = icmp eq i32 %i.kb, %i.as
  br i1 %exitcond250.not, label %.loopexit, label %.preheader136.us, !llvm.loop !93

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod330.not = icmp eq i64 %xtraiter328, 0
  br i1 %lcmp.mod330.not, label %.loopexit, label %.epil.preheader327

.epil.preheader327:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader137
  %indvars.iv284.epil.init = phi i64 [ 0, %.preheader137 ], [ %indvars.iv.next285.7, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod331 = icmp ne i64 %xtraiter328, 0
  tail call void @llvm.assume(i1 %lcmp.mod331)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader327
  %indvars.iv284.epil = phi i64 [ %indvars.iv284.epil.init, %.epil.preheader327 ], [ %indvars.iv.next285.epil, %bb.r ] ; 2 uses
  %epil.iter329 = phi i64 [ 0, %.epil.preheader327 ], [ %epil.iter329.next, %bb.r ]
  %i.kc = mul nsw i64 %indvars.iv284.epil, %.sext
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.kc
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.kd, i8 0, i64 %i.cm, i1 false)
  %indvars.iv.next285.epil = add nuw nsw i64 %indvars.iv284.epil, 1
  %epil.iter329.next = add i64 %epil.iter329, 1   ; 2 uses
  %epil.iter329.cmp.not = icmp eq i64 %epil.iter329.next, %xtraiter328
  br i1 %epil.iter329.cmp.not, label %.loopexit, label %bb.r, !llvm.loop !94

.loopexit.loopexit313.unr-lcssa:                  ; preds = %bb.m
  %lcmp.mod323.not = icmp eq i64 %xtraiter322, 0
  br i1 %lcmp.mod323.not, label %.loopexit, label %.epil.preheader321

.epil.preheader321:                               ; preds = %.loopexit.loopexit313.unr-lcssa, %.preheader138
  %indvars.iv279.epil.init = phi i64 [ 0, %.preheader138 ], [ %indvars.iv.next280.7, %.loopexit.loopexit313.unr-lcssa ]
  %lcmp.mod324 = icmp ne i64 %xtraiter322, 0
  tail call void @llvm.assume(i1 %lcmp.mod324)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader321
  %indvars.iv279.epil = phi i64 [ %indvars.iv279.epil.init, %.epil.preheader321 ], [ %indvars.iv.next280.epil, %bb.s ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader321 ], [ %epil.iter.next, %bb.s ]
  %i.ke = mul nsw i64 %indvars.iv279.epil, %.sext
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ke
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.kf, i8 %i.fn, i64 %i.fo, i1 false)
  %indvars.iv.next280.epil = add nuw nsw i64 %indvars.iv279.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter322
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.s, !llvm.loop !95

.loopexit:                                        ; preds = %._crit_edge173.split.us.us, %.loopexit.loopexit313.unr-lcssa, %bb.s, %.loopexit.loopexit.unr-lcssa, %bb.r
  %i.kg = add nsw i32 %.1117.lcssa, 1             ; 2 uses
  %i.kh = icmp slt i32 %i.kg, %.1109.lcssa
  br i1 %i.kh, label %.preheader141, label %bb.t, !llvm.loop !96

bb.t:                                             ; preds = %.loopexit, %bb.g
  %.0124 = phi i32 [ -1094995529, %bb.g ], [ 0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0124
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @av_frame_replace(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @av_crc_get_table(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @svq1_decode_block_non_intra(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef range(i64 -2147483648, 2147483648) %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [63 x ptr], align 16              ; 6 uses
  %i.b = alloca [6 x i32], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr %1, ptr %i.a, align 16, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !38     ; 7 uses
  %.not122 = icmp eq i32 %3, 0
  %.lhs.trunc = trunc i64 %2 to i32
  %i.f = sdiv i32 %.lhs.trunc, 4
  %.sext = sext i32 %i.f to i64                   ; 2 uses
  br label %.preheader130

.preheader130:                                    ; preds = %bb.a, %.loopexit
  %.094175 = phi i32 [ 5, %bb.a ], [ %.3, %.loopexit ] ; 3 uses
  %.099174 = phi i32 [ 1, %bb.a ], [ %.1100.lcssa, %.loopexit ] ; 2 uses
  %.0101173 = phi i32 [ 1, %bb.a ], [ %.3104, %.loopexit ] ; 2 uses
  %.0107172 = phi i32 [ 0, %bb.a ], [ %i.ly, %.loopexit ] ; 2 uses
  %i.g = icmp sgt i32 %.094175, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader130
  %i.h = sext i32 %.099174 to i64
  %i.i = sext i32 %.0107172 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv181 = phi i64 [ %i.i, %.lr.ph.preheader ], [ %indvars.iv.next182, %bb.d ] ; 3 uses
  %indvars.iv = phi i64 [ %i.h, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.195134 = phi i32 [ %.094175, %.lr.ph.preheader ], [ %.2, %bb.d ] ; 2 uses
  %.1102132 = phi i32 [ %.0101173, %.lr.ph.preheader ], [ %.2103, %bb.d ] ; 3 uses
  %i.j = trunc nsw i64 %indvars.iv181 to i32      ; 2 uses
  %i.k = icmp eq i32 %.1102132, %i.j
  %i.l = trunc nsw i64 %indvars.iv to i32         ; 4 uses
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.m = add nsw i32 %.195134, -1                 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.2103 = phi i32 [ %i.l, %bb.b ], [ %.1102132, %.lr.ph ] ; 3 uses
  %.2 = phi i32 [ %i.m, %bb.b ], [ %.195134, %.lr.ph ] ; 6 uses
  %i.o = load i32, ptr %i.c, align 8, !tbaa !40   ; 4 uses
  %i.p = lshr i32 %i.o, 3
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !41
  %i.t = load i32, ptr %i.d, align 8, !tbaa !39
  %i.u = icmp slt i32 %i.o, %i.t
  %i.v = zext i1 %i.u to i32
  %spec.select.i = add i32 %i.o, %i.v
  %i.w = zext i8 %i.s to i32
  %i.x = and i32 %i.o, 7
  store i32 %spec.select.i, ptr %i.c, align 8, !tbaa !40
  %i.y = lshr exact i32 128, %i.x
  %i.z = and i32 %i.y, %i.w
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv181
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !43 ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !43
  %i.ad = and i32 %.2, 1
  %.not121 = icmp eq i32 %i.ad, 0
  %i.ae = select i1 %.not121, i64 1, i64 %2
  %i.af = lshr i32 %.2, 1
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl i64 %i.ae, %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 %i.ai
  %indvars.iv.next = add nsw i64 %indvars.iv, 2   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ac, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !43
  %indvars.iv.next182 = add nsw i64 %indvars.iv181, 1 ; 2 uses
  %i.al = icmp sgt i32 %.2, 0
  br i1 %i.al, label %.lr.ph, label %._crit_edge.loopexit.split.loop.exit228, !llvm.loop !98

._crit_edge.loopexit.split.loop.exit228:          ; preds = %bb.d
  %indvars.le = trunc i64 %indvars.iv.next to i32
  %indvars184.le = trunc i64 %indvars.iv.next182 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b, %._crit_edge.loopexit.split.loop.exit228, %.preheader130
  %.1108.lcssa = phi i32 [ %.0107172, %.preheader130 ], [ %indvars184.le, %._crit_edge.loopexit.split.loop.exit228 ], [ %i.j, %bb.c ], [ %.1102132, %bb.b ] ; 2 uses
  %.1100.lcssa = phi i32 [ %.099174, %.preheader130 ], [ %indvars.le, %._crit_edge.loopexit.split.loop.exit228 ], [ %i.l, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %.3104 = phi i32 [ %.0101173, %.preheader130 ], [ %.2103, %._crit_edge.loopexit.split.loop.exit228 ], [ %.2103, %bb.c ], [ %i.l, %bb.b ]
  %.3 = phi i32 [ %.094175, %.preheader130 ], [ %.2, %._crit_edge.loopexit.split.loop.exit228 ], [ %.2, %bb.c ], [ 0, %bb.b ] ; 7 uses
  %i.am = sext i32 %.1108.lcssa to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !43 ; 2 uses
  %i.ap = add nsw i32 %.3, 4
  %i.aq = sdiv i32 %i.ap, 2                       ; 2 uses
  %i.ar = shl nuw i32 1, %i.aq                    ; 2 uses
  %i.as = add nsw i32 %.3, 3
  %i.at = sdiv i32 %i.as, 2
  %i.au = shl nuw i32 1, %i.at                    ; 2 uses
  %i.av = sext i32 %.3 to i64                     ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr @svq1_inter_multistage, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !49 ; 2 uses
  %i.ay = load i32, ptr %i.c, align 8, !tbaa !40  ; 4 uses
  %i.az = load i32, ptr %i.d, align 8, !tbaa !39  ; 6 uses
  %i.ba = lshr i32 %i.ay, 3
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 1, !tbaa !41
  %i.be = tail call i32 @llvm.bswap.i32(i32 %i.bd)
  %i.bf = and i32 %i.ay, 7
  %i.bg = shl i32 %i.be, %i.bf
  %i.bh = lshr i32 %i.bg, 29
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bi ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !41
  %i.bl = sext i16 %i.bk to i32                   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !41 ; 2 uses
  %i.bo = sext i16 %i.bn to i32                   ; 2 uses
  %i.bp = icmp slt i16 %i.bn, 0
  br i1 %i.bp, label %bb.e, label %get_vlc2.exit129

bb.e:                                             ; preds = %._crit_edge
  %i.bq = add i32 %i.ay, 3
  %i.br = tail call i32 @llvm.umin.i32(i32 %i.az, i32 %i.bq) ; 3 uses
  %i.bs = lshr i32 %i.br, 3
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 1, !tbaa !41
  %i.bw = tail call i32 @llvm.bswap.i32(i32 %i.bv)
  %i.bx = and i32 %i.br, 7
  %i.by = shl i32 %i.bw, %i.bx
  %i.bz = add nsw i32 %i.bo, 32
  %i.ca = lshr i32 %i.by, %i.bz
  %i.cb = add i32 %i.ca, %i.bl
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.cc ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !41
  %i.cf = sext i16 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !41
  %i.ci = sext i16 %i.ch to i32
  br label %get_vlc2.exit129

get_vlc2.exit129:                                 ; preds = %._crit_edge, %bb.e
  %.167.i126 = phi i32 [ %i.bl, %._crit_edge ], [ %i.cf, %bb.e ] ; 6 uses
  %.165.i127 = phi i32 [ %i.ay, %._crit_edge ], [ %i.br, %bb.e ]
  %.1.i128 = phi i32 [ %i.bo, %._crit_edge ], [ %i.ci, %bb.e ]
  %i.cj = add i32 %.1.i128, %.165.i127
  %i.ck = tail call i32 @llvm.umin.i32(i32 %i.az, i32 %i.cj) ; 5 uses
  store i32 %i.ck, ptr %i.c, align 8, !tbaa !40
  %i.cl = add nsw i32 %.167.i126, -1              ; 6 uses
  %i.cm = icmp eq i32 %.167.i126, 0
  br i1 %i.cm, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %get_vlc2.exit129
  %i.cn = icmp sgt i32 %.167.i126, 1              ; 3 uses
  %i.co = icmp sgt i32 %.3, 3
  %or.cond = and i1 %i.co, %i.cn
  br i1 %or.cond, label %bb.w, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cp = icmp sgt i32 %.167.i126, 0
  br i1 %i.cp, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 273) #9
  tail call void @abort() #10
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.cq = lshr i32 %i.ck, 3
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cr
end_hunk_0
