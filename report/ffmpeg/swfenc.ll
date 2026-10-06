Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/swfenc?download=true
inline.NumInlined: 75
inline.NumDeleted: 8
begin_hunk_0_@swf_write_header:bb.a

.thread198:                                       ; preds = %bb.am, %bb.an, %bb.al
  %.0 = phi i32 [ 14, %bb.an ], [ 10, %bb.am ], [ 6, %bb.al ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 132
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !76
  %i.ew = icmp eq i32 %i.ev, 2
  %i.ex = zext i1 %i.ew to i32
  %spec.select = or disjoint i32 %.0, %i.ex       ; 2 uses
  %i.ey = load ptr, ptr %i.d, align 8, !tbaa !27
  call void @avio_w8(ptr noundef %i.ey, i32 noundef %spec.select) #7
  %i.ez = or disjoint i32 %spec.select, 32
  %i.fa = load ptr, ptr %i.d, align 8, !tbaa !27
  call void @avio_w8(ptr noundef %i.fa, i32 noundef %i.ez) #7
  %i.fb = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.fc = load i32, ptr %i.bf, align 8, !tbaa !70
  call void @avio_wl16(ptr noundef %i.fb, i32 noundef %i.fc) #7
  %i.fd = load ptr, ptr %i.d, align 8, !tbaa !27
  call void @avio_wl16(ptr noundef %i.fd, i32 noundef 0) #7
  %.val150 = load ptr, ptr %i.b, align 8, !tbaa !26
  %.val151 = load ptr, ptr %i.d, align 8, !tbaa !27
  call fastcc void @put_swf_end_tag(ptr %.val150, ptr %.val151)
  br label %.thread

bb.ao:                                            ; preds = %bb.al
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.9) #7
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.i, %bb.aj, %bb.ak, %.thread198, %bb.ao, %bb.s
  %.3 = phi i32 [ 0, %bb.aj ], [ -22, %bb.s ], [ -1, %bb.ao ], [ 0, %.thread198 ], [ 0, %bb.ak ], [ -1, %bb.i ], [ -1, %bb.e ], [ -12, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @swf_write_packet(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !77
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42   ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !45
  %i.k = icmp eq i32 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !79   ; 3 uses
  br i1 %i.k, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !33
  %i.t = icmp eq i32 %i.s, 16000
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.16) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.w = tail call i64 @av_fifo_can_write(ptr noundef %i.v) #7
  %i.x = sext i32 %i.o to i64                     ; 2 uses
  %i.y = icmp ult i64 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.17) #7
  br label %swf_write_audio.exit

bb.f:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.aa = tail call i32 @av_fifo_write(ptr noundef %i.z, ptr noundef %i.m, i64 noundef %i.x) #7 ; 0 uses
  %i.ab = tail call i32 @av_get_audio_frame_duration2(ptr noundef nonnull %i.i, i32 noundef %i.o) #7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 28 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !32
  %i.ae = add nsw i32 %i.ad, %i.ab
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !49
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %bb.g, label %swf_write_audio.exit

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @swf_write_video(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef null, i32 noundef 0, i32 noundef 0)
  br label %swf_write_audio.exit

bb.h:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !80
  tail call fastcc void @swf_write_video(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef %i.m, i32 noundef %i.o, i32 noundef %i.ai)
  br label %swf_write_audio.exit

swf_write_audio.exit:                             ; preds = %bb.g, %bb.f, %bb.e, %bb.h
  %.0 = phi i32 [ 0, %bb.h ], [ -1, %bb.e ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @swf_write_trailer(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 10 uses
  %i.e = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef 0, i32 noundef 1) #7
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 0, ptr %i.g, align 8, !tbaa !55
  tail call void @avio_wl16(ptr noundef %i.d, i32 noundef 0) #7
  %.val23 = load ptr, ptr %i.a, align 8, !tbaa !26
  %.val24 = load ptr, ptr %i.c, align 8, !tbaa !27
  tail call fastcc void @put_swf_end_tag(ptr %.val23, ptr %.val24)
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.j = load i32, ptr %i.i, align 8, !tbaa !82
  %i.k = and i32 %i.j, 1
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  %.not20 = icmp eq ptr %i.m, null
  br i1 %.not20, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef 0, i32 noundef 1) #7 ; 2 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef 4, i32 noundef 0) #7 ; 0 uses
  tail call void @avio_wl32(ptr noundef %i.d, i32 noundef %i.o) #7
  %i.q = load i64, ptr %i.b, align 8, !tbaa !53
  %i.r = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef %i.q, i32 noundef 0) #7 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !34
  tail call void @avio_wl16(ptr noundef %i.d, i32 noundef %i.t) #7
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !62   ; 2 uses
  %.not21 = icmp eq i64 %i.v, 0
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef %i.v, i32 noundef 0) #7 ; 0 uses
  %i.x = load i32, ptr %i.s, align 4, !tbaa !34
  tail call void @avio_wl16(ptr noundef %i.d, i32 noundef %i.x) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %sext = shl i64 %i.n, 32
  %i.y = ashr exact i64 %sext, 32
  %i.z = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef %i.y, i32 noundef 0) #7 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @swf_deinit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @av_fifo_freep2(ptr noundef nonnull %i.c) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @av_fifo_alloc2(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_codec_get_tag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @avio_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare void @avio_w8(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @avio_wl32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @put_swf_rect(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.c = icmp eq i32 %1, 0
  %.sroa.36.3.idx.sroa.gep77 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br i1 %i.c, label %max_nbits.exit, label %max_nbits.exit.loopexit

