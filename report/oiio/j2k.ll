inline.NumInlined: 157
inline.NumDeleted: 65
begin_hunk_0_@opj_j2k_decode_one_tile:bb.a
  %i.ce = call fastcc i32 @opj_j2k_update_image_data(ptr noundef %i.cb, ptr %.val)
  %.not66 = icmp eq i32 %i.ce, 0
  br i1 %.not66, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = load ptr, ptr %i.bb, align 8, !tbaa !240
  %i.cg = zext i32 %i.bu to i64
  %i.ch = getelementptr inbounds nuw [5696 x i8], ptr %i.cf, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 5616 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !204 ; 2 uses
  %.not.i = icmp eq ptr %i.cj, null
  br i1 %.not.i, label %opj_j2k_tcp_data_destroy.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @opj_free(ptr noundef nonnull %i.cj) #21
  store ptr null, ptr %i.ci, align 8, !tbaa !204
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 5624
  store i32 0, ptr %i.ck, align 8, !tbaa !205
  br label %opj_j2k_tcp_data_destroy.exit

opj_j2k_tcp_data_destroy.exit:                    ; preds = %bb.u, %bb.v
  %i.cl = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 4, ptr noundef nonnull @.str.295, i32 noundef %i.bw) #21 ; 0 uses
  %i.cm = icmp eq i32 %i.bu, %i.k
  br i1 %i.cm, label %bb.w, label %bb.y

bb.w:                                             ; preds = %opj_j2k_tcp_data_destroy.exit
  %i.cn = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !288
  %i.cq = add nsw i64 %i.cp, 2
  %i.cr = call i32 @opj_stream_read_seek(ptr noundef %1, i64 noundef %i.cq, ptr noundef %2) #21
  %.not67 = icmp eq i32 %i.cr, 0
  br i1 %.not67, label %bb.x, label %.loopexit69

bb.x:                                             ; preds = %bb.w
  %i.cs = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.36) #21 ; 0 uses
  br label %.loopexit

bb.y:                                             ; preds = %opj_j2k_tcp_data_destroy.exit
  %i.ct = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.298, i32 noundef %i.bw, i32 noundef %i.bc) #21 ; 0 uses
  %i.cu = call i32 @opj_j2k_read_tile_header(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef %2)
  %.not63 = icmp eq i32 %i.cu, 0
  br i1 %.not63, label %.loopexit, label %bb.r

.loopexit69:                                      ; preds = %bb.r, %bb.w
  %i.cv = call fastcc i32 @opj_j2k_are_all_used_components_decoded(ptr noundef nonnull %0, ptr noundef %2)
  br label %.loopexit

.critedge:                                        ; preds = %bb.g, %bb.k, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  br label %.loopexit

.loopexit:                                        ; preds = %bb.y, %bb.s, %bb.t, %.preheader, %.loopexit69, %.critedge, %bb.x, %bb.e
  %.1 = phi i32 [ 0, %.critedge ], [ %i.cv, %.loopexit69 ], [ 0, %bb.x ], [ 0, %bb.e ], [ 0, %.preheader ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #16

declare i32 @opj_tcd_init_encode_tile(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @opj_stream_write_data(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @opj_j2k_write_sot(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i32 %2, 12
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str.301) #21 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @opj_write_bytes_LE(ptr noundef %1, i32 noundef 65424, i32 noundef 2) #21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.c, i32 noundef 10, i32 noundef 2) #21
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !228
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.d, i32 noundef %i.f, i32 noundef 2) #21
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.g, i32 noundef %i.i, i32 noundef 1) #21
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !240
  %i.m = load i32, ptr %i.e, align 8, !tbaa !228
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [5696 x i8], ptr %i.l, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 5612
  %i.q = load i32, ptr %i.p, align 4, !tbaa !244
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.j, i32 noundef %i.q, i32 noundef 1) #21
  store i32 12, ptr %3, align 4, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @opj_j2k_write_poc_in_memory(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.d = load i32, ptr %i.c, align 8, !tbaa !228
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [5696 x i8], ptr %i.b, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 5600
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !57   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 420
  %i.n = load i32, ptr %i.m, align 4, !tbaa !108  ; 2 uses
  %i.o = add i32 %i.n, 1                          ; 2 uses
  %i.p = icmp ult i32 %i.l, 257
  %. = select i1 %i.p, i32 1, i32 2               ; 4 uses
  %i.q = shl nuw nsw i32 %., 1
  %i.r = add nuw nsw i32 %i.q, 5
  %i.s = mul i32 %i.r, %i.o                       ; 2 uses
  tail call void @opj_write_bytes_LE(ptr noundef %1, i32 noundef 65375, i32 noundef 2) #21
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.u = add i32 %i.s, 2
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.t, i32 noundef %i.u, i32 noundef 2) #21
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 424
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = zext nneg i32 %. to i64                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0523 = phi ptr [ %i.v, %.lr.ph ], [ %i.az, %bb.b ] ; 7 uses
  %.0532 = phi i32 [ 0, %.lr.ph ], [ %i.ba, %bb.b ] ; 2 uses
  %.0541 = phi ptr [ %i.w, %.lr.ph ], [ %i.aq, %bb.b ] ; 2 uses
  %i.aa = load i32, ptr %.0523, align 4, !tbaa !104
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.0541, i32 noundef %i.aa, i32 noundef 1) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %.0541, i64 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0523, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !103
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.ab, i32 noundef %i.ad, i32 noundef %.) #21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.x ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0523, i64 8 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !147
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.ae, i32 noundef %i.ag, i32 noundef 2) #21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ai = getelementptr inbounds nuw i8, ptr %.0523, i64 12 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !148
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.ah, i32 noundef %i.aj, i32 noundef 1) #21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 3 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0523, i64 16 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !105
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.ak, i32 noundef %i.am, i32 noundef %.) #21
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.x ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0523, i64 36
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !429
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.an, i32 noundef %i.ap, i32 noundef 1) #21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ar = load i32, ptr %i.af, align 4, !tbaa !147
  %i.as = load i32, ptr %i.y, align 8, !tbaa !90
  %i.at = tail call noundef i32 @llvm.smin.i32(i32 %i.ar, i32 %i.as)
  store i32 %i.at, ptr %i.af, align 4, !tbaa !147
  %i.au = load i32, ptr %i.ai, align 4, !tbaa !148
  %i.av = load i32, ptr %i.z, align 4, !tbaa !123
  %i.aw = tail call noundef i32 @llvm.smin.i32(i32 %i.au, i32 %i.av)
  store i32 %i.aw, ptr %i.ai, align 4, !tbaa !148
  %i.ax = load i32, ptr %i.al, align 4, !tbaa !105
  %i.ay = tail call noundef i32 @llvm.smin.i32(i32 %i.ax, i32 %i.l)
  store i32 %i.ay, ptr %i.al, align 4, !tbaa !105
  %i.az = getelementptr inbounds nuw i8, ptr %.0523, i64 148
  %i.ba = add nuw i32 %.0532, 1
  %exitcond.not = icmp eq i32 %.0532, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !495

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bb = add i32 %i.s, 4
  store i32 %i.bb, ptr %2, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @opj_j2k_write_sod(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %4, ptr noundef %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 9 uses
  %i.b = icmp ult i32 %4, 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.302) #21 ; 0 uses
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  tail call void @opj_write_bytes_LE(ptr noundef %2, i32 noundef 65427, i32 noundef 2) #21
  %i.d = add i32 %4, -4                           ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.f, ptr %i.g, align 4, !tbaa !496
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.i, ptr %i.j, align 8, !tbaa !497
  %i.k = icmp eq i32 %i.i, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !258
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !262
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 848
  store i32 0, ptr %i.o, align 8, !tbaa !498
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 0, ptr %3, align 4, !tbaa !3
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !9    ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @opj_tcd_marker_info_create(i32 noundef %i.q) #21 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.303) #21 ; 0 uses
  br label %bb.u

bb.h:                                             ; preds = %bb.f, %bb.e
  %.053 = phi ptr [ %i.r, %bb.f ], [ null, %bb.e ] ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !9    ; 2 uses
  %i.w = icmp ult i32 %i.d, %i.v
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.302) #21 ; 0 uses
  tail call void @opj_tcd_marker_info_destroy(ptr noundef %.053) #21
  br label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.y = sub nuw i32 %i.d, %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !228
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ac = tail call i32 @opj_tcd_encode_tile(ptr noundef nonnull %1, i32 noundef %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %3, i32 noundef %i.y, ptr noundef null, ptr noundef %.053, ptr noundef %5) #21
  %.not59 = icmp eq i32 %i.ac, 0
  br i1 %.not59, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.304) #21 ; 0 uses
  tail call void @opj_tcd_marker_info_destroy(ptr noundef %.053) #21
  br label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.ae = load i32, ptr %3, align 4, !tbaa !3
  %i.af = add i32 %i.ae, 2
  store i32 %i.af, ptr %3, align 4, !tbaa !3
  %i.ag = load i32, ptr %i.p, align 4, !tbaa !9
  %.not60 = icmp eq i32 %i.ag, 0
  br i1 %.not60, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.u, align 8, !tbaa !9
  %i.ai = zext i32 %i.ah to i64
  %i.aj = tail call ptr @opj_malloc(i64 noundef %i.ai) #21 ; 9 uses
  %.not61 = icmp eq ptr %i.aj, null
  br i1 %.not61, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ak = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.305) #21 ; 0 uses
  tail call void @opj_tcd_marker_info_destroy(ptr noundef %.053) #21
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 2 ; 2 uses
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.aj, i32 noundef 65368, i32 noundef 2) #21
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.am, i32 noundef 0, i32 noundef 1) #21
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 5 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.053, i64 4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !499
  %.not26.i = icmp eq i32 %i.ap, 0
  br i1 %.not26.i, label %.critedge, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %.053, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %9 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge13.i, %.lr.ph21.i
  %indvars.iv33.i = phi i64 [ 0, %.lr.ph21.i ], [ %indvars.iv.next34.i, %._crit_edge13.i ] ; 2 uses
  %.05218.i = phi ptr [ %i.al, %.lr.ph21.i ], [ %.153.i, %._crit_edge13.i ] ; 2 uses
  %.05717.i = phi i16 [ 3, %.lr.ph21.i ], [ %i.bs, %._crit_edge13.i ] ; 2 uses
  %.06016.i = phi i8 [ 0, %.lr.ph21.i ], [ %.161.i, %._crit_edge13.i ] ; 3 uses
  %.06315.i = phi ptr [ %i.an, %.lr.ph21.i ], [ %i.bp, %._crit_edge13.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !501
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv33.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3  ; 5 uses
  %i.au = trunc i32 %i.at to i8
  %i.av = and i8 %i.au, 127
  store i8 %i.av, ptr %i.a, align 1, !tbaa !9
  %.0494.i = lshr i32 %i.at, 7                    ; 2 uses
  %.not5.i = icmp eq i32 %.0494.i, 0
  br i1 %.not5.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p
  %10 = trunc i32 %.0494.i to i8
  %11 = or i8 %10, -128
  store i8 %11, ptr %6, align 1, !tbaa !9
  %.049.i = lshr i32 %i.at, 14                    ; 2 uses
  %.not.i = icmp eq i32 %.049.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %12 = trunc i32 %.049.i to i8
  %13 = or i8 %12, -128
  store i8 %13, ptr %7, align 1, !tbaa !9
  %.049.i.1 = lshr i32 %i.at, 21                  ; 2 uses
  %.not.i.1 = icmp eq i32 %.049.i.1, 0
  br i1 %.not.i.1, label %._crit_edge.i, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.lr.ph.i.1
  %i.aw = trunc i32 %.049.i.1 to i8
  %i.ax = or i8 %i.aw, -128
  store i8 %i.ax, ptr %8, align 1, !tbaa !9
  %.049.i.a = lshr i32 %i.at, 28                  ; 2 uses
  %.not.i.a = icmp eq i32 %.049.i.a, 0
  br i1 %.not.i.a, label %._crit_edge.i, label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.a
  %i.ay = trunc nuw nsw i32 %.049.i.a to i8
  %14 = or disjoint i8 %i.ay, -128
  store i8 %14, ptr %9, align 1, !tbaa !9
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.a, %._crit_edge.loopexit.i, %bb.p
  %.050.lcssa.i = phi i8 [ 1, %bb.p ], [ 2, %.lr.ph.i ], [ 3, %.lr.ph.i.1 ], [ 4, %.lr.ph.i.a ], [ 5, %._crit_edge.loopexit.i ] ; 3 uses
  %i.az = zext i16 %.05717.i to i32               ; 2 uses
  %i.ba = zext i8 %.050.lcssa.i to i32
  %i.bb = add nuw nsw i32 %i.ba, %i.az
  %i.bc = icmp samesign ugt i32 %i.bb, 65535
  br i1 %i.bc, label %bb.q, label %.lr.ph12.preheader.i

bb.q:                                             ; preds = %._crit_edge.i
  %i.bd = icmp eq i8 %.06016.i, -1
  br i1 %i.bd, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @opj_write_bytes_LE(ptr noundef %.05218.i, i32 noundef %i.az, i32 noundef 2) #21
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.06315.i, i32 noundef 65368, i32 noundef 2) #21
  %i.be = getelementptr inbounds nuw i8, ptr %.06315.i, i64 2
  %i.bf = getelementptr inbounds nuw i8, ptr %.06315.i, i64 4
  %i.bg = add nuw i8 %.06016.i, 1                 ; 2 uses
  %i.bh = zext i8 %i.bg to i32
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.bf, i32 noundef %i.bh, i32 noundef 1) #21
  %i.bi = getelementptr inbounds nuw i8, ptr %.06315.i, i64 5
  br label %.lr.ph12.preheader.i

.lr.ph12.preheader.i:                             ; preds = %bb.r, %._crit_edge.i
  %.164.i = phi ptr [ %i.bi, %bb.r ], [ %.06315.i, %._crit_edge.i ]
  %.161.i = phi i8 [ %i.bg, %bb.r ], [ %.06016.i, %._crit_edge.i ]
  %.158.i = phi i16 [ 3, %bb.r ], [ %.05717.i, %._crit_edge.i ]
  %.153.i = phi ptr [ %i.be, %bb.r ], [ %.05218.i, %._crit_edge.i ] ; 2 uses
  %i.bj = zext nneg i8 %.050.lcssa.i to i64
  br label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %.lr.ph12.i, %.lr.ph12.preheader.i
  %indvars.iv30.i = phi i64 [ %i.bj, %.lr.ph12.preheader.i ], [ %indvars.iv.next31.i, %.lr.ph12.i ] ; 2 uses
  %.2659.i = phi ptr [ %.164.i, %.lr.ph12.preheader.i ], [ %i.bp, %.lr.ph12.i ] ; 2 uses
  %i.bk = add nuw nsw i64 %indvars.iv30.i, 4294967295
  %i.bl = and i64 %i.bk, 4294967295
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !9
  %i.bo = zext i8 %i.bn to i32
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.2659.i, i32 noundef %i.bo, i32 noundef 1) #21
  %i.bp = getelementptr inbounds nuw i8, ptr %.2659.i, i64 1 ; 3 uses
  %indvars.iv.next31.i = add nsw i64 %indvars.iv30.i, -1 ; 2 uses
  %i.bq = and i64 %indvars.iv.next31.i, 255
  %.not67.i = icmp eq i64 %i.bq, 0
  br i1 %.not67.i, label %._crit_edge13.i, label %.lr.ph12.i, !llvm.loop !502

._crit_edge13.i:                                  ; preds = %.lr.ph12.i
  %i.br = zext i8 %.050.lcssa.i to i16
  %i.bs = add i16 %.158.i, %i.br                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %i.bt = load i32, ptr %i.ao, align 4, !tbaa !499
  %i.bu = zext i32 %i.bt to i64
  %i.bv = icmp samesign ult i64 %indvars.iv.next34.i, %i.bu
  br i1 %i.bv, label %bb.p, label %._crit_edge22.loopexit.i, !llvm.loop !503

._crit_edge22.loopexit.i:                         ; preds = %._crit_edge13.i
  %i.bw = zext i16 %i.bs to i32
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.bx = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.306) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  tail call void @opj_tcd_marker_info_destroy(ptr noundef nonnull %.053) #21
  tail call void @opj_free(ptr noundef nonnull %i.aj) #21
  br label %bb.u

.critedge:                                        ; preds = %._crit_edge22.loopexit.i, %bb.o
  %.063.lcssa.i = phi ptr [ %i.an, %bb.o ], [ %i.bp, %._crit_edge22.loopexit.i ]
  %.057.lcssa.i = phi i32 [ 3, %bb.o ], [ %i.bw, %._crit_edge22.loopexit.i ]
  %.052.lcssa.i = phi ptr [ %i.al, %bb.o ], [ %.153.i, %._crit_edge22.loopexit.i ]
  %i.by = ptrtoint ptr %.063.lcssa.i to i64
  %i.bz = ptrtoint ptr %i.aj to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 2 uses
  %i.cb = trunc i64 %i.ca to i32
  tail call void @opj_write_bytes_LE(ptr noundef %.052.lcssa.i, i32 noundef %.057.lcssa.i, i32 noundef 2) #21
  %i.cc = and i64 %i.ca, 4294967295               ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 %i.cc
  %i.ce = load i32, ptr %3, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cd, ptr align 1 %2, i64 %i.cf, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull align 1 %i.aj, i64 %i.cc, i1 false)
  tail call void @opj_free(ptr noundef nonnull %i.aj) #21
  %i.cg = load i32, ptr %3, align 4, !tbaa !3
  %i.ch = add i32 %i.cg, %i.cb
  store i32 %i.ch, ptr %3, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %.critedge, %bb.l
  tail call void @opj_tcd_marker_info_destroy(ptr noundef %.053) #21
  br label %bb.u

bb.u:                                             ; preds = %bb.n, %bb.s, %bb.t, %bb.k, %bb.i, %bb.g, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %bb.i ], [ 1, %bb.t ], [ 0, %bb.k ], [ 0, %bb.s ], [ 0, %bb.n ]
  ret i32 %.1
}

declare ptr @opj_tcd_marker_info_create(i32 noundef) local_unnamed_addr #4

declare void @opj_tcd_marker_info_destroy(ptr noundef) local_unnamed_addr #4

