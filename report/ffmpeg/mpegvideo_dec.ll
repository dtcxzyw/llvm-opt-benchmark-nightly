Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegvideo_dec?download=true
inline.NumInlined: 81
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@alloc_picture:bb.a
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.1 = phi i32 [ %.0, %bb.e ], [ %i.x, %bb.f ], [ %i.aa, %bb.g ], [ %i.ah, %bb.h ]
  tail call void @ff_mpv_unref_picture(ptr noundef nonnull %1) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.a, %bb.i
  %.038 = phi i32 [ %.1, %bb.i ], [ -12, %bb.a ], [ 0, %bb.h ]
  ret i32 %.038
}

declare void @ff_mpv_workpic_from_pic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ff_mpv_frame_end(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.b = load i32, ptr %i.a, align 16, !tbaa !116
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  tail call void @ff_thread_progress_report(ptr noundef nonnull %i.e, i32 noundef 2147483647) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @ff_thread_progress_report(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ff_print_debug_info(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = load i32, ptr %i.h, align 8, !tbaa !119
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.k = load i32, ptr %i.j, align 4, !tbaa !120
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.m = load i32, ptr %i.l, align 8, !tbaa !121
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3772
  %i.o = load i32, ptr %i.n, align 4, !tbaa !76
  tail call void @ff_print_debug_info2(ptr noundef %i.b, ptr noundef %2, ptr noundef %i.d, ptr noundef %i.f, ptr noundef nonnull %i.g, i32 noundef %i.i, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o) #11
  ret void
}

declare void @ff_print_debug_info2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -12, 1) i32 @ff_mpv_export_qp_table(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 108 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 788
  %i.g = load i32, ptr %i.f, align 4, !tbaa !122
  %i.h = and i32 %i.g, 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.b, align 4, !tbaa !120
  %i.j = load i32, ptr %i.c, align 8, !tbaa !119
  %i.k = mul nsw i32 %i.j, %i.i
  %i.l = tail call ptr @av_video_enc_params_create_side_data(ptr noundef %1, i32 noundef 2, i32 noundef %i.k) #11 ; 5 uses
  %.not35 = icmp eq ptr %i.l, null
  br i1 %.not35, label %.loopexit, label %.preheader36

.preheader36:                                     ; preds = %bb.b
  %i.m = load i32, ptr %i.b, align 4, !tbaa !120  ; 2 uses
  %.not39 = icmp eq i32 %i.m, 0
  br i1 %.not39, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader36
  %i.n = load i32, ptr %i.c, align 8, !tbaa !119  ; 3 uses
  %.not40 = icmp eq i32 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = zext i1 %i.a to i32
  br i1 %.not40, label %.loopexit, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.t = load i32, ptr %i.l, align 8, !tbaa !123
  %i.u = zext i32 %i.t to i64
  %wide.trip.count45 = zext i32 %i.m to i64
  %wide.trip.count = zext i32 %i.n to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv42 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next43, %._crit_edge ] ; 2 uses
  %i.v = trunc nuw i64 %indvars.iv42 to i32       ; 3 uses
  %i.w = mul i32 %i.n, %i.v
  %i.x = shl i32 %i.v, 4
  %i.y = zext i32 %i.w to i64
  br label %bb.c

._crit_edge:                                      ; preds = %av_video_enc_params_block.exit
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count45
  br i1 %exitcond46.not, label %.loopexit, label %.preheader, !llvm.loop !125

bb.c:                                             ; preds = %.preheader, %av_video_enc_params_block.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %av_video_enc_params_block.exit ] ; 3 uses
  %i.z = add nuw nsw i64 %indvars.iv, %i.y        ; 2 uses
  %i.aa = icmp samesign ult i64 %i.z, %i.u
  br i1 %i.aa, label %av_video_enc_params_block.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 145) #11
  tail call void @abort() #12
  unreachable

av_video_enc_params_block.exit:                   ; preds = %bb.c
  %i.ab = load i32, ptr %i.o, align 8, !tbaa !121
  %i.ac = mul i32 %i.ab, %i.v
  %i.ad = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.ae = add i32 %i.ac, %i.ad
  %i.af = load i64, ptr %i.p, align 8, !tbaa !126
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.af
  %i.ah = load i64, ptr %i.q, align 8, !tbaa !127
  %i.ai = mul i64 %i.ah, %i.z
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 5 uses
  %i.ak = shl i32 %i.ad, 4
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !128
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %i.x, ptr %i.al, align 4, !tbaa !130
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 16, ptr %i.am, align 4, !tbaa !131
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 16, ptr %i.an, align 4, !tbaa !132
  %i.ao = load ptr, ptr %i.r, align 8, !tbaa !118
  %i.ap = zext i32 %i.ae to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !62
  %i.as = sext i8 %i.ar to i32
  %i.at = shl nsw i32 %i.as, %i.s
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i32 %i.at, ptr %i.au, align 4, !tbaa !133
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !134

.loopexit:                                        ; preds = %._crit_edge, %.preheader36, %.preheader.lr.ph, %bb.b, %bb.a
  %.0 = phi i32 [ -12, %bb.b ], [ 0, %bb.a ], [ 0, %.preheader.lr.ph ], [ 0, %.preheader36 ], [ 0, %._crit_edge ]
  ret i32 %.0
}

declare ptr @av_video_enc_params_create_side_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ff_mpeg_draw_horiz_band(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !106
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !81  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3816
  %i.k = load i32, ptr %i.j, align 8, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3884
  %i.m = load i32, ptr %i.l, align 4, !tbaa !85
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3776
  %i.o = load i32, ptr %i.n, align 16, !tbaa !78
  tail call void @ff_draw_horiz_band(ptr noundef %i.b, ptr noundef %i.e, ptr noundef %i.i, i32 noundef %1, i32 noundef %2, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o) #11
  ret void
}

declare void @ff_draw_horiz_band(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind optsize uwtable
define void @ff_mpeg_flush(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1008
  tail call void @ff_mpv_unref_picture(ptr noundef nonnull %i.c) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  tail call void @ff_mpv_unref_picture(ptr noundef nonnull %i.d) #11
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 888
  tail call void @ff_mpv_unref_picture(ptr noundef nonnull %i.e) #11
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 3108
  store <2 x i32> zeroinitializer, ptr %i.f, align 4, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 3760
  store i16 0, ptr %i.g, align 16, !tbaa !135
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_mpv_reconstruct_mb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3112 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !136
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.d = load i32, ptr %i.c, align 4, !tbaa !137
  %i.e = mul nsw i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3108
  %i.g = load i32, ptr %i.f, align 4, !tbaa !138
  %i.h = add nsw i32 %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !139
  %i.k = sext i32 %i.h to i64                     ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 17 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !140
  %i.o = trunc i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !141
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.k
  store i8 %i.o, ptr %i.r, align 1, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.t = load i32, ptr %i.s, align 16, !tbaa !103
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.s, align 16, !tbaa !103
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.v = load i32, ptr %i.u, align 16, !tbaa !116
  %.not24 = icmp eq i32 %i.v, 0
  %. = zext i1 %.not24 to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ %., %bb.c ], [ 1, %bb.b ]
  store i8 %.sink, ptr %i.l, align 1, !tbaa !62
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 5 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !9    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 524
  %i.z = load i32, ptr %i.y, align 4, !tbaa !112
  %i.aa = and i32 %i.z, 64
  %.not25 = icmp eq i32 %i.aa, 0
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @debug_dct_coeffs(ptr noundef nonnull %0, ptr noundef %1) #13
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = phi ptr [ %.pre, %bb.e ], [ %i.x, %bb.d ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 720
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !142 ; 2 uses
  %.not26 = icmp eq i32 %i.ad, 0
  br i1 %.not26, label %bb.g, label %bb.ch

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !143
  %i.ag = icmp ult i32 %i.af, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !98 ; 21 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !98 ; 22 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.am = load ptr, ptr %i.al, align 16, !tbaa !98 ; 22 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !77
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.ar = load i64, ptr %i.aq, align 16, !tbaa !77 ; 9 uses
  %i.as = trunc i64 %i.ar to i32                  ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3880 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !144 ; 2 uses
  %i.av = shl i32 %i.ap, %i.au                    ; 16 uses
  %.not.i40 = icmp eq i32 %i.au, 0
  %i.aw = select i1 %.not.i40, i32 3, i32 0
  %i.ax = shl i32 %i.ap, %i.aw                    ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3116
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !145
  %.not343.i41 = icmp eq i32 %i.az, 0             ; 2 uses
  br i1 %i.ag, label %bb.h, label %bb.al

bb.h:                                             ; preds = %bb.g
  br i1 %.not343.i41, label %bb.i, label %bb.ah

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1888 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2728 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !146 ; 2 uses
  %i.be = and i32 %i.bd, 1
  %.not349.i48 = icmp eq i32 %i.be, 0
  br i1 %.not349.i48, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call void @ff_mpv_motion(ptr noundef nonnull %0, ptr noundef %i.ai, ptr noundef %i.ak, ptr noundef %i.am, i32 noundef 0, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb) #11
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2144
  %.pre158 = load i32, ptr %i.bc, align 8, !tbaa !146
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bi = phi i32 [ %.pre158, %bb.j ], [ %i.bd, %bb.i ]
  %.1339.i49 = phi ptr [ %i.bg, %bb.j ], [ %i.ba, %bb.i ]
  %.1.i50 = phi ptr [ %i.bh, %bb.j ], [ %i.bb, %bb.i ]
  %i.bj = and i32 %i.bi, 2
  %.not350.i51 = icmp eq i32 %i.bj, 0
  br i1 %.not350.i51, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 888
  tail call void @ff_mpv_motion(ptr noundef nonnull %0, ptr noundef %i.ai, ptr noundef %i.ak, ptr noundef %i.am, i32 noundef 1, ptr noundef nonnull %i.bk, ptr noundef nonnull %.1339.i49, ptr noundef nonnull %.1.i50) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bl = load ptr, ptr %i.w, align 8, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 700
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !147 ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 7
  br i1 %i.bo, label %bb.n, label %.thread125

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.bq = load i32, ptr %i.bp, align 16, !tbaa !82 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 3
  br i1 %i.br, label %mpv_reconstruct_mb_internal.exit57, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = icmp samesign ugt i32 %i.bn, 31
  br i1 %i.bs, label %bb.p, label %.thread125

bb.p:                                             ; preds = %bb.o
  %.not354.i56 = icmp ne i32 %i.bq, 1
  %i.bt = icmp samesign ugt i32 %i.bn, 47
  %or.cond132 = select i1 %.not354.i56, i1 true, i1 %i.bt
  br i1 %or.cond132, label %mpv_reconstruct_mb_internal.exit57, label %.thread125

.thread125:                                       ; preds = %bb.p, %bb.o, %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !37
  %i.bw = icmp sgt i32 %i.bv, -1
  br i1 %i.bw, label %bb.q, label %add_dct.exit

bb.q:                                             ; preds = %.thread125
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.by = load ptr, ptr %i.bx, align 16, !tbaa !148
  %i.bz = sext i32 %i.av to i64
  tail call void %i.by(ptr noundef %i.ai, i64 noundef %i.bz, ptr noundef %1) #11, !inline_history !149
  br label %add_dct.exit

add_dct.exit:                                     ; preds = %.thread125, %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !37
  %i.cc = icmp sgt i32 %i.cb, -1
  br i1 %i.cc, label %bb.r, label %add_dct.exit58

bb.r:                                             ; preds = %add_dct.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.cf = load ptr, ptr %i.ce, align 16, !tbaa !148
  %i.cg = sext i32 %i.av to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void %i.cf(ptr noundef nonnull %i.cd, i64 noundef %i.cg, ptr noundef nonnull %i.ch) #11, !inline_history !149
  br label %add_dct.exit58

add_dct.exit58:                                   ; preds = %add_dct.exit, %bb.r
  %i.ci = sext i32 %i.ax to i64
  %i.cj = getelementptr inbounds i8, ptr %i.ai, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !37
  %i.cm = icmp sgt i32 %i.cl, -1
  br i1 %i.cm, label %bb.s, label %add_dct.exit59

bb.s:                                             ; preds = %add_dct.exit58
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.co = load ptr, ptr %i.cn, align 16, !tbaa !148
  %i.cp = sext i32 %i.av to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void %i.co(ptr noundef %i.cj, i64 noundef %i.cp, ptr noundef nonnull %i.cq) #11, !inline_history !149
  br label %add_dct.exit59

add_dct.exit59:                                   ; preds = %add_dct.exit58, %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cs = load i32, ptr %i.cr, align 16, !tbaa !37
  %i.ct = icmp sgt i32 %i.cs, -1
  br i1 %i.ct, label %bb.t, label %add_dct.exit60

bb.t:                                             ; preds = %add_dct.exit59
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.cw = load ptr, ptr %i.cv, align 16, !tbaa !148
  %i.cx = sext i32 %i.av to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 384
  tail call void %i.cw(ptr noundef nonnull %i.cu, i64 noundef %i.cx, ptr noundef nonnull %i.cy) #11, !inline_history !149
  br label %add_dct.exit60

add_dct.exit60:                                   ; preds = %add_dct.exit59, %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 3864
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !150
  %.not357.i53 = icmp eq i32 %i.da, 0
  br i1 %.not357.i53, label %bb.x, label %bb.u

bb.u:                                             ; preds = %add_dct.exit60
end_hunk_0
begin_hunk_1_@ff_mpv_reconstruct_mb:bb.a
  %i.qr = load i32, ptr %i.m, align 8, !tbaa !140
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 3888 ; 10 uses
  %i.qt = load ptr, ptr %i.qs, align 16, !tbaa !160
  tail call void %i.qt(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef %i.qr) #11, !inline_history !161
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 1800 ; 10 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !152
  %i.qw = sext i32 %i.av to i64                   ; 4 uses
  tail call void %i.qv(ptr noundef %i.ai, i64 noundef %i.qw, ptr noundef %1) #11, !inline_history !161
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.qz = load i32, ptr %i.m, align 8, !tbaa !140
  %i.ra = load ptr, ptr %i.qs, align 16, !tbaa !160
  tail call void %i.ra(ptr noundef nonnull %0, ptr noundef nonnull %i.qx, i32 noundef 1, i32 noundef %i.qz) #11, !inline_history !161
  %i.rb = load ptr, ptr %i.qu, align 8, !tbaa !152
  tail call void %i.rb(ptr noundef nonnull %i.qy, i64 noundef %i.qw, ptr noundef nonnull %i.qx) #11, !inline_history !161
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.rd = sext i32 %i.ax to i64
  %i.re = getelementptr inbounds i8, ptr %i.ai, i64 %i.rd ; 2 uses
  %i.rf = load i32, ptr %i.m, align 8, !tbaa !140
  %i.rg = load ptr, ptr %i.qs, align 16, !tbaa !160
  tail call void %i.rg(ptr noundef nonnull %0, ptr noundef nonnull %i.rc, i32 noundef 2, i32 noundef %i.rf) #11, !inline_history !161
  %i.rh = load ptr, ptr %i.qu, align 8, !tbaa !152
  tail call void %i.rh(ptr noundef %i.re, i64 noundef %i.qw, ptr noundef nonnull %i.rc) #11, !inline_history !161
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.rk = load i32, ptr %i.m, align 8, !tbaa !140
  %i.rl = load ptr, ptr %i.qs, align 16, !tbaa !160
  tail call void %i.rl(ptr noundef nonnull %0, ptr noundef nonnull %i.ri, i32 noundef 3, i32 noundef %i.rk) #11, !inline_history !161
  %i.rm = load ptr, ptr %i.qu, align 8, !tbaa !152
  tail call void %i.rm(ptr noundef nonnull %i.rj, i64 noundef %i.qw, ptr noundef nonnull %i.ri) #11, !inline_history !161
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 3864
  %i.ro = load i32, ptr %i.rn, align 8, !tbaa !150
  %.not362.i29 = icmp eq i32 %i.ro, 0
  br i1 %.not362.i29, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 1276 ; 2 uses
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !158
  %i.rs = load ptr, ptr %i.qs, align 16, !tbaa !160
  tail call void %i.rs(ptr noundef nonnull %0, ptr noundef nonnull %i.rp, i32 noundef 4, i32 noundef %i.rr) #11, !inline_history !161
  %i.rt = load ptr, ptr %i.qu, align 8, !tbaa !152
  %sext141 = shl i64 %i.ar, 32
  %i.ru = ashr exact i64 %sext141, 32             ; 2 uses
  tail call void %i.rt(ptr noundef %i.ak, i64 noundef %i.ru, ptr noundef nonnull %i.rp) #11, !inline_history !161
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  %i.rw = load i32, ptr %i.rq, align 4, !tbaa !158
  %i.rx = load ptr, ptr %i.qs, align 16, !tbaa !160
  tail call void %i.rx(ptr noundef nonnull %0, ptr noundef nonnull %i.rv, i32 noundef 5, i32 noundef %i.rw) #11, !inline_history !161
  %i.ry = load ptr, ptr %i.qu, align 8, !tbaa !152
  tail call void %i.ry(ptr noundef %i.am, i64 noundef %i.ru, ptr noundef nonnull %i.rv) #11, !inline_history !161
  br label %mpv_reconstruct_mb_internal.exit57

bb.cg:                                            ; preds = %bb.ce
  %i.rz = ashr i32 %i.ax, 1
  %i.sa = ashr i32 %i.av, 1
  %i.sb = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 1276 ; 4 uses
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !158
  %i.se = load ptr, ptr %i.qs, align 16, !tbaa !160
  tail call void %i.se(ptr noundef nonnull %0, ptr noundef nonnull %i.sb, i32 noundef 4, i32 noundef %i.sd) #11, !inline_history !161
  %i.sf = load ptr, ptr %i.qu, align 8, !tbaa !152
  %i.sg = sext i32 %i.sa to i64                   ; 4 uses
  tail call void %i.sf(ptr noundef %i.ak, i64 noundef %i.sg, ptr noundef nonnull %i.sb) #11, !inline_history !161
  %i.sh = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  %i.si = load i32, ptr %i.sc, align 4, !tbaa !158
  %i.sj = load ptr, ptr %i.qs, align 16, !tbaa !160
  tail call void %i.sj(ptr noundef nonnull %0, ptr noundef nonnull %i.sh, i32 noundef 5, i32 noundef %i.si) #11, !inline_history !161
  %i.sk = load ptr, ptr %i.qu, align 8, !tbaa !152
  tail call void %i.sk(ptr noundef %i.am, i64 noundef %i.sg, ptr noundef nonnull %i.sh) #11, !inline_history !161
  %i.sl = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  %i.sm = sext i32 %i.rz to i64                   ; 2 uses
  %i.sn = getelementptr inbounds i8, ptr %i.ak, i64 %i.sm
  %i.so = load i32, ptr %i.sc, align 4, !tbaa !158
  %i.sp = load ptr, ptr %i.qs, align 16, !tbaa !160
  tail call void %i.sp(ptr noundef nonnull %0, ptr noundef nonnull %i.sl, i32 noundef 6, i32 noundef %i.so) #11, !inline_history !161
  %i.sq = load ptr, ptr %i.qu, align 8, !tbaa !152
  tail call void %i.sq(ptr noundef %i.sn, i64 noundef %i.sg, ptr noundef nonnull %i.sl) #11, !inline_history !161
  %i.sr = getelementptr inbounds nuw i8, ptr %1, i64 896 ; 2 uses
  %i.ss = getelementptr inbounds i8, ptr %i.am, i64 %i.sm
  %i.st = load i32, ptr %i.sc, align 4, !tbaa !158
  %i.su = load ptr, ptr %i.qs, align 16, !tbaa !160
  tail call void %i.su(ptr noundef nonnull %0, ptr noundef nonnull %i.sr, i32 noundef 7, i32 noundef %i.st) #11, !inline_history !161
  %i.sv = load ptr, ptr %i.qu, align 8, !tbaa !152
  tail call void %i.sv(ptr noundef %i.ss, i64 noundef %i.sg, ptr noundef nonnull %i.sr) #11, !inline_history !161
  br label %mpv_reconstruct_mb_internal.exit57

bb.ch:                                            ; preds = %bb.f
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.sx = load ptr, ptr %i.sw, align 16, !tbaa !98 ; 15 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !98 ; 15 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.tb = load ptr, ptr %i.ta, align 16, !tbaa !98 ; 15 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !77
  %i.te = trunc i64 %i.td to i32                  ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.tg = load i64, ptr %i.tf, align 16, !tbaa !77 ; 7 uses
  %i.th = trunc i64 %i.tg to i32                  ; 5 uses
  %i.ti = lshr i32 8, %i.ad                       ; 8 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 3880 ; 3 uses
  %i.tk = load i32, ptr %i.tj, align 8, !tbaa !144 ; 2 uses
  %i.tl = shl i32 %i.te, %i.tk                    ; 12 uses
  %.not.i = icmp eq i32 %i.tk, 0
  %i.tm = select i1 %.not.i, i32 %i.ti, i32 1
  %i.tn = mul nsw i32 %i.tm, %i.te                ; 6 uses
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 3116
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !145
  %.not343.i = icmp eq i32 %i.tp, 0
  br i1 %.not343.i, label %bb.ci, label %bb.ee

bb.ci:                                            ; preds = %bb.ch
  %i.tq = getelementptr inbounds nuw i8, ptr %i.ab, i64 664
  %i.tr = load i32, ptr %i.tq, align 8, !tbaa !154
  %i.ts = and i32 %i.tr, 1
  %.not345.i = icmp eq i32 %i.ts, 0
  br i1 %.not345.i, label %bb.cx, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 2728 ; 2 uses
  %i.tu = load i32, ptr %i.tt, align 8, !tbaa !146 ; 2 uses
  %i.tv = and i32 %i.tu, 1
  %.not346.i = icmp eq i32 %i.tv, 0
  br i1 %.not346.i, label %bb.cq, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.tx = load ptr, ptr %i.tw, align 16, !tbaa !81
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 144
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 3772
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !76
  %.not.i90 = icmp eq i32 %i.ua, 0
  %i.ub = zext i1 %.not.i90 to i32
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 3816
  %i.ud = load i32, ptr %i.uc, align 8, !tbaa !84
  %.not31.i = icmp eq i32 %i.ud, 3
  br i1 %.not31.i, label %bb.cl, label %bb.cp

bb.cl:                                            ; preds = %bb.ck
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 3768
  %i.uf = load i32, ptr %i.ue, align 8, !tbaa !162
  %.not32.i = icmp eq i32 %i.uf, 0
  br i1 %.not32.i, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 2732
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !163 ; 2 uses
  %i.ui = icmp ult i32 %i.uh, 3
  br i1 %i.ui, label %switch.lookup, label %bb.cp

switch.lookup:                                    ; preds = %bb.cm
  %i.uj = zext nneg i32 %i.uh to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.lowest_referenced_row, i64 %i.uj
  %switch.load = load i8, ptr %switch.gep, align 1 ; 2 uses
  %switch.ext = zext i8 %switch.load to i64       ; 2 uses
  %xtraiter = and i64 %switch.ext, 3              ; 3 uses
  %i.uk = add i8 %switch.load, -1
  %i.ul = icmp ult i8 %i.uk, 3
  br i1 %i.ul, label %.epil.preheader, label %switch.lookup.new

switch.lookup.new:                                ; preds = %switch.lookup
  %unroll_iter = and i64 %switch.ext, 252
  br label %bb.co

.unr-lcssa:                                       ; preds = %bb.co
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %switch.lookup
  %indvars.iv.i.epil.init = phi i64 [ 0, %switch.lookup ], [ %indvars.iv.next.i.3, %.unr-lcssa ]
  %.02934.i.epil.init = phi i32 [ 2147483647, %switch.lookup ], [ %i.vv, %.unr-lcssa ]
  %.03033.i.epil.init = phi i32 [ -2147483648, %switch.lookup ], [ %i.vu, %.unr-lcssa ]
  %lcmp.mod185 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod185)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cn, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.cn ] ; 2 uses
  %.02934.i.epil = phi i32 [ %.02934.i.epil.init, %.epil.preheader ], [ %i.uq, %bb.cn ]
  %.03033.i.epil = phi i32 [ %.03033.i.epil.init, %.epil.preheader ], [ %i.up, %bb.cn ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cn ]
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i.epil
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 2740
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !37 ; 2 uses
  %i.up = tail call i32 @llvm.smax.i32(i32 %.03033.i.epil, i32 %i.uo) ; 2 uses
  %i.uq = tail call i32 @llvm.smin.i32(i32 %.02934.i.epil, i32 %i.uo) ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.cn, !llvm.loop !164

