Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mov?download=true
inline.NumInlined: 191
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@mov_read_hfov:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.h = add i32 %i.d, -1
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57   ; 2 uses
  %.not = icmp eq i64 %3, 4
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.326, i64 noundef %3) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1512 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !242
  %.not15 = icmp eq ptr %i.o, null
  br i1 %.not15, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1520
  %i.q = tail call ptr @av_stereo3d_alloc_size(ptr noundef nonnull %i.p) #16 ; 2 uses
  store ptr %i.q, ptr %i.n, align 8, !tbaa !242
  %.not16 = icmp eq ptr %i.q, null
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = tail call i32 @avio_rb32(ptr noundef %1) #16
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !242  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  store i32 %i.r, ptr %i.t, align 4, !tbaa !665
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i32 1000, ptr %i.u, align 4, !tbaa !666
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.a, %bb.f, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ -1094995529, %bb.c ], [ 0, %bb.f ], [ -12, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @mov_read_dops(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !47   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %3, -1073741825
  %or.cond = icmp ult i64 %i.f, -1073741814
  br i1 %or.cond, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = add i32 %i.d, -1
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 11 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !122
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i32 @avio_r8(ptr noundef %1) #16
  %.not39 = icmp eq i32 %i.q, 0
  br i1 %.not39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.r, i32 noundef 16, ptr noundef nonnull @.str.327) #16
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.t = trunc nuw nsw i64 %3 to i32              ; 2 uses
  %i.u = add nuw nsw i32 %i.t, 8
  %i.v = tail call i32 @ff_alloc_extradata(ptr noundef %i.s, i32 noundef %i.u) #16 ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !122
  store i32 1937076303, ptr %i.z, align 4, !tbaa !94
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !122
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 1684104520, ptr %i.ad, align 4, !tbaa !94
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !122
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i8 1, ptr %i.ah, align 1, !tbaa !94
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !122
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 9
  %i.am = add nsw i32 %i.t, -1
  %i.an = tail call i32 @ffio_read_size(ptr noundef %1, ptr noundef nonnull %i.al, i32 noundef %i.am) #16 ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @av_freep(ptr noundef nonnull %i.aq) #16
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i32 0, ptr %i.as, align 8, !tbaa !127
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !122
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 10 ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !94
  %i.aw = tail call i16 @llvm.bswap.i16(i16 %i.av) ; 2 uses
  store i16 %i.aw, ptr %i.au, align 2, !tbaa !94
  %i.ax = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !122
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !94
  %i.bc = tail call i32 @llvm.bswap.i32(i32 %i.bb)
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !94
  %i.bd = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !122
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !94
  %i.bi = tail call i16 @llvm.bswap.i16(i16 %i.bh)
  store i16 %i.bi, ptr %i.bg, align 2, !tbaa !94
  %i.bj = zext i16 %i.aw to i32
  %i.bk = load ptr, ptr %i.m, align 8, !tbaa !60  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 164
  store i32 %i.bj, ptr %i.bl, align 4, !tbaa !230
  %i.bm = tail call i64 @av_rescale_q(i64 noundef 80, i64 4294967296001, i64 206158430208001) #19
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 172
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !667
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.b, %bb.c, %bb.a, %bb.i, %bb.h, %bb.e
  %.0 = phi i32 [ 0, %bb.i ], [ 0, %bb.a ], [ -1094995529, %bb.e ], [ -1094995529, %bb.b ], [ %i.an, %bb.h ], [ -1094995529, %bb.c ], [ %i.v, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @mov_read_dmlp(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !47   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %3, 10
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = add i32 %i.d, -1
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.m = tail call i32 @avio_rb32(ptr noundef %1) #16 ; 4 uses
  %i.n = lshr i32 %i.m, 28                        ; 2 uses
  %i.o = and i32 %i.m, 8191                       ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  %i.p = lshr i32 %i.m, 15
  %i.q = and i32 %i.p, 31
  %.0 = select i1 %.not, i32 %i.q, i32 %i.o       ; 8 uses
  %i.r = and i32 %i.n, 7                          ; 2 uses
  %i.s = shl nuw nsw i32 40, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !60   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  store i32 %i.s, ptr %i.v, align 8, !tbaa !415
  %i.w = icmp eq i32 %i.n, 15
  %.not.i = icmp sgt i32 %i.m, -1
  %i.x = select i1 %.not.i, i32 48000, i32 44100
  %i.y = shl nuw nsw i32 %i.x, %i.r
  %.0.i = select i1 %i.w, i32 0, i32 %i.y
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  store i32 %.0.i, ptr %i.z, align 8, !tbaa !102
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.aa) #16
  %4 = trunc i32 %.0 to i1
  %narrow.i = select i1 %4, i64 3, i64 0
  %i.ab = shl nuw nsw i32 %.0, 1                  ; 2 uses
  %i.ac = and i32 %i.ab, 4
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = insertelement <4 x i32> poison, i32 %.0, i64 0
  %i.af = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ag = and <4 x i32> %i.af, <i32 8, i32 16, i32 32, i32 64>
  %i.ah = icmp eq <4 x i32> %i.ag, zeroinitializer
  %i.ai = select <4 x i1> %i.ah, <4 x i64> zeroinitializer, <4 x i64> <i64 1536, i64 20480, i64 192, i64 48>
  %i.aj = shl nuw nsw i32 %.0, 3
  %i.ak = and i32 %i.aj, 2048
  %i.al = lshr i32 %.0, 9
  %i.am = and i32 %i.al, 1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = mul nuw nsw i64 %i.an, 25769803776
  %i.ap = lshr i32 %.0, 10
  %i.aq = and i32 %i.ap, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = mul nuw nsw i64 %i.ar, 6442450944
  %i.at = shl nuw nsw i32 %.0, 2
  %i.au = and i32 %i.at, 8192
  %i.av = lshr i32 %.0, 12
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 35
  %i.ay = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.ai)
  %op.rdx = or disjoint i64 %i.ay, %i.ad
  %op.rdx2331 = and i32 %i.ab, 264
  %op.rdx23 = zext nneg i32 %op.rdx2331 to i64
  %op.rdx2432 = or disjoint i32 %i.ak, %i.au
  %op.rdx24 = zext nneg i32 %op.rdx2432 to i64
  %op.rdx25 = or disjoint i64 %narrow.i, %i.ao
  %op.rdx26 = or disjoint i64 %i.as, %i.ax
  %op.rdx27 = or disjoint i64 %op.rdx, %op.rdx23
  %op.rdx28 = or disjoint i64 %op.rdx25, %op.rdx24
  %op.rdx29 = or disjoint i64 %op.rdx27, %op.rdx28
  %op.rdx30 = or i64 %op.rdx29, %op.rdx26
  %i.az = load ptr, ptr %i.t, align 8, !tbaa !60
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  %i.bb = tail call i32 @av_channel_layout_from_mask(ptr noundef nonnull %i.ba, i64 noundef %op.rdx30) #16 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.018 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ -1094995529, %bb.b ]
  ret i32 %.018
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @mov_read_smdm(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !47   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.h = add i32 %i.d, -1
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57   ; 2 uses
  %i.n = icmp slt i64 %3, 5
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.328) #16
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.o = tail call i32 @avio_r8(ptr noundef %1) #16 ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.p, i32 noundef 24, ptr noundef nonnull @.str.329, i32 noundef %i.o) #16
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 1544 ; 12 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !244
  %.not41 = icmp eq ptr %i.r, null
  br i1 %.not41, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.s, i32 noundef 24, ptr noundef nonnull @.str.330) #16
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.t = tail call i64 @avio_skip(ptr noundef %1, i64 noundef 3) #16 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 1552
  %i.v = tail call ptr @av_mastering_display_metadata_alloc_size(ptr noundef nonnull %i.u) #16 ; 3 uses
  store ptr %i.v, ptr %i.q, align 8, !tbaa !244
  %.not42 = icmp eq ptr %i.v, null
  br i1 %.not42, label %bb.i, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.h
  %i.w = tail call i32 @avio_rb16(ptr noundef %1) #16
  %.sroa.0.0.insert.ext.i = zext i32 %i.w to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 281474976710656
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.v, align 4, !tbaa !95
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !244
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = tail call i32 @avio_rb16(ptr noundef %1) #16
  %.sroa.0.0.insert.ext.i43 = zext i32 %i.z to i64
  %.sroa.0.0.insert.insert.i44 = or disjoint i64 %.sroa.0.0.insert.ext.i43, 281474976710656
  store i64 %.sroa.0.0.insert.insert.i44, ptr %i.y, align 4, !tbaa !95
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !244
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = tail call i32 @avio_rb16(ptr noundef %1) #16
  %.sroa.0.0.insert.ext.i.1 = zext i32 %i.ac to i64
  %.sroa.0.0.insert.insert.i.1 = or disjoint i64 %.sroa.0.0.insert.ext.i.1, 281474976710656
  store i64 %.sroa.0.0.insert.insert.i.1, ptr %i.ab, align 4, !tbaa !95
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !244
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = tail call i32 @avio_rb16(ptr noundef %1) #16
  %.sroa.0.0.insert.ext.i43.1 = zext i32 %i.af to i64
  %.sroa.0.0.insert.insert.i44.1 = or disjoint i64 %.sroa.0.0.insert.ext.i43.1, 281474976710656
  store i64 %.sroa.0.0.insert.insert.i44.1, ptr %i.ae, align 4, !tbaa !95
  %i.ag = load ptr, ptr %i.q, align 8, !tbaa !244
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = tail call i32 @avio_rb16(ptr noundef %1) #16
  %.sroa.0.0.insert.ext.i.2 = zext i32 %i.ai to i64
  %.sroa.0.0.insert.insert.i.2 = or disjoint i64 %.sroa.0.0.insert.ext.i.2, 281474976710656
  store i64 %.sroa.0.0.insert.insert.i.2, ptr %i.ah, align 4, !tbaa !95
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !244
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = tail call i32 @avio_rb16(ptr noundef %1) #16
  %.sroa.0.0.insert.ext.i43.2 = zext i32 %i.al to i64
  %.sroa.0.0.insert.insert.i44.2 = or disjoint i64 %.sroa.0.0.insert.ext.i43.2, 281474976710656
  store i64 %.sroa.0.0.insert.insert.i44.2, ptr %i.ak, align 4, !tbaa !95
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !244
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = tail call i32 @avio_rb16(ptr noundef %1) #16
  %.sroa.0.0.insert.ext.i45 = zext i32 %i.ao to i64
  %.sroa.0.0.insert.insert.i46 = or disjoint i64 %.sroa.0.0.insert.ext.i45, 281474976710656
  store i64 %.sroa.0.0.insert.insert.i46, ptr %i.an, align 4, !tbaa !95
  %i.ap = load ptr, ptr %i.q, align 8, !tbaa !244
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = tail call i32 @avio_rb16(ptr noundef %1) #16
  %.sroa.0.0.insert.ext.i47 = zext i32 %i.ar to i64
  %.sroa.0.0.insert.insert.i48 = or disjoint i64 %.sroa.0.0.insert.ext.i47, 281474976710656
  store i64 %.sroa.0.0.insert.insert.i48, ptr %i.aq, align 4, !tbaa !95
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !244
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = tail call i32 @avio_rb32(ptr noundef %1) #16
  %.sroa.0.0.insert.ext.i49 = zext i32 %i.au to i64
  %.sroa.0.0.insert.insert.i50 = or disjoint i64 %.sroa.0.0.insert.ext.i49, 1099511627776
  store i64 %.sroa.0.0.insert.insert.i50, ptr %i.at, align 4, !tbaa !95
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !244
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.ax = tail call i32 @avio_rb32(ptr noundef %1) #16
  %.sroa.0.0.insert.ext.i51 = zext i32 %i.ax to i64
  %.sroa.0.0.insert.insert.i52 = or disjoint i64 %.sroa.0.0.insert.ext.i51, 70368744177664
  store i64 %.sroa.0.0.insert.insert.i52, ptr %i.aw, align 4, !tbaa !95
  %i.ay = load ptr, ptr %i.q, align 8, !tbaa !244 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  store i32 1, ptr %i.az, align 4, !tbaa !439
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 84
  store i32 1, ptr %i.ba, align 4, !tbaa !440
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a, %.preheader.preheader, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ -1094995529, %bb.a ], [ -1094995529, %bb.c ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %.preheader.preheader ], [ -12, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @mov_read_coll(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !47   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.h = add i32 %i.d, -1
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57   ; 2 uses
  %i.n = icmp slt i64 %3, 5
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.331) #16
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.o = tail call i32 @avio_r8(ptr noundef %1) #16 ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.p, i32 noundef 24, ptr noundef nonnull @.str.332, i32 noundef %i.o) #16
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.q = tail call i64 @avio_skip(ptr noundef %1, i64 noundef 3) #16 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 1560 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !245
  %.not20 = icmp eq ptr %i.s, null
  br i1 %.not20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.t, i32 noundef 24, ptr noundef nonnull @.str.333) #16
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 1568
  %i.v = tail call ptr @av_content_light_metadata_alloc(ptr noundef nonnull %i.u) #16 ; 2 uses
  store ptr %i.v, ptr %i.r, align 8, !tbaa !245
  %.not21 = icmp eq ptr %i.v, null
  br i1 %.not21, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = tail call i32 @avio_rb16(ptr noundef %1) #16
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !245
  store i32 %i.w, ptr %i.x, align 4, !tbaa !442
end_hunk_0