declare i32 @opj_tcd_encode_tile(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @opj_j2k_get_num_tp(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [5696 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !298
  switch i32 %i.f, label %bb.b [
    i32 4, label %opj_j2k_convert_progression_order.exit
    i32 0, label %opj_j2k_convert_progression_order.exit.fold.split
    i32 3, label %opj_j2k_convert_progression_order.exit.fold.split31
    i32 1, label %opj_j2k_convert_progression_order.exit.fold.split32
    i32 2, label %opj_j2k_convert_progression_order.exit.fold.split33
  ]

bb.b:                                             ; preds = %bb.a
  br label %opj_j2k_convert_progression_order.exit

opj_j2k_convert_progression_order.exit.fold.split: ; preds = %bb.a
  br label %opj_j2k_convert_progression_order.exit

opj_j2k_convert_progression_order.exit.fold.split31: ; preds = %bb.a
  br label %opj_j2k_convert_progression_order.exit

opj_j2k_convert_progression_order.exit.fold.split32: ; preds = %bb.a
  br label %opj_j2k_convert_progression_order.exit

opj_j2k_convert_progression_order.exit.fold.split33: ; preds = %bb.a
  br label %opj_j2k_convert_progression_order.exit

opj_j2k_convert_progression_order.exit:           ; preds = %bb.a, %opj_j2k_convert_progression_order.exit.fold.split33, %opj_j2k_convert_progression_order.exit.fold.split32, %opj_j2k_convert_progression_order.exit.fold.split31, %opj_j2k_convert_progression_order.exit.fold.split, %bb.b
  %.0.i.lcssa = phi ptr [ @j2k_prog_order_list, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @j2k_prog_order_list, i64 60), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @j2k_prog_order_list, i64 12), %opj_j2k_convert_progression_order.exit.fold.split ], [ getelementptr inbounds nuw (i8, ptr @j2k_prog_order_list, i64 24), %opj_j2k_convert_progression_order.exit.fold.split31 ], [ getelementptr inbounds nuw (i8, ptr @j2k_prog_order_list, i64 36), %opj_j2k_convert_progression_order.exit.fold.split32 ], [ getelementptr inbounds nuw (i8, ptr @j2k_prog_order_list, i64 48), %opj_j2k_convert_progression_order.exit.fold.split33 ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i8, ptr %i.g, align 8
  %i.i = and i8 %i.h, 1
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %opj_j2k_convert_progression_order.exit
  %.06.i = getelementptr inbounds nuw i8, ptr %.0.i.lcssa, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 424
  %i.k = zext i32 %1 to i64
  %i.l = getelementptr inbounds nuw [148 x i8], ptr %i.j, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.n = load i8, ptr %i.m, align 8, !tbaa !9
  %i.o = zext i8 %i.n to i32                      ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 84 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 88 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 92 ; 4 uses
  %i.t = load i8, ptr %.06.i, align 1, !tbaa !9   ; 2 uses
  switch i8 %i.t, label %bb.g [
    i8 67, label %bb.c
    i8 82, label %bb.d
    i8 80, label %bb.e
    i8 76, label %bb.f
  ]

bb.c:                                             ; preds = %.preheader
  %i.u = load i32, ptr %i.s, align 4, !tbaa !504
  br label %bb.g

bb.d:                                             ; preds = %.preheader
  %i.v = load i32, ptr %i.r, align 4, !tbaa !505
  br label %bb.g

bb.e:                                             ; preds = %.preheader
  %i.w = load i32, ptr %i.q, align 4, !tbaa !506
  br label %bb.g

bb.f:                                             ; preds = %.preheader
  %i.x = load i32, ptr %i.p, align 4, !tbaa !507
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %.preheader
  %.1 = phi i32 [ 1, %.preheader ], [ %i.u, %bb.c ], [ %i.v, %bb.d ], [ %i.w, %bb.e ], [ %i.x, %bb.f ] ; 6 uses
  %i.y = sext i8 %i.t to i32
  %i.z = icmp eq i32 %i.o, %i.y
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.z, %bb.t, %bb.n, %bb.g
  %.1.lcssa = phi i32 [ %.1, %bb.g ], [ %.1.1, %bb.n ], [ %.1.2, %bb.t ], [ %.1.3, %bb.z ]
  %.02326.lcssa.wide = phi i32 [ 0, %bb.g ], [ 1, %bb.n ], [ 2, %bb.t ], [ 3, %bb.z ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %.02326.lcssa.wide, ptr %i.aa, align 4, !tbaa !9
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.lcssa, i64 5
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9   ; 2 uses
  switch i8 %i.ac, label %bb.n [
    i8 67, label %bb.m
    i8 82, label %bb.l
    i8 80, label %bb.k
    i8 76, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ad = load i32, ptr %i.p, align 4, !tbaa !507
  %i.ae = mul i32 %i.ad, %.1
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.af = load i32, ptr %i.q, align 4, !tbaa !506
  %i.ag = mul i32 %i.af, %.1
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.ah = load i32, ptr %i.r, align 4, !tbaa !505
  %i.ai = mul i32 %i.ah, %.1
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.aj = load i32, ptr %i.s, align 4, !tbaa !504
  %i.ak = mul i32 %i.aj, %.1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.1.1 = phi i32 [ %.1, %bb.i ], [ %i.ak, %bb.m ], [ %i.ai, %bb.l ], [ %i.ag, %bb.k ], [ %i.ae, %bb.j ] ; 6 uses
  %i.al = sext i8 %i.ac to i32
  %i.am = icmp eq i32 %i.o, %i.al
  br i1 %i.am, label %bb.h, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.lcssa, i64 6
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !9   ; 2 uses
  switch i8 %i.ao, label %bb.t [
    i8 67, label %bb.s
    i8 82, label %bb.r
    i8 80, label %bb.q
    i8 76, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.ap = load i32, ptr %i.p, align 4, !tbaa !507
  %i.aq = mul i32 %i.ap, %.1.1
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.ar = load i32, ptr %i.q, align 4, !tbaa !506
  %i.as = mul i32 %i.ar, %.1.1
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.at = load i32, ptr %i.r, align 4, !tbaa !505
  %i.au = mul i32 %i.at, %.1.1
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.av = load i32, ptr %i.s, align 4, !tbaa !504
  %i.aw = mul i32 %i.av, %.1.1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.1.2 = phi i32 [ %.1.1, %bb.o ], [ %i.aw, %bb.s ], [ %i.au, %bb.r ], [ %i.as, %bb.q ], [ %i.aq, %bb.p ] ; 6 uses
  %i.ax = sext i8 %i.ao to i32
  %i.ay = icmp eq i32 %i.o, %i.ax
  br i1 %i.ay, label %bb.h, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.lcssa, i64 7
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !9   ; 2 uses
  switch i8 %i.ba, label %bb.z [
    i8 67, label %bb.y
    i8 82, label %bb.x
    i8 80, label %bb.w
    i8 76, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.bb = load i32, ptr %i.p, align 4, !tbaa !507
  %i.bc = mul i32 %i.bb, %.1.2
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.bd = load i32, ptr %i.q, align 4, !tbaa !506
  %i.be = mul i32 %i.bd, %.1.2
  br label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.bf = load i32, ptr %i.r, align 4, !tbaa !505
  %i.bg = mul i32 %i.bf, %.1.2
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.bh = load i32, ptr %i.s, align 4, !tbaa !504
  %i.bi = mul i32 %i.bh, %.1.2
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.1.3 = phi i32 [ %.1.2, %bb.u ], [ %i.bi, %bb.y ], [ %i.bg, %bb.x ], [ %i.be, %bb.w ], [ %i.bc, %bb.v ] ; 2 uses
  %i.bj = sext i8 %i.ba to i32
  %i.bk = icmp eq i32 %i.o, %i.bj
  br i1 %i.bk, label %bb.h, label %.loopexit

.loopexit:                                        ; preds = %bb.z, %opj_j2k_convert_progression_order.exit, %bb.h
  %.2 = phi i32 [ %.1.lcssa, %bb.h ], [ 1, %opj_j2k_convert_progression_order.exit ], [ %.1.3, %bb.z ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_write_eoc(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  tail call void @opj_write_bytes_LE(ptr noundef %i.b, i32 noundef 65497, i32 noundef 2) #21
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.d = tail call i64 @opj_stream_write_data(ptr noundef %1, ptr noundef %i.c, i64 noundef 2, ptr noundef %2) #21
  %.not = icmp eq i64 %i.d, 2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @opj_stream_flush(ptr noundef %1, ptr noundef %2) #21
  %.not6 = icmp ne i32 %i.e, 0
  %. = zext i1 %.not6 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_write_updated_tlm(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9
  %i.g = add nsw i64 %i.f, 6
  %i.h = tail call i64 @opj_stream_tell(ptr noundef %1) #21
  %i.i = tail call i32 @opj_stream_seek(ptr noundef %1, i64 noundef %i.g, ptr noundef %2) #21
  %.not16 = icmp eq i32 %i.i, 0
  br i1 %.not16, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.b, 0
  %i.j = select i1 %.not, i32 6, i32 5
  %i.k = mul i32 %i.j, %i.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !9
  %i.n = zext i32 %i.k to i64                     ; 2 uses
  %i.o = tail call i64 @opj_stream_write_data(ptr noundef %1, ptr noundef %i.m, i64 noundef %i.n, ptr noundef %2) #21
  %.not17 = icmp eq i64 %i.o, %i.n
  br i1 %.not17, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i32 @opj_stream_seek(ptr noundef %1, i64 noundef %i.h, ptr noundef %2) #21
  %.not18 = icmp ne i32 %i.p, 0
  %. = zext i1 %.not18 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @opj_j2k_write_epc(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @opj_stream_tell(ptr noundef %1) #21
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.b, align 8, !tbaa !287
  %i.f = sub i64 %i.c, %i.e
  store i64 %i.f, ptr %i.d, align 8, !tbaa !328
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @opj_j2k_end_encoding(ptr nofree noundef captures(none) initializes((64, 68)) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  tail call void @opj_tcd_destroy(ptr noundef %i.b) #21
  store ptr null, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @opj_free(ptr noundef nonnull %i.d) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9    ; 2 uses
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @opj_free(ptr noundef nonnull %i.f) #21
  store ptr null, ptr %i.e, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.g, align 8, !tbaa !9
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @opj_j2k_destroy_header_memory(ptr nofree noundef captures(none) initializes((80, 84)) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @opj_free(ptr noundef nonnull %i.b) #21
  store ptr null, ptr %i.a, align 8, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.c, align 8, !tbaa !9
  ret i32 1
}

declare i32 @opj_stream_flush(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @opj_j2k_build_encoder(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #9 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_encoding_validation(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.f = icmp ne ptr %i.e, null
  %i.g = and i1 %i.c, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = icmp ne ptr %i.i, null
  %i.k = and i1 %i.g, %i.j
  %i.l = zext i1 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !240
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 5600
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !109
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !123  ; 2 uses
  %i.s = add i32 %i.r, -33
  %or.cond = icmp ult i32 %i.s, -32
  br i1 %or.cond, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.u = load i32, ptr %i.t, align 4, !tbaa !284
  %i.v = add nsw i32 %i.r, -1
  %i.w = shl nuw i32 1, %i.v                      ; 2 uses
  %i.x = icmp ult i32 %i.u, %i.w
  br i1 %i.x, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.z = load i32, ptr %i.y, align 8, !tbaa !285
  %i.aa = icmp ult i32 %i.z, %i.w
  br i1 %i.aa, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b, %bb.a
  %i.ab = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.307) #21 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %.0 = phi i32 [ %i.l, %bb.c ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @opj_j2k_mct_validation(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i16, ptr %i.a, align 8, !tbaa !398
  %i.c = and i16 %i.b, -32256
  %i.d = icmp eq i16 %i.c, -32256
  br i1 %i.d, label %bb.b, label %.loopexit23

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.f = load i32, ptr %i.e, align 4, !tbaa !221
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load i32, ptr %i.g, align 8, !tbaa !220
  %i.i = mul i32 %i.h, %i.f                       ; 2 uses
  %.not32 = icmp eq i32 %i.i, 0
  br i1 %.not32, label %.loopexit23, label %.lr.ph30

.lr.ph30:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !240
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph30, %.loopexit
  %.01829 = phi ptr [ %i.k, %.lr.ph30 ], [ %i.bx, %.loopexit ] ; 4 uses
  %.01928 = phi i32 [ 1, %.lr.ph30 ], [ %.2, %.loopexit ] ; 2 uses
  %.02127 = phi i32 [ 0, %.lr.ph30 ], [ %i.by, %.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.01829, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !99
  %i.o = icmp eq i32 %i.n, 2
  br i1 %i.o, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.01829, i64 5648
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111
  %.not = icmp eq ptr %i.q, null
  %i.r = select i1 %.not, i32 0, i32 %.01928      ; 3 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !57   ; 4 uses
  %.not33 = icmp eq i32 %i.u, 0
  br i1 %.not33, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.01829, i64 5600
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !109  ; 10 uses
  %i.x = zext i32 %i.u to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.u, 8
  br i1 %min.iters.check, label %.lr.ph.preheader46, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.x, 4294967288               ; 4 uses
  %i.y = mul nuw nsw i64 %n.vec, 1080
  %i.z = getelementptr i8, ptr %i.w, i64 %i.y
  %i.aa = trunc nuw i64 %n.vec to i32
  %i.ab = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.r, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ab, %vector.ph ], [ %i.bm, %vector.body ]
  %vec.phi37 = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %i.bn, %vector.body ]
  %i.ac = mul i64 %index, 1080                    ; 8 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ac
  %i.ad = getelementptr i8, ptr %i.w, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.w, i64 %i.ac
  %i.af = getelementptr i8, ptr %i.w, i64 %i.ac
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.ac
  %i.ah = getelementptr i8, ptr %i.w, i64 %i.ac
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ac
  %i.aj = getelementptr i8, ptr %i.w, i64 %i.ac
  %i.ak = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  %i.al = getelementptr i8, ptr %i.ad, i64 1100
  %i.am = getelementptr i8, ptr %i.ae, i64 2180
  %i.an = getelementptr i8, ptr %i.af, i64 3260
  %i.ao = getelementptr i8, ptr %i.ag, i64 4340
  %i.ap = getelementptr i8, ptr %i.ah, i64 5420
  %i.aq = getelementptr i8, ptr %i.ai, i64 6500
  %i.ar = getelementptr i8, ptr %i.aj, i64 7580
  %i.as = load i32, ptr %i.ak, align 4, !tbaa !129
  %i.at = load i32, ptr %i.al, align 4, !tbaa !129
  %i.au = load i32, ptr %i.am, align 4, !tbaa !129
  %i.av = load i32, ptr %i.an, align 4, !tbaa !129
  %i.aw = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %i.ax = insertelement <4 x i32> %i.aw, i32 %i.at, i64 1
  %i.ay = insertelement <4 x i32> %i.ax, i32 %i.au, i64 2
  %i.az = insertelement <4 x i32> %i.ay, i32 %i.av, i64 3
  %i.ba = load i32, ptr %i.ao, align 4, !tbaa !129
  %i.bb = load i32, ptr %i.ap, align 4, !tbaa !129
  %i.bc = load i32, ptr %i.aq, align 4, !tbaa !129
  %i.bd = load i32, ptr %i.ar, align 4, !tbaa !129
  %i.be = insertelement <4 x i32> poison, i32 %i.ba, i64 0
  %i.bf = insertelement <4 x i32> %i.be, i32 %i.bb, i64 1
  %i.bg = insertelement <4 x i32> %i.bf, i32 %i.bc, i64 2
  %i.bh = insertelement <4 x i32> %i.bg, i32 %i.bd, i64 3
  %i.bi = and <4 x i32> %i.az, splat (i32 1)
  %i.bj = and <4 x i32> %i.bh, splat (i32 1)
  %i.bk = xor <4 x i32> %i.bi, splat (i32 1)
  %i.bl = xor <4 x i32> %i.bj, splat (i32 1)
  %i.bm = and <4 x i32> %i.bk, %vec.phi           ; 2 uses
  %i.bn = and <4 x i32> %i.bl, %vec.phi37         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !508

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <4 x i32> %i.bn, %i.bm
  %i.bp = tail call i32 @llvm.vector.reduce.and.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.x
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader46

.lr.ph.preheader46:                               ; preds = %.lr.ph.preheader, %middle.block
  %.026.ph = phi ptr [ %i.w, %.lr.ph.preheader ], [ %i.z, %middle.block ]
  %.125.ph = phi i32 [ %i.r, %.lr.ph.preheader ], [ %i.bp, %middle.block ]
  %.02024.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader46, %.lr.ph
  %.026 = phi ptr [ %i.bv, %.lr.ph ], [ %.026.ph, %.lr.ph.preheader46 ] ; 2 uses
  %.125 = phi i32 [ %i.bu, %.lr.ph ], [ %.125.ph, %.lr.ph.preheader46 ]
  %.02024 = phi i32 [ %i.bw, %.lr.ph ], [ %.02024.ph, %.lr.ph.preheader46 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.026, i64 20
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !129
  %i.bs = and i32 %i.br, 1
  %i.bt = xor i32 %i.bs, 1
  %i.bu = and i32 %i.bt, %.125                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.026, i64 1080
  %i.bw = add nuw i32 %.02024, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.bw, %i.u
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !509

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.d, %bb.c
  %.2 = phi i32 [ %.01928, %bb.c ], [ %i.r, %bb.d ], [ %i.bp, %middle.block ], [ %i.bu, %.lr.ph ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01829, i64 5696
  %i.by = add nuw i32 %.02127, 1                  ; 2 uses
  %exitcond34.not = icmp eq i32 %i.by, %i.i
  br i1 %exitcond34.not, label %.loopexit23, label %bb.c, !llvm.loop !510

.loopexit23:                                      ; preds = %.loopexit, %bb.b, %bb.a
  %.3 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ %.2, %.loopexit ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @opj_j2k_init_info(ptr noundef initializes((48, 52)) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.h = load i32, ptr %i.g, align 4, !tbaa !33
  %i.i = mul i32 %i.h, %i.f                       ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !3
  %.not5.i = icmp eq i32 %i.i, 0
  br i1 %.not5.i, label %opj_j2k_calculate_tp.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %.0244.i = phi ptr [ %i.t, %bb.c ], [ %i.k, %.lr.ph.preheader.i ] ; 3 uses
  %.0253.i = phi i32 [ %i.u, %bb.c ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  tail call void @opj_pi_update_encoding_parameters(ptr noundef %i.d, ptr noundef nonnull %i.a, i32 noundef %.0253.i) #21
  %i.l = getelementptr inbounds nuw i8, ptr %.0244.i, i64 420
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.02.i = phi i32 [ 0, %.lr.ph.i ], [ %i.q, %bb.b ] ; 2 uses
  %.0231.i = phi i32 [ 0, %.lr.ph.i ], [ %i.p, %bb.b ]
  %i.m = tail call fastcc i32 @opj_j2k_get_num_tp(ptr noundef nonnull %i.a, i32 noundef %.02.i, i32 noundef %.0253.i) ; 2 uses
  %i.n = load i32, ptr %i.b, align 8, !tbaa !3
  %i.o = add i32 %i.n, %i.m
  store i32 %i.o, ptr %i.b, align 8, !tbaa !3
  %i.p = add i32 %i.m, %.0231.i                   ; 2 uses
  %i.q = add i32 %.02.i, 1                        ; 2 uses
  %i.r = load i32, ptr %i.l, align 4, !tbaa !108
  %.not.i = icmp ugt i32 %i.q, %i.r
  br i1 %.not.i, label %bb.c, label %bb.b, !llvm.loop !511

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.0244.i, i64 5612
  store i32 %i.p, ptr %i.s, align 4, !tbaa !244
  %i.t = getelementptr inbounds nuw i8, ptr %.0244.i, i64 5696
  %i.u = add nuw i32 %.0253.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.u, %i.i
  br i1 %exitcond.not.i, label %opj_j2k_calculate_tp.exit, label %.lr.ph.i, !llvm.loop !512

opj_j2k_calculate_tp.exit:                        ; preds = %bb.c, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_write_soc(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  tail call void @opj_write_bytes_LE(ptr noundef %i.b, i32 noundef 65359, i32 noundef 2) #21
  %i.c = tail call i64 @opj_stream_write_data(ptr noundef %1, ptr noundef %i.b, i64 noundef 2, ptr noundef %2) #21
  %.not = icmp eq i64 %i.c, 2
  %. = zext i1 %.not to i32
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_write_siz(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !57
  %i.f = mul i32 %i.e, 3                          ; 2 uses
  %i.g = add i32 %i.f, 40                         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !9
  %i.l = icmp ugt i32 %i.g, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9    ; 2 uses
  br i1 %i.l, label %bb.b, label %._crit_edge83

bb.b:                                             ; preds = %bb.a
  %i.o = zext i32 %i.g to i64
  %i.p = tail call ptr @opj_realloc(ptr noundef %i.n, i64 noundef %i.o) #21 ; 3 uses
  %.not.not = icmp eq ptr %i.p, null
  br i1 %.not.not, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !9
  tail call void @opj_free(ptr noundef %i.q) #21
  store ptr null, ptr %i.m, align 8, !tbaa !9
  store i32 0, ptr %i.j, align 8, !tbaa !9
  %i.r = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.308) #21 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.p, ptr %i.m, align 8, !tbaa !9
  store i32 %i.g, ptr %i.j, align 8, !tbaa !9
  br label %._crit_edge83

._crit_edge83:                                    ; preds = %bb.a, %bb.c
  %i.s = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.a ] ; 13 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @opj_write_bytes_LE(ptr noundef %i.s, i32 noundef 65361, i32 noundef 2) #21
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.v = add i32 %i.f, 38
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.u, i32 noundef %i.v, i32 noundef 2) #21
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.x = load i16, ptr %i.c, align 8, !tbaa !79
  %i.y = zext i16 %i.x to i32
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.w, i32 noundef %i.y, i32 noundef 2) #21
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !84
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.z, i32 noundef %i.ab, i32 noundef 4) #21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !86
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.ac, i32 noundef %i.ae, i32 noundef 4) #21
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 14
  %i.ag = load i32, ptr %i.b, align 8, !tbaa !149
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.af, i32 noundef %i.ag, i32 noundef 4) #21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 18
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !150
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.ah, i32 noundef %i.aj, i32 noundef 4) #21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 22
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.am = load i32, ptr %i.al, align 4, !tbaa !82
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.ak, i32 noundef %i.am, i32 noundef 4) #21
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 26
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !83
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.an, i32 noundef %i.ap, i32 noundef 4) #21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 30
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !85
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.aq, i32 noundef %i.as, i32 noundef 4) #21
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 34
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.av = load i32, ptr %i.au, align 8, !tbaa !87
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.at, i32 noundef %i.av, i32 noundef 4) #21
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 38
  %i.ax = load i32, ptr %i.d, align 8, !tbaa !57
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.aw, i32 noundef %i.ax, i32 noundef 2) #21
  %i.ay = load i32, ptr %i.d, align 8, !tbaa !57
  %.not82 = icmp eq i32 %i.ay, 0
  br i1 %.not82, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %._crit_edge83
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.07481 = phi ptr [ %i.bn, %.lr.ph ], [ %i.i, %.lr.ph.preheader ] ; 5 uses
  %.07580 = phi ptr [ %i.bm, %.lr.ph ], [ %i.az, %.lr.ph.preheader ] ; 4 uses
  %.07679 = phi i32 [ %i.bo, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.07481, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !75
  %i.bc = add i32 %i.bb, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %.07481, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !119
  %i.bf = shl i32 %i.be, 7
  %i.bg = add i32 %i.bc, %i.bf
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.07580, i32 noundef %i.bg, i32 noundef 1) #21
  %i.bh = getelementptr inbounds nuw i8, ptr %.07580, i64 1
  %i.bi = load i32, ptr %.07481, align 8, !tbaa !76
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.bh, i32 noundef %i.bi, i32 noundef 1) #21
  %i.bj = getelementptr inbounds nuw i8, ptr %.07580, i64 2
  %i.bk = getelementptr inbounds nuw i8, ptr %.07481, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !77
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.bj, i32 noundef %i.bl, i32 noundef 1) #21
  %i.bm = getelementptr inbounds nuw i8, ptr %.07580, i64 3
  %i.bn = getelementptr inbounds nuw i8, ptr %.07481, i64 64
  %i.bo = add nuw i32 %.07679, 1                  ; 2 uses
  %i.bp = load i32, ptr %i.d, align 8, !tbaa !57
  %i.bq = icmp ult i32 %i.bo, %i.bp
  br i1 %i.bq, label %.lr.ph, label %._crit_edge, !llvm.loop !513

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge83
  %i.br = load ptr, ptr %i.t, align 8, !tbaa !9
  %i.bs = zext i32 %i.g to i64                    ; 2 uses
  %i.bt = tail call i64 @opj_stream_write_data(ptr noundef %1, ptr noundef %i.br, i64 noundef %i.bs, ptr noundef %2) #21
  %.not = icmp eq i64 %i.bt, %i.bs
  %. = zext i1 %.not to i32
  br label %bb.d

bb.d:                                             ; preds = %.thread, %._crit_edge
  %.1 = phi i32 [ %., %._crit_edge ], [ 0, %.thread ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_write_cod(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !228
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [5696 x i8], ptr %i.c, i64 %i.f ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 5600
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109  ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !122
  %i.k = and i32 %i.j, 1
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %opj_j2k_get_SPCod_SPCoc_size.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !123
  %i.n = add i32 %i.m, 5
  br label %opj_j2k_get_SPCod_SPCoc_size.exit

opj_j2k_get_SPCod_SPCoc_size.exit:                ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.n, %bb.b ], [ 5, %bb.a ]   ; 3 uses
  %i.o = add i32 %.0.i, 9                         ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !9
  %i.r = icmp ugt i32 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !9    ; 2 uses
  br i1 %i.r, label %bb.c, label %opj_j2k_get_SPCod_SPCoc_size.exit._crit_edge

bb.c:                                             ; preds = %opj_j2k_get_SPCod_SPCoc_size.exit
  %i.u = zext i32 %i.o to i64
  %i.v = tail call ptr @opj_realloc(ptr noundef %i.t, i64 noundef %i.u) #21 ; 3 uses
  %.not.not = icmp eq ptr %i.v, null
  br i1 %.not.not, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !9
  tail call void @opj_free(ptr noundef %i.w) #21
  store ptr null, ptr %i.s, align 8, !tbaa !9
  store i32 0, ptr %i.p, align 8, !tbaa !9
  %i.x = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.309) #21 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  store ptr %i.v, ptr %i.s, align 8, !tbaa !9
  store i32 %i.o, ptr %i.p, align 8, !tbaa !9
  br label %opj_j2k_get_SPCod_SPCoc_size.exit._crit_edge

opj_j2k_get_SPCod_SPCoc_size.exit._crit_edge:     ; preds = %opj_j2k_get_SPCod_SPCoc_size.exit, %bb.d
  %i.y = phi ptr [ %i.v, %bb.d ], [ %i.t, %opj_j2k_get_SPCod_SPCoc_size.exit ] ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @opj_write_bytes_LE(ptr noundef %i.y, i32 noundef 65362, i32 noundef 2) #21
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ab = add i32 %.0.i, 7
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.aa, i32 noundef %i.ab, i32 noundef 2) #21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ad = load i32, ptr %i.g, align 8, !tbaa !297
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.ac, i32 noundef %i.ad, i32 noundef 1) #21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !298
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.ae, i32 noundef %i.ag, i32 noundef 1) #21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !90
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.ah, i32 noundef %i.aj, i32 noundef 2) #21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !99
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.ak, i32 noundef %i.am, i32 noundef 1) #21
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 9
  store i32 %.0.i, ptr %i.a, align 4, !tbaa !3
  %i.ao = load i32, ptr %i.d, align 8, !tbaa !228
  %.val54 = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.ap = call fastcc i32 @opj_j2k_write_SPCod_SPCoc(ptr %.val54, i32 noundef %i.ao, ptr noundef nonnull %i.an, ptr noundef %i.a, ptr noundef %2)
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %opj_j2k_get_SPCod_SPCoc_size.exit._crit_edge
  %i.aq = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.310) #21 ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %opj_j2k_get_SPCod_SPCoc_size.exit._crit_edge
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !3
  %.not52 = icmp eq i32 %i.ar, 0
  br i1 %.not52, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.310) #21 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.z, align 8, !tbaa !9
  %i.au = zext i32 %i.o to i64                    ; 2 uses
  %i.av = tail call i64 @opj_stream_write_data(ptr noundef %1, ptr noundef %i.at, i64 noundef %i.au, ptr noundef %2) #21
  %.not53 = icmp eq i64 %i.av, %i.au
  %. = zext i1 %.not53 to i32
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h, %bb.g, %bb.e
  %.1 = phi i32 [ 0, %bb.g ], [ %., %bb.h ], [ 0, %.thread ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_write_qcd(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !228
  %i.d = getelementptr i8, ptr %0, i64 264        ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.e = zext i32 %i.c to i64
  %i.f = getelementptr inbounds nuw [5696 x i8], ptr %.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 5600
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 4, !tbaa !130  ; 2 uses
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %opj_j2k_get_SQcd_SQcc_size.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !123
  %i.n = mul i32 %i.m, 3
  %i.o = add i32 %i.n, -2
  br label %opj_j2k_get_SQcd_SQcc_size.exit

opj_j2k_get_SQcd_SQcc_size.exit:                  ; preds = %bb.a, %bb.b
  %i.p = phi i32 [ %i.o, %bb.b ], [ 1, %bb.a ]    ; 2 uses
  %i.q = icmp eq i32 %i.j, 0
  %i.r = add i32 %i.p, 1
  %i.s = shl i32 %i.p, 1
  %i.t = or disjoint i32 %i.s, 1
  %.0.i = select i1 %i.q, i32 %i.r, i32 %i.t      ; 3 uses
  %i.u = add i32 %.0.i, 4                         ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !9
  %i.x = icmp ugt i32 %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !9    ; 2 uses
  br i1 %i.x, label %bb.c, label %opj_j2k_get_SQcd_SQcc_size.exit._crit_edge

bb.c:                                             ; preds = %opj_j2k_get_SQcd_SQcc_size.exit
  %i.aa = zext i32 %i.u to i64
  %i.ab = tail call ptr @opj_realloc(ptr noundef %i.z, i64 noundef %i.aa) #21 ; 3 uses
  %.not.not = icmp eq ptr %i.ab, null
  br i1 %.not.not, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !9
  tail call void @opj_free(ptr noundef %i.ac) #21
  store ptr null, ptr %i.y, align 8, !tbaa !9
  store i32 0, ptr %i.v, align 8, !tbaa !9
  %i.ad = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.312) #21 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !9
  store i32 %i.u, ptr %i.v, align 8, !tbaa !9
  br label %opj_j2k_get_SQcd_SQcc_size.exit._crit_edge

opj_j2k_get_SQcd_SQcc_size.exit._crit_edge:       ; preds = %opj_j2k_get_SQcd_SQcc_size.exit, %bb.d
  %i.ae = phi ptr [ %i.ab, %bb.d ], [ %i.z, %opj_j2k_get_SQcd_SQcc_size.exit ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @opj_write_bytes_LE(ptr noundef %i.ae, i32 noundef 65372, i32 noundef 2) #21
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ah = add i32 %.0.i, 2
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.ag, i32 noundef %i.ah, i32 noundef 2) #21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %.0.i, ptr %i.a, align 4, !tbaa !3
  %i.aj = load i32, ptr %i.b, align 8, !tbaa !228
  %.val39 = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.ak = call fastcc i32 @opj_j2k_write_SQcd_SQcc(ptr %.val39, i32 noundef %i.aj, i32 noundef 0, ptr noundef nonnull %i.ai, ptr noundef %i.a, ptr noundef %2)
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %opj_j2k_get_SQcd_SQcc_size.exit._crit_edge
  %i.al = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.313) #21 ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %opj_j2k_get_SQcd_SQcc_size.exit._crit_edge
  %i.am = load i32, ptr %i.a, align 4, !tbaa !3
  %.not37 = icmp eq i32 %i.am, 0
  br i1 %.not37, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.313) #21 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !9
  %i.ap = zext i32 %i.u to i64                    ; 2 uses
  %i.aq = tail call i64 @opj_stream_write_data(ptr noundef %1, ptr noundef %i.ao, i64 noundef %i.ap, ptr noundef %2) #21
  %.not38 = icmp eq i64 %i.aq, %i.ap
  %. = zext i1 %.not38 to i32
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h, %bb.g, %bb.e
  %.1 = phi i32 [ 0, %bb.g ], [ %., %bb.h ], [ 0, %.thread ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_write_all_coc(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %i.f = icmp ugt i32 %i.e, 1
  br i1 %i.f, label %.lr.ph, label %.loopexit18

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 264        ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 336        ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %opj_j2k_compare_coc.exit
  %i.k = phi ptr [ %i.c, %.lr.ph ], [ %i.cp, %opj_j2k_compare_coc.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %opj_j2k_compare_coc.exit ] ; 6 uses
  %i.l = phi i32 [ %i.e, %.lr.ph ], [ %i.cr, %opj_j2k_compare_coc.exit ] ; 2 uses
  %.val = load ptr, ptr %i.g, align 8, !tbaa !32  ; 2 uses
  %.val11 = load i32, ptr %i.h, align 8, !tbaa !228
  %i.m = zext i32 %.val11 to i64                  ; 2 uses
  %i.n = getelementptr inbounds nuw [5696 x i8], ptr %.val, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 5600
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !109  ; 10 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !122
  %i.r = getelementptr inbounds nuw [1080 x i8], ptr %i.p, i64 %indvars.iv ; 9 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !122  ; 2 uses
  %.not.i = icmp eq i32 %i.q, %i.s
  br i1 %.not.i, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !123  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !123
  %.not.i.i = icmp eq i32 %i.u, %i.w
  br i1 %.not.i.i, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !124
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !124
  %.not31.i.i = icmp eq i32 %i.y, %i.aa
  br i1 %.not31.i.i, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !125
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !125
  %.not32.i.i = icmp eq i32 %i.ac, %i.ae
  br i1 %.not32.i.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !127
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !127
  %.not33.i.i = icmp eq i32 %i.ag, %i.ai
  br i1 %.not33.i.i, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !129
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !129
  %.not34.i.i = icmp eq i32 %i.ak, %i.am
  br i1 %.not34.i.i, label %.preheader.i.i, label %.loopexit

.preheader.i.i:                                   ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 812
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 944
  %.not6.i.i = icmp eq i32 %i.u, 0
  br i1 %.not6.i.i, label %opj_j2k_compare_coc.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 812
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 944
  %wide.trip.count.i.i = zext i32 %i.u to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.j
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %opj_j2k_compare_coc.exit, label %bb.i, !llvm.loop !514

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 5 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %.not36.i.i = icmp eq i32 %i.as, %i.au
  br i1 %.not36.i.i, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %.not37.i.i = icmp eq i32 %i.aw, %i.ay
  br i1 %.not37.i.i, label %bb.h, label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.j, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %i.az = icmp ult i32 %i.l, 257
  %i.ba = select i1 %i.az, i32 6, i32 7
  %i.bb = and i32 %i.s, 1                         ; 2 uses
  %.not.i.i12 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i12, label %opj_j2k_get_SPCod_SPCoc_size.exit.i, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !123
  %i.be = add i32 %i.bd, 5
  br label %opj_j2k_get_SPCod_SPCoc_size.exit.i

opj_j2k_get_SPCod_SPCoc_size.exit.i:              ; preds = %bb.k, %.loopexit
  %.0.i.i = phi i32 [ %i.be, %bb.k ], [ 5, %.loopexit ]
  %i.bf = add i32 %.0.i.i, %i.ba                  ; 4 uses
  %i.bg = load i32, ptr %i.i, align 8, !tbaa !9
  %i.bh = icmp ugt i32 %i.bf, %i.bg
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !9   ; 2 uses
  br i1 %i.bh, label %bb.l, label %opj_j2k_get_SPCod_SPCoc_size.exit._crit_edge.i

bb.l:                                             ; preds = %opj_j2k_get_SPCod_SPCoc_size.exit.i
  %i.bj = zext i32 %i.bf to i64
  %i.bk = tail call ptr @opj_realloc(ptr noundef %i.bi, i64 noundef %i.bj) #21 ; 3 uses
  %.not.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.not.i, label %opj_j2k_write_coc.exit.thread, label %bb.m

opj_j2k_write_coc.exit.thread:                    ; preds = %bb.l
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !9
  tail call void @opj_free(ptr noundef %i.bl) #21
  store ptr null, ptr %i.j, align 8, !tbaa !9
  store i32 0, ptr %i.i, align 8, !tbaa !9
  %i.bm = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.315) #21 ; 0 uses
  br label %.loopexit18

bb.m:                                             ; preds = %bb.l
  store ptr %i.bk, ptr %i.j, align 8, !tbaa !9
  store i32 %i.bf, ptr %i.i, align 8, !tbaa !9
  %.pre31.i = load ptr, ptr %i.g, align 8, !tbaa !32 ; 2 uses
  %.pre32.i = load i32, ptr %i.h, align 8, !tbaa !228
  %.pre33.i = load ptr, ptr %i.b, align 8, !tbaa !46
  %.phi.trans.insert34.i = getelementptr inbounds nuw i8, ptr %.pre33.i, i64 16
  %.pre35.i = load i32, ptr %.phi.trans.insert34.i, align 8, !tbaa !57
  %.phi.trans.insert36.i = zext i32 %.pre32.i to i64 ; 2 uses
  %.phi.trans.insert37.i = getelementptr inbounds nuw [5696 x i8], ptr %.pre31.i, i64 %.phi.trans.insert36.i
  %.phi.trans.insert38.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert37.i, i64 5600
  %.pre39.i = load ptr, ptr %.phi.trans.insert38.i, align 8, !tbaa !109 ; 2 uses
  %.phi.trans.insert40.i = getelementptr inbounds nuw [1080 x i8], ptr %.pre39.i, i64 %indvars.iv
  %.pre41.i = load i32, ptr %.phi.trans.insert40.i, align 4, !tbaa !122
  %.pre42.i = and i32 %.pre41.i, 1
  br label %opj_j2k_get_SPCod_SPCoc_size.exit._crit_edge.i

opj_j2k_get_SPCod_SPCoc_size.exit._crit_edge.i:   ; preds = %bb.m, %opj_j2k_get_SPCod_SPCoc_size.exit.i
  %.pre-phi43.i = phi i32 [ %.pre42.i, %bb.m ], [ %i.bb, %opj_j2k_get_SPCod_SPCoc_size.exit.i ]
  %.pre-phi.i = phi i64 [ %.phi.trans.insert36.i, %bb.m ], [ %i.m, %opj_j2k_get_SPCod_SPCoc_size.exit.i ]
  %i.bn = phi ptr [ %.pre39.i, %bb.m ], [ %i.p, %opj_j2k_get_SPCod_SPCoc_size.exit.i ]
  %i.bo = phi i32 [ %.pre35.i, %bb.m ], [ %i.l, %opj_j2k_get_SPCod_SPCoc_size.exit.i ]
  %i.bp = phi ptr [ %.pre31.i, %bb.m ], [ %.val, %opj_j2k_get_SPCod_SPCoc_size.exit.i ]
  %i.bq = phi ptr [ %i.bk, %bb.m ], [ %i.bi, %opj_j2k_get_SPCod_SPCoc_size.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.br = getelementptr inbounds nuw [5696 x i8], ptr %i.bp, i64 %.pre-phi.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 5600
  %.not.i.i.i = icmp eq i32 %.pre-phi43.i, 0
  br i1 %.not.i.i.i, label %opj_j2k_write_coc.exit, label %bb.n

bb.n:                                             ; preds = %opj_j2k_get_SPCod_SPCoc_size.exit._crit_edge.i
  %i.bt = getelementptr inbounds nuw [1080 x i8], ptr %i.bn, i64 %indvars.iv
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !123
  %i.bw = add i32 %i.bv, 5
  br label %opj_j2k_write_coc.exit

opj_j2k_write_coc.exit:                           ; preds = %opj_j2k_get_SPCod_SPCoc_size.exit._crit_edge.i, %bb.n
  %.0.i.i.i = phi i32 [ %i.bw, %bb.n ], [ 5, %opj_j2k_get_SPCod_SPCoc_size.exit._crit_edge.i ] ; 2 uses
  %i.bx = icmp ult i32 %i.bo, 257
  %i.by = select i1 %i.bx, i32 1, i32 2           ; 3 uses
  tail call void @opj_write_bytes_LE(ptr noundef %i.bq, i32 noundef 65363, i32 noundef 2) #21
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.ca = add nuw nsw i32 %i.by, 3
  %i.cb = add i32 %i.ca, %.0.i.i.i
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.bz, i32 noundef %i.cb, i32 noundef 2) #21
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  %i.cd = trunc nuw i64 %indvars.iv to i32
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.cc, i32 noundef %i.cd, i32 noundef %i.by) #21
  %i.ce = zext nneg i32 %i.by to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ce ; 2 uses
  %i.cg = load ptr, ptr %i.bs, align 8, !tbaa !109
  %i.ch = getelementptr inbounds nuw [1080 x i8], ptr %i.cg, i64 %indvars.iv
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !122
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.cf, i32 noundef %i.ci, i32 noundef 1) #21
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  store i32 %.0.i.i.i, ptr %i.a, align 4, !tbaa !3
  %i.ck = load i32, ptr %i.h, align 8, !tbaa !228
  %.val31.i.i = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.cl = call fastcc i32 @opj_j2k_write_SPCod_SPCoc(ptr %.val31.i.i, i32 noundef %i.ck, ptr noundef nonnull %i.cj, ptr noundef %i.a, ptr noundef %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.cm = load ptr, ptr %i.j, align 8, !tbaa !9
  %i.cn = zext i32 %i.bf to i64                   ; 2 uses
  %i.co = tail call i64 @opj_stream_write_data(ptr noundef %1, ptr noundef %i.cm, i64 noundef %i.cn, ptr noundef %2) #21
  %.not.i13.not = icmp eq i64 %i.co, %i.cn
  br i1 %.not.i13.not, label %opj_j2k_write_coc.exit.opj_j2k_compare_coc.exit_crit_edge, label %.loopexit18

opj_j2k_write_coc.exit.opj_j2k_compare_coc.exit_crit_edge: ; preds = %opj_j2k_write_coc.exit
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !46
  br label %opj_j2k_compare_coc.exit

opj_j2k_compare_coc.exit:                         ; preds = %bb.h, %opj_j2k_write_coc.exit.opj_j2k_compare_coc.exit_crit_edge, %.preheader.i.i
  %i.cp = phi ptr [ %.pre, %opj_j2k_write_coc.exit.opj_j2k_compare_coc.exit_crit_edge ], [ %i.k, %.preheader.i.i ], [ %i.k, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !57 ; 2 uses
  %i.cs = zext i32 %i.cr to i64
  %i.ct = icmp samesign ult i64 %indvars.iv.next, %i.cs
  br i1 %i.ct, label %bb.b, label %.loopexit18, !llvm.loop !515

.loopexit18:                                      ; preds = %opj_j2k_write_coc.exit, %opj_j2k_compare_coc.exit, %bb.a, %opj_j2k_write_coc.exit.thread
  %.09 = phi i32 [ 0, %opj_j2k_write_coc.exit.thread ], [ 1, %bb.a ], [ 0, %opj_j2k_write_coc.exit ], [ 1, %opj_j2k_compare_coc.exit ]
  ret i32 %.09
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_write_all_qcc(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %i.f = icmp ugt i32 %i.e, 1
  br i1 %i.f, label %.lr.ph, label %.loopexit17

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 264        ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 336        ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %opj_j2k_compare_qcc.exit
  %i.k = phi ptr [ %i.c, %.lr.ph ], [ %i.co, %opj_j2k_compare_qcc.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %opj_j2k_compare_qcc.exit ] ; 5 uses
  %i.l = phi i32 [ %i.e, %.lr.ph ], [ %i.cq, %opj_j2k_compare_qcc.exit ]
  %.val = load ptr, ptr %i.g, align 8, !tbaa !32
  %.val11 = load i32, ptr %i.h, align 8, !tbaa !228
  %i.m = zext i32 %.val11 to i64
  %i.n = getelementptr inbounds nuw [5696 x i8], ptr %.val, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 5600
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !109  ; 7 uses
  %i.q = getelementptr inbounds nuw [1080 x i8], ptr %i.p, i64 %indvars.iv ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.s = load i32, ptr %i.r, align 4, !tbaa !130  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = load i32, ptr %i.t, align 4, !tbaa !130  ; 4 uses
  %.not.i.i = icmp eq i32 %i.s, %i.u
  br i1 %.not.i.i, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 804
  %i.w = load i32, ptr %i.v, align 4, !tbaa !131
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 804
  %i.y = load i32, ptr %i.x, align 4, !tbaa !131
  %.not34.i.i = icmp eq i32 %i.w, %i.y
  br i1 %.not34.i.i, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.z = icmp eq i32 %i.s, 1
  br i1 %i.z, label %.lr.ph.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !123 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !123
  %.not35.i.i = icmp eq i32 %i.ab, %i.ad
  br i1 %.not35.i.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ae = mul i32 %i.ab, 3
  %i.af = add i32 %i.ae, -2                       ; 2 uses
  %.not7.i.i = icmp eq i32 %i.af, 0
  br i1 %.not7.i.i, label %opj_j2k_compare_qcc.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.d
  %.018.i.i = phi i32 [ %i.af, %bb.f ], [ 1, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %wide.trip.count.i.i = zext i32 %.018.i.i to i64 ; 2 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.h, !llvm.loop !516

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !302
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !302
  %.not38.i.i = icmp eq i32 %i.aj, %i.al
  br i1 %.not38.i.i, label %bb.g, label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.g
  %.not36.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not36.not.i.i, label %opj_j2k_compare_qcc.exit, label %.lr.ph4.i.i

bb.i:                                             ; preds = %.lr.ph4.i.i
  %indvars.iv.next11.i.i = add nuw nsw i64 %indvars.iv10.i.i, 1 ; 2 uses
  %exitcond14.not.i.i = icmp eq i64 %indvars.iv.next11.i.i, %wide.trip.count.i.i
  br i1 %exitcond14.not.i.i, label %opj_j2k_compare_qcc.exit, label %.lr.ph4.i.i, !llvm.loop !517

.lr.ph4.i.i:                                      ; preds = %._crit_edge.i.i, %bb.i
  %indvars.iv10.i.i = phi i64 [ %indvars.iv.next11.i.i, %bb.i ], [ 0, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv10.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !300
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv10.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !300
  %.not37.i.i = icmp eq i32 %i.ao, %i.ar
  br i1 %.not37.i.i, label %bb.i, label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.lr.ph4.i.i, %bb.c, %bb.b, %bb.e
  %i.as = icmp eq i32 %i.u, 1
  br i1 %i.as, label %opj_j2k_get_SQcd_SQcc_size.exit.i, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !123
  %i.av = mul i32 %i.au, 3
  %i.aw = add i32 %i.av, -2
  br label %opj_j2k_get_SQcd_SQcc_size.exit.i

opj_j2k_get_SQcd_SQcc_size.exit.i:                ; preds = %bb.j, %.loopexit
  %i.ax = phi i32 [ %i.aw, %bb.j ], [ 1, %.loopexit ] ; 2 uses
  %i.ay = icmp eq i32 %i.u, 0
  %i.az = add i32 %i.ax, 1
  %i.ba = shl i32 %i.ax, 1
  %i.bb = or disjoint i32 %i.ba, 1
  %.0.i.i = select i1 %i.ay, i32 %i.az, i32 %i.bb
  %i.bc = icmp ugt i32 %i.l, 256
  %i.bd = select i1 %i.bc, i32 6, i32 5
  %i.be = add i32 %i.bd, %.0.i.i                  ; 4 uses
  %i.bf = load i32, ptr %i.i, align 8, !tbaa !9
  %i.bg = icmp ugt i32 %i.be, %i.bf
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !9   ; 2 uses
  br i1 %i.bg, label %bb.k, label %opj_j2k_get_SQcd_SQcc_size.exit._crit_edge.i

bb.k:                                             ; preds = %opj_j2k_get_SQcd_SQcc_size.exit.i
  %i.bi = zext i32 %i.be to i64
  %i.bj = tail call ptr @opj_realloc(ptr noundef %i.bh, i64 noundef %i.bi) #21 ; 3 uses
  %.not.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.not.i, label %opj_j2k_write_qcc.exit.thread, label %bb.l

opj_j2k_write_qcc.exit.thread:                    ; preds = %bb.k
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !9
  tail call void @opj_free(ptr noundef %i.bk) #21
  store ptr null, ptr %i.j, align 8, !tbaa !9
  store i32 0, ptr %i.i, align 8, !tbaa !9
  %i.bl = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.316) #21 ; 0 uses
  br label %.loopexit17

bb.l:                                             ; preds = %bb.k
  store ptr %i.bj, ptr %i.j, align 8, !tbaa !9
  store i32 %i.be, ptr %i.i, align 8, !tbaa !9
  %.pre32.i = load i32, ptr %i.h, align 8, !tbaa !228
  %.val.i.pre.i = load ptr, ptr %i.g, align 8, !tbaa !32
  %.phi.trans.insert34.i = zext i32 %.pre32.i to i64
  %.phi.trans.insert35.i = getelementptr inbounds nuw [5696 x i8], ptr %.val.i.pre.i, i64 %.phi.trans.insert34.i
  %.phi.trans.insert36.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert35.i, i64 5600
  %.pre37.i = load ptr, ptr %.phi.trans.insert36.i, align 8, !tbaa !109 ; 2 uses
  %.phi.trans.insert38.i = getelementptr inbounds nuw [1080 x i8], ptr %.pre37.i, i64 %indvars.iv
  %.phi.trans.insert39.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert38.i, i64 24
  %.pre40.i = load i32, ptr %.phi.trans.insert39.i, align 4, !tbaa !130
  br label %opj_j2k_get_SQcd_SQcc_size.exit._crit_edge.i

opj_j2k_get_SQcd_SQcc_size.exit._crit_edge.i:     ; preds = %bb.l, %opj_j2k_get_SQcd_SQcc_size.exit.i
  %i.bm = phi i32 [ %.pre40.i, %bb.l ], [ %i.u, %opj_j2k_get_SQcd_SQcc_size.exit.i ] ; 2 uses
  %i.bn = phi ptr [ %.pre37.i, %bb.l ], [ %i.p, %opj_j2k_get_SQcd_SQcc_size.exit.i ]
  %i.bo = phi ptr [ %i.bj, %bb.l ], [ %i.bh, %opj_j2k_get_SQcd_SQcc_size.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.bp = icmp eq i32 %i.bm, 1
  br i1 %i.bp, label %opj_j2k_write_qcc.exit, label %bb.m

bb.m:                                             ; preds = %opj_j2k_get_SQcd_SQcc_size.exit._crit_edge.i
  %i.bq = getelementptr inbounds nuw [1080 x i8], ptr %i.bn, i64 %indvars.iv
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !123
  %i.bt = mul i32 %i.bs, 3
  %i.bu = add i32 %i.bt, -2
  br label %opj_j2k_write_qcc.exit

opj_j2k_write_qcc.exit:                           ; preds = %opj_j2k_get_SQcd_SQcc_size.exit._crit_edge.i, %bb.m
  %i.bv = phi i32 [ %i.bu, %bb.m ], [ 1, %opj_j2k_get_SQcd_SQcc_size.exit._crit_edge.i ] ; 2 uses
  %i.bw = icmp eq i32 %i.bm, 0
  %i.bx = add i32 %i.bv, 1
  %i.by = shl i32 %i.bv, 1
  %i.bz = or disjoint i32 %i.by, 1
  %.0.i.i.i = select i1 %i.bw, i32 %i.bx, i32 %i.bz ; 2 uses
  tail call void @opj_write_bytes_LE(ptr noundef %i.bo, i32 noundef 65373, i32 noundef 2) #21
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !57
  %i.cd = icmp ult i32 %i.cc, 257                 ; 3 uses
  %.sink32.i.i = select i1 %i.cd, i32 3, i32 4
  %.sink30.i.i = select i1 %i.cd, i32 1, i32 2
  %.sink.i.i = select i1 %i.cd, i64 5, i64 6
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.cf = add i32 %.sink32.i.i, %.0.i.i.i
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.ce, i32 noundef %i.cf, i32 noundef 2) #21
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.ch = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.cg, i32 noundef %i.ch, i32 noundef %.sink30.i.i) #21
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sink.i.i
  store i32 %.0.i.i.i, ptr %i.a, align 4, !tbaa !3
  %i.cj = load i32, ptr %i.h, align 8, !tbaa !228
  %.val28.i.i = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.ck = call fastcc i32 @opj_j2k_write_SQcd_SQcc(ptr %.val28.i.i, i32 noundef %i.cj, i32 noundef %i.ch, ptr noundef nonnull %i.ci, ptr noundef %i.a, ptr noundef %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.cl = load ptr, ptr %i.j, align 8, !tbaa !9
  %i.cm = zext i32 %i.be to i64                   ; 2 uses
  %i.cn = tail call i64 @opj_stream_write_data(ptr noundef %1, ptr noundef %i.cl, i64 noundef %i.cm, ptr noundef %2) #21
  %.not.i.not = icmp eq i64 %i.cn, %i.cm
  br i1 %.not.i.not, label %opj_j2k_write_qcc.exit.opj_j2k_compare_qcc.exit_crit_edge, label %.loopexit17

opj_j2k_write_qcc.exit.opj_j2k_compare_qcc.exit_crit_edge: ; preds = %opj_j2k_write_qcc.exit
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !46
  br label %opj_j2k_compare_qcc.exit

opj_j2k_compare_qcc.exit:                         ; preds = %bb.i, %opj_j2k_write_qcc.exit.opj_j2k_compare_qcc.exit_crit_edge, %._crit_edge.i.i, %bb.f
  %i.co = phi ptr [ %.pre, %opj_j2k_write_qcc.exit.opj_j2k_compare_qcc.exit_crit_edge ], [ %i.k, %bb.f ], [ %i.k, %._crit_edge.i.i ], [ %i.k, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !57 ; 2 uses
  %i.cr = zext i32 %i.cq to i64
  %i.cs = icmp samesign ult i64 %indvars.iv.next, %i.cr
  br i1 %i.cs, label %bb.b, label %.loopexit17, !llvm.loop !518

.loopexit17:                                      ; preds = %opj_j2k_write_qcc.exit, %opj_j2k_compare_qcc.exit, %bb.a, %opj_j2k_write_qcc.exit.thread
  %.09 = phi i32 [ 0, %opj_j2k_write_qcc.exit.thread ], [ 1, %bb.a ], [ 0, %opj_j2k_write_qcc.exit ], [ 1, %opj_j2k_compare_qcc.exit ]
  ret i32 %.09
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_write_tlm(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = icmp ugt i32 %i.b, 10921
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.317) #21 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %i.b, 256          ; 3 uses
  %spec.select = zext i1 %i.e to i32
  %spec.select49 = select i1 %i.e, i32 5, i32 6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %spec.select, ptr %i.f, align 4, !tbaa !9
  %i.g = mul nuw nsw i32 %spec.select49, %i.b     ; 2 uses
  %i.h = add nuw nsw i32 %i.g, 6                  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !9
  %i.k = icmp ugt i32 %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !9    ; 2 uses
  %i.n = zext nneg i32 %i.h to i64                ; 4 uses
  br i1 %i.k, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @opj_realloc(ptr noundef %i.m, i64 noundef %i.n) #21 ; 3 uses
  %.not.not = icmp eq ptr %i.o, null
  br i1 %.not.not, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !9
  tail call void @opj_free(ptr noundef %i.p) #21
  store ptr null, ptr %i.l, align 8, !tbaa !9
  store i32 0, ptr %i.i, align 8, !tbaa !9
  %i.q = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.318) #21 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.o, ptr %i.l, align 8, !tbaa !9
  store i32 %i.h, ptr %i.i, align 8, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.e
  %i.r = phi ptr [ %i.o, %bb.e ], [ %i.m, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.r, i8 0, i64 %i.n, i1 false)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !9    ; 4 uses
  %i.u = tail call i64 @opj_stream_tell(ptr noundef %1) #21
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.u, ptr %i.v, align 8, !tbaa !9
  tail call void @opj_write_bytes_LE(ptr noundef %i.t, i32 noundef 65365, i32 noundef 2) #21
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.x = add nuw nsw i32 %i.g, 4
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.w, i32 noundef %i.x, i32 noundef 2) #21
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.y, i32 noundef 0, i32 noundef 1) #21
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  %i.aa = select i1 %i.e, i32 80, i32 96
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.z, i32 noundef %i.aa, i32 noundef 1) #21
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !9
  %i.ac = tail call i64 @opj_stream_write_data(ptr noundef %1, ptr noundef %i.ab, i64 noundef %i.n, ptr noundef %2) #21
  %.not = icmp eq i64 %i.ac, %i.n
  %. = zext i1 %.not to i32
  br label %bb.f

bb.f:                                             ; preds = %.thread, %._crit_edge, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ %., %._crit_edge ], [ 0, %.thread ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_write_poc(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !240
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.e = load i32, ptr %i.d, align 8, !tbaa !228
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [5696 x i8], ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !57
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 420
  %i.m = load i32, ptr %i.l, align 4, !tbaa !108
  %i.n = add i32 %i.m, 1
  %i.o = icmp ult i32 %i.k, 257
  %. = select i1 %i.o, i32 7, i32 9
  %i.p = mul i32 %., %i.n
  %i.q = add i32 %i.p, 4                          ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !9
  %i.t = icmp ugt i32 %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !9    ; 2 uses
  %i.w = zext i32 %i.q to i64                     ; 3 uses
  br i1 %i.t, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.x = tail call ptr @opj_realloc(ptr noundef %i.v, i64 noundef %i.w) #21 ; 3 uses
  %.not.not = icmp eq ptr %i.x, null
  br i1 %.not.not, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !9
  tail call void @opj_free(ptr noundef %i.y) #21
  store ptr null, ptr %i.u, align 8, !tbaa !9
  store i32 0, ptr %i.r, align 8, !tbaa !9
  %i.z = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.319) #21 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.x, ptr %i.u, align 8, !tbaa !9
  store i32 %i.q, ptr %i.r, align 8, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.c
  %i.aa = phi ptr [ %i.x, %bb.c ], [ %i.v, %bb.a ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  call fastcc void @opj_j2k_write_poc_in_memory(ptr noundef nonnull %0, ptr noundef %i.aa, ptr noundef %i.a)
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !9
  %i.ad = tail call i64 @opj_stream_write_data(ptr noundef %1, ptr noundef %i.ac, i64 noundef %i.w, ptr noundef %2) #21
  %.not = icmp eq i64 %i.ad, %i.w
  %.33 = zext i1 %.not to i32
  br label %bb.d

bb.d:                                             ; preds = %.thread, %._crit_edge
  %.1 = phi i32 [ %.33, %._crit_edge ], [ 0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_write_regions(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %.not19 = icmp eq i32 %i.e, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !240
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 5600
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.j = phi ptr [ %i.c, %.lr.ph ], [ %i.ag, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.k = phi i32 [ %i.e, %.lr.ph ], [ %i.aj, %bb.d ]
  %.016 = phi ptr [ %i.h, %.lr.ph ], [ %i.ah, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.016, i64 808
  %i.m = load i32, ptr %i.l, align 4, !tbaa !134
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 5600
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !109
  %i.q = getelementptr inbounds nuw [1080 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = icmp ult i32 %i.k, 257
  %..i = select i1 %i.r, i32 1, i32 2             ; 4 uses
  %i.s = add nuw nsw i32 %..i, 6
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !9    ; 3 uses
  tail call void @opj_write_bytes_LE(ptr noundef %i.t, i32 noundef 65374, i32 noundef 2) #21
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = or disjoint i32 %..i, 4
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.u, i32 noundef %i.v, i32 noundef 2) #21
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.x = trunc nuw i64 %indvars.iv to i32
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.w, i32 noundef %i.x, i32 noundef %..i) #21
  %i.y = zext nneg i32 %..i to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y ; 2 uses
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.z, i32 noundef 0, i32 noundef 1) #21
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 808
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !134
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.aa, i32 noundef %i.ac, i32 noundef 1) #21
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.ae = zext nneg i32 %i.s to i64               ; 2 uses
  %i.af = tail call i64 @opj_stream_write_data(ptr noundef %1, ptr noundef %i.ad, i64 noundef %i.ae, ptr noundef %2) #21
  %.not.i.not = icmp eq i64 %i.af, %i.ae
  br i1 %.not.i.not, label %._crit_edge21, label %._crit_edge

._crit_edge21:                                    ; preds = %bb.c
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge21, %bb.b
  %i.ag = phi ptr [ %.pre, %._crit_edge21 ], [ %i.j, %bb.b ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.016, i64 1080
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !57 ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = icmp samesign ult i64 %indvars.iv.next, %i.ak
  br i1 %i.al, label %bb.b, label %._crit_edge, !llvm.loop !519

._crit_edge:                                      ; preds = %bb.c, %bb.d, %bb.a
  %.012 = phi i32 [ 1, %bb.a ], [ 1, %bb.d ], [ 0, %bb.c ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_write_com(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !399  ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #22 ; 2 uses
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = add i32 %i.d, 6                          ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !9
  %i.h = icmp ugt i32 %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9    ; 2 uses
  %i.k = zext i32 %i.e to i64                     ; 3 uses
  br i1 %i.h, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @opj_realloc(ptr noundef %i.j, i64 noundef %i.k) #21 ; 3 uses
  %.not.not = icmp eq ptr %i.l, null
  br i1 %.not.not, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !9
  tail call void @opj_free(ptr noundef %i.m) #21
  store ptr null, ptr %i.i, align 8, !tbaa !9
  store i32 0, ptr %i.f, align 8, !tbaa !9
  %i.n = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.320) #21 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.i, align 8, !tbaa !9
  store i32 %i.e, ptr %i.f, align 8, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.c
  %i.o = phi ptr [ %i.l, %bb.c ], [ %i.j, %bb.a ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @opj_write_bytes_LE(ptr noundef %i.o, i32 noundef 65380, i32 noundef 2) #21
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.r = add i32 %i.d, 4
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.q, i32 noundef %i.r, i32 noundef 2) #21
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.s, i32 noundef 1, i32 noundef 2) #21
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  %i.u = and i64 %i.c, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %i.b, i64 %i.u, i1 false)
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !9
  %i.w = tail call i64 @opj_stream_write_data(ptr noundef %1, ptr noundef %i.v, i64 noundef %i.k, ptr noundef %2) #21
  %.not = icmp eq i64 %i.w, %i.k
  %. = zext i1 %.not to i32
  br label %bb.d

bb.d:                                             ; preds = %.thread, %._crit_edge
  %.1 = phi i32 [ %., %._crit_edge ], [ 0, %.thread ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_write_mct_data_group(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.e = add i32 %i.d, 6                          ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 12 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !9
  %i.h = icmp ugt i32 %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 20 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9    ; 2 uses
  br i1 %i.h, label %bb.b, label %._crit_edge49.i

bb.b:                                             ; preds = %bb.a
  %i.k = zext i32 %i.e to i64
  %i.l = tail call ptr @opj_realloc(ptr noundef %i.j, i64 noundef %i.k) #21 ; 3 uses
  %.not.not.i = icmp eq ptr %i.l, null
  br i1 %.not.not.i, label %opj_j2k_write_cbd.exit.thread, label %bb.c

opj_j2k_write_cbd.exit.thread:                    ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !9
  tail call void @opj_free(ptr noundef %i.m) #21
  store ptr null, ptr %i.i, align 8, !tbaa !9
  store i32 0, ptr %i.f, align 8, !tbaa !9
  %i.n = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.321) #21 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.i, align 8, !tbaa !9
  store i32 %i.e, ptr %i.f, align 8, !tbaa !9
  br label %._crit_edge49.i

._crit_edge49.i:                                  ; preds = %bb.c, %bb.a
  %i.o = phi ptr [ %i.l, %bb.c ], [ %i.j, %bb.a ] ; 4 uses
  tail call void @opj_write_bytes_LE(ptr noundef %i.o, i32 noundef 65400, i32 noundef 2) #21
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.q = add i32 %i.d, 4
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.p, i32 noundef %i.q, i32 noundef 2) #21
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.s = load i32, ptr %i.c, align 8, !tbaa !57
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.r, i32 noundef %i.s, i32 noundef 2) #21
  %i.t = load i32, ptr %i.c, align 8, !tbaa !57
  %.not48.i = icmp eq i32 %i.t, 0
  br i1 %.not48.i, label %opj_j2k_write_cbd.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge49.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !71
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.04047.i = phi ptr [ %i.af, %.lr.ph.i ], [ %i.v, %.lr.ph.preheader.i ] ; 3 uses
  %.04146.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %.04245.i = phi i32 [ %i.ag, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.04047.i, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !119
  %i.z = shl i32 %i.y, 7
  %i.aa = getelementptr inbounds nuw i8, ptr %.04047.i, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !75
  %i.ac = add i32 %i.ab, -1
  %i.ad = or i32 %i.ac, %i.z
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.04146.i, i32 noundef %i.ad, i32 noundef 1) #21
  %i.ae = getelementptr inbounds nuw i8, ptr %.04146.i, i64 1
  %i.af = getelementptr inbounds nuw i8, ptr %.04047.i, i64 64
  %i.ag = add nuw i32 %.04245.i, 1                ; 2 uses
  %i.ah = load i32, ptr %i.c, align 8, !tbaa !57
  %i.ai = icmp ult i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %opj_j2k_write_cbd.exit, !llvm.loop !520

opj_j2k_write_cbd.exit:                           ; preds = %.lr.ph.i, %._crit_edge49.i
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.ak = zext i32 %i.e to i64                    ; 2 uses
  %i.al = tail call i64 @opj_stream_write_data(ptr noundef %1, ptr noundef %i.aj, i64 noundef %i.ak, ptr noundef %2) #21
  %.not.i.not = icmp eq i64 %i.al, %i.ak
  br i1 %.not.i.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %opj_j2k_write_cbd.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !240
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !228
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [5696 x i8], ptr %i.an, i64 %i.aq ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 5664 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !171
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 5656
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !173
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %.02671 = phi ptr [ %i.cd, %bb.g ], [ %i.av, %.lr.ph.preheader ] ; 6 uses
  %.02870 = phi i32 [ %i.ce, %bb.g ], [ 0, %.lr.ph.preheader ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.02671, i64 24 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !184 ; 2 uses
  %i.ay = add i32 %i.ax, 10                       ; 3 uses
  %i.az = load i32, ptr %i.f, align 8, !tbaa !9
  %i.ba = icmp ugt i32 %i.ay, %i.az
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !9   ; 2 uses
  %i.bc = zext i32 %i.ay to i64                   ; 3 uses
  br i1 %i.ba, label %bb.e, label %opj_j2k_write_mct_record.exit

bb.e:                                             ; preds = %.lr.ph
  %i.bd = tail call ptr @opj_realloc(ptr noundef %i.bb, i64 noundef %i.bc) #21 ; 3 uses
  %.not.not.i36 = icmp eq ptr %i.bd, null
  br i1 %.not.not.i36, label %opj_j2k_write_mct_record.exit.thread, label %bb.f

opj_j2k_write_mct_record.exit.thread:             ; preds = %bb.e
  %i.be = load ptr, ptr %i.i, align 8, !tbaa !9
  tail call void @opj_free(ptr noundef %i.be) #21
  store ptr null, ptr %i.i, align 8, !tbaa !9
  store i32 0, ptr %i.f, align 8, !tbaa !9
  %i.bf = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.322) #21 ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  store ptr %i.bd, ptr %i.i, align 8, !tbaa !9
  store i32 %i.ay, ptr %i.f, align 8, !tbaa !9
  br label %opj_j2k_write_mct_record.exit

opj_j2k_write_mct_record.exit:                    ; preds = %.lr.ph, %bb.f
  %i.bg = phi ptr [ %i.bd, %bb.f ], [ %i.bb, %.lr.ph ] ; 6 uses
  tail call void @opj_write_bytes_LE(ptr noundef %i.bg, i32 noundef 65396, i32 noundef 2) #21
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bi = add i32 %i.ax, 8
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.bh, i32 noundef %i.bi, i32 noundef 2) #21
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.bj, i32 noundef 0, i32 noundef 2) #21
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 6
  %i.bl = getelementptr inbounds nuw i8, ptr %.02671, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !176
  %i.bn = and i32 %i.bm, 255
  %i.bo = getelementptr inbounds nuw i8, ptr %.02671, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !177
  %i.bq = shl i32 %i.bp, 8
  %i.br = or disjoint i32 %i.bq, %i.bn
  %i.bs = load i32, ptr %.02671, align 8, !tbaa !178
  %i.bt = shl i32 %i.bs, 10
  %i.bu = or i32 %i.br, %i.bt
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.bk, i32 noundef %i.bu, i32 noundef 2) #21
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.bv, i32 noundef 0, i32 noundef 2) #21
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %i.bx = getelementptr inbounds nuw i8, ptr %.02671, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !174
  %i.bz = load i32, ptr %i.aw, align 8, !tbaa !184
  %i.ca = zext i32 %i.bz to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bw, ptr align 1 %i.by, i64 %i.ca, i1 false)
  %i.cb = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.cc = tail call i64 @opj_stream_write_data(ptr noundef %1, ptr noundef %i.cb, i64 noundef %i.bc, ptr noundef %2) #21
  %.not.i33.not = icmp eq i64 %i.cc, %i.bc
  br i1 %.not.i33.not, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %opj_j2k_write_mct_record.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %.02671, i64 32
  %i.ce = add nuw i32 %.02870, 1                  ; 2 uses
  %i.cf = load i32, ptr %i.as, align 8, !tbaa !171
  %i.cg = icmp ult i32 %i.ce, %i.cf
  br i1 %i.cg, label %.lr.ph, label %._crit_edge, !llvm.loop !521