.epilog-lcssa:                                    ; preds = %bb.cn, %.unr-lcssa
  %.lcssa182 = phi i32 [ %i.vu, %.unr-lcssa ], [ %i.up, %bb.cn ]
  %.lcssa181 = phi i32 [ %i.vv, %.unr-lcssa ], [ %i.uq, %bb.cn ]
  %i.ur = sub nsw i32 0, %.lcssa181
  %i.us = tail call i32 @llvm.smax.i32(i32 %.lcssa182, i32 %i.ur)
  %i.ut = shl i32 %i.us, %i.ub
  %i.uu = add nsw i32 %i.ut, 63
  %i.uv = ashr i32 %i.uu, 6
  %i.uw = load i32, ptr %i.a, align 8, !tbaa !136
  %i.ux = add nsw i32 %i.uw, %i.uv                ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.uz = load i32, ptr %i.uy, align 8, !tbaa !115
  %i.va = add nsw i32 %i.uz, -1
  %i.vb = icmp slt i32 %i.ux, 0
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.ux, i32 %i.va)
  %.0.i.i = select i1 %i.vb, i32 0, i32 %..i.i
  br label %lowest_referenced_row.exit

bb.co:                                            ; preds = %bb.co, %switch.lookup.new
  %indvars.iv.i = phi i64 [ 0, %switch.lookup.new ], [ %indvars.iv.next.i.3, %bb.co ] ; 5 uses
  %.02934.i = phi i32 [ 2147483647, %switch.lookup.new ], [ %i.vv, %bb.co ]
  %.03033.i = phi i32 [ -2147483648, %switch.lookup.new ], [ %i.vu, %bb.co ]
  %niter = phi i64 [ 0, %switch.lookup.new ], [ %niter.next.3, %bb.co ]
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 2740
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !37 ; 2 uses
  %i.vf = tail call i32 @llvm.smax.i32(i32 %.03033.i, i32 %i.ve)
  %i.vg = tail call i32 @llvm.smin.i32(i32 %.02934.i, i32 %i.ve)
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 2748
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !37 ; 2 uses
  %i.vk = tail call i32 @llvm.smax.i32(i32 %i.vf, i32 %i.vj)
  %i.vl = tail call i32 @llvm.smin.i32(i32 %i.vg, i32 %i.vj)
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 2756
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !37 ; 2 uses
  %i.vp = tail call i32 @llvm.smax.i32(i32 %i.vk, i32 %i.vo)
  %i.vq = tail call i32 @llvm.smin.i32(i32 %i.vl, i32 %i.vo)
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 2764
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !37 ; 2 uses
  %i.vu = tail call i32 @llvm.smax.i32(i32 %i.vp, i32 %i.vt) ; 3 uses
  %i.vv = tail call i32 @llvm.smin.i32(i32 %i.vq, i32 %i.vt) ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.co, !llvm.loop !165

bb.cp:                                            ; preds = %bb.cm, %bb.cl, %bb.ck
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.vx = load i32, ptr %i.vw, align 8, !tbaa !115
  %i.vy = add nsw i32 %i.vx, -1
  br label %lowest_referenced_row.exit

lowest_referenced_row.exit:                       ; preds = %.epilog-lcssa, %bb.cp
  %.0.i91 = phi i32 [ %i.vy, %bb.cp ], [ %.0.i.i, %.epilog-lcssa ]
  tail call void @ff_thread_progress_await(ptr noundef nonnull %i.ty, i32 noundef %.0.i91) #11
  %.pre154 = load i32, ptr %i.tt, align 8, !tbaa !146
  br label %bb.cq

bb.cq:                                            ; preds = %lowest_referenced_row.exit, %bb.cj
  %i.vz = phi i32 [ %.pre154, %lowest_referenced_row.exit ], [ %i.tu, %bb.cj ]
  %i.wa = and i32 %i.vz, 2
  %.not347.i = icmp eq i32 %i.wa, 0
  br i1 %.not347.i, label %bb.cx, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !83
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 144
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 3772
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !76
  %.not.i92 = icmp eq i32 %i.wf, 0
  %i.wg = zext i1 %.not.i92 to i32
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 3816
  %i.wi = load i32, ptr %i.wh, align 8, !tbaa !84
  %.not31.i93 = icmp eq i32 %i.wi, 3
  br i1 %.not31.i93, label %bb.cs, label %bb.cw

bb.cs:                                            ; preds = %bb.cr
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 3768
  %i.wk = load i32, ptr %i.wj, align 8, !tbaa !162
  %.not32.i95 = icmp eq i32 %i.wk, 0
  br i1 %.not32.i95, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %bb.cs
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 2732
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !163 ; 2 uses
  %i.wn = icmp ult i32 %i.wm, 3
  br i1 %i.wn, label %switch.lookup176, label %bb.cw

switch.lookup176:                                 ; preds = %bb.ct
  %i.wo = zext nneg i32 %i.wm to i64
  %switch.gep177 = getelementptr inbounds nuw i8, ptr @switch.table.lowest_referenced_row, i64 %i.wo
  %switch.load178 = load i8, ptr %switch.gep177, align 1 ; 2 uses
  %switch.ext179 = zext i8 %switch.load178 to i64 ; 2 uses
  %xtraiter188 = and i64 %switch.ext179, 3        ; 3 uses
  %i.wp = add i8 %switch.load178, -1
  %i.wq = icmp ult i8 %i.wp, 3
  br i1 %i.wq, label %.epil.preheader187, label %switch.lookup176.new

switch.lookup176.new:                             ; preds = %switch.lookup176
  %unroll_iter195 = and i64 %switch.ext179, 252
  br label %bb.cv

.unr-lcssa186:                                    ; preds = %bb.cv
  %lcmp.mod190.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod190.not, label %.epilog-lcssa191, label %.epil.preheader187

.epil.preheader187:                               ; preds = %.unr-lcssa186, %switch.lookup176
  %indvars.iv.i97.epil.init = phi i64 [ 0, %switch.lookup176 ], [ %indvars.iv.next.i100.3, %.unr-lcssa186 ]
  %.02934.i98.epil.init = phi i32 [ 2147483647, %switch.lookup176 ], [ %i.ya, %.unr-lcssa186 ]
  %.03033.i99.epil.init = phi i32 [ -2147483648, %switch.lookup176 ], [ %i.xz, %.unr-lcssa186 ]
  %lcmp.mod194 = icmp ne i64 %xtraiter188, 0
  tail call void @llvm.assume(i1 %lcmp.mod194)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cu, %.epil.preheader187
  %indvars.iv.i97.epil = phi i64 [ %indvars.iv.i97.epil.init, %.epil.preheader187 ], [ %indvars.iv.next.i100.epil, %bb.cu ] ; 2 uses
  %.02934.i98.epil = phi i32 [ %.02934.i98.epil.init, %.epil.preheader187 ], [ %i.wv, %bb.cu ]
  %.03033.i99.epil = phi i32 [ %.03033.i99.epil.init, %.epil.preheader187 ], [ %i.wu, %bb.cu ]
  %epil.iter189 = phi i64 [ 0, %.epil.preheader187 ], [ %epil.iter189.next, %bb.cu ]
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i97.epil
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 2772
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !37 ; 2 uses
  %i.wu = tail call i32 @llvm.smax.i32(i32 %.03033.i99.epil, i32 %i.wt) ; 2 uses
  %i.wv = tail call i32 @llvm.smin.i32(i32 %.02934.i98.epil, i32 %i.wt) ; 2 uses
  %indvars.iv.next.i100.epil = add nuw nsw i64 %indvars.iv.i97.epil, 1
  %epil.iter189.next = add i64 %epil.iter189, 1   ; 2 uses
  %epil.iter189.cmp.not = icmp eq i64 %epil.iter189.next, %xtraiter188
  br i1 %epil.iter189.cmp.not, label %.epilog-lcssa191, label %bb.cu, !llvm.loop !166

.epilog-lcssa191:                                 ; preds = %bb.cu, %.unr-lcssa186
  %.lcssa180 = phi i32 [ %i.xz, %.unr-lcssa186 ], [ %i.wu, %bb.cu ]
  %.lcssa = phi i32 [ %i.ya, %.unr-lcssa186 ], [ %i.wv, %bb.cu ]
  %i.ww = sub nsw i32 0, %.lcssa
  %i.wx = tail call i32 @llvm.smax.i32(i32 %.lcssa180, i32 %i.ww)
  %i.wy = shl i32 %i.wx, %i.wg
  %i.wz = add nsw i32 %i.wy, 63
  %i.xa = ashr i32 %i.wz, 6
  %i.xb = load i32, ptr %i.a, align 8, !tbaa !136
  %i.xc = add nsw i32 %i.xb, %i.xa                ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.xe = load i32, ptr %i.xd, align 8, !tbaa !115
  %i.xf = add nsw i32 %i.xe, -1
  %i.xg = icmp slt i32 %i.xc, 0
  %..i.i102 = tail call i32 @llvm.smin.i32(i32 %i.xc, i32 %i.xf)
  %.0.i.i103 = select i1 %i.xg, i32 0, i32 %..i.i102
  br label %lowest_referenced_row.exit104

bb.cv:                                            ; preds = %bb.cv, %switch.lookup176.new
  %indvars.iv.i97 = phi i64 [ 0, %switch.lookup176.new ], [ %indvars.iv.next.i100.3, %bb.cv ] ; 5 uses
  %.02934.i98 = phi i32 [ 2147483647, %switch.lookup176.new ], [ %i.ya, %bb.cv ]
  %.03033.i99 = phi i32 [ -2147483648, %switch.lookup176.new ], [ %i.xz, %bb.cv ]
  %niter196 = phi i64 [ 0, %switch.lookup176.new ], [ %niter196.next.3, %bb.cv ]
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i97
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 2772
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !37 ; 2 uses
  %i.xk = tail call i32 @llvm.smax.i32(i32 %.03033.i99, i32 %i.xj)
  %i.xl = tail call i32 @llvm.smin.i32(i32 %.02934.i98, i32 %i.xj)
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i97
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 2780
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !37 ; 2 uses
  %i.xp = tail call i32 @llvm.smax.i32(i32 %i.xk, i32 %i.xo)
  %i.xq = tail call i32 @llvm.smin.i32(i32 %i.xl, i32 %i.xo)
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i97
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 2788
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !37 ; 2 uses
  %i.xu = tail call i32 @llvm.smax.i32(i32 %i.xp, i32 %i.xt)
  %i.xv = tail call i32 @llvm.smin.i32(i32 %i.xq, i32 %i.xt)
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i97
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 2796
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !37 ; 2 uses
  %i.xz = tail call i32 @llvm.smax.i32(i32 %i.xu, i32 %i.xy) ; 3 uses
  %i.ya = tail call i32 @llvm.smin.i32(i32 %i.xv, i32 %i.xy) ; 3 uses
  %indvars.iv.next.i100.3 = add nuw nsw i64 %indvars.iv.i97, 4 ; 2 uses
  %niter196.next.3 = add i64 %niter196, 4         ; 2 uses
  %niter196.ncmp.3 = icmp eq i64 %niter196.next.3, %unroll_iter195
  br i1 %niter196.ncmp.3, label %.unr-lcssa186, label %bb.cv, !llvm.loop !165

bb.cw:                                            ; preds = %bb.ct, %bb.cs, %bb.cr
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.yc = load i32, ptr %i.yb, align 8, !tbaa !115
  %i.yd = add nsw i32 %i.yc, -1
  br label %lowest_referenced_row.exit104

lowest_referenced_row.exit104:                    ; preds = %.epilog-lcssa191, %bb.cw
  %.0.i94 = phi i32 [ %i.yd, %bb.cw ], [ %.0.i.i103, %.epilog-lcssa191 ]
  tail call void @ff_thread_progress_await(ptr noundef nonnull %i.wd, i32 noundef %.0.i94) #11
  br label %bb.cx

bb.cx:                                            ; preds = %lowest_referenced_row.exit104, %bb.cq, %bb.ci
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 2728 ; 2 uses
  %i.yg = load i32, ptr %i.yf, align 8, !tbaa !146 ; 2 uses
  %i.yh = and i32 %i.yg, 1
  %.not351.i = icmp eq i32 %i.yh, 0
  br i1 %.not351.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call fastcc void @MPV_motion_lowres(ptr noundef nonnull %0, ptr noundef %i.sx, ptr noundef %i.sz, ptr noundef %i.tb, i32 noundef 0, ptr noundef nonnull %i.yi, ptr noundef nonnull %i.ye)
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %.pre155 = load i32, ptr %i.yf, align 8, !tbaa !146
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.yk = phi i32 [ %.pre155, %bb.cy ], [ %i.yg, %bb.cx ]
  %.0340.i = phi ptr [ %i.yj, %bb.cy ], [ %i.ye, %bb.cx ]
  %i.yl = and i32 %i.yk, 2
  %.not352.i = icmp eq i32 %i.yl, 0
  br i1 %.not352.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 888
  tail call fastcc void @MPV_motion_lowres(ptr noundef nonnull %0, ptr noundef %i.sx, ptr noundef %i.sz, ptr noundef %i.tb, i32 noundef 1, ptr noundef nonnull %i.ym, ptr noundef nonnull %.0340.i)
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.yn = load ptr, ptr %i.w, align 8, !tbaa !9
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 700
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !147 ; 3 uses
  %i.yq = icmp sgt i32 %i.yp, 7
  br i1 %i.yq, label %bb.dc, label %.thread131

bb.dc:                                            ; preds = %bb.db
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.ys = load i32, ptr %i.yr, align 16, !tbaa !82 ; 2 uses
  %i.yt = icmp eq i32 %i.ys, 3
  br i1 %i.yt, label %mpv_reconstruct_mb_internal.exit57, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.yu = icmp samesign ugt i32 %i.yp, 31
  br i1 %i.yu, label %bb.de, label %.thread131

bb.de:                                            ; preds = %bb.dd
  %.not354.i = icmp ne i32 %i.ys, 1
  %i.yv = icmp samesign ugt i32 %i.yp, 47
  %or.cond136 = select i1 %.not354.i, i1 true, i1 %i.yv
  br i1 %or.cond136, label %mpv_reconstruct_mb_internal.exit57, label %.thread131

.thread131:                                       ; preds = %bb.de, %bb.dd, %bb.db
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 3896 ; 6 uses
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !156 ; 2 uses
  %.not355.i = icmp eq ptr %i.yx, null
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !37
  %i.za = icmp sgt i32 %i.yz, -1                  ; 2 uses
  br i1 %.not355.i, label %bb.dm, label %bb.df

bb.df:                                            ; preds = %.thread131
  br i1 %i.za, label %bb.dg, label %add_dequant_dct.exit105

bb.dg:                                            ; preds = %bb.df
  %i.zb = load i32, ptr %i.m, align 8, !tbaa !140
  tail call void %i.yx(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef %i.zb) #11, !inline_history !157
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.zd = load ptr, ptr %i.zc, align 16, !tbaa !148
  %i.ze = sext i32 %i.tl to i64
  tail call void %i.zd(ptr noundef %i.sx, i64 noundef %i.ze, ptr noundef %1) #11, !inline_history !157
  br label %add_dequant_dct.exit105

add_dequant_dct.exit105:                          ; preds = %bb.df, %bb.dg
  %i.zf = zext nneg i32 %i.ti to i64              ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.zh = load i32, ptr %i.zg, align 8, !tbaa !37
  %i.zi = icmp sgt i32 %i.zh, -1
  br i1 %i.zi, label %bb.dh, label %add_dequant_dct.exit106

bb.dh:                                            ; preds = %add_dequant_dct.exit105
  %i.zj = load i32, ptr %i.m, align 8, !tbaa !140
  %i.zk = getelementptr inbounds nuw i8, ptr %i.sx, i64 %i.zf
  %i.zl = load ptr, ptr %i.yw, align 8, !tbaa !156
  %i.zm = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  tail call void %i.zl(ptr noundef nonnull %0, ptr noundef nonnull %i.zm, i32 noundef 1, i32 noundef %i.zj) #11, !inline_history !157
  %i.zn = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.zo = load ptr, ptr %i.zn, align 16, !tbaa !148
  %i.zp = sext i32 %i.tl to i64
  tail call void %i.zo(ptr noundef %i.zk, i64 noundef %i.zp, ptr noundef nonnull %i.zm) #11, !inline_history !157
  br label %add_dequant_dct.exit106

add_dequant_dct.exit106:                          ; preds = %add_dequant_dct.exit105, %bb.dh
  %i.zq = sext i32 %i.tn to i64
  %i.zr = getelementptr inbounds i8, ptr %i.sx, i64 %i.zq ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !37
  %i.zu = icmp sgt i32 %i.zt, -1
  br i1 %i.zu, label %bb.di, label %add_dequant_dct.exit107

bb.di:                                            ; preds = %add_dequant_dct.exit106
  %i.zv = load i32, ptr %i.m, align 8, !tbaa !140
  %i.zw = load ptr, ptr %i.yw, align 8, !tbaa !156
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  tail call void %i.zw(ptr noundef nonnull %0, ptr noundef nonnull %i.zx, i32 noundef 2, i32 noundef %i.zv) #11, !inline_history !157
  %i.zy = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.zz = load ptr, ptr %i.zy, align 16, !tbaa !148
  %i.aaa = sext i32 %i.tl to i64
  tail call void %i.zz(ptr noundef %i.zr, i64 noundef %i.aaa, ptr noundef nonnull %i.zx) #11, !inline_history !157
  br label %add_dequant_dct.exit107

add_dequant_dct.exit107:                          ; preds = %add_dequant_dct.exit106, %bb.di
  %i.aab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aac = load i32, ptr %i.aab, align 16, !tbaa !37
  %i.aad = icmp sgt i32 %i.aac, -1
  br i1 %i.aad, label %bb.dj, label %add_dequant_dct.exit108

bb.dj:                                            ; preds = %add_dequant_dct.exit107
  %i.aae = load i32, ptr %i.m, align 8, !tbaa !140
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zr, i64 %i.zf
  %i.aag = load ptr, ptr %i.yw, align 8, !tbaa !156
  %i.aah = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  tail call void %i.aag(ptr noundef nonnull %0, ptr noundef nonnull %i.aah, i32 noundef 3, i32 noundef %i.aae) #11, !inline_history !157
  %i.aai = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.aaj = load ptr, ptr %i.aai, align 16, !tbaa !148
  %i.aak = sext i32 %i.tl to i64
  tail call void %i.aaj(ptr noundef %i.aaf, i64 noundef %i.aak, ptr noundef nonnull %i.aah) #11, !inline_history !157
  br label %add_dequant_dct.exit108

add_dequant_dct.exit108:                          ; preds = %add_dequant_dct.exit107, %bb.dj
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 1276 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.aan = load i32, ptr %i.aam, align 4, !tbaa !37
  %i.aao = icmp sgt i32 %i.aan, -1
  br i1 %i.aao, label %bb.dk, label %add_dequant_dct.exit109

bb.dk:                                            ; preds = %add_dequant_dct.exit108
  %i.aap = load i32, ptr %i.aal, align 4, !tbaa !158
  %i.aaq = load ptr, ptr %i.yw, align 8, !tbaa !156
  %i.aar = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  tail call void %i.aaq(ptr noundef nonnull %0, ptr noundef nonnull %i.aar, i32 noundef 4, i32 noundef %i.aap) #11, !inline_history !157
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.aat = load ptr, ptr %i.aas, align 16, !tbaa !148
  %sext137 = shl i64 %i.tg, 32
  %i.aau = ashr exact i64 %sext137, 32
  tail call void %i.aat(ptr noundef %i.sz, i64 noundef %i.aau, ptr noundef nonnull %i.aar) #11, !inline_history !157
  br label %add_dequant_dct.exit109

add_dequant_dct.exit109:                          ; preds = %add_dequant_dct.exit108, %bb.dk
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aaw = load i32, ptr %i.aav, align 8, !tbaa !37
  %i.aax = icmp sgt i32 %i.aaw, -1
end_hunk_1
begin_hunk_2_@ff_mpv_reconstruct_mb:bb.a
  %i.afo = getelementptr inbounds nuw i8, ptr %i.ab, i64 652
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !159
  %i.afq = icmp sgt i32 %i.afp, 8
  br i1 %i.afq, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  tail call void @ff_mpeg4_decode_studio(ptr noundef nonnull %0, ptr noundef %i.sx, ptr noundef %i.sz, ptr noundef %i.tb, i32 noundef %i.ti, i32 noundef %i.th, i32 noundef %i.tl, i32 noundef %i.tn) #11
  br label %mpv_reconstruct_mb_internal.exit57