max_nbits.exit.loopexit:                          ; preds = %bb.a
  %i.d = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.e = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.d, i1 true)
  %i.f = sub nuw nsw i32 33, %i.e
  br label %max_nbits.exit

max_nbits.exit:                                   ; preds = %max_nbits.exit.loopexit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.f, %max_nbits.exit.loopexit ] ; 2 uses
  %i.g = icmp eq i32 %2, 0
  br i1 %i.g, label %put_bits.exit, label %bb.b

bb.b:                                             ; preds = %max_nbits.exit
  %i.h = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %i.i = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.h, i1 true)
  %i.j = sub nuw nsw i32 33, %i.i
  %i.k = tail call i32 @llvm.umax.i32(i32 %.0, i32 %i.j)
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.b, %max_nbits.exit
  %.1 = phi i32 [ %.0, %max_nbits.exit ], [ %i.k, %bb.b ] ; 20 uses
  %notmask = shl nsw i32 -1, %.1
  %i.l = xor i32 %notmask, -1                     ; 2 uses
  %i.m = icmp samesign ult i32 %.1, 27
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %put_bits.exit
  %i.n = shl nuw nsw i32 %.1, %.1
  br label %put_bits.exit21

bb.d:                                             ; preds = %put_bits.exit
  %i.o = shl nuw nsw i32 %.1, 3
  %i.p = and i32 %i.o, 248
  store i32 %i.p, ptr %i.a, align 16, !tbaa !61
  br label %put_bits.exit21

put_bits.exit21:                                  ; preds = %bb.c, %bb.d
  %.sroa.36.3.idx.sroa.phi = phi ptr [ %i.a, %bb.c ], [ %.sroa.36.3.idx.sroa.gep77, %bb.d ] ; 2 uses
  %.sroa.36.3.idx = phi i64 [ 0, %bb.c ], [ 4, %bb.d ] ; 3 uses
  %.026.i.i19 = phi i32 [ %i.n, %bb.c ], [ 0, %bb.d ] ; 2 uses
  %.pn = phi i32 [ 27, %bb.c ], [ 59, %bb.d ]
  %.0.i.i20 = sub nsw i32 %.pn, %.1               ; 5 uses
  %i.q = and i32 %1, %i.l                         ; 3 uses
  %i.r = icmp slt i32 %.1, %.0.i.i20
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %put_bits.exit21
  %i.s = shl i32 %.026.i.i19, %.1
  %i.t = or i32 %i.s, %i.q
  %i.u = sub nsw i32 %.0.i.i20, %.1
  br label %put_bits.exit25

bb.f:                                             ; preds = %put_bits.exit21
  %i.v = ptrtoint ptr %i.b to i64
  %i.w = ptrtoint ptr %.sroa.36.3.idx.sroa.phi to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ugt i64 %i.x, 3
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = shl i32 %.026.i.i19, %.0.i.i20
  %i.aa = sub nsw i32 %.1, %.0.i.i20
  %i.ab = lshr i32 %i.q, %i.aa
  %i.ac = or i32 %i.ab, %i.z
  %i.ad = call i32 @llvm.bswap.i32(i32 %i.ac)
  store i32 %i.ad, ptr %.sroa.36.3.idx.sroa.phi, align 1, !tbaa !61
  %.sroa.36.3.add = add nuw nsw i64 %.sroa.36.3.idx, 4
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.13) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.36.4.idx = phi i64 [ %.sroa.36.3.add, %bb.g ], [ %.sroa.36.3.idx, %bb.h ]
  %reass.sub = sub nsw i32 %.0.i.i20, %.1
  %i.ae = add nsw i32 %reass.sub, 32
  br label %put_bits.exit25

put_bits.exit25:                                  ; preds = %bb.e, %bb.i
  %.sroa.36.5.idx = phi i64 [ %.sroa.36.3.idx, %bb.e ], [ %.sroa.36.4.idx, %bb.i ] ; 3 uses
  %.026.i.i23 = phi i32 [ %i.t, %bb.e ], [ %i.q, %bb.i ] ; 2 uses
  %.0.i.i24 = phi i32 [ %i.u, %bb.e ], [ %i.ae, %bb.i ] ; 4 uses
  %i.af = icmp slt i32 %.1, %.0.i.i24
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %put_bits.exit25
  %i.ag = shl i32 %.026.i.i23, %.1
  %i.ah = sub nsw i32 %.0.i.i24, %.1
  br label %put_bits.exit29