._crit_edge:                                      ; preds = %bb.g, %bb.d
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ar, i64 5680 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !187
  %.not77 = icmp eq i32 %i.ci, 0
  br i1 %.not77, label %._crit_edge76, label %.lr.ph75.preheader

.lr.ph75.preheader:                               ; preds = %._crit_edge
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ar, i64 5672
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !189
  br label %.lr.ph75

.lr.ph75:                                         ; preds = %.lr.ph75.preheader, %bb.o
  %.02773 = phi ptr [ %i.eu, %bb.o ], [ %i.ck, %.lr.ph75.preheader ] ; 6 uses
  %.172 = phi i32 [ %i.ev, %bb.o ], [ 0, %.lr.ph75.preheader ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.02773, i64 4 ; 6 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !192 ; 2 uses
  %i.cn = icmp ugt i32 %i.cm, 255                 ; 3 uses
  %..i38 = select i1 %i.cn, i32 2, i32 1          ; 4 uses
  %.89.i = select i1 %i.cn, i32 32768, i32 0      ; 3 uses
  %i.co = shl i32 %i.cm, 1
  %i.cp = zext i1 %i.cn to i32
  %i.cq = shl i32 %i.co, %i.cp                    ; 2 uses
  %i.cr = add i32 %i.cq, 19                       ; 4 uses
  %i.cs = load i32, ptr %i.f, align 8, !tbaa !9
  %i.ct = icmp ugt i32 %i.cr, %i.cs
  %i.cu = load ptr, ptr %i.i, align 8, !tbaa !9   ; 2 uses
  br i1 %i.ct, label %bb.h, label %._crit_edge105.i

bb.h:                                             ; preds = %.lr.ph75
  %i.cv = zext i32 %i.cr to i64
  %i.cw = tail call ptr @opj_realloc(ptr noundef %i.cu, i64 noundef %i.cv) #21 ; 3 uses
  %.not.not.i43 = icmp eq ptr %i.cw, null
  br i1 %.not.not.i43, label %opj_j2k_write_mcc_record.exit.thread, label %bb.i

opj_j2k_write_mcc_record.exit.thread:             ; preds = %bb.h
  %i.cx = load ptr, ptr %i.i, align 8, !tbaa !9
  tail call void @opj_free(ptr noundef %i.cx) #21
  store ptr null, ptr %i.i, align 8, !tbaa !9
  store i32 0, ptr %i.f, align 8, !tbaa !9
  %i.cy = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.323) #21 ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.h
  store ptr %i.cw, ptr %i.i, align 8, !tbaa !9
  store i32 %i.cr, ptr %i.f, align 8, !tbaa !9
  br label %._crit_edge105.i