bb.eg:                                            ; preds = %bb.ee
  %i.afr = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.afs = load i32, ptr %i.afr, align 8, !tbaa !143
  %i.aft = icmp ult i32 %i.afs, 2
  br i1 %i.aft, label %bb.ek, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.afu = load i32, ptr %i.m, align 8, !tbaa !140
  %i.afv = getelementptr inbounds nuw i8, ptr %0, i64 3888 ; 10 uses
  %i.afw = load ptr, ptr %i.afv, align 16, !tbaa !160
  tail call void %i.afw(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef %i.afu) #11, !inline_history !161
  %i.afx = getelementptr inbounds nuw i8, ptr %0, i64 1800 ; 10 uses
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !152
  %i.afz = sext i32 %i.tl to i64                  ; 4 uses
  tail call void %i.afy(ptr noundef %i.sx, i64 noundef %i.afz, ptr noundef %1) #11, !inline_history !161
  %i.aga = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.agb = zext nneg i32 %i.ti to i64             ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %i.sx, i64 %i.agb
  %i.agd = load i32, ptr %i.m, align 8, !tbaa !140
  %i.age = load ptr, ptr %i.afv, align 16, !tbaa !160
  tail call void %i.age(ptr noundef nonnull %0, ptr noundef nonnull %i.aga, i32 noundef 1, i32 noundef %i.agd) #11, !inline_history !161
  %i.agf = load ptr, ptr %i.afx, align 8, !tbaa !152
  tail call void %i.agf(ptr noundef %i.agc, i64 noundef %i.afz, ptr noundef nonnull %i.aga) #11, !inline_history !161
  %i.agg = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.agh = sext i32 %i.tn to i64
  %i.agi = getelementptr inbounds i8, ptr %i.sx, i64 %i.agh ; 2 uses
  %i.agj = load i32, ptr %i.m, align 8, !tbaa !140
  %i.agk = load ptr, ptr %i.afv, align 16, !tbaa !160
  tail call void %i.agk(ptr noundef nonnull %0, ptr noundef nonnull %i.agg, i32 noundef 2, i32 noundef %i.agj) #11, !inline_history !161
  %i.agl = load ptr, ptr %i.afx, align 8, !tbaa !152
  tail call void %i.agl(ptr noundef %i.agi, i64 noundef %i.afz, ptr noundef nonnull %i.agg) #11, !inline_history !161
  %i.agm = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agi, i64 %i.agb
  %i.ago = load i32, ptr %i.m, align 8, !tbaa !140
  %i.agp = load ptr, ptr %i.afv, align 16, !tbaa !160
  tail call void %i.agp(ptr noundef nonnull %0, ptr noundef nonnull %i.agm, i32 noundef 3, i32 noundef %i.ago) #11, !inline_history !161
  %i.agq = load ptr, ptr %i.afx, align 8, !tbaa !152
  tail call void %i.agq(ptr noundef %i.agn, i64 noundef %i.afz, ptr noundef nonnull %i.agm) #11, !inline_history !161
  %i.agr = getelementptr inbounds nuw i8, ptr %0, i64 3864
  %i.ags = load i32, ptr %i.agr, align 8, !tbaa !150
  %.not362.i = icmp eq i32 %i.ags, 0
  br i1 %.not362.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.agt = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %0, i64 1276 ; 2 uses
  %i.agv = load i32, ptr %i.agu, align 4, !tbaa !158
  %i.agw = load ptr, ptr %i.afv, align 16, !tbaa !160
  tail call void %i.agw(ptr noundef nonnull %0, ptr noundef nonnull %i.agt, i32 noundef 4, i32 noundef %i.agv) #11, !inline_history !161
  %i.agx = load ptr, ptr %i.afx, align 8, !tbaa !152
  %sext = shl i64 %i.tg, 32
  %i.agy = ashr exact i64 %sext, 32               ; 2 uses
  tail call void %i.agx(ptr noundef %i.sz, i64 noundef %i.agy, ptr noundef nonnull %i.agt) #11, !inline_history !161
  %i.agz = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  %i.aha = load i32, ptr %i.agu, align 4, !tbaa !158
  %i.ahb = load ptr, ptr %i.afv, align 16, !tbaa !160
  tail call void %i.ahb(ptr noundef nonnull %0, ptr noundef nonnull %i.agz, i32 noundef 5, i32 noundef %i.aha) #11, !inline_history !161
  %i.ahc = load ptr, ptr %i.afx, align 8, !tbaa !152
  tail call void %i.ahc(ptr noundef %i.tb, i64 noundef %i.agy, ptr noundef nonnull %i.agz) #11, !inline_history !161
  br label %mpv_reconstruct_mb_internal.exit57

bb.ej:                                            ; preds = %bb.eh
  %i.ahd = ashr i32 %i.tn, 1
  %i.ahe = ashr i32 %i.tl, 1
  %i.ahf = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %0, i64 1276 ; 4 uses
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !158
  %i.ahi = load ptr, ptr %i.afv, align 16, !tbaa !160
  tail call void %i.ahi(ptr noundef nonnull %0, ptr noundef nonnull %i.ahf, i32 noundef 4, i32 noundef %i.ahh) #11, !inline_history !161
  %i.ahj = load ptr, ptr %i.afx, align 8, !tbaa !152
  %i.ahk = sext i32 %i.ahe to i64                 ; 4 uses
  tail call void %i.ahj(ptr noundef %i.sz, i64 noundef %i.ahk, ptr noundef nonnull %i.ahf) #11, !inline_history !161
  %i.ahl = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  %i.ahm = load i32, ptr %i.ahg, align 4, !tbaa !158
  %i.ahn = load ptr, ptr %i.afv, align 16, !tbaa !160
  tail call void %i.ahn(ptr noundef nonnull %0, ptr noundef nonnull %i.ahl, i32 noundef 5, i32 noundef %i.ahm) #11, !inline_history !161
  %i.aho = load ptr, ptr %i.afx, align 8, !tbaa !152
  tail call void %i.aho(ptr noundef %i.tb, i64 noundef %i.ahk, ptr noundef nonnull %i.ahl) #11, !inline_history !161
  %i.ahp = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  %i.ahq = sext i32 %i.ahd to i64                 ; 2 uses
  %i.ahr = getelementptr inbounds i8, ptr %i.sz, i64 %i.ahq
  %i.ahs = load i32, ptr %i.ahg, align 4, !tbaa !158
  %i.aht = load ptr, ptr %i.afv, align 16, !tbaa !160
  tail call void %i.aht(ptr noundef nonnull %0, ptr noundef nonnull %i.ahp, i32 noundef 6, i32 noundef %i.ahs) #11, !inline_history !161
  %i.ahu = load ptr, ptr %i.afx, align 8, !tbaa !152
  tail call void %i.ahu(ptr noundef %i.ahr, i64 noundef %i.ahk, ptr noundef nonnull %i.ahp) #11, !inline_history !161
  %i.ahv = getelementptr inbounds nuw i8, ptr %1, i64 896 ; 2 uses
  %i.ahw = getelementptr inbounds i8, ptr %i.tb, i64 %i.ahq
  %i.ahx = load i32, ptr %i.ahg, align 4, !tbaa !158
  %i.ahy = load ptr, ptr %i.afv, align 16, !tbaa !160
  tail call void %i.ahy(ptr noundef nonnull %0, ptr noundef nonnull %i.ahv, i32 noundef 7, i32 noundef %i.ahx) #11, !inline_history !161
  %i.ahz = load ptr, ptr %i.afx, align 8, !tbaa !152
  tail call void %i.ahz(ptr noundef %i.ahw, i64 noundef %i.ahk, ptr noundef nonnull %i.ahv) #11, !inline_history !161
  br label %mpv_reconstruct_mb_internal.exit57

bb.ek:                                            ; preds = %bb.eg
  %i.aia = getelementptr inbounds nuw i8, ptr %0, i64 1800 ; 14 uses
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !152
  %i.aic = sext i32 %i.tl to i64                  ; 4 uses
  tail call void %i.aib(ptr noundef %i.sx, i64 noundef %i.aic, ptr noundef %1) #11, !inline_history !153
  %i.aid = load ptr, ptr %i.aia, align 8, !tbaa !152
  %i.aie = zext nneg i32 %i.ti to i64             ; 4 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.sx, i64 %i.aie
  %i.aig = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void %i.aid(ptr noundef %i.aif, i64 noundef %i.aic, ptr noundef nonnull %i.aig) #11, !inline_history !153
  %i.aih = load ptr, ptr %i.aia, align 8, !tbaa !152
  %i.aii = sext i32 %i.tn to i64
  %i.aij = getelementptr inbounds i8, ptr %i.sx, i64 %i.aii ; 2 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void %i.aih(ptr noundef %i.aij, i64 noundef %i.aic, ptr noundef nonnull %i.aik) #11, !inline_history !153
  %i.ail = load ptr, ptr %i.aia, align 8, !tbaa !152
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aij, i64 %i.aie
  %i.ain = getelementptr inbounds nuw i8, ptr %1, i64 384
  tail call void %i.ail(ptr noundef %i.aim, i64 noundef %i.aic, ptr noundef nonnull %i.ain) #11, !inline_history !153
  %i.aio = getelementptr inbounds nuw i8, ptr %0, i64 3864
  %i.aip = load i32, ptr %i.aio, align 8, !tbaa !150
  %.not363.i = icmp eq i32 %i.aip, 0
  br i1 %.not363.i, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.aiq = load ptr, ptr %i.aia, align 8, !tbaa !152
  %sext.i = shl i64 %i.tg, 32
  %i.air = ashr exact i64 %sext.i, 32             ; 2 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %1, i64 512
  tail call void %i.aiq(ptr noundef %i.sz, i64 noundef %i.air, ptr noundef nonnull %i.ais) #11, !inline_history !153
  %i.ait = load ptr, ptr %i.aia, align 8, !tbaa !152
  %i.aiu = getelementptr inbounds nuw i8, ptr %1, i64 640
  tail call void %i.ait(ptr noundef %i.tb, i64 noundef %i.air, ptr noundef nonnull %i.aiu) #11, !inline_history !153
  br label %mpv_reconstruct_mb_internal.exit57

bb.em:                                            ; preds = %bb.ek
  %i.aiv = load i32, ptr %i.tj, align 8, !tbaa !144 ; 2 uses
  %i.aiw = shl i32 %i.th, %i.aiv
  %.not364.i = icmp eq i32 %i.aiv, 0
  %i.aix = select i1 %.not364.i, i32 %i.ti, i32 1
  %i.aiy = mul nsw i32 %i.aix, %i.th
  %i.aiz = load ptr, ptr %i.aia, align 8, !tbaa !152
  %i.aja = sext i32 %i.aiw to i64                 ; 8 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %1, i64 512
  tail call void %i.aiz(ptr noundef %i.sz, i64 noundef %i.aja, ptr noundef nonnull %i.ajb) #11, !inline_history !153
  %i.ajc = load ptr, ptr %i.aia, align 8, !tbaa !152
  %i.ajd = getelementptr inbounds nuw i8, ptr %1, i64 640
  tail call void %i.ajc(ptr noundef %i.tb, i64 noundef %i.aja, ptr noundef nonnull %i.ajd) #11, !inline_history !153
  %i.aje = load ptr, ptr %i.aia, align 8, !tbaa !152
  %i.ajf = sext i32 %i.aiy to i64                 ; 4 uses
  %i.ajg = getelementptr inbounds i8, ptr %i.sz, i64 %i.ajf
  %i.ajh = getelementptr inbounds nuw i8, ptr %1, i64 768
  tail call void %i.aje(ptr noundef %i.ajg, i64 noundef %i.aja, ptr noundef nonnull %i.ajh) #11, !inline_history !153
  %i.aji = load ptr, ptr %i.aia, align 8, !tbaa !152
  %i.ajj = getelementptr inbounds i8, ptr %i.tb, i64 %i.ajf
  %i.ajk = getelementptr inbounds nuw i8, ptr %1, i64 896
  tail call void %i.aji(ptr noundef %i.ajj, i64 noundef %i.aja, ptr noundef nonnull %i.ajk) #11, !inline_history !153
  %i.ajl = getelementptr inbounds nuw i8, ptr %0, i64 3860
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !151
  %.not365.i = icmp eq i32 %i.ajm, 0
  br i1 %.not365.i, label %bb.en, label %mpv_reconstruct_mb_internal.exit57

bb.en:                                            ; preds = %bb.em
  %i.ajn = load ptr, ptr %i.aia, align 8, !tbaa !152
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.aie ; 2 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %1, i64 1024
  tail call void %i.ajn(ptr noundef %i.ajo, i64 noundef %i.aja, ptr noundef nonnull %i.ajp) #11, !inline_history !153
  %i.ajq = load ptr, ptr %i.aia, align 8, !tbaa !152
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.tb, i64 %i.aie ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %1, i64 1152
  tail call void %i.ajq(ptr noundef %i.ajr, i64 noundef %i.aja, ptr noundef nonnull %i.ajs) #11, !inline_history !153
  %i.ajt = load ptr, ptr %i.aia, align 8, !tbaa !152
  %i.aju = getelementptr inbounds i8, ptr %i.ajo, i64 %i.ajf
  %i.ajv = getelementptr inbounds nuw i8, ptr %1, i64 1280
  tail call void %i.ajt(ptr noundef %i.aju, i64 noundef %i.aja, ptr noundef nonnull %i.ajv) #11, !inline_history !153
  %i.ajw = load ptr, ptr %i.aia, align 8, !tbaa !152
  %i.ajx = getelementptr inbounds i8, ptr %i.ajr, i64 %i.ajf
  %i.ajy = getelementptr inbounds nuw i8, ptr %1, i64 1408
  tail call void %i.ajw(ptr noundef %i.ajx, i64 noundef %i.aja, ptr noundef nonnull %i.ajy) #11, !inline_history !153
  br label %mpv_reconstruct_mb_internal.exit57

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
  %i.e = lshr i32 8, %i.d                         ; 40 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3108 ; 6 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !138  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3112 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !136  ; 16 uses
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
  %i.be = shl nuw nsw i32 %i.e, 1                 ; 4 uses
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
  %i.cl = mul i32 %i.i, %i.e                      ; 3 uses
  %i.cm = shl i32 %i.cl, 1
  %i.cn = extractelement <2 x i32> %i.cb, i64 1
  %i.co = ashr i32 %i.cn, %i.ch
  %i.cp = add nsw i32 %i.co, %i.cm                ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !143
  switch i32 %i.cr, label %bb.e [
    i32 2, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.cs = ashr <2 x i32> %i.cb, splat (i32 1)
  %i.ct = and <2 x i32> %i.cb, splat (i32 1)
  %i.cu = and <2 x i32> %i.cs, %i.cd
  %i.cv = or <2 x i32> %i.cu, %i.ct
  %i.cw = ashr i32 %i.ck, 1
  %i.cx = ashr i32 %i.cp, 1
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.cy = sdiv <2 x i32> %i.cb, splat (i32 4)     ; 3 uses
  %i.cz = shl nsw <2 x i32> %i.cy, splat (i32 1)
  %i.da = and <2 x i32> %i.cz, %i.cd
  %i.db = extractelement <2 x i32> %i.cy, i64 0
  %i.dc = ashr i32 %i.db, %i.d
  %i.dd = add nsw i32 %i.dc, %i.cf
  %i.de = extractelement <2 x i32> %i.cy, i64 1
  %i.df = ashr i32 %i.de, %i.d
  %i.dg = add nsw i32 %i.df, %i.cl
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  br i1 %.not.i367, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dh = sdiv <2 x i32> %i.cb, splat (i32 2)     ; 3 uses
  %i.di = and <2 x i32> %i.dh, %i.cd
  %i.dj = extractelement <2 x i32> %i.dh, i64 0
  %i.dk = ashr i32 %i.dj, %i.ch
  %i.dl = add nsw i32 %i.dk, %i.cf
  %i.dm = extractelement <2 x i32> %i.dh, i64 1
  %i.dn = ashr i32 %i.dm, %i.ch
  %i.do = add nsw i32 %i.dn, %i.cl
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %.not259.i395 = icmp eq i32 %i.bh, 0
  br i1 %.not259.i395, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dp = sdiv i32 %i.ci, 2                       ; 2 uses
  %i.dq = and i32 %i.dp, %i.bk
  %i.dr = ashr i32 %i.dp, %i.ch
  %i.ds = add nsw i32 %i.dr, %i.cf
  %i.dt = insertelement <2 x i32> %i.ce, i32 %i.dq, i64 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.c
  %.0237.i372 = phi i32 [ %i.cw, %bb.c ], [ %i.dd, %bb.d ], [ %i.dl, %bb.f ], [ %i.ds, %bb.h ], [ %i.ck, %bb.g ] ; 3 uses
  %.0236.i373 = phi i32 [ %i.cx, %bb.c ], [ %i.dg, %bb.d ], [ %i.do, %bb.f ], [ %i.cp, %bb.h ], [ %i.cp, %bb.g ] ; 4 uses
  %i.du = phi <2 x i32> [ %i.cv, %bb.c ], [ %i.da, %bb.d ], [ %i.di, %bb.f ], [ %i.dt, %bb.h ], [ %i.ce, %bb.g ]
  %i.dv = load ptr, ptr %5, align 8, !tbaa !98
  %i.dw = sext i32 %i.cp to i64
  %i.dx = mul nsw i64 %i.bv, %i.dw
  %i.dy = getelementptr inbounds i8, ptr %i.dv, i64 %i.dx
  %i.dz = sext i32 %i.ck to i64
  %i.ea = getelementptr inbounds i8, ptr %i.dy, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !98
  %i.ed = sext i32 %.0236.i373 to i64
  %i.ee = mul nsw i64 %i.bx, %i.ed                ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %i.ec, i64 %i.ee
  %i.eg = sext i32 %.0237.i372 to i64             ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %i.ef, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !98
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 %i.ee
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 %i.eg ; 2 uses
  %i.em = extractelement <2 x i32> %i.ce, i64 0
  %i.en = icmp ne i32 %i.em, 0
  %.neg.i376 = sext i1 %i.en to i32
  %i.eo = sub i32 %i.bn, %i.be
  %i.ep = add i32 %i.eo, %.neg.i376
  %spec.select.i377 = tail call i32 @llvm.smax.i32(i32 %i.ep, i32 0)
  %i.eq = icmp ugt i32 %i.ck, %spec.select.i377
  %i.er = icmp slt i32 %.0236.i373, 0
  %or.cond.i378 = select i1 %i.eq, i1 true, i1 %i.er
  br i1 %or.cond.i378, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.es = extractelement <2 x i32> %i.ce, i64 1
  %i.et = icmp ne i32 %i.es, 0
  %.neg260.i379 = sext i1 %i.et to i32
  %i.eu = add i32 %i.bq, %.neg260.i379            ; 2 uses
  %i.ev = shl i32 %i.bt, %i.bs
  %..i380 = tail call i32 @llvm.smax.i32(i32 %i.be, i32 %i.ev) ; 2 uses
  %i.ew = icmp sgt i32 %i.eu, %..i380
  %i.ex = sub nsw i32 %i.eu, %..i380
  %spec.select = select i1 %i.ew, i32 %i.ex, i32 0
  %i.ey = icmp ugt i32 %i.cp, %spec.select
  br i1 %i.ey, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 2656 ; 3 uses
  %i.fa = load ptr, ptr %i.ez, align 16, !tbaa !173
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !174
  tail call void %i.fa(ptr noundef %i.fc, ptr noundef %i.ea, i64 noundef %i.bv, i64 noundef %i.bv, i32 noundef 17, i32 noundef 17, i32 noundef %i.ck, i32 noundef %i.cp, i32 noundef %i.bn, i32 noundef %i.bq) #11, !inline_history !175
  %i.fd = load ptr, ptr %i.fb, align 8, !tbaa !174 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ff = load i64, ptr %i.fe, align 16, !tbaa !176
  %i.fg = mul nsw i64 %i.ff, 18
  %i.fh = getelementptr inbounds i8, ptr %i.fd, i64 %i.fg ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !177 ; 2 uses
  %i.fk = mul nsw i64 %i.fj, 10
  %i.fl = getelementptr inbounds i8, ptr %i.fh, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !57
  %i.fo = and i32 %i.fn, 32768
  %.not261.i391 = icmp eq i32 %i.fo, 0
  %i.fp = sub i64 0, %i.fj
  %.0.i392.idx = select i1 %.not261.i391, i64 0, i64 %i.fp
  %.0.i392 = getelementptr inbounds i8, ptr %i.fl, i64 %.0.i392.idx ; 2 uses
  %i.fq = load ptr, ptr %i.ez, align 16, !tbaa !173
  %i.fr = ashr i32 %i.bn, 1                       ; 2 uses
  %i.fs = ashr i32 %i.bq, 1                       ; 2 uses
  tail call void %i.fq(ptr noundef %i.fh, ptr noundef %i.eh, i64 noundef %i.bx, i64 noundef %i.bx, i32 noundef 9, i32 noundef 9, i32 noundef %.0237.i372, i32 noundef %.0236.i373, i32 noundef %i.fr, i32 noundef %i.fs) #11, !inline_history !175
  %i.ft = load ptr, ptr %i.ez, align 16, !tbaa !173
  tail call void %i.ft(ptr noundef %.0.i392, ptr noundef %i.el, i64 noundef %i.bx, i64 noundef %i.bx, i32 noundef 9, i32 noundef 9, i32 noundef %.0237.i372, i32 noundef %.0236.i373, i32 noundef %i.fr, i32 noundef %i.fs) #11, !inline_history !175
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0241.i381 = phi ptr [ %i.fd, %bb.k ], [ %i.ea, %bb.j ]
  %.0239.i382 = phi ptr [ %i.fh, %bb.k ], [ %i.eh, %bb.j ]
  %.0238.i383 = phi ptr [ %.0.i392, %bb.k ], [ %i.el, %bb.j ]
  %i.fu = shl <2 x i32> %i.ce, splat (i32 2)      ; 2 uses
  %i.fv = extractelement <2 x i32> %i.fu, i64 0
  %i.fw = ashr i32 %i.fv, %i.d
  %i.fx = extractelement <2 x i32> %i.fu, i64 1
  %i.fy = ashr i32 %i.fx, %i.d
  %i.fz = sext i32 %i.bf to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %6, i64 %i.fz
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !60
  tail call void %i.gb(ptr noundef %1, ptr noundef %.0241.i381, i64 noundef %i.bv, i32 noundef range(i32 0, 17) %i.be, i32 noundef %i.fw, i32 noundef %i.fy) #11, !inline_history !175
  %.not264.i390 = icmp eq i32 %i.bt, 0
  br i1 %.not264.i390, label %mpeg_motion_lowres.exit396, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gc = shl <2 x i32> %i.du, splat (i32 2)      ; 2 uses
  %i.gd = extractelement <2 x i32> %i.gc, i64 1
  %i.ge = ashr i32 %i.gd, %i.d                    ; 2 uses
  %i.gf = extractelement <2 x i32> %i.gc, i64 0
  %i.gg = ashr i32 %i.gf, %i.d                    ; 2 uses
  %i.gh = sext i32 %i.bi to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %6, i64 %i.gh ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !60
  tail call void %i.gj(ptr noundef %2, ptr noundef %.0239.i382, i64 noundef %i.bx, i32 noundef %i.bt, i32 noundef %i.gg, i32 noundef %i.ge) #11, !inline_history !175
  %i.gk = load ptr, ptr %i.gi, align 8, !tbaa !60
  tail call void %i.gk(ptr noundef %3, ptr noundef %.0238.i383, i64 noundef %i.bx, i32 noundef %i.bt, i32 noundef %i.gg, i32 noundef %i.ge) #11, !inline_history !175
  br label %mpeg_motion_lowres.exit396

bb.n:                                             ; preds = %hpel_motion_lowres.exit
  %i.gl = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 720
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !142 ; 6 uses
  %i.go = lshr i32 8, %i.gn                       ; 6 uses
  %i.gp = shl i32 2, %i.gn
  %i.gq = add nsw i32 %i.gp, -1                   ; 2 uses
  %i.gr = load i32, ptr %i.ar, align 4, !tbaa !171
  %i.gs = add nsw i32 %i.gn, 1                    ; 4 uses
  %i.gt = ashr i32 %i.gr, %i.gs                   ; 3 uses
  %i.gu = load i32, ptr %i.as, align 8, !tbaa !172
  %i.gv = ashr i32 %i.gu, %i.gs                   ; 3 uses
  %i.gw = load i32, ptr %i.aw, align 4, !tbaa !76
  %.not.i397 = icmp eq i32 %i.gw, 0
  %i.gx = sdiv <2 x i32> %i.lv, splat (i32 2)
  %i.gy = select i1 %.not.i397, <2 x i32> %i.lv, <2 x i32> %i.gx ; 2 uses
  %i.gz = extractelement <2 x i32> %i.gy, i64 0   ; 2 uses
  %i.ha = and i32 %i.gz, 15
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr @ff_h263_round_chroma.h263_chroma_roundtab, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !62
  %i.he = zext i8 %i.hd to i32
  %i.hf = ashr i32 %i.gz, 3
  %i.hg = add nsw i32 %i.hf, %i.he                ; 2 uses
  %i.hh = extractelement <2 x i32> %i.gy, i64 1   ; 2 uses
  %i.hi = and i32 %i.hh, 15
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr @ff_h263_round_chroma.h263_chroma_roundtab, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !62
  %i.hm = zext i8 %i.hl to i32
  %i.hn = ashr i32 %i.hh, 3
  %i.ho = add nsw i32 %i.hn, %i.hm                ; 2 uses
  %i.hp = and i32 %i.hg, %i.gq                    ; 2 uses
  %i.hq = and i32 %i.ho, %i.gq                    ; 2 uses
  %i.hr = load i32, ptr %i.f, align 4, !tbaa !138
  %i.hs = mul nsw i32 %i.hr, %i.go
  %i.ht = ashr i32 %i.hg, %i.gs
  %i.hu = add nsw i32 %i.hs, %i.ht                ; 4 uses
  %i.hv = load i32, ptr %i.h, align 8, !tbaa !136
  %i.hw = mul nsw i32 %i.hv, %i.go
  %i.hx = ashr i32 %i.ho, %i.gs
  %i.hy = add nsw i32 %i.hw, %i.hx                ; 4 uses
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !177 ; 4 uses
  %i.ic = mul nsw i64 %i.ib, %i.hz
  %i.id = sext i32 %i.hu to i64
  %i.ie = add nsw i64 %i.ic, %i.id                ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !98
  %i.ih = getelementptr inbounds i8, ptr %i.ig, i64 %i.ie ; 2 uses
  %i.ii = icmp ne i32 %i.hp, 0
  %.neg.i398 = sext i1 %i.ii to i32
  %i.ij = sub i32 %i.gt, %i.go
  %i.ik = add i32 %i.ij, %.neg.i398
  %spec.select.i399 = tail call i32 @llvm.smax.i32(i32 %i.ik, i32 0)
  %i.il = icmp ugt i32 %i.hu, %spec.select.i399
  br i1 %i.il, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.im = icmp ne i32 %i.hq, 0
  %.neg91.i = sext i1 %i.im to i32
  %i.in = sub i32 %i.gv, %i.go
  %i.io = add i32 %i.in, %.neg91.i
  %spec.select93.i = tail call i32 @llvm.smax.i32(i32 %i.io, i32 0)
  %i.ip = icmp ugt i32 %i.hy, %spec.select93.i
  br i1 %i.ip, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.iq = load ptr, ptr %i.ax, align 16, !tbaa !173
  %i.ir = load ptr, ptr %i.ay, align 8, !tbaa !174
  tail call void %i.iq(ptr noundef %i.ir, ptr noundef %i.ih, i64 noundef %i.ib, i64 noundef %i.ib, i32 noundef 9, i32 noundef 9, i32 noundef %i.hu, i32 noundef %i.hy, i32 noundef %i.gt, i32 noundef %i.gv) #11, !inline_history !178
  %i.is = load ptr, ptr %i.ay, align 8, !tbaa !174
  %.pre.i = load i64, ptr %i.ia, align 8, !tbaa !177
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.it = phi i64 [ %.pre.i, %bb.p ], [ %i.ib, %bb.o ]
  %.not92.i = phi i1 [ false, %bb.p ], [ true, %bb.o ]
  %.0.i400 = phi ptr [ %i.is, %bb.p ], [ %i.ih, %bb.o ]
  %i.iu = shl i32 %i.hp, 2
  %i.iv = ashr i32 %i.iu, %i.gn                   ; 2 uses
  %i.iw = shl i32 %i.hq, 2
  %i.ix = ashr i32 %i.iw, %i.gn                   ; 2 uses
  %i.iy = sext i32 %i.gn to i64
  %i.iz = getelementptr inbounds [8 x i8], ptr %6, i64 %i.iy ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !60
  tail call void %i.ja(ptr noundef %2, ptr noundef %.0.i400, i64 noundef %i.it, i32 noundef %i.go, i32 noundef %i.iv, i32 noundef %i.ix) #11, !inline_history !178
  %i.jb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !98
  %i.jd = getelementptr inbounds i8, ptr %i.jc, i64 %i.ie ; 2 uses
  br i1 %.not92.i, label %chroma_4mv_motion_lowres.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.je = load ptr, ptr %i.ax, align 16, !tbaa !173
  %i.jf = load ptr, ptr %i.ay, align 8, !tbaa !174
  %i.jg = load i64, ptr %i.ia, align 8, !tbaa !177 ; 2 uses
  tail call void %i.je(ptr noundef %i.jf, ptr noundef %i.jd, i64 noundef %i.jg, i64 noundef %i.jg, i32 noundef 9, i32 noundef 9, i32 noundef %i.hu, i32 noundef %i.hy, i32 noundef %i.gt, i32 noundef %i.gv) #11, !inline_history !178
  %i.jh = load ptr, ptr %i.ay, align 8, !tbaa !174
  br label %chroma_4mv_motion_lowres.exit

chroma_4mv_motion_lowres.exit:                    ; preds = %bb.q, %bb.r
  %.1.i401 = phi ptr [ %i.jh, %bb.r ], [ %i.jd, %bb.q ]
  %i.ji = load ptr, ptr %i.iz, align 8, !tbaa !60
  %i.jj = load i64, ptr %i.ia, align 8, !tbaa !177
  tail call void %i.ji(ptr noundef %3, ptr noundef %.1.i401, i64 noundef %i.jj, i32 noundef %i.go, i32 noundef %i.iv, i32 noundef %i.ix) #11, !inline_history !178
  br label %mpeg_motion_lowres.exit396

bb.s:                                             ; preds = %.preheader, %hpel_motion_lowres.exit
  %indvars.iv453 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next454, %hpel_motion_lowres.exit ] ; 4 uses
  %i.jk = phi <2 x i32> [ zeroinitializer, %.preheader ], [ %i.lv, %hpel_motion_lowres.exit ]
  %i.jl = trunc nuw nsw i64 %indvars.iv453 to i32 ; 2 uses
  %i.jm = and i32 %i.jl, 1
  %i.jn = and i64 %indvars.iv453, 1
  %i.jo = lshr i32 %i.jl, 1                       ; 2 uses
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = load i64, ptr %i.an, align 16, !tbaa !176 ; 5 uses
  %i.jr = mul nuw nsw i64 %i.jq, %i.jp
  %i.js = add nsw i64 %i.jr, %i.jn
  %i.jt = mul nsw i64 %i.js, %i.ao
  %i.ju = getelementptr inbounds i8, ptr %1, i64 %i.jt
  %i.jv = load ptr, ptr %5, align 8, !tbaa !98
  %i.jw = or disjoint i32 %i.jm, %i.ap
  %i.jx = mul nsw i32 %i.jw, %i.e
  %i.jy = add nuw nsw i32 %i.jo, %i.aq
  %i.jz = mul nsw i32 %i.jy, %i.e
  %i.ka = load i32, ptr %i.ar, align 4, !tbaa !171
  %i.kb = ashr i32 %i.ka, %i.d                    ; 2 uses
  %i.kc = load i32, ptr %i.as, align 8, !tbaa !172
  %i.kd = ashr i32 %i.kc, %i.d                    ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv453 ; 2 uses
  %i.kf = load <2 x i32>, ptr %i.ke, align 8, !tbaa !37 ; 2 uses
  %i.kg = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 720
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !142 ; 5 uses
  %i.kj = shl i32 2, %i.ki
  %i.kk = add nsw i32 %i.kj, -1                   ; 2 uses
  %i.kl = load i32, ptr %i.aw, align 4, !tbaa !76
  %.not.i402 = icmp eq i32 %i.kl, 0
  %i.km = sdiv <2 x i32> %i.kf, splat (i32 2)
  %i.kn = select i1 %.not.i402, <2 x i32> %i.kf, <2 x i32> %i.km ; 2 uses
  %i.ko = extractelement <2 x i32> %i.kn, i64 0   ; 2 uses
  %i.kp = and i32 %i.ko, %i.kk                    ; 2 uses
  %i.kq = extractelement <2 x i32> %i.kn, i64 1   ; 2 uses
  %i.kr = and i32 %i.kq, %i.kk                    ; 2 uses
  %i.ks = add nsw i32 %i.ki, 1                    ; 2 uses
  %i.kt = ashr i32 %i.ko, %i.ks
  %i.ku = add nsw i32 %i.kt, %i.jx                ; 3 uses
  %i.kv = ashr i32 %i.kq, %i.ks
  %i.kw = add nsw i32 %i.kv, %i.jz                ; 3 uses
  %i.kx = sext i32 %i.kw to i64
  %i.ky = mul nsw i64 %i.jq, %i.kx
  %i.kz = sext i32 %i.ku to i64
  %i.la = getelementptr i8, ptr %i.jv, i64 %i.ky
  %i.lb = getelementptr i8, ptr %i.la, i64 %i.kz  ; 2 uses
  %i.lc = icmp ne i32 %i.kp, 0
  %.neg.i403 = sext i1 %i.lc to i32
  %i.ld = sub i32 %i.kb, %i.e
  %i.le = add i32 %i.ld, %.neg.i403
  %spec.select.i404 = tail call i32 @llvm.smax.i32(i32 %i.le, i32 0)
  %i.lf = icmp ugt i32 %i.ku, %spec.select.i404
  br i1 %i.lf, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.lg = icmp ne i32 %i.kr, 0
  %.neg70.i = sext i1 %i.lg to i32
  %i.lh = sub i32 %i.kd, %i.e
  %i.li = add i32 %i.lh, %.neg70.i
  %spec.select71.i = tail call i32 @llvm.smax.i32(i32 %i.li, i32 0)
  %i.lj = icmp ugt i32 %i.kw, %spec.select71.i
  br i1 %i.lj, label %bb.u, label %hpel_motion_lowres.exit

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.lk = load ptr, ptr %i.ax, align 16, !tbaa !173
  %i.ll = load ptr, ptr %i.ay, align 8, !tbaa !174
  tail call void %i.lk(ptr noundef %i.ll, ptr noundef %i.lb, i64 noundef %i.jq, i64 noundef %i.jq, i32 noundef %i.az, i32 noundef %i.az, i32 noundef %i.ku, i32 noundef %i.kw, i32 noundef %i.kb, i32 noundef %i.kd) #11, !inline_history !179
  %i.lm = load ptr, ptr %i.ay, align 8, !tbaa !174
  br label %hpel_motion_lowres.exit