bb.k:                                             ; preds = %put_bits.exit25
  %.sroa.36.5.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.36.5.idx
  %i.ai = shl i32 %.026.i.i23, %.0.i.i24
  %i.aj = call i32 @llvm.bswap.i32(i32 %i.ai)
  store i32 %i.aj, ptr %.sroa.36.5.ptr, align 1, !tbaa !61
  %.sroa.36.5.add = add nuw nsw i64 %.sroa.36.5.idx, 4
  %reass.sub70 = sub nsw i32 %.0.i.i24, %.1
  %i.ak = add nsw i32 %reass.sub70, 32
  br label %put_bits.exit29

put_bits.exit29:                                  ; preds = %bb.j, %bb.k
  %.sroa.36.7.idx = phi i64 [ %.sroa.36.5.idx, %bb.j ], [ %.sroa.36.5.add, %bb.k ] ; 3 uses
  %.026.i.i27 = phi i32 [ %i.ag, %bb.j ], [ 0, %bb.k ] ; 2 uses
  %.0.i.i28 = phi i32 [ %i.ah, %bb.j ], [ %i.ak, %bb.k ] ; 5 uses
  %i.al = and i32 %2, %i.l                        ; 3 uses
  %i.am = icmp slt i32 %.1, %.0.i.i28
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %put_bits.exit29
  %i.an = shl i32 %.026.i.i27, %.1
  %i.ao = or i32 %i.an, %i.al
  %i.ap = sub nsw i32 %.0.i.i28, %.1
  br label %put_bits.exit33

bb.m:                                             ; preds = %put_bits.exit29
  %.sroa.36.7.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.36.7.idx
  %i.aq = shl i32 %.026.i.i27, %.0.i.i28
  %i.ar = sub nsw i32 %.1, %.0.i.i28
  %i.as = lshr i32 %i.al, %i.ar
  %i.at = or i32 %i.as, %i.aq
  %i.au = call i32 @llvm.bswap.i32(i32 %i.at)
  store i32 %i.au, ptr %.sroa.36.7.ptr, align 1, !tbaa !61
  %.sroa.36.7.add = add nuw nsw i64 %.sroa.36.7.idx, 4
  %reass.sub71 = sub nsw i32 %.0.i.i28, %.1
  %i.av = add nsw i32 %reass.sub71, 32
  br label %put_bits.exit33

put_bits.exit33:                                  ; preds = %bb.l, %bb.m
  %.sroa.36.9.idx = phi i64 [ %.sroa.36.7.idx, %bb.l ], [ %.sroa.36.7.add, %bb.m ] ; 2 uses
  %.026.i.i31 = phi i32 [ %i.ao, %bb.l ], [ %i.al, %bb.m ]
  %.0.i.i32 = phi i32 [ %i.ap, %bb.l ], [ %i.av, %bb.m ] ; 3 uses
  %i.aw = icmp slt i32 %.0.i.i32, 32
  br i1 %i.aw, label %.lr.ph.i, label %flush_put_bits.exit

.lr.ph.i:                                         ; preds = %put_bits.exit33
  %i.ax = shl i32 %.026.i.i31, %.0.i.i32
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph.i, %bb.n
  %.sroa.36.10.idx.a = phi i64 [ %.sroa.36.9.idx, %.lr.ph.i ], [ %.sroa.36.10.add, %bb.n ] ; 2 uses
  %.sroa.19.0 = phi i32 [ %.0.i.i32, %.lr.ph.i ], [ %3, %bb.n ] ; 2 uses
  %.sroa.0.0 = phi i32 [ %i.ax, %.lr.ph.i ], [ %i.ba, %bb.n ] ; 2 uses
  %.sroa.36.10.ptr.a = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.36.10.idx.a
  %i.ay = lshr i32 %.sroa.0.0, 24
  %i.az = trunc nuw i32 %i.ay to i8
  %.sroa.36.10.add = add nuw nsw i64 %.sroa.36.10.idx.a, 1 ; 2 uses
  store i8 %i.az, ptr %.sroa.36.10.ptr.a, align 1, !tbaa !61
  %i.ba = shl i32 %.sroa.0.0, 8
  %3 = add nsw i32 %.sroa.19.0, 8
  %4 = icmp slt i32 %.sroa.19.0, 24
  br i1 %4, label %bb.n, label %flush_put_bits.exit, !llvm.loop !0

flush_put_bits.exit:                              ; preds = %bb.n, %put_bits.exit33
  %.sroa.36.9.idx.pn = phi i64 [ %.sroa.36.9.idx, %put_bits.exit33 ], [ %.sroa.36.10.add, %bb.n ]
  %i.bb = trunc i64 %.sroa.36.9.idx.pn to i32
  call void @avio_write(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.bb) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