._crit_edge105.i:                                 ; preds = %bb.i, %.lr.ph75
  %i.cz = phi ptr [ %i.cw, %bb.i ], [ %i.cu, %.lr.ph75 ] ; 9 uses
  tail call void @opj_write_bytes_LE(ptr noundef %i.cz, i32 noundef 65397, i32 noundef 2) #21
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.db = add i32 %i.cq, 17
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.da, i32 noundef %i.db, i32 noundef 2) #21
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.dc, i32 noundef 0, i32 noundef 2) #21
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 6
  %i.de = load i32, ptr %.02773, align 8, !tbaa !193
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.dd, i32 noundef %i.de, i32 noundef 1) #21
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 7
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.df, i32 noundef 0, i32 noundef 2) #21
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 9
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.dg, i32 noundef 1, i32 noundef 2) #21
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 11
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.dh, i32 noundef 1, i32 noundef 1) #21
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  %i.dj = load i32, ptr %i.cl, align 4, !tbaa !192
  %i.dk = or i32 %i.dj, %.89.i
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.di, i32 noundef %i.dk, i32 noundef 2) #21
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cz, i64 14 ; 2 uses
  %i.dm = load i32, ptr %i.cl, align 4, !tbaa !192
  %.not100.i = icmp eq i32 %i.dm, 0
  br i1 %.not100.i, label %._crit_edge.i40, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %._crit_edge105.i
  %i.dn = zext nneg i32 %..i38 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i39
  %.07892.i = phi ptr [ %i.dl, %.lr.ph.i39 ], [ %i.do, %bb.j ] ; 2 uses
  %.08091.i = phi i32 [ 0, %.lr.ph.i39 ], [ %i.dp, %bb.j ] ; 2 uses
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.07892.i, i32 noundef %.08091.i, i32 noundef %..i38) #21
  %i.do = getelementptr inbounds nuw i8, ptr %.07892.i, i64 %i.dn ; 2 uses
  %i.dp = add nuw i32 %.08091.i, 1                ; 2 uses
  %i.dq = load i32, ptr %i.cl, align 4, !tbaa !192 ; 2 uses
  %i.dr = icmp ult i32 %i.dp, %i.dq
  br i1 %i.dr, label %bb.j, label %._crit_edge.loopexit.i, !llvm.loop !522