hpel_motion_lowres.exit:                          ; preds = %bb.t, %bb.u
  %.067.i = phi ptr [ %i.lm, %bb.u ], [ %i.lb, %bb.t ]
  %i.ln = shl i32 %i.kr, 2
  %i.lo = ashr i32 %i.ln, %i.ki
  %i.lp = shl i32 %i.kp, 2
  %i.lq = ashr i32 %i.lp, %i.ki
  %i.lr = sext i32 %i.ki to i64
  %i.ls = getelementptr inbounds [8 x i8], ptr %6, i64 %i.lr
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !60
  tail call void %i.lt(ptr noundef %i.ju, ptr noundef %.067.i, i64 noundef %i.jq, i32 noundef range(i32 0, 9) %i.e, i32 noundef %i.lq, i32 noundef %i.lo) #11, !inline_history !179
  %i.lu = load <2 x i32>, ptr %i.ke, align 8, !tbaa !37
  %i.lv = add nsw <2 x i32> %i.lu, %i.jk          ; 3 uses
  %indvars.iv.next454 = add nuw nsw i64 %indvars.iv453, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next454, 4
  br i1 %exitcond.not, label %bb.n, label %bb.s, !llvm.loop !180

bb.v:                                             ; preds = %bb.a
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 3816
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !84 ; 2 uses
  %i.ly = icmp eq i32 %i.lx, 3
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %i.ma = zext nneg i32 %4 to i64                 ; 3 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.ma ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !37 ; 7 uses
  br i1 %i.ly, label %bb.w, label %bb.at

bb.w:                                             ; preds = %bb.v
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.me = getelementptr inbounds nuw [32 x i8], ptr %i.md, i64 %i.ma ; 2 uses
  %i.mf = load <2 x i32>, ptr %i.me, align 16, !tbaa !37 ; 2 uses
  %i.mg = add nsw i32 %i.d, -1                    ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 3860 ; 2 uses
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !151 ; 2 uses
  %i.mj = add nsw i32 %i.mi, %i.mg
  %i.mk = shl i32 2, %i.d
  %i.ml = add nsw i32 %i.mk, -1                   ; 9 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 2 uses
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !171
  %i.mo = ashr i32 %i.mn, %i.d                    ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !172
  %i.mr = ashr i32 %i.mq, %i.d                    ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 3864 ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !150 ; 2 uses
  %.not.i336 = icmp eq i32 %i.mt, 0               ; 2 uses
  %i.mu = add nuw nsw i32 %i.e, 1
  %i.mv = lshr i32 %i.mu, 1
  %i.mw = select i1 %.not.i336, i32 %i.e, i32 %i.mv ; 4 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !77
  %i.mz = shl i64 %i.my, 1                        ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !77
  %i.nc = shl i64 %i.nb, 1                        ; 4 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 3772 ; 2 uses
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !76
  %.not256.i337 = icmp eq i32 %i.ne, 0
  %i.nf = sdiv <2 x i32> %i.mf, splat (i32 2)
  %i.ng = select i1 %.not256.i337, <2 x i32> %i.mf, <2 x i32> %i.nf ; 2 uses
  %i.nh = extractelement <2 x i32> %i.ng, i64 0   ; 7 uses
end_hunk_2
begin_hunk_3_@MPV_motion_lowres:bb.a
  %i.on = and i32 %i.om, %i.ml
  %i.oo = shl nsw i32 %i.ol, 1
  %i.op = and i32 %i.oo, %i.ml
  %i.oq = ashr i32 %i.ok, %i.d
  %i.or = add nsw i32 %i.oq, %i.no
  %i.os = mul nsw i32 %i.i, %i.e
  %i.ot = ashr i32 %i.ol, %i.d
  %i.ou = add nsw i32 %i.ot, %i.os
  br label %bb.ad

bb.z:                                             ; preds = %bb.w
  br i1 %.not.i336, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ov = sdiv i32 %i.nh, 2                       ; 2 uses
  %i.ow = sdiv i32 %i.nl, 2                       ; 2 uses
  %i.ox = and i32 %i.ov, %i.ml
  %i.oy = and i32 %i.ow, %i.ml
  %i.oz = ashr i32 %i.ov, %i.nq
  %i.pa = add nsw i32 %i.oz, %i.no
  %i.pb = mul nsw i32 %i.i, %i.e
  %i.pc = ashr i32 %i.pb, 1
  %i.pd = ashr i32 %i.ow, %i.nq
  %i.pe = add nsw i32 %i.pd, %i.pc
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %.not259.i365 = icmp eq i32 %i.mi, 0
  br i1 %.not259.i365, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.pf = sdiv i32 %i.nh, 2                       ; 2 uses
  %i.pg = and i32 %i.pf, %i.ml
  %i.ph = ashr i32 %i.pf, %i.nq
  %i.pi = add nsw i32 %i.ph, %i.no
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  %.0237.i341 = phi i32 [ %i.oi, %bb.x ], [ %i.or, %bb.y ], [ %i.pa, %bb.aa ], [ %i.pi, %bb.ac ], [ %i.ns, %bb.ab ] ; 3 uses
  %.0236.i342 = phi i32 [ %i.oj, %bb.x ], [ %i.ou, %bb.y ], [ %i.pe, %bb.aa ], [ %i.nx, %bb.ac ], [ %i.nx, %bb.ab ] ; 3 uses
  %.0235.i343 = phi i32 [ %i.od, %bb.x ], [ %i.on, %bb.y ], [ %i.ox, %bb.aa ], [ %i.pg, %bb.ac ], [ %i.nm, %bb.ab ]
  %.0234.i344 = phi i32 [ %i.oh, %bb.x ], [ %i.op, %bb.y ], [ %i.oy, %bb.aa ], [ %i.nn, %bb.ac ], [ %i.nn, %bb.ab ]
  %i.pj = load ptr, ptr %5, align 8, !tbaa !98
  %i.pk = sext i32 %i.nx to i64
  %i.pl = mul nsw i64 %i.mz, %i.pk
  %i.pm = getelementptr inbounds i8, ptr %i.pj, i64 %i.pl
  %i.pn = sext i32 %i.ns to i64
  %i.po = getelementptr inbounds i8, ptr %i.pm, i64 %i.pn ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !98
  %i.pr = sext i32 %.0236.i342 to i64
  %i.ps = mul nsw i64 %i.nc, %i.pr                ; 2 uses
  %i.pt = getelementptr inbounds i8, ptr %i.pq, i64 %i.ps
  %i.pu = sext i32 %.0237.i341 to i64             ; 2 uses
  %i.pv = getelementptr inbounds i8, ptr %i.pt, i64 %i.pu ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !98
  %i.py = getelementptr inbounds i8, ptr %i.px, i64 %i.ps
  %i.pz = getelementptr inbounds i8, ptr %i.py, i64 %i.pu ; 2 uses
  %i.qa = icmp ne i32 %i.nm, 0
  %.neg.i345 = sext i1 %i.qa to i32
  %i.qb = shl nuw nsw i32 %i.e, 1
  %i.qc = sub i32 %i.mo, %i.qb
  %i.qd = add i32 %i.qc, %.neg.i345
  %spec.select.i346 = tail call i32 @llvm.smax.i32(i32 %i.qd, i32 0)
  %i.qe = icmp ugt i32 %i.ns, %spec.select.i346
  %i.qf = icmp slt i32 %.0236.i342, 0
  %or.cond.i347 = select i1 %i.qe, i1 true, i1 %i.qf
  %.pre = ashr i32 %i.mr, 1                       ; 3 uses
  br i1 %or.cond.i347, label %._crit_edge457, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.qg = icmp ne i32 %i.nn, 0
  %.neg260.i348 = sext i1 %i.qg to i32
  %i.qh = add nsw i32 %.pre, %.neg260.i348        ; 2 uses
  %i.qi = add nsw i32 %i.mw, %i.mc
  %i.qj = shl i32 %i.qi, %i.mt
  %..i349 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.qj) ; 2 uses
  %i.qk = icmp sgt i32 %i.qh, %..i349
  %i.ql = sub nsw i32 %i.qh, %..i349
  %spec.select406 = select i1 %i.qk, i32 %i.ql, i32 0
  %i.qm = icmp ugt i32 %i.nx, %spec.select406
  br i1 %i.qm, label %._crit_edge457, label %bb.af

._crit_edge457:                                   ; preds = %bb.ad, %bb.ae
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 2656 ; 3 uses
  %i.qo = load ptr, ptr %i.qn, align 16, !tbaa !173
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !174
  %i.qr = ashr exact i64 %i.mz, 1                 ; 2 uses
  %i.qs = shl nsw i32 %i.nx, 1
  tail call void %i.qo(ptr noundef %i.qq, ptr noundef %i.po, i64 noundef %i.qr, i64 noundef %i.qr, i32 noundef 17, i32 noundef 18, i32 noundef %i.ns, i32 noundef %i.qs, i32 noundef %i.mo, i32 noundef %i.mr) #11, !inline_history !175
  %i.qt = load ptr, ptr %i.qp, align 8, !tbaa !174 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.qv = load i64, ptr %i.qu, align 16, !tbaa !176
  %i.qw = mul nsw i64 %i.qv, 18
  %i.qx = getelementptr inbounds i8, ptr %i.qt, i64 %i.qw ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !177 ; 2 uses
  %i.ra = mul nsw i64 %i.qz, 10
  %i.rb = getelementptr inbounds i8, ptr %i.qx, i64 %i.ra
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.rd = load i32, ptr %i.rc, align 8, !tbaa !57
  %i.re = and i32 %i.rd, 32768
  %.not261.i361 = icmp eq i32 %i.re, 0
  %i.rf = sub i64 0, %i.qz
  %.0.i362.idx = select i1 %.not261.i361, i64 0, i64 %i.rf
  %.0.i362 = getelementptr inbounds i8, ptr %i.rb, i64 %.0.i362.idx ; 2 uses
  %i.rg = load ptr, ptr %i.qn, align 16, !tbaa !173
  %i.rh = ashr exact i64 %i.nc, 1                 ; 4 uses
  %i.ri = shl nsw i32 %.0236.i342, 1              ; 2 uses
  %i.rj = ashr i32 %i.mo, 1                       ; 2 uses
  tail call void %i.rg(ptr noundef %i.qx, ptr noundef %i.pv, i64 noundef %i.rh, i64 noundef %i.rh, i32 noundef 9, i32 noundef 10, i32 noundef %.0237.i341, i32 noundef %i.ri, i32 noundef %i.rj, i32 noundef %.pre) #11, !inline_history !175
  %i.rk = load ptr, ptr %i.qn, align 16, !tbaa !173
  tail call void %i.rk(ptr noundef %.0.i362, ptr noundef %i.pz, i64 noundef %i.rh, i64 noundef %i.rh, i32 noundef 9, i32 noundef 10, i32 noundef %.0237.i341, i32 noundef %i.ri, i32 noundef %i.rj, i32 noundef %.pre) #11, !inline_history !175
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge457, %bb.ae
  %.0241.i350 = phi ptr [ %i.qt, %._crit_edge457 ], [ %i.po, %bb.ae ] ; 2 uses
  %.0239.i351 = phi ptr [ %i.qx, %._crit_edge457 ], [ %i.pv, %bb.ae ] ; 2 uses
  %.0238.i352 = phi ptr [ %.0.i362, %._crit_edge457 ], [ %i.pz, %bb.ae ] ; 2 uses
  %.not263.i356 = icmp eq i32 %i.mc, 0
  br i1 %.not263.i356, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.rm = load i64, ptr %i.rl, align 16, !tbaa !176
  %i.rn = getelementptr inbounds i8, ptr %.0241.i350, i64 %i.rm
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.rp = load i64, ptr %i.ro, align 8, !tbaa !177 ; 2 uses
  %i.rq = getelementptr inbounds i8, ptr %.0239.i351, i64 %i.rp
  %i.rr = getelementptr inbounds i8, ptr %.0238.i352, i64 %i.rp
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.1242.i357 = phi ptr [ %i.rn, %bb.ag ], [ %.0241.i350, %bb.af ]
  %.1240.i358 = phi ptr [ %i.rq, %bb.ag ], [ %.0239.i351, %bb.af ]
  %.1.i359 = phi ptr [ %i.rr, %bb.ag ], [ %.0238.i352, %bb.af ]
  %i.rs = shl i32 %i.nm, 2
  %i.rt = ashr i32 %i.rs, %i.d
  %i.ru = shl i32 %i.nn, 2
  %i.rv = ashr i32 %i.ru, %i.d
  %i.rw = sext i32 %i.mg to i64
  %i.rx = getelementptr inbounds [8 x i8], ptr %6, i64 %i.rw
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !60
  tail call void %i.ry(ptr noundef %1, ptr noundef %.1242.i357, i64 noundef %i.mz, i32 noundef range(i32 0, 17) %i.e, i32 noundef %i.rt, i32 noundef %i.rv) #11, !inline_history !175
  %.not264.i360 = icmp eq i32 %i.mw, 0
  br i1 %.not264.i360, label %mpeg_motion_lowres.exit366, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.rz = shl i32 %.0234.i344, 2
  %i.sa = ashr i32 %i.rz, %i.d                    ; 2 uses
  %i.sb = shl i32 %.0235.i343, 2
  %i.sc = ashr i32 %i.sb, %i.d                    ; 2 uses
  %i.sd = sext i32 %i.mj to i64
  %i.se = getelementptr inbounds [8 x i8], ptr %6, i64 %i.sd ; 2 uses
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !60
  tail call void %i.sf(ptr noundef %2, ptr noundef %.1240.i358, i64 noundef %i.nc, i32 noundef %i.mw, i32 noundef %i.sc, i32 noundef %i.sa) #11, !inline_history !175
  %i.sg = load ptr, ptr %i.se, align 8, !tbaa !60
  tail call void %i.sg(ptr noundef %3, ptr noundef %.1.i359, i64 noundef %i.nc, i32 noundef %i.mw, i32 noundef %i.sc, i32 noundef %i.sa) #11, !inline_history !175
  br label %mpeg_motion_lowres.exit366