declare void @avio_wl16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @put_swf_end_tag(ptr nofree readonly captures(none) %.24.val, ptr %.32.val) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @avio_seek(ptr noundef %.32.val, i64 noundef 0, i32 noundef 1) #7 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.24.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %i.d = sub nsw i64 %i.a, %i.c
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = add i32 %i.e, -2                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.24.val, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !55   ; 3 uses
  %i.i = tail call i64 @avio_seek(ptr noundef %.32.val, i64 noundef %i.c, i32 noundef 0) #7 ; 0 uses
  %i.j = and i32 %i.h, 256
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = shl i32 %i.h, 6
  %i.l = and i32 %i.k, -16448
  %i.m = or disjoint i32 %i.l, 63
  tail call void @avio_wl16(ptr noundef %.32.val, i32 noundef %i.m) #7
  %i.n = add i32 %i.e, -6
  tail call void @avio_wl32(ptr noundef %.32.val, i32 noundef %i.n) #7
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.o = icmp slt i32 %i.f, 63
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 81) #7
  tail call void @abort() #9
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = shl i32 %i.h, 6
  %i.q = or i32 %i.f, %i.p
  tail call void @avio_wl16(ptr noundef %.32.val, i32 noundef %i.q) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.r = tail call i64 @avio_seek(ptr noundef %.32.val, i64 noundef %i.a, i32 noundef 0) #7 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @put_swf_matrix(ptr noundef %0, i32 noundef range(i32 65536, 1310721) %1, i32 noundef range(i32 65536, 1310721) %2) unnamed_addr #0 {
put_bits.exit:
  %i.a = alloca [256 x i8], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.sroa.60.5.idx.sroa.gep136 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %put_bits.exit
  %.013.i = phi i32 [ 1, %put_bits.exit ], [ %i.b, %bb.a ] ; 2 uses
  %.01012.i = phi i32 [ %1, %put_bits.exit ], [ %i.c, %bb.a ]
  %i.b = add nuw nsw i32 %.013.i, 1               ; 2 uses
  %i.c = lshr i32 %.01012.i, 1                    ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %max_nbits.exit, label %bb.a, !llvm.loop !83

max_nbits.exit:                                   ; preds = %bb.a, %max_nbits.exit
  %.013.i13 = phi i32 [ %i.d, %max_nbits.exit ], [ 1, %bb.a ] ; 2 uses
  %.01012.i14 = phi i32 [ %i.e, %max_nbits.exit ], [ %2, %bb.a ]
  %i.d = add nuw nsw i32 %.013.i13, 1             ; 2 uses
  %i.e = lshr i32 %.01012.i14, 1                  ; 2 uses
  %.not.i15 = icmp eq i32 %i.e, 0
  br i1 %.not.i15, label %put_bits.exit21, label %max_nbits.exit, !llvm.loop !83

put_bits.exit21:                                  ; preds = %max_nbits.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %.not14.i16.not = icmp samesign ugt i32 %.013.i13, %.013.i
  %spec.select = select i1 %.not14.i16.not, i32 %i.d, i32 %i.b ; 10 uses
  %i.g = or i32 %spec.select, 32                  ; 2 uses
  %i.h = icmp samesign ult i32 %spec.select, 26
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %put_bits.exit21
  %i.i = shl i32 %i.g, %spec.select
  %i.j = or i32 %i.i, %1
  br label %put_bits.exit25

bb.c:                                             ; preds = %put_bits.exit21
  %i.k = shl i32 %i.g, 26
  %i.l = add nsw i32 %spec.select, -26
  %i.m = lshr i32 %1, %i.l
  %i.n = or disjoint i32 %i.m, %i.k
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  store i32 %i.o, ptr %i.a, align 16, !tbaa !61
  br label %put_bits.exit25

put_bits.exit25:                                  ; preds = %bb.b, %bb.c
  %.sroa.60.5.idx.sroa.phi = phi ptr [ %i.a, %bb.b ], [ %.sroa.60.5.idx.sroa.gep136, %bb.c ] ; 2 uses
  %.sroa.60.5.idx = phi i64 [ 0, %bb.b ], [ 4, %bb.c ] ; 3 uses
  %.026.i.i23 = phi i32 [ %i.j, %bb.b ], [ %1, %bb.c ] ; 2 uses
  %.pn = phi i32 [ 26, %bb.b ], [ 58, %bb.c ]
  %.0.i.i24 = sub nsw i32 %.pn, %spec.select      ; 5 uses
  %i.p = icmp slt i32 %spec.select, %.0.i.i24
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %put_bits.exit25
  %i.q = shl i32 %.026.i.i23, %spec.select
  %i.r = or i32 %i.q, %2
  %i.s = sub nuw nsw i32 %.0.i.i24, %spec.select
  br label %put_bits.exit29

