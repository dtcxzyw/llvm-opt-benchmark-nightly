Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mjpegenc?download=true
inline.NumInlined: 30
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@ff_mjpeg_encode_stuffing:bb.a

bb.w:                                             ; preds = %bb.v
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !97
  %i.kv = add nsw i32 %i.ku, -1
  %i.kw = icmp slt i32 %i.k, %i.kv
  %.pre64 = load i32, ptr %i.kd, align 4, !tbaa !53 ; 5 uses
  br i1 %i.kw, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.kx = and i32 %i.k, 7
  %i.ky = or disjoint i32 %i.kx, 208              ; 4 uses
  %i.kz = load i32, ptr %i.f, align 16, !tbaa !90 ; 2 uses
  %i.la = icmp sgt i32 %.pre64, 8
  br i1 %i.la, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.lb = shl i32 %i.kz, 8
  %i.lc = or disjoint i32 %i.lb, 255
  br label %put_bits.exit.i50

bb.z:                                             ; preds = %bb.x
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !93
  %i.lf = load ptr, ptr %i.kb, align 16, !tbaa !51 ; 2 uses
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = sub i64 %i.lg, %i.lh
  %i.lj = icmp ugt i64 %i.li, 3
  br i1 %i.lj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.lk = shl i32 %i.kz, %.pre64
  %i.ll = sub nsw i32 8, %.pre64
  %i.lm = lshr i32 255, %i.ll
  %i.ln = or i32 %i.lm, %i.lk
  %i.lo = call i32 @llvm.bswap.i32(i32 %i.ln)
  store i32 %i.lo, ptr %i.lf, align 1, !tbaa !75
  %i.lp = load ptr, ptr %i.kb, align 16, !tbaa !51
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  store ptr %i.lq, ptr %i.kb, align 16, !tbaa !51
  br label %put_bits.exit.i50

bb.ab:                                            ; preds = %bb.z
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.6) #9
  br label %put_bits.exit.i50

put_bits.exit.i50:                                ; preds = %bb.ab, %bb.aa, %bb.y
  %.sink.i = phi i32 [ -8, %bb.y ], [ 24, %bb.ab ], [ 24, %bb.aa ]
  %.026.i.i.i51 = phi i32 [ %i.lc, %bb.y ], [ 255, %bb.ab ], [ 255, %bb.aa ] ; 3 uses
  %i.lr = add nsw i32 %.sink.i, %.pre64           ; 5 uses
  store i32 %.026.i.i.i51, ptr %i.f, align 16, !tbaa !90
  store i32 %i.lr, ptr %i.kd, align 4, !tbaa !53
  %i.ls = icmp sgt i32 %i.lr, 8
  br i1 %i.ls, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %put_bits.exit.i50
  %i.lt = shl i32 %.026.i.i.i51, 8
  %i.lu = or disjoint i32 %i.lt, %i.ky
  br label %put_marker.exit

bb.ad:                                            ; preds = %put_bits.exit.i50
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !93
  %i.lx = load ptr, ptr %i.kb, align 16, !tbaa !51 ; 2 uses
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = ptrtoint ptr %i.lx to i64
  %i.ma = sub i64 %i.ly, %i.lz
  %i.mb = icmp ugt i64 %i.ma, 3
  br i1 %i.mb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.mc = shl i32 %.026.i.i.i51, %i.lr
  %i.md = sub nsw i32 8, %i.lr
  %i.me = lshr i32 %i.ky, %i.md
  %i.mf = or i32 %i.me, %i.mc
  %i.mg = call i32 @llvm.bswap.i32(i32 %i.mf)
  store i32 %i.mg, ptr %i.lx, align 1, !tbaa !75
  %i.mh = load ptr, ptr %i.kb, align 16, !tbaa !51
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  store ptr %i.mi, ptr %i.kb, align 16, !tbaa !51
  br label %put_marker.exit

bb.af:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.6) #9
  br label %put_marker.exit

put_marker.exit:                                  ; preds = %bb.ac, %bb.ae, %bb.af
  %.sink6.i = phi i32 [ -8, %bb.ac ], [ 24, %bb.af ], [ 24, %bb.ae ]
  %.026.i.i3.i = phi i32 [ %i.lu, %bb.ac ], [ %i.ky, %bb.af ], [ %i.ky, %bb.ae ]
  %i.mj = add nsw i32 %.sink6.i, %i.lr            ; 2 uses
  store i32 %.026.i.i3.i, ptr %i.f, align 16, !tbaa !90
  store i32 %i.mj, ptr %i.kd, align 4, !tbaa !53
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge62, %put_marker.exit, %bb.w
  %i.mk = phi i32 [ %.pre63, %._crit_edge62 ], [ %i.mj, %put_marker.exit ], [ %.pre64, %bb.w ]
  %i.ml = load ptr, ptr %i.kb, align 16, !tbaa !51
  %i.mm = load ptr, ptr %i.kc, align 8, !tbaa !52
  %i.mn = ptrtoint ptr %i.ml to i64
  %i.mo = ptrtoint ptr %i.mm to i64
  %i.mp = sub i64 %i.mn, %i.mo
  %i.mq = sub nsw i32 32, %i.mk
  %i.mr = ashr i32 %i.mq, 3
  %i.ms = trunc i64 %i.mp to i32
  %i.mt = add i32 %i.mr, %i.ms
  store i32 %i.mt, ptr %i.ko, align 16, !tbaa !74
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.u
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 6360
  store i32 128, ptr %i.mu, align 8, !tbaa !61
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 6364
  store i32 128, ptr %i.mv, align 4, !tbaa !61
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 6368
  store i32 128, ptr %i.mw, align 8, !tbaa !61
  ret i32 %i.kk
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @init_uni_ac_vlc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  br label %bb.c

bb.b:                                             ; preds = %.loopexit
  ret void

bb.c:                                             ; preds = %bb.a, %.loopexit
  %indvars.iv26 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next27, %.loopexit ] ; 6 uses
  %i.b = icmp eq i64 %indvars.iv26, 64
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %indvars28 = trunc i64 %indvars.iv26 to i32
  %i.c = add nsw i32 %indvars28, -64
  %i.d = icmp samesign ult i64 %indvars.iv26, 64
  %i.e = trunc i64 %indvars.iv26 to i32
  %i.f = sub i32 64, %i.e
  %i.g = select i1 %i.d, i32 %i.f, i32 %i.c       ; 3 uses
  %i.h = and i32 %i.g, 65280
  %.not.i = icmp eq i32 %i.h, 0                   ; 2 uses
  %i.i = lshr i32 %i.g, 8
  %spec.select.i = select i1 %.not.i, i32 %i.g, i32 %i.i
  %i.j = zext i32 %spec.select.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !75
  %i.m = zext i8 %i.l to i32
  %i.n = select i1 %.not.i, i32 1, i32 9
  %i.o = add nuw nsw i32 %i.n, %i.m               ; 2 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv26
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  %i.q = lshr i32 %i.p, 4
  %i.r = load i8, ptr %i.a, align 1, !tbaa !75
  %i.s = zext i8 %i.r to i32
  %i.t = mul nuw nsw i32 %i.q, %i.s
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.u = shl i32 %indvars.iv.tr, 4
  %i.v = and i32 %i.u, 240
  %i.w = or i32 %i.o, %i.v
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !75
  %i.aa = zext i8 %i.z to i32
  %i.ab = add nuw nsw i32 %i.t, %i.aa
  %i.ac = add nuw nsw i32 %i.ab, %i.o
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = shl nuw nsw i64 %indvars.iv, 7
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.ae
  store i8 %i.ad, ptr %gep, align 1, !tbaa !75
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !98