._crit_edge.loopexit.i:                           ; preds = %bb.j
  %i.ds = or i32 %i.dq, %.89.i
  br label %._crit_edge.i40

._crit_edge.i40:                                  ; preds = %._crit_edge.loopexit.i, %._crit_edge105.i
  %.078.lcssa.i = phi ptr [ %i.dl, %._crit_edge105.i ], [ %i.do, %._crit_edge.loopexit.i ] ; 2 uses
  %.lcssa.i = phi i32 [ %.89.i, %._crit_edge105.i ], [ %i.ds, %._crit_edge.loopexit.i ]
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.078.lcssa.i, i32 noundef %.lcssa.i, i32 noundef 2) #21
  %i.dt = getelementptr inbounds nuw i8, ptr %.078.lcssa.i, i64 2 ; 2 uses
  %i.du = load i32, ptr %i.cl, align 4, !tbaa !192
  %.not101.i = icmp eq i32 %i.du, 0
  br i1 %.not101.i, label %._crit_edge98.i, label %.lr.ph97.i

.lr.ph97.i:                                       ; preds = %._crit_edge.i40
  %i.dv = zext nneg i32 %..i38 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph97.i
  %.17995.i = phi ptr [ %i.dt, %.lr.ph97.i ], [ %i.dw, %bb.k ] ; 2 uses
  %.18194.i = phi i32 [ 0, %.lr.ph97.i ], [ %i.dx, %bb.k ] ; 2 uses
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.17995.i, i32 noundef %.18194.i, i32 noundef %..i38) #21
  %i.dw = getelementptr inbounds nuw i8, ptr %.17995.i, i64 %i.dv ; 2 uses
  %i.dx = add nuw i32 %.18194.i, 1                ; 2 uses
  %i.dy = load i32, ptr %i.cl, align 4, !tbaa !192
  %i.dz = icmp ult i32 %i.dx, %i.dy
  br i1 %i.dz, label %bb.k, label %._crit_edge98.i, !llvm.loop !523

._crit_edge98.i:                                  ; preds = %bb.k, %._crit_edge.i40
  %.179.lcssa.i = phi ptr [ %i.dt, %._crit_edge.i40 ], [ %i.dw, %bb.k ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.02773, i64 24
  %i.eb = load i8, ptr %i.ea, align 8
  %i.ec = and i8 %i.eb, 1
  %i.ed = xor i8 %i.ec, 1
  %i.ee = zext nneg i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 16               ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.02773, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !190 ; 2 uses
  %.not.i41 = icmp eq ptr %i.eh, null
  br i1 %.not.i41, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge98.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !176
  %i.ek = or i32 %i.ej, %i.ef
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge98.i
  %.074.i = phi i32 [ %i.ek, %bb.l ], [ %i.ef, %._crit_edge98.i ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.02773, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !194 ; 2 uses
  %.not87.i = icmp eq ptr %i.em, null
  br i1 %.not87.i, label %opj_j2k_write_mcc_record.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !176
  %i.ep = shl i32 %i.eo, 8
  %i.eq = or i32 %i.ep, %.074.i
  br label %opj_j2k_write_mcc_record.exit

opj_j2k_write_mcc_record.exit:                    ; preds = %bb.m, %bb.n
  %.175.i = phi i32 [ %i.eq, %bb.n ], [ %.074.i, %bb.m ]
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.179.lcssa.i, i32 noundef %.175.i, i32 noundef 3) #21
  %i.er = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.es = zext i32 %i.cr to i64                   ; 2 uses
  %i.et = tail call i64 @opj_stream_write_data(ptr noundef %1, ptr noundef %i.er, i64 noundef %i.es, ptr noundef %2) #21
  %.not88.i.not = icmp eq i64 %i.et, %i.es
  br i1 %.not88.i.not, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %opj_j2k_write_mcc_record.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %.02773, i64 32
  %i.ev = add nuw i32 %.172, 1                    ; 2 uses
  %i.ew = load i32, ptr %i.ch, align 8, !tbaa !187
  %i.ex = icmp ult i32 %i.ev, %i.ew
  br i1 %i.ex, label %.lr.ph75, label %._crit_edge76, !llvm.loop !524

._crit_edge76:                                    ; preds = %bb.o, %._crit_edge
  %i.ey = load ptr, ptr %i.am, align 8, !tbaa !240
  %i.ez = load i32, ptr %i.ao, align 8, !tbaa !228
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [5696 x i8], ptr %i.ey, i64 %i.fa ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 5680 ; 4 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !187 ; 2 uses
  %i.fe = add i32 %i.fd, 5                        ; 4 uses
  %i.ff = load i32, ptr %i.f, align 8, !tbaa !9
  %i.fg = icmp ugt i32 %i.fe, %i.ff
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !9   ; 2 uses
  br i1 %i.fg, label %bb.p, label %._crit_edge49.i45

bb.p:                                             ; preds = %._crit_edge76
  %i.fi = zext i32 %i.fe to i64
  %i.fj = tail call ptr @opj_realloc(ptr noundef %i.fh, i64 noundef %i.fi) #21 ; 3 uses
  %.not.not.i56 = icmp eq ptr %i.fj, null
  br i1 %.not.not.i56, label %opj_j2k_write_mco.exit.thread, label %bb.q

opj_j2k_write_mco.exit.thread:                    ; preds = %bb.p
  %i.fk = load ptr, ptr %i.i, align 8, !tbaa !9
  tail call void @opj_free(ptr noundef %i.fk) #21
  store ptr null, ptr %i.i, align 8, !tbaa !9
  store i32 0, ptr %i.f, align 8, !tbaa !9
  %i.fl = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.324) #21 ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %i.fj, ptr %i.i, align 8, !tbaa !9
  store i32 %i.fe, ptr %i.f, align 8, !tbaa !9
  br label %._crit_edge49.i45

._crit_edge49.i45:                                ; preds = %bb.q, %._crit_edge76
  %i.fm = phi ptr [ %i.fj, %bb.q ], [ %i.fh, %._crit_edge76 ] ; 4 uses
  tail call void @opj_write_bytes_LE(ptr noundef %i.fm, i32 noundef 65399, i32 noundef 2) #21
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.fo = add i32 %i.fd, 3
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.fn, i32 noundef %i.fo, i32 noundef 2) #21
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.fq = load i32, ptr %i.fc, align 8, !tbaa !187
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.fp, i32 noundef %i.fq, i32 noundef 1) #21
  %i.fr = load i32, ptr %i.fc, align 8, !tbaa !187
  %.not48.i46 = icmp eq i32 %i.fr, 0
  br i1 %.not48.i46, label %opj_j2k_write_mco.exit, label %.lr.ph.preheader.i47

.lr.ph.preheader.i47:                             ; preds = %._crit_edge49.i45
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fb, i64 5672
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !189
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 5
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48, %.lr.ph.preheader.i47
  %.04047.i49 = phi i32 [ %i.fy, %.lr.ph.i48 ], [ 0, %.lr.ph.preheader.i47 ]
  %.04146.i50 = phi ptr [ %i.fx, %.lr.ph.i48 ], [ %i.ft, %.lr.ph.preheader.i47 ] ; 2 uses
  %.04245.i51 = phi ptr [ %i.fw, %.lr.ph.i48 ], [ %i.fu, %.lr.ph.preheader.i47 ] ; 2 uses
  %i.fv = load i32, ptr %.04146.i50, align 8, !tbaa !193
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.04245.i51, i32 noundef %i.fv, i32 noundef 1) #21
  %i.fw = getelementptr inbounds nuw i8, ptr %.04245.i51, i64 1
  %i.fx = getelementptr inbounds nuw i8, ptr %.04146.i50, i64 32
  %i.fy = add nuw i32 %.04047.i49, 1              ; 2 uses
  %i.fz = load i32, ptr %i.fc, align 8, !tbaa !187
  %i.ga = icmp ult i32 %i.fy, %i.fz
  br i1 %i.ga, label %.lr.ph.i48, label %opj_j2k_write_mco.exit, !llvm.loop !525

opj_j2k_write_mco.exit:                           ; preds = %.lr.ph.i48, %._crit_edge49.i45
  %i.gb = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.gc = zext i32 %i.fe to i64                   ; 2 uses
  %i.gd = tail call i64 @opj_stream_write_data(ptr noundef %1, ptr noundef %i.gb, i64 noundef %i.gc, ptr noundef %2) #21
  %.fr = freeze i64 %i.gd
  %.not.i53.not = icmp eq i64 %.fr, %i.gc
  br i1 %.not.i53.not, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %opj_j2k_write_mco.exit.thread, %opj_j2k_write_mco.exit
  br label %.loopexit

