Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/movenc?download=true
inline.NumInlined: 471
inline.NumDeleted: 188
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 29
begin_hunk_0_@mov_write_moov_tag:bb.a
  %i.xj = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !166
  %.not43.i = icmp eq i32 %i.xk, 0
  br i1 %.not43.i, label %bb.dl, label %bb.df

bb.df:                                            ; preds = %mov_write_raw_metadata_tag.exit.i
  %i.xl = load i32, ptr %i.od, align 8, !tbaa !87
  %i.xm = and i32 %i.xl, 512
  %.not44.i = icmp eq i32 %i.xm, 0
  br i1 %.not44.i, label %bb.dg, label %bb.dl

bb.dg:                                            ; preds = %bb.df
  %i.xn = load ptr, ptr %i.o, align 8, !tbaa !95  ; 14 uses
  %i.xo = call i64 @avio_seek(ptr noundef %i.xn, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %i.xp = load i32, ptr %i.xj, align 8, !tbaa !166 ; 2 uses
  %spec.select.i.i = call i32 @llvm.umin.i32(i32 %i.xp, i32 255) ; 2 uses
  call void @avio_wb32(ptr noundef %i.xn, i32 noundef 0) #18
  call void @avio_wl32(ptr noundef %i.xn, i32 noundef 1819306083) #18
  call void @avio_wb32(ptr noundef %i.xn, i32 noundef 16777216) #18
  call void @avio_wb32(ptr noundef %i.xn, i32 noundef 0) #18
  call void @avio_w8(ptr noundef %i.xn, i32 noundef %spec.select.i.i) #18
  %.not33.i.i = icmp eq i32 %i.xp, 0
  br i1 %.not33.i.i, label %mov_write_chpl_tag.exit.i, label %.lr.ph.i.i343

.lr.ph.i.i343:                                    ; preds = %bb.dg
  %i.xq = getelementptr inbounds nuw i8, ptr %2, i64 80
  %wide.trip.count.i.i344 = zext nneg i32 %spec.select.i.i to i64
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dk, %.lr.ph.i.i343
  %indvars.iv.i.i345 = phi i64 [ 0, %.lr.ph.i.i343 ], [ %indvars.iv.next.i.i346, %bb.dk ] ; 2 uses
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !252
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.xr, i64 %indvars.iv.i.i345
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !254 ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 16
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !256
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  %i.xx = load i64, ptr %i.xw, align 8
  %i.xy = call i64 @av_rescale_q(i64 noundef %i.xv, i64 %i.xx, i64 42949672960000001) #20
  call void @avio_wb64(ptr noundef %i.xn, i64 noundef %i.xy) #18
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xt, i64 32
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !257
  %i.yb = call ptr @av_dict_get(ptr noundef %i.ya, ptr noundef nonnull @.str.205, ptr noundef null, i32 noundef 0) #18 ; 2 uses
  %.not.i86.i = icmp eq ptr %i.yb, null
  br i1 %.not.i86.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 8 ; 2 uses
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !189
  %i.ye = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.yd) #21
  %spec.select3031.i.i = call i64 @llvm.umin.i64(i64 %i.ye, i64 255)
  %spec.select30.i.i = trunc nuw nsw i64 %spec.select3031.i.i to i32 ; 2 uses
  call void @avio_w8(ptr noundef %i.xn, i32 noundef %spec.select30.i.i) #18
  %i.yf = load ptr, ptr %i.yc, align 8, !tbaa !189
  call void @avio_write(ptr noundef %i.xn, ptr noundef %i.yf, i32 noundef %spec.select30.i.i) #18
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  call void @avio_w8(ptr noundef %i.xn, i32 noundef 0) #18
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %indvars.iv.next.i.i346 = add nuw nsw i64 %indvars.iv.i.i345, 1 ; 2 uses
  %exitcond.not.i.i347 = icmp eq i64 %indvars.iv.next.i.i346, %wide.trip.count.i.i344
  br i1 %exitcond.not.i.i347, label %mov_write_chpl_tag.exit.i, label %bb.dh, !llvm.loop !405