.loopexit:                                        ; preds = %bb.d, %bb.c
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1 ; 2 uses
  %exitcond29.not = icmp eq i64 %indvars.iv.next27, 128
  br i1 %exitcond29.not, label %bb.b, label %bb.c, !llvm.loop !99
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @ff_mpv_reallocate_putbitbuffer(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @ff_mjpeg_escape_FF(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @mjpeg_encode_init(ptr noundef %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 24 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 10992 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 6424
  store ptr %i.c, ptr %i.d, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 10392
  store ptr @mjpeg_amv_encode_picture_header, ptr %i.e, align 8, !tbaa !112
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 6552 ; 2 uses
  store ptr @mjpeg_encode_mb, ptr %i.f, align 8, !tbaa !114
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4456
  %i.h = load i32, ptr %i.g, align 8, !tbaa !115
  %i.i = and i32 %i.h, 4
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.92) #9
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.j = tail call i32 @ff_mjpeg_encode_check_pix_fmt(ptr noundef nonnull %0) #9 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load i32, ptr %i.l, align 8, !tbaa !116
  %i.n = icmp sgt i32 %i.m, 65500
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.p = load i32, ptr %i.o, align 4, !tbaa !117
  %i.q = icmp sgt i32 %i.p, 65500
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.93) #9
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 11000
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 11012
  tail call void @ff_mjpeg_build_huffman_codes(ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, ptr noundef nonnull @ff_mjpeg_bits_dc_luminance, ptr noundef nonnull @ff_mjpeg_val_dc) #9
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 11036
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 11048
  tail call void @ff_mjpeg_build_huffman_codes(ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull @ff_mjpeg_bits_dc_chrominance, ptr noundef nonnull @ff_mjpeg_val_dc) #9
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 11072 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 11328
  tail call void @ff_mjpeg_build_huffman_codes(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, ptr noundef nonnull @ff_mjpeg_bits_ac_luminance, ptr noundef nonnull @ff_mjpeg_val_ac_luminance) #9
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 11840 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 12096
  tail call void @ff_mjpeg_build_huffman_codes(ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull @ff_mjpeg_bits_ac_chrominance, ptr noundef nonnull @ff_mjpeg_val_ac_chrominance) #9
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 12608 ; 3 uses
  tail call fastcc void @init_uni_ac_vlc(ptr noundef nonnull %i.v, ptr noundef nonnull %i.z) #10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 20800 ; 3 uses
  tail call fastcc void @init_uni_ac_vlc(ptr noundef nonnull %i.x, ptr noundef nonnull %i.aa) #10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 6128
  store i32 -1023, ptr %i.ab, align 16, !tbaa !118
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 6132
  store i32 1023, ptr %1, align 4, !tbaa !119
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 6152
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 6144
  store ptr %i.z, ptr %i.ad, align 16, !tbaa !65
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 6168
  store ptr %i.aa, ptr %i.ae, align 8, !tbaa !66
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 6160
  store ptr %i.aa, ptr %i.af, align 16, !tbaa !67
  %i.ag = tail call i32 @ff_mpv_encode_init(ptr noundef nonnull %0) #9 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 29600
  store i64 0, ptr %i.ai, align 16, !tbaa !56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 760
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !73
  %i.al = icmp sgt i32 %i.ak, 1
  br i1 %i.al, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  store i32 0, ptr %i.c, align 16, !tbaa !48
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %.pr = load i32, ptr %i.c, align 16, !tbaa !48
  %i.am = icmp eq i32 %.pr, 1
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr @mjpeg_record_mb, ptr %i.f, align 8, !tbaa !114
  %i.an = tail call fastcc i32 @alloc_huffman(ptr noundef nonnull %i.b)
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.i, %bb.g, %bb.c, %bb.j, %bb.f, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ %i.ag, %bb.g ], [ -22, %bb.f ], [ %i.j, %bb.c ], [ %i.an, %bb.j ], [ 0, %bb.i ], [ 0, %.thread ]
  ret i32 %.0
}