.loopexit:                                        ; preds = %opj_j2k_write_mct_record.exit, %opj_j2k_write_mcc_record.exit, %bb.r, %opj_j2k_write_mco.exit, %opj_j2k_write_mcc_record.exit.thread, %opj_j2k_write_mct_record.exit.thread, %opj_j2k_write_cbd.exit.thread, %opj_j2k_write_cbd.exit
  %.0 = phi i32 [ 0, %opj_j2k_write_cbd.exit ], [ 0, %opj_j2k_write_mcc_record.exit ], [ 1, %opj_j2k_write_mco.exit ], [ 0, %opj_j2k_write_mcc_record.exit.thread ], [ 0, %opj_j2k_write_cbd.exit.thread ], [ 0, %opj_j2k_write_mct_record.exit.thread ], [ 0, %bb.r ], [ 0, %opj_j2k_write_mct_record.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @opj_j2k_get_end_header(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #3 {
bb.a:
  %i.a = tail call i64 @opj_stream_tell(ptr noundef %1) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.a, ptr %i.d, align 8, !tbaa !288
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_create_tcd(ptr noundef initializes((344, 352)) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #3 {
bb.a:
  %i.a = tail call ptr @opj_tcd_create(i32 noundef 0) #21 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !26
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.325) #21 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = tail call i32 @opj_tcd_init(ptr noundef nonnull %i.a, ptr noundef %i.e, ptr noundef nonnull %i.f, ptr noundef %i.h) #21
  %.not10 = icmp eq i32 %i.i, 0
  br i1 %.not10, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !26
  tail call void @opj_tcd_destroy(ptr noundef %i.j) #21
  store ptr null, ptr %i.b, align 8, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_update_rates(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71   ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !76
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !77
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !57
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !75
  %i.n = tail call i64 @opj_stream_tell(ptr noundef %1) #21
  %i.o = sitofp i64 %i.n to float
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !33   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !34   ; 3 uses
  %i.t = mul i32 %i.s, %i.q
  %i.u = uitofp i32 %i.t to float
  %i.v = fdiv float %i.o, %i.u                    ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.x = load i8, ptr %i.w, align 8
  %i.y = and i8 %i.x, 1
  %.not = icmp eq i8 %i.y, 0
  %opj_j2k_get_default_stride.opj_j2k_get_tp_stride = select i1 %.not, ptr @opj_j2k_get_default_stride, ptr @opj_j2k_get_tp_stride
  %.not172 = icmp eq i32 %i.q, 0
  br i1 %.not172, label %._crit_edge164.sink.split, label %.preheader135.lr.ph

.preheader135.lr.ph:                              ; preds = %bb.a
  %i.z = mul i32 %i.m, %i.k
  %i.aa = shl i32 %i.g, 3
  %i.ab = mul i32 %i.aa, %i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aj = uitofp i32 %i.z to double
  %i.ak = uitofp i32 %i.ab to float               ; 5 uses
  %.not173 = icmp eq i32 %i.s, 0
  br i1 %.not173, label %._crit_edge164.sink.split, label %.preheader135

.preheader135:                                    ; preds = %.preheader135.lr.ph, %._crit_edge146
  %i.al = phi i32 [ %i.dt, %._crit_edge146 ], [ %i.s, %.preheader135.lr.ph ]
  %i.am = phi i32 [ %i.du, %._crit_edge146 ], [ %i.q, %.preheader135.lr.ph ]
  %i.an = phi i32 [ %i.dv, %._crit_edge146 ], [ 1, %.preheader135.lr.ph ]
  %.0117148 = phi ptr [ %.1.lcssa, %._crit_edge146 ], [ %i.d, %.preheader135.lr.ph ] ; 2 uses
  %.0121147 = phi i32 [ %.pre194, %._crit_edge146 ], [ 0, %.preheader135.lr.ph ] ; 2 uses
  %.not174 = icmp eq i32 %i.an, 0
  %.pre194 = add nuw i32 %.0121147, 1             ; 3 uses
  br i1 %.not174, label %._crit_edge146, label %.lr.ph145

.lr.ph145:                                        ; preds = %.preheader135, %._crit_edge
  %.1144 = phi ptr [ %i.dq, %._crit_edge ], [ %.0117148, %.preheader135 ] ; 4 uses
  %.0124143 = phi i32 [ %i.at, %._crit_edge ], [ 0, %.preheader135 ] ; 2 uses
  %i.ao = tail call float %opj_j2k_get_default_stride.opj_j2k_get_tp_stride(ptr noundef %.1144) #21, !callees !526
  %i.ap = getelementptr inbounds nuw i8, ptr %.1144, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !90 ; 5 uses
  %i.ar = uitofp i32 %i.aq to float
  %i.as = fdiv float %i.ao, %i.ar                 ; 5 uses
  %i.at = add nuw i32 %.0124143, 1                ; 3 uses
  %.not175 = icmp eq i32 %i.aq, 0
  br i1 %.not175, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph145
  %i.au = getelementptr inbounds nuw i8, ptr %.1144, i64 20 ; 6 uses
  %i.av = load i32, ptr %i.af, align 8, !tbaa !83 ; 2 uses
  %i.aw = mul i32 %i.av, %.pre194
  %i.ax = load i32, ptr %i.ae, align 8, !tbaa !87 ; 2 uses
  %i.ay = add i32 %i.aw, %i.ax
  %i.az = load i32, ptr %i.ai, align 4, !tbaa !86
  %i.ba = tail call noundef i32 @llvm.smin.i32(i32 %i.ay, i32 %i.az)
  %i.bb = load i32, ptr %i.ad, align 4, !tbaa !82 ; 2 uses
  %i.bc = mul i32 %i.bb, %i.at
  %i.bd = load i32, ptr %i.ac, align 4, !tbaa !85 ; 2 uses
  %i.be = add i32 %i.bc, %i.bd
  %i.bf = load i32, ptr %i.ah, align 8, !tbaa !84
  %i.bg = tail call noundef i32 @llvm.smin.i32(i32 %i.be, i32 %i.bf)
  %i.bh = mul i32 %i.av, %.0121147
  %i.bi = add i32 %i.bh, %i.ax
  %i.bj = load i32, ptr %i.ag, align 4, !tbaa !150
  %i.bk = tail call noundef i32 @llvm.smax.i32(i32 %i.bi, i32 %i.bj)
  %i.bl = mul i32 %i.bb, %.0124143
  %i.bm = add i32 %i.bl, %i.bd
  %i.bn = load i32, ptr %i.b, align 8, !tbaa !149
  %i.bo = tail call noundef i32 @llvm.smax.i32(i32 %i.bm, i32 %i.bn)
  %i.bp = sub nsw i32 %i.bg, %i.bo
  %i.bq = uitofp i32 %i.bp to double
  %i.br = fmul nnan double %i.aj, %i.bq
  %i.bs = sub nsw i32 %i.ba, %i.bk
  %i.bt = uitofp i32 %i.bs to double
  %i.bu = fmul double %i.br, %i.bt                ; 5 uses
  %i.bv = zext i32 %i.aq to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.aq, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.bv, 4294967292              ; 4 uses
  %i.bw = shl nuw nsw i64 %n.vec, 2
  %i.bx = getelementptr i8, ptr %i.au, i64 %i.bw
  %i.by = trunc nuw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue256, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue256 ] ; 2 uses
  %i.bz = shl i64 %index, 2                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.au, i64 %i.bz ; 2 uses
  %i.ca = getelementptr i8, ptr %i.au, i64 %i.bz
  %next.gep248 = getelementptr i8, ptr %i.ca, i64 4
  %i.cb = getelementptr i8, ptr %i.au, i64 %i.bz
  %next.gep249 = getelementptr i8, ptr %i.cb, i64 8
  %i.cc = getelementptr i8, ptr %i.au, i64 %i.bz
  %next.gep250 = getelementptr i8, ptr %i.cc, i64 12
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !66 ; 5 uses
  %i.cd = fcmp ogt <4 x float> %wide.load, zeroinitializer ; 4 uses
  %i.ce = extractelement <4 x i1> %i.cd, i64 0
  br i1 %i.ce, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.cf = extractelement <4 x float> %wide.load, i64 0
  %i.cg = fmul float %i.cf, %i.ak
  %i.ch = fpext float %i.cg to double
  %i.ci = fdiv double %i.bu, %i.ch
  %i.cj = fptrunc double %i.ci to float
  %i.ck = fsub float %i.cj, %i.as
  store float %i.ck, ptr %next.gep, align 4, !tbaa !66
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cl = extractelement <4 x i1> %i.cd, i64 1
  br i1 %i.cl, label %pred.store.if251, label %pred.store.continue252

pred.store.if251:                                 ; preds = %pred.store.continue
  %i.cm = extractelement <4 x float> %wide.load, i64 1
  %i.cn = fmul float %i.cm, %i.ak
  %i.co = fpext float %i.cn to double
  %i.cp = fdiv double %i.bu, %i.co
  %i.cq = fptrunc double %i.cp to float
  %i.cr = fsub float %i.cq, %i.as
  store float %i.cr, ptr %next.gep248, align 4, !tbaa !66
  br label %pred.store.continue252

pred.store.continue252:                           ; preds = %pred.store.if251, %pred.store.continue
  %i.cs = extractelement <4 x i1> %i.cd, i64 2
  br i1 %i.cs, label %pred.store.if253, label %pred.store.continue254

pred.store.if253:                                 ; preds = %pred.store.continue252
  %i.ct = extractelement <4 x float> %wide.load, i64 2
  %i.cu = fmul float %i.ct, %i.ak
  %i.cv = fpext float %i.cu to double
  %i.cw = fdiv double %i.bu, %i.cv
  %i.cx = fptrunc double %i.cw to float
  %i.cy = fsub float %i.cx, %i.as
  store float %i.cy, ptr %next.gep249, align 4, !tbaa !66
  br label %pred.store.continue254

pred.store.continue254:                           ; preds = %pred.store.if253, %pred.store.continue252
  %i.cz = extractelement <4 x i1> %i.cd, i64 3
  br i1 %i.cz, label %pred.store.if255, label %pred.store.continue256

pred.store.if255:                                 ; preds = %pred.store.continue254
  %i.da = extractelement <4 x float> %wide.load, i64 3
  %i.db = fmul float %i.da, %i.ak
  %i.dc = fpext float %i.db to double
  %i.dd = fdiv double %i.bu, %i.dc
  %i.de = fptrunc double %i.dd to float
  %i.df = fsub float %i.de, %i.as
  store float %i.df, ptr %next.gep250, align 4, !tbaa !66
  br label %pred.store.continue256

pred.store.continue256:                           ; preds = %pred.store.if255, %pred.store.continue254
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !527

middle.block:                                     ; preds = %pred.store.continue256
  %cmp.n = icmp eq i64 %n.vec, %i.bv
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.0119142.ph = phi ptr [ %i.au, %.lr.ph ], [ %i.bx, %middle.block ]
  %.0126141.ph = phi i32 [ 0, %.lr.ph ], [ %i.by, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %.0119142 = phi ptr [ %i.do, %bb.c ], [ %.0119142.ph, %scalar.ph.preheader ] ; 3 uses
  %.0126141 = phi i32 [ %i.dp, %bb.c ], [ %.0126141.ph, %scalar.ph.preheader ]
  %i.dh = load float, ptr %.0119142, align 4, !tbaa !66 ; 2 uses
  %i.di = fcmp ogt float %i.dh, 0.000000e+00
  br i1 %i.di, label %bb.b, label %bb.c

bb.b:                                             ; preds = %scalar.ph
  %i.dj = fmul float %i.dh, %i.ak
  %i.dk = fpext float %i.dj to double
  %i.dl = fdiv double %i.bu, %i.dk
  %i.dm = fptrunc double %i.dl to float
  %i.dn = fsub float %i.dm, %i.as
  store float %i.dn, ptr %.0119142, align 4, !tbaa !66
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %scalar.ph
  %i.do = getelementptr inbounds nuw i8, ptr %.0119142, i64 4
  %i.dp = add nuw i32 %.0126141, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.dp, %i.aq
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !528

._crit_edge:                                      ; preds = %bb.c, %middle.block, %.lr.ph145
  %i.dq = getelementptr inbounds nuw i8, ptr %.1144, i64 5696 ; 2 uses
  %i.dr = load i32, ptr %i.r, align 8, !tbaa !34  ; 3 uses
  %i.ds = icmp ult i32 %i.at, %i.dr
  br i1 %i.ds, label %.lr.ph145, label %._crit_edge146.loopexit, !llvm.loop !529

._crit_edge146.loopexit:                          ; preds = %._crit_edge
  %.pre = load i32, ptr %i.p, align 4, !tbaa !33
  br label %._crit_edge146

._crit_edge146:                                   ; preds = %.preheader135, %._crit_edge146.loopexit
  %i.dt = phi i32 [ %i.dr, %._crit_edge146.loopexit ], [ %i.al, %.preheader135 ] ; 3 uses
  %i.du = phi i32 [ %.pre, %._crit_edge146.loopexit ], [ %i.am, %.preheader135 ] ; 6 uses
  %i.dv = phi i32 [ %i.dr, %._crit_edge146.loopexit ], [ 0, %.preheader135 ]
  %.1.lcssa = phi ptr [ %i.dq, %._crit_edge146.loopexit ], [ %.0117148, %.preheader135 ]
  %i.dw = icmp ult i32 %.pre194, %i.du
  br i1 %i.dw, label %.preheader135, label %._crit_edge149, !llvm.loop !530

._crit_edge149:                                   ; preds = %._crit_edge146
  %i.dx = load ptr, ptr %i.c, align 8, !tbaa !32  ; 4 uses
  %.not176 = icmp eq i32 %i.du, 0
  br i1 %.not176, label %._crit_edge164, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %._crit_edge149
  %.not177 = icmp eq i32 %i.dt, 0
  %i.dy = fadd float %i.v, 2.000000e+00
  br i1 %.not177, label %._crit_edge164, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge160.us
  %.2163.us = phi ptr [ %i.fd, %._crit_edge160.us ], [ %i.dx, %.preheader.lr.ph ]
  %.1122162.us = phi i32 [ %i.fw, %._crit_edge160.us ], [ 0, %.preheader.lr.ph ]
  br label %bb.d

bb.d:                                             ; preds = %.preheader.us, %bb.l
  %.3158.us = phi ptr [ %.2163.us, %.preheader.us ], [ %i.fd, %bb.l ] ; 4 uses
  %.1125157.us = phi i32 [ 0, %.preheader.us ], [ %i.fe, %bb.l ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.3158.us, i64 20 ; 3 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !66 ; 2 uses
  %i.eb = fcmp ogt float %i.ea, 0.000000e+00
  br i1 %i.eb, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ec = fsub float %i.ea, %i.v                  ; 2 uses
  store float %i.ec, ptr %i.dz, align 4, !tbaa !66
  %i.ed = fcmp olt float %i.ec, 3.000000e+01
  br i1 %i.ed, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float 3.000000e+01, ptr %i.dz, align 4, !tbaa !66
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ee = getelementptr inbounds nuw i8, ptr %.3158.us, i64 24 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.3158.us, i64 8
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !90 ; 5 uses
  %i.eh = add i32 %i.eg, -3
  %i.ei = icmp ult i32 %i.eh, -2
  br i1 %i.ei, label %.lr.ph154.us.preheader, label %._crit_edge155.us

.lr.ph154.us.preheader:                           ; preds = %bb.g
  %xtraiter = and i32 %i.eg, 1
  %i.ej = icmp eq i32 %i.eg, 3
  br i1 %i.ej, label %.lr.ph154.us.epil.preheader, label %.lr.ph154.us.preheader.new

.lr.ph154.us.preheader.new:                       ; preds = %.lr.ph154.us.preheader
  %i.ek = and i32 %i.eg, -2
  %i.el = add i32 %i.ek, -4
  br label %.lr.ph154.us

._crit_edge155.us.loopexit.unr-lcssa:             ; preds = %bb.q
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge155.us, label %.lr.ph154.us.epil.preheader

.lr.ph154.us.epil.preheader:                      ; preds = %._crit_edge155.us.loopexit.unr-lcssa, %.lr.ph154.us.preheader
  %.1120152.us.epil.init = phi ptr [ %i.ee, %.lr.ph154.us.preheader ], [ %i.fv, %._crit_edge155.us.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod270 = trunc i32 %i.eg to i1
  tail call void @llvm.assume(i1 %lcmp.mod270)
  %i.em = load float, ptr %.1120152.us.epil.init, align 4, !tbaa !66 ; 2 uses
  %i.en = fcmp ogt float %i.em, 0.000000e+00
  br i1 %i.en, label %bb.h, label %._crit_edge155.us.loopexit.epilog-lcssa

bb.h:                                             ; preds = %.lr.ph154.us.epil.preheader
  %i.eo = fsub float %i.em, %i.v                  ; 2 uses
  store float %i.eo, ptr %.1120152.us.epil.init, align 4, !tbaa !66
  %i.ep = getelementptr inbounds i8, ptr %.1120152.us.epil.init, i64 -4
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !66 ; 2 uses
  %i.er = fadd float %i.eq, 1.000000e+01
  %i.es = fcmp olt float %i.eo, %i.er
  br i1 %i.es, label %bb.i, label %._crit_edge155.us.loopexit.epilog-lcssa

bb.i:                                             ; preds = %bb.h
  %i.et = fadd float %i.eq, 2.000000e+01
  store float %i.et, ptr %.1120152.us.epil.init, align 4, !tbaa !66
  br label %._crit_edge155.us.loopexit.epilog-lcssa

._crit_edge155.us.loopexit.epilog-lcssa:          ; preds = %bb.i, %bb.h, %.lr.ph154.us.epil.preheader
  %i.eu = getelementptr inbounds nuw i8, ptr %.1120152.us.epil.init, i64 4
  br label %._crit_edge155.us

._crit_edge155.us:                                ; preds = %._crit_edge155.us.loopexit.epilog-lcssa, %._crit_edge155.us.loopexit.unr-lcssa, %bb.g
  %.1120.lcssa.us = phi ptr [ %i.ee, %bb.g ], [ %i.fv, %._crit_edge155.us.loopexit.unr-lcssa ], [ %i.eu, %._crit_edge155.us.loopexit.epilog-lcssa ] ; 4 uses
  %i.ev = load float, ptr %.1120.lcssa.us, align 4, !tbaa !66 ; 2 uses
  %i.ew = fcmp ogt float %i.ev, 0.000000e+00
  br i1 %i.ew, label %bb.j, label %bb.l

bb.j:                                             ; preds = %._crit_edge155.us
  %i.ex = fsub float %i.ev, %i.dy                 ; 2 uses
  store float %i.ex, ptr %.1120.lcssa.us, align 4, !tbaa !66
  %i.ey = getelementptr inbounds i8, ptr %.1120.lcssa.us, i64 -4
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !66 ; 2 uses
  %i.fa = fadd float %i.ez, 1.000000e+01
  %i.fb = fcmp olt float %i.ex, %i.fa
  br i1 %i.fb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fc = fadd float %i.ez, 2.000000e+01
  store float %i.fc, ptr %.1120.lcssa.us, align 4, !tbaa !66
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge155.us
  %i.fd = getelementptr inbounds nuw i8, ptr %.3158.us, i64 5696 ; 2 uses
  %i.fe = add nuw i32 %.1125157.us, 1             ; 2 uses
  %exitcond191.not = icmp eq i32 %i.fe, %i.dt
  br i1 %exitcond191.not, label %._crit_edge160.us, label %bb.d, !llvm.loop !531

.lr.ph154.us:                                     ; preds = %bb.q, %.lr.ph154.us.preheader.new
  %.1120152.us = phi ptr [ %i.ee, %.lr.ph154.us.preheader.new ], [ %i.fv, %bb.q ] ; 7 uses
  %niter = phi i32 [ 0, %.lr.ph154.us.preheader.new ], [ %niter.next.1, %bb.q ] ; 2 uses
  %i.ff = load float, ptr %.1120152.us, align 4, !tbaa !66 ; 2 uses
  %i.fg = fcmp ogt float %i.ff, 0.000000e+00
  br i1 %i.fg, label %bb.m, label %.lr.ph154.us.1

bb.m:                                             ; preds = %.lr.ph154.us
  %i.fh = fsub float %i.ff, %i.v                  ; 2 uses
  store float %i.fh, ptr %.1120152.us, align 4, !tbaa !66
  %i.fi = getelementptr inbounds i8, ptr %.1120152.us, i64 -4
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !66 ; 2 uses
  %i.fk = fadd float %i.fj, 1.000000e+01
  %i.fl = fcmp olt float %i.fh, %i.fk
  br i1 %i.fl, label %bb.n, label %.lr.ph154.us.1

bb.n:                                             ; preds = %bb.m
  %i.fm = fadd float %i.fj, 2.000000e+01
  store float %i.fm, ptr %.1120152.us, align 4, !tbaa !66
  br label %.lr.ph154.us.1

.lr.ph154.us.1:                                   ; preds = %bb.n, %bb.m, %.lr.ph154.us
  %i.fn = getelementptr inbounds nuw i8, ptr %.1120152.us, i64 4 ; 3 uses
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !66 ; 2 uses
  %i.fp = fcmp ogt float %i.fo, 0.000000e+00
  br i1 %i.fp, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.lr.ph154.us.1
  %i.fq = fsub float %i.fo, %i.v                  ; 2 uses
  store float %i.fq, ptr %i.fn, align 4, !tbaa !66
  %i.fr = load float, ptr %.1120152.us, align 4, !tbaa !66 ; 2 uses
  %i.fs = fadd float %i.fr, 1.000000e+01
  %i.ft = fcmp olt float %i.fq, %i.fs
  br i1 %i.ft, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fu = fadd float %i.fr, 2.000000e+01
  store float %i.fu, ptr %i.fn, align 4, !tbaa !66
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.lr.ph154.us.1
  %i.fv = getelementptr inbounds nuw i8, ptr %.1120152.us, i64 8 ; 3 uses
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter, %i.el
  br i1 %niter.ncmp.1, label %._crit_edge155.us.loopexit.unr-lcssa, label %.lr.ph154.us, !llvm.loop !532

._crit_edge160.us:                                ; preds = %bb.l
  %i.fw = add nuw i32 %.1122162.us, 1             ; 2 uses
  %exitcond192.not = icmp eq i32 %i.fw, %i.du
  br i1 %exitcond192.not, label %._crit_edge164, label %.preheader.us, !llvm.loop !533

._crit_edge164.sink.split:                        ; preds = %.preheader135.lr.ph, %bb.a
  %.lcssa140218.ph = phi i32 [ 0, %bb.a ], [ %i.q, %.preheader135.lr.ph ]
  %i.fx = load ptr, ptr %i.c, align 8, !tbaa !32
  br label %._crit_edge164

._crit_edge164:                                   ; preds = %._crit_edge160.us, %._crit_edge164.sink.split, %.preheader.lr.ph, %._crit_edge149
  %i.fy = phi ptr [ %i.fx, %._crit_edge164.sink.split ], [ %i.dx, %.preheader.lr.ph ], [ %i.dx, %._crit_edge149 ], [ %i.dx, %._crit_edge160.us ] ; 6 uses
  %.lcssa140218 = phi i32 [ %.lcssa140218.ph, %._crit_edge164.sink.split ], [ %i.du, %.preheader.lr.ph ], [ 0, %._crit_edge149 ], [ %i.du, %._crit_edge160.us ]
  %i.fz = load i32, ptr %i.j, align 8, !tbaa !57  ; 2 uses
  %.not178 = icmp eq i32 %i.fz, 0
  br i1 %.not178, label %._crit_edge170, label %.lr.ph169

.lr.ph169:                                        ; preds = %._crit_edge164
  %i.ga = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !82
  %i.gd = zext i32 %i.gc to i64
  %i.ge = add nsw i64 %i.gd, -1
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !83
  %i.gh = zext i32 %i.gg to i64
  %i.gi = add nsw i64 %i.gh, -1
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph169, %bb.r
  %.0116167 = phi i64 [ 0, %.lr.ph169 ], [ %i.gz, %bb.r ]
  %.0118166 = phi ptr [ %i.ga, %.lr.ph169 ], [ %i.ha, %bb.r ] ; 4 uses
  %.2123165 = phi i32 [ 0, %.lr.ph169 ], [ %i.hb, %bb.r ]
  %i.gj = load i32, ptr %.0118166, align 8, !tbaa !76
  %i.gk = zext i32 %i.gj to i64                   ; 2 uses
  %i.gl = add nsw i64 %i.ge, %i.gk
  %i.gm = udiv i64 %i.gl, %i.gk
  %i.gn = and i64 %i.gm, 4294967295
  %i.go = getelementptr inbounds nuw i8, ptr %.0118166, i64 4
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !77
  %i.gq = zext i32 %i.gp to i64                   ; 2 uses
  %i.gr = add nsw i64 %i.gi, %i.gq
  %i.gs = udiv i64 %i.gr, %i.gq
  %i.gt = and i64 %i.gs, 4294967295
  %i.gu = mul nuw i64 %i.gt, %i.gn
  %i.gv = getelementptr inbounds nuw i8, ptr %.0118166, i64 24
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !75
  %i.gx = zext i32 %i.gw to i64
  %i.gy = mul i64 %i.gu, %i.gx
  %i.gz = add i64 %i.gy, %.0116167                ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.0118166, i64 64
  %i.hb = add nuw i32 %.2123165, 1                ; 2 uses
  %exitcond193.not = icmp eq i32 %i.hb, %i.fz
  br i1 %exitcond193.not, label %._crit_edge170.loopexit, label %bb.r, !llvm.loop !534

._crit_edge170.loopexit:                          ; preds = %bb.r
  %i.hc = uitofp i64 %i.gz to double
  %i.hd = fmul nnan double %i.hc, 1.400000e+00
  %i.he = fmul nnan double %i.hd, 1.250000e-01
  %i.hf = fptoui double %i.he to i64
  %i.hg = add i64 %i.hf, 500
  br label %._crit_edge170

._crit_edge170:                                   ; preds = %._crit_edge170.loopexit, %._crit_edge164
  %.0116.lcssa = phi i64 [ 500, %._crit_edge164 ], [ %i.hg, %._crit_edge170.loopexit ]
  %i.hh = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !57 ; 5 uses
  %i.hk = add i32 %i.hj, -1                       ; 3 uses
  %i.hl = load i32, ptr %i.r, align 8, !tbaa !220
  %i.hm = mul i32 %i.hl, %.lcssa140218            ; 8 uses
  %.not.i.i = icmp eq i32 %i.hm, 0                ; 3 uses
  br i1 %.not.i.i, label %opj_j2k_get_max_toc_size.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge170
  %xtraiter271 = and i32 %i.hm, 3                 ; 3 uses
  %i.hn = icmp ult i32 %i.hm, 4
  br i1 %i.hn, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter275 = and i32 %i.hm, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.013.i.i = phi ptr [ %i.fy, %.lr.ph.i.i.preheader.new ], [ %i.ia, %.lr.ph.i.i ] ; 5 uses
  %.0912.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.hz, %.lr.ph.i.i ]
  %niter276 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter276.next.3, %.lr.ph.i.i ]
  %i.ho = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 5612
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !244
  %i.hq = tail call noundef i32 @llvm.umax.i32(i32 %.0912.i.i, i32 %i.hp)
  %i.hr = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 11308
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !244
  %i.ht = tail call noundef i32 @llvm.umax.i32(i32 %i.hq, i32 %i.hs)
  %i.hu = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 17004
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !244
  %i.hw = tail call noundef i32 @llvm.umax.i32(i32 %i.ht, i32 %i.hv)
  %i.hx = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 22700
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !244
  %i.hz = tail call noundef i32 @llvm.umax.i32(i32 %i.hw, i32 %i.hy) ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 22784 ; 2 uses
  %niter276.next.3 = add i32 %niter276, 4         ; 2 uses
  %niter276.ncmp.3 = icmp eq i32 %niter276.next.3, %unroll_iter275
  br i1 %niter276.ncmp.3, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !535

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod272.not = icmp eq i32 %xtraiter271, 0
  br i1 %lcmp.mod272.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.013.i.i.epil.init = phi ptr [ %i.fy, %.lr.ph.i.i.preheader ], [ %i.ia, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.0912.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.hz, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod274 = icmp ne i32 %xtraiter271, 0
  tail call void @llvm.assume(i1 %lcmp.mod274)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.013.i.i.epil = phi ptr [ %i.ie, %.lr.ph.i.i.epil ], [ %.013.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.0912.i.i.epil = phi i32 [ %i.id, %.lr.ph.i.i.epil ], [ %.0912.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.ib = getelementptr inbounds nuw i8, ptr %.013.i.i.epil, i64 5612
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !244
  %i.id = tail call noundef i32 @llvm.umax.i32(i32 %.0912.i.i.epil, i32 %i.ic) ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.013.i.i.epil, i64 5696
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter271
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !536

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %.lcssa261 = phi i32 [ %i.hz, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.id, %.lr.ph.i.i.epil ]
  %i.if = mul i32 %.lcssa261, 12
  br label %opj_j2k_get_max_toc_size.exit.i

opj_j2k_get_max_toc_size.exit.i:                  ; preds = %._crit_edge.loopexit.i.i, %._crit_edge170
  %.09.lcssa.i.i = phi i32 [ 0, %._crit_edge170 ], [ %i.if, %._crit_edge.loopexit.i.i ] ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ih = load i16, ptr %i.ig, align 8, !tbaa !398
  %i.ii = add i16 %i.ih, -3
  %or.cond.i = icmp ult i16 %i.ii, 4
  br i1 %or.cond.i, label %bb.z, label %bb.s

bb.s:                                             ; preds = %opj_j2k_get_max_toc_size.exit.i
  %.not21.i.i = icmp eq i32 %i.hj, 0
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %.not21.i.i
  br i1 %or.cond.i.i, label %opj_j2k_get_max_coc_size.exit.thread.i, label %.preheader.lr.ph.split.us.i.i

opj_j2k_get_max_coc_size.exit.thread.i:           ; preds = %bb.s
  %i.ij = mul i32 %i.hk, 6                        ; 2 uses
  %i.ik = add i32 %.09.lcssa.i.i, %i.ij
  br label %opj_j2k_get_max_qcc_size.exit.i

.preheader.lr.ph.split.us.i.i:                    ; preds = %bb.s
  %wide.trip.count27.i.i = zext i32 %i.hm to i64  ; 2 uses
  %wide.trip.count.i.i = zext i32 %i.hj to i64    ; 5 uses
  %i.il = add nsw i64 %wide.trip.count.i.i, -1    ; 2 uses
  %xtraiter277 = and i64 %wide.trip.count.i.i, 1
  %i.im = icmp eq i64 %i.il, 0
  %unroll_iter282 = and i64 %wide.trip.count.i.i, 4294967294
  %lcmp.mod279.not = icmp eq i64 %xtraiter277, 0
  %lcmp.mod281 = trunc i32 %i.hj to i1
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.lr.ph.split.us.i.i
  %indvars.iv24.i.i = phi i64 [ %indvars.iv.next25.i.i, %._crit_edge.us.i.i ], [ 0, %.preheader.lr.ph.split.us.i.i ] ; 2 uses
  %.018.us.i.i = phi i32 [ %.lcssa260, %._crit_edge.us.i.i ], [ 0, %.preheader.lr.ph.split.us.i.i ] ; 2 uses
  %i.in = getelementptr inbounds nuw [5696 x i8], ptr %i.fy, i64 %indvars.iv24.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 5600
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !109 ; 3 uses
  br i1 %i.im, label %.epil.preheader, label %.preheader.us.i.i.new

.preheader.us.i.i.new:                            ; preds = %.preheader.us.i.i, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.1
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.1 ], [ 0, %.preheader.us.i.i ] ; 3 uses
  %.116.us.i.i = phi i32 [ %i.je, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.1 ], [ %.018.us.i.i, %.preheader.us.i.i ]
  %niter283 = phi i64 [ %niter283.next.1, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.1 ], [ 0, %.preheader.us.i.i ]
  %i.iq = getelementptr inbounds nuw [1080 x i8], ptr %i.ip, i64 %indvars.iv.i.i ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !122
  %i.is = and i32 %i.ir, 1
  %.not.i.us.i.i = icmp eq i32 %i.is, 0
  br i1 %.not.i.us.i.i, label %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i, label %bb.t

bb.t:                                             ; preds = %.preheader.us.i.i.new
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !123
  %i.iv = add i32 %i.iu, 5
  br label %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i

opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i:         ; preds = %bb.t, %.preheader.us.i.i.new
  %.0.i.us.i.i = phi i32 [ %i.iv, %bb.t ], [ 5, %.preheader.us.i.i.new ]
  %i.iw = tail call noundef i32 @llvm.umax.i32(i32 %.116.us.i.i, i32 %.0.i.us.i.i)
  %i.ix = getelementptr inbounds nuw [1080 x i8], ptr %i.ip, i64 %indvars.iv.i.i ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 1080
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !122
  %i.ja = and i32 %i.iz, 1
  %.not.i.us.i.i.1 = icmp eq i32 %i.ja, 0
  br i1 %.not.i.us.i.i.1, label %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.1, label %bb.u

bb.u:                                             ; preds = %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 1084
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !123
  %i.jd = add i32 %i.jc, 5
  br label %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.1

opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.1:       ; preds = %bb.u, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i
  %.0.i.us.i.i.1 = phi i32 [ %i.jd, %bb.u ], [ 5, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i ]
  %i.je = tail call noundef i32 @llvm.umax.i32(i32 %i.iw, i32 %.0.i.us.i.i.1) ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter283.next.1 = add i64 %niter283, 2         ; 2 uses
  %niter283.ncmp.1 = icmp eq i64 %niter283.next.1, %unroll_iter282
  br i1 %niter283.ncmp.1, label %._crit_edge.us.i.i.unr-lcssa, label %.preheader.us.i.i.new, !llvm.loop !537

._crit_edge.us.i.i.unr-lcssa:                     ; preds = %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.1
  br i1 %lcmp.mod279.not, label %._crit_edge.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.i.unr-lcssa, %.preheader.us.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.us.i.i.unr-lcssa ]
  %.116.us.i.i.epil.init = phi i32 [ %.018.us.i.i, %.preheader.us.i.i ], [ %i.je, %._crit_edge.us.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod281)
  %i.jf = getelementptr inbounds nuw [1080 x i8], ptr %i.ip, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !122
  %i.jh = and i32 %i.jg, 1
  %.not.i.us.i.i.epil = icmp eq i32 %i.jh, 0
  br i1 %.not.i.us.i.i.epil, label %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.epil, label %bb.v

bb.v:                                             ; preds = %.epil.preheader
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !123
  %i.jk = add i32 %i.jj, 5
  br label %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.epil

opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.epil:    ; preds = %bb.v, %.epil.preheader
  %.0.i.us.i.i.epil = phi i32 [ %i.jk, %bb.v ], [ 5, %.epil.preheader ]
  %i.jl = tail call noundef i32 @llvm.umax.i32(i32 %.116.us.i.i.epil.init, i32 %.0.i.us.i.i.epil)
  br label %._crit_edge.us.i.i

._crit_edge.us.i.i:                               ; preds = %._crit_edge.us.i.i.unr-lcssa, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.epil
  %.lcssa260 = phi i32 [ %i.je, %._crit_edge.us.i.i.unr-lcssa ], [ %i.jl, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.epil ] ; 2 uses
  %indvars.iv.next25.i.i = add nuw nsw i64 %indvars.iv24.i.i, 1 ; 2 uses
  %exitcond28.not.i.i = icmp eq i64 %indvars.iv.next25.i.i, %wide.trip.count27.i.i
  br i1 %exitcond28.not.i.i, label %.preheader.us.i.i.i.preheader, label %.preheader.us.i.i, !llvm.loop !538

.preheader.us.i.i.i.preheader:                    ; preds = %._crit_edge.us.i.i
  %xtraiter285 = and i64 %wide.trip.count.i.i, 1
  %i.jm = icmp eq i64 %i.il, 0
  %unroll_iter290 = and i64 %wide.trip.count.i.i, 4294967294
  %lcmp.mod287.not = icmp eq i64 %xtraiter285, 0
  %lcmp.mod289 = trunc i32 %i.hj to i1
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %.preheader.us.i.i.i.preheader, %._crit_edge.us.i.i.i
  %indvars.iv24.i.i.i = phi i64 [ %indvars.iv.next25.i.i.i, %._crit_edge.us.i.i.i ], [ 0, %.preheader.us.i.i.i.preheader ] ; 2 uses
  %.018.us.i.i.i = phi i32 [ %.lcssa259, %._crit_edge.us.i.i.i ], [ 0, %.preheader.us.i.i.i.preheader ] ; 2 uses
  %i.jn = getelementptr inbounds nuw [5696 x i8], ptr %i.fy, i64 %indvars.iv24.i.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 5600
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !109 ; 3 uses
  br i1 %i.jm, label %.epil.preheader284, label %.preheader.us.i.i.i.new

.preheader.us.i.i.i.new:                          ; preds = %.preheader.us.i.i.i, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.1
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.1 ], [ 0, %.preheader.us.i.i.i ] ; 3 uses
  %.116.us.i.i.i = phi i32 [ %i.ke, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.1 ], [ %.018.us.i.i.i, %.preheader.us.i.i.i ]
  %niter291 = phi i64 [ %niter291.next.1, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.1 ], [ 0, %.preheader.us.i.i.i ]
  %i.jq = getelementptr inbounds nuw [1080 x i8], ptr %i.jp, i64 %indvars.iv.i.i.i ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !122
  %i.js = and i32 %i.jr, 1
  %.not.i.us.i.i.i = icmp eq i32 %i.js, 0
  br i1 %.not.i.us.i.i.i, label %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i, label %bb.w

bb.w:                                             ; preds = %.preheader.us.i.i.i.new
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !123
  %i.jv = add i32 %i.ju, 5
  br label %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i

opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i:       ; preds = %bb.w, %.preheader.us.i.i.i.new
  %.0.i.us.i.i.i = phi i32 [ %i.jv, %bb.w ], [ 5, %.preheader.us.i.i.i.new ]
  %i.jw = tail call noundef i32 @llvm.umax.i32(i32 %.116.us.i.i.i, i32 %.0.i.us.i.i.i)
  %i.jx = getelementptr inbounds nuw [1080 x i8], ptr %i.jp, i64 %indvars.iv.i.i.i ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 1080
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !122
  %i.ka = and i32 %i.jz, 1
  %.not.i.us.i.i.i.1 = icmp eq i32 %i.ka, 0
  br i1 %.not.i.us.i.i.i.1, label %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.1, label %bb.x

bb.x:                                             ; preds = %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 1084
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !123
  %i.kd = add i32 %i.kc, 5
  br label %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.1

opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.1:     ; preds = %bb.x, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i
  %.0.i.us.i.i.i.1 = phi i32 [ %i.kd, %bb.x ], [ 5, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i ]
  %i.ke = tail call noundef i32 @llvm.umax.i32(i32 %i.jw, i32 %.0.i.us.i.i.i.1) ; 3 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter291.next.1 = add i64 %niter291, 2         ; 2 uses
  %niter291.ncmp.1 = icmp eq i64 %niter291.next.1, %unroll_iter290
  br i1 %niter291.ncmp.1, label %._crit_edge.us.i.i.i.unr-lcssa, label %.preheader.us.i.i.i.new, !llvm.loop !537

._crit_edge.us.i.i.i.unr-lcssa:                   ; preds = %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.1
  br i1 %lcmp.mod287.not, label %._crit_edge.us.i.i.i, label %.epil.preheader284

.epil.preheader284:                               ; preds = %._crit_edge.us.i.i.i.unr-lcssa, %.preheader.us.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.preheader.us.i.i.i ], [ %indvars.iv.next.i.i.i.1, %._crit_edge.us.i.i.i.unr-lcssa ]
  %.116.us.i.i.i.epil.init = phi i32 [ %.018.us.i.i.i, %.preheader.us.i.i.i ], [ %i.ke, %._crit_edge.us.i.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod289)
  %i.kf = getelementptr inbounds nuw [1080 x i8], ptr %i.jp, i64 %indvars.iv.i.i.i.epil.init ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !122
  %i.kh = and i32 %i.kg, 1
  %.not.i.us.i.i.i.epil = icmp eq i32 %i.kh, 0
  br i1 %.not.i.us.i.i.i.epil, label %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.epil, label %bb.y

bb.y:                                             ; preds = %.epil.preheader284
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !123
  %i.kk = add i32 %i.kj, 5
  br label %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.epil

opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.epil:  ; preds = %bb.y, %.epil.preheader284
  %.0.i.us.i.i.i.epil = phi i32 [ %i.kk, %bb.y ], [ 5, %.epil.preheader284 ]
  %i.kl = tail call noundef i32 @llvm.umax.i32(i32 %.116.us.i.i.i.epil.init, i32 %.0.i.us.i.i.i.epil)
  br label %._crit_edge.us.i.i.i

._crit_edge.us.i.i.i:                             ; preds = %._crit_edge.us.i.i.i.unr-lcssa, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.epil
  %.lcssa259 = phi i32 [ %i.ke, %._crit_edge.us.i.i.i.unr-lcssa ], [ %i.kl, %opj_j2k_get_SPCod_SPCoc_size.exit.us.i.i.i.epil ] ; 2 uses
  %indvars.iv.next25.i.i.i = add nuw nsw i64 %indvars.iv24.i.i.i, 1 ; 2 uses
  %exitcond28.not.i.i.i = icmp eq i64 %indvars.iv.next25.i.i.i, %wide.trip.count27.i.i
  br i1 %exitcond28.not.i.i.i, label %._crit_edge19.loopexit22.i.i.i, label %.preheader.us.i.i.i, !llvm.loop !538

._crit_edge19.loopexit22.i.i.i:                   ; preds = %._crit_edge.us.i.i.i
  %i.km = add i32 %.lcssa260, 6
  %i.kn = mul i32 %i.km, %i.hk
  %i.ko = add i32 %i.kn, %.09.lcssa.i.i
  %i.kp = add i32 %.lcssa259, 6
  %.pre.i = mul i32 %i.kp, %i.hk
  br label %opj_j2k_get_max_qcc_size.exit.i

opj_j2k_get_max_qcc_size.exit.i:                  ; preds = %._crit_edge19.loopexit22.i.i.i, %opj_j2k_get_max_coc_size.exit.thread.i
  %.pre-phi.i = phi i32 [ %i.ij, %opj_j2k_get_max_coc_size.exit.thread.i ], [ %.pre.i, %._crit_edge19.loopexit22.i.i.i ]
  %i.kq = phi i32 [ %i.ik, %opj_j2k_get_max_coc_size.exit.thread.i ], [ %i.ko, %._crit_edge19.loopexit22.i.i.i ]
  %i.kr = add i32 %i.kq, %.pre-phi.i
  br label %bb.z

bb.z:                                             ; preds = %opj_j2k_get_max_qcc_size.exit.i, %opj_j2k_get_max_toc_size.exit.i
  %.033.i = phi i32 [ %.09.lcssa.i.i, %opj_j2k_get_max_toc_size.exit.i ], [ %i.kr, %opj_j2k_get_max_qcc_size.exit.i ] ; 2 uses
  br i1 %.not.i.i, label %opj_j2k_get_max_poc_size.exit.i, label %.lr.ph.i40.i.preheader

.lr.ph.i40.i.preheader:                           ; preds = %bb.z
  %xtraiter292 = and i32 %i.hm, 3                 ; 3 uses
  %i.ks = icmp ult i32 %i.hm, 4
  br i1 %i.ks, label %.lr.ph.i40.i.epil.preheader, label %.lr.ph.i40.i.preheader.new

.lr.ph.i40.i.preheader.new:                       ; preds = %.lr.ph.i40.i.preheader
  %unroll_iter297 = and i32 %i.hm, -4
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i, %.lr.ph.i40.i.preheader.new
  %.01013.i.i = phi i32 [ 0, %.lr.ph.i40.i.preheader.new ], [ %i.le, %.lr.ph.i40.i ]
  %.01112.i.i = phi ptr [ %i.fy, %.lr.ph.i40.i.preheader.new ], [ %i.lf, %.lr.ph.i40.i ] ; 5 uses
  %niter298 = phi i32 [ 0, %.lr.ph.i40.i.preheader.new ], [ %niter298.next.3, %.lr.ph.i40.i ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 420
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !108
  %i.kv = tail call noundef i32 @llvm.umax.i32(i32 %.01013.i.i, i32 %i.ku)
  %i.kw = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 6116
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !108
  %i.ky = tail call noundef i32 @llvm.umax.i32(i32 %i.kv, i32 %i.kx)
  %i.kz = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 11812
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !108
  %i.lb = tail call noundef i32 @llvm.umax.i32(i32 %i.ky, i32 %i.la)
  %i.lc = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 17508
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !108
  %i.le = tail call noundef i32 @llvm.umax.i32(i32 %i.lb, i32 %i.ld) ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 22784 ; 2 uses
  %niter298.next.3 = add i32 %niter298, 4         ; 2 uses
  %niter298.ncmp.3 = icmp eq i32 %niter298.next.3, %unroll_iter297
  br i1 %niter298.ncmp.3, label %opj_j2k_get_max_poc_size.exit.thread.i.unr-lcssa, label %.lr.ph.i40.i, !llvm.loop !539

opj_j2k_get_max_poc_size.exit.i:                  ; preds = %bb.z
  %i.lg = add i32 %.033.i, 13                     ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !9
  %.not.i = icmp eq i32 %i.li, 0
  br i1 %.not.i, label %opj_j2k_get_specific_header_sizes.exit, label %._crit_edge.i

opj_j2k_get_max_poc_size.exit.thread.i.unr-lcssa: ; preds = %.lr.ph.i40.i
  %lcmp.mod294.not = icmp eq i32 %xtraiter292, 0
  br i1 %lcmp.mod294.not, label %opj_j2k_get_max_poc_size.exit.thread.i, label %.lr.ph.i40.i.epil.preheader

.lr.ph.i40.i.epil.preheader:                      ; preds = %opj_j2k_get_max_poc_size.exit.thread.i.unr-lcssa, %.lr.ph.i40.i.preheader
  %.01013.i.i.epil.init = phi i32 [ 0, %.lr.ph.i40.i.preheader ], [ %i.le, %opj_j2k_get_max_poc_size.exit.thread.i.unr-lcssa ]
  %.01112.i.i.epil.init = phi ptr [ %i.fy, %.lr.ph.i40.i.preheader ], [ %i.lf, %opj_j2k_get_max_poc_size.exit.thread.i.unr-lcssa ]
  %lcmp.mod296 = icmp ne i32 %xtraiter292, 0
  tail call void @llvm.assume(i1 %lcmp.mod296)
  br label %.lr.ph.i40.i.epil

.lr.ph.i40.i.epil:                                ; preds = %.lr.ph.i40.i.epil, %.lr.ph.i40.i.epil.preheader
  %.01013.i.i.epil = phi i32 [ %i.ll, %.lr.ph.i40.i.epil ], [ %.01013.i.i.epil.init, %.lr.ph.i40.i.epil.preheader ]
  %.01112.i.i.epil = phi ptr [ %i.lm, %.lr.ph.i40.i.epil ], [ %.01112.i.i.epil.init, %.lr.ph.i40.i.epil.preheader ] ; 2 uses
  %epil.iter293 = phi i32 [ %epil.iter293.next, %.lr.ph.i40.i.epil ], [ 0, %.lr.ph.i40.i.epil.preheader ]
  %i.lj = getelementptr inbounds nuw i8, ptr %.01112.i.i.epil, i64 420
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !108
  %i.ll = tail call noundef i32 @llvm.umax.i32(i32 %.01013.i.i.epil, i32 %i.lk) ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.01112.i.i.epil, i64 5696
  %epil.iter293.next = add i32 %epil.iter293, 1   ; 2 uses
  %epil.iter293.cmp.not = icmp eq i32 %epil.iter293.next, %xtraiter292
  br i1 %epil.iter293.cmp.not, label %opj_j2k_get_max_poc_size.exit.thread.i, label %.lr.ph.i40.i.epil, !llvm.loop !540

opj_j2k_get_max_poc_size.exit.thread.i:           ; preds = %.lr.ph.i40.i.epil, %opj_j2k_get_max_poc_size.exit.thread.i.unr-lcssa
  %.lcssa258 = phi i32 [ %i.le, %opj_j2k_get_max_poc_size.exit.thread.i.unr-lcssa ], [ %i.ll, %.lr.ph.i40.i.epil ]
  %i.ln = mul i32 %.lcssa258, 9
  %i.lo = add i32 %.033.i, 13
  %i.lp = add i32 %i.lo, %i.ln                    ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !9
  %.not57.i = icmp eq i32 %i.lr, 0
  br i1 %.not57.i, label %opj_j2k_get_specific_header_sizes.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %opj_j2k_get_max_poc_size.exit.thread.i, %.lr.ph.i
  %.048.i = phi i32 [ %i.lu, %.lr.ph.i ], [ 0, %opj_j2k_get_max_poc_size.exit.thread.i ]
  %.03447.i = phi i32 [ %i.lv, %.lr.ph.i ], [ 0, %opj_j2k_get_max_poc_size.exit.thread.i ] ; 2 uses
  %i.ls = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.lt = tail call i32 @opj_get_encoding_packet_count(ptr noundef %i.ls, ptr noundef nonnull %i.ig, i32 noundef %.03447.i) #21
  %i.lu = tail call noundef i32 @llvm.umax.i32(i32 %.048.i, i32 %i.lt) ; 2 uses
  %i.lv = add nuw i32 %.03447.i, 1                ; 2 uses
  %i.lw = load i32, ptr %i.p, align 4, !tbaa !33
  %i.lx = load i32, ptr %i.r, align 8, !tbaa !34
  %i.ly = mul i32 %i.lx, %i.lw
  %i.lz = icmp ult i32 %i.lv, %i.ly
  br i1 %i.lz, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !541

._crit_edge.i:                                    ; preds = %.lr.ph.i, %opj_j2k_get_max_poc_size.exit.i
  %i.ma = phi i32 [ %i.lg, %opj_j2k_get_max_poc_size.exit.i ], [ %i.lp, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ 0, %opj_j2k_get_max_poc_size.exit.i ], [ %i.lu, %.lr.ph.i ] ; 2 uses
  %i.mb = zext i32 %.0.lcssa.i to i64
  %i.mc = add nuw nsw i64 %i.mb, 16381
  %i.md = udiv i64 %i.mc, 16382
  %i.me = trunc nuw nsw i64 %i.md to i32
  %i.mf = mul nuw nsw i32 %i.me, 6
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.mh = mul i32 %.0.lcssa.i, 5
  %i.mi = add i32 %i.mh, %i.ma                    ; 2 uses
  %i.mj = add i32 %i.mi, 1
  %i.mk = add i32 %i.mj, %i.mf                    ; 2 uses
  store i32 %i.mk, ptr %i.mg, align 8, !tbaa !9
  %i.ml = add i32 %i.mk, %i.mi
  br label %opj_j2k_get_specific_header_sizes.exit

opj_j2k_get_specific_header_sizes.exit:           ; preds = %opj_j2k_get_max_poc_size.exit.i, %opj_j2k_get_max_poc_size.exit.thread.i, %._crit_edge.i
  %.1.i = phi i32 [ %i.ml, %._crit_edge.i ], [ %i.lg, %opj_j2k_get_max_poc_size.exit.i ], [ %i.lp, %opj_j2k_get_max_poc_size.exit.thread.i ]
  %i.mm = zext i32 %.1.i to i64
  %i.mn = add i64 %.0116.lcssa, %i.mm
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.mn, i64 4294967295) ; 3 uses
  %i.mo = trunc nuw i64 %spec.store.select to i32
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.mo, ptr %i.mp, align 8, !tbaa !9
  %i.mq = tail call ptr @opj_malloc(i64 noundef %spec.store.select) #21 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.mq, ptr %i.mr, align 8, !tbaa !9
  %i.ms = icmp eq ptr %i.mq, null
  br i1 %i.ms, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %opj_j2k_get_specific_header_sizes.exit
  %i.mt = lshr i64 %spec.store.select, 20
  %i.mu = trunc nuw nsw i64 %i.mt to i32
  %i.mv = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.326, i32 noundef %i.mu) #21 ; 0 uses
  br label %bb.ae

bb.ab:                                            ; preds = %opj_j2k_get_specific_header_sizes.exit
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mx = load i32, ptr %i.mw, align 8, !tbaa !9
  %.not133 = icmp eq i32 %i.mx, 0
  br i1 %.not133, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !9
  %i.na = mul i32 %i.mz, 6
  %i.nb = zext i32 %i.na to i64
  %i.nc = tail call ptr @opj_malloc(i64 noundef %i.nb) #21 ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.nc, ptr %i.nd, align 8, !tbaa !9
  %.not134 = icmp eq ptr %i.nc, null
  br i1 %.not134, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.nc, ptr %i.ne, align 8, !tbaa !9
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ad, %bb.ac, %bb.aa
  %.0 = phi i32 [ 0, %bb.aa ], [ 0, %bb.ac ], [ 1, %bb.ad ], [ 1, %bb.ab ]
  ret i32 %.0
}