mpeg_motion_lowres.exit366:                       ; preds = %bb.ah, %bb.ai
  %i.sh = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !37 ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.sk = load <2 x i32>, ptr %i.sj, align 8, !tbaa !37 ; 2 uses
  %i.sl = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 720
  %i.sn = load i32, ptr %i.sm, align 8, !tbaa !142 ; 13 uses
  %i.so = add nsw i32 %i.sn, -1                   ; 2 uses
  %i.sp = load i32, ptr %i.mh, align 4, !tbaa !151 ; 2 uses
  %i.sq = add nsw i32 %i.so, %i.sp
  %i.sr = lshr i32 8, %i.sn                       ; 7 uses
  %i.ss = shl i32 2, %i.sn
  %i.st = add nsw i32 %i.ss, -1                   ; 9 uses
  %i.su = load i32, ptr %i.mm, align 4, !tbaa !171
  %i.sv = ashr i32 %i.su, %i.sn                   ; 3 uses
  %i.sw = load i32, ptr %i.mp, align 8, !tbaa !172
  %i.sx = ashr i32 %i.sw, %i.sn                   ; 2 uses
  %i.sy = load i32, ptr %i.ms, align 8, !tbaa !150 ; 2 uses
  %.not.i305 = icmp eq i32 %i.sy, 0               ; 2 uses
  %i.sz = lshr i32 4, %i.d
  %i.ta = select i1 %.not.i305, i32 %i.e, i32 %i.sz ; 4 uses
  %i.tb = load i64, ptr %i.mx, align 8, !tbaa !77
  %i.tc = shl i64 %i.tb, 1                        ; 3 uses
  %i.td = load i64, ptr %i.na, align 8, !tbaa !77
  %i.te = shl i64 %i.td, 1                        ; 4 uses
  %i.tf = load i32, ptr %i.nd, align 4, !tbaa !76
  %.not256.i306 = icmp eq i32 %i.tf, 0
  %i.tg = sdiv <2 x i32> %i.sk, splat (i32 2)
  %i.th = select i1 %.not256.i306, <2 x i32> %i.sk, <2 x i32> %i.tg ; 2 uses
  %i.ti = extractelement <2 x i32> %i.th, i64 0   ; 7 uses
  %i.tj = sub nsw i32 1, %i.si                    ; 2 uses
  %mulshl.i309 = shl i32 %i.tj, %i.sn
  %i.tk = sub i32 %mulshl.i309, %i.tj
  %i.tl = extractelement <2 x i32> %i.th, i64 1
  %i.tm = add nsw i32 %i.tl, %i.tk                ; 6 uses
  %i.tn = and i32 %i.ti, %i.st                    ; 3 uses
  %i.to = and i32 %i.tm, %i.st                    ; 4 uses
  %i.tp = load i32, ptr %i.f, align 4, !tbaa !138 ; 4 uses
  %i.tq = shl nuw nsw i32 %i.sr, 1                ; 2 uses
  %i.tr = mul i32 %i.tq, %i.tp
  %i.ts = add nsw i32 %i.sn, 1                    ; 5 uses
  %i.tt = ashr i32 %i.ti, %i.ts
  %i.tu = add nsw i32 %i.tr, %i.tt                ; 5 uses
  %i.tv = mul nsw i32 %i.sr, %i.nt
  %i.tw = ashr exact i32 %i.tv, 1
  %i.tx = ashr i32 %i.tm, %i.ts
  %i.ty = add nsw i32 %i.tx, %i.tw                ; 6 uses
  %i.tz = load i32, ptr %i.ny, align 8, !tbaa !143
  switch i32 %i.tz, label %bb.al [
    i32 2, label %bb.aj
    i32 1, label %bb.ak
  ]

bb.aj:                                            ; preds = %mpeg_motion_lowres.exit366
  %i.ua = ashr i32 %i.ti, 1
  %i.ub = and i32 %i.ua, %i.st
  %i.uc = and i32 %i.ti, 1
  %i.ud = or i32 %i.ub, %i.uc
  %i.ue = ashr i32 %i.tm, 1
  %i.uf = and i32 %i.ue, %i.st
  %i.ug = and i32 %i.tm, 1
  %i.uh = or i32 %i.uf, %i.ug
  %i.ui = ashr i32 %i.tu, 1
  %i.uj = ashr i32 %i.ty, 1
  br label %bb.ap

bb.ak:                                            ; preds = %mpeg_motion_lowres.exit366
  %i.uk = sdiv i32 %i.ti, 4                       ; 2 uses
  %i.ul = sdiv i32 %i.tm, 4                       ; 2 uses
  %i.um = shl nsw i32 %i.uk, 1
  %i.un = and i32 %i.um, %i.st
  %i.uo = shl nsw i32 %i.ul, 1
  %i.up = and i32 %i.uo, %i.st
  %i.uq = mul nsw i32 %i.tp, %i.sr
  %i.ur = ashr i32 %i.uk, %i.sn
  %i.us = add nsw i32 %i.uq, %i.ur
  %i.ut = mul nsw i32 %i.sr, %i.i
  %i.uu = ashr i32 %i.ul, %i.sn
  %i.uv = add nsw i32 %i.uu, %i.ut
  br label %bb.ap

bb.al:                                            ; preds = %mpeg_motion_lowres.exit366
  br i1 %.not.i305, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.uw = sdiv i32 %i.ti, 2                       ; 2 uses
  %i.ux = sdiv i32 %i.tm, 2                       ; 2 uses
  %i.uy = and i32 %i.uw, %i.st
  %i.uz = and i32 %i.ux, %i.st
  %i.va = mul nsw i32 %i.tp, %i.sr
  %i.vb = ashr i32 %i.uw, %i.ts
  %i.vc = add nsw i32 %i.va, %i.vb
  %i.vd = mul nsw i32 %i.sr, %i.i
  %i.ve = ashr i32 %i.vd, 1
  %i.vf = ashr i32 %i.ux, %i.ts
  %i.vg = add nsw i32 %i.vf, %i.ve
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %.not259.i334 = icmp eq i32 %i.sp, 0
  br i1 %.not259.i334, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.vh = sdiv i32 %i.ti, 2                       ; 2 uses
  %i.vi = and i32 %i.vh, %i.st
  %i.vj = mul nsw i32 %i.tp, %i.sr
  %i.vk = ashr i32 %i.vh, %i.ts
  %i.vl = add nsw i32 %i.vj, %i.vk
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.ak, %bb.aj
  %.0237.i310 = phi i32 [ %i.ui, %bb.aj ], [ %i.us, %bb.ak ], [ %i.vc, %bb.am ], [ %i.vl, %bb.ao ], [ %i.tu, %bb.an ] ; 3 uses
  %.0236.i311 = phi i32 [ %i.uj, %bb.aj ], [ %i.uv, %bb.ak ], [ %i.vg, %bb.am ], [ %i.ty, %bb.ao ], [ %i.ty, %bb.an ] ; 3 uses
  %.0235.i312 = phi i32 [ %i.ud, %bb.aj ], [ %i.un, %bb.ak ], [ %i.uy, %bb.am ], [ %i.vi, %bb.ao ], [ %i.tn, %bb.an ]
  %.0234.i313 = phi i32 [ %i.uh, %bb.aj ], [ %i.up, %bb.ak ], [ %i.uz, %bb.am ], [ %i.to, %bb.ao ], [ %i.to, %bb.an ]
  %i.vm = load ptr, ptr %5, align 8, !tbaa !98
  %i.vn = sext i32 %i.ty to i64
  %i.vo = mul nsw i64 %i.tc, %i.vn
  %i.vp = getelementptr inbounds i8, ptr %i.vm, i64 %i.vo
  %i.vq = sext i32 %i.tu to i64
  %i.vr = getelementptr inbounds i8, ptr %i.vp, i64 %i.vq ; 2 uses
  %i.vs = load ptr, ptr %i.pp, align 8, !tbaa !98
  %i.vt = sext i32 %.0236.i311 to i64
  %i.vu = mul nsw i64 %i.te, %i.vt                ; 2 uses
  %i.vv = getelementptr inbounds i8, ptr %i.vs, i64 %i.vu
  %i.vw = sext i32 %.0237.i310 to i64             ; 2 uses
  %i.vx = getelementptr inbounds i8, ptr %i.vv, i64 %i.vw ; 2 uses
  %i.vy = load ptr, ptr %i.pw, align 8, !tbaa !98
  %i.vz = getelementptr inbounds i8, ptr %i.vy, i64 %i.vu
  %i.wa = getelementptr inbounds i8, ptr %i.vz, i64 %i.vw ; 2 uses
  %i.wb = icmp ne i32 %i.tn, 0
  %.neg.i314 = sext i1 %i.wb to i32
  %i.wc = sub i32 %i.sv, %i.tq
  %i.wd = add i32 %i.wc, %.neg.i314
  %spec.select.i315 = tail call i32 @llvm.smax.i32(i32 %i.wd, i32 0)
  %i.we = icmp ugt i32 %i.tu, %spec.select.i315
  %i.wf = icmp slt i32 %.0236.i311, 0
  %or.cond.i316 = select i1 %i.we, i1 true, i1 %i.wf
  %.pre458 = ashr i32 %i.sx, 1                    ; 3 uses
  br i1 %or.cond.i316, label %._crit_edge456, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.wg = icmp ne i32 %i.to, 0
  %.neg260.i317 = sext i1 %i.wg to i32
  %i.wh = add nsw i32 %.pre458, %.neg260.i317     ; 2 uses
  %i.wi = add nsw i32 %i.ta, %i.si
  %i.wj = shl i32 %i.wi, %i.sy
  %..i318 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.wj) ; 2 uses
  %i.wk = icmp sgt i32 %i.wh, %..i318
  %i.wl = sub nsw i32 %i.wh, %..i318
  %spec.select407 = select i1 %i.wk, i32 %i.wl, i32 0
  %i.wm = icmp ugt i32 %i.ty, %spec.select407
  br i1 %i.wm, label %._crit_edge456, label %bb.ar

._crit_edge456:                                   ; preds = %bb.ap, %bb.aq
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 2656 ; 3 uses
  %i.wo = load ptr, ptr %i.wn, align 16, !tbaa !173
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !174
  %i.wr = ashr exact i64 %i.tc, 1                 ; 2 uses
  %i.ws = shl nsw i32 %i.ty, 1
  tail call void %i.wo(ptr noundef %i.wq, ptr noundef %i.vr, i64 noundef %i.wr, i64 noundef %i.wr, i32 noundef 17, i32 noundef 18, i32 noundef %i.tu, i32 noundef %i.ws, i32 noundef %i.sv, i32 noundef %i.sx) #11, !inline_history !175
  %i.wt = load ptr, ptr %i.wp, align 8, !tbaa !174 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.wv = load i64, ptr %i.wu, align 16, !tbaa !176
  %i.ww = mul nsw i64 %i.wv, 18
  %i.wx = getelementptr inbounds i8, ptr %i.wt, i64 %i.ww ; 3 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !177 ; 2 uses
  %i.xa = mul nsw i64 %i.wz, 10
  %i.xb = getelementptr inbounds i8, ptr %i.wx, i64 %i.xa
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.xd = load i32, ptr %i.xc, align 8, !tbaa !57
  %i.xe = and i32 %i.xd, 32768
  %.not261.i330 = icmp eq i32 %i.xe, 0
  %i.xf = sub i64 0, %i.wz
  %.0.i331.idx = select i1 %.not261.i330, i64 0, i64 %i.xf
  %.0.i331 = getelementptr inbounds i8, ptr %i.xb, i64 %.0.i331.idx ; 2 uses
  %i.xg = load ptr, ptr %i.wn, align 16, !tbaa !173
  %i.xh = ashr exact i64 %i.te, 1                 ; 4 uses
  %i.xi = shl nsw i32 %.0236.i311, 1              ; 2 uses
  %i.xj = ashr i32 %i.sv, 1                       ; 2 uses
  tail call void %i.xg(ptr noundef %i.wx, ptr noundef %i.vx, i64 noundef %i.xh, i64 noundef %i.xh, i32 noundef 9, i32 noundef 10, i32 noundef %.0237.i310, i32 noundef %i.xi, i32 noundef %i.xj, i32 noundef %.pre458) #11, !inline_history !175
  %i.xk = load ptr, ptr %i.wn, align 16, !tbaa !173
  tail call void %i.xk(ptr noundef %.0.i331, ptr noundef %i.wa, i64 noundef %i.xh, i64 noundef %i.xh, i32 noundef 9, i32 noundef 10, i32 noundef %.0237.i310, i32 noundef %i.xi, i32 noundef %i.xj, i32 noundef %.pre458) #11, !inline_history !175
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge456, %bb.aq
  %.0241.i319 = phi ptr [ %i.wt, %._crit_edge456 ], [ %i.vr, %bb.aq ]
  %.0239.i320 = phi ptr [ %i.wx, %._crit_edge456 ], [ %i.vx, %bb.aq ]
  %.0238.i321 = phi ptr [ %.0.i331, %._crit_edge456 ], [ %i.wa, %bb.aq ]
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.xm = load i64, ptr %i.xl, align 16, !tbaa !176 ; 2 uses
  %i.xn = getelementptr inbounds i8, ptr %1, i64 %i.xm
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.xp = load i64, ptr %i.xo, align 8, !tbaa !177 ; 3 uses
  %.not263.i325 = icmp eq i32 %i.si, 0            ; 2 uses
  %.1242.i326.idx = select i1 %.not263.i325, i64 0, i64 %i.xm
  %.1242.i326 = getelementptr inbounds i8, ptr %.0241.i319, i64 %.1242.i326.idx
  %i.xq = shl i32 %i.tn, 2
  %i.xr = ashr i32 %i.xq, %i.sn
  %i.xs = shl i32 %i.to, 2
  %i.xt = ashr i32 %i.xs, %i.sn
  %i.xu = sext i32 %i.so to i64
  %i.xv = getelementptr inbounds [8 x i8], ptr %6, i64 %i.xu
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !60
  tail call void %i.xw(ptr noundef %i.xn, ptr noundef %.1242.i326, i64 noundef %i.tc, i32 noundef range(i32 0, 17) %i.e, i32 noundef %i.xr, i32 noundef %i.xt) #11, !inline_history !175
  %.not264.i329 = icmp eq i32 %i.ta, 0
  br i1 %.not264.i329, label %mpeg_motion_lowres.exit396, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.1.i328.idx = select i1 %.not263.i325, i64 0, i64 %i.xp ; 2 uses
  %.1.i328 = getelementptr inbounds i8, ptr %.0238.i321, i64 %.1.i328.idx
  %.1240.i327 = getelementptr inbounds i8, ptr %.0239.i320, i64 %.1.i328.idx
  %i.xx = getelementptr inbounds i8, ptr %3, i64 %i.xp
  %i.xy = getelementptr inbounds i8, ptr %2, i64 %i.xp
  %i.xz = shl i32 %.0234.i313, 2
  %i.ya = ashr i32 %i.xz, %i.sn                   ; 2 uses
  %i.yb = shl i32 %.0235.i312, 2
  %i.yc = ashr i32 %i.yb, %i.sn                   ; 2 uses
  %i.yd = sext i32 %i.sq to i64
  %i.ye = getelementptr inbounds [8 x i8], ptr %6, i64 %i.yd ; 2 uses
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !60
  tail call void %i.yf(ptr noundef %i.xy, ptr noundef %.1240.i327, i64 noundef %i.te, i32 noundef %i.ta, i32 noundef %i.yc, i32 noundef %i.ya) #11, !inline_history !175
  %i.yg = load ptr, ptr %i.ye, align 8, !tbaa !60
  tail call void %i.yg(ptr noundef %i.xx, ptr noundef %.1.i328, i64 noundef %i.te, i32 noundef %i.ta, i32 noundef %i.yc, i32 noundef %i.ya) #11, !inline_history !175
  br label %mpeg_motion_lowres.exit396

bb.at:                                            ; preds = %bb.v
  %i.yh = add nsw i32 %i.mc, 1
  %.not212 = icmp eq i32 %i.lx, %i.yh
  br i1 %.not212, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.yj = load i32, ptr %i.yi, align 16, !tbaa !82
  %.not213 = icmp eq i32 %i.yj, 3
  br i1 %.not213, label %bb.ax, label %bb.av
end_hunk_3
begin_hunk_4_@MPV_motion_lowres:bb.a
bb.bd:                                            ; preds = %bb.bc
  %i.abg = sdiv i32 %i.zx, 2                      ; 2 uses
  %i.abh = and i32 %i.abg, %i.yz
  %i.abi = ashr i32 %i.abg, %i.zw
  %i.abj = add nsw i32 %i.abi, %i.zu
  %i.abk = insertelement <2 x i32> %i.zt, i32 %i.abh, i64 0
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.az, %bb.ay
  %.0237.i279 = phi i32 [ %i.aal, %bb.ay ], [ %i.aas, %bb.az ], [ %i.abb, %bb.bb ], [ %i.abj, %bb.bd ], [ %i.zz, %bb.bc ] ; 3 uses
  %.0236.i280 = phi i32 [ %i.aam, %bb.ay ], [ %i.aaw, %bb.az ], [ %i.abf, %bb.bb ], [ %i.aae, %bb.bd ], [ %i.aae, %bb.bc ] ; 4 uses
  %i.abl = phi <2 x i32> [ %i.aak, %bb.ay ], [ %i.aap, %bb.az ], [ %i.aay, %bb.bb ], [ %i.abk, %bb.bd ], [ %i.zt, %bb.bc ]
  %i.abm = load ptr, ptr %.0205, align 8, !tbaa !98
  %i.abn = sext i32 %i.aae to i64
  %i.abo = mul nsw i64 %i.zk, %i.abn
  %i.abp = getelementptr inbounds i8, ptr %i.abm, i64 %i.abo
  %i.abq = sext i32 %i.zz to i64
  %i.abr = getelementptr inbounds i8, ptr %i.abp, i64 %i.abq ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %.0205, i64 8
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !98
  %i.abu = sext i32 %.0236.i280 to i64
  %i.abv = mul nsw i64 %i.zm, %i.abu              ; 2 uses
  %i.abw = getelementptr inbounds i8, ptr %i.abt, i64 %i.abv
  %i.abx = sext i32 %.0237.i279 to i64            ; 2 uses
  %i.aby = getelementptr inbounds i8, ptr %i.abw, i64 %i.abx ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %.0205, i64 16
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !98
  %i.acb = getelementptr inbounds i8, ptr %i.aca, i64 %i.abv
  %i.acc = getelementptr inbounds i8, ptr %i.acb, i64 %i.abx ; 2 uses
  %i.acd = extractelement <2 x i32> %i.zt, i64 0
  %i.ace = icmp ne i32 %i.acd, 0
  %.neg.i283 = sext i1 %i.ace to i32
  %i.acf = sub i32 %i.zc, %i.ys
  %i.acg = add i32 %i.acf, %.neg.i283
  %spec.select.i284 = tail call i32 @llvm.smax.i32(i32 %i.acg, i32 0)
  %i.ach = icmp ugt i32 %i.zz, %spec.select.i284
  %i.aci = icmp slt i32 %.0236.i280, 0
  %or.cond.i285 = select i1 %i.ach, i1 true, i1 %i.aci
  br i1 %or.cond.i285, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.acj = extractelement <2 x i32> %i.zt, i64 1
  %i.ack = icmp ne i32 %i.acj, 0
  %.neg260.i286 = sext i1 %i.ack to i32
  %i.acl = add i32 %i.zf, %.neg260.i286           ; 2 uses
  %i.acm = add nsw i32 %i.zi, %i.mc
  %i.acn = shl i32 %i.acm, %i.zh
  %..i287 = tail call i32 @llvm.smax.i32(i32 %i.ys, i32 %i.acn) ; 2 uses
  %i.aco = icmp sgt i32 %i.acl, %..i287
  %i.acp = sub nsw i32 %i.acl, %..i287
  %spec.select408 = select i1 %i.aco, i32 %i.acp, i32 0
  %i.acq = icmp ugt i32 %i.aae, %spec.select408
  br i1 %i.acq, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.acr = getelementptr inbounds nuw i8, ptr %0, i64 2656 ; 3 uses
  %i.acs = load ptr, ptr %i.acr, align 16, !tbaa !173
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !174
  tail call void %i.acs(ptr noundef %i.acu, ptr noundef %i.abr, i64 noundef %i.zk, i64 noundef %i.zk, i32 noundef 17, i32 noundef 17, i32 noundef %i.zz, i32 noundef %i.aae, i32 noundef %i.zc, i32 noundef %i.zf) #11, !inline_history !175
  %i.acv = load ptr, ptr %i.act, align 8, !tbaa !174 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.acx = load i64, ptr %i.acw, align 16, !tbaa !176
  %i.acy = mul nsw i64 %i.acx, 18
  %i.acz = getelementptr inbounds i8, ptr %i.acv, i64 %i.acy ; 3 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.adb = load i64, ptr %i.ada, align 8, !tbaa !177 ; 2 uses
  %i.adc = mul nsw i64 %i.adb, 10
  %i.add = getelementptr inbounds i8, ptr %i.acz, i64 %i.adc
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.adf = load i32, ptr %i.ade, align 8, !tbaa !57
  %i.adg = and i32 %i.adf, 32768
  %.not261.i299 = icmp eq i32 %i.adg, 0
  %i.adh = sub i64 0, %i.adb
  %.0.i300.idx = select i1 %.not261.i299, i64 0, i64 %i.adh
  %.0.i300 = getelementptr inbounds i8, ptr %i.add, i64 %.0.i300.idx ; 2 uses
  %i.adi = load ptr, ptr %i.acr, align 16, !tbaa !173
  %i.adj = ashr i32 %i.zc, 1                      ; 2 uses
  %i.adk = ashr i32 %i.zf, 1                      ; 2 uses
  tail call void %i.adi(ptr noundef %i.acz, ptr noundef %i.aby, i64 noundef %i.zm, i64 noundef %i.zm, i32 noundef 9, i32 noundef 9, i32 noundef %.0237.i279, i32 noundef %.0236.i280, i32 noundef %i.adj, i32 noundef %i.adk) #11, !inline_history !175
  %i.adl = load ptr, ptr %i.acr, align 16, !tbaa !173
  tail call void %i.adl(ptr noundef %.0.i300, ptr noundef %i.acc, i64 noundef %i.zm, i64 noundef %i.zm, i32 noundef 9, i32 noundef 9, i32 noundef %.0237.i279, i32 noundef %.0236.i280, i32 noundef %i.adj, i32 noundef %i.adk) #11, !inline_history !175
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.0241.i288 = phi ptr [ %i.acv, %bb.bg ], [ %i.abr, %bb.bf ] ; 2 uses
  %.0239.i289 = phi ptr [ %i.acz, %bb.bg ], [ %i.aby, %bb.bf ] ; 2 uses
  %.0238.i290 = phi ptr [ %.0.i300, %bb.bg ], [ %i.acc, %bb.bf ] ; 2 uses
  %.not263.i294 = icmp eq i32 %i.mc, 0
  br i1 %.not263.i294, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.adm = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.adn = load i64, ptr %i.adm, align 16, !tbaa !176
  %i.ado = getelementptr inbounds i8, ptr %.0241.i288, i64 %i.adn
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.adq = load i64, ptr %i.adp, align 8, !tbaa !177 ; 2 uses
  %i.adr = getelementptr inbounds i8, ptr %.0239.i289, i64 %i.adq
  %i.ads = getelementptr inbounds i8, ptr %.0238.i290, i64 %i.adq
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.1242.i295 = phi ptr [ %i.ado, %bb.bi ], [ %.0241.i288, %bb.bh ]
  %.1240.i296 = phi ptr [ %i.adr, %bb.bi ], [ %.0239.i289, %bb.bh ]
  %.1.i297 = phi ptr [ %i.ads, %bb.bi ], [ %.0238.i290, %bb.bh ]
  %i.adt = shl <2 x i32> %i.zt, splat (i32 2)     ; 2 uses
  %i.adu = extractelement <2 x i32> %i.adt, i64 0
  %i.adv = ashr i32 %i.adu, %i.d
  %i.adw = extractelement <2 x i32> %i.adt, i64 1
  %i.adx = ashr i32 %i.adw, %i.d
  %i.ady = sext i32 %i.yu to i64
  %i.adz = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ady
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !60
  tail call void %i.aea(ptr noundef %1, ptr noundef %.1242.i295, i64 noundef %i.zk, i32 noundef range(i32 0, 17) %i.ys, i32 noundef %i.adv, i32 noundef %i.adx) #11, !inline_history !175
  %.not264.i298 = icmp eq i32 %i.zi, 0
  br i1 %.not264.i298, label %mpeg_motion_lowres.exit396, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.aeb = shl <2 x i32> %i.abl, splat (i32 2)    ; 2 uses
  %i.aec = extractelement <2 x i32> %i.aeb, i64 1
  %i.aed = ashr i32 %i.aec, %i.d                  ; 2 uses
  %i.aee = extractelement <2 x i32> %i.aeb, i64 0
  %i.aef = ashr i32 %i.aee, %i.d                  ; 2 uses
  %i.aeg = sext i32 %i.yx to i64
  %i.aeh = getelementptr inbounds [8 x i8], ptr %6, i64 %i.aeg ; 2 uses
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !60
  tail call void %i.aei(ptr noundef %2, ptr noundef %.1240.i296, i64 noundef %i.zm, i32 noundef %i.zi, i32 noundef %i.aef, i32 noundef %i.aed) #11, !inline_history !175
  %i.aej = load ptr, ptr %i.aeh, align 8, !tbaa !60
  tail call void %i.aej(ptr noundef %3, ptr noundef %.1.i297, i64 noundef %i.zm, i32 noundef %i.zi, i32 noundef %i.aef, i32 noundef %i.aed) #11, !inline_history !175
  br label %mpeg_motion_lowres.exit396