declare i32 @ff_mpv_encode_picture(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @mjpeg_encode_close(ptr noundef %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 29608
  tail call void @av_freep(ptr noundef nonnull %i.c) #9
  %i.d = tail call i32 @ff_mpv_encode_end(ptr noundef %0) #9 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @mjpeg_get_supported_config(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = icmp eq i32 %2, 5
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.c = load i32, ptr %i.b, align 4, !tbaa !120
  %i.d = icmp sgt i32 %i.c, -1
  %i.e = zext i1 %i.d to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.f = phi i64 [ %i.e, %bb.c ], [ 1, %bb.b ]    ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @mjpeg_get_supported_config.mjpeg_ranges, i64 %i.f
  store ptr %i.g, ptr %4, align 8, !tbaa !121
  %i.h = trunc nuw nsw i64 %i.f to i32
  %i.i = sub nuw nsw i32 2, %i.h
  store i32 %i.i, ptr %5, align 4, !tbaa !61
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.j = tail call i32 @ff_default_get_supported_config(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ %i.j, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @amv_encode_picture(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.e = load i32, ptr %i.d, align 4, !tbaa !117  ; 2 uses
  %i.f = and i32 %i.e, 15
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.h = load i32, ptr %i.g, align 4, !tbaa !120
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.99, i32 noundef %i.e) #9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.100) #9
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.j = tail call ptr @av_frame_clone(ptr noundef %2) #9 ; 10 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !122
  %.not21 = icmp eq ptr %i.j, null
  br i1 %.not21, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 356 ; 3 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !61   ; 2 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !123
  %i.o = shl i32 %i.n, 1
  %i.p = ashr exact i32 %i.o, 1
  %i.q = add nsw i32 %i.p, -1
  %i.r = mul nsw i32 %i.q, %i.m
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !79
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %i.t
  store ptr %i.u, ptr %i.j, align 8, !tbaa !79
  %i.v = sub nsw i32 0, %i.m
  store i32 %i.v, ptr %i.k, align 8, !tbaa !61
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 68 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !61   ; 2 uses
  %i.y = load i32, ptr %i.l, align 4, !tbaa !123
  %i.z = sdiv i32 %i.y, 2
  %i.aa = add nsw i32 %i.z, -1
  %i.ab = mul nsw i32 %i.aa, %i.x
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !79
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 %i.ae
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !79
  %i.ag = sub nsw i32 0, %i.x
  store i32 %i.ag, ptr %i.w, align 4, !tbaa !61
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !61 ; 2 uses
  %i.aj = load i32, ptr %i.l, align 4, !tbaa !123
  %i.ak = sdiv i32 %i.aj, 2
  %i.al = add nsw i32 %i.ak, -1
  %i.am = mul nsw i32 %i.al, %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !79
  %i.ap = sext i32 %i.am to i64
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !79
  %i.ar = sub nsw i32 0, %i.ai
  store i32 %i.ar, ptr %i.ah, align 8, !tbaa !61
  %i.as = tail call i32 @ff_mpv_encode_picture(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.j, ptr noundef %3) #9
  call void @av_frame_free(ptr noundef nonnull %i.a) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader, %bb.c
  %.0 = phi i32 [ -733130664, %bb.c ], [ %i.as, %.preheader ], [ -12, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

declare void @ff_mjpeg_encode_huffman_init(ptr noundef) local_unnamed_addr #3

declare void @ff_mjpeg_encode_huffman_close(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_mjpeg_build_huffman_codes(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_mjpeg_encode_picture_header(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @av_default_item_name(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @mjpeg_amv_encode_picture_header(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10992
  %i.b = load i32, ptr %i.a, align 16, !tbaa !124
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %mjpeg_encode_picture_header.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4384
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !69
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6424
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3328
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !73
  %i.p = icmp sgt i32 %i.o, 1
  %i.q = zext i1 %i.p to i32
  tail call void @ff_mjpeg_encode_picture_header(ptr noundef %i.d, ptr noundef nonnull %i.e, ptr noundef %i.h, ptr noundef %i.j, ptr noundef nonnull %i.k, i32 noundef 0, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, i32 noundef %i.q) #9
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4400
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4392
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4388
  %i.z = load i32, ptr %i.y, align 4, !tbaa !53
  %i.aa = sub nsw i32 32, %i.z
  %i.ab = ashr i32 %i.aa, 3
  %i.ac = trunc i64 %i.x to i32
  %i.ad = add i32 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 6432
  store i32 %i.ad, ptr %i.ae, align 16, !tbaa !74
  %i.af = load i32, ptr %i.n, align 8, !tbaa !73  ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %.lr.ph.i, label %mjpeg_encode_picture_header.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 9 uses
  %wide.trip.count.i = zext nneg i32 %i.af to i64
  %i.ai = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter = and i64 %i.ai, 7                    ; 3 uses
  %i.aj = add nsw i32 %i.af, -2
  %i.ak = icmp ult i32 %i.aj, 7
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ai, -8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %bb.c ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %bb.c ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !75
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 6432
  store i32 0, ptr %i.an, align 16, !tbaa !74
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !75
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 6432
  store i32 0, ptr %i.ar, align 16, !tbaa !74
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !75
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 6432
  store i32 0, ptr %i.av, align 16, !tbaa !74
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !75
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 6432
  store i32 0, ptr %i.az, align 16, !tbaa !74
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !75
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 6432
  store i32 0, ptr %i.bd, align 16, !tbaa !74
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !75
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 6432
  store i32 0, ptr %i.bh, align 16, !tbaa !74
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !75
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 6432
  store i32 0, ptr %i.bl, align 16, !tbaa !74
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !75
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 6432
  store i32 0, ptr %i.bp, align 16, !tbaa !74
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %mjpeg_encode_picture_header.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !76

mjpeg_encode_picture_header.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %mjpeg_encode_picture_header.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %mjpeg_encode_picture_header.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i.7, %mjpeg_encode_picture_header.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod4)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.epil
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !75
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 6432
  store i32 0, ptr %i.bs, align 16, !tbaa !74
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %mjpeg_encode_picture_header.exit, label %bb.d, !llvm.loop !125

mjpeg_encode_picture_header.exit:                 ; preds = %mjpeg_encode_picture_header.exit.loopexit.unr-lcssa, %bb.d, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @mjpeg_encode_mb(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3856 ; 2 uses
  %i.b = load i32, ptr %i.a, align 16, !tbaa !126
  %i.c = icmp eq i32 %i.b, 3
  tail call fastcc void @encode_block(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0)
  br i1 %i.c, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call fastcc void @encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef 1)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i32 noundef 2)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 384
  tail call fastcc void @encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i32 noundef 3)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 512
  tail call fastcc void @encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i32 noundef 4)
  %i.h = load i32, ptr %i.a, align 16, !tbaa !126
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.sink.split, label %.sink.split.sink.split

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i32 noundef 2)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 512
  tail call fastcc void @encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.k, i32 noundef 4)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1024
  tail call fastcc void @encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i32 noundef 8)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 640
  tail call fastcc void @encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i32 noundef 5)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1152
  tail call fastcc void @encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.n, i32 noundef 9)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3108
  %i.p = load i32, ptr %i.o, align 4, !tbaa !47
  %i.q = shl nsw i32 %i.p, 4
  %i.r = or disjoint i32 %i.q, 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.t = load i32, ptr %i.s, align 16, !tbaa !127
  %i.u = icmp slt i32 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call fastcc void @encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.v, i32 noundef 1)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 384
  tail call fastcc void @encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.w, i32 noundef 3)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 768
  tail call fastcc void @encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.x, i32 noundef 6)
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %.preheader.preheader, %bb.c
  %.sink50 = phi i64 [ 1280, %bb.c ], [ 768, %.preheader.preheader ]
  %.sink49 = phi i32 [ 10, %bb.c ], [ 6, %.preheader.preheader ]
  %.sink48 = phi i64 [ 896, %bb.c ], [ 640, %.preheader.preheader ]
  %.sink47 = phi i32 [ 7, %bb.c ], [ 5, %.preheader.preheader ]
  %.sink46.ph = phi i64 [ 1408, %bb.c ], [ 896, %.preheader.preheader ]
  %.sink45.ph = phi i32 [ 11, %bb.c ], [ 7, %.preheader.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.sink50
  tail call fastcc void @encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.y, i32 noundef %.sink49)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.sink48
  tail call fastcc void @encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.z, i32 noundef %.sink47)
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %.preheader.preheader
  %.sink46 = phi i64 [ 640, %.preheader.preheader ], [ %.sink46.ph, %.sink.split.sink.split ]
  %.sink45 = phi i32 [ 5, %.preheader.preheader ], [ %.sink45.ph, %.sink.split.sink.split ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.sink46
  tail call fastcc void @encode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, i32 noundef %.sink45)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4400
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4392
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !52
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4388
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !53
  %.tr.i.i = trunc i64 %i.ah to i32
  %i.ak = shl i32 %.tr.i.i, 3
  %reass.sub.i.i = sub i32 %i.ak, %i.aj
  %i.al = add i32 %reass.sub.i.i, 32              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 6352 ; 2 uses
  %i.an = load i32, ptr %i.am, align 16, !tbaa !81
  store i32 %i.al, ptr %i.am, align 16, !tbaa !81
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 6336 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 16, !tbaa !96
  %i.aq = sub i32 %i.ap, %i.an
  %i.ar = add i32 %i.aq, %i.al
  store i32 %i.ar, ptr %i.ao, align 16, !tbaa !96
  ret void
}

declare i32 @ff_mjpeg_encode_check_pix_fmt(ptr noundef) local_unnamed_addr #3