declare void @opj_pi_update_encoding_parameters(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @opj_j2k_write_SPCod_SPCoc(ptr nofree readonly captures(none) %.264.val, i32 noundef %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [5696 x i8], ptr %.264.val, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5600
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 8 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !3
  %i.f = icmp ult i32 %i.e, 5
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.311) #21 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !123
  %i.j = add i32 %i.i, -1
  tail call void @opj_write_bytes_LE(ptr noundef %1, i32 noundef %i.j, i32 noundef 1) #21
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !124
  %i.n = add i32 %i.m, -2
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.k, i32 noundef %i.n, i32 noundef 1) #21
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !125
  %i.r = add i32 %i.q, -2
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.o, i32 noundef %i.r, i32 noundef 1) #21
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.u = load i32, ptr %i.t, align 4, !tbaa !127
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.s, i32 noundef %i.u, i32 noundef 1) #21
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !129
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.v, i32 noundef %i.x, i32 noundef 1) #21
  %i.y = load i32, ptr %2, align 4, !tbaa !3
  %i.z = add i32 %i.y, -5                         ; 3 uses
  store i32 %i.z, ptr %2, align 4, !tbaa !3
  %i.aa = load i32, ptr %i.d, align 4, !tbaa !122
  %i.ab = and i32 %i.aa, 1
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ad = load i32, ptr %i.h, align 4, !tbaa !123 ; 2 uses
  %i.ae = icmp ult i32 %i.z, %i.ad
  br i1 %i.ae, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not3 = icmp eq i32 %i.ad, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 812
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 944
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.311) #21 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.0402 = phi ptr [ %i.ac, %.lr.ph ], [ %i.ao, %bb.f ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = shl i32 %i.al, 4
  %i.an = add i32 %i.am, %i.aj
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.0402, i32 noundef %i.an, i32 noundef 1) #21
  %i.ao = getelementptr inbounds nuw i8, ptr %.0402, i64 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load i32, ptr %i.h, align 4, !tbaa !123 ; 2 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = icmp samesign ult i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %bb.f, label %._crit_edge.loopexit, !llvm.loop !542

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load i32, ptr %2, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.as = phi i32 [ %i.z, %.preheader ], [ %.pre, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ 0, %.preheader ], [ %i.ap, %._crit_edge.loopexit ]
  %i.at = sub i32 %i.as, %.lcssa
  store i32 %i.at, ptr %2, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %._crit_edge, %bb.e, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.e ], [ 1, %._crit_edge ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @opj_j2k_write_SQcd_SQcc(ptr nofree readonly captures(none) %.264.val, i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull captures(none) %3, ptr noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [5696 x i8], ptr %.264.val, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5600
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [1080 x i8], ptr %i.d, i64 %i.e ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 4, !tbaa !130  ; 3 uses
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !123
  %i.l = mul i32 %i.k, 3                          ; 2 uses
  %i.m = add i32 %i.l, -2                         ; 3 uses
  %i.n = icmp eq i32 %i.h, 0
  br i1 %i.n, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.o = add i32 %i.l, -1                         ; 2 uses
  %i.p = load i32, ptr %3, align 4, !tbaa !3
  %i.q = icmp ult i32 %i.p, %i.o
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str.314) #21 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 804
  %i.t = load i32, ptr %i.s, align 4, !tbaa !131
  %i.u = shl i32 %i.t, 5
  tail call void @opj_write_bytes_LE(ptr noundef %2, i32 noundef %i.u, i32 noundef 1) #21
  %.not7 = icmp eq i32 %i.m, 0
  br i1 %.not7, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %wide.trip.count = zext i32 %i.m to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.pn3 = phi ptr [ %2, %.lr.ph ], [ %.046, %bb.f ]
  %.046 = getelementptr inbounds nuw i8, ptr %.pn3, i64 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !302
  %i.y = shl i32 %i.x, 3
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.046, i32 noundef %i.y, i32 noundef 1) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !543