bb.e:                                             ; preds = %put_bits.exit25
  %i.t = ptrtoint ptr %i.f to i64
  %i.u = ptrtoint ptr %.sroa.60.5.idx.sroa.phi to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp ugt i64 %i.v, 3
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = shl i32 %.026.i.i23, %.0.i.i24
  %i.y = sub nsw i32 %spec.select, %.0.i.i24
  %i.z = lshr i32 %2, %i.y
  %i.aa = or i32 %i.z, %i.x
  %i.ab = call i32 @llvm.bswap.i32(i32 %i.aa)
  store i32 %i.ab, ptr %.sroa.60.5.idx.sroa.phi, align 1, !tbaa !61
  %.sroa.60.5.add = add nuw nsw i64 %.sroa.60.5.idx, 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.13) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.60.6.idx = phi i64 [ %.sroa.60.5.add, %bb.f ], [ %.sroa.60.5.idx, %bb.g ]
  %reass.sub = sub i32 %.0.i.i24, %spec.select
  %i.ac = add i32 %reass.sub, 32
  br label %put_bits.exit29

put_bits.exit29:                                  ; preds = %bb.d, %bb.h
  %.sroa.60.7.idx = phi i64 [ %.sroa.60.5.idx, %bb.d ], [ %.sroa.60.6.idx, %bb.h ] ; 3 uses
  %.026.i.i27 = phi i32 [ %i.r, %bb.d ], [ %2, %bb.h ] ; 2 uses
  %.0.i.i28 = phi i32 [ %i.s, %bb.d ], [ %i.ac, %bb.h ] ; 4 uses
  %i.ad = icmp sgt i32 %.0.i.i28, 1
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %put_bits.exit29
  %i.ae = shl i32 %.026.i.i27, 1
  %i.af = or disjoint i32 %i.ae, 1
  br label %put_bits.exit33

bb.j:                                             ; preds = %put_bits.exit29
  %.sroa.60.7.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.60.7.idx
  %i.ag = shl i32 %.026.i.i27, %.0.i.i28
  %i.ah = icmp eq i32 %.0.i.i28, 1
  %i.ai = zext i1 %i.ah to i32
  %i.aj = or i32 %i.ag, %i.ai
  %i.ak = call i32 @llvm.bswap.i32(i32 %i.aj)
  store i32 %i.ak, ptr %.sroa.60.7.ptr, align 1, !tbaa !61
  %.sroa.60.7.add = add nuw nsw i64 %.sroa.60.7.idx, 4
  br label %put_bits.exit33

put_bits.exit33:                                  ; preds = %bb.i, %bb.j
  %.sink = phi i32 [ -1, %bb.i ], [ 31, %bb.j ]
  %.sroa.60.9.idx = phi i64 [ %.sroa.60.7.idx, %bb.i ], [ %.sroa.60.7.add, %bb.j ] ; 3 uses
  %.026.i.i31 = phi i32 [ %i.af, %bb.i ], [ 1, %bb.j ] ; 2 uses
  %i.al = add nsw i32 %.0.i.i28, %.sink           ; 4 uses
  %i.am = icmp sgt i32 %i.al, 5
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %put_bits.exit33
  %i.an = shl i32 %.026.i.i31, 5
  %i.ao = or disjoint i32 %i.an, 1
  br label %put_bits.exit37

bb.l:                                             ; preds = %put_bits.exit33
  %.sroa.60.9.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.60.9.idx
  %i.ap = shl i32 %.026.i.i31, %i.al
  %i.aq = icmp eq i32 %i.al, 5
  %i.ar = zext i1 %i.aq to i32
  %i.as = or i32 %i.ap, %i.ar
  %i.at = call i32 @llvm.bswap.i32(i32 %i.as)
  store i32 %i.at, ptr %.sroa.60.9.ptr, align 1, !tbaa !61
  %.sroa.60.9.add = add nuw nsw i64 %.sroa.60.9.idx, 4
  br label %put_bits.exit37

put_bits.exit37:                                  ; preds = %bb.k, %bb.l
  %.sink144 = phi i32 [ -5, %bb.k ], [ 27, %bb.l ]
  %.sroa.60.11.idx = phi i64 [ %.sroa.60.9.idx, %bb.k ], [ %.sroa.60.9.add, %bb.l ] ; 3 uses
  %.026.i.i35 = phi i32 [ %i.ao, %bb.k ], [ 1, %bb.l ] ; 2 uses
  %i.au = add nsw i32 %i.al, %.sink144            ; 3 uses
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %put_bits.exit37
  %i.aw = shl i32 %.026.i.i35, 1
  br label %put_bits.exit41

bb.n:                                             ; preds = %put_bits.exit37
  %.sroa.60.11.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.60.11.idx
  %i.ax = shl i32 %.026.i.i35, %i.au
  %i.ay = call i32 @llvm.bswap.i32(i32 %i.ax)
  store i32 %i.ay, ptr %.sroa.60.11.ptr, align 1, !tbaa !61
  %.sroa.60.11.add = add nuw nsw i64 %.sroa.60.11.idx, 4
  br label %put_bits.exit41