declare i32 @ff_mpv_encode_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @mjpeg_record_mb(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3856 ; 2 uses
  %i.b = load i32, ptr %i.a, align 16, !tbaa !126
  %i.c = icmp eq i32 %i.b, 3
  tail call fastcc void @record_block(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0)
  br i1 %i.c, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call fastcc void @record_block(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef 1)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @record_block(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i32 noundef 2)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 384
  tail call fastcc void @record_block(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i32 noundef 3)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 512
  tail call fastcc void @record_block(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i32 noundef 4)
  %i.h = load i32, ptr %i.a, align 16, !tbaa !126
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.sink.split, label %.sink.split.sink.split

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @record_block(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i32 noundef 2)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 512
  tail call fastcc void @record_block(ptr noundef nonnull %0, ptr noundef nonnull %i.k, i32 noundef 4)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1024
  tail call fastcc void @record_block(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i32 noundef 8)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 640
  tail call fastcc void @record_block(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i32 noundef 5)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1152
  tail call fastcc void @record_block(ptr noundef nonnull %0, ptr noundef nonnull %i.n, i32 noundef 9)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3108
  %i.p = load i32, ptr %i.o, align 4, !tbaa !47
  %i.q = shl nsw i32 %i.p, 4
  %i.r = or disjoint i32 %i.q, 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.t = load i32, ptr %i.s, align 16, !tbaa !127
  %i.u = icmp slt i32 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call fastcc void @record_block(ptr noundef nonnull %0, ptr noundef nonnull %i.v, i32 noundef 1)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 384
  tail call fastcc void @record_block(ptr noundef nonnull %0, ptr noundef nonnull %i.w, i32 noundef 3)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 768
  tail call fastcc void @record_block(ptr noundef nonnull %0, ptr noundef nonnull %i.x, i32 noundef 6)
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %.preheader.preheader, %bb.c
  %.sink48 = phi i64 [ 1280, %bb.c ], [ 768, %.preheader.preheader ]
  %.sink47 = phi i32 [ 10, %bb.c ], [ 6, %.preheader.preheader ]
  %.sink46 = phi i64 [ 896, %bb.c ], [ 640, %.preheader.preheader ]
  %.sink45 = phi i32 [ 7, %bb.c ], [ 5, %.preheader.preheader ]
  %.sink44.ph = phi i64 [ 1408, %bb.c ], [ 896, %.preheader.preheader ]
  %.sink43.ph = phi i32 [ 11, %bb.c ], [ 7, %.preheader.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.sink48
  tail call fastcc void @record_block(ptr noundef nonnull %0, ptr noundef nonnull %i.y, i32 noundef %.sink47)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.sink46
  tail call fastcc void @record_block(ptr noundef nonnull %0, ptr noundef nonnull %i.z, i32 noundef %.sink45)
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %.preheader.preheader
  %.sink44 = phi i64 [ 640, %.preheader.preheader ], [ %.sink44.ph, %.sink.split.sink.split ]
  %.sink43 = phi i32 [ 5, %.preheader.preheader ], [ %.sink43.ph, %.sink.split.sink.split ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.sink44
  tail call fastcc void @record_block(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, i32 noundef %.sink43)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 1) i32 @alloc_huffman(ptr nofree noundef captures(none) initializes((29608, 29616)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.b = load i32, ptr %i.a, align 4, !tbaa !128
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3856
  %i.d = load i32, ptr %i.c, align 16, !tbaa !126
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr @alloc_huffman.blocks_per_mb, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !75
  %i.h = sext i8 %i.g to i32
  %i.i = mul nsw i32 %i.b, %i.h
  %i.j = sext i32 %i.i to i64
  %i.k = tail call ptr @av_malloc_array(i64 noundef %i.j, i64 noundef 256) #9 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 29608
  store ptr %i.k, ptr %i.l, align 8, !tbaa !57
  %.not = icmp eq ptr %i.k, null
  %. = select i1 %.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define internal fastcc void @encode_block(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -2147483648, 12) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6424
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = icmp slt i32 %2, 4                       ; 5 uses
  %i.d = and i32 %2, 1
  %i.e = add nuw nsw i32 %i.d, 1
  %i.f = select i1 %i.c, i32 0, i32 %i.e
  %i.g = load i16, ptr %1, align 2, !tbaa !92
  %i.h = sext i16 %i.g to i32                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6360
  %i.j = zext nneg i32 %i.f to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !61
  %i.m = sub nsw i32 %i.h, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4384
  %. = select i1 %i.c, i64 8, i64 44
  %.115 = select i1 %i.c, i64 20, i64 56
  %.116 = select i1 %i.c, i64 80, i64 848
  %.117 = select i1 %i.c, i64 336, i64 1104
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %.
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %.115
  tail call void @ff_mjpeg_encode_dc(ptr noundef nonnull %i.n, i32 noundef %i.m, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p) #9
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %.116 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %.117 ; 3 uses
  store i32 %i.h, ptr %i.k, align 4, !tbaa !61
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.t = sext i32 %2 to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !61   ; 3 uses
  %.not80 = icmp slt i32 %i.v, 1
  br i1 %.not80, label %._crit_edge85.thread, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 480
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4408 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 9 uses
  %i.ad = add nuw i32 %i.v, 1
  %wide.trip.count = zext i32 %i.ad to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph84, %bb.s
  %indvars.iv = phi i64 [ 1, %.lr.ph84 ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %.06182 = phi i32 [ 0, %.lr.ph84 ], [ %.2, %bb.s ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !75
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !92 ; 3 uses
  %i.aj = sext i16 %i.ai to i32                   ; 2 uses
  %i.ak = icmp eq i16 %i.ai, 0
  br i1 %i.ak, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.al = icmp sgt i32 %.06182, 15
  %.pre92 = load i32, ptr %i.x, align 8, !tbaa !90 ; 2 uses
  %.pre = load i32, ptr %i.aa, align 4, !tbaa !53 ; 2 uses
  br i1 %i.al, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.am = add nsw i32 %.06182, 1
  br label %bb.s

.lr.ph:                                           ; preds = %.preheader, %put_bits.exit
  %i.an = phi i32 [ %.0.i.i, %put_bits.exit ], [ %.pre, %.preheader ] ; 5 uses
  %i.ao = phi i32 [ %.026.i.i, %put_bits.exit ], [ %.pre92, %.preheader ] ; 2 uses
  %.179 = phi i32 [ %i.bl, %put_bits.exit ], [ %.06182, %.preheader ] ; 2 uses
  %i.ap = load i8, ptr %i.y, align 1, !tbaa !75
  %i.aq = zext i8 %i.ap to i32                    ; 5 uses
  %i.ar = load i16, ptr %i.z, align 2, !tbaa !92
  %i.as = zext i16 %i.ar to i32                   ; 3 uses
  %i.at = icmp sgt i32 %i.an, %i.aq
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.au = shl i32 %i.ao, %i.aq
  %i.av = or i32 %i.au, %i.as
  %i.aw = sub nsw i32 %i.an, %i.aq
  br label %put_bits.exit

bb.e:                                             ; preds = %.lr.ph
  %i.ax = load ptr, ptr %i.ab, align 8, !tbaa !93
  %i.ay = load ptr, ptr %i.ac, align 8, !tbaa !51 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = icmp ugt i64 %i.bb, 3
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bd = shl i32 %i.ao, %i.an
  %i.be = sub nsw i32 %i.aq, %i.an
  %i.bf = lshr i32 %i.as, %i.be
  %i.bg = or i32 %i.bf, %i.bd
  %i.bh = tail call i32 @llvm.bswap.i32(i32 %i.bg)
  store i32 %i.bh, ptr %i.ay, align 1, !tbaa !75
  %i.bi = load ptr, ptr %i.ac, align 8, !tbaa !51
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store ptr %i.bj, ptr %i.ac, align 8, !tbaa !51
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.6) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %reass.sub = sub i32 %i.an, %i.aq
  %i.bk = add i32 %reass.sub, 32
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.d, %bb.h
  %.026.i.i = phi i32 [ %i.av, %bb.d ], [ %i.as, %bb.h ] ; 3 uses
  %.0.i.i = phi i32 [ %i.aw, %bb.d ], [ %i.bk, %bb.h ] ; 3 uses
  store i32 %.026.i.i, ptr %i.x, align 8, !tbaa !90
  store i32 %.0.i.i, ptr %i.aa, align 4, !tbaa !53
  %i.bl = add nsw i32 %.179, -16                  ; 2 uses
  %i.bm = icmp sgt i32 %.179, 31
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !129

._crit_edge:                                      ; preds = %put_bits.exit, %.preheader
  %i.bn = phi i32 [ %.pre, %.preheader ], [ %.0.i.i, %put_bits.exit ] ; 5 uses
  %i.bo = phi i32 [ %.pre92, %.preheader ], [ %.026.i.i, %put_bits.exit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.06182, %.preheader ], [ %i.bl, %put_bits.exit ]
  %.lobit = ashr i16 %i.ai, 15
  %i.bp = sext i16 %.lobit to i32
  %.063 = add nsw i32 %i.bp, %i.aj
  %.060 = tail call i32 @llvm.abs.i32(i32 %i.aj, i1 true) ; 3 uses
  %i.bq = and i32 %.060, 65280
  %.not.i = icmp eq i32 %i.bq, 0                  ; 2 uses
  %i.br = lshr i32 %.060, 8
  %spec.select.i = select i1 %.not.i, i32 %.060, i32 %i.br
  %spec.select7.i = select i1 %.not.i, i32 0, i32 8
  %i.bs = zext nneg i32 %spec.select.i to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !75
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add nuw nsw i32 %spec.select7.i, %i.bv  ; 3 uses
  %i.bx = add nuw nsw i32 %i.bw, 1                ; 5 uses
  %i.by = shl i32 %.1.lcssa, 4
  %i.bz = or i32 %i.bx, %i.by
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.q, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !75
  %i.cd = zext i8 %i.cc to i32                    ; 5 uses
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.ca
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !92
  %i.cg = zext i16 %i.cf to i32                   ; 3 uses
  %i.ch = icmp sgt i32 %i.bn, %i.cd
  br i1 %i.ch, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.ci = shl i32 %i.bo, %i.cd
  %i.cj = or i32 %i.ci, %i.cg
  %i.ck = sub nsw i32 %i.bn, %i.cd
  br label %put_bits.exit70

bb.j:                                             ; preds = %._crit_edge
  %i.cl = load ptr, ptr %i.ab, align 8, !tbaa !93
  %i.cm = load ptr, ptr %i.ac, align 8, !tbaa !51 ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = icmp ugt i64 %i.cp, 3
  br i1 %i.cq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cr = shl i32 %i.bo, %i.bn
  %i.cs = sub nsw i32 %i.cd, %i.bn
  %i.ct = lshr i32 %i.cg, %i.cs
  %i.cu = or i32 %i.ct, %i.cr
  %i.cv = tail call i32 @llvm.bswap.i32(i32 %i.cu)
  store i32 %i.cv, ptr %i.cm, align 1, !tbaa !75
  %i.cw = load ptr, ptr %i.ac, align 8, !tbaa !51
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store ptr %i.cx, ptr %i.ac, align 8, !tbaa !51
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.6) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %reass.sub87 = sub i32 %i.bn, %i.cd
  %i.cy = add i32 %reass.sub87, 32
  br label %put_bits.exit70

put_bits.exit70:                                  ; preds = %bb.i, %bb.m
  %.026.i.i68 = phi i32 [ %i.cj, %bb.i ], [ %i.cg, %bb.m ] ; 3 uses
  %.0.i.i69 = phi i32 [ %i.ck, %bb.i ], [ %i.cy, %bb.m ] ; 6 uses
  store i32 %.026.i.i68, ptr %i.x, align 8, !tbaa !90
  store i32 %.0.i.i69, ptr %i.aa, align 4, !tbaa !53
  %notmask.i.i = shl nsw i32 -2, %i.bw
  %i.cz = xor i32 %notmask.i.i, -1
  %i.da = and i32 %.063, %i.cz                    ; 3 uses
  %i.db = icmp slt i32 %i.bx, %.0.i.i69
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %put_bits.exit70
  %i.dc = shl i32 %.026.i.i68, %i.bx
  %i.dd = or i32 %i.dc, %i.da
  %i.de = sub nsw i32 %.0.i.i69, %i.bx
  br label %put_sbits.exit

bb.o:                                             ; preds = %put_bits.exit70
  %i.df = load ptr, ptr %i.ab, align 8, !tbaa !93
  %i.dg = load ptr, ptr %i.ac, align 8, !tbaa !51 ; 2 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = icmp ugt i64 %i.dj, 3
  br i1 %i.dk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dl = shl i32 %.026.i.i68, %.0.i.i69
  %i.dm = sub nsw i32 %i.bx, %.0.i.i69
  %i.dn = lshr i32 %i.da, %i.dm
  %i.do = or i32 %i.dn, %i.dl
  %i.dp = tail call i32 @llvm.bswap.i32(i32 %i.do)
  store i32 %i.dp, ptr %i.dg, align 1, !tbaa !75
  %i.dq = load ptr, ptr %i.ac, align 8, !tbaa !51
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store ptr %i.dr, ptr %i.ac, align 8, !tbaa !51
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.6) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %reass.sub88 = sub i32 %.0.i.i69, %i.bw
  %i.ds = add i32 %reass.sub88, 31
  br label %put_sbits.exit

put_sbits.exit:                                   ; preds = %bb.n, %bb.r
  %.026.i.i.i = phi i32 [ %i.dd, %bb.n ], [ %i.da, %bb.r ]
  %.0.i.i.i = phi i32 [ %i.de, %bb.n ], [ %i.ds, %bb.r ]
  store i32 %.026.i.i.i, ptr %i.x, align 8, !tbaa !90
  store i32 %.0.i.i.i, ptr %i.aa, align 4, !tbaa !53
  br label %bb.s

bb.s:                                             ; preds = %bb.c, %put_sbits.exit
  %.2 = phi i32 [ %i.am, %bb.c ], [ 0, %put_sbits.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge85, label %bb.b, !llvm.loop !130

._crit_edge85:                                    ; preds = %bb.s
  %i.dt = icmp ne i32 %.2, 0
  %i.du = icmp slt i32 %i.v, 63
  %or.cond = select i1 %i.du, i1 true, i1 %i.dt
  br i1 %or.cond, label %._crit_edge85.thread, label %bb.y

._crit_edge85.thread:                             ; preds = %bb.a, %._crit_edge85
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 2 uses
  %i.dw = load i8, ptr %i.q, align 1, !tbaa !75
  %i.dx = zext i8 %i.dw to i32                    ; 5 uses
  %i.dy = load i16, ptr %i.r, align 2, !tbaa !92
  %i.dz = zext i16 %i.dy to i32                   ; 3 uses
  %i.ea = load i32, ptr %i.dv, align 8, !tbaa !90 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !53 ; 5 uses
  %i.ed = icmp sgt i32 %i.ec, %i.dx
  br i1 %i.ed, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge85.thread
  %i.ee = shl i32 %i.ea, %i.dx
  %i.ef = or i32 %i.ee, %i.dz
  %i.eg = sub nsw i32 %i.ec, %i.dx
  br label %put_bits.exit75

bb.u:                                             ; preds = %._crit_edge85.thread
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !93
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !51 ; 2 uses
  %i.el = ptrtoint ptr %i.ei to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = icmp ugt i64 %i.en, 3
  br i1 %i.eo, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ep = shl i32 %i.ea, %i.ec
  %i.eq = sub nsw i32 %i.dx, %i.ec
  %i.er = lshr i32 %i.dz, %i.eq
  %i.es = or i32 %i.er, %i.ep
  %i.et = tail call i32 @llvm.bswap.i32(i32 %i.es)
  store i32 %i.et, ptr %i.ek, align 1, !tbaa !75
  %i.eu = load ptr, ptr %i.ej, align 8, !tbaa !51
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  store ptr %i.ev, ptr %i.ej, align 8, !tbaa !51
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.6) #9
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %reass.sub89 = sub i32 %i.ec, %i.dx
  %i.ew = add i32 %reass.sub89, 32
  br label %put_bits.exit75

put_bits.exit75:                                  ; preds = %bb.t, %bb.x
  %.026.i.i73 = phi i32 [ %i.ef, %bb.t ], [ %i.dz, %bb.x ]
  %.0.i.i74 = phi i32 [ %i.eg, %bb.t ], [ %i.ew, %bb.x ]
  store i32 %.026.i.i73, ptr %i.dv, align 8, !tbaa !90
  store i32 %.0.i.i74, ptr %i.eb, align 4, !tbaa !53
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge85, %put_bits.exit75
  ret void
}

declare void @ff_mjpeg_encode_dc(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @record_block(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -2147483648, 12) %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6424
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 6 uses
  %i.c = icmp sgt i32 %2, 3                       ; 3 uses
  %i.d = and i32 %2, 1
  %i.e = add nuw nsw i32 %i.d, 1
  %i.f = select i1 %i.c, i32 %i.e, i32 0
  %i.g = zext i1 %i.c to i32
  %i.h = load i16, ptr %1, align 2, !tbaa !92
  %i.i = sext i16 %i.h to i32                     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6360
  %i.k = zext nneg i32 %i.f to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !61   ; 2 uses
  %i.n = zext i1 %i.c to i8                       ; 2 uses
  %i.o = icmp eq i32 %i.m, %i.i
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 18616
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !57   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 18608 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !56   ; 2 uses
  %i.t = add i64 %i.s, 1                          ; 2 uses
  store i64 %i.t, ptr %i.r, align 8, !tbaa !56
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.s ; 2 uses
  store i8 %i.n, ptr %i.u, align 2, !tbaa !58
  br label %mjpeg_encode_coef.exit

bb.c:                                             ; preds = %bb.a
  %i.v = sub nsw i32 %i.i, %i.m                   ; 3 uses
  %.015.i = tail call i32 @llvm.abs.i32(i32 %i.v, i1 true) ; 3 uses
  %.lobit.i = ashr i32 %i.v, 31
  %.0.i = add nsw i32 %.lobit.i, %i.v
  %i.w = and i32 %.015.i, 65280
  %.not.i.i = icmp eq i32 %i.w, 0                 ; 2 uses
  %i.x = lshr i32 %.015.i, 8
  %spec.select.i.i = select i1 %.not.i.i, i32 %.015.i, i32 %i.x
  %i.y = zext nneg i32 %spec.select.i.i to i64
  %i.z = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !75
  %i.ab = select i1 %.not.i.i, i8 1, i8 9
  %i.ac = add i8 %i.aa, %i.ab
  %i.ad = trunc i32 %.0.i to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 18616
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !57 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 18608 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !56 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ah ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store i16 %i.ad, ptr %i.aj, align 2, !tbaa !94
  %i.ak = add i64 %i.ah, 1                        ; 2 uses
  store i64 %i.ak, ptr %i.ag, align 8, !tbaa !56
  store i8 %i.n, ptr %i.ai, align 2, !tbaa !58
  br label %mjpeg_encode_coef.exit

mjpeg_encode_coef.exit:                           ; preds = %bb.b, %bb.c
  %.promoted58 = phi i64 [ %i.ak, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %i.al = phi ptr [ %i.af, %bb.c ], [ %i.q, %bb.b ] ; 7 uses
  %.sink19.i = phi ptr [ %i.ai, %bb.c ], [ %i.u, %bb.b ]
  %.sink.i = phi i8 [ %i.ac, %bb.c ], [ 0, %bb.b ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sink19.i, i64 1
  store i8 %.sink.i, ptr %i.am, align 1, !tbaa !60
  store i32 %i.i, ptr %i.l, align 4, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ao = sext i32 %2 to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !61 ; 3 uses
  %i.ar = or disjoint i32 %i.g, 2                 ; 2 uses
  %.not49 = icmp slt i32 %i.aq, 1
  br i1 %.not49, label %._crit_edge.thread, label %.lr.ph52

.lr.ph52:                                         ; preds = %mjpeg_encode_coef.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.at = trunc nuw nsw i32 %i.ar to i8           ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 18608
  %i.av = add nuw i32 %i.aq, 1
  %wide.trip.count = zext i32 %i.av to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph52, %bb.f
  %.promoted = phi i64 [ %.promoted58, %.lr.ph52 ], [ %.promoted57, %bb.f ] ; 4 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph52 ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.051 = phi i32 [ 0, %.lr.ph52 ], [ %.2, %bb.f ] ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !75
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !92 ; 3 uses
  %i.bb = sext i16 %i.ba to i32                   ; 2 uses
  %i.bc = icmp eq i16 %i.ba, 0
  br i1 %i.bc, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.bd = icmp sgt i32 %.051, 15
  br i1 %i.bd, label %.lr.ph.preheader, label %mjpeg_encode_coef.exit47

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.be = add nsw i32 %.051, -16                  ; 2 uses
  %i.bf = lshr i32 %i.be, 4
  %i.bg = add nuw nsw i32 %i.bf, 1
  %xtraiter = and i32 %i.bg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %i.bh = phi i64 [ %i.bi, %.lr.ph.prol ], [ %.promoted, %.lr.ph.preheader ] ; 2 uses
  %.148.prol = phi i32 [ %i.bl, %.lr.ph.prol ], [ %.051, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bi = add i64 %i.bh, 1                        ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bh ; 2 uses
  store i8 %i.at, ptr %i.bj, align 2, !tbaa !58
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  store i8 -16, ptr %i.bk, align 1, !tbaa !60
  %i.bl = add nsw i32 %.148.prol, -16             ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !131

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.unr = phi i64 [ %.promoted, %.lr.ph.preheader ], [ %i.bi, %.lr.ph.prol ]
  %.148.unr = phi i32 [ %.051, %.lr.ph.preheader ], [ %i.bl, %.lr.ph.prol ]
  %.lcssa66.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.bi, %.lr.ph.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.bl, %.lr.ph.prol ]
  %i.bm = icmp ult i32 %i.be, 48
  br i1 %i.bm, label %mjpeg_encode_coef.exit47, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.bn = add nsw i32 %.051, 1
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.bo = phi i64 [ %i.bx, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.148 = phi i32 [ %i.cb, %.lr.ph ], [ %.148.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bo ; 2 uses
  store i8 %i.at, ptr %i.bp, align 2, !tbaa !58
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store i8 -16, ptr %i.bq, align 1, !tbaa !60
  %i.br = getelementptr [4 x i8], ptr %i.al, i64 %i.bo ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  store i8 %i.at, ptr %i.bs, align 2, !tbaa !58
  %i.bt = getelementptr i8, ptr %i.br, i64 5
  store i8 -16, ptr %i.bt, align 1, !tbaa !60
  %i.bu = getelementptr [4 x i8], ptr %i.al, i64 %i.bo ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  store i8 %i.at, ptr %i.bv, align 2, !tbaa !58
  %i.bw = getelementptr i8, ptr %i.bu, i64 9
  store i8 -16, ptr %i.bw, align 1, !tbaa !60
  %i.bx = add i64 %i.bo, 4                        ; 2 uses
  %i.by = getelementptr [4 x i8], ptr %i.al, i64 %i.bo ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 12
  store i8 %i.at, ptr %i.bz, align 2, !tbaa !58
  %i.ca = getelementptr i8, ptr %i.by, i64 13
  store i8 -16, ptr %i.ca, align 1, !tbaa !60
  %i.cb = add nsw i32 %.148, -64                  ; 2 uses
  %i.cc = icmp sgt i32 %.148, 79
  br i1 %i.cc, label %.lr.ph, label %mjpeg_encode_coef.exit47, !llvm.loop !132

mjpeg_encode_coef.exit47:                         ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.preheader
  %i.cd = phi i64 [ %.promoted, %.preheader ], [ %.lcssa66.unr, %.lr.ph.prol.loopexit ], [ %i.bx, %.lr.ph ] ; 2 uses
  %.1.lcssa = phi i32 [ %.051, %.preheader ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.cb, %.lr.ph ]
  %.015.i40 = tail call i32 @llvm.abs.i32(i32 %i.bb, i1 true) ; 3 uses
  %.lobit.i41 = ashr i32 %i.bb, 31
  %i.ce = shl i32 %.1.lcssa, 4
  %i.cf = and i32 %.015.i40, 65280
  %.not.i.i43 = icmp eq i32 %i.cf, 0              ; 2 uses
  %i.cg = lshr i32 %.015.i40, 8
  %spec.select.i.i44 = select i1 %.not.i.i43, i32 %.015.i40, i32 %i.cg
  %i.ch = zext nneg i32 %spec.select.i.i44 to i64
  %i.ci = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !75
  %i.ck = zext i8 %i.cj to i32
  %i.cl = select i1 %.not.i.i43, i32 1, i32 9
  %i.cm = add nuw nsw i32 %i.cl, %i.ck
  %i.cn = or i32 %i.cm, %i.ce
  %i.co = trunc nsw i32 %.lobit.i41 to i16
  %i.cp = add i16 %i.ba, %i.co
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cd ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  store i16 %i.cp, ptr %i.cr, align 2, !tbaa !94
  %i.cs = add i64 %i.cd, 1                        ; 2 uses
  store i64 %i.cs, ptr %i.au, align 8, !tbaa !56
  store i8 %i.at, ptr %i.cq, align 2, !tbaa !58
  %i.ct = trunc i32 %i.cn to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %mjpeg_encode_coef.exit47
  %.promoted57 = phi i64 [ %.promoted, %bb.e ], [ %i.cs, %mjpeg_encode_coef.exit47 ] ; 2 uses
  %.2 = phi i32 [ %i.bn, %bb.e ], [ 0, %mjpeg_encode_coef.exit47 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !133

._crit_edge:                                      ; preds = %bb.f
  %i.cv = icmp ne i32 %.2, 0
  %i.cw = icmp slt i32 %i.aq, 63
  %or.cond = select i1 %i.cw, i1 true, i1 %i.cv
  br i1 %or.cond, label %._crit_edge.thread, label %bb.g

._crit_edge.thread:                               ; preds = %mjpeg_encode_coef.exit, %._crit_edge
  %i.cx = phi i64 [ %.promoted57, %._crit_edge ], [ %.promoted58, %mjpeg_encode_coef.exit ] ; 2 uses
  %i.cy = trunc nuw nsw i32 %i.ar to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 18608
  %i.da = add i64 %i.cx, 1
  store i64 %i.da, ptr %i.cz, align 8, !tbaa !56
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cx ; 2 uses
  store i8 %i.cy, ptr %i.db, align 2, !tbaa !58
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  store i8 0, ptr %i.dc, align 1, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %._crit_edge.thread
  ret void
}

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare i32 @ff_mpv_encode_end(ptr noundef) local_unnamed_addr #3

declare i32 @ff_default_get_supported_config(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @av_frame_clone(ptr noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { cold }

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
!9 = !{!10, !45, i64 6424}
!10 = !{!"MPVEncContext", !11, i64 0, !38, i64 4384, !6, i64 4416, !6, i64 4420, !22, i64 4424, !6, i64 4432, !6, i64 4436, !6, i64 4440, !6, i64 4444, !6, i64 4448, !6, i64 4452, !6, i64 4456, !6, i64 4460, !35, i64 4464, !39, i64 4472, !40, i64 4480, !41, i64 4496, !42, i64 4576, !43, i64 4608, !6, i64 5896, !6, i64 5900, !23, i64 5904, !23, i64 5912, !23, i64 5920, !23, i64 5928, !23, i64 5936, !23, i64 5944, !7, i64 5952, !7, i64 6016, !7, i64 6032, !23, i64 6064, !23, i64 6072, !23, i64 6080, !15, i64 6088, !7, i64 6096, !6, i64 6120, !6, i64 6124, !6, i64 6128, !6, i64 6132, !6, i64 6136, !15, i64 6144, !15, i64 6152, !15, i64 6160, !15, i64 6168, !15, i64 6176, !15, i64 6184, !15, i64 6192, !7, i64 6200, !23, i64 6248, !22, i64 6256, !22, i64 6264, !22, i64 6272, !23, i64 6280, !23, i64 6288, !23, i64 6296, !22, i64 6304, !7, i64 6312, !23, i64 6320, !6, i64 6328, !6, i64 6332, !6, i64 6336, !6, i64 6340, !6, i64 6344, !6, i64 6348, !6, i64 6352, !6, i64 6356, !7, i64 6360, !6, i64 6372, !6, i64 6376, !6, i64 6380, !6, i64 6384, !6, i64 6388, !15, i64 6392, !6, i64 6400, !6, i64 6404, !6, i64 6408, !6, i64 6412, !6, i64 6416, !45, i64 6424, !6, i64 6432, !6, i64 6436, !6, i64 6440, !6, i64 6444, !6, i64 6448, !38, i64 6456, !38, i64 6488, !6, i64 6520, !6, i64 6524, !6, i64 6528, !6, i64 6532, !6, i64 6536, !6, i64 6540, !15, i64 6544, !13, i64 6552, !13, i64 6560, !7, i64 6568, !7, i64 6584, !7, i64 6600, !7, i64 6616, !13, i64 6632, !6, i64 6640, !7, i64 6644, !7, i64 6708, !7, i64 6784}
!11 = !{!"MpegEncContext", !12, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !7, i64 20, !6, i64 68, !14, i64 72, !14, i64 208, !16, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !6, i64 408, !6, i64 412, !17, i64 416, !17, i64 424, !18, i64 432, !19, i64 440, !6, i64 496, !6, i64 500, !7, i64 504, !6, i64 760, !20, i64 768, !20, i64 888, !20, i64 1008, !23, i64 1128, !15, i64 1136, !15, i64 1144, !15, i64 1152, !15, i64 1160, !15, i64 1168, !23, i64 1176, !23, i64 1184, !23, i64 1192, !6, i64 1200, !15, i64 1208, !15, i64 1216, !15, i64 1224, !15, i64 1232, !24, i64 1240, !6, i64 1272, !6, i64 1276, !6, i64 1280, !6, i64 1284, !25, i64 1288, !26, i64 1320, !27, i64 1384, !28, i64 1768, !29, i64 1888, !30, i64 2656, !31, i64 2672, !23, i64 2688, !7, i64 2696, !6, i64 2728, !6, i64 2732, !7, i64 2736, !7, i64 2800, !7, i64 2816, !7, i64 2848, !6, i64 3104, !6, i64 3108, !6, i64 3112, !6, i64 3116, !7, i64 3120, !7, i64 3144, !7, i64 3168, !22, i64 3192, !7, i64 3200, !7, i64 3328, !7, i64 3456, !7, i64 3584, !6, i64 3712, !6, i64 3716, !6, i64 3720, !6, i64 3724, !6, i64 3728, !6, i64 3732, !6, i64 3736, !6, i64 3740, !17, i64 3744, !17, i64 3752, !32, i64 3760, !32, i64 3762, !32, i64 3764, !32, i64 3766, !6, i64 3768, !6, i64 3772, !6, i64 3776, !6, i64 3780, !6, i64 3784, !6, i64 3788, !6, i64 3792, !6, i64 3796, !7, i64 3800, !6, i64 3816, !6, i64 3820, !6, i64 3824, !6, i64 3828, !6, i64 3832, !6, i64 3836, !6, i64 3840, !6, i64 3844, !6, i64 3848, !6, i64 3852, !6, i64 3856, !6, i64 3860, !6, i64 3864, !6, i64 3868, !7, i64 3872, !6, i64 3880, !6, i64 3884, !13, i64 3888, !13, i64 3896, !6, i64 3904, !6, i64 3908, !33, i64 3912}
!12 = !{!"p1 _ZTS7AVClass", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"ScanTable", !15, i64 0, !7, i64 8, !7, i64 72}
!15 = !{!"p1 omnipotent char", !13, i64 0}
!16 = !{!"p1 _ZTS14AVCodecContext", !13, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"p1 _ZTS15AVRefStructPool", !13, i64 0}
!19 = !{!"BufferPoolContext", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !6, i64 40, !6, i64 44, !6, i64 48}
!20 = !{!"MPVWorkPicture", !7, i64 0, !7, i64 24, !21, i64 48, !15, i64 56, !7, i64 64, !22, i64 80, !15, i64 88, !7, i64 96, !6, i64 112}
!21 = !{!"p1 _ZTS10MPVPicture", !13, i64 0}
!22 = !{!"p1 int", !13, i64 0}
!23 = !{!"p1 short", !13, i64 0}
!24 = !{!"ScratchpadContext", !15, i64 0, !15, i64 8, !7, i64 16, !6, i64 24}
!25 = !{!"BlockDSPContext", !13, i64 0, !13, i64 8, !7, i64 16}
!26 = !{!"H264ChromaContext", !7, i64 0, !7, i64 32}
!27 = !{!"HpelDSPContext", !7, i64 0, !7, i64 128, !7, i64 256, !7, i64 352}
!28 = !{!"IDCTDSPContext", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !7, i64 48, !6, i64 112, !6, i64 116}
!29 = !{!"QpelDSPContext", !7, i64 0, !7, i64 256, !7, i64 512}
!30 = !{!"VideoDSPContext", !13, i64 0, !13, i64 8}
!31 = !{!"H263DSPContext", !13, i64 0, !13, i64 8}
!32 = !{!"short", !7, i64 0}
!33 = !{!"ERContext", !16, i64 0, !13, i64 8, !22, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !17, i64 40, !17, i64 48, !7, i64 56, !6, i64 60, !15, i64 64, !15, i64 72, !7, i64 80, !15, i64 104, !15, i64 112, !7, i64 120, !34, i64 184, !34, i64 256, !34, i64 328, !7, i64 400, !7, i64 416, !32, i64 432, !32, i64 434, !6, i64 436, !6, i64 440, !13, i64 448, !13, i64 456}
!34 = !{!"ERPicture", !35, i64 0, !36, i64 8, !37, i64 16, !7, i64 24, !7, i64 40, !22, i64 56, !6, i64 64}
!35 = !{!"p1 _ZTS7AVFrame", !13, i64 0}
!36 = !{!"p1 _ZTS11ThreadFrame", !13, i64 0}
!37 = !{!"p1 _ZTS14ThreadProgress", !13, i64 0}
!38 = !{!"PutBitContext", !6, i64 0, !6, i64 4, !15, i64 8, !15, i64 16, !15, i64 24}
!39 = !{!"p1 _ZTS17MPVMainEncContext", !13, i64 0}
!40 = !{!"FDCTDSPContext", !13, i64 0, !13, i64 8}
!41 = !{!"MpegvideoEncDSPContext", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !7, i64 40, !13, i64 72}
!42 = !{!"PixblockDSPContext", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!43 = !{!"MotionEstContext", !16, i64 0, !6, i64 8, !6, i64 12, !7, i64 16, !7, i64 48, !15, i64 80, !15, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !7, i64 168, !7, i64 296, !6, i64 424, !6, i64 428, !17, i64 432, !17, i64 440, !6, i64 448, !7, i64 456, !7, i64 504, !7, i64 552, !7, i64 600, !7, i64 648, !13, i64 712, !44, i64 720, !44, i64 728, !44, i64 736, !44, i64 744, !15, i64 752, !15, i64 760, !13, i64 768, !7, i64 776, !7, i64 1032}
!44 = !{!"any p2 pointer", !13, i64 0}
!45 = !{!"p1 _ZTS12MJpegContext", !13, i64 0}
!46 = !{!10, !6, i64 3112}
!47 = !{!10, !6, i64 3108}
!48 = !{!49, !6, i64 0}
!49 = !{!"MJpegContext", !6, i64 0, !6, i64 4, !7, i64 8, !7, i64 20, !7, i64 44, !7, i64 56, !7, i64 80, !7, i64 336, !7, i64 848, !7, i64 1104, !7, i64 1616, !7, i64 9808, !7, i64 18000, !7, i64 18017, !7, i64 18029, !7, i64 18046, !7, i64 18058, !7, i64 18075, !7, i64 18331, !7, i64 18348, !17, i64 18608, !50, i64 18616}
!50 = !{!"p1 _ZTS16MJpegHuffmanCode", !13, i64 0}
!51 = !{!38, !15, i64 16}
!52 = !{!38, !15, i64 8}
!53 = !{!38, !6, i64 4}
!54 = !{!55, !55, i64 0}
!55 = !{!"p1 _ZTS22MJpegEncHuffmanContext", !13, i64 0}
!56 = !{!49, !17, i64 18608}
!57 = !{!49, !50, i64 18616}
!58 = !{!59, !7, i64 0}
!59 = !{!"MJpegHuffmanCode", !7, i64 0, !7, i64 1, !32, i64 2}
!60 = !{!59, !7, i64 1}
!61 = !{!6, !6, i64 0}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!10, !15, i64 6152}
!65 = !{!10, !15, i64 6144}
!66 = !{!10, !15, i64 6168}
!67 = !{!10, !15, i64 6160}
!68 = !{!10, !16, i64 344}
!69 = !{!10, !21, i64 1056}
!70 = !{!71, !35, i64 0}
!71 = !{!"MPVPicture", !35, i64 0, !15, i64 8, !15, i64 16, !7, i64 24, !7, i64 40, !22, i64 56, !22, i64 64, !15, i64 72, !7, i64 80, !13, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !72, i64 144}
!72 = !{!"ThreadProgress", !7, i64 0, !6, i64 4, !7, i64 8, !7, i64 48}
!73 = !{!10, !6, i64 760}
!74 = !{!10, !6, i64 6432}
!75 = !{!7, !7, i64 0}
!76 = distinct !{!76, !63}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.unroll.disable"}
!79 = !{!15, !15, i64 0}
!80 = !{!23, !23, i64 0}
!81 = !{!10, !6, i64 6352}
!82 = !{!83, !6, i64 10420}
!83 = !{!"MPVMainEncContext", !10, i64 0, !6, i64 9856, !6, i64 9860, !6, i64 9864, !6, i64 9868, !6, i64 9872, !6, i64 9876, !7, i64 9880, !7, i64 10016, !17, i64 10152, !17, i64 10160, !17, i64 10168, !7, i64 10176, !6, i64 10320, !6, i64 10324, !6, i64 10328, !6, i64 10332, !6, i64 10336, !84, i64 10340, !6, i64 10344, !6, i64 10348, !6, i64 10352, !6, i64 10356, !15, i64 10360, !6, i64 10368, !6, i64 10372, !6, i64 10376, !6, i64 10380, !13, i64 10384, !13, i64 10392, !17, i64 10400, !17, i64 10408, !6, i64 10416, !6, i64 10420, !6, i64 10424, !6, i64 10428, !6, i64 10432, !7, i64 10436, !6, i64 10456, !6, i64 10460, !85, i64 10464, !6, i64 10944, !6, i64 10948, !17, i64 10952, !17, i64 10960, !15, i64 10968, !15, i64 10976, !23, i64 10984}
!84 = !{!"float", !7, i64 0}
!85 = !{!"RateControlContext", !6, i64 0, !86, i64 8, !87, i64 16, !7, i64 24, !87, i64 144, !87, i64 152, !87, i64 160, !87, i64 168, !87, i64 176, !7, i64 184, !17, i64 224, !17, i64 232, !7, i64 240, !7, i64 280, !7, i64 320, !7, i64 360, !7, i64 400, !6, i64 420, !84, i64 424, !84, i64 428, !6, i64 432, !84, i64 436, !84, i64 440, !15, i64 448, !88, i64 456, !89, i64 464, !89, i64 472}
!86 = !{!"p1 _ZTS16RateControlEntry", !13, i64 0}
!87 = !{!"double", !7, i64 0}
!88 = !{!"p1 _ZTS6AVExpr", !13, i64 0}
!89 = !{!"p1 float", !13, i64 0}
!90 = !{!38, !6, i64 0}
!91 = distinct !{!91, !63}
!92 = !{!32, !32, i64 0}
!93 = !{!38, !15, i64 24}
!94 = !{!59, !32, i64 2}
!95 = distinct !{!95, !63}
!96 = !{!10, !6, i64 6336}
!97 = !{!10, !6, i64 392}
!98 = distinct !{!98, !63}
!99 = distinct !{!99, !63}
!100 = !{!101, !13, i64 32}
!101 = !{!"AVCodecContext", !12, i64 0, !6, i64 8, !6, i64 12, !102, i64 16, !6, i64 24, !6, i64 28, !13, i64 32, !103, i64 40, !13, i64 48, !17, i64 56, !6, i64 64, !6, i64 68, !15, i64 72, !6, i64 80, !104, i64 84, !104, i64 92, !104, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !104, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !13, i64 184, !13, i64 192, !6, i64 200, !84, i64 204, !84, i64 208, !84, i64 212, !84, i64 216, !84, i64 220, !84, i64 224, !84, i64 228, !84, i64 232, !84, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !23, i64 288, !23, i64 296, !23, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !105, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !13, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !84, i64 428, !84, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !106, i64 456, !17, i64 464, !17, i64 472, !84, i64 480, !84, i64 484, !6, i64 488, !6, i64 492, !15, i64 496, !15, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !107, i64 536, !13, i64 544, !108, i64 552, !108, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !13, i64 672, !13, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !109, i64 728, !15, i64 736, !6, i64 744, !6, i64 748, !15, i64 752, !15, i64 760, !15, i64 768, !110, i64 776, !6, i64 784, !6, i64 788, !17, i64 792, !6, i64 800, !6, i64 804, !17, i64 808, !13, i64 816, !17, i64 824, !22, i64 832, !6, i64 840, !111, i64 848, !6, i64 856, !6, i64 860}
!102 = !{!"p1 _ZTS7AVCodec", !13, i64 0}
!103 = !{!"p1 _ZTS15AVCodecInternal", !13, i64 0}
!104 = !{!"AVRational", !6, i64 0, !6, i64 4}
!105 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !13, i64 16}
!106 = !{!"p1 _ZTS10RcOverride", !13, i64 0}
!107 = !{!"p1 _ZTS9AVHWAccel", !13, i64 0}
!108 = !{!"p1 _ZTS11AVBufferRef", !13, i64 0}
!109 = !{!"p1 _ZTS17AVCodecDescriptor", !13, i64 0}
!110 = !{!"p1 _ZTS16AVPacketSideData", !13, i64 0}
!111 = !{!"p2 _ZTS15AVFrameSideData", !44, i64 0}
!112 = !{!113, !13, i64 10392}
!113 = !{!"MJPEGEncContext", !83, i64 0, !49, i64 10992}
!114 = !{!10, !13, i64 6552}
!115 = !{!10, !6, i64 4456}
!116 = !{!101, !6, i64 112}
!117 = !{!101, !6, i64 116}
!118 = !{!10, !6, i64 6128}
!119 = !{!10, !6, i64 6132}
!120 = !{!101, !6, i64 516}
!121 = !{!13, !13, i64 0}
!122 = !{!35, !35, i64 0}
!123 = !{!10, !6, i64 356}
!124 = !{!113, !6, i64 10992}
!125 = distinct !{!125, !78}
!126 = !{!10, !6, i64 3856}
!127 = !{!10, !6, i64 352}
!128 = !{!10, !6, i64 412}
!129 = distinct !{!129, !63}
!130 = distinct !{!130, !63}
!131 = distinct !{!131, !78}
!132 = distinct !{!132, !63}
!133 = distinct !{!133, !63}
end_hunk_0