.thread:                                          ; preds = %bb.a, %bb.b
  %i.z = phi i32 [ %i.m, %bb.b ], [ 1, %bb.a ]    ; 3 uses
  %i.aa = shl i32 %i.z, 1                         ; 2 uses
  %i.ab = or disjoint i32 %i.aa, 1                ; 2 uses
  %i.ac = load i32, ptr %3, align 4, !tbaa !3
  %.not = icmp ugt i32 %i.ac, %i.aa
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.ad = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str.314) #21 ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 804
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !131
  %i.ag = shl i32 %i.af, 5
  %i.ah = add i32 %i.ag, %i.h
  tail call void @opj_write_bytes_LE(ptr noundef %2, i32 noundef %i.ah, i32 noundef 1) #21
  %.not8 = icmp eq i32 %i.z, 0
  br i1 %.not8, label %.loopexit, label %.lr.ph6

.lr.ph6:                                          ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %wide.trip.count14 = zext i32 %i.z to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph6, %bb.i
  %indvars.iv11 = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next12, %bb.i ] ; 2 uses
  %.15 = phi ptr [ %i.ai, %.lr.ph6 ], [ %i.aq, %bb.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv11 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !302
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !300
  %i.ao = shl i32 %i.al, 11
  %i.ap = add i32 %i.ao, %i.an
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.15, i32 noundef %i.ap, i32 noundef 2) #21
  %i.aq = getelementptr inbounds nuw i8, ptr %.15, i64 2
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1 ; 2 uses
  %exitcond15.not = icmp eq i64 %indvars.iv.next12, %wide.trip.count14
  br i1 %exitcond15.not, label %.loopexit, label %bb.i, !llvm.loop !544

.loopexit:                                        ; preds = %bb.f, %bb.i, %bb.e, %bb.h
  %.047 = phi i32 [ %i.ab, %bb.h ], [ 1, %bb.e ], [ %i.ab, %bb.i ], [ %i.o, %bb.f ]
  %i.ar = load i32, ptr %3, align 4, !tbaa !3
  %i.as = sub i32 %i.ar, %.047
  store i32 %i.as, ptr %3, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.g, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %.loopexit ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal float @opj_j2k_get_tp_stride(ptr nofree noundef readonly captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5612
  %i.b = load i32, ptr %i.a, align 4, !tbaa !244
  %i.c = mul i32 %i.b, 14
  %i.d = add i32 %i.c, -14
  %i.e = uitofp i32 %i.d to float
  ret float %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @opj_j2k_get_default_stride(ptr nofree readnone captures(none) %0) unnamed_addr #9 {
bb.a:
  ret float 0.000000e+00
}

declare i32 @opj_get_encoding_packet_count(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.uadd.sat.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v4i32(<4 x i32>) #18

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 4}
!8 = !{!"opj_dparameters", !4, i64 0, !4, i64 4, !5, i64 8, !5, i64 4104, !4, i64 8200, !4, i64 8204, !4, i64 8208, !4, i64 8212, !4, i64 8216, !4, i64 8220, !4, i64 8224, !4, i64 8228, !4, i64 8232, !4, i64 8236, !4, i64 8240, !4, i64 8244, !4, i64 8248}
!9 = !{!5, !5, i64 0}
!10 = !{!8, !4, i64 0}
!11 = !{!8, !4, i64 8248}
!12 = !{!13, !4, i64 368}
!13 = !{!"opj_j2k", !4, i64 0, !5, i64 8, !14, i64 136, !14, i64 144, !16, i64 152, !21, i64 312, !21, i64 320, !22, i64 328, !4, i64 336, !23, i64 344, !24, i64 352, !4, i64 360, !4, i64 364, !4, i64 368}
!14 = !{!"p1 _ZTS9opj_image", !15, i64 0}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!"opj_cp", !17, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !18, i64 24, !4, i64 32, !4, i64 36, !4, i64 40, !19, i64 48, !18, i64 56, !4, i64 64, !4, i64 68, !18, i64 72, !18, i64 80, !18, i64 88, !4, i64 96, !4, i64 100, !4, i64 104, !20, i64 112, !5, i64 120, !4, i64 152, !4, i64 156, !4, i64 156, !4, i64 156}
!17 = !{!"short", !5, i64 0}
!18 = !{!"p1 omnipotent char", !15, i64 0}
!19 = !{!"p1 _ZTS14opj_ppx_struct", !15, i64 0}
!20 = !{!"p1 _ZTS7opj_tcp", !15, i64 0}
!21 = !{!"p1 _ZTS18opj_procedure_list", !15, i64 0}
!22 = !{!"p1 _ZTS20opj_codestream_index", !15, i64 0}
!23 = !{!"p1 _ZTS7opj_tcd", !15, i64 0}
!24 = !{!"p1 _ZTS17opj_thread_pool_t", !15, i64 0}
!25 = !{!13, !4, i64 304}
!26 = !{!13, !23, i64 344}
!27 = !{!13, !24, i64 352}
!28 = !{!13, !4, i64 0}
!29 = !{!13, !21, i64 320}
!30 = !{!13, !21, i64 312}
!31 = distinct !{null}
!32 = !{!16, !20, i64 112}
!33 = !{!16, !4, i64 36}
!34 = !{!16, !4, i64 32}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!16, !19, i64 48}
!38 = !{!16, !4, i64 40}
!39 = !{!40, !18, i64 0}
!40 = !{!"opj_ppx_struct", !18, i64 0, !4, i64 8}
!41 = distinct !{!41, !36}
!42 = !{!16, !18, i64 80}
!43 = !{!16, !18, i64 56}
!44 = !{!16, !18, i64 24}
!45 = !{!13, !22, i64 328}
!46 = !{!13, !14, i64 136}
!47 = !{!13, !14, i64 144}
!48 = !{!49, !4, i64 5600}
!49 = !{!"opj_cparameters", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !50, i64 32, !18, i64 40, !4, i64 48, !4, i64 52, !5, i64 56, !4, i64 4792, !4, i64 4796, !5, i64 4800, !5, i64 5200, !4, i64 5600, !4, i64 5604, !4, i64 5608, !4, i64 5612, !4, i64 5616, !4, i64 5620, !4, i64 5624, !4, i64 5628, !5, i64 5632, !5, i64 5764, !5, i64 5896, !5, i64 9992, !4, i64 14088, !5, i64 14092, !4, i64 18188, !4, i64 18192, !4, i64 18196, !4, i64 18200, !4, i64 18204, !4, i64 18208, !4, i64 18212, !4, i64 18216, !5, i64 18220, !5, i64 18284, !5, i64 18348, !5, i64 18412, !5, i64 18476, !4, i64 18540, !4, i64 18544, !4, i64 18548, !4, i64 18552, !5, i64 18556, !5, i64 18620, !4, i64 18684, !4, i64 18688, !4, i64 18692, !5, i64 18696, !5, i64 18697, !5, i64 18698, !4, i64 18700, !15, i64 18704, !4, i64 18712, !17, i64 18716}
!50 = !{!"p1 int", !15, i64 0}
!51 = !{!49, !4, i64 5604}
!52 = !{!49, !4, i64 5608}
!53 = distinct !{!53, !36}
!54 = !{!49, !4, i64 24}
!55 = !{!49, !50, i64 32}
!56 = !{!49, !4, i64 4796}
!57 = !{!58, !4, i64 16}
!58 = !{!"opj_image", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !59, i64 24, !18, i64 32, !4, i64 40}
!59 = !{!"p1 _ZTS14opj_image_comp", !15, i64 0}
!60 = !{!49, !17, i64 18716}
!61 = !{!49, !4, i64 18684}
!62 = !{!49, !4, i64 18712}
!63 = !{!49, !4, i64 18688}
!64 = !{!49, !4, i64 18692}
!65 = !{!49, !4, i64 20}
!66 = !{!67, !67, i64 0}
!67 = !{!"float", !5, i64 0}
!68 = distinct !{!68, !36}
!69 = !{!49, !4, i64 28}
!70 = distinct !{!70, !36}
!71 = !{!58, !59, i64 24}
!72 = !{!73, !4, i64 8}
!73 = !{!"opj_image_comp", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !50, i64 48, !17, i64 56}
!74 = !{!73, !4, i64 12}
!75 = !{!73, !4, i64 24}
!76 = !{!73, !4, i64 0}
!77 = !{!73, !4, i64 4}
!78 = distinct !{!78, !36}
!79 = !{!16, !17, i64 0}
!80 = !{!49, !18, i64 40}
!81 = !{!49, !4, i64 0}
!82 = !{!16, !4, i64 12}
!83 = !{!16, !4, i64 16}
!84 = !{!58, !4, i64 8}
!85 = !{!16, !4, i64 4}
!86 = !{!58, !4, i64 12}
!87 = !{!16, !4, i64 8}
!88 = !{!49, !5, i64 18696}
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.and.v4i32
!304 = distinct !{!304, !36}
!305 = !{!306, !306, i64 0}
!306 = !{!"p1 _ZTS22opj_codestream_info_v2", !15, i64 0}
!307 = !{!308, !4, i64 24}
!308 = !{!"opj_codestream_info_v2", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !309, i64 32, !311, i64 64}
!309 = !{!"opj_tile_v2_info", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !310, i64 24}
!310 = !{!"p1 _ZTS13opj_tccp_info", !15, i64 0}
!311 = !{!"p1 _ZTS16opj_tile_v2_info", !15, i64 0}
!312 = !{!308, !311, i64 64}
!313 = !{!308, !4, i64 44}
!314 = !{!308, !4, i64 48}
!315 = !{!308, !310, i64 56}
!316 = !{!317, !4, i64 28}
!317 = !{!"opj_tccp_info", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !5, i64 32, !5, i64 420, !4, i64 808, !4, i64 812, !5, i64 816, !5, i64 948}
!318 = !{!317, !4, i64 808}
!319 = !{!320}
!320 = distinct !{!320, !321}
!321 = distinct !{!321, !"LVerDomain"}
!322 = !{!323}
!323 = distinct !{!323, !321}
!324 = distinct !{!324, !36, !136, !137}
!325 = distinct !{!325, !36, !136}
!326 = !{!317, !4, i64 812}
!327 = distinct !{!327, !36}
!328 = !{!207, !208, i64 16}
!329 = distinct !{!329, !36}
!330 = distinct !{!330, !36}
!331 = !{!214, !4, i64 44}
!332 = distinct !{!332, !36}
!333 = !{!73, !50, i64 48}
!334 = distinct !{!334, !36}
!335 = distinct !{!335, !118}
!336 = distinct !{!336, !36}
!337 = !{!73, !4, i64 36}
!338 = distinct !{!338, !36}
!339 = distinct !{!339, !36}
!340 = distinct !{!340, !36}
!341 = distinct !{!341, !36}
!342 = distinct !{!342, !36}
!343 = distinct !{!343, !36}
!344 = distinct !{!344, !36}
!345 = distinct !{!345, !36, !346}
!346 = !{!"llvm.loop.unswitch.partial.disable"}
!347 = distinct !{!347, !36}
!348 = !{!259, !14, i64 32}
!349 = distinct !{!349, !36, !136, !137}
!350 = distinct !{!350, !36, !137, !136}
!351 = distinct !{!351, !36}
!352 = !{!259, !4, i64 12}
!353 = !{!266, !267, i64 24}
!354 = distinct !{!354, !36}
!355 = !{!356, !50, i64 48}
!356 = !{!"opj_tcd_tilecomp", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !357, i64 32, !4, i64 40, !50, i64 48, !4, i64 56, !208, i64 64, !208, i64 72, !50, i64 80, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !208, i64 104}
!357 = !{!"p1 _ZTS18opj_tcd_resolution", !15, i64 0}
!358 = !{!356, !4, i64 56}
!359 = distinct !{!359, !118}
!360 = !{!356, !4, i64 8}
!361 = !{!356, !4, i64 0}
!362 = !{!356, !4, i64 12}
!363 = !{!356, !4, i64 4}
!364 = distinct !{!364, !36, !136, !137}
!365 = distinct !{!365, !118}
!366 = distinct !{!366, !36, !136}
!367 = distinct !{!367, !36}
!368 = !{!369}
!369 = distinct !{!369, !370}
!370 = distinct !{!370, !"LVerDomain"}
!371 = !{!372}
!372 = distinct !{!372, !370}
!373 = distinct !{!373, !36, !136, !137}
!374 = distinct !{!374, !118}
!375 = distinct !{!375, !36, !136}
!376 = distinct !{!376, !36}
!377 = !{!378}
!378 = distinct !{!378, !379}
!379 = distinct !{!379, !"LVerDomain"}
!380 = !{!381}
!381 = distinct !{!381, !379}
!382 = distinct !{!382, !36, !136, !137}
!383 = distinct !{!383, !118}
!384 = distinct !{!384, !36, !136}
!385 = distinct !{!385, !36}
!386 = distinct !{!386, !36, !136, !137}
!387 = distinct !{!387, !36, !137, !136}
!388 = distinct !{!388, !36}
!389 = distinct !{!389, !36, !136, !137}
!390 = distinct !{!390, !36, !137, !136}
!391 = distinct !{!391, !36}
!392 = distinct !{!392, !36}
!393 = !{!259, !4, i64 16}
!394 = distinct !{!394, !36}
!395 = distinct !{!395, !36}
!396 = distinct !{!396, !36}
!397 = distinct !{!397, !36}
!398 = !{!13, !17, i64 152}
!399 = !{!13, !18, i64 176}
!400 = distinct !{!400, !36}
!401 = distinct !{!401, !36}
!402 = distinct !{!402, !36}
!403 = distinct !{!403, !36}
!404 = distinct !{!404, !36}
!405 = distinct !{!405, !36}
!406 = distinct !{!406, !36}
!407 = !{!16, !4, i64 64}
!408 = distinct !{!408, !36}
!409 = distinct !{!409, !36}
!410 = !{!16, !4, i64 96}
!411 = !{!412, !4, i64 0}
!412 = !{!"opj_j2k_tlm_info", !4, i64 0, !413, i64 8, !4, i64 16}
!413 = !{!"p1 _ZTS26opj_j2k_tlm_tile_part_info", !15, i64 0}
!414 = !{!412, !4, i64 16}
!415 = !{!412, !413, i64 8}
!416 = !{!417, !17, i64 0}
!417 = !{!"opj_j2k_tlm_tile_part_info", !17, i64 0, !4, i64 4}
!418 = !{!214, !4, i64 0}
!419 = !{!214, !4, i64 8}
!420 = distinct !{!420, !36}
!421 = distinct !{!421, !36}
!422 = !{!417, !4, i64 4}
!423 = distinct !{!423, !36}
!424 = distinct !{!424, !36}
!425 = !{!91, !4, i64 12}
!426 = distinct !{!426, !36}
!427 = distinct !{!427, !118}
!428 = distinct !{!428, !36}
!429 = !{!102, !4, i64 36}
!430 = distinct !{!430, !36}
!431 = !{!13, !4, i64 360}
!432 = !{!13, !4, i64 364}
!433 = distinct !{!433, !36, !434}
!434 = !{!"llvm.loop.peeled.count", i32 1}
!435 = distinct !{!435, !36}
!436 = distinct !{!436, !36}
!437 = distinct !{!437, !36}
!438 = distinct !{!438, !36}
!439 = distinct !{!439, !36}
!440 = distinct !{!440, !36}
!441 = distinct !{!441, !36}
!442 = distinct !{!442, !36}
!443 = distinct !{!443, !36}
!444 = distinct !{!444, !36}
!445 = distinct !{!445, !36}
!446 = distinct !{!446, !36}
!447 = distinct !{!447, !36}
!448 = distinct !{!448, !36}
!449 = distinct !{!449, !118}
!450 = distinct !{!450, !36}
!451 = !{!268, !268, i64 0}
!452 = distinct !{!452, !36}
!453 = distinct !{!453, !36}
!454 = distinct !{!454, !36}
!455 = distinct !{!455, !36}
!456 = distinct !{!456, !36}
!457 = distinct !{!457, !36}
!458 = distinct !{!458, !118}
!459 = distinct !{!459, !36}
!460 = distinct !{!460, !36, !136, !137}
!461 = distinct !{!461, !36, !434}
!462 = distinct !{!462, !36, !137, !136}
!463 = distinct !{!463, !36}
!464 = distinct !{!464, !36}
!465 = distinct !{!465, !36}
!466 = distinct !{!466, !36, !136, !137}
!467 = distinct !{!467, !36}
!468 = distinct !{!468, !36}
!469 = distinct !{!469, !36}
!470 = distinct !{!470, !36}
!471 = distinct !{!471, !36}
!472 = distinct !{!472, !36, !136, !137}
!473 = distinct !{!473, !118}
!474 = distinct !{!474, !36, !136}
!475 = distinct !{!475, !36}
!476 = distinct !{!476, !36}
!477 = distinct !{!477, !36}
!478 = distinct !{!478, !36, !346}
!479 = !{!259, !4, i64 88}
!480 = !{!356, !357, i64 32}
!481 = !{!482, !4, i64 0}
!482 = !{!"opj_tcd_resolution", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !5, i64 32, !4, i64 176, !4, i64 180, !4, i64 184, !4, i64 188}
!483 = !{!482, !4, i64 8}
!484 = !{!356, !4, i64 24}
!485 = !{!482, !4, i64 176}
!486 = !{!482, !4, i64 184}
!487 = !{!50, !50, i64 0}
!488 = distinct !{!488, !36}
!489 = distinct !{!489, !118}
!490 = distinct !{!490, !36}
!491 = distinct !{!491, !36}
!492 = distinct !{!492, !36}
!493 = distinct !{!493, !118}
!494 = distinct !{!494, !36}
!495 = distinct !{!495, !36}
!496 = !{!259, !4, i64 4}
!497 = !{!259, !4, i64 8}
!498 = !{!266, !4, i64 848}
!499 = !{!500, !4, i64 4}
!500 = !{!"opj_tcd_marker_info", !4, i64 0, !4, i64 4, !50, i64 8}
!501 = !{!500, !50, i64 8}
!502 = distinct !{!502, !36}
!503 = distinct !{!503, !36}
!504 = !{!102, !4, i64 92}
!505 = !{!102, !4, i64 88}
!506 = !{!102, !4, i64 96}
!507 = !{!102, !4, i64 84}
!508 = distinct !{!508, !36, !136, !137}
!509 = distinct !{!509, !36, !137, !136}
!510 = distinct !{!510, !36}
!511 = distinct !{!511, !36}
!512 = distinct !{!512, !36}
!513 = distinct !{!513, !36}
!514 = distinct !{!514, !36}
!515 = distinct !{!515, !36}
!516 = distinct !{!516, !36}
!517 = distinct !{!517, !36}
!518 = distinct !{!518, !36}
!519 = distinct !{!519, !36}
!520 = distinct !{!520, !36}
!521 = distinct !{!521, !36}
!522 = distinct !{!522, !36}
!523 = distinct !{!523, !36}
!524 = distinct !{!524, !36}
!525 = distinct !{!525, !36}
!526 = !{ptr @opj_j2k_get_default_stride, ptr @opj_j2k_get_tp_stride}
!527 = distinct !{!527, !36, !136, !137}
!528 = distinct !{!528, !36, !137, !136}
!529 = distinct !{!529, !36}
!530 = distinct !{!530, !36, !346}
!531 = distinct !{!531, !36}
!532 = distinct !{!532, !36}
!533 = distinct !{!533, !36}
!534 = distinct !{!534, !36}
!535 = distinct !{!535, !36}
!536 = distinct !{!536, !118}
!537 = distinct !{!537, !36}
!538 = distinct !{!538, !36}
!539 = distinct !{!539, !36}
!540 = distinct !{!540, !118}
!541 = distinct !{!541, !36}
!542 = distinct !{!542, !36}
!543 = distinct !{!543, !36}
!544 = distinct !{!544, !36}
end_hunk_1