put_bits.exit41:                                  ; preds = %bb.m, %bb.n
  %.sink145 = phi i32 [ -1, %bb.m ], [ 31, %bb.n ]
  %.sroa.60.13.idx = phi i64 [ %.sroa.60.11.idx, %bb.m ], [ %.sroa.60.11.add, %bb.n ] ; 3 uses
  %.026.i.i39 = phi i32 [ %i.aw, %bb.m ], [ 0, %bb.n ] ; 2 uses
  %i.az = add nsw i32 %i.au, %.sink145            ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %put_bits.exit41
  %i.bb = shl i32 %.026.i.i39, 1
  br label %put_bits.exit45

bb.p:                                             ; preds = %put_bits.exit41
  %.sroa.60.13.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.60.13.idx
  %i.bc = shl i32 %.026.i.i39, %i.az
  %i.bd = call i32 @llvm.bswap.i32(i32 %i.bc)
  store i32 %i.bd, ptr %.sroa.60.13.ptr, align 1, !tbaa !61
  %.sroa.60.13.add = add nuw nsw i64 %.sroa.60.13.idx, 4
  br label %put_bits.exit45

put_bits.exit45:                                  ; preds = %bb.o, %bb.p
  %.sink146 = phi i32 [ -1, %bb.o ], [ 31, %bb.p ]
  %.sroa.60.15.idx = phi i64 [ %.sroa.60.13.idx, %bb.o ], [ %.sroa.60.13.add, %bb.p ] ; 3 uses
  %.026.i.i43 = phi i32 [ %i.bb, %bb.o ], [ 0, %bb.p ] ; 2 uses
  %i.be = add nsw i32 %i.az, %.sink146            ; 4 uses
  %i.bf = icmp sgt i32 %i.be, 5
  br i1 %i.bf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %put_bits.exit45
  %i.bg = shl i32 %.026.i.i43, 5
  %i.bh = or disjoint i32 %i.bg, 1
  br label %put_bits.exit49

bb.r:                                             ; preds = %put_bits.exit45
  %.sroa.60.15.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.60.15.idx
  %i.bi = shl i32 %.026.i.i43, %i.be
  %i.bj = icmp eq i32 %i.be, 5
  %i.bk = zext i1 %i.bj to i32
  %i.bl = or disjoint i32 %i.bi, %i.bk
  %i.bm = call i32 @llvm.bswap.i32(i32 %i.bl)
  store i32 %i.bm, ptr %.sroa.60.15.ptr, align 1, !tbaa !61
  %.sroa.60.15.add = add nuw nsw i64 %.sroa.60.15.idx, 4
  br label %put_bits.exit49

put_bits.exit49:                                  ; preds = %bb.q, %bb.r
  %.sink147 = phi i32 [ -5, %bb.q ], [ 27, %bb.r ]
  %.sroa.60.17.idx = phi i64 [ %.sroa.60.15.idx, %bb.q ], [ %.sroa.60.15.add, %bb.r ] ; 3 uses
  %.026.i.i47 = phi i32 [ %i.bh, %bb.q ], [ 1, %bb.r ] ; 2 uses
  %i.bn = add nsw i32 %i.be, %.sink147            ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.s, label %bb.t

bb.s:                                             ; preds = %put_bits.exit49
  %i.bp = shl i32 %.026.i.i47, 1
  br label %put_bits.exit53

bb.t:                                             ; preds = %put_bits.exit49
  %.sroa.60.17.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.60.17.idx
  %i.bq = shl i32 %.026.i.i47, %i.bn
  %i.br = call i32 @llvm.bswap.i32(i32 %i.bq)
  store i32 %i.br, ptr %.sroa.60.17.ptr, align 1, !tbaa !61
  %.sroa.60.17.add = add nuw nsw i64 %.sroa.60.17.idx, 4
  br label %put_bits.exit53

put_bits.exit53:                                  ; preds = %bb.s, %bb.t
  %.sink148 = phi i32 [ -1, %bb.s ], [ 31, %bb.t ]
  %.sroa.60.19.idx = phi i64 [ %.sroa.60.17.idx, %bb.s ], [ %.sroa.60.17.add, %bb.t ] ; 3 uses
  %.026.i.i51 = phi i32 [ %i.bp, %bb.s ], [ 0, %bb.t ] ; 2 uses