bb.bl:                                            ; preds = %.preheader420, %mpeg_motion_lowres.exit273
  %i.aek = phi i1 [ true, %.preheader420 ], [ false, %mpeg_motion_lowres.exit273 ]
  %indvars.iv450 = phi i64 [ 0, %.preheader420 ], [ 1, %mpeg_motion_lowres.exit273 ] ; 3 uses
  %.0207434 = phi ptr [ %1, %.preheader420 ], [ %i.aki, %mpeg_motion_lowres.exit273 ] ; 2 uses
  %.0208433 = phi ptr [ %3, %.preheader420 ], [ %i.akp, %mpeg_motion_lowres.exit273 ] ; 2 uses
  %.0209432 = phi ptr [ %2, %.preheader420 ], [ %i.ako, %mpeg_motion_lowres.exit273 ] ; 2 uses
  %i.ael = load i32, ptr %i.l, align 8, !tbaa !84
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv450
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !37 ; 3 uses
  %i.aeo = add nsw i32 %i.aen, 1
  %i.aep = icmp eq i32 %i.ael, %i.aeo
  br i1 %i.aep, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.aeq = load i32, ptr %i.ae, align 16, !tbaa !82
  %i.aer = icmp eq i32 %i.aeq, 3
  br i1 %i.aer, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.aes = load i32, ptr %i.af, align 4, !tbaa !85
  %.not211 = icmp eq i32 %i.aes, 0
  br i1 %.not211, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.aet = load ptr, ptr %i.ag, align 16, !tbaa !106
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !87
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bl, %bb.bm, %bb.bn, %bb.bo
  %.0199 = phi ptr [ %i.aeu, %bb.bo ], [ %5, %bb.bn ], [ %5, %bb.bm ], [ %5, %bb.bl ] ; 3 uses
  %i.aev = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv450 ; 2 uses
  %i.aew = load i32, ptr %i.aev, align 8, !tbaa !37 ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aev, i64 4
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !37
  %i.aez = trunc nuw nsw i64 %indvars.iv450 to i32
  %i.afa = mul nuw nsw i32 %i.r, %i.aez
  %i.afb = add nsw i32 %i.aey, %i.afa             ; 2 uses
  %i.afc = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 720
  %i.afe = load i32, ptr %i.afd, align 8, !tbaa !142 ; 12 uses
  %i.aff = add nsw i32 %i.afe, -1                 ; 2 uses
  %i.afg = load i32, ptr %i.t, align 4, !tbaa !151 ; 2 uses
  %i.afh = add nsw i32 %i.aff, %i.afg
  %i.afi = lshr i32 8, %i.afe                     ; 7 uses
  %i.afj = shl i32 2, %i.afe
  %i.afk = add nsw i32 %i.afj, -1                 ; 9 uses
  %i.afl = load i32, ptr %i.u, align 4, !tbaa !171
  %i.afm = ashr i32 %i.afl, %i.afe                ; 3 uses
  %i.afn = load i32, ptr %i.v, align 8, !tbaa !172
  %i.afo = ashr i32 %i.afn, %i.afe                ; 3 uses
  %i.afp = load i32, ptr %i.w, align 8, !tbaa !150 ; 2 uses
  %.not.i243 = icmp eq i32 %i.afp, 0              ; 2 uses
  %i.afq = select i1 %.not.i243, i32 %i.e, i32 %i.y ; 4 uses
  %i.afr = load i64, ptr %i.z, align 8, !tbaa !77 ; 4 uses
  %i.afs = load i64, ptr %i.aa, align 8, !tbaa !77 ; 7 uses
  %i.aft = load i32, ptr %i.ab, align 4, !tbaa !76
  %.not256.i244 = icmp eq i32 %i.aft, 0
  br i1 %.not256.i244, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.afu = sdiv i32 %i.aew, 2
  %i.afv = sdiv i32 %i.afb, 2
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.0247.i245 = phi i32 [ %i.afu, %bb.bq ], [ %i.aew, %bb.bp ] ; 7 uses
  %.0245.i246 = phi i32 [ %i.afv, %bb.bq ], [ %i.afb, %bb.bp ] ; 6 uses
  %i.afw = and i32 %.0247.i245, %i.afk            ; 3 uses
  %i.afx = and i32 %.0245.i246, %i.afk            ; 4 uses
  %i.afy = load i32, ptr %i.f, align 4, !tbaa !138 ; 4 uses
  %i.afz = shl nuw nsw i32 %i.afi, 1              ; 2 uses
  %i.aga = mul i32 %i.afz, %i.afy
  %i.agb = add nsw i32 %i.afe, 1                  ; 5 uses
  %i.agc = ashr i32 %.0247.i245, %i.agb
  %i.agd = add nsw i32 %i.aga, %i.agc             ; 5 uses
  %i.age = mul nsw i32 %i.afi, %i.ac
  %i.agf = ashr i32 %.0245.i246, %i.agb
  %i.agg = add nsw i32 %i.agf, %i.age             ; 6 uses
  %i.agh = load i32, ptr %i.ad, align 8, !tbaa !143
  switch i32 %i.agh, label %bb.bu [
    i32 2, label %bb.bs
    i32 1, label %bb.bt
  ]

bb.bs:                                            ; preds = %bb.br
  %i.agi = ashr i32 %.0247.i245, 1
  %i.agj = and i32 %i.agi, %i.afk
  %i.agk = and i32 %.0247.i245, 1
  %i.agl = or i32 %i.agj, %i.agk
  %i.agm = ashr i32 %.0245.i246, 1
  %i.agn = and i32 %i.agm, %i.afk
  %i.ago = and i32 %.0245.i246, 1
  %i.agp = or i32 %i.agn, %i.ago
  %i.agq = ashr i32 %i.agd, 1
  %i.agr = ashr i32 %i.agg, 1
  br label %bb.by

bb.bt:                                            ; preds = %bb.br
  %i.ags = sdiv i32 %.0247.i245, 4                ; 2 uses
  %i.agt = sdiv i32 %.0245.i246, 4                ; 2 uses
  %i.agu = shl nsw i32 %i.ags, 1
  %i.agv = and i32 %i.agu, %i.afk
  %i.agw = shl nsw i32 %i.agt, 1
  %i.agx = and i32 %i.agw, %i.afk
  %i.agy = mul nsw i32 %i.afy, %i.afi
  %i.agz = ashr i32 %i.ags, %i.afe
  %i.aha = add nsw i32 %i.agy, %i.agz
  %i.ahb = mul nsw i32 %i.afi, %i.s
  %i.ahc = ashr i32 %i.agt, %i.afe
  %i.ahd = add nsw i32 %i.ahc, %i.ahb
  br label %bb.by

bb.bu:                                            ; preds = %bb.br
  br i1 %.not.i243, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ahe = sdiv i32 %.0247.i245, 2                ; 2 uses
  %i.ahf = sdiv i32 %.0245.i246, 2                ; 2 uses
  %i.ahg = and i32 %i.ahe, %i.afk
  %i.ahh = and i32 %i.ahf, %i.afk
  %i.ahi = mul nsw i32 %i.afy, %i.afi
  %i.ahj = ashr i32 %i.ahe, %i.agb
  %i.ahk = add nsw i32 %i.ahi, %i.ahj
  %i.ahl = mul nsw i32 %i.afi, %i.s
  %i.ahm = ashr i32 %i.ahf, %i.agb
  %i.ahn = add nsw i32 %i.ahm, %i.ahl
  br label %bb.by

bb.bw:                                            ; preds = %bb.bu
  %.not259.i272 = icmp eq i32 %i.afg, 0
  br i1 %.not259.i272, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.aho = sdiv i32 %.0247.i245, 2                ; 2 uses
  %i.ahp = and i32 %i.aho, %i.afk
  %i.ahq = mul nsw i32 %i.afy, %i.afi
  %i.ahr = ashr i32 %i.aho, %i.agb
  %i.ahs = add nsw i32 %i.ahq, %i.ahr
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.bt, %bb.bs
  %.0237.i248 = phi i32 [ %i.agq, %bb.bs ], [ %i.aha, %bb.bt ], [ %i.ahk, %bb.bv ], [ %i.ahs, %bb.bx ], [ %i.agd, %bb.bw ] ; 3 uses
  %.0236.i249 = phi i32 [ %i.agr, %bb.bs ], [ %i.ahd, %bb.bt ], [ %i.ahn, %bb.bv ], [ %i.agg, %bb.bx ], [ %i.agg, %bb.bw ] ; 4 uses
  %.0235.i250 = phi i32 [ %i.agl, %bb.bs ], [ %i.agv, %bb.bt ], [ %i.ahg, %bb.bv ], [ %i.ahp, %bb.bx ], [ %i.afw, %bb.bw ]
  %.0234.i251 = phi i32 [ %i.agp, %bb.bs ], [ %i.agx, %bb.bt ], [ %i.ahh, %bb.bv ], [ %i.afx, %bb.bx ], [ %i.afx, %bb.bw ]
  %i.aht = load ptr, ptr %.0199, align 8, !tbaa !98
  %i.ahu = sext i32 %i.agg to i64
  %i.ahv = mul nsw i64 %i.afr, %i.ahu
  %i.ahw = getelementptr inbounds i8, ptr %i.aht, i64 %i.ahv
  %i.ahx = sext i32 %i.agd to i64
  %i.ahy = getelementptr inbounds i8, ptr %i.ahw, i64 %i.ahx ; 2 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %.0199, i64 8
  %i.aia = load ptr, ptr %i.ahz, align 8, !tbaa !98
  %i.aib = sext i32 %.0236.i249 to i64
  %i.aic = mul nsw i64 %i.afs, %i.aib             ; 2 uses
  %i.aid = getelementptr inbounds i8, ptr %i.aia, i64 %i.aic
  %i.aie = sext i32 %.0237.i248 to i64            ; 2 uses
  %i.aif = getelementptr inbounds i8, ptr %i.aid, i64 %i.aie ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %.0199, i64 16
  %i.aih = load ptr, ptr %i.aig, align 8, !tbaa !98
  %i.aii = getelementptr inbounds i8, ptr %i.aih, i64 %i.aic
  %i.aij = getelementptr inbounds i8, ptr %i.aii, i64 %i.aie ; 2 uses
  %i.aik = icmp ne i32 %i.afw, 0
  %.neg.i252 = sext i1 %i.aik to i32
  %i.ail = sub i32 %i.afm, %i.afz
  %i.aim = add i32 %i.ail, %.neg.i252
  %spec.select.i253 = tail call i32 @llvm.smax.i32(i32 %i.aim, i32 0)
  %i.ain = icmp ugt i32 %i.agd, %spec.select.i253
  %i.aio = icmp slt i32 %.0236.i249, 0
  %or.cond.i254 = select i1 %i.ain, i1 true, i1 %i.aio
  br i1 %or.cond.i254, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.aip = icmp ne i32 %i.afx, 0
  %.neg260.i255 = sext i1 %i.aip to i32
  %i.aiq = add i32 %i.afo, %.neg260.i255          ; 2 uses
  %i.air = add nsw i32 %i.afq, %i.aen
  %i.ais = shl i32 %i.air, %i.afp
  %..i256 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.ais) ; 2 uses
  %i.ait = icmp sgt i32 %i.aiq, %..i256
  %i.aiu = sub nsw i32 %i.aiq, %..i256
  %spec.select409 = select i1 %i.ait, i32 %i.aiu, i32 0
  %i.aiv = icmp ugt i32 %i.agg, %spec.select409
  br i1 %i.aiv, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.aiw = load ptr, ptr %i.ah, align 16, !tbaa !173
  %i.aix = load ptr, ptr %i.ai, align 8, !tbaa !174
  tail call void %i.aiw(ptr noundef %i.aix, ptr noundef %i.ahy, i64 noundef %i.afr, i64 noundef %i.afr, i32 noundef 17, i32 noundef 17, i32 noundef %i.agd, i32 noundef %i.agg, i32 noundef %i.afm, i32 noundef %i.afo) #11, !inline_history !175
  %i.aiy = load ptr, ptr %i.ai, align 8, !tbaa !174 ; 2 uses
  %i.aiz = load i64, ptr %i.aj, align 16, !tbaa !176
  %i.aja = mul nsw i64 %i.aiz, 18
  %i.ajb = getelementptr inbounds i8, ptr %i.aiy, i64 %i.aja ; 3 uses
  %i.ajc = load i64, ptr %i.ak, align 8, !tbaa !177 ; 2 uses
  %i.ajd = mul nsw i64 %i.ajc, 10
  %i.aje = getelementptr inbounds i8, ptr %i.ajb, i64 %i.ajd
  %i.ajf = load i32, ptr %i.al, align 8, !tbaa !57
  %i.ajg = and i32 %i.ajf, 32768
  %.not261.i268 = icmp eq i32 %i.ajg, 0
  %i.ajh = sub i64 0, %i.ajc
  %.0.i269.idx = select i1 %.not261.i268, i64 0, i64 %i.ajh
  %.0.i269 = getelementptr inbounds i8, ptr %i.aje, i64 %.0.i269.idx ; 2 uses
  %i.aji = load ptr, ptr %i.ah, align 16, !tbaa !173
  %i.ajj = ashr i32 %i.afm, 1                     ; 2 uses
  %i.ajk = ashr i32 %i.afo, 1                     ; 2 uses
  tail call void %i.aji(ptr noundef %i.ajb, ptr noundef %i.aif, i64 noundef %i.afs, i64 noundef %i.afs, i32 noundef 9, i32 noundef 9, i32 noundef %.0237.i248, i32 noundef %.0236.i249, i32 noundef %i.ajj, i32 noundef %i.ajk) #11, !inline_history !175
  %i.ajl = load ptr, ptr %i.ah, align 16, !tbaa !173
  tail call void %i.ajl(ptr noundef %.0.i269, ptr noundef %i.aij, i64 noundef %i.afs, i64 noundef %i.afs, i32 noundef 9, i32 noundef 9, i32 noundef %.0237.i248, i32 noundef %.0236.i249, i32 noundef %i.ajj, i32 noundef %i.ajk) #11, !inline_history !175
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.0241.i257 = phi ptr [ %i.aiy, %bb.ca ], [ %i.ahy, %bb.bz ] ; 2 uses
  %.0239.i258 = phi ptr [ %i.ajb, %bb.ca ], [ %i.aif, %bb.bz ] ; 2 uses
  %.0238.i259 = phi ptr [ %.0.i269, %bb.ca ], [ %i.aij, %bb.bz ] ; 2 uses
  %.not263.i263 = icmp eq i32 %i.aen, 0
  br i1 %.not263.i263, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ajm = load i64, ptr %i.aj, align 16, !tbaa !176
  %i.ajn = getelementptr inbounds i8, ptr %.0241.i257, i64 %i.ajm
  %i.ajo = load i64, ptr %i.ak, align 8, !tbaa !177 ; 2 uses
  %i.ajp = getelementptr inbounds i8, ptr %.0239.i258, i64 %i.ajo
  %i.ajq = getelementptr inbounds i8, ptr %.0238.i259, i64 %i.ajo
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.1242.i264 = phi ptr [ %i.ajn, %bb.cc ], [ %.0241.i257, %bb.cb ]
  %.1240.i265 = phi ptr [ %i.ajp, %bb.cc ], [ %.0239.i258, %bb.cb ]
  %.1.i266 = phi ptr [ %i.ajq, %bb.cc ], [ %.0238.i259, %bb.cb ]
  %i.ajr = shl i32 %i.afw, 2
  %i.ajs = ashr i32 %i.ajr, %i.afe
  %i.ajt = shl i32 %i.afx, 2
  %i.aju = ashr i32 %i.ajt, %i.afe
  %i.ajv = sext i32 %i.aff to i64
  %i.ajw = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ajv
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !60
  tail call void %i.ajx(ptr noundef %.0207434, ptr noundef %.1242.i264, i64 noundef %i.afr, i32 noundef range(i32 0, 17) %i.e, i32 noundef %i.ajs, i32 noundef %i.aju) #11, !inline_history !175
  %.not264.i267 = icmp eq i32 %i.afq, 0
  br i1 %.not264.i267, label %mpeg_motion_lowres.exit273, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ajy = shl i32 %.0234.i251, 2
  %i.ajz = ashr i32 %i.ajy, %i.afe                ; 2 uses
  %i.aka = shl i32 %.0235.i250, 2
  %i.akb = ashr i32 %i.aka, %i.afe                ; 2 uses
  %i.akc = sext i32 %i.afh to i64
  %i.akd = getelementptr inbounds [8 x i8], ptr %6, i64 %i.akc ; 2 uses
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !60
  tail call void %i.ake(ptr noundef %.0209432, ptr noundef %.1240.i265, i64 noundef %i.afs, i32 noundef %i.afq, i32 noundef %i.akb, i32 noundef %i.ajz) #11, !inline_history !175
  %i.akf = load ptr, ptr %i.akd, align 8, !tbaa !60
  tail call void %i.akf(ptr noundef %.0208433, ptr noundef %.1.i266, i64 noundef %i.afs, i32 noundef %i.afq, i32 noundef %i.akb, i32 noundef %i.ajz) #11, !inline_history !175
  br label %mpeg_motion_lowres.exit273

mpeg_motion_lowres.exit273:                       ; preds = %bb.cd, %bb.ce
  %i.akg = load i64, ptr %i.aj, align 16, !tbaa !176
  %i.akh = mul nsw i64 %i.akg, %i.am
  %i.aki = getelementptr inbounds i8, ptr %.0207434, i64 %i.akh
  %i.akj = load i32, ptr %i.w, align 8, !tbaa !150
  %i.akk = lshr i32 %i.r, %i.akj
  %i.akl = zext nneg i32 %i.akk to i64
  %i.akm = load i64, ptr %i.ak, align 8, !tbaa !177
  %i.akn = mul nsw i64 %i.akm, %i.akl             ; 2 uses
  %i.ako = getelementptr inbounds i8, ptr %.0209432, i64 %i.akn
  %i.akp = getelementptr inbounds i8, ptr %.0208433, i64 %i.akn
  br i1 %i.aek, label %bb.bl, label %mpeg_motion_lowres.exit396, !llvm.loop !181

bb.cf:                                            ; preds = %bb.a
  %i.akq = getelementptr inbounds nuw i8, ptr %0, i64 3816 ; 2 uses
  %i.akr = load i32, ptr %i.akq, align 8, !tbaa !84
  %i.aks = icmp eq i32 %i.akr, 3
  %i.akt = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.aku = zext nneg i32 %4 to i64
  %i.akv = getelementptr inbounds nuw [32 x i8], ptr %i.akt, i64 %i.aku ; 2 uses
  br i1 %i.aks, label %.preheader422, label %.preheader424

.preheader424:                                    ; preds = %bb.cf
  %i.akw = shl nuw nsw i32 %i.e, 1                ; 3 uses
  %i.akx = ashr i32 %i.i, 1                       ; 2 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %0, i64 3860
  %i.akz = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.ala = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.alb = getelementptr inbounds nuw i8, ptr %0, i64 3864
  %i.alc = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.ald = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.ale = getelementptr inbounds nuw i8, ptr %0, i64 3772
  %i.alf = and i32 %i.i, -2
  %i.alg = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.alh = getelementptr inbounds nuw i8, ptr %0, i64 2656 ; 3 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.all = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.alm = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.aln = getelementptr inbounds nuw i8, ptr %0, i64 3884
  %i.alo = getelementptr inbounds nuw i8, ptr %0, i64 1056
  br label %bb.cw

.preheader422:                                    ; preds = %bb.cf
  %i.alp = getelementptr inbounds nuw i8, ptr %0, i64 3860
  %i.alq = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.alr = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.als = getelementptr inbounds nuw i8, ptr %0, i64 3864
  %i.alt = add nuw nsw i32 %i.e, 1
  %i.alu = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.alv = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.alw = getelementptr inbounds nuw i8, ptr %0, i64 3772
  %i.alx = shl nsw i32 %i.i, 1
  %i.aly = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.alz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ama = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.amb = getelementptr inbounds nuw i8, ptr %0, i64 2656 ; 3 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.amg = getelementptr inbounds nuw i8, ptr %0, i64 1352
  br label %.preheader421

.preheader421:                                    ; preds = %.preheader422, %bb.cg
  %i.amh = phi i1 [ true, %.preheader422 ], [ false, %bb.cg ]
  %indvars.iv447 = phi i64 [ 0, %.preheader422 ], [ 1, %bb.cg ] ; 3 uses
  %.0204430 = phi ptr [ %6, %.preheader422 ], [ %i.amg, %bb.cg ] ; 2 uses
  %.idx469 = shl nuw nsw i64 %indvars.iv447, 4
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.akv, i64 %.idx469
  br label %bb.ch

bb.cg:                                            ; preds = %mpeg_motion_lowres.exit242
  br i1 %i.amh, label %.preheader421, label %mpeg_motion_lowres.exit396, !llvm.loop !182

