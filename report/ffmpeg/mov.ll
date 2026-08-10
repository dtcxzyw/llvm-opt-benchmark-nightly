inline.NumInlined: 191
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@find_prev_closest_index:bb.a
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.07187.us
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !249
  %i.r = add nsw i64 %.07187.us, -1               ; 4 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !249
  %i.v = icmp eq i64 %i.q, %i.u
  br i1 %i.v, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = load i32, ptr %i.w, align 8
  %i.y = and i32 %i.x, 1
  %.not85.us = icmp eq i32 %i.y, 0
  br i1 %.not85.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.r, ptr %7, align 8, !tbaa !178
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = phi i64 [ %i.r, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.aa = icmp samesign ugt i64 %.07187.us, 1
  br i1 %i.aa, label %.lr.ph.split.us, label %.critedge, !llvm.loop !789

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.e
  %.07187 = phi i64 [ %i.ae, %bb.e ], [ %i.l, %.lr.ph ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.07187
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !249
  %i.ae = add nsw i64 %.07187, -1                 ; 4 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !249
  %i.ai = icmp eq i64 %i.ad, %i.ah
  br i1 %i.ai, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph.split
  store i64 %i.ae, ptr %7, align 8, !tbaa !178
  %i.aj = icmp samesign ugt i64 %.07187, 1
  br i1 %i.aj, label %.lr.ph.split, label %.critedge, !llvm.loop !789

.critedge:                                        ; preds = %bb.e, %.lr.ph.split, %bb.d, %.lr.ph.split.us, %bb.a
  %i.ak = phi i64 [ %i.z, %bb.d ], [ %i.l, %bb.a ], [ %i.n, %.lr.ph.split.us ], [ %i.ae, %bb.e ], [ %.07187, %.lr.ph.split ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.am = load i32, ptr %i.al, align 8, !tbaa !435
  %.not = icmp ne i32 %i.am, 0
  %i.an = icmp sgt i64 %i.ak, -1
  %or.cond111 = select i1 %.not, i1 %i.an, i1 false
  br i1 %or.cond111, label %bb.f, label %.critedge2

bb.f:                                             ; preds = %.critedge
  store i64 0, ptr %8, align 8, !tbaa !178
  store i64 0, ptr %9, align 8, !tbaa !178
  %i.ao = load i64, ptr %7, align 8, !tbaa !178   ; 3 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph90, label %.preheader

.lr.ph90:                                         ; preds = %bb.f
  %i.aq = load i64, ptr %8, align 8, !tbaa !178
  %i.ar = icmp slt i64 %i.aq, %4
  br i1 %i.ar, label %.lr.ph90.split, label %.lr.ph91.preheader

.preheader:                                       ; preds = %bb.i, %bb.f
  %.lcssa = phi i64 [ %i.ao, %bb.f ], [ %i.bf, %bb.i ] ; 3 uses
  %i.as = icmp sgt i64 %.lcssa, -1
  br i1 %i.as, label %.lr.ph91.preheader, label %.critedge2

.lr.ph91.preheader:                               ; preds = %.lr.ph90, %.preheader
  %.ph = phi i64 [ %i.ao, %.lr.ph90 ], [ %.lcssa, %.preheader ]
  br label %.lr.ph91

.lr.ph90.split:                                   ; preds = %.lr.ph90, %bb.i
  %i.at = phi i64 [ %i.bd, %bb.i ], [ 0, %.lr.ph90 ] ; 2 uses
  %.089 = phi i64 [ %i.be, %bb.i ], [ 0, %.lr.ph90 ]
  %i.au = load i64, ptr %8, align 8, !tbaa !178
  %i.av = icmp slt i64 %i.au, %4
  br i1 %i.av, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph90.split
  %i.aw = add nsw i64 %i.at, 1                    ; 3 uses
  store i64 %i.aw, ptr %9, align 8, !tbaa !178
  %i.ax = load i64, ptr %8, align 8, !tbaa !178   ; 2 uses
  %i.ay = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !585
  %i.ba = zext i32 %i.az to i64
  %i.bb = icmp eq i64 %i.aw, %i.ba
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bc = add nsw i64 %i.ax, 1
  store i64 %i.bc, ptr %8, align 8, !tbaa !178
  store i64 0, ptr %9, align 8, !tbaa !178
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph90.split, %bb.h, %bb.g
  %i.bd = phi i64 [ %i.at, %.lr.ph90.split ], [ 0, %bb.h ], [ %i.aw, %bb.g ]
  %i.be = add nuw nsw i64 %.089, 1                ; 2 uses
  %i.bf = load i64, ptr %7, align 8, !tbaa !178   ; 2 uses
  %i.bg = icmp slt i64 %i.be, %i.bf
  br i1 %i.bg, label %.lr.ph90.split, label %.preheader, !llvm.loop !790

.lr.ph91:                                         ; preds = %.lr.ph91.preheader, %bb.p
  %i.bh = phi i64 [ %.pr, %bb.p ], [ %.ph, %.lr.ph91.preheader ] ; 4 uses
  %i.bi = load i64, ptr %8, align 8, !tbaa !178   ; 2 uses
  %or.cond = icmp ult i64 %i.bi, %4
  br i1 %or.cond, label %bb.j, label %.critedge2

bb.j:                                             ; preds = %.lr.ph91
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.bh ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !249
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.bi
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !586
  %i.bp = sext i32 %i.bo to i64
  %i.bq = add nsw i64 %i.bl, %i.bp
  %.not82 = icmp sgt i64 %i.bq, %.072
  br i1 %.not82, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = and i32 %i.bs, 1
  %.not83 = icmp eq i32 %i.bt, 0
  br i1 %.not83, label %bb.l, label %.critedge2

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bu = add nsw i64 %i.bh, -1
  store i64 %i.bu, ptr %7, align 8, !tbaa !178
  %i.bv = load i64, ptr %9, align 8, !tbaa !178   ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bx = load i64, ptr %8, align 8, !tbaa !178   ; 2 uses
  %i.by = add nsw i64 %i.bx, -1                   ; 2 uses
  store i64 %i.by, ptr %8, align 8, !tbaa !178
  %i.bz = icmp sgt i64 %i.bx, 0
  br i1 %i.bz, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %i.by
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !585
  %i.cc = add i32 %i.cb, -1
  %i.cd = zext i32 %i.cc to i64
  br label %.sink.split

bb.o:                                             ; preds = %bb.l
  %i.ce = add nsw i64 %i.bv, -1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %bb.n
  %.sink = phi i64 [ %i.cd, %bb.n ], [ %i.ce, %bb.o ]
  store i64 %.sink, ptr %9, align 8, !tbaa !178
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.m
  %.pr = load i64, ptr %7, align 8, !tbaa !178    ; 3 uses
  %i.cf = icmp sgt i64 %.pr, -1
  br i1 %i.cf, label %.lr.ph91, label %.critedge2, !llvm.loop !792

.critedge2:                                       ; preds = %.lr.ph91, %bb.p, %bb.k, %.preheader, %.critedge
  %i.cg = phi i64 [ %i.ak, %.critedge ], [ %.lcssa, %.preheader ], [ %i.bh, %.lr.ph91 ], [ %.pr, %bb.p ], [ %i.bh, %bb.k ]
  store ptr %i.d, ptr %i.c, align 8, !tbaa !245
  store i32 %i.f, ptr %i.e, align 8, !tbaa !244
  %.lobit = ashr i64 %i.cg, 63
  %i.ch = trunc nsw i64 %.lobit to i32
  ret i32 %i.ch
}

declare ptr @av_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @av_index_search_timestamp(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare i64 @av_strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @av_url_split(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @fix_frag_index_entries(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 -2147483647, -2147483648) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !363  ; 2 uses
  %i.d = icmp slt i32 %1, %i.c
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load ptr, ptr %i.e, align 8, !tbaa !364
  %5 = zext nneg i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %get_frag_stream_info.exit.thread
  %indvars.iv = phi i64 [ %5, %.lr.ph ], [ %indvars.iv.next, %get_frag_stream_info.exit.thread ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !365  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %get_frag_stream_info.exit.thread

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !366
  %wide.trip.count.i = zext nneg i32 %i.h to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %get_frag_stream_info.exit.thread, label %bb.d, !llvm.loop !367

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %indvars.iv.i ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !368
  %i.n = icmp eq i32 %i.m, %2
  br i1 %i.n, label %get_frag_stream_info.exit, label %bb.c

get_frag_stream_info.exit:                        ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 44 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !579  ; 2 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %bb.e, label %get_frag_stream_info.exit.thread

bb.e:                                             ; preds = %get_frag_stream_info.exit
  %i.r = add nsw i32 %i.p, %3
  store i32 %i.r, ptr %i.o, align 4, !tbaa !579
  br label %get_frag_stream_info.exit.thread

get_frag_stream_info.exit.thread:                 ; preds = %bb.c, %bb.b, %get_frag_stream_info.exit, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = trunc nuw i64 %indvars.iv.next to i32
  %i.t = icmp sgt i32 %i.c, %i.s
  br i1 %i.t, label %bb.b, label %.loopexit, !llvm.loop !793

.loopexit:                                        ; preds = %get_frag_stream_info.exit.thread, %.preheader, %bb.a
  ret void
}

declare i32 @ffio_ensure_seekback(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ff_mov_read_esds(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_channel_layout_from_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ff_get_wav_header(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @uncompress(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @ffio_init_read_context(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_mov_read_chan(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ff_mov_read_chnl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @av_stristr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @av_realloc_f(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mov_parse_uuid_spherical(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 0, 2147483631) %2) unnamed_addr #0 {
bb.a:
  %i.a = add nuw nsw i64 %2, 1
  %i.b = tail call noalias ptr @av_malloc(i64 noundef %i.a) #16 ; 14 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %2
  store i8 0, ptr %i.c, align 1, !tbaa !86
  %i.d = trunc nuw nsw i64 %2 to i32
  %i.e = tail call i32 @ffio_read_size(ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef %i.d) #16 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !308
  %.not55 = icmp eq ptr %i.h, null
  br i1 %.not55, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @av_stristr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.234) #16
  %.not56 = icmp eq ptr %i.i, null
  br i1 %.not56, label %bb.w, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @av_stristr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.235) #16 ; 2 uses
  %.not57 = icmp eq ptr %i.j, null
  br i1 %.not57, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call ptr @av_stristr(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.236) #16
  %.not58 = icmp eq ptr %i.k, null
  br i1 %.not58, label %bb.w, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @av_stristr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.237) #16 ; 2 uses
  %.not59 = icmp eq ptr %i.l, null
  br i1 %.not59, label %bb.w, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr @av_stristr(ptr noundef nonnull %i.l, ptr noundef nonnull @.str.236) #16
  %.not60 = icmp eq ptr %i.m, null
  br i1 %.not60, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = tail call ptr @av_stristr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.238) #16 ; 2 uses
  %.not61 = icmp eq ptr %i.n, null
  br i1 %.not61, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = tail call ptr @av_stristr(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.239) #16
  %.not62 = icmp eq ptr %i.o, null
  br i1 %.not62, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.q = tail call ptr @av_spherical_alloc(ptr noundef nonnull %i.p) #16 ; 3 uses
  store ptr %i.q, ptr %i.g, align 8, !tbaa !308
  %.not63 = icmp eq ptr %i.q, null
  br i1 %.not63, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.q, align 4, !tbaa !627
  %i.r = tail call ptr @av_stristr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.240) #16
  %.not64 = icmp eq ptr %i.r, null
  br i1 %.not64, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1512 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !306
  %.not65 = icmp eq ptr %i.t, null
  br i1 %.not65, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.u = tail call ptr @av_stristr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.241) #16
  %.not66 = icmp eq ptr %i.u, null
  br i1 %.not66, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.v = tail call ptr @av_stristr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.242) #16
  %.not67 = icmp eq ptr %i.v, null
  %. = select i1 %.not67, i32 0, i32 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi i32 [ 1, %bb.n ], [ %., %bb.o ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.x = tail call ptr @av_stereo3d_alloc_size(ptr noundef nonnull %i.w) #16 ; 3 uses
  store ptr %i.x, ptr %i.s, align 8, !tbaa !306
  %.not68 = icmp eq ptr %i.x, null
  br i1 %.not68, label %bb.w, label %.thread

.thread:                                          ; preds = %bb.p
  store i32 %.0, ptr %i.x, align 4, !tbaa !625
  br label %bb.q

bb.q:                                             ; preds = %.thread, %bb.m, %bb.l
  %i.y = tail call ptr @av_stristr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.243) #16 ; 2 uses
  %.not69 = icmp eq ptr %i.y, null
  br i1 %.not69, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.z = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.y, ptr noundef null, i32 noundef 10) #16
  %.tr = trunc i64 %i.z to i32
  %i.aa = shl i32 %.tr, 16
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !308
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !629
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ad = tail call ptr @av_stristr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.244) #16 ; 2 uses
  %.not70 = icmp eq ptr %i.ad, null
  br i1 %.not70, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ae = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ad, ptr noundef null, i32 noundef 10) #16
  %.tr71 = trunc i64 %i.ae to i32
  %i.af = shl i32 %.tr71, 16
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !308
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !630
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ai = tail call ptr @av_stristr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.245) #16 ; 2 uses
  %.not72 = icmp eq ptr %i.ai, null
end_hunk_0