end_hunk_0
begin_hunk_1_@swf_write_video:bb.a
  tail call fastcc void @put_swf_matrix(ptr noundef %i.e, i32 noundef 1310720, i32 noundef 1310720)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.o
  %.val112 = load ptr, ptr %i.b, align 8, !tbaa !26
  %.val113 = load ptr, ptr %i.d, align 8, !tbaa !27
  tail call fastcc void @put_swf_end_tag(ptr %.val112, ptr %.val113)
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.j
  %i.bd = load i32, ptr %i.i, align 8, !tbaa !33
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.i, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !47
  %.not87 = icmp eq ptr %i.bg, null
  br i1 %.not87, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !48
  %i.bj = tail call i64 @av_fifo_can_read(ptr noundef %i.bi) #7
  %.not88 = icmp eq i64 %i.bj, 0
  br i1 %.not88, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !48
  %i.bl = tail call i64 @av_fifo_can_read(ptr noundef %i.bk) #7
  store i64 %i.bl, ptr %i.a, align 8, !tbaa !63
  %.val90 = load ptr, ptr %i.b, align 8, !tbaa !26 ; 2 uses
  %.val91 = load ptr, ptr %i.d, align 8, !tbaa !27 ; 3 uses
  %i.bm = tail call i64 @avio_seek(ptr noundef %.val91, i64 noundef 0, i32 noundef 1) #7
  %i.bn = getelementptr inbounds nuw i8, ptr %.val90, i64 8
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !54
  %i.bo = getelementptr inbounds nuw i8, ptr %.val90, i64 40
  store i32 275, ptr %i.bo, align 8, !tbaa !55
  tail call void @avio_wl16(ptr noundef %.val91, i32 noundef 0) #7
  tail call void @avio_wl32(ptr noundef %.val91, i32 noundef 0) #7
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !32
  tail call void @avio_wl16(ptr noundef %i.e, i32 noundef %i.bq) #7
  tail call void @avio_wl16(ptr noundef %i.e, i32 noundef 0) #7
  %i.br = load ptr, ptr %i.bh, align 8, !tbaa !48
  %i.bs = call i32 @av_fifo_read_to_cb(ptr noundef %i.br, ptr noundef nonnull @fifo_avio_wrapper, ptr noundef %i.e, ptr noundef nonnull %i.a) #7 ; 0 uses
  %.val110 = load ptr, ptr %i.b, align 8, !tbaa !26
  %.val111 = load ptr, ptr %i.d, align 8, !tbaa !27
  call fastcc void @put_swf_end_tag(ptr %.val110, ptr %.val111)
  store i32 0, ptr %i.bp, align 4, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.val = load ptr, ptr %i.b, align 8, !tbaa !26  ; 2 uses
  %.val89 = load ptr, ptr %i.d, align 8, !tbaa !27 ; 2 uses
  %i.bt = call i64 @avio_seek(ptr noundef %.val89, i64 noundef 0, i32 noundef 1) #7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !54
  %i.bv = getelementptr inbounds nuw i8, ptr %.val, i64 40
  store i32 1, ptr %i.bv, align 8, !tbaa !55
  call void @avio_wl16(ptr noundef %.val89, i32 noundef 0) #7
  %.val108 = load ptr, ptr %i.b, align 8, !tbaa !26
  %.val109 = load ptr, ptr %i.d, align 8, !tbaa !27
  call fastcc void @put_swf_end_tag(ptr %.val108, ptr %.val109)
  ret void
}

declare i64 @av_fifo_can_write(ptr noundef) local_unnamed_addr #2