mov_write_chpl_tag.exit.i:                        ; preds = %bb.dk, %bb.dg
  %i.yg = call i64 @avio_seek(ptr noundef %i.xn, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %i.yh = call i64 @avio_seek(ptr noundef %i.xn, i64 noundef %i.xo, i32 noundef 0) #18 ; 0 uses
  %i.yi = sub nsw i64 %i.yg, %i.xo
  %i.yj = trunc i64 %i.yi to i32
  call void @avio_wb32(ptr noundef %i.xn, i32 noundef %i.yj) #18
  %i.yk = call i64 @avio_seek(ptr noundef %i.xn, i64 noundef %i.yg, i32 noundef 0) #18 ; 0 uses
  br label %bb.dl

bb.dl:                                            ; preds = %mov_write_chpl_tag.exit.i, %bb.df, %mov_write_raw_metadata_tag.exit.i
  %i.yl = load ptr, ptr %i.o, align 8, !tbaa !95
  %i.ym = call i32 @avio_get_dyn_buf(ptr noundef %i.yl, ptr noundef nonnull %i.p) #18 ; 3 uses
  %i.yn = icmp sgt i32 %i.ym, 0
  br i1 %i.yn, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.yo = add nuw nsw i32 %i.ym, 8
  call void @avio_wb32(ptr noundef %0, i32 noundef %i.yo) #18
  call void @avio_wl32(ptr noundef %0, i32 noundef 1635017845) #18
  %i.yp = load ptr, ptr %i.p, align 8, !tbaa !40
  call void @avio_write(ptr noundef %0, ptr noundef %i.yp, i32 noundef %i.ym) #18
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  call void @ffio_free_dyn_buf(ptr noundef nonnull %i.o) #18
  br label %mov_write_udta_tag.exit

mov_write_udta_tag.exit:                          ; preds = %bb.ci, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #18
  br label %mov_write_uuidusmt_tag.exit

mov_write_uuidusmt_tag.exit:                      ; preds = %bb.ch, %bb.ce, %bb.cd, %mov_write_udta_tag.exit
  %i.yq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.yr = load i32, ptr %i.yq, align 8, !tbaa !165
  %i.ys = icmp sgt i32 %i.yr, 0
  br i1 %i.ys, label %.lr.ph455, label %._crit_edge456

.lr.ph455:                                        ; preds = %mov_write_uuidusmt_tag.exit
  %i.yt = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.do

bb.do:                                            ; preds = %.lr.ph455, %bb.do
  %indvars.iv485 = phi i64 [ 0, %.lr.ph455 ], [ %indvars.iv.next486, %bb.do ] ; 2 uses
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !54
  %i.yv = getelementptr inbounds nuw [1640 x i8], ptr %i.yu, i64 %indvars.iv485
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 128
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !115
  %i.yy = getelementptr i8, ptr %i.yx, i64 16
  %.val = load ptr, ptr %i.yy, align 8, !tbaa !169 ; 2 uses
  %i.yz = getelementptr i8, ptr %.val, i64 32
  %.val.val = load ptr, ptr %i.yz, align 8, !tbaa !245
  %i.za = getelementptr i8, ptr %.val, i64 40
  %.val.val226 = load i32, ptr %i.za, align 8, !tbaa !246
  call fastcc void @mov_write_pssh_tag(ptr noundef %0, ptr %.val.val, i32 %.val.val226)
  %indvars.iv.next486 = add nuw nsw i64 %indvars.iv485, 1 ; 2 uses
  %i.zb = load i32, ptr %i.yq, align 8, !tbaa !165
  %i.zc = sext i32 %i.zb to i64
  %i.zd = icmp slt i64 %indvars.iv.next486, %i.zc
  br i1 %i.zd, label %bb.do, label %._crit_edge456, !llvm.loop !406

._crit_edge456:                                   ; preds = %bb.do, %mov_write_uuidusmt_tag.exit
  %i.ze = call i64 @avio_seek(ptr noundef %0, i64 noundef 0, i32 noundef 1) #18 ; 2 uses
  %i.zf = call i64 @avio_seek(ptr noundef %0, i64 noundef %i.s, i32 noundef 0) #18 ; 0 uses
  %i.zg = sub nsw i64 %i.ze, %i.s
  %i.zh = trunc i64 %i.zg to i32                  ; 2 uses
  call void @avio_wb32(ptr noundef %0, i32 noundef %i.zh) #18
  %i.zi = call i64 @avio_seek(ptr noundef %0, i64 noundef %i.ze, i32 noundef 0) #18 ; 0 uses
  br label %mov_add_tref_tag.exit.thread353

mov_add_tref_tag.exit.thread353:                  ; preds = %.loopexit.i228, %.loopexit.i, %.loopexit.i289, %.loopexit.i268, %.loopexit.i247, %.loopexit.i277, %.loopexit.i256, %.loopexit.i235, %.loopexit.i298, %.loopexit.i310, %bb.bx, %._crit_edge456
  %.25 = phi i32 [ %i.rg, %bb.bx ], [ -12, %.loopexit.i289 ], [ -12, %.loopexit.i298 ], [ %i.zh, %._crit_edge456 ], [ -12, %.loopexit.i310 ], [ -12, %.loopexit.i235 ], [ -12, %.loopexit.i256 ], [ -12, %.loopexit.i277 ], [ -12, %.loopexit.i247 ], [ -12, %.loopexit.i268 ], [ -12, %.loopexit.i ], [ -12, %.loopexit.i228 ]
  ret i32 %.25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @mov_write_ftyp_tag_internal(ptr noundef %0, ptr nofree readonly captures(none) %.24.val, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.24.val, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !408  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #21
  %i.d = icmp ugt i64 %i.c, 3
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.b, align 1
  tail call void @avio_wl32(ptr noundef %0, i32 noundef %i.e) #18
  br label %bb.u

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.24.val, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !88   ; 5 uses
  switch i32 %i.g, label %bb.g [
    i32 4, label %bb.e
    i32 256, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %.not51 = icmp eq i32 %1, 0                     ; 2 uses
  %i.h = select i1 %.not51, i32 879781683, i32 913336115
  tail call void @avio_wl32(ptr noundef %0, i32 noundef %i.h) #18
  %i.i = select i1 %.not51, i32 512, i32 256
  br label %bb.u

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.24.val, i64 288
  %i.k = load i32, ptr %i.j, align 8, !tbaa !238
  %.not50 = icmp eq i32 %i.k, 0
  %i.l = select i1 %.not50, i32 1718187617, i32 1936291425
  tail call void @avio_wl32(ptr noundef %0, i32 noundef %i.l) #18
  br label %bb.u

bb.g:                                             ; preds = %bb.d
  %i.m = and i32 %i.g, 16
  %.not43 = icmp eq i32 %i.m, 0
  br i1 %.not43, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not49 = icmp eq i32 %1, 0
  %4 = shl nuw nsw i32 %1, 24
  %5 = add nuw nsw i32 %4, 1630693171
  tail call void @avio_wl32(ptr noundef %0, i32 noundef %5) #18
  %i.n = select i1 %.not49, i32 65536, i32 131072
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  switch i32 %i.g, label %.thread1 [
    i32 8, label %bb.j
    i32 1, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 1447973709) #18
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %.24.val, i64 64
  %i.p = load i32, ptr %i.o, align 8, !tbaa !87   ; 3 uses
  %i.q = and i32 %i.p, 524290
  %or.cond.not = icmp eq i32 %i.q, 524290
  br i1 %or.cond.not, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 913273705) #18
  br label %bb.u

.thread:                                          ; preds = %bb.k
  %i.r = and i32 %i.p, 1024
  %.not46 = icmp eq i32 %i.r, 0
  br i1 %.not46, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 896496489) #18
  br label %bb.u

bb.n:                                             ; preds = %.thread
  %i.s = and i32 %i.p, 524288
  %.not47 = icmp eq i32 %i.s, 0
  br i1 %.not47, label %.thread1, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 879719273) #18
  br label %bb.u