bb.ch:                                            ; preds = %.preheader421, %mpeg_motion_lowres.exit242
  %.not262.i = phi i1 [ true, %.preheader421 ], [ false, %mpeg_motion_lowres.exit242 ] ; 2 uses
  %indvars.iv444 = phi i64 [ 0, %.preheader421 ], [ 1, %mpeg_motion_lowres.exit242 ] ; 5 uses
  %i.ami = trunc nuw nsw i64 %indvars.iv444 to i32
  %i.amj = xor i64 %indvars.iv444, %indvars.iv447
  %i.amk = trunc nuw nsw i64 %i.amj to i32        ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv444
  %i.aml = load <2 x i32>, ptr %gep, align 8, !tbaa !37 ; 2 uses
  %i.amm = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 720
  %i.amo = load i32, ptr %i.amn, align 8, !tbaa !142 ; 13 uses
  %i.amp = add nsw i32 %i.amo, -1                 ; 2 uses
  %i.amq = load i32, ptr %i.alp, align 4, !tbaa !151 ; 2 uses
  %i.amr = add nsw i32 %i.amp, %i.amq
  %i.ams = lshr i32 8, %i.amo                     ; 7 uses
  %i.amt = shl i32 2, %i.amo
  %i.amu = add nsw i32 %i.amt, -1                 ; 9 uses
  %i.amv = load i32, ptr %i.alq, align 4, !tbaa !171
  %i.amw = ashr i32 %i.amv, %i.amo                ; 3 uses
  %i.amx = load i32, ptr %i.alr, align 8, !tbaa !172
  %i.amy = ashr i32 %i.amx, %i.amo                ; 2 uses
  %i.amz = load i32, ptr %i.als, align 8, !tbaa !150 ; 2 uses
  %.not.i215 = icmp eq i32 %i.amz, 0              ; 2 uses
  %i.ana = trunc nuw nsw i64 %indvars.iv444 to i32
  %i.anb = sub nuw nsw i32 %i.alt, %i.ana
  %i.anc = lshr i32 %i.anb, 1
  %i.and = select i1 %.not.i215, i32 %i.e, i32 %i.anc ; 4 uses
  %i.ane = load i64, ptr %i.alu, align 8, !tbaa !77
  %i.anf = shl i64 %i.ane, 1                      ; 3 uses
  %i.ang = load i64, ptr %i.alv, align 8, !tbaa !77
  %i.anh = shl i64 %i.ang, 1                      ; 4 uses
  %i.ani = load i32, ptr %i.alw, align 4, !tbaa !76
  %.not256.i216 = icmp eq i32 %i.ani, 0
  %i.anj = sdiv <2 x i32> %i.aml, splat (i32 2)
  %i.ank = select i1 %.not256.i216, <2 x i32> %i.aml, <2 x i32> %i.anj ; 2 uses
  %i.anl = extractelement <2 x i32> %i.ank, i64 0 ; 7 uses
  %i.anm = sub nsw i32 %i.ami, %i.amk             ; 2 uses
  %mulshl.i219 = shl i32 %i.anm, %i.amo
  %i.ann = sub i32 %mulshl.i219, %i.anm
  %i.ano = extractelement <2 x i32> %i.ank, i64 1
  %i.anp = add nsw i32 %i.ano, %i.ann             ; 6 uses
  %i.anq = and i32 %i.anl, %i.amu                 ; 3 uses
  %i.anr = and i32 %i.anp, %i.amu                 ; 4 uses
  %i.ans = load i32, ptr %i.f, align 4, !tbaa !138 ; 4 uses
  %i.ant = shl nuw nsw i32 %i.ams, 1              ; 2 uses
  %i.anu = mul i32 %i.ant, %i.ans
  %i.anv = add nsw i32 %i.amo, 1                  ; 5 uses
  %i.anw = ashr i32 %i.anl, %i.anv
  %i.anx = add nsw i32 %i.anu, %i.anw             ; 5 uses
  %i.any = mul nsw i32 %i.alx, %i.ams
  %i.anz = ashr exact i32 %i.any, 1
  %i.aoa = ashr i32 %i.anp, %i.anv
  %i.aob = add nsw i32 %i.aoa, %i.anz             ; 6 uses
  %i.aoc = load i32, ptr %i.aly, align 8, !tbaa !143
  switch i32 %i.aoc, label %bb.ck [
    i32 2, label %bb.ci
    i32 1, label %bb.cj
  ]

bb.ci:                                            ; preds = %bb.ch
  %i.aod = ashr i32 %i.anl, 1
  %i.aoe = and i32 %i.aod, %i.amu
  %i.aof = and i32 %i.anl, 1
  %i.aog = or i32 %i.aoe, %i.aof
  %i.aoh = ashr i32 %i.anp, 1
  %i.aoi = and i32 %i.aoh, %i.amu
  %i.aoj = and i32 %i.anp, 1
  %i.aok = or i32 %i.aoi, %i.aoj
  %i.aol = ashr i32 %i.anx, 1
  %i.aom = ashr i32 %i.aob, 1
  br label %bb.co

bb.cj:                                            ; preds = %bb.ch
  %i.aon = sdiv i32 %i.anl, 4                     ; 2 uses
  %i.aoo = sdiv i32 %i.anp, 4                     ; 2 uses
  %i.aop = shl nsw i32 %i.aon, 1
  %i.aoq = and i32 %i.aop, %i.amu
  %i.aor = shl nsw i32 %i.aoo, 1
  %i.aos = and i32 %i.aor, %i.amu
  %i.aot = mul nsw i32 %i.ans, %i.ams
  %i.aou = ashr i32 %i.aon, %i.amo
  %i.aov = add nsw i32 %i.aot, %i.aou
  %i.aow = mul nsw i32 %i.ams, %i.i
  %i.aox = ashr i32 %i.aoo, %i.amo
  %i.aoy = add nsw i32 %i.aox, %i.aow
  br label %bb.co

bb.ck:                                            ; preds = %bb.ch
  br i1 %.not.i215, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.aoz = sdiv i32 %i.anl, 2                     ; 2 uses
  %i.apa = sdiv i32 %i.anp, 2                     ; 2 uses
  %i.apb = and i32 %i.aoz, %i.amu
  %i.apc = and i32 %i.apa, %i.amu
  %i.apd = mul nsw i32 %i.ans, %i.ams
  %i.ape = ashr i32 %i.aoz, %i.anv
  %i.apf = add nsw i32 %i.apd, %i.ape
  %i.apg = mul nsw i32 %i.ams, %i.i
  %i.aph = ashr i32 %i.apg, 1
  %i.api = ashr i32 %i.apa, %i.anv
  %i.apj = add nsw i32 %i.api, %i.aph
  br label %bb.co

bb.cm:                                            ; preds = %bb.ck
  %.not259.i241 = icmp eq i32 %i.amq, 0
  br i1 %.not259.i241, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.apk = sdiv i32 %i.anl, 2                     ; 2 uses
  %i.apl = and i32 %i.apk, %i.amu
  %i.apm = mul nsw i32 %i.ans, %i.ams
  %i.apn = ashr i32 %i.apk, %i.anv
  %i.apo = add nsw i32 %i.apm, %i.apn
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %bb.cl, %bb.cj, %bb.ci
  %.0237.i220 = phi i32 [ %i.aol, %bb.ci ], [ %i.aov, %bb.cj ], [ %i.apf, %bb.cl ], [ %i.apo, %bb.cn ], [ %i.anx, %bb.cm ] ; 3 uses
  %.0236.i221 = phi i32 [ %i.aom, %bb.ci ], [ %i.aoy, %bb.cj ], [ %i.apj, %bb.cl ], [ %i.aob, %bb.cn ], [ %i.aob, %bb.cm ] ; 3 uses
  %.0235.i222 = phi i32 [ %i.aog, %bb.ci ], [ %i.aoq, %bb.cj ], [ %i.apb, %bb.cl ], [ %i.apl, %bb.cn ], [ %i.anq, %bb.cm ]
  %.0234.i223 = phi i32 [ %i.aok, %bb.ci ], [ %i.aos, %bb.cj ], [ %i.apc, %bb.cl ], [ %i.anr, %bb.cn ], [ %i.anr, %bb.cm ]
  %i.app = load ptr, ptr %5, align 8, !tbaa !98
  %i.apq = sext i32 %i.aob to i64
  %i.apr = mul nsw i64 %i.anf, %i.apq
  %i.aps = getelementptr inbounds i8, ptr %i.app, i64 %i.apr
  %i.apt = sext i32 %i.anx to i64
  %i.apu = getelementptr inbounds i8, ptr %i.aps, i64 %i.apt ; 2 uses
  %i.apv = load ptr, ptr %i.alz, align 8, !tbaa !98
  %i.apw = sext i32 %.0236.i221 to i64
  %i.apx = mul nsw i64 %i.anh, %i.apw             ; 2 uses
  %i.apy = getelementptr inbounds i8, ptr %i.apv, i64 %i.apx
  %i.apz = sext i32 %.0237.i220 to i64            ; 2 uses
  %i.aqa = getelementptr inbounds i8, ptr %i.apy, i64 %i.apz ; 2 uses
  %i.aqb = load ptr, ptr %i.ama, align 8, !tbaa !98
  %i.aqc = getelementptr inbounds i8, ptr %i.aqb, i64 %i.apx
  %i.aqd = getelementptr inbounds i8, ptr %i.aqc, i64 %i.apz ; 2 uses
  %i.aqe = icmp ne i32 %i.anq, 0
  %.neg.i224 = sext i1 %i.aqe to i32
  %i.aqf = sub i32 %i.amw, %i.ant
  %i.aqg = add i32 %i.aqf, %.neg.i224
  %spec.select.i225 = tail call i32 @llvm.smax.i32(i32 %i.aqg, i32 0)
  %i.aqh = icmp ugt i32 %i.anx, %spec.select.i225
  %i.aqi = icmp slt i32 %.0236.i221, 0
  %or.cond.i226 = select i1 %i.aqh, i1 true, i1 %i.aqi
  %.pre460 = ashr i32 %i.amy, 1                   ; 3 uses
  br i1 %or.cond.i226, label %._crit_edge, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aqj = icmp ne i32 %i.anr, 0
  %.neg260.i227 = sext i1 %i.aqj to i32
  %i.aqk = add nsw i32 %.pre460, %.neg260.i227    ; 2 uses
  %i.aql = add nuw nsw i32 %i.and, %i.amk
  %i.aqm = shl i32 %i.aql, %i.amz
  %..i228 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.aqm) ; 2 uses
  %i.aqn = icmp sgt i32 %i.aqk, %..i228
  %i.aqo = sub nsw i32 %i.aqk, %..i228
  %spec.select410 = select i1 %i.aqn, i32 %i.aqo, i32 0
  %i.aqp = icmp ugt i32 %i.aob, %spec.select410
  br i1 %i.aqp, label %._crit_edge, label %bb.cq

._crit_edge:                                      ; preds = %bb.co, %bb.cp
  %i.aqq = load ptr, ptr %i.amb, align 16, !tbaa !173
  %i.aqr = load ptr, ptr %i.amc, align 8, !tbaa !174
  %i.aqs = ashr exact i64 %i.anf, 1               ; 2 uses
  %i.aqt = shl nsw i32 %i.aob, 1
  tail call void %i.aqq(ptr noundef %i.aqr, ptr noundef %i.apu, i64 noundef %i.aqs, i64 noundef %i.aqs, i32 noundef 17, i32 noundef 18, i32 noundef %i.anx, i32 noundef %i.aqt, i32 noundef %i.amw, i32 noundef %i.amy) #11, !inline_history !175
  %i.aqu = load ptr, ptr %i.amc, align 8, !tbaa !174 ; 2 uses
  %i.aqv = load i64, ptr %i.amd, align 16, !tbaa !176
  %i.aqw = mul nsw i64 %i.aqv, 18
  %i.aqx = getelementptr inbounds i8, ptr %i.aqu, i64 %i.aqw ; 3 uses
  %i.aqy = load i64, ptr %i.ame, align 8, !tbaa !177 ; 2 uses
  %i.aqz = mul nsw i64 %i.aqy, 10
  %i.ara = getelementptr inbounds i8, ptr %i.aqx, i64 %i.aqz
  %i.arb = load i32, ptr %i.amf, align 8, !tbaa !57
  %i.arc = and i32 %i.arb, 32768
  %.not261.i237 = icmp eq i32 %i.arc, 0
  %i.ard = sub i64 0, %i.aqy
  %.0.i238.idx = select i1 %.not261.i237, i64 0, i64 %i.ard
  %.0.i238 = getelementptr inbounds i8, ptr %i.ara, i64 %.0.i238.idx ; 2 uses
  %i.are = load ptr, ptr %i.amb, align 16, !tbaa !173
  %i.arf = ashr exact i64 %i.anh, 1               ; 4 uses
  %i.arg = shl nsw i32 %.0236.i221, 1             ; 2 uses
  %i.arh = ashr i32 %i.amw, 1                     ; 2 uses
  tail call void %i.are(ptr noundef %i.aqx, ptr noundef %i.aqa, i64 noundef %i.arf, i64 noundef %i.arf, i32 noundef 9, i32 noundef 10, i32 noundef %.0237.i220, i32 noundef %i.arg, i32 noundef %i.arh, i32 noundef %.pre460) #11, !inline_history !175
  %i.ari = load ptr, ptr %i.amb, align 16, !tbaa !173
  tail call void %i.ari(ptr noundef %.0.i238, ptr noundef %i.aqd, i64 noundef %i.arf, i64 noundef %i.arf, i32 noundef 9, i32 noundef 10, i32 noundef %.0237.i220, i32 noundef %i.arg, i32 noundef %i.arh, i32 noundef %.pre460) #11, !inline_history !175
  br label %bb.cq

bb.cq:                                            ; preds = %._crit_edge, %bb.cp
  %.0241.i229 = phi ptr [ %i.aqu, %._crit_edge ], [ %i.apu, %bb.cp ] ; 2 uses
  %.0239.i230 = phi ptr [ %i.aqx, %._crit_edge ], [ %i.aqa, %bb.cp ] ; 2 uses
  %.0238.i231 = phi ptr [ %.0.i238, %._crit_edge ], [ %i.aqd, %bb.cp ] ; 2 uses
  br i1 %.not262.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.arj = load i64, ptr %i.amd, align 16, !tbaa !176
  %i.ark = getelementptr inbounds i8, ptr %1, i64 %i.arj
  %i.arl = load i64, ptr %i.ame, align 8, !tbaa !177 ; 2 uses
  %i.arm = getelementptr inbounds i8, ptr %2, i64 %i.arl
  %i.arn = getelementptr inbounds i8, ptr %3, i64 %i.arl
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.0248.i = phi ptr [ %i.arn, %bb.cr ], [ %3, %bb.cq ]
  %.0244.i = phi ptr [ %i.arm, %bb.cr ], [ %2, %bb.cq ]
  %.0243.i = phi ptr [ %i.ark, %bb.cr ], [ %1, %bb.cq ]
  %.not263.i232 = icmp eq i64 %indvars.iv444, %indvars.iv447
  br i1 %.not263.i232, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.aro = load i64, ptr %i.amd, align 16, !tbaa !176
  %i.arp = getelementptr inbounds i8, ptr %.0241.i229, i64 %i.aro
  %i.arq = load i64, ptr %i.ame, align 8, !tbaa !177 ; 2 uses
  %i.arr = getelementptr inbounds i8, ptr %.0239.i230, i64 %i.arq
  %i.ars = getelementptr inbounds i8, ptr %.0238.i231, i64 %i.arq
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.1242.i233 = phi ptr [ %i.arp, %bb.ct ], [ %.0241.i229, %bb.cs ]
  %.1240.i234 = phi ptr [ %i.arr, %bb.ct ], [ %.0239.i230, %bb.cs ]
  %.1.i235 = phi ptr [ %i.ars, %bb.ct ], [ %.0238.i231, %bb.cs ]
  %i.art = shl i32 %i.anq, 2
  %i.aru = ashr i32 %i.art, %i.amo
  %i.arv = shl i32 %i.anr, 2
  %i.arw = ashr i32 %i.arv, %i.amo
  %i.arx = sext i32 %i.amp to i64
  %i.ary = getelementptr inbounds [8 x i8], ptr %.0204430, i64 %i.arx
  %i.arz = load ptr, ptr %i.ary, align 8, !tbaa !60
  tail call void %i.arz(ptr noundef %.0243.i, ptr noundef %.1242.i233, i64 noundef %i.anf, i32 noundef range(i32 0, 17) %i.e, i32 noundef %i.aru, i32 noundef %i.arw) #11, !inline_history !175
  %.not264.i236 = icmp eq i32 %i.and, 0
  br i1 %.not264.i236, label %mpeg_motion_lowres.exit242, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.asa = shl i32 %.0234.i223, 2
  %i.asb = ashr i32 %i.asa, %i.amo                ; 2 uses
  %i.asc = shl i32 %.0235.i222, 2
  %i.asd = ashr i32 %i.asc, %i.amo                ; 2 uses
  %i.ase = sext i32 %i.amr to i64
  %i.asf = getelementptr inbounds [8 x i8], ptr %.0204430, i64 %i.ase ; 2 uses
  %i.asg = load ptr, ptr %i.asf, align 8, !tbaa !60
  tail call void %i.asg(ptr noundef %.0244.i, ptr noundef %.1240.i234, i64 noundef %i.anh, i32 noundef %i.and, i32 noundef %i.asd, i32 noundef %i.asb) #11, !inline_history !175
  %i.ash = load ptr, ptr %i.asf, align 8, !tbaa !60
  tail call void %i.ash(ptr noundef %.0248.i, ptr noundef %.1.i235, i64 noundef %i.anh, i32 noundef %i.and, i32 noundef %i.asd, i32 noundef %i.asb) #11, !inline_history !175
  br label %mpeg_motion_lowres.exit242

mpeg_motion_lowres.exit242:                       ; preds = %bb.cu, %bb.cv
  br i1 %.not262.i, label %bb.ch, label %bb.cg, !llvm.loop !183

bb.cw:                                            ; preds = %.preheader424, %bb.dl
  %i.asi = phi i1 [ true, %.preheader424 ], [ false, %bb.dl ]
  %indvars.iv = phi i64 [ 0, %.preheader424 ], [ 1, %bb.dl ] ; 2 uses
  %.1427 = phi ptr [ %6, %.preheader424 ], [ %i.alm, %bb.dl ] ; 2 uses
  %.1206426 = phi ptr [ %5, %.preheader424 ], [ %.2, %bb.dl ] ; 4 uses
  %i.asj = load i32, ptr %i.akq, align 8, !tbaa !84
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ask = zext i32 %i.asj to i64
  %i.asl = icmp ne i64 %indvars.iv.next, %i.ask   ; 2 uses
  %i.asm = zext i1 %i.asl to i32
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.asn = getelementptr inbounds nuw i8, ptr %i.akv, i64 %.idx
  %i.aso = load <2 x i32>, ptr %i.asn, align 8, !tbaa !37 ; 2 uses
  %i.asp = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 720
  %i.asr = load i32, ptr %i.asq, align 8, !tbaa !142 ; 12 uses
  %i.ass = add nsw i32 %i.asr, -1                 ; 2 uses
  %i.ast = load i32, ptr %i.aky, align 4, !tbaa !151 ; 2 uses
  %i.asu = add nsw i32 %i.ass, %i.ast
  %i.asv = lshr i32 8, %i.asr                     ; 7 uses
  %i.asw = shl i32 2, %i.asr
  %i.asx = add nsw i32 %i.asw, -1                 ; 2 uses
  %i.asy = load i32, ptr %i.akz, align 4, !tbaa !171
  %i.asz = ashr i32 %i.asy, %i.asr                ; 3 uses
  %i.ata = load i32, ptr %i.ala, align 8, !tbaa !172
  %i.atb = ashr i32 %i.ata, %i.asr                ; 3 uses
  %i.atc = load i32, ptr %i.alb, align 8, !tbaa !150 ; 2 uses
  %.not.i = icmp eq i32 %i.atc, 0                 ; 2 uses
  %i.atd = select i1 %.not.i, i32 %i.akw, i32 %i.e ; 4 uses
  %i.ate = load i64, ptr %i.alc, align 8, !tbaa !77 ; 4 uses
  %i.atf = load i64, ptr %i.ald, align 8, !tbaa !77 ; 7 uses
  %i.atg = load i32, ptr %i.ale, align 4, !tbaa !76
  %.not256.i = icmp eq i32 %i.atg, 0
  %i.ath = sdiv <2 x i32> %i.aso, splat (i32 2)
  %i.ati = select i1 %.not256.i, <2 x i32> %i.aso, <2 x i32> %i.ath ; 7 uses
  %i.atj = insertelement <2 x i32> poison, i32 %i.asx, i64 0
  %i.atk = shufflevector <2 x i32> %i.atj, <2 x i32> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.atl = and <2 x i32> %i.ati, %i.atk           ; 5 uses
  %i.atm = load i32, ptr %i.f, align 4, !tbaa !138 ; 4 uses
  %i.atn = shl nuw nsw i32 %i.asv, 1              ; 2 uses
  %i.ato = mul i32 %i.atn, %i.atm
  %i.atp = add nsw i32 %i.asr, 1                  ; 5 uses
  %i.atq = extractelement <2 x i32> %i.ati, i64 0 ; 2 uses
  %i.atr = ashr i32 %i.atq, %i.atp
  %i.ats = add nsw i32 %i.ato, %i.atr             ; 5 uses
  %i.att = mul nsw i32 %i.asv, %i.alf
  %i.atu = extractelement <2 x i32> %i.ati, i64 1
  %i.atv = ashr i32 %i.atu, %i.atp
  %i.atw = add nsw i32 %i.atv, %i.att             ; 6 uses
  %i.atx = load i32, ptr %i.alg, align 8, !tbaa !143
  switch i32 %i.atx, label %bb.cz [
    i32 2, label %bb.cx
    i32 1, label %bb.cy
  ]

bb.cx:                                            ; preds = %bb.cw
  %i.aty = ashr <2 x i32> %i.ati, splat (i32 1)
  %i.atz = and <2 x i32> %i.ati, splat (i32 1)
  %i.aua = and <2 x i32> %i.aty, %i.atk
  %i.aub = or <2 x i32> %i.aua, %i.atz
  %i.auc = ashr i32 %i.ats, 1
  %i.aud = ashr i32 %i.atw, 1
  br label %bb.dd

bb.cy:                                            ; preds = %bb.cw
  %i.aue = sdiv <2 x i32> %i.ati, splat (i32 4)   ; 3 uses
  %i.auf = shl nsw <2 x i32> %i.aue, splat (i32 1)
  %i.aug = and <2 x i32> %i.auf, %i.atk
  %i.auh = mul nsw i32 %i.atm, %i.asv
  %i.aui = extractelement <2 x i32> %i.aue, i64 0
  %i.auj = ashr i32 %i.aui, %i.asr
  %i.auk = add nsw i32 %i.auh, %i.auj
  %i.aul = mul nsw i32 %i.asv, %i.akx
  %i.aum = extractelement <2 x i32> %i.aue, i64 1
  %i.aun = ashr i32 %i.aum, %i.asr
  %i.auo = add nsw i32 %i.aun, %i.aul
  br label %bb.dd

bb.cz:                                            ; preds = %bb.cw
  br i1 %.not.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.aup = sdiv <2 x i32> %i.ati, splat (i32 2)   ; 3 uses
  %i.auq = and <2 x i32> %i.aup, %i.atk
  %i.aur = mul nsw i32 %i.atm, %i.asv
  %i.aus = extractelement <2 x i32> %i.aup, i64 0
  %i.aut = ashr i32 %i.aus, %i.atp
  %i.auu = add nsw i32 %i.aur, %i.aut
  %i.auv = mul nsw i32 %i.asv, %i.akx
  %i.auw = extractelement <2 x i32> %i.aup, i64 1
  %i.aux = ashr i32 %i.auw, %i.atp
  %i.auy = add nsw i32 %i.aux, %i.auv
  br label %bb.dd