declare i32 @av_fifo_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @av_get_audio_frame_duration2(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @avio_wb32(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @av_fifo_can_read(ptr noundef) local_unnamed_addr #2

declare i32 @av_fifo_read_to_cb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @fifo_avio_wrapper(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !63
  %i.b = trunc i64 %i.a to i32
  tail call void @avio_write(ptr noundef %0, ptr noundef %1, i32 noundef %i.b) #7
  ret i32 0
}

declare void @av_fifo_freep2(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !50}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"override-stack-alignment", i32 16}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS7AVClass", !10, i64 0}
!12 = !{!"p1 _ZTS13AVInputFormat", !10, i64 0}
!13 = !{!"p1 _ZTS14AVOutputFormat", !10, i64 0}
!14 = !{!"p1 _ZTS11AVIOContext", !10, i64 0}
!15 = !{!"any p2 pointer", !10, i64 0}
!16 = !{!"p2 _ZTS8AVStream", !15, i64 0}
!17 = !{!"p2 _ZTS13AVStreamGroup", !15, i64 0}
!18 = !{!"p2 _ZTS9AVChapter", !15, i64 0}
!19 = !{!"p1 omnipotent char", !10, i64 0}
!20 = !{!"long", !6, i64 0}
!21 = !{!"p2 _ZTS9AVProgram", !15, i64 0}
!22 = !{!"p1 _ZTS12AVDictionary", !10, i64 0}
!23 = !{!"AVIOInterruptCB", !10, i64 0, !10, i64 8}
!24 = !{!"p1 _ZTS7AVCodec", !10, i64 0}
!25 = !{!"AVFormatContext", !11, i64 0, !12, i64 8, !13, i64 16, !10, i64 24, !14, i64 32, !7, i64 40, !7, i64 44, !16, i64 48, !7, i64 56, !17, i64 64, !7, i64 72, !18, i64 80, !19, i64 88, !20, i64 96, !20, i64 104, !20, i64 112, !7, i64 120, !7, i64 124, !7, i64 128, !20, i64 136, !20, i64 144, !19, i64 152, !7, i64 160, !7, i64 164, !21, i64 168, !7, i64 176, !7, i64 180, !7, i64 184, !7, i64 188, !22, i64 192, !20, i64 200, !7, i64 208, !7, i64 212, !23, i64 216, !7, i64 232, !7, i64 236, !7, i64 240, !7, i64 244, !20, i64 248, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !7, i64 296, !7, i64 300, !20, i64 304, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !7, i64 328, !19, i64 336, !19, i64 344, !19, i64 352, !19, i64 360, !7, i64 368, !24, i64 376, !24, i64 384, !24, i64 392, !24, i64 400, !7, i64 408, !10, i64 416, !10, i64 424, !20, i64 432, !19, i64 440, !10, i64 448, !10, i64 456, !20, i64 464, !19, i64 472}
!26 = !{!25, !10, i64 24}
!27 = !{!25, !14, i64 32}
!28 = !{!"p1 _ZTS6AVFifo", !10, i64 0}
!29 = !{!"p1 _ZTS17AVCodecParameters", !10, i64 0}
!30 = !{!"p1 _ZTS8AVStream", !10, i64 0}
!31 = !{!"SWFEncContext", !20, i64 0, !20, i64 8, !20, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !28, i64 48, !29, i64 56, !29, i64 64, !30, i64 72}
!32 = !{!31, !7, i64 28}
!33 = !{!31, !7, i64 32}
!34 = !{!31, !7, i64 36}
!35 = !{!25, !16, i64 48}
!36 = !{!30, !30, i64 0}
!37 = !{!"AVRational", !7, i64 0, !7, i64 4}
!38 = !{!"p1 _ZTS11AVBufferRef", !10, i64 0}
!39 = !{!"p1 _ZTS16AVPacketSideData", !10, i64 0}
!40 = !{!"AVPacket", !38, i64 0, !20, i64 8, !20, i64 16, !19, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !39, i64 48, !7, i64 56, !20, i64 64, !20, i64 72, !10, i64 80, !38, i64 88, !37, i64 96}
!41 = !{!"AVStream", !11, i64 0, !7, i64 8, !7, i64 12, !29, i64 16, !10, i64 24, !37, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !7, i64 64, !7, i64 68, !37, i64 72, !22, i64 80, !37, i64 88, !40, i64 96, !7, i64 200, !37, i64 204, !7, i64 212}
!42 = !{!41, !29, i64 16}
!43 = !{!"AVChannelLayout", !7, i64 0, !7, i64 4, !6, i64 8, !10, i64 16}
!44 = !{!"AVCodecParameters", !7, i64 0, !7, i64 4, !7, i64 8, !19, i64 16, !7, i64 24, !39, i64 32, !7, i64 40, !7, i64 44, !20, i64 48, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !37, i64 80, !37, i64 88, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !43, i64 128, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176}
!45 = !{!44, !7, i64 0}
!46 = !{!44, !7, i64 4}
!47 = !{!31, !29, i64 56}
!48 = !{!31, !28, i64 48}
!49 = !{!31, !29, i64 64}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!44, !7, i64 72}
!52 = !{!44, !7, i64 76}
!53 = !{!31, !20, i64 0}
!54 = !{!31, !20, i64 8}
!55 = !{!31, !7, i64 40}
!56 = !{!"PutBitContext", !7, i64 0, !7, i64 4, !19, i64 8, !19, i64 16, !19, i64 24}
!57 = !{!56, !19, i64 24}
!58 = !{!56, !19, i64 16}
!59 = !{!56, !7, i64 0}
!60 = !{!56, !7, i64 4}
!61 = !{!6, !6, i64 0}
!62 = !{!31, !20, i64 16}
!63 = !{!20, !20, i64 0}
!64 = distinct !{!64, !50}
!65 = !{!25, !7, i64 44}
!66 = !{!31, !30, i64 72}
!67 = !{!41, !7, i64 36}
!68 = !{!41, !7, i64 32}
!69 = !{!44, !7, i64 152}
!70 = !{!31, !7, i64 24}
!71 = !{!25, !13, i64 16}
!72 = !{!"p2 _ZTS10AVCodecTag", !15, i64 0}
!73 = !{!"AVOutputFormat", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !72, i64 48, !11, i64 56}
!74 = !{!73, !19, i64 0}
!75 = !{!56, !19, i64 8}
!76 = !{!44, !7, i64 132}
!77 = !{!40, !7, i64 36}
!78 = !{!40, !19, i64 24}
!79 = !{!40, !7, i64 32}
!80 = !{!40, !7, i64 40}
!81 = !{!"AVIOContext", !11, i64 0, !19, i64 8, !7, i64 16, !19, i64 24, !19, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !20, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !20, i64 104, !19, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !7, i64 144, !7, i64 148, !19, i64 152, !19, i64 160, !10, i64 168, !7, i64 176, !19, i64 184, !20, i64 192, !20, i64 200}
!82 = !{!81, !7, i64 144}
!83 = distinct !{!83, !50}
end_hunk_1