.thread1:                                         ; preds = %bb.i, %bb.n
  %i.t = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.g)
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %.split, label %bb.t

.split:                                           ; preds = %.thread1
  %i.v = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.g, i1 true)
  switch i32 %i.v, label %bb.t [
    i32 0, label %bb.p
    i32 5, label %bb.q
    i32 6, label %bb.r
    i32 7, label %bb.s
  ]

bb.p:                                             ; preds = %.split
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 1836020585) #18
  br label %bb.u

bb.q:                                             ; preds = %.split
  %.not48 = icmp eq i32 %2, 0
  %i.w = select i1 %.not48, i32 541144141, i32 542520397
  tail call void @avio_wl32(ptr noundef %0, i32 noundef %i.w) #18
  br label %bb.u

bb.r:                                             ; preds = %.split
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 1819112297) #18
  br label %bb.u

bb.s:                                             ; preds = %.split
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 544617574) #18
  br label %bb.u

bb.t:                                             ; preds = %.thread1, %.split
  tail call void @avio_wl32(ptr noundef %0, i32 noundef 538997873) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.e, %bb.h, %bb.l, %bb.o, %bb.q, %bb.s, %bb.t, %bb.r, %bb.p, %bb.m, %bb.j, %bb.f, %bb.c
  %.0 = phi i32 [ 512, %bb.c ], [ %i.i, %bb.e ], [ 0, %bb.f ], [ %i.n, %bb.h ], [ 512, %bb.j ], [ 512, %bb.l ], [ 512, %bb.m ], [ 512, %bb.o ], [ 512, %bb.p ], [ 512, %bb.q ], [ 512, %bb.r ], [ 512, %bb.s ], [ 512, %bb.t ]
  %.not52 = icmp eq i32 %3, 0
  br i1 %.not52, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @avio_wb32(ptr noundef %0, i32 noundef %.0) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  ret void
}

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare void @avio_wb16(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @avcodec_parameters_alloc() local_unnamed_addr #2

declare i32 @ff_alloc_extradata(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare i32 @av_timecode_init_from_string(ptr noundef, i64, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @avio_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mov_setup_track_ids(ptr nofree noundef captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !413
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.d = load i32, ptr %i.c, align 4, !tbaa !414
  %.not53 = icmp eq i32 %i.d, 0
  br i1 %.not53, label %.preheader, label %.preheader3

.preheader3:                                      ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !165  ; 4 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.preheader1

.lr.ph:                                           ; preds = %.preheader3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.j = icmp ult i32 %i.f, 4
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.d

.preheader:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !118  ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph13, label %.loopexit

.lr.ph13:                                         ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %wide.trip.count24 = zext nneg i32 %i.l to i64
  br label %bb.l

.preheader1.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader1, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader1.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.preheader1.loopexit.unr-lcssa ]
  %.0445.epil.init = phi i32 [ 0, %.lr.ph ], [ %spec.select.3, %.preheader1.loopexit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod4)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.0445.epil = phi i32 [ %.0445.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.q = getelementptr inbounds nuw [1640 x i8], ptr %i.i, i64 %indvars.iv.epil
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !115
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !203
  %spec.select.epil = tail call i32 @llvm.smax.i32(i32 %i.u, i32 %.0445.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader1, label %bb.c, !llvm.loop !409

.preheader1:                                      ; preds = %.preheader1.loopexit.unr-lcssa, %bb.c, %.preheader3
  %.044.lcssa = phi i32 [ 0, %.preheader3 ], [ %spec.select.3, %.preheader1.loopexit.unr-lcssa ], [ %spec.select.epil, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !118  ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph9, label %.loopexit

.lr.ph9:                                          ; preds = %.preheader1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !54
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = sext i32 %i.f to i64
  %wide.trip.count19 = zext nneg i32 %i.w to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.d ] ; 5 uses
  %.0445 = phi i32 [ 0, %.lr.ph.new ], [ %spec.select.3, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
end_hunk_0