bb.db:                                            ; preds = %bb.cz
  %.not259.i = icmp eq i32 %i.ast, 0
  br i1 %.not259.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.auz = sdiv i32 %i.atq, 2                     ; 2 uses
  %i.ava = and i32 %i.auz, %i.asx
  %i.avb = mul nsw i32 %i.atm, %i.asv
  %i.avc = ashr i32 %i.auz, %i.atp
  %i.avd = add nsw i32 %i.avb, %i.avc
  %i.ave = insertelement <2 x i32> %i.atl, i32 %i.ava, i64 0
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da, %bb.cy, %bb.cx
  %.0237.i = phi i32 [ %i.auc, %bb.cx ], [ %i.auk, %bb.cy ], [ %i.auu, %bb.da ], [ %i.avd, %bb.dc ], [ %i.ats, %bb.db ] ; 3 uses
  %.0236.i = phi i32 [ %i.aud, %bb.cx ], [ %i.auo, %bb.cy ], [ %i.auy, %bb.da ], [ %i.atw, %bb.dc ], [ %i.atw, %bb.db ] ; 4 uses
  %i.avf = phi <2 x i32> [ %i.aub, %bb.cx ], [ %i.aug, %bb.cy ], [ %i.auq, %bb.da ], [ %i.ave, %bb.dc ], [ %i.atl, %bb.db ]
  %i.avg = load ptr, ptr %.1206426, align 8, !tbaa !98
  %i.avh = sext i32 %i.atw to i64
  %i.avi = mul nsw i64 %i.ate, %i.avh
  %i.avj = getelementptr inbounds i8, ptr %i.avg, i64 %i.avi
  %i.avk = sext i32 %i.ats to i64
  %i.avl = getelementptr inbounds i8, ptr %i.avj, i64 %i.avk ; 2 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %.1206426, i64 8
  %i.avn = load ptr, ptr %i.avm, align 8, !tbaa !98
  %i.avo = sext i32 %.0236.i to i64
  %i.avp = mul nsw i64 %i.atf, %i.avo             ; 2 uses
  %i.avq = getelementptr inbounds i8, ptr %i.avn, i64 %i.avp
  %i.avr = sext i32 %.0237.i to i64               ; 2 uses
  %i.avs = getelementptr inbounds i8, ptr %i.avq, i64 %i.avr ; 2 uses
  %i.avt = getelementptr inbounds nuw i8, ptr %.1206426, i64 16
  %i.avu = load ptr, ptr %i.avt, align 8, !tbaa !98
  %i.avv = getelementptr inbounds i8, ptr %i.avu, i64 %i.avp
  %i.avw = getelementptr inbounds i8, ptr %i.avv, i64 %i.avr ; 2 uses
  %i.avx = extractelement <2 x i32> %i.atl, i64 0
  %i.avy = icmp ne i32 %i.avx, 0
  %.neg.i = sext i1 %i.avy to i32
  %i.avz = sub i32 %i.asz, %i.atn
  %i.awa = add i32 %i.avz, %.neg.i
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.awa, i32 0)
  %i.awb = icmp ugt i32 %i.ats, %spec.select.i
  %i.awc = icmp slt i32 %.0236.i, 0
  %or.cond.i = select i1 %i.awb, i1 true, i1 %i.awc
  br i1 %or.cond.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.awd = extractelement <2 x i32> %i.atl, i64 1
  %i.awe = icmp ne i32 %i.awd, 0
  %.neg260.i = sext i1 %i.awe to i32
  %i.awf = add i32 %i.atb, %.neg260.i             ; 2 uses
  %i.awg = add nuw nsw i32 %i.atd, %i.asm
  %i.awh = shl i32 %i.awg, %i.atc
  %..i = tail call i32 @llvm.smax.i32(i32 %i.akw, i32 %i.awh) ; 2 uses
  %i.awi = icmp sgt i32 %i.awf, %..i
  %i.awj = sub nsw i32 %i.awf, %..i
  %spec.select411 = select i1 %i.awi, i32 %i.awj, i32 0
  %i.awk = icmp ugt i32 %i.atw, %spec.select411
  br i1 %i.awk, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.awl = load ptr, ptr %i.alh, align 16, !tbaa !173
  %i.awm = load ptr, ptr %i.ali, align 8, !tbaa !174
  tail call void %i.awl(ptr noundef %i.awm, ptr noundef %i.avl, i64 noundef %i.ate, i64 noundef %i.ate, i32 noundef 17, i32 noundef 17, i32 noundef %i.ats, i32 noundef %i.atw, i32 noundef %i.asz, i32 noundef %i.atb) #11, !inline_history !175
  %i.awn = load ptr, ptr %i.ali, align 8, !tbaa !174 ; 2 uses
  %i.awo = load i64, ptr %i.alj, align 16, !tbaa !176
  %i.awp = mul nsw i64 %i.awo, 18
  %i.awq = getelementptr inbounds i8, ptr %i.awn, i64 %i.awp ; 3 uses
  %i.awr = load i64, ptr %i.alk, align 8, !tbaa !177 ; 2 uses
  %i.aws = mul nsw i64 %i.awr, 10
  %i.awt = getelementptr inbounds i8, ptr %i.awq, i64 %i.aws
  %i.awu = load i32, ptr %i.all, align 8, !tbaa !57
  %i.awv = and i32 %i.awu, 32768
  %.not261.i = icmp eq i32 %i.awv, 0
  %i.aww = sub i64 0, %i.awr
  %.0.i.idx = select i1 %.not261.i, i64 0, i64 %i.aww
  %.0.i = getelementptr inbounds i8, ptr %i.awt, i64 %.0.i.idx ; 2 uses
  %i.awx = load ptr, ptr %i.alh, align 16, !tbaa !173
  %i.awy = ashr i32 %i.asz, 1                     ; 2 uses
  %i.awz = ashr i32 %i.atb, 1                     ; 2 uses
  tail call void %i.awx(ptr noundef %i.awq, ptr noundef %i.avs, i64 noundef %i.atf, i64 noundef %i.atf, i32 noundef 9, i32 noundef 9, i32 noundef %.0237.i, i32 noundef %.0236.i, i32 noundef %i.awy, i32 noundef %i.awz) #11, !inline_history !175
  %i.axa = load ptr, ptr %i.alh, align 16, !tbaa !173
  tail call void %i.axa(ptr noundef %.0.i, ptr noundef %i.avw, i64 noundef %i.atf, i64 noundef %i.atf, i32 noundef 9, i32 noundef 9, i32 noundef %.0237.i, i32 noundef %.0236.i, i32 noundef %i.awy, i32 noundef %i.awz) #11, !inline_history !175
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.0241.i = phi ptr [ %i.awn, %bb.df ], [ %i.avl, %bb.de ] ; 2 uses
  %.0239.i = phi ptr [ %i.awq, %bb.df ], [ %i.avs, %bb.de ] ; 2 uses
  %.0238.i = phi ptr [ %.0.i, %bb.df ], [ %i.avw, %bb.de ] ; 2 uses
  br i1 %i.asl, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.axb = load i64, ptr %i.alj, align 16, !tbaa !176
  %i.axc = getelementptr inbounds i8, ptr %.0241.i, i64 %i.axb
  %i.axd = load i64, ptr %i.alk, align 8, !tbaa !177 ; 2 uses
  %i.axe = getelementptr inbounds i8, ptr %.0239.i, i64 %i.axd
  %i.axf = getelementptr inbounds i8, ptr %.0238.i, i64 %i.axd
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.1242.i = phi ptr [ %i.axc, %bb.dh ], [ %.0241.i, %bb.dg ]
  %.1240.i = phi ptr [ %i.axe, %bb.dh ], [ %.0239.i, %bb.dg ]
  %.1.i = phi ptr [ %i.axf, %bb.dh ], [ %.0238.i, %bb.dg ]
  %i.axg = shl <2 x i32> %i.atl, splat (i32 2)    ; 2 uses
  %i.axh = extractelement <2 x i32> %i.axg, i64 0
  %i.axi = ashr i32 %i.axh, %i.asr
  %i.axj = extractelement <2 x i32> %i.axg, i64 1
  %i.axk = ashr i32 %i.axj, %i.asr
  %i.axl = sext i32 %i.ass to i64
  %i.axm = getelementptr inbounds [8 x i8], ptr %.1427, i64 %i.axl
  %i.axn = load ptr, ptr %i.axm, align 8, !tbaa !60
  tail call void %i.axn(ptr noundef %1, ptr noundef %.1242.i, i64 noundef %i.ate, i32 noundef range(i32 0, 17) %i.akw, i32 noundef %i.axi, i32 noundef %i.axk) #11, !inline_history !175
  %.not264.i = icmp eq i32 %i.atd, 0
  br i1 %.not264.i, label %mpeg_motion_lowres.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.axo = shl <2 x i32> %i.avf, splat (i32 2)    ; 2 uses
  %i.axp = extractelement <2 x i32> %i.axo, i64 1
  %i.axq = ashr i32 %i.axp, %i.asr                ; 2 uses
  %i.axr = extractelement <2 x i32> %i.axo, i64 0
  %i.axs = ashr i32 %i.axr, %i.asr                ; 2 uses
  %i.axt = sext i32 %i.asu to i64
  %i.axu = getelementptr inbounds [8 x i8], ptr %.1427, i64 %i.axt ; 2 uses
  %i.axv = load ptr, ptr %i.axu, align 8, !tbaa !60
  tail call void %i.axv(ptr noundef %2, ptr noundef %.1240.i, i64 noundef %i.atf, i32 noundef %i.atd, i32 noundef %i.axs, i32 noundef %i.axq) #11, !inline_history !175
  %i.axw = load ptr, ptr %i.axu, align 8, !tbaa !60
  tail call void %i.axw(ptr noundef %3, ptr noundef %.1.i, i64 noundef %i.atf, i32 noundef %i.atd, i32 noundef %i.axs, i32 noundef %i.axq) #11, !inline_history !175
  br label %mpeg_motion_lowres.exit

mpeg_motion_lowres.exit:                          ; preds = %bb.di, %bb.dj
  %i.axx = load i32, ptr %i.aln, align 4, !tbaa !85
  %.not = icmp eq i32 %i.axx, 0
  br i1 %.not, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %mpeg_motion_lowres.exit
  %i.axy = load ptr, ptr %i.alo, align 16, !tbaa !106
  %i.axz = load ptr, ptr %i.axy, align 8, !tbaa !87
  br label %bb.dl

bb.dl:                                            ; preds = %mpeg_motion_lowres.exit, %bb.dk
  %.2 = phi ptr [ %.1206426, %mpeg_motion_lowres.exit ], [ %i.axz, %bb.dk ]
  br i1 %i.asi, label %bb.cw, label %mpeg_motion_lowres.exit396, !llvm.loop !184

bb.dm:                                            ; preds = %bb.a
  unreachable

mpeg_motion_lowres.exit396:                       ; preds = %bb.dl, %bb.cg, %mpeg_motion_lowres.exit273, %bb.bk, %bb.bj, %bb.as, %bb.ar, %bb.m, %bb.l, %chroma_4mv_motion_lowres.exit
  ret void
}

declare void @ff_mpv_motion(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_wmv2_add_mb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_mpeg4_decode_studio(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !15, i64 344}
!10 = !{!"MpegEncContext", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !7, i64 20, !6, i64 68, !13, i64 72, !13, i64 208, !15, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !6, i64 408, !6, i64 412, !16, i64 416, !16, i64 424, !17, i64 432, !18, i64 440, !6, i64 496, !6, i64 500, !7, i64 504, !6, i64 760, !19, i64 768, !19, i64 888, !19, i64 1008, !22, i64 1128, !14, i64 1136, !14, i64 1144, !14, i64 1152, !14, i64 1160, !14, i64 1168, !22, i64 1176, !22, i64 1184, !22, i64 1192, !6, i64 1200, !14, i64 1208, !14, i64 1216, !14, i64 1224, !14, i64 1232, !23, i64 1240, !6, i64 1272, !6, i64 1276, !6, i64 1280, !6, i64 1284, !24, i64 1288, !25, i64 1320, !26, i64 1384, !27, i64 1768, !28, i64 1888, !29, i64 2656, !30, i64 2672, !22, i64 2688, !7, i64 2696, !6, i64 2728, !6, i64 2732, !7, i64 2736, !7, i64 2800, !7, i64 2816, !7, i64 2848, !6, i64 3104, !6, i64 3108, !6, i64 3112, !6, i64 3116, !7, i64 3120, !7, i64 3144, !7, i64 3168, !21, i64 3192, !7, i64 3200, !7, i64 3328, !7, i64 3456, !7, i64 3584, !6, i64 3712, !6, i64 3716, !6, i64 3720, !6, i64 3724, !6, i64 3728, !6, i64 3732, !6, i64 3736, !6, i64 3740, !16, i64 3744, !16, i64 3752, !31, i64 3760, !31, i64 3762, !31, i64 3764, !31, i64 3766, !6, i64 3768, !6, i64 3772, !6, i64 3776, !6, i64 3780, !6, i64 3784, !6, i64 3788, !6, i64 3792, !6, i64 3796, !7, i64 3800, !6, i64 3816, !6, i64 3820, !6, i64 3824, !6, i64 3828, !6, i64 3832, !6, i64 3836, !6, i64 3840, !6, i64 3844, !6, i64 3848, !6, i64 3852, !6, i64 3856, !6, i64 3860, !6, i64 3864, !6, i64 3868, !7, i64 3872, !6, i64 3880, !6, i64 3884, !12, i64 3888, !12, i64 3896, !6, i64 3904, !6, i64 3908, !32, i64 3912}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"ScanTable", !14, i64 0, !7, i64 8, !7, i64 72}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!"p1 _ZTS15AVRefStructPool", !12, i64 0}
!18 = !{!"BufferPoolContext", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !6, i64 40, !6, i64 44, !6, i64 48}
!19 = !{!"MPVWorkPicture", !7, i64 0, !7, i64 24, !20, i64 48, !14, i64 56, !7, i64 64, !21, i64 80, !14, i64 88, !7, i64 96, !6, i64 112}
!20 = !{!"p1 _ZTS10MPVPicture", !12, i64 0}
!21 = !{!"p1 int", !12, i64 0}
!22 = !{!"p1 short", !12, i64 0}
!23 = !{!"ScratchpadContext", !14, i64 0, !14, i64 8, !7, i64 16, !6, i64 24}
!24 = !{!"BlockDSPContext", !12, i64 0, !12, i64 8, !7, i64 16}
!25 = !{!"H264ChromaContext", !7, i64 0, !7, i64 32}
!26 = !{!"HpelDSPContext", !7, i64 0, !7, i64 128, !7, i64 256, !7, i64 352}
!27 = !{!"IDCTDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !7, i64 48, !6, i64 112, !6, i64 116}
!28 = !{!"QpelDSPContext", !7, i64 0, !7, i64 256, !7, i64 512}
!29 = !{!"VideoDSPContext", !12, i64 0, !12, i64 8}
!30 = !{!"H263DSPContext", !12, i64 0, !12, i64 8}
!31 = !{!"short", !7, i64 0}
!32 = !{!"ERContext", !15, i64 0, !12, i64 8, !21, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !16, i64 40, !16, i64 48, !7, i64 56, !6, i64 60, !14, i64 64, !14, i64 72, !7, i64 80, !14, i64 104, !14, i64 112, !7, i64 120, !33, i64 184, !33, i64 256, !33, i64 328, !7, i64 400, !7, i64 416, !31, i64 432, !31, i64 434, !6, i64 436, !6, i64 440, !12, i64 448, !12, i64 456}
!33 = !{!"ERPicture", !34, i64 0, !35, i64 8, !36, i64 16, !7, i64 24, !7, i64 40, !21, i64 56, !6, i64 64}
!34 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!35 = !{!"p1 _ZTS11ThreadFrame", !12, i64 0}
!36 = !{!"p1 _ZTS14ThreadProgress", !12, i64 0}
!37 = !{!6, !6, i64 0}
!38 = !{!39, !40, i64 16}
!39 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !40, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !41, i64 40, !12, i64 48, !16, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !42, i64 84, !42, i64 92, !42, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !42, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !43, i64 216, !43, i64 220, !43, i64 224, !43, i64 228, !43, i64 232, !43, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !22, i64 288, !22, i64 296, !22, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !44, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !43, i64 428, !43, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !45, i64 456, !16, i64 464, !16, i64 472, !43, i64 480, !43, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !46, i64 536, !12, i64 544, !47, i64 552, !47, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !48, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !49, i64 776, !6, i64 784, !6, i64 788, !16, i64 792, !6, i64 800, !6, i64 804, !16, i64 808, !12, i64 816, !16, i64 824, !21, i64 832, !6, i64 840, !50, i64 848, !6, i64 856, !6, i64 860}
!40 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!41 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!42 = !{!"AVRational", !6, i64 0, !6, i64 4}
!43 = !{!"float", !7, i64 0}
!44 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!45 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!46 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!47 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!48 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!49 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!50 = !{!"p2 _ZTS15AVFrameSideData", !51, i64 0}
!51 = !{!"any p2 pointer", !12, i64 0}
!52 = !{!53, !6, i64 20}
!53 = !{!"AVCodec", !14, i64 0, !14, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !7, i64 28, !11, i64 32, !54, i64 40, !14, i64 48}
!54 = !{!"p1 _ZTS9AVProfile", !12, i64 0}
!55 = !{!10, !6, i64 368}
!56 = !{!39, !6, i64 512}
!57 = !{!10, !6, i64 376}
!58 = !{!39, !6, i64 28}
!59 = !{!10, !6, i64 380}
!60 = !{!12, !12, i64 0}
!61 = !{!10, !17, i64 432}
!62 = !{!7, !7, i64 0}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = distinct !{!65, !64}
!66 = distinct !{!66, !64}
!67 = distinct !{!67, !64}
!68 = distinct !{!68, !64}
!69 = distinct !{!69, !64}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!39, !12, i64 32}
!73 = !{!10, !6, i64 356}
!74 = !{!10, !6, i64 352}
!75 = !{!10, !6, i64 3904}
!76 = !{!10, !6, i64 3772}
!77 = !{!16, !16, i64 0}
!78 = !{!10, !6, i64 3776}
!79 = !{!10, !6, i64 384}
!80 = !{!39, !6, i64 136}
!81 = !{!10, !20, i64 816}
!82 = !{!10, !6, i64 1280}
!83 = !{!10, !20, i64 936}
!84 = !{!10, !6, i64 3816}
!85 = !{!10, !6, i64 3884}
!86 = !{!39, !46, i64 536}
!87 = !{!88, !34, i64 0}
!88 = !{!"MPVPicture", !34, i64 0, !14, i64 8, !14, i64 16, !7, i64 24, !7, i64 40, !21, i64 56, !21, i64 64, !14, i64 72, !7, i64 80, !12, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !89, i64 144}
!89 = !{!"ThreadProgress", !7, i64 0, !6, i64 4, !7, i64 8, !7, i64 48}
!90 = !{!47, !47, i64 0}
!91 = !{!19, !20, i64 48}
!92 = !{!88, !6, i64 116}
!93 = !{!94, !6, i64 108}
!94 = !{!"AVFrame", !7, i64 0, !7, i64 64, !95, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !42, i64 124, !16, i64 136, !16, i64 144, !42, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !96, i64 248, !6, i64 256, !50, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !16, i64 304, !97, i64 312, !6, i64 320, !47, i64 328, !47, i64 336, !16, i64 344, !16, i64 352, !16, i64 360, !16, i64 368, !12, i64 376, !44, i64 384, !16, i64 408, !6, i64 416}
!95 = !{!"p2 omnipotent char", !51, i64 0}
!96 = !{!"p2 _ZTS11AVBufferRef", !51, i64 0}
!97 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!98 = !{!14, !14, i64 0}
!99 = !{!94, !6, i64 104}
!100 = distinct !{!100, !64}
!101 = !{!94, !6, i64 116}
!102 = distinct !{!102, !64}
!103 = !{!10, !6, i64 1200}
!104 = !{!10, !6, i64 1284}
!105 = !{!10, !6, i64 3828}
!106 = !{!10, !20, i64 1056}
!107 = !{!94, !6, i64 276}
!108 = !{!10, !6, i64 3868}
!109 = !{!10, !6, i64 3796}
!110 = !{!88, !6, i64 120}
!111 = !{!94, !6, i64 120}
!112 = !{!39, !6, i64 524}
!113 = !{!88, !6, i64 128}
!114 = !{!39, !6, i64 24}
!115 = !{!10, !6, i64 392}
!116 = !{!10, !6, i64 1120}
!117 = !{!88, !21, i64 64}
!118 = !{!88, !14, i64 16}
!119 = !{!88, !6, i64 104}
!120 = !{!88, !6, i64 108}
!121 = !{!88, !6, i64 112}
!122 = !{!39, !6, i64 788}
!123 = !{!124, !6, i64 0}
!124 = !{!"AVVideoEncParams", !6, i64 0, !16, i64 8, !16, i64 16, !6, i64 24, !6, i64 28, !7, i64 32}
!125 = distinct !{!125, !64}
!126 = !{!124, !16, i64 8}
!127 = !{!124, !16, i64 16}
!128 = !{!129, !6, i64 0}
!129 = !{!"AVVideoBlockParams", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!130 = !{!129, !6, i64 4}
!131 = !{!129, !6, i64 8}
!132 = !{!129, !6, i64 12}
!133 = !{!129, !6, i64 16}
!134 = distinct !{!134, !64}
!135 = !{!10, !31, i64 3760}
!136 = !{!10, !6, i64 3112}
!137 = !{!10, !6, i64 396}
!138 = !{!10, !6, i64 3108}
!139 = !{!10, !14, i64 1208}
!140 = !{!10, !6, i64 1272}
!141 = !{!10, !14, i64 1064}
!142 = !{!39, !6, i64 720}
!143 = !{!10, !6, i64 360}
!144 = !{!10, !6, i64 3880}
!145 = !{!10, !6, i64 3116}
!146 = !{!10, !6, i64 2728}
!147 = !{!39, !6, i64 700}
!148 = !{!10, !12, i64 1808}
!149 = distinct !{null}
!150 = !{!10, !6, i64 3864}
!151 = !{!10, !6, i64 3860}
!152 = !{!10, !12, i64 1800}
!153 = distinct !{null}
!154 = !{!39, !6, i64 664}
!155 = !{!10, !6, i64 3104}
!156 = !{!10, !12, i64 3896}
!157 = distinct !{null}
!158 = !{!10, !6, i64 1276}
!159 = !{!39, !6, i64 652}
!160 = !{!10, !12, i64 3888}
!161 = distinct !{null}
!162 = !{!10, !6, i64 3768}
!163 = !{!10, !6, i64 2732}
!164 = distinct !{!164, !71}
!165 = distinct !{!165, !64}
!166 = distinct !{!166, !71}
!167 = distinct !{!167, !64}
!168 = !{!31, !31, i64 0}
!169 = distinct !{!169, !64}
!170 = distinct !{!170, !71}
!171 = !{!10, !6, i64 404}
!172 = !{!10, !6, i64 408}
!173 = !{!10, !12, i64 2656}
!174 = !{!10, !14, i64 1240}
!175 = distinct !{null}
!176 = !{!10, !16, i64 416}
!177 = !{!10, !16, i64 424}
!178 = distinct !{null}
!179 = distinct !{null}
!180 = distinct !{!180, !64}
!181 = distinct !{!181, !64}
!182 = distinct !{!182, !64}
!183 = distinct !{!183, !64}
!184 = distinct !{!184, !64}
end_hunk_4
