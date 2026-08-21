Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 216
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_flac_get_data_format:bb.a
  store i32 %i.d, ptr %1, align 4, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %.not31, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1711
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.h = load i8, ptr %i.g, align 4, !tbaa !1730
  %i.i = zext i8 %i.h to i32
  store i32 %i.i, ptr %2, align 4, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %.not32, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1711
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1731
  store i32 %i.m, ptr %3, align 4, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %.not33, label %bb.p, label %ma_channel_map_init_standard.exit

bb.p:                                             ; preds = %bb.o
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1711
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.q = load i8, ptr %i.p, align 4, !tbaa !1730  ; 2 uses
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = icmp eq i64 %5, 0
  %i.t = icmp eq i8 %i.q, 0
  %or.cond3.i = or i1 %i.s, %i.t
  br i1 %or.cond3.i, label %ma_channel_map_init_standard.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.p, %.preheader.i
  %.024.i = phi i32 [ %i.x, %.preheader.i ], [ 0, %bb.p ] ; 2 uses
  %.01723.i = phi ptr [ %i.v, %.preheader.i ], [ %4, %bb.p ] ; 2 uses
  %.01822.i = phi i64 [ %i.w, %.preheader.i ], [ %5, %bb.p ]
  %i.u = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %i.r, i32 noundef %.024.i)
  store i8 %i.u, ptr %.01723.i, align 1, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %.01723.i, i64 1
  %i.w = add i64 %.01822.i, -1                    ; 2 uses
  %i.x = add nuw nsw i32 %.024.i, 1               ; 2 uses
  %i.y = icmp samesign uge i32 %i.x, %i.r
  %i.z = icmp eq i64 %i.w, 0
  %or.cond5.i = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond5.i, label %ma_channel_map_init_standard.exit, label %.preheader.i, !llvm.loop !147

ma_channel_map_init_standard.exit:                ; preds = %.preheader.i, %bb.p, %bb.o, %ma_zero_memory_default.exit
  %.0 = phi i32 [ -3, %ma_zero_memory_default.exit ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %.preheader.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ma_dr_flac_read_pcm_frames_f32(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly %2) local_unnamed_addr #44 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %.lr.ph.i, label %.lr.ph222

.lr.ph.i:                                         ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.c

bb.c:                                             ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit.i, %.lr.ph.i
  %.028.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i112, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i ] ; 5 uses
  %.01627.i = phi i64 [ %1, %.lr.ph.i ], [ %.117.i, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i ] ; 5 uses
  %i.h = load i32, ptr %i.d, align 8, !tbaa !1732 ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.c, %bb.d
  %i.j = load i8, ptr %i.f, align 1, !tbaa !1733
  %i.k = tail call fastcc i32 @ma_dr_flac__read_next_flac_frame_header(ptr noundef %i.e, i8 noundef zeroext %i.j, ptr noundef %i.g)
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %ma_dr_flac__seek_forward_by_pcm_frames.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.l = tail call fastcc i32 @ma_dr_flac__decode_flac_frame(ptr noundef nonnull %0)
  switch i32 %i.l, label %ma_dr_flac__seek_forward_by_pcm_frames.exit [
    i32 0, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.i
    i32 -100, label %.preheader.i
  ]

bb.e:                                             ; preds = %bb.c
  %i.m = zext i32 %i.h to i64                     ; 3 uses
  %i.n = icmp ult i64 %.01627.i, %i.m
  br i1 %i.n, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i, label %bb.f

ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i: ; preds = %bb.e
  %i.o = add i64 %.01627.i, %.028.i
  %i.p = trunc nuw i64 %.01627.i to i32
  %i.q = sub i32 %i.h, %i.p
  store i32 %i.q, ptr %i.d, align 8, !tbaa !1732
  br label %ma_dr_flac__seek_forward_by_pcm_frames.exit

bb.f:                                             ; preds = %bb.e
  %i.r = add i64 %.028.i, %i.m
  %i.s = sub nuw i64 %.01627.i, %i.m
  store i32 0, ptr %i.d, align 8, !tbaa !1732
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit.i

ma_dr_flac__read_and_decode_next_flac_frame.exit.i: ; preds = %bb.d, %bb.f
  %.117.i = phi i64 [ %i.s, %bb.f ], [ %.01627.i, %bb.d ] ; 2 uses
  %.1.i112 = phi i64 [ %i.r, %bb.f ], [ %.028.i, %bb.d ] ; 2 uses
  %.not.i113 = icmp eq i64 %.117.i, 0
  br i1 %.not.i113, label %ma_dr_flac__seek_forward_by_pcm_frames.exit, label %bb.c, !llvm.loop !1734

ma_dr_flac__seek_forward_by_pcm_frames.exit:      ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit.i, %.preheader.i, %bb.d, %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i
  %.025.i = phi i64 [ %.028.i, %.preheader.i ], [ %i.o, %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i ], [ %.028.i, %bb.d ], [ %.1.i112, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1735
  %i.v = add i64 %i.u, %.025.i
  store i64 %i.v, ptr %i.t, align 8, !tbaa !1735
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread

.lr.ph222:                                        ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 6 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !1733  ; 3 uses
  %i.y = zext i8 %i.x to i32                      ; 9 uses
  %i.z = sub nsw i32 32, %i.y                     ; 11 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.not.i = icmp eq i8 %i.x, 32
  %i.af = sub nsw i32 31, %i.y                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 13 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 13 uses
  %i.ai = icmp eq i8 %i.x, 24
  %i.aj = sub nsw i32 23, %i.y                    ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %broadcast.splatinsert585 = insertelement <4 x i32> poison, i32 %i.af, i64 0 ; 2 uses
  %i.ao = shufflevector <4 x i32> %broadcast.splatinsert585, <4 x i32> poison, <16 x i32> zeroinitializer
  %i.ap = shufflevector <4 x i32> %broadcast.splatinsert585, <4 x i32> poison, <16 x i32> zeroinitializer
  %i.aq = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %i.ar = shufflevector <4 x i32> %i.aq, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert551 = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat552 = shufflevector <4 x i32> %broadcast.splatinsert551, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.as = insertelement <2 x i32> poison, i32 %i.z, i64 0
  %i.at = shufflevector <2 x i32> %i.as, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert532 = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat533 = shufflevector <4 x i32> %broadcast.splatinsert532, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = sub i32 24, %i.y
  %invariant.op630 = sub i32 24, %i.y
  %invariant.op631 = sub i32 24, %i.y
  %invariant.op632 = sub i32 24, %i.y
  %invariant.op633 = sub i32 24, %i.y
  %invariant.op634 = sub i32 24, %i.y
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph222, %ma_dr_flac__read_and_decode_next_flac_frame.exit
  %.080220 = phi i64 [ 0, %.lr.ph222 ], [ %.1, %ma_dr_flac__read_and_decode_next_flac_frame.exit ] ; 4 uses
  %.081217 = phi ptr [ %2, %.lr.ph222 ], [ %.182, %ma_dr_flac__read_and_decode_next_flac_frame.exit ] ; 36 uses
  %.083216 = phi i64 [ %1, %.lr.ph222 ], [ %.184, %ma_dr_flac__read_and_decode_next_flac_frame.exit ] ; 3 uses
  %i.au = load i32, ptr %i.aa, align 8, !tbaa !1732 ; 3 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.preheader249, label %bb.i

.preheader249:                                    ; preds = %bb.g, %bb.h
  %i.aw = load i8, ptr %i.w, align 1, !tbaa !1733
  %i.ax = tail call fastcc i32 @ma_dr_flac__read_next_flac_frame_header(ptr noundef %i.am, i8 noundef zeroext %i.aw, ptr noundef %i.an)
  %.not.i114 = icmp eq i32 %i.ax, 0
  br i1 %.not.i114, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread, label %bb.h

bb.h:                                             ; preds = %.preheader249
  %i.ay = tail call fastcc i32 @ma_dr_flac__decode_flac_frame(ptr noundef nonnull %0)
  switch i32 %i.ay, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread [
    i32 0, label %ma_dr_flac__read_and_decode_next_flac_frame.exit
    i32 -100, label %.preheader249
  ]

bb.i:                                             ; preds = %bb.g
  %i.az = load i8, ptr %i.ab, align 2, !tbaa !1736 ; 3 uses
  %i.ba = sext i8 %i.az to i64                    ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr @__const.ma_dr_flac__get_channel_count_from_channel_assignment.lookup, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !9   ; 3 uses
  %i.bd = load i16, ptr %i.ac, align 8, !tbaa !1737
  %i.be = zext i16 %i.bd to i32
  %i.bf = sub i32 %i.be, %i.au
  %i.bg = zext i32 %i.bf to i64                   ; 5 uses
  %i.bh = zext i32 %i.au to i64
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.083216, i64 %i.bh) ; 64 uses
  %i.bi = shl nuw i64 1, %i.ba
  %i.bj = and i64 %i.bi, 1794
  %.not117 = icmp eq i64 %i.bj, 0
  br i1 %.not117, label %.preheader.preheader, label %bb.j

.preheader.preheader:                             ; preds = %bb.i
  %i.bk = zext i8 %i.bc to i64
  %i.bl = tail call i8 @llvm.umax.i8(i8 %i.bc, i8 1) ; 2 uses
  %wide.trip.count = zext i8 %i.bl to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bm = icmp eq i8 %i.az, 0
  %unroll_iter = and i64 %wide.trip.count, 254
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod622 = trunc i8 %i.bl to i1
  br label %.preheader

bb.j:                                             ; preds = %bb.i
  %i.bn = load ptr, ptr %i.ad, align 8, !tbaa !1738
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bg ; 113 uses
  %i.bp = load ptr, ptr %i.ae, align 8, !tbaa !1738
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bg ; 113 uses
  %.b.i93 = load i1, ptr @ma_dr_flac__gIsSSE2Supported, align 4 ; 4 uses
  switch i8 %i.az, label %bb.y [
    i8 8, label %bb.k
    i8 9, label %bb.o
    i8 10, label %bb.s
  ]

bb.k:                                             ; preds = %bb.j
  br i1 %.b.i93, label %bb.l, label %._crit_edge285

._crit_edge285:                                   ; preds = %bb.k
  %.pre286 = load i8, ptr %i.ag, align 1, !tbaa !1740
  %.pre288 = load i8, ptr %i.ah, align 1, !tbaa !1740
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.br = load i8, ptr %i.w, align 1, !tbaa !1733
  %i.bs = icmp ult i8 %i.br, 25
  %.pre287 = load i8, ptr %i.ag, align 1, !tbaa !1740 ; 2 uses
  %.pre289 = load i8, ptr %i.ah, align 1, !tbaa !1740 ; 2 uses
  br i1 %i.bs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bt = lshr i64 %spec.select, 2                ; 2 uses
  %i.bu = zext i8 %.pre287 to i32
  %.reass343.reass = add i32 %i.bu, %invariant.op631 ; 3 uses
  %i.bv = zext i8 %.pre289 to i32
  %.reass345.reass = add i32 %i.bv, %invariant.op632 ; 3 uses
  %.not239 = icmp eq i64 %i.bt, 0
  br i1 %.not239, label %._crit_edge193, label %.lr.ph192

.lr.ph192:                                        ; preds = %bb.m, %.lr.ph192
  %.0.i190 = phi i64 [ %i.cl, %.lr.ph192 ], [ 0, %bb.m ] ; 4 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0.i190
  %i.bx = load <4 x i32>, ptr %i.bw, align 1, !tbaa !9
  %i.by = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.bx, i32 range(i32 -232, 288) %.reass343.reass) ; 2 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %.0.i190
  %i.ca = load <4 x i32>, ptr %i.bz, align 1, !tbaa !9
  %i.cb = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.ca, i32 range(i32 -232, 288) %.reass345.reass)
  %i.cc = sub <4 x i32> %i.by, %i.cb
  %i.cd = sitofp <4 x i32> %i.by to <4 x float>
  %i.ce = fmul nnan <4 x float> %i.cd, splat (float f0x34000000) ; 2 uses
  %i.cf = sitofp <4 x i32> %i.cc to <4 x float>
  %i.cg = fmul nnan <4 x float> %i.cf, splat (float f0x34000000) ; 2 uses
  %.idx.i = shl nuw nsw i64 %.0.i190, 5
  %i.ch = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx.i ; 2 uses
  %i.ci = shufflevector <4 x float> %i.ce, <4 x float> %i.cg, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.ci, ptr %i.ch, align 1, !tbaa !9
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ck = shufflevector <4 x float> %i.ce, <4 x float> %i.cg, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.ck, ptr %i.cj, align 1, !tbaa !9
  %i.cl = add nuw nsw i64 %.0.i190, 1             ; 2 uses
  %exitcond274.not = icmp eq i64 %i.cl, %i.bt
  br i1 %exitcond274.not, label %._crit_edge193, label %.lr.ph192, !llvm.loop !1741

._crit_edge193:                                   ; preds = %.lr.ph192, %bb.m
  %i.cm = and i64 %spec.select, 4294967292        ; 5 uses
  %.not240 = icmp eq i64 %i.cm, %spec.select
  br i1 %.not240, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph196.preheader

.lr.ph196.preheader:                              ; preds = %._crit_edge193
  %i.cn = or disjoint i64 %i.cm, 1
  %i.co = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.cn) ; 2 uses
  %3 = and i64 %spec.select, 4294967292
  %i.cp = sub nsw i64 %i.co, %3                   ; 2 uses
  %min.iters.check410 = icmp ult i64 %i.cp, 4
  br i1 %min.iters.check410, label %.lr.ph196.preheader606, label %vector.ph411

vector.ph411:                                     ; preds = %.lr.ph196.preheader
  %i.cq = and i64 %i.co, 3                        ; 2 uses
  %n.vec412 = sub nuw nsw i64 %i.cp, %i.cq        ; 2 uses
  %i.cr = add nsw i64 %i.cm, %n.vec412
  %broadcast.splatinsert413 = insertelement <4 x i32> poison, i32 %.reass343.reass, i64 0
  %broadcast.splat414 = shufflevector <4 x i32> %broadcast.splatinsert413, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert415 = insertelement <4 x i32> poison, i32 %.reass345.reass, i64 0
  %broadcast.splat416 = shufflevector <4 x i32> %broadcast.splatinsert415, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph411
  %index418 = phi i64 [ 0, %vector.ph411 ], [ %index.next422, %vector.body417 ] ; 2 uses
  %i.cs = add nuw i64 %i.cm, %index418            ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cs
  %wide.load419 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !8
  %i.cu = shl <4 x i32> %wide.load419, %broadcast.splat414 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cs
  %wide.load420 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !8
  %i.cw = shl <4 x i32> %wide.load420, %broadcast.splat416
  %i.cx = sub <4 x i32> %i.cu, %i.cw
  %i.cy = shl nuw nsw i64 %i.cs, 3
  %i.cz = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.cy
  %i.da = shufflevector <4 x i32> %i.cu, <4 x i32> %i.cx, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.db = sitofp <8 x i32> %i.da to <8 x float>
  %interleaved.vec421 = fmul nnan <8 x float> %i.db, splat (float f0x34000000)
  store <8 x float> %interleaved.vec421, ptr %i.cz, align 4, !tbaa !336
  %index.next422 = add nuw i64 %index418, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next422, %n.vec412
  br i1 %i.dc, label %middle.block423, label %vector.body417, !llvm.loop !1742

middle.block423:                                  ; preds = %vector.body417
  %cmp.n424 = icmp eq i64 %i.cq, 0
  br i1 %cmp.n424, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph196.preheader606

.lr.ph196.preheader606:                           ; preds = %.lr.ph196.preheader, %middle.block423
  %.1.i194.ph = phi i64 [ %i.cm, %.lr.ph196.preheader ], [ %i.cr, %middle.block423 ]
  br label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph196.preheader606, %.lr.ph196
  %.1.i194 = phi i64 [ %i.dp, %.lr.ph196 ], [ %.1.i194.ph, %.lr.ph196.preheader606 ] ; 4 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i194
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !8
  %i.df = shl i32 %i.de, %.reass343.reass         ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.1.i194
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !8
  %i.di = shl i32 %i.dh, %.reass345.reass
  %i.dj = sub i32 %i.df, %i.di
  %.idx127 = shl nuw nsw i64 %.1.i194, 3
  %i.dk = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx127
  %i.dl = insertelement <2 x i32> poison, i32 %i.df, i64 0
  %i.dm = insertelement <2 x i32> %i.dl, i32 %i.dj, i64 1
  %i.dn = sitofp <2 x i32> %i.dm to <2 x float>
  %i.do = fmul nnan <2 x float> %i.dn, splat (float f0x34000000)
  store <2 x float> %i.do, ptr %i.dk, align 4, !tbaa !336
  %i.dp = add nuw nsw i64 %.1.i194, 1             ; 2 uses
  %i.dq = icmp samesign ult i64 %i.dp, %spec.select
  br i1 %i.dq, label %.lr.ph196, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, !llvm.loop !1743

bb.n:                                             ; preds = %._crit_edge285, %bb.l
  %i.dr = phi i8 [ %.pre288, %._crit_edge285 ], [ %.pre289, %bb.l ]
  %i.ds = phi i8 [ %.pre286, %._crit_edge285 ], [ %.pre287, %bb.l ]
  %i.dt = lshr i64 %spec.select, 2                ; 4 uses
  %i.du = zext i8 %i.ds to i32
  %i.dv = add nsw i32 %i.z, %i.du                 ; 4 uses
  %i.dw = zext i8 %i.dr to i32
  %i.dx = add nsw i32 %i.z, %i.dw                 ; 4 uses
  %.not235 = icmp eq i64 %i.dt, 0
  br i1 %.not235, label %._crit_edge186, label %.lr.ph185.preheader

.lr.ph185.preheader:                              ; preds = %bb.n
  %min.iters.check444 = icmp samesign ult i64 %spec.select, 16
  br i1 %min.iters.check444, label %.lr.ph185.preheader610, label %vector.ph445

vector.ph445:                                     ; preds = %.lr.ph185.preheader
  %n.vec446 = and i64 %i.dt, 1073741820           ; 3 uses
  %broadcast.splatinsert447 = insertelement <4 x i32> poison, i32 %i.dv, i64 0
  %broadcast.splat448 = shufflevector <4 x i32> %broadcast.splatinsert447, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert449 = insertelement <4 x i32> poison, i32 %i.dx, i64 0
  %broadcast.splat450 = shufflevector <4 x i32> %broadcast.splatinsert449, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body451

vector.body451:                                   ; preds = %vector.body451, %vector.ph445
  %index452 = phi i64 [ 0, %vector.ph445 ], [ %index.next454, %vector.body451 ] ; 6 uses
  %i.dy = shl nuw nsw i64 %index452, 2            ; 5 uses
  %i.dz = shl i64 %index452, 2                    ; 4 uses
  %i.ea = or disjoint i64 %i.dz, 4                ; 2 uses
  %i.eb = shl i64 %index452, 2                    ; 4 uses
  %i.ec = or disjoint i64 %i.eb, 8                ; 2 uses
  %i.ed = shl i64 %index452, 2                    ; 4 uses
  %i.ee = or disjoint i64 %i.ed, 12               ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.dy
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ea
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ec
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ee
  %i.ej = load i32, ptr %i.ef, align 4, !tbaa !8
  %i.ek = load i32, ptr %i.eg, align 4, !tbaa !8
  %i.el = load i32, ptr %i.eh, align 4, !tbaa !8
  %i.em = load i32, ptr %i.ei, align 4, !tbaa !8
  %i.en = insertelement <4 x i32> poison, i32 %i.ej, i64 0
  %i.eo = insertelement <4 x i32> %i.en, i32 %i.ek, i64 1
  %i.ep = insertelement <4 x i32> %i.eo, i32 %i.el, i64 2
  %i.eq = insertelement <4 x i32> %i.ep, i32 %i.em, i64 3
  %i.er = shl <4 x i32> %i.eq, %broadcast.splat448 ; 2 uses
  %i.es = or disjoint i64 %i.dy, 1                ; 2 uses
  %i.et = or disjoint i64 %i.dz, 5                ; 2 uses
  %i.eu = or disjoint i64 %i.eb, 9                ; 2 uses
  %i.ev = or disjoint i64 %i.ed, 13               ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.es
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.et
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.eu
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ev
  %i.fa = load i32, ptr %i.ew, align 4, !tbaa !8
  %i.fb = load i32, ptr %i.ex, align 4, !tbaa !8
  %i.fc = load i32, ptr %i.ey, align 4, !tbaa !8
  %i.fd = load i32, ptr %i.ez, align 4, !tbaa !8
  %i.fe = insertelement <4 x i32> poison, i32 %i.fa, i64 0
  %i.ff = insertelement <4 x i32> %i.fe, i32 %i.fb, i64 1
  %i.fg = insertelement <4 x i32> %i.ff, i32 %i.fc, i64 2
  %i.fh = insertelement <4 x i32> %i.fg, i32 %i.fd, i64 3
  %i.fi = shl <4 x i32> %i.fh, %broadcast.splat448 ; 2 uses
  %i.fj = or disjoint i64 %i.dy, 2                ; 2 uses
  %i.fk = or disjoint i64 %i.dz, 6                ; 2 uses
  %i.fl = or disjoint i64 %i.eb, 10               ; 2 uses
  %i.fm = or disjoint i64 %i.ed, 14               ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.fj
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.fk
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.fl
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.fm
  %i.fr = load i32, ptr %i.fn, align 4, !tbaa !8
  %i.fs = load i32, ptr %i.fo, align 4, !tbaa !8
  %i.ft = load i32, ptr %i.fp, align 4, !tbaa !8
  %i.fu = load i32, ptr %i.fq, align 4, !tbaa !8
  %i.fv = insertelement <4 x i32> poison, i32 %i.fr, i64 0
  %i.fw = insertelement <4 x i32> %i.fv, i32 %i.fs, i64 1
  %i.fx = insertelement <4 x i32> %i.fw, i32 %i.ft, i64 2
  %i.fy = insertelement <4 x i32> %i.fx, i32 %i.fu, i64 3
  %i.fz = shl <4 x i32> %i.fy, %broadcast.splat448 ; 2 uses
  %i.ga = or disjoint i64 %i.dy, 3                ; 2 uses
  %i.gb = or disjoint i64 %i.dz, 7                ; 2 uses
  %i.gc = or disjoint i64 %i.eb, 11               ; 2 uses
  %i.gd = or disjoint i64 %i.ed, 15               ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ga
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.gb
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.gc
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.gd
  %i.gi = load i32, ptr %i.ge, align 4, !tbaa !8
  %i.gj = load i32, ptr %i.gf, align 4, !tbaa !8
  %i.gk = load i32, ptr %i.gg, align 4, !tbaa !8
  %i.gl = load i32, ptr %i.gh, align 4, !tbaa !8
  %i.gm = insertelement <4 x i32> poison, i32 %i.gi, i64 0
  %i.gn = insertelement <4 x i32> %i.gm, i32 %i.gj, i64 1
  %i.go = insertelement <4 x i32> %i.gn, i32 %i.gk, i64 2
  %i.gp = insertelement <4 x i32> %i.go, i32 %i.gl, i64 3
  %i.gq = shl <4 x i32> %i.gp, %broadcast.splat448 ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.dy
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ea
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ec
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ee
  %i.gv = load i32, ptr %i.gr, align 4, !tbaa !8
  %i.gw = load i32, ptr %i.gs, align 4, !tbaa !8
  %i.gx = load i32, ptr %i.gt, align 4, !tbaa !8
  %i.gy = load i32, ptr %i.gu, align 4, !tbaa !8
  %i.gz = insertelement <4 x i32> poison, i32 %i.gv, i64 0
  %i.ha = insertelement <4 x i32> %i.gz, i32 %i.gw, i64 1
  %i.hb = insertelement <4 x i32> %i.ha, i32 %i.gx, i64 2
  %i.hc = insertelement <4 x i32> %i.hb, i32 %i.gy, i64 3
  %i.hd = shl <4 x i32> %i.hc, %broadcast.splat450
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.es
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.et
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.eu
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ev
  %i.hi = load i32, ptr %i.he, align 4, !tbaa !8
  %i.hj = load i32, ptr %i.hf, align 4, !tbaa !8
  %i.hk = load i32, ptr %i.hg, align 4, !tbaa !8
  %i.hl = load i32, ptr %i.hh, align 4, !tbaa !8
  %i.hm = insertelement <4 x i32> poison, i32 %i.hi, i64 0
  %i.hn = insertelement <4 x i32> %i.hm, i32 %i.hj, i64 1
  %i.ho = insertelement <4 x i32> %i.hn, i32 %i.hk, i64 2
  %i.hp = insertelement <4 x i32> %i.ho, i32 %i.hl, i64 3
  %i.hq = shl <4 x i32> %i.hp, %broadcast.splat450
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.fj
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.fk
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.fl
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.fm
  %i.hv = load i32, ptr %i.hr, align 4, !tbaa !8
  %i.hw = load i32, ptr %i.hs, align 4, !tbaa !8
  %i.hx = load i32, ptr %i.ht, align 4, !tbaa !8
  %i.hy = load i32, ptr %i.hu, align 4, !tbaa !8
  %i.hz = insertelement <4 x i32> poison, i32 %i.hv, i64 0
  %i.ia = insertelement <4 x i32> %i.hz, i32 %i.hw, i64 1
  %i.ib = insertelement <4 x i32> %i.ia, i32 %i.hx, i64 2
  %i.ic = insertelement <4 x i32> %i.ib, i32 %i.hy, i64 3
  %i.id = shl <4 x i32> %i.ic, %broadcast.splat450
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ga
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.gb
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.gc
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.gd
  %i.ii = load i32, ptr %i.ie, align 4, !tbaa !8
  %i.ij = load i32, ptr %i.if, align 4, !tbaa !8
  %i.ik = load i32, ptr %i.ig, align 4, !tbaa !8
  %i.il = load i32, ptr %i.ih, align 4, !tbaa !8
  %i.im = insertelement <4 x i32> poison, i32 %i.ii, i64 0
  %i.in = insertelement <4 x i32> %i.im, i32 %i.ij, i64 1
  %i.io = insertelement <4 x i32> %i.in, i32 %i.ik, i64 2
  %i.ip = insertelement <4 x i32> %i.io, i32 %i.il, i64 3
  %i.iq = shl <4 x i32> %i.ip, %broadcast.splat450
  %i.ir = sub <4 x i32> %i.er, %i.hd
  %i.is = sub <4 x i32> %i.fi, %i.hq
  %i.it = sub <4 x i32> %i.fz, %i.id
  %i.iu = sub <4 x i32> %i.gq, %i.iq
  %i.iv = shl nuw nsw i64 %index452, 5
  %i.iw = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.iv
  %i.ix = shufflevector <4 x i32> %i.er, <4 x i32> %i.ir, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.iy = shufflevector <4 x i32> %i.fi, <4 x i32> %i.is, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.iz = shufflevector <8 x i32> %i.ix, <8 x i32> %i.iy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ja = shufflevector <4 x i32> %i.fz, <4 x i32> %i.it, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jb = shufflevector <4 x i32> %i.gq, <4 x i32> %i.iu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jc = shufflevector <8 x i32> %i.ja, <8 x i32> %i.jb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jd = shufflevector <16 x i32> %i.iz, <16 x i32> %i.jc, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.je = sitofp <32 x i32> %i.jd to <32 x float>
  %interleaved.vec453 = fmul nnan <32 x float> %i.je, splat (float f0x30000000)
  store <32 x float> %interleaved.vec453, ptr %i.iw, align 4, !tbaa !336
  %index.next454 = add nuw i64 %index452, 4       ; 2 uses
  %i.jf = icmp eq i64 %index.next454, %n.vec446
  br i1 %i.jf, label %middle.block455, label %vector.body451, !llvm.loop !1744

middle.block455:                                  ; preds = %vector.body451
  %cmp.n456 = icmp eq i64 %i.dt, %n.vec446
  br i1 %cmp.n456, label %._crit_edge186, label %.lr.ph185.preheader610

.lr.ph185.preheader610:                           ; preds = %.lr.ph185.preheader, %middle.block455
  %.0.i94183.ph = phi i64 [ 0, %.lr.ph185.preheader ], [ %n.vec446, %middle.block455 ]
  %i.jg = insertelement <4 x i32> poison, i32 %i.dv, i64 0
  %i.jh = shufflevector <4 x i32> %i.jg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ji = insertelement <4 x i32> poison, i32 %i.dx, i64 0
  %i.jj = shufflevector <4 x i32> %i.ji, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph185

.lr.ph185:                                        ; preds = %.lr.ph185.preheader610, %.lr.ph185
  %.0.i94183 = phi i64 [ %i.ka, %.lr.ph185 ], [ %.0.i94183.ph, %.lr.ph185.preheader610 ] ; 3 uses
  %i.jk = shl nuw nsw i64 %.0.i94183, 2           ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.jk
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.jk
  %i.jn = load <4 x i32>, ptr %i.jl, align 4, !tbaa !8
  %i.jo = shl <4 x i32> %i.jn, %i.jh              ; 3 uses
  %i.jp = load <4 x i32>, ptr %i.jm, align 4, !tbaa !8
  %i.jq = shl <4 x i32> %i.jp, %i.jj
  %i.jr = sub <4 x i32> %i.jo, %i.jq              ; 2 uses
  %.idx126 = shl nuw nsw i64 %.0.i94183, 5
  %i.js = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx126 ; 2 uses
  %i.jt = shufflevector <4 x i32> %i.jr, <4 x i32> %i.jo, <4 x i32> <i32 4, i32 0, i32 5, i32 1>
  %i.ju = sitofp <4 x i32> %i.jt to <4 x float>
  %i.jv = fmul nnan <4 x float> %i.ju, splat (float f0x30000000)
  store <4 x float> %i.jv, ptr %i.js, align 4, !tbaa !336
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.jx = shufflevector <4 x i32> %i.jr, <4 x i32> %i.jo, <4 x i32> <i32 6, i32 2, i32 7, i32 3>
  %i.jy = sitofp <4 x i32> %i.jx to <4 x float>
  %i.jz = fmul nnan <4 x float> %i.jy, splat (float f0x30000000)
  store <4 x float> %i.jz, ptr %i.jw, align 4, !tbaa !336
  %i.ka = add nuw nsw i64 %.0.i94183, 1           ; 2 uses
  %exitcond273.not = icmp eq i64 %i.ka, %i.dt
  br i1 %exitcond273.not, label %._crit_edge186, label %.lr.ph185, !llvm.loop !1745

._crit_edge186:                                   ; preds = %.lr.ph185, %middle.block455, %bb.n
  %i.kb = and i64 %spec.select, 4294967292        ; 5 uses
  %.not236 = icmp eq i64 %i.kb, %spec.select
  br i1 %.not236, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph189.preheader

.lr.ph189.preheader:                              ; preds = %._crit_edge186
  %i.kc = or disjoint i64 %i.kb, 1
  %i.kd = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.kc) ; 2 uses
  %4 = and i64 %spec.select, 4294967292
  %i.ke = sub nsw i64 %i.kd, %4                   ; 2 uses
  %min.iters.check427 = icmp ult i64 %i.ke, 4
  br i1 %min.iters.check427, label %.lr.ph189.preheader608, label %vector.ph428

vector.ph428:                                     ; preds = %.lr.ph189.preheader
  %i.kf = and i64 %i.kd, 3                        ; 2 uses
  %n.vec429 = sub nuw nsw i64 %i.ke, %i.kf        ; 2 uses
  %i.kg = add nsw i64 %i.kb, %n.vec429
  %broadcast.splatinsert430 = insertelement <4 x i32> poison, i32 %i.dv, i64 0
  %broadcast.splat431 = shufflevector <4 x i32> %broadcast.splatinsert430, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert432 = insertelement <4 x i32> poison, i32 %i.dx, i64 0
  %broadcast.splat433 = shufflevector <4 x i32> %broadcast.splatinsert432, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body434

vector.body434:                                   ; preds = %vector.body434, %vector.ph428
  %index435 = phi i64 [ 0, %vector.ph428 ], [ %index.next439, %vector.body434 ] ; 2 uses
  %i.kh = add nuw i64 %i.kb, %index435            ; 3 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.kh
  %wide.load436 = load <4 x i32>, ptr %i.ki, align 4, !tbaa !8
  %i.kj = shl <4 x i32> %wide.load436, %broadcast.splat431 ; 2 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.kh
  %wide.load437 = load <4 x i32>, ptr %i.kk, align 4, !tbaa !8
  %i.kl = shl <4 x i32> %wide.load437, %broadcast.splat433
  %i.km = sub <4 x i32> %i.kj, %i.kl
  %i.kn = shl nuw nsw i64 %i.kh, 3
  %i.ko = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.kn
  %i.kp = shufflevector <4 x i32> %i.kj, <4 x i32> %i.km, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.kq = sitofp <8 x i32> %i.kp to <8 x float>
  %interleaved.vec438 = fmul nnan <8 x float> %i.kq, splat (float f0x30000000)
  store <8 x float> %interleaved.vec438, ptr %i.ko, align 4, !tbaa !336
  %index.next439 = add nuw i64 %index435, 4       ; 2 uses
  %i.kr = icmp eq i64 %index.next439, %n.vec429
  br i1 %i.kr, label %middle.block440, label %vector.body434, !llvm.loop !1746

middle.block440:                                  ; preds = %vector.body434
  %cmp.n441 = icmp eq i64 %i.kf, 0
  br i1 %cmp.n441, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph189.preheader608

.lr.ph189.preheader608:                           ; preds = %.lr.ph189.preheader, %middle.block440
  %.1.i95187.ph = phi i64 [ %i.kb, %.lr.ph189.preheader ], [ %i.kg, %middle.block440 ]
  br label %.lr.ph189

.lr.ph189:                                        ; preds = %.lr.ph189.preheader608, %.lr.ph189
  %.1.i95187 = phi i64 [ %i.le, %.lr.ph189 ], [ %.1.i95187.ph, %.lr.ph189.preheader608 ] ; 4 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i95187
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !8
  %i.ku = shl i32 %i.kt, %i.dv                    ; 2 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.1.i95187
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !8
  %i.kx = shl i32 %i.kw, %i.dx
  %i.ky = sub i32 %i.ku, %i.kx
  %.idx125 = shl nuw nsw i64 %.1.i95187, 3
  %i.kz = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx125
  %i.la = insertelement <2 x i32> poison, i32 %i.ku, i64 0
  %i.lb = insertelement <2 x i32> %i.la, i32 %i.ky, i64 1
  %i.lc = sitofp <2 x i32> %i.lb to <2 x float>
  %i.ld = fmul nnan <2 x float> %i.lc, splat (float f0x30000000)
  store <2 x float> %i.ld, ptr %i.kz, align 4, !tbaa !336
  %i.le = add nuw nsw i64 %.1.i95187, 1           ; 2 uses
  %i.lf = icmp samesign ult i64 %i.le, %spec.select
  br i1 %i.lf, label %.lr.ph189, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, !llvm.loop !1747

bb.o:                                             ; preds = %bb.j
  br i1 %.b.i93, label %bb.p, label %._crit_edge281

._crit_edge281:                                   ; preds = %bb.o
  %.pre = load i8, ptr %i.ag, align 1, !tbaa !1740
  %.pre283 = load i8, ptr %i.ah, align 1, !tbaa !1740
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.lg = load i8, ptr %i.w, align 1, !tbaa !1733
  %i.lh = icmp ult i8 %i.lg, 25
  %.pre282 = load i8, ptr %i.ag, align 1, !tbaa !1740 ; 2 uses
  %.pre284 = load i8, ptr %i.ah, align 1, !tbaa !1740 ; 2 uses
  br i1 %i.lh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.li = lshr i64 %spec.select, 2                ; 2 uses
  %i.lj = zext i8 %.pre282 to i32
  %.reass.reass = add i32 %i.lj, %invariant.op    ; 3 uses
  %i.lk = zext i8 %.pre284 to i32
  %.reass341.reass = add i32 %i.lk, %invariant.op630 ; 3 uses
  %.not233 = icmp eq i64 %i.li, 0
  br i1 %.not233, label %._crit_edge179, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.q, %.lr.ph178
  %.0.i96176 = phi i64 [ %i.ma, %.lr.ph178 ], [ 0, %bb.q ] ; 4 uses
  %i.ll = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0.i96176
  %i.lm = load <4 x i32>, ptr %i.ll, align 1, !tbaa !9
  %i.ln = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.lm, i32 range(i32 -232, 288) %.reass.reass)
  %i.lo = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %.0.i96176
  %i.lp = load <4 x i32>, ptr %i.lo, align 1, !tbaa !9
  %i.lq = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.lp, i32 range(i32 -232, 288) %.reass341.reass) ; 2 uses
  %i.lr = add <4 x i32> %i.lq, %i.ln
  %i.ls = sitofp <4 x i32> %i.lr to <4 x float>
  %i.lt = fmul nnan <4 x float> %i.ls, splat (float f0x34000000) ; 2 uses
  %i.lu = sitofp <4 x i32> %i.lq to <4 x float>
  %i.lv = fmul nnan <4 x float> %i.lu, splat (float f0x34000000) ; 2 uses
  %.idx.i98 = shl nuw nsw i64 %.0.i96176, 5
  %i.lw = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx.i98 ; 2 uses
  %i.lx = shufflevector <4 x float> %i.lt, <4 x float> %i.lv, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.lx, ptr %i.lw, align 1, !tbaa !9
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.lz = shufflevector <4 x float> %i.lt, <4 x float> %i.lv, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.lz, ptr %i.ly, align 1, !tbaa !9
  %i.ma = add nuw nsw i64 %.0.i96176, 1           ; 2 uses
  %exitcond272.not = icmp eq i64 %i.ma, %i.li
  br i1 %exitcond272.not, label %._crit_edge179, label %.lr.ph178, !llvm.loop !1748

._crit_edge179:                                   ; preds = %.lr.ph178, %bb.q
  %i.mb = and i64 %spec.select, 4294967292        ; 5 uses
  %.not234 = icmp eq i64 %i.mb, %spec.select
  br i1 %.not234, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph182.preheader

.lr.ph182.preheader:                              ; preds = %._crit_edge179
  %i.mc = or disjoint i64 %i.mb, 1
  %i.md = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.mc) ; 2 uses
  %5 = and i64 %spec.select, 4294967292
  %i.me = sub nsw i64 %i.md, %5                   ; 2 uses
  %min.iters.check459 = icmp ult i64 %i.me, 4
  br i1 %min.iters.check459, label %.lr.ph182.preheader611, label %vector.ph460

vector.ph460:                                     ; preds = %.lr.ph182.preheader
  %i.mf = and i64 %i.md, 3                        ; 2 uses
  %n.vec461 = sub nuw nsw i64 %i.me, %i.mf        ; 2 uses
  %i.mg = add nsw i64 %i.mb, %n.vec461
  %broadcast.splatinsert462 = insertelement <4 x i32> poison, i32 %.reass.reass, i64 0
  %broadcast.splat463 = shufflevector <4 x i32> %broadcast.splatinsert462, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert464 = insertelement <4 x i32> poison, i32 %.reass341.reass, i64 0
  %broadcast.splat465 = shufflevector <4 x i32> %broadcast.splatinsert464, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body466

vector.body466:                                   ; preds = %vector.body466, %vector.ph460
  %index467 = phi i64 [ 0, %vector.ph460 ], [ %index.next471, %vector.body466 ] ; 2 uses
  %i.mh = add nuw i64 %i.mb, %index467            ; 3 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.mh
  %wide.load468 = load <4 x i32>, ptr %i.mi, align 4, !tbaa !8
  %i.mj = shl <4 x i32> %wide.load468, %broadcast.splat463
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.mh
  %wide.load469 = load <4 x i32>, ptr %i.mk, align 4, !tbaa !8
  %i.ml = shl <4 x i32> %wide.load469, %broadcast.splat465 ; 2 uses
  %i.mm = add <4 x i32> %i.ml, %i.mj
  %i.mn = shl nuw nsw i64 %i.mh, 3
  %i.mo = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.mn
  %i.mp = shufflevector <4 x i32> %i.mm, <4 x i32> %i.ml, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.mq = sitofp <8 x i32> %i.mp to <8 x float>
  %interleaved.vec470 = fmul nnan <8 x float> %i.mq, splat (float f0x34000000)
  store <8 x float> %interleaved.vec470, ptr %i.mo, align 4, !tbaa !336
  %index.next471 = add nuw i64 %index467, 4       ; 2 uses
  %i.mr = icmp eq i64 %index.next471, %n.vec461
  br i1 %i.mr, label %middle.block472, label %vector.body466, !llvm.loop !1749

middle.block472:                                  ; preds = %vector.body466
  %cmp.n473 = icmp eq i64 %i.mf, 0
  br i1 %cmp.n473, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph182.preheader611

.lr.ph182.preheader611:                           ; preds = %.lr.ph182.preheader, %middle.block472
  %.1.i97180.ph = phi i64 [ %i.mb, %.lr.ph182.preheader ], [ %i.mg, %middle.block472 ]
  br label %.lr.ph182

.lr.ph182:                                        ; preds = %.lr.ph182.preheader611, %.lr.ph182
  %.1.i97180 = phi i64 [ %i.ne, %.lr.ph182 ], [ %.1.i97180.ph, %.lr.ph182.preheader611 ] ; 4 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i97180
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !8
  %i.mu = shl i32 %i.mt, %.reass.reass
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.1.i97180
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !8
  %i.mx = shl i32 %i.mw, %.reass341.reass         ; 2 uses
  %i.my = add i32 %i.mx, %i.mu
  %.idx124 = shl nuw nsw i64 %.1.i97180, 3
  %i.mz = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx124
  %i.na = insertelement <2 x i32> poison, i32 %i.my, i64 0
  %i.nb = insertelement <2 x i32> %i.na, i32 %i.mx, i64 1
  %i.nc = sitofp <2 x i32> %i.nb to <2 x float>
  %i.nd = fmul nnan <2 x float> %i.nc, splat (float f0x34000000)
  store <2 x float> %i.nd, ptr %i.mz, align 4, !tbaa !336
  %i.ne = add nuw nsw i64 %.1.i97180, 1           ; 2 uses
  %i.nf = icmp samesign ult i64 %i.ne, %spec.select
  br i1 %i.nf, label %.lr.ph182, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, !llvm.loop !1750

bb.r:                                             ; preds = %._crit_edge281, %bb.p
  %i.ng = phi i8 [ %.pre283, %._crit_edge281 ], [ %.pre284, %bb.p ]
  %i.nh = phi i8 [ %.pre, %._crit_edge281 ], [ %.pre282, %bb.p ]
  %i.ni = lshr i64 %spec.select, 2                ; 4 uses
  %i.nj = zext i8 %i.nh to i32
  %i.nk = add nsw i32 %i.z, %i.nj                 ; 4 uses
  %i.nl = zext i8 %i.ng to i32
  %i.nm = add nsw i32 %i.z, %i.nl                 ; 4 uses
  %.not230 = icmp eq i64 %i.ni, 0
  br i1 %.not230, label %._crit_edge172, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %bb.r
  %min.iters.check493 = icmp samesign ult i64 %spec.select, 16
  br i1 %min.iters.check493, label %.lr.ph171.preheader615, label %vector.ph494

vector.ph494:                                     ; preds = %.lr.ph171.preheader
  %n.vec495 = and i64 %i.ni, 1073741820           ; 3 uses
  %broadcast.splatinsert496 = insertelement <4 x i32> poison, i32 %i.nk, i64 0
  %broadcast.splat497 = shufflevector <4 x i32> %broadcast.splatinsert496, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert498 = insertelement <4 x i32> poison, i32 %i.nm, i64 0
  %broadcast.splat499 = shufflevector <4 x i32> %broadcast.splatinsert498, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body500

vector.body500:                                   ; preds = %vector.body500, %vector.ph494
  %index501 = phi i64 [ 0, %vector.ph494 ], [ %index.next503, %vector.body500 ] ; 6 uses
  %i.nn = shl nuw nsw i64 %index501, 2            ; 5 uses
  %i.no = shl i64 %index501, 2                    ; 4 uses
  %i.np = or disjoint i64 %i.no, 4                ; 2 uses
  %i.nq = shl i64 %index501, 2                    ; 4 uses
  %i.nr = or disjoint i64 %i.nq, 8                ; 2 uses
  %i.ns = shl i64 %index501, 2                    ; 4 uses
  %i.nt = or disjoint i64 %i.ns, 12               ; 2 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.nn
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.np
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.nr
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.nt
  %i.ny = load i32, ptr %i.nu, align 4, !tbaa !8
  %i.nz = load i32, ptr %i.nv, align 4, !tbaa !8
  %i.oa = load i32, ptr %i.nw, align 4, !tbaa !8
  %i.ob = load i32, ptr %i.nx, align 4, !tbaa !8
  %i.oc = insertelement <4 x i32> poison, i32 %i.ny, i64 0
  %i.od = insertelement <4 x i32> %i.oc, i32 %i.nz, i64 1
  %i.oe = insertelement <4 x i32> %i.od, i32 %i.oa, i64 2
  %i.of = insertelement <4 x i32> %i.oe, i32 %i.ob, i64 3
  %i.og = shl <4 x i32> %i.of, %broadcast.splat497
  %i.oh = or disjoint i64 %i.nn, 1                ; 2 uses
  %i.oi = or disjoint i64 %i.no, 5                ; 2 uses
  %i.oj = or disjoint i64 %i.nq, 9                ; 2 uses
  %i.ok = or disjoint i64 %i.ns, 13               ; 2 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.oh
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.oi
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.oj
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ok
  %i.op = load i32, ptr %i.ol, align 4, !tbaa !8
  %i.oq = load i32, ptr %i.om, align 4, !tbaa !8
  %i.or = load i32, ptr %i.on, align 4, !tbaa !8
  %i.os = load i32, ptr %i.oo, align 4, !tbaa !8
  %i.ot = insertelement <4 x i32> poison, i32 %i.op, i64 0
  %i.ou = insertelement <4 x i32> %i.ot, i32 %i.oq, i64 1
  %i.ov = insertelement <4 x i32> %i.ou, i32 %i.or, i64 2
  %i.ow = insertelement <4 x i32> %i.ov, i32 %i.os, i64 3
  %i.ox = shl <4 x i32> %i.ow, %broadcast.splat497
  %i.oy = or disjoint i64 %i.nn, 2                ; 2 uses
  %i.oz = or disjoint i64 %i.no, 6                ; 2 uses
  %i.pa = or disjoint i64 %i.nq, 10               ; 2 uses
  %i.pb = or disjoint i64 %i.ns, 14               ; 2 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.oy
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.oz
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.pa
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.pb
  %i.pg = load i32, ptr %i.pc, align 4, !tbaa !8
  %i.ph = load i32, ptr %i.pd, align 4, !tbaa !8
  %i.pi = load i32, ptr %i.pe, align 4, !tbaa !8
  %i.pj = load i32, ptr %i.pf, align 4, !tbaa !8
  %i.pk = insertelement <4 x i32> poison, i32 %i.pg, i64 0
  %i.pl = insertelement <4 x i32> %i.pk, i32 %i.ph, i64 1
  %i.pm = insertelement <4 x i32> %i.pl, i32 %i.pi, i64 2
  %i.pn = insertelement <4 x i32> %i.pm, i32 %i.pj, i64 3
  %i.po = shl <4 x i32> %i.pn, %broadcast.splat497
  %i.pp = or disjoint i64 %i.nn, 3                ; 2 uses
  %i.pq = or disjoint i64 %i.no, 7                ; 2 uses
  %i.pr = or disjoint i64 %i.nq, 11               ; 2 uses
  %i.ps = or disjoint i64 %i.ns, 15               ; 2 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.pp
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.pq
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.pr
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ps
  %i.px = load i32, ptr %i.pt, align 4, !tbaa !8
  %i.py = load i32, ptr %i.pu, align 4, !tbaa !8
  %i.pz = load i32, ptr %i.pv, align 4, !tbaa !8
  %i.qa = load i32, ptr %i.pw, align 4, !tbaa !8
  %i.qb = insertelement <4 x i32> poison, i32 %i.px, i64 0
  %i.qc = insertelement <4 x i32> %i.qb, i32 %i.py, i64 1
  %i.qd = insertelement <4 x i32> %i.qc, i32 %i.pz, i64 2
  %i.qe = insertelement <4 x i32> %i.qd, i32 %i.qa, i64 3
  %i.qf = shl <4 x i32> %i.qe, %broadcast.splat497
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.nn
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.np
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.nr
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.nt
  %i.qk = load i32, ptr %i.qg, align 4, !tbaa !8
  %i.ql = load i32, ptr %i.qh, align 4, !tbaa !8
  %i.qm = load i32, ptr %i.qi, align 4, !tbaa !8
  %i.qn = load i32, ptr %i.qj, align 4, !tbaa !8
  %i.qo = insertelement <4 x i32> poison, i32 %i.qk, i64 0
  %i.qp = insertelement <4 x i32> %i.qo, i32 %i.ql, i64 1
  %i.qq = insertelement <4 x i32> %i.qp, i32 %i.qm, i64 2
  %i.qr = insertelement <4 x i32> %i.qq, i32 %i.qn, i64 3
  %i.qs = shl <4 x i32> %i.qr, %broadcast.splat499 ; 2 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.oh
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.oi
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.oj
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ok
  %i.qx = load i32, ptr %i.qt, align 4, !tbaa !8
  %i.qy = load i32, ptr %i.qu, align 4, !tbaa !8
  %i.qz = load i32, ptr %i.qv, align 4, !tbaa !8
  %i.ra = load i32, ptr %i.qw, align 4, !tbaa !8
  %i.rb = insertelement <4 x i32> poison, i32 %i.qx, i64 0
  %i.rc = insertelement <4 x i32> %i.rb, i32 %i.qy, i64 1
  %i.rd = insertelement <4 x i32> %i.rc, i32 %i.qz, i64 2
  %i.re = insertelement <4 x i32> %i.rd, i32 %i.ra, i64 3
  %i.rf = shl <4 x i32> %i.re, %broadcast.splat499 ; 2 uses
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.oy
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.oz
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.pa
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.pb
  %i.rk = load i32, ptr %i.rg, align 4, !tbaa !8
  %i.rl = load i32, ptr %i.rh, align 4, !tbaa !8
  %i.rm = load i32, ptr %i.ri, align 4, !tbaa !8
  %i.rn = load i32, ptr %i.rj, align 4, !tbaa !8
  %i.ro = insertelement <4 x i32> poison, i32 %i.rk, i64 0
  %i.rp = insertelement <4 x i32> %i.ro, i32 %i.rl, i64 1
  %i.rq = insertelement <4 x i32> %i.rp, i32 %i.rm, i64 2
  %i.rr = insertelement <4 x i32> %i.rq, i32 %i.rn, i64 3
  %i.rs = shl <4 x i32> %i.rr, %broadcast.splat499 ; 2 uses
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.pp
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.pq
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.pr
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ps
  %i.rx = load i32, ptr %i.rt, align 4, !tbaa !8
  %i.ry = load i32, ptr %i.ru, align 4, !tbaa !8
  %i.rz = load i32, ptr %i.rv, align 4, !tbaa !8
  %i.sa = load i32, ptr %i.rw, align 4, !tbaa !8
  %i.sb = insertelement <4 x i32> poison, i32 %i.rx, i64 0
  %i.sc = insertelement <4 x i32> %i.sb, i32 %i.ry, i64 1
  %i.sd = insertelement <4 x i32> %i.sc, i32 %i.rz, i64 2
  %i.se = insertelement <4 x i32> %i.sd, i32 %i.sa, i64 3
  %i.sf = shl <4 x i32> %i.se, %broadcast.splat499 ; 2 uses
  %i.sg = add <4 x i32> %i.qs, %i.og
  %i.sh = add <4 x i32> %i.rf, %i.ox
  %i.si = add <4 x i32> %i.rs, %i.po
  %i.sj = add <4 x i32> %i.sf, %i.qf
  %i.sk = shl nuw nsw i64 %index501, 5
  %i.sl = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.sk
  %i.sm = shufflevector <4 x i32> %i.sg, <4 x i32> %i.qs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.sn = shufflevector <4 x i32> %i.sh, <4 x i32> %i.rf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.so = shufflevector <8 x i32> %i.sm, <8 x i32> %i.sn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sp = shufflevector <4 x i32> %i.si, <4 x i32> %i.rs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.sq = shufflevector <4 x i32> %i.sj, <4 x i32> %i.sf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.sr = shufflevector <8 x i32> %i.sp, <8 x i32> %i.sq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ss = shufflevector <16 x i32> %i.so, <16 x i32> %i.sr, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.st = sitofp <32 x i32> %i.ss to <32 x float>
  %interleaved.vec502 = fmul nnan <32 x float> %i.st, splat (float f0x30000000)
  store <32 x float> %interleaved.vec502, ptr %i.sl, align 4, !tbaa !336
  %index.next503 = add nuw i64 %index501, 4       ; 2 uses
  %i.su = icmp eq i64 %index.next503, %n.vec495
  br i1 %i.su, label %middle.block504, label %vector.body500, !llvm.loop !1751

middle.block504:                                  ; preds = %vector.body500
  %cmp.n505 = icmp eq i64 %i.ni, %n.vec495
  br i1 %cmp.n505, label %._crit_edge172, label %.lr.ph171.preheader615

.lr.ph171.preheader615:                           ; preds = %.lr.ph171.preheader, %middle.block504
  %.0.i99169.ph = phi i64 [ 0, %.lr.ph171.preheader ], [ %n.vec495, %middle.block504 ]
  %i.sv = insertelement <4 x i32> poison, i32 %i.nk, i64 0
  %i.sw = shufflevector <4 x i32> %i.sv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.sx = insertelement <4 x i32> poison, i32 %i.nm, i64 0
  %i.sy = shufflevector <4 x i32> %i.sx, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph171.preheader615, %.lr.ph171
  %.0.i99169 = phi i64 [ %i.tp, %.lr.ph171 ], [ %.0.i99169.ph, %.lr.ph171.preheader615 ] ; 3 uses
  %i.sz = shl nuw nsw i64 %.0.i99169, 2           ; 2 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.sz
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.sz
  %i.tc = load <4 x i32>, ptr %i.ta, align 4, !tbaa !8
  %i.td = shl <4 x i32> %i.tc, %i.sw
  %i.te = load <4 x i32>, ptr %i.tb, align 4, !tbaa !8
  %i.tf = shl <4 x i32> %i.te, %i.sy              ; 3 uses
  %i.tg = add <4 x i32> %i.tf, %i.td              ; 2 uses
  %.idx123 = shl nuw nsw i64 %.0.i99169, 5
  %i.th = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx123 ; 2 uses
  %i.ti = shufflevector <4 x i32> %i.tg, <4 x i32> %i.tf, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.tj = sitofp <4 x i32> %i.ti to <4 x float>
  %i.tk = fmul nnan <4 x float> %i.tj, splat (float f0x30000000)
  store <4 x float> %i.tk, ptr %i.th, align 4, !tbaa !336
  %i.tl = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  %i.tm = shufflevector <4 x i32> %i.tg, <4 x i32> %i.tf, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.tn = sitofp <4 x i32> %i.tm to <4 x float>
  %i.to = fmul nnan <4 x float> %i.tn, splat (float f0x30000000)
  store <4 x float> %i.to, ptr %i.tl, align 4, !tbaa !336
  %i.tp = add nuw nsw i64 %.0.i99169, 1           ; 2 uses
  %exitcond271.not = icmp eq i64 %i.tp, %i.ni
  br i1 %exitcond271.not, label %._crit_edge172, label %.lr.ph171, !llvm.loop !1752

._crit_edge172:                                   ; preds = %.lr.ph171, %middle.block504, %bb.r
  %i.tq = and i64 %spec.select, 4294967292        ; 5 uses
  %.not231 = icmp eq i64 %i.tq, %spec.select
  br i1 %.not231, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph175.preheader

.lr.ph175.preheader:                              ; preds = %._crit_edge172
  %i.tr = or disjoint i64 %i.tq, 1
  %i.ts = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.tr) ; 2 uses
  %6 = and i64 %spec.select, 4294967292
  %i.tt = sub nsw i64 %i.ts, %6                   ; 2 uses
  %min.iters.check476 = icmp ult i64 %i.tt, 4
  br i1 %min.iters.check476, label %.lr.ph175.preheader613, label %vector.ph477

vector.ph477:                                     ; preds = %.lr.ph175.preheader
  %i.tu = and i64 %i.ts, 3                        ; 2 uses
  %n.vec478 = sub nuw nsw i64 %i.tt, %i.tu        ; 2 uses
  %i.tv = add nsw i64 %i.tq, %n.vec478
  %broadcast.splatinsert479 = insertelement <4 x i32> poison, i32 %i.nk, i64 0
  %broadcast.splat480 = shufflevector <4 x i32> %broadcast.splatinsert479, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert481 = insertelement <4 x i32> poison, i32 %i.nm, i64 0
  %broadcast.splat482 = shufflevector <4 x i32> %broadcast.splatinsert481, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body483

vector.body483:                                   ; preds = %vector.body483, %vector.ph477
  %index484 = phi i64 [ 0, %vector.ph477 ], [ %index.next488, %vector.body483 ] ; 2 uses
  %i.tw = add nuw i64 %i.tq, %index484            ; 3 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.tw
  %wide.load485 = load <4 x i32>, ptr %i.tx, align 4, !tbaa !8
  %i.ty = shl <4 x i32> %wide.load485, %broadcast.splat480
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.tw
  %wide.load486 = load <4 x i32>, ptr %i.tz, align 4, !tbaa !8
  %i.ua = shl <4 x i32> %wide.load486, %broadcast.splat482 ; 2 uses
  %i.ub = add <4 x i32> %i.ua, %i.ty
  %i.uc = shl nuw nsw i64 %i.tw, 3
  %i.ud = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.uc
  %i.ue = shufflevector <4 x i32> %i.ub, <4 x i32> %i.ua, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.uf = sitofp <8 x i32> %i.ue to <8 x float>
  %interleaved.vec487 = fmul nnan <8 x float> %i.uf, splat (float f0x30000000)
  store <8 x float> %interleaved.vec487, ptr %i.ud, align 4, !tbaa !336
  %index.next488 = add nuw i64 %index484, 4       ; 2 uses
  %i.ug = icmp eq i64 %index.next488, %n.vec478
  br i1 %i.ug, label %middle.block489, label %vector.body483, !llvm.loop !1753

middle.block489:                                  ; preds = %vector.body483
  %cmp.n490 = icmp eq i64 %i.tu, 0
  br i1 %cmp.n490, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph175.preheader613

.lr.ph175.preheader613:                           ; preds = %.lr.ph175.preheader, %middle.block489
  %.1.i100173.ph = phi i64 [ %i.tq, %.lr.ph175.preheader ], [ %i.tv, %middle.block489 ]
  br label %.lr.ph175

.lr.ph175:                                        ; preds = %.lr.ph175.preheader613, %.lr.ph175
  %.1.i100173 = phi i64 [ %i.ut, %.lr.ph175 ], [ %.1.i100173.ph, %.lr.ph175.preheader613 ] ; 4 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i100173
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !8
  %i.uj = shl i32 %i.ui, %i.nk
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.1.i100173
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !8
  %i.um = shl i32 %i.ul, %i.nm                    ; 2 uses
  %i.un = add i32 %i.um, %i.uj
  %.idx122 = shl nuw nsw i64 %.1.i100173, 3
  %i.uo = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx122
  %i.up = insertelement <2 x i32> poison, i32 %i.un, i64 0
  %i.uq = insertelement <2 x i32> %i.up, i32 %i.um, i64 1
  %i.ur = sitofp <2 x i32> %i.uq to <2 x float>
  %i.us = fmul nnan <2 x float> %i.ur, splat (float f0x30000000)
  store <2 x float> %i.us, ptr %i.uo, align 4, !tbaa !336
  %i.ut = add nuw nsw i64 %.1.i100173, 1          ; 2 uses
  %i.uu = icmp samesign ult i64 %i.ut, %spec.select
  br i1 %i.uu, label %.lr.ph175, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, !llvm.loop !1754

bb.s:                                             ; preds = %bb.j
  br i1 %.b.i93, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.uv = load i8, ptr %i.w, align 1, !tbaa !1733
  %i.uw = icmp ult i8 %i.uv, 25
  br i1 %i.uw, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ux = lshr i64 %spec.select, 2                ; 3 uses
  %.not228 = icmp eq i64 %i.ux, 0                 ; 2 uses
  br i1 %i.ai, label %.preheader140, label %bb.v

.preheader140:                                    ; preds = %bb.u
  br i1 %.not228, label %._crit_edge165, label %.lr.ph164

.lr.ph164:                                        ; preds = %.preheader140, %.lr.ph164
  %.0.i102163 = phi i64 [ %i.vx, %.lr.ph164 ], [ 0, %.preheader140 ] ; 4 uses
  %i.uy = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0.i102163
  %i.uz = load <4 x i32>, ptr %i.uy, align 1, !tbaa !9
  %i.va = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.vb = zext i8 %i.va to i32
  %i.vc = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.uz, i32 range(i32 -232, 288) %i.vb)
  %i.vd = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %.0.i102163
  %i.ve = load <4 x i32>, ptr %i.vd, align 1, !tbaa !9
  %i.vf = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.vg = zext i8 %i.vf to i32
  %i.vh = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.ve, i32 range(i32 -232, 288) %i.vg) ; 3 uses
  %i.vi = shl <4 x i32> %i.vc, splat (i32 1)
  %i.vj = and <4 x i32> %i.vh, splat (i32 1)
  %i.vk = or disjoint <4 x i32> %i.vj, %i.vi      ; 2 uses
  %i.vl = add <4 x i32> %i.vk, %i.vh
  %i.vm = ashr <4 x i32> %i.vl, splat (i32 1)
  %i.vn = sub <4 x i32> %i.vk, %i.vh
  %i.vo = ashr <4 x i32> %i.vn, splat (i32 1)
  %i.vp = sitofp <4 x i32> %i.vm to <4 x float>
  %i.vq = fmul nnan <4 x float> %i.vp, splat (float f0x34000000) ; 2 uses
  %i.vr = sitofp <4 x i32> %i.vo to <4 x float>
  %i.vs = fmul nnan <4 x float> %i.vr, splat (float f0x34000000) ; 2 uses
  %.idx111.i = shl nuw nsw i64 %.0.i102163, 5
  %i.vt = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx111.i ; 2 uses
  %i.vu = shufflevector <4 x float> %i.vq, <4 x float> %i.vs, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.vu, ptr %i.vt, align 1, !tbaa !9
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  %i.vw = shufflevector <4 x float> %i.vq, <4 x float> %i.vs, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.vw, ptr %i.vv, align 1, !tbaa !9
  %i.vx = add nuw nsw i64 %.0.i102163, 1          ; 2 uses
  %exitcond270.not = icmp eq i64 %i.vx, %i.ux
  br i1 %exitcond270.not, label %._crit_edge165, label %.lr.ph164, !llvm.loop !1755

._crit_edge165:                                   ; preds = %.lr.ph164, %.preheader140
  %i.vy = and i64 %spec.select, 4294967292        ; 5 uses
  %.not229 = icmp eq i64 %i.vy, %spec.select
  br i1 %.not229, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph168

.lr.ph168:                                        ; preds = %._crit_edge165
  %i.vz = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.wa = zext nneg i8 %i.vz to i32               ; 2 uses
  %i.wb = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.wc = zext nneg i8 %i.wb to i32               ; 2 uses
  %i.wd = or disjoint i64 %i.vy, 1
  %i.we = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.wd) ; 2 uses
  %7 = and i64 %spec.select, 4294967292
  %i.wf = sub nsw i64 %i.we, %7                   ; 2 uses
  %min.iters.check508 = icmp ult i64 %i.wf, 4
  br i1 %min.iters.check508, label %scalar.ph507.preheader, label %vector.ph509

vector.ph509:                                     ; preds = %.lr.ph168
  %i.wg = and i64 %i.we, 3                        ; 2 uses
  %n.vec510 = sub nuw nsw i64 %i.wf, %i.wg        ; 2 uses
  %i.wh = add nsw i64 %i.vy, %n.vec510
  %broadcast.splatinsert511 = insertelement <4 x i32> poison, i32 %i.wa, i64 0
  %broadcast.splat512 = shufflevector <4 x i32> %broadcast.splatinsert511, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert513 = insertelement <4 x i32> poison, i32 %i.wc, i64 0
  %broadcast.splat514 = shufflevector <4 x i32> %broadcast.splatinsert513, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body515

vector.body515:                                   ; preds = %vector.body515, %vector.ph509
  %index516 = phi i64 [ 0, %vector.ph509 ], [ %index.next520, %vector.body515 ] ; 2 uses
  %i.wi = add nuw i64 %i.vy, %index516            ; 3 uses
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.wi
  %wide.load517 = load <4 x i32>, ptr %i.wj, align 4, !tbaa !8
  %i.wk = shl <4 x i32> %wide.load517, %broadcast.splat512
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.wi
  %wide.load518 = load <4 x i32>, ptr %i.wl, align 4, !tbaa !8
  %i.wm = shl <4 x i32> %wide.load518, %broadcast.splat514 ; 3 uses
  %i.wn = shl <4 x i32> %i.wk, splat (i32 1)
  %i.wo = and <4 x i32> %i.wm, splat (i32 1)
  %i.wp = or disjoint <4 x i32> %i.wo, %i.wn      ; 2 uses
  %i.wq = add <4 x i32> %i.wp, %i.wm
  %i.wr = shl nuw nsw i64 %i.wi, 3
  %i.ws = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.wr
  %i.wt = sub <4 x i32> %i.wp, %i.wm
  %i.wu = shufflevector <4 x i32> %i.wq, <4 x i32> %i.wt, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.wv = ashr <8 x i32> %i.wu, splat (i32 1)
  %i.ww = sitofp <8 x i32> %i.wv to <8 x float>
  %interleaved.vec519 = fmul nnan <8 x float> %i.ww, splat (float f0x34000000)
  store <8 x float> %interleaved.vec519, ptr %i.ws, align 4, !tbaa !336
  %index.next520 = add nuw i64 %index516, 4       ; 2 uses
  %i.wx = icmp eq i64 %index.next520, %n.vec510
  br i1 %i.wx, label %middle.block521, label %vector.body515, !llvm.loop !1756

middle.block521:                                  ; preds = %vector.body515
  %cmp.n522 = icmp eq i64 %i.wg, 0
  br i1 %cmp.n522, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %scalar.ph507.preheader

scalar.ph507.preheader:                           ; preds = %.lr.ph168, %middle.block521
  %.1.i103166.ph = phi i64 [ %i.vy, %.lr.ph168 ], [ %i.wh, %middle.block521 ]
  br label %scalar.ph507

scalar.ph507:                                     ; preds = %scalar.ph507.preheader, %scalar.ph507
  %.1.i103166 = phi i64 [ %i.xp, %scalar.ph507 ], [ %.1.i103166.ph, %scalar.ph507.preheader ] ; 4 uses
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i103166
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !8
  %i.xa = shl i32 %i.wz, %i.wa
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.1.i103166
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !8
  %i.xd = shl i32 %i.xc, %i.wc                    ; 3 uses
  %i.xe = shl i32 %i.xa, 1
  %i.xf = and i32 %i.xd, 1
  %i.xg = or disjoint i32 %i.xf, %i.xe            ; 2 uses
  %.idx121 = shl nuw nsw i64 %.1.i103166, 3
  %i.xh = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx121
  %i.xi = sub i32 %i.xg, %i.xd
  %i.xj = add i32 %i.xg, %i.xd
  %i.xk = insertelement <2 x i32> poison, i32 %i.xj, i64 0
  %i.xl = insertelement <2 x i32> %i.xk, i32 %i.xi, i64 1
  %i.xm = ashr <2 x i32> %i.xl, splat (i32 1)
  %i.xn = sitofp <2 x i32> %i.xm to <2 x float>
  %i.xo = fmul nnan <2 x float> %i.xn, splat (float f0x34000000)
  store <2 x float> %i.xo, ptr %i.xh, align 4, !tbaa !336
  %i.xp = add nuw nsw i64 %.1.i103166, 1          ; 2 uses
  %i.xq = icmp samesign ult i64 %i.xp, %spec.select
  br i1 %i.xq, label %scalar.ph507, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, !llvm.loop !1757

bb.v:                                             ; preds = %bb.u
  br i1 %.not228, label %._crit_edge, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.v, %.lr.ph159
  %.2.i158 = phi i64 [ %i.yq, %.lr.ph159 ], [ 0, %bb.v ] ; 4 uses
  %i.xr = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.2.i158
  %i.xs = load <4 x i32>, ptr %i.xr, align 1, !tbaa !9
  %i.xt = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.xu = zext i8 %i.xt to i32
  %i.xv = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.xs, i32 range(i32 -232, 288) %i.xu)
  %i.xw = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %.2.i158
  %i.xx = load <4 x i32>, ptr %i.xw, align 1, !tbaa !9
  %i.xy = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.xz = zext i8 %i.xy to i32
  %i.ya = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.xx, i32 range(i32 -232, 288) %i.xz) ; 3 uses
  %i.yb = shl <4 x i32> %i.xv, splat (i32 1)
  %i.yc = and <4 x i32> %i.ya, splat (i32 1)
  %i.yd = or disjoint <4 x i32> %i.yc, %i.yb      ; 2 uses
  %i.ye = add <4 x i32> %i.yd, %i.ya
  %i.yf = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.ye, i32 range(i32 -232, 288) %i.aj)
  %i.yg = sub <4 x i32> %i.yd, %i.ya
  %i.yh = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.yg, i32 range(i32 -232, 288) %i.aj)
  %i.yi = sitofp <4 x i32> %i.yf to <4 x float>
  %i.yj = fmul nnan <4 x float> %i.yi, splat (float f0x34000000) ; 2 uses
  %i.yk = sitofp <4 x i32> %i.yh to <4 x float>
  %i.yl = fmul nnan <4 x float> %i.yk, splat (float f0x34000000) ; 2 uses
  %.idx.i101 = shl nuw nsw i64 %.2.i158, 5
  %i.ym = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx.i101 ; 2 uses
  %i.yn = shufflevector <4 x float> %i.yj, <4 x float> %i.yl, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.yn, ptr %i.ym, align 1, !tbaa !9
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 16
  %i.yp = shufflevector <4 x float> %i.yj, <4 x float> %i.yl, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.yp, ptr %i.yo, align 1, !tbaa !9
  %i.yq = add nuw nsw i64 %.2.i158, 1             ; 2 uses
  %exitcond269.not = icmp eq i64 %i.yq, %i.ux
  br i1 %exitcond269.not, label %._crit_edge, label %.lr.ph159, !llvm.loop !1758

._crit_edge:                                      ; preds = %.lr.ph159, %bb.v
  %i.yr = and i64 %spec.select, 4294967292        ; 5 uses
  %.not227 = icmp eq i64 %i.yr, %spec.select
  br i1 %.not227, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph162

.lr.ph162:                                        ; preds = %._crit_edge
  %i.ys = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.yt = zext nneg i8 %i.ys to i32               ; 2 uses
  %i.yu = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.yv = zext nneg i8 %i.yu to i32               ; 2 uses
  %i.yw = or disjoint i64 %i.yr, 1
  %i.yx = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.yw) ; 2 uses
  %8 = and i64 %spec.select, 4294967292
  %i.yy = sub nsw i64 %i.yx, %8                   ; 2 uses
  %min.iters.check525 = icmp ult i64 %i.yy, 4
  br i1 %min.iters.check525, label %scalar.ph524.preheader, label %vector.ph526

vector.ph526:                                     ; preds = %.lr.ph162
  %i.yz = and i64 %i.yx, 3                        ; 2 uses
  %n.vec527 = sub nuw nsw i64 %i.yy, %i.yz        ; 2 uses
  %i.za = add nsw i64 %i.yr, %n.vec527
  %broadcast.splatinsert528 = insertelement <4 x i32> poison, i32 %i.yt, i64 0
  %broadcast.splat529 = shufflevector <4 x i32> %broadcast.splatinsert528, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert530 = insertelement <4 x i32> poison, i32 %i.yv, i64 0
  %broadcast.splat531 = shufflevector <4 x i32> %broadcast.splatinsert530, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body534

vector.body534:                                   ; preds = %vector.body534, %vector.ph526
  %index535 = phi i64 [ 0, %vector.ph526 ], [ %index.next539, %vector.body534 ] ; 2 uses
  %i.zb = add nuw i64 %i.yr, %index535            ; 3 uses
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.zb
  %wide.load536 = load <4 x i32>, ptr %i.zc, align 4, !tbaa !8
  %i.zd = shl <4 x i32> %wide.load536, %broadcast.splat529
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.zb
  %wide.load537 = load <4 x i32>, ptr %i.ze, align 4, !tbaa !8
  %i.zf = shl <4 x i32> %wide.load537, %broadcast.splat531 ; 3 uses
  %i.zg = shl <4 x i32> %i.zd, splat (i32 1)
  %i.zh = and <4 x i32> %i.zf, splat (i32 1)
  %i.zi = or disjoint <4 x i32> %i.zh, %i.zg      ; 2 uses
  %i.zj = add <4 x i32> %i.zi, %i.zf
  %i.zk = shl <4 x i32> %i.zj, %broadcast.splat533
  %i.zl = shl nuw nsw i64 %i.zb, 3
  %i.zm = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.zl
  %i.zn = sub <4 x i32> %i.zi, %i.zf
  %i.zo = shl <4 x i32> %i.zn, %broadcast.splat533
  %i.zp = shufflevector <4 x i32> %i.zk, <4 x i32> %i.zo, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.zq = sitofp <8 x i32> %i.zp to <8 x float>
  %interleaved.vec538 = fmul nnan <8 x float> %i.zq, splat (float f0x34000000)
  store <8 x float> %interleaved.vec538, ptr %i.zm, align 4, !tbaa !336
  %index.next539 = add nuw i64 %index535, 4       ; 2 uses
  %i.zr = icmp eq i64 %index.next539, %n.vec527
  br i1 %i.zr, label %middle.block540, label %vector.body534, !llvm.loop !1759

middle.block540:                                  ; preds = %vector.body534
  %cmp.n541 = icmp eq i64 %i.yz, 0
  br i1 %cmp.n541, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %scalar.ph524.preheader

scalar.ph524.preheader:                           ; preds = %.lr.ph162, %middle.block540
  %.3.i160.ph = phi i64 [ %i.yr, %.lr.ph162 ], [ %i.za, %middle.block540 ]
  br label %scalar.ph524

scalar.ph524:                                     ; preds = %scalar.ph524.preheader, %scalar.ph524
  %.3.i160 = phi i64 [ %i.aak, %scalar.ph524 ], [ %.3.i160.ph, %scalar.ph524.preheader ] ; 4 uses
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.3.i160
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !8
  %i.zu = shl i32 %i.zt, %i.yt
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.3.i160
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !8
  %i.zx = shl i32 %i.zw, %i.yv                    ; 3 uses
  %i.zy = shl i32 %i.zu, 1
  %i.zz = and i32 %i.zx, 1
  %i.aaa = or disjoint i32 %i.zz, %i.zy           ; 2 uses
  %.idx120 = shl nuw nsw i64 %.3.i160, 3
  %i.aab = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx120
  %i.aac = sub i32 %i.aaa, %i.zx
  %i.aad = add i32 %i.aaa, %i.zx
  %i.aae = shl i32 %i.aac, %i.aj
  %i.aaf = shl i32 %i.aad, %i.aj
  %i.aag = insertelement <2 x i32> poison, i32 %i.aaf, i64 0
  %i.aah = insertelement <2 x i32> %i.aag, i32 %i.aae, i64 1
  %i.aai = sitofp <2 x i32> %i.aah to <2 x float>
  %i.aaj = fmul nnan <2 x float> %i.aai, splat (float f0x34000000)
  store <2 x float> %i.aaj, ptr %i.aab, align 4, !tbaa !336
  %i.aak = add nuw nsw i64 %.3.i160, 1            ; 2 uses
  %i.aal = icmp samesign ult i64 %i.aak, %spec.select
  br i1 %i.aal, label %scalar.ph524, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, !llvm.loop !1760

bb.w:                                             ; preds = %bb.t, %bb.s
  %i.aam = lshr i64 %spec.select, 2               ; 7 uses
  %.not224 = icmp eq i64 %i.aam, 0                ; 2 uses
  br i1 %.not.i, label %.preheader143, label %bb.x

.preheader143:                                    ; preds = %bb.w
  br i1 %.not224, label %.loopexit, label %.lr.ph155

.lr.ph155:                                        ; preds = %.preheader143
  %i.aan = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.aao = zext i8 %i.aan to i32                  ; 2 uses
  %i.aap = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.aaq = zext i8 %i.aap to i32                  ; 2 uses
  %min.iters.check563 = icmp samesign ult i64 %spec.select, 16
  br i1 %min.iters.check563, label %scalar.ph562.preheader, label %vector.ph564

vector.ph564:                                     ; preds = %.lr.ph155
  %n.vec565 = and i64 %i.aam, 1073741820          ; 3 uses
  %broadcast.splatinsert566 = insertelement <4 x i32> poison, i32 %i.aao, i64 0
  %broadcast.splat567 = shufflevector <4 x i32> %broadcast.splatinsert566, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert568 = insertelement <4 x i32> poison, i32 %i.aaq, i64 0
  %broadcast.splat569 = shufflevector <4 x i32> %broadcast.splatinsert568, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body570

vector.body570:                                   ; preds = %vector.body570, %vector.ph564
  %index571 = phi i64 [ 0, %vector.ph564 ], [ %index.next573, %vector.body570 ] ; 6 uses
  %i.aar = shl nuw nsw i64 %index571, 2           ; 5 uses
  %i.aas = shl i64 %index571, 2                   ; 4 uses
  %i.aat = or disjoint i64 %i.aas, 4              ; 2 uses
  %i.aau = shl i64 %index571, 2                   ; 4 uses
  %i.aav = or disjoint i64 %i.aau, 8              ; 2 uses
  %i.aaw = shl i64 %index571, 2                   ; 4 uses
  %i.aax = or disjoint i64 %i.aaw, 12             ; 2 uses
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aar
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aat
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aav
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aax
  %i.abc = load i32, ptr %i.aay, align 4, !tbaa !8
  %i.abd = load i32, ptr %i.aaz, align 4, !tbaa !8
  %i.abe = load i32, ptr %i.aba, align 4, !tbaa !8
  %i.abf = load i32, ptr %i.abb, align 4, !tbaa !8
  %i.abg = insertelement <4 x i32> poison, i32 %i.abc, i64 0
  %i.abh = insertelement <4 x i32> %i.abg, i32 %i.abd, i64 1
  %i.abi = insertelement <4 x i32> %i.abh, i32 %i.abe, i64 2
  %i.abj = insertelement <4 x i32> %i.abi, i32 %i.abf, i64 3
  %i.abk = shl <4 x i32> %i.abj, %broadcast.splat567
  %i.abl = or disjoint i64 %i.aar, 1              ; 2 uses
  %i.abm = or disjoint i64 %i.aas, 5              ; 2 uses
  %i.abn = or disjoint i64 %i.aau, 9              ; 2 uses
  %i.abo = or disjoint i64 %i.aaw, 13             ; 2 uses
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.abl
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.abm
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.abn
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.abo
  %i.abt = load i32, ptr %i.abp, align 4, !tbaa !8
  %i.abu = load i32, ptr %i.abq, align 4, !tbaa !8
  %i.abv = load i32, ptr %i.abr, align 4, !tbaa !8
  %i.abw = load i32, ptr %i.abs, align 4, !tbaa !8
  %i.abx = insertelement <4 x i32> poison, i32 %i.abt, i64 0
  %i.aby = insertelement <4 x i32> %i.abx, i32 %i.abu, i64 1
  %i.abz = insertelement <4 x i32> %i.aby, i32 %i.abv, i64 2
  %i.aca = insertelement <4 x i32> %i.abz, i32 %i.abw, i64 3
  %i.acb = shl <4 x i32> %i.aca, %broadcast.splat567
  %i.acc = or disjoint i64 %i.aar, 2              ; 2 uses
  %i.acd = or disjoint i64 %i.aas, 6              ; 2 uses
  %i.ace = or disjoint i64 %i.aau, 10             ; 2 uses
  %i.acf = or disjoint i64 %i.aaw, 14             ; 2 uses
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.acc
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.acd
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ace
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.acf
  %i.ack = load i32, ptr %i.acg, align 4, !tbaa !8
  %i.acl = load i32, ptr %i.ach, align 4, !tbaa !8
  %i.acm = load i32, ptr %i.aci, align 4, !tbaa !8
  %i.acn = load i32, ptr %i.acj, align 4, !tbaa !8
  %i.aco = insertelement <4 x i32> poison, i32 %i.ack, i64 0
  %i.acp = insertelement <4 x i32> %i.aco, i32 %i.acl, i64 1
  %i.acq = insertelement <4 x i32> %i.acp, i32 %i.acm, i64 2
  %i.acr = insertelement <4 x i32> %i.acq, i32 %i.acn, i64 3
  %i.acs = shl <4 x i32> %i.acr, %broadcast.splat567
  %i.act = or disjoint i64 %i.aar, 3              ; 2 uses
  %i.acu = or disjoint i64 %i.aas, 7              ; 2 uses
  %i.acv = or disjoint i64 %i.aau, 11             ; 2 uses
  %i.acw = or disjoint i64 %i.aaw, 15             ; 2 uses
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.act
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.acu
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.acv
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.acw
  %i.adb = load i32, ptr %i.acx, align 4, !tbaa !8
  %i.adc = load i32, ptr %i.acy, align 4, !tbaa !8
  %i.add = load i32, ptr %i.acz, align 4, !tbaa !8
  %i.ade = load i32, ptr %i.ada, align 4, !tbaa !8
  %i.adf = insertelement <4 x i32> poison, i32 %i.adb, i64 0
  %i.adg = insertelement <4 x i32> %i.adf, i32 %i.adc, i64 1
  %i.adh = insertelement <4 x i32> %i.adg, i32 %i.add, i64 2
  %i.adi = insertelement <4 x i32> %i.adh, i32 %i.ade, i64 3
  %i.adj = shl <4 x i32> %i.adi, %broadcast.splat567
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aar
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aat
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aav
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aax
  %i.ado = load i32, ptr %i.adk, align 4, !tbaa !8
  %i.adp = load i32, ptr %i.adl, align 4, !tbaa !8
  %i.adq = load i32, ptr %i.adm, align 4, !tbaa !8
  %i.adr = load i32, ptr %i.adn, align 4, !tbaa !8
  %i.ads = insertelement <4 x i32> poison, i32 %i.ado, i64 0
  %i.adt = insertelement <4 x i32> %i.ads, i32 %i.adp, i64 1
  %i.adu = insertelement <4 x i32> %i.adt, i32 %i.adq, i64 2
  %i.adv = insertelement <4 x i32> %i.adu, i32 %i.adr, i64 3
  %i.adw = shl <4 x i32> %i.adv, %broadcast.splat569 ; 3 uses
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.abl
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.abm
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.abn
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.abo
  %i.aeb = load i32, ptr %i.adx, align 4, !tbaa !8
  %i.aec = load i32, ptr %i.ady, align 4, !tbaa !8
  %i.aed = load i32, ptr %i.adz, align 4, !tbaa !8
  %i.aee = load i32, ptr %i.aea, align 4, !tbaa !8
  %i.aef = insertelement <4 x i32> poison, i32 %i.aeb, i64 0
  %i.aeg = insertelement <4 x i32> %i.aef, i32 %i.aec, i64 1
  %i.aeh = insertelement <4 x i32> %i.aeg, i32 %i.aed, i64 2
  %i.aei = insertelement <4 x i32> %i.aeh, i32 %i.aee, i64 3
  %i.aej = shl <4 x i32> %i.aei, %broadcast.splat569 ; 3 uses
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.acc
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.acd
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ace
  %i.aen = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.acf
end_hunk_0
begin_hunk_1_@ma_dr_flac_read_pcm_frames_f32:bb.a
  %i.ajo = insertelement <4 x i32> %i.ajn, i32 %i.ajk, i64 2
  %i.ajp = insertelement <4 x i32> %i.ajo, i32 %i.ajl, i64 3
  %i.ajq = shl <4 x i32> %i.ajp, %broadcast.splat582
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.agy
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aha
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ahc
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ahe
  %i.ajv = load i32, ptr %i.ajr, align 4, !tbaa !8
  %i.ajw = load i32, ptr %i.ajs, align 4, !tbaa !8
  %i.ajx = load i32, ptr %i.ajt, align 4, !tbaa !8
  %i.ajy = load i32, ptr %i.aju, align 4, !tbaa !8
  %i.ajz = insertelement <4 x i32> poison, i32 %i.ajv, i64 0
  %i.aka = insertelement <4 x i32> %i.ajz, i32 %i.ajw, i64 1
  %i.akb = insertelement <4 x i32> %i.aka, i32 %i.ajx, i64 2
  %i.akc = insertelement <4 x i32> %i.akb, i32 %i.ajy, i64 3
  %i.akd = shl <4 x i32> %i.akc, %broadcast.splat584 ; 3 uses
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ahs
  %i.akf = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aht
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ahu
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ahv
  %i.aki = load i32, ptr %i.ake, align 4, !tbaa !8
  %i.akj = load i32, ptr %i.akf, align 4, !tbaa !8
  %i.akk = load i32, ptr %i.akg, align 4, !tbaa !8
  %i.akl = load i32, ptr %i.akh, align 4, !tbaa !8
  %i.akm = insertelement <4 x i32> poison, i32 %i.aki, i64 0
  %i.akn = insertelement <4 x i32> %i.akm, i32 %i.akj, i64 1
  %i.ako = insertelement <4 x i32> %i.akn, i32 %i.akk, i64 2
  %i.akp = insertelement <4 x i32> %i.ako, i32 %i.akl, i64 3
  %i.akq = shl <4 x i32> %i.akp, %broadcast.splat584 ; 3 uses
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aij
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aik
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ail
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aim
  %i.akv = load i32, ptr %i.akr, align 4, !tbaa !8
  %i.akw = load i32, ptr %i.aks, align 4, !tbaa !8
  %i.akx = load i32, ptr %i.akt, align 4, !tbaa !8
  %i.aky = load i32, ptr %i.aku, align 4, !tbaa !8
  %i.akz = insertelement <4 x i32> poison, i32 %i.akv, i64 0
  %i.ala = insertelement <4 x i32> %i.akz, i32 %i.akw, i64 1
  %i.alb = insertelement <4 x i32> %i.ala, i32 %i.akx, i64 2
  %i.alc = insertelement <4 x i32> %i.alb, i32 %i.aky, i64 3
  %i.ald = shl <4 x i32> %i.alc, %broadcast.splat584 ; 3 uses
  %i.ale = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aja
  %i.alf = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ajb
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ajc
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ajd
  %i.ali = load i32, ptr %i.ale, align 4, !tbaa !8
  %i.alj = load i32, ptr %i.alf, align 4, !tbaa !8
  %i.alk = load i32, ptr %i.alg, align 4, !tbaa !8
  %i.all = load i32, ptr %i.alh, align 4, !tbaa !8
  %i.alm = insertelement <4 x i32> poison, i32 %i.ali, i64 0
  %i.aln = insertelement <4 x i32> %i.alm, i32 %i.alj, i64 1
  %i.alo = insertelement <4 x i32> %i.aln, i32 %i.alk, i64 2
  %i.alp = insertelement <4 x i32> %i.alo, i32 %i.all, i64 3
  %i.alq = shl <4 x i32> %i.alp, %broadcast.splat584 ; 3 uses
  %i.alr = shl <4 x i32> %i.ahr, splat (i32 1)
  %i.als = and <4 x i32> %i.akd, splat (i32 1)
  %i.alt = or disjoint <4 x i32> %i.als, %i.alr   ; 2 uses
  %i.alu = shl <4 x i32> %i.aii, splat (i32 1)
  %i.alv = and <4 x i32> %i.akq, splat (i32 1)
  %i.alw = or disjoint <4 x i32> %i.alv, %i.alu   ; 2 uses
  %i.alx = shl <4 x i32> %i.aiz, splat (i32 1)
  %i.aly = and <4 x i32> %i.ald, splat (i32 1)
  %i.alz = or disjoint <4 x i32> %i.aly, %i.alx   ; 2 uses
  %i.ama = shl <4 x i32> %i.ajq, splat (i32 1)
  %i.amb = and <4 x i32> %i.alq, splat (i32 1)
  %i.amc = or disjoint <4 x i32> %i.amb, %i.ama   ; 2 uses
  %i.amd = add <4 x i32> %i.alt, %i.akd
  %i.ame = add <4 x i32> %i.alw, %i.akq
  %i.amf = add <4 x i32> %i.alz, %i.ald
  %i.amg = add <4 x i32> %i.amc, %i.alq
  %i.amh = sub <4 x i32> %i.alt, %i.akd
  %i.ami = sub <4 x i32> %i.alw, %i.akq
  %i.amj = sub <4 x i32> %i.alz, %i.ald
  %i.amk = sub <4 x i32> %i.amc, %i.alq
  %i.aml = shl nuw nsw i64 %index588, 5
  %i.amm = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.aml
  %i.amn = shufflevector <4 x i32> %i.amd, <4 x i32> %i.amh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.amo = shufflevector <4 x i32> %i.ame, <4 x i32> %i.ami, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.amp = shufflevector <8 x i32> %i.amn, <8 x i32> %i.amo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.amq = shl <16 x i32> %i.amp, %i.ao
  %i.amr = shufflevector <4 x i32> %i.amf, <4 x i32> %i.amj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ams = shufflevector <4 x i32> %i.amg, <4 x i32> %i.amk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.amt = shufflevector <8 x i32> %i.amr, <8 x i32> %i.ams, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.amu = shl <16 x i32> %i.amt, %i.ap
  %i.amv = shufflevector <16 x i32> %i.amq, <16 x i32> %i.amu, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.amw = sitofp <32 x i32> %i.amv to <32 x float>
  %interleaved.vec589 = fmul nnan <32 x float> %i.amw, splat (float f0x30000000)
  store <32 x float> %interleaved.vec589, ptr %i.amm, align 4, !tbaa !336
  %index.next590 = add nuw i64 %index588, 4       ; 2 uses
  %i.amx = icmp eq i64 %index.next590, %n.vec580
  br i1 %i.amx, label %middle.block591, label %vector.body587, !llvm.loop !1762

middle.block591:                                  ; preds = %vector.body587
  %cmp.n592 = icmp eq i64 %i.aam, %n.vec580
  br i1 %cmp.n592, label %.loopexit, label %scalar.ph577.preheader

scalar.ph577.preheader:                           ; preds = %.lr.ph, %middle.block591
  %.0.i104153.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec580, %middle.block591 ]
  %i.amy = insertelement <2 x i32> poison, i32 %i.agv, i64 0
  %i.amz = shufflevector <2 x i32> %i.amy, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ana = insertelement <2 x i32> poison, i32 %i.agx, i64 0
  %i.anb = shufflevector <2 x i32> %i.ana, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %scalar.ph577

scalar.ph577:                                     ; preds = %scalar.ph577.preheader, %scalar.ph577
  %.0.i104153 = phi i64 [ %i.aoo, %scalar.ph577 ], [ %.0.i104153.ph, %scalar.ph577.preheader ] ; 3 uses
  %i.anc = shl nuw nsw i64 %.0.i104153, 2         ; 3 uses
  %i.and = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.anc
  %i.ane = or disjoint i64 %i.anc, 2              ; 2 uses
  %i.anf = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ane
  %i.ang = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.anc
  %i.anh = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ane
  %.idx = shl nuw nsw i64 %.0.i104153, 5
  %i.ani = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx ; 2 uses
  %i.anj = load <2 x i32>, ptr %i.and, align 4, !tbaa !8
  %i.ank = shl <2 x i32> %i.anj, %i.amz
  %i.anl = load <2 x i32>, ptr %i.ang, align 4, !tbaa !8
  %i.anm = shl <2 x i32> %i.anl, %i.anb           ; 2 uses
  %i.ann = shl <2 x i32> %i.ank, splat (i32 1)
  %i.ano = and <2 x i32> %i.anm, splat (i32 1)
  %i.anp = or disjoint <2 x i32> %i.ano, %i.ann
  %i.anq = shufflevector <2 x i32> %i.anp, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.anr = shufflevector <2 x i32> %i.anm, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.ans = add <4 x i32> %i.anq, %i.anr
  %i.ant = sub <4 x i32> %i.anq, %i.anr
  %i.anu = shufflevector <4 x i32> %i.ans, <4 x i32> %i.ant, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.anv = shl <4 x i32> %i.anu, %i.ar
  %i.anw = sitofp <4 x i32> %i.anv to <4 x float>
  %i.anx = fmul nnan <4 x float> %i.anw, splat (float f0x30000000)
  store <4 x float> %i.anx, ptr %i.ani, align 4, !tbaa !336
  %i.any = getelementptr inbounds nuw i8, ptr %i.ani, i64 16
  %i.anz = load <2 x i32>, ptr %i.anf, align 4, !tbaa !8
  %i.aoa = shl <2 x i32> %i.anz, %i.amz
  %i.aob = load <2 x i32>, ptr %i.anh, align 4, !tbaa !8
  %i.aoc = shl <2 x i32> %i.aob, %i.anb           ; 2 uses
  %i.aod = shl <2 x i32> %i.aoa, splat (i32 1)
  %i.aoe = and <2 x i32> %i.aoc, splat (i32 1)
  %i.aof = or disjoint <2 x i32> %i.aoe, %i.aod
  %i.aog = shufflevector <2 x i32> %i.aof, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.aoh = shufflevector <2 x i32> %i.aoc, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.aoi = add <4 x i32> %i.aog, %i.aoh
  %i.aoj = sub <4 x i32> %i.aog, %i.aoh
  %i.aok = shufflevector <4 x i32> %i.aoi, <4 x i32> %i.aoj, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.aol = shl <4 x i32> %i.aok, %i.ar
  %i.aom = sitofp <4 x i32> %i.aol to <4 x float>
  %i.aon = fmul nnan <4 x float> %i.aom, splat (float f0x30000000)
  store <4 x float> %i.aon, ptr %i.any, align 4, !tbaa !336
  %i.aoo = add nuw nsw i64 %.0.i104153, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.aoo, %i.aam
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph577, !llvm.loop !1763

scalar.ph562:                                     ; preds = %scalar.ph562.preheader, %scalar.ph562
  %.1.i106154 = phi i64 [ %i.aqb, %scalar.ph562 ], [ %.1.i106154.ph, %scalar.ph562.preheader ] ; 3 uses
  %i.aop = shl nuw nsw i64 %.1.i106154, 2         ; 3 uses
  %i.aoq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aop
  %i.aor = or disjoint i64 %i.aop, 2              ; 2 uses
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aor
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aop
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aor
  %.idx119 = shl nuw nsw i64 %.1.i106154, 5
  %i.aov = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx119 ; 2 uses
  %i.aow = load <2 x i32>, ptr %i.aoq, align 4, !tbaa !8
  %i.aox = shl <2 x i32> %i.aow, %i.agr
  %i.aoy = load <2 x i32>, ptr %i.aot, align 4, !tbaa !8
  %i.aoz = shl <2 x i32> %i.aoy, %i.agt           ; 2 uses
  %i.apa = shl <2 x i32> %i.aox, splat (i32 1)
  %i.apb = and <2 x i32> %i.aoz, splat (i32 1)
  %i.apc = or disjoint <2 x i32> %i.apb, %i.apa
  %i.apd = shufflevector <2 x i32> %i.apc, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.ape = shufflevector <2 x i32> %i.aoz, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.apf = add <4 x i32> %i.apd, %i.ape
  %i.apg = sub <4 x i32> %i.apd, %i.ape
  %i.aph = shufflevector <4 x i32> %i.apf, <4 x i32> %i.apg, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.api = ashr <4 x i32> %i.aph, splat (i32 1)
  %i.apj = sitofp <4 x i32> %i.api to <4 x float>
  %i.apk = fmul nnan <4 x float> %i.apj, splat (float f0x30000000)
  store <4 x float> %i.apk, ptr %i.aov, align 4, !tbaa !336
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aov, i64 16
  %i.apm = load <2 x i32>, ptr %i.aos, align 4, !tbaa !8
  %i.apn = shl <2 x i32> %i.apm, %i.agr
  %i.apo = load <2 x i32>, ptr %i.aou, align 4, !tbaa !8
  %i.app = shl <2 x i32> %i.apo, %i.agt           ; 2 uses
  %i.apq = shl <2 x i32> %i.apn, splat (i32 1)
  %i.apr = and <2 x i32> %i.app, splat (i32 1)
  %i.aps = or disjoint <2 x i32> %i.apr, %i.apq
  %i.apt = shufflevector <2 x i32> %i.aps, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.apu = shufflevector <2 x i32> %i.app, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.apv = add <4 x i32> %i.apt, %i.apu
  %i.apw = sub <4 x i32> %i.apt, %i.apu
  %i.apx = shufflevector <4 x i32> %i.apv, <4 x i32> %i.apw, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.apy = ashr <4 x i32> %i.apx, splat (i32 1)
  %i.apz = sitofp <4 x i32> %i.apy to <4 x float>
  %i.aqa = fmul nnan <4 x float> %i.apz, splat (float f0x30000000)
  store <4 x float> %i.aqa, ptr %i.apl, align 4, !tbaa !336
  %i.aqb = add nuw nsw i64 %.1.i106154, 1         ; 2 uses
  %exitcond268.not = icmp eq i64 %i.aqb, %i.aam
  br i1 %exitcond268.not, label %.loopexit, label %scalar.ph562, !llvm.loop !1764

.loopexit:                                        ; preds = %scalar.ph577, %scalar.ph562, %middle.block591, %middle.block574, %bb.x, %.preheader143
  %i.aqc = and i64 %spec.select, 4294967292       ; 5 uses
  %.not225 = icmp eq i64 %i.aqc, %spec.select
  br i1 %.not225, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph157

.lr.ph157:                                        ; preds = %.loopexit
  %i.aqd = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.aqe = zext nneg i8 %i.aqd to i32             ; 2 uses
  %i.aqf = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.aqg = zext nneg i8 %i.aqf to i32             ; 2 uses
  %i.aqh = or disjoint i64 %i.aqc, 1
  %i.aqi = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.aqh) ; 2 uses
  %9 = and i64 %spec.select, 4294967292
  %i.aqj = sub nsw i64 %i.aqi, %9                 ; 2 uses
  %min.iters.check544 = icmp ult i64 %i.aqj, 4
  br i1 %min.iters.check544, label %scalar.ph543.preheader, label %vector.ph545

vector.ph545:                                     ; preds = %.lr.ph157
  %i.aqk = and i64 %i.aqi, 3                      ; 2 uses
  %n.vec546 = sub nuw nsw i64 %i.aqj, %i.aqk      ; 2 uses
  %i.aql = add nsw i64 %i.aqc, %n.vec546
  %broadcast.splatinsert547 = insertelement <4 x i32> poison, i32 %i.aqe, i64 0
  %broadcast.splat548 = shufflevector <4 x i32> %broadcast.splatinsert547, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert549 = insertelement <4 x i32> poison, i32 %i.aqg, i64 0
  %broadcast.splat550 = shufflevector <4 x i32> %broadcast.splatinsert549, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body553

vector.body553:                                   ; preds = %vector.body553, %vector.ph545
  %index554 = phi i64 [ 0, %vector.ph545 ], [ %index.next558, %vector.body553 ] ; 2 uses
  %i.aqm = add nuw i64 %i.aqc, %index554          ; 3 uses
  %i.aqn = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aqm
  %wide.load555 = load <4 x i32>, ptr %i.aqn, align 4, !tbaa !8
  %i.aqo = shl <4 x i32> %wide.load555, %broadcast.splat548
  %i.aqp = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aqm
  %wide.load556 = load <4 x i32>, ptr %i.aqp, align 4, !tbaa !8
  %i.aqq = shl <4 x i32> %wide.load556, %broadcast.splat550 ; 3 uses
  %i.aqr = shl <4 x i32> %i.aqo, splat (i32 1)
  %i.aqs = and <4 x i32> %i.aqq, splat (i32 1)
  %i.aqt = or disjoint <4 x i32> %i.aqs, %i.aqr   ; 2 uses
  %i.aqu = add <4 x i32> %i.aqt, %i.aqq
  %i.aqv = ashr <4 x i32> %i.aqu, splat (i32 1)
  %i.aqw = shl <4 x i32> %i.aqv, %broadcast.splat552
  %i.aqx = shl nuw nsw i64 %i.aqm, 3
  %i.aqy = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.aqx
  %i.aqz = sub <4 x i32> %i.aqt, %i.aqq
  %i.ara = ashr <4 x i32> %i.aqz, splat (i32 1)
  %i.arb = shl <4 x i32> %i.ara, %broadcast.splat552
  %i.arc = shufflevector <4 x i32> %i.aqw, <4 x i32> %i.arb, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ard = sitofp <8 x i32> %i.arc to <8 x float>
  %interleaved.vec557 = fmul nnan <8 x float> %i.ard, splat (float f0x30000000)
  store <8 x float> %interleaved.vec557, ptr %i.aqy, align 4, !tbaa !336
  %index.next558 = add nuw i64 %index554, 4       ; 2 uses
  %i.are = icmp eq i64 %index.next558, %n.vec546
  br i1 %i.are, label %middle.block559, label %vector.body553, !llvm.loop !1765

middle.block559:                                  ; preds = %vector.body553
  %cmp.n560 = icmp eq i64 %i.aqk, 0
  br i1 %cmp.n560, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %scalar.ph543.preheader

scalar.ph543.preheader:                           ; preds = %.lr.ph157, %middle.block559
  %.2.i105156.ph = phi i64 [ %i.aqc, %.lr.ph157 ], [ %i.aql, %middle.block559 ]
  br label %scalar.ph543

scalar.ph543:                                     ; preds = %scalar.ph543.preheader, %scalar.ph543
  %.2.i105156 = phi i64 [ %i.arx, %scalar.ph543 ], [ %.2.i105156.ph, %scalar.ph543.preheader ] ; 4 uses
  %i.arf = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.2.i105156
  %i.arg = load i32, ptr %i.arf, align 4, !tbaa !8
  %i.arh = shl i32 %i.arg, %i.aqe
  %i.ari = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.2.i105156
  %i.arj = load i32, ptr %i.ari, align 4, !tbaa !8
  %i.ark = shl i32 %i.arj, %i.aqg                 ; 3 uses
  %i.arl = shl i32 %i.arh, 1
  %i.arm = and i32 %i.ark, 1
  %i.arn = or disjoint i32 %i.arm, %i.arl         ; 2 uses
  %.idx118 = shl nuw nsw i64 %.2.i105156, 3
  %i.aro = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx118
  %i.arp = sub i32 %i.arn, %i.ark
  %i.arq = add i32 %i.arn, %i.ark
  %i.arr = insertelement <2 x i32> poison, i32 %i.arq, i64 0
  %i.ars = insertelement <2 x i32> %i.arr, i32 %i.arp, i64 1
  %i.art = ashr <2 x i32> %i.ars, splat (i32 1)
  %i.aru = shl <2 x i32> %i.art, %i.at
  %i.arv = sitofp <2 x i32> %i.aru to <2 x float>
  %i.arw = fmul nnan <2 x float> %i.arv, splat (float f0x30000000)
  store <2 x float> %i.arw, ptr %i.aro, align 4, !tbaa !336
  %i.arx = add nuw nsw i64 %.2.i105156, 1         ; 2 uses
  %i.ary = icmp samesign ult i64 %i.arx, %spec.select
  br i1 %i.ary, label %scalar.ph543, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, !llvm.loop !1766

bb.y:                                             ; preds = %bb.j
  br i1 %.b.i93, label %bb.z, label %._crit_edge290

._crit_edge290:                                   ; preds = %bb.y
  %.pre291 = load i8, ptr %i.ag, align 1, !tbaa !1740
  %.pre293 = load i8, ptr %i.ah, align 1, !tbaa !1740
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.arz = load i8, ptr %i.w, align 1, !tbaa !1733
  %i.asa = icmp ult i8 %i.arz, 25
  %.pre292 = load i8, ptr %i.ag, align 1, !tbaa !1740 ; 2 uses
  %.pre294 = load i8, ptr %i.ah, align 1, !tbaa !1740 ; 2 uses
  br i1 %i.asa, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.asb = lshr i64 %spec.select, 2               ; 2 uses
  %i.asc = zext i8 %.pre292 to i32
  %i.asd = zext i8 %.pre294 to i32
  %.reass347.reass = add i32 %i.asc, %invariant.op633 ; 3 uses
  %.reass349.reass = add i32 %i.asd, %invariant.op634 ; 3 uses
  %.not245 = icmp eq i64 %i.asb, 0
  br i1 %.not245, label %._crit_edge207, label %.lr.ph206

.lr.ph206:                                        ; preds = %bb.aa, %.lr.ph206
  %.0.i107204 = phi i64 [ %i.ass, %.lr.ph206 ], [ 0, %bb.aa ] ; 4 uses
  %i.ase = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0.i107204
  %i.asf = load <4 x i32>, ptr %i.ase, align 1, !tbaa !9
  %i.asg = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.asf, i32 range(i32 -232, 288) %.reass347.reass)
  %i.ash = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %.0.i107204
  %i.asi = load <4 x i32>, ptr %i.ash, align 1, !tbaa !9
  %i.asj = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.asi, i32 range(i32 -232, 288) %.reass349.reass)
  %i.ask = sitofp <4 x i32> %i.asg to <4 x float>
  %i.asl = fmul nnan <4 x float> %i.ask, splat (float f0x34000000) ; 2 uses
  %i.asm = sitofp <4 x i32> %i.asj to <4 x float>
  %i.asn = fmul nnan <4 x float> %i.asm, splat (float f0x34000000) ; 2 uses
  %.idx.i109 = shl nuw nsw i64 %.0.i107204, 5
  %i.aso = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx.i109 ; 2 uses
  %i.asp = shufflevector <4 x float> %i.asl, <4 x float> %i.asn, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.asp, ptr %i.aso, align 1, !tbaa !9
  %i.asq = getelementptr inbounds nuw i8, ptr %i.aso, i64 16
  %i.asr = shufflevector <4 x float> %i.asl, <4 x float> %i.asn, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.asr, ptr %i.asq, align 1, !tbaa !9
  %i.ass = add nuw nsw i64 %.0.i107204, 1         ; 2 uses
  %exitcond276.not = icmp eq i64 %i.ass, %i.asb
  br i1 %exitcond276.not, label %._crit_edge207, label %.lr.ph206, !llvm.loop !1767

._crit_edge207:                                   ; preds = %.lr.ph206, %bb.aa
  %i.ast = and i64 %spec.select, 4294967292       ; 5 uses
  %.not246 = icmp eq i64 %i.ast, %spec.select
  br i1 %.not246, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph210.preheader

.lr.ph210.preheader:                              ; preds = %._crit_edge207
  %i.asu = or disjoint i64 %i.ast, 1
  %i.asv = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.asu) ; 2 uses
  %10 = and i64 %spec.select, 4294967292
  %i.asw = sub nsw i64 %i.asv, %10                ; 2 uses
  %min.iters.check = icmp ult i64 %i.asw, 4
  br i1 %min.iters.check, label %.lr.ph210.preheader601, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph210.preheader
  %i.asx = and i64 %i.asv, 3                      ; 2 uses
  %n.vec = sub nuw nsw i64 %i.asw, %i.asx         ; 2 uses
  %i.asy = add nsw i64 %i.ast, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.reass347.reass, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert374 = insertelement <4 x i32> poison, i32 %.reass349.reass, i64 0
  %broadcast.splat375 = shufflevector <4 x i32> %broadcast.splatinsert374, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.asz = add nuw i64 %i.ast, %index             ; 3 uses
  %i.ata = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.asz
  %wide.load = load <4 x i32>, ptr %i.ata, align 4, !tbaa !8
  %i.atb = shl <4 x i32> %wide.load, %broadcast.splat
  %i.atc = shl nuw nsw i64 %i.asz, 3
  %i.atd = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.atc
  %i.ate = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.asz
  %wide.load376 = load <4 x i32>, ptr %i.ate, align 4, !tbaa !8
  %i.atf = shl <4 x i32> %wide.load376, %broadcast.splat375
  %i.atg = shufflevector <4 x i32> %i.atb, <4 x i32> %i.atf, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ath = sitofp <8 x i32> %i.atg to <8 x float>
  %interleaved.vec = fmul nnan <8 x float> %i.ath, splat (float f0x34000000)
  store <8 x float> %interleaved.vec, ptr %i.atd, align 4, !tbaa !336
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ati = icmp eq i64 %index.next, %n.vec
  br i1 %i.ati, label %middle.block, label %vector.body, !llvm.loop !1768

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.asx, 0
  br i1 %cmp.n, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph210.preheader601

.lr.ph210.preheader601:                           ; preds = %.lr.ph210.preheader, %middle.block
  %.1.i108208.ph = phi i64 [ %i.ast, %.lr.ph210.preheader ], [ %i.asy, %middle.block ]
  br label %.lr.ph210

.lr.ph210:                                        ; preds = %.lr.ph210.preheader601, %.lr.ph210
  %.1.i108208 = phi i64 [ %i.atu, %.lr.ph210 ], [ %.1.i108208.ph, %.lr.ph210.preheader601 ] ; 4 uses
  %i.atj = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i108208
  %i.atk = load i32, ptr %i.atj, align 4, !tbaa !8
  %.idx130 = shl nuw nsw i64 %.1.i108208, 3
  %i.atl = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx130
  %i.atm = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.1.i108208
  %i.atn = load i32, ptr %i.atm, align 4, !tbaa !8
  %i.ato = shl i32 %i.atn, %.reass349.reass
  %i.atp = shl i32 %i.atk, %.reass347.reass
  %i.atq = insertelement <2 x i32> poison, i32 %i.atp, i64 0
  %i.atr = insertelement <2 x i32> %i.atq, i32 %i.ato, i64 1
  %i.ats = sitofp <2 x i32> %i.atr to <2 x float>
  %i.att = fmul nnan <2 x float> %i.ats, splat (float f0x34000000)
  store <2 x float> %i.att, ptr %i.atl, align 4, !tbaa !336
  %i.atu = add nuw nsw i64 %.1.i108208, 1         ; 2 uses
  %i.atv = icmp samesign ult i64 %i.atu, %spec.select
  br i1 %i.atv, label %.lr.ph210, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, !llvm.loop !1769

bb.ab:                                            ; preds = %._crit_edge290, %bb.z
  %i.atw = phi i8 [ %.pre293, %._crit_edge290 ], [ %.pre294, %bb.z ]
  %i.atx = phi i8 [ %.pre291, %._crit_edge290 ], [ %.pre292, %bb.z ]
  %i.aty = lshr i64 %spec.select, 2               ; 4 uses
  %i.atz = zext i8 %i.atx to i32
  %i.aua = add nsw i32 %i.z, %i.atz               ; 7 uses
  %i.aub = zext i8 %i.atw to i32
  %i.auc = add nsw i32 %i.z, %i.aub               ; 7 uses
  %.not241 = icmp eq i64 %i.aty, 0
  br i1 %.not241, label %._crit_edge200, label %.lr.ph199.preheader

.lr.ph199.preheader:                              ; preds = %bb.ab
  %min.iters.check395 = icmp samesign ult i64 %spec.select, 16
  br i1 %min.iters.check395, label %.lr.ph199.preheader605, label %vector.ph396

vector.ph396:                                     ; preds = %.lr.ph199.preheader
  %n.vec397 = and i64 %i.aty, 1073741820          ; 3 uses
  %broadcast.splatinsert398 = insertelement <4 x i32> poison, i32 %i.aua, i64 0
  %broadcast.splat399 = shufflevector <4 x i32> %broadcast.splatinsert398, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert400 = insertelement <4 x i32> poison, i32 %i.auc, i64 0
  %broadcast.splat401 = shufflevector <4 x i32> %broadcast.splatinsert400, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body402

vector.body402:                                   ; preds = %vector.body402, %vector.ph396
  %index403 = phi i64 [ 0, %vector.ph396 ], [ %index.next405, %vector.body402 ] ; 6 uses
  %i.aud = shl nuw nsw i64 %index403, 2           ; 5 uses
  %i.aue = shl i64 %index403, 2                   ; 4 uses
  %i.auf = or disjoint i64 %i.aue, 4              ; 2 uses
  %i.aug = shl i64 %index403, 2                   ; 4 uses
  %i.auh = or disjoint i64 %i.aug, 8              ; 2 uses
  %i.aui = shl i64 %index403, 2                   ; 4 uses
  %i.auj = or disjoint i64 %i.aui, 12             ; 2 uses
  %i.auk = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aud
  %i.aul = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.auf
  %i.aum = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.auh
  %i.aun = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.auj
  %i.auo = load i32, ptr %i.auk, align 4, !tbaa !8
  %i.aup = load i32, ptr %i.aul, align 4, !tbaa !8
  %i.auq = load i32, ptr %i.aum, align 4, !tbaa !8
  %i.aur = load i32, ptr %i.aun, align 4, !tbaa !8
  %i.aus = insertelement <4 x i32> poison, i32 %i.auo, i64 0
  %i.aut = insertelement <4 x i32> %i.aus, i32 %i.aup, i64 1
  %i.auu = insertelement <4 x i32> %i.aut, i32 %i.auq, i64 2
  %i.auv = insertelement <4 x i32> %i.auu, i32 %i.aur, i64 3
  %i.auw = shl <4 x i32> %i.auv, %broadcast.splat399
  %i.aux = or disjoint i64 %i.aud, 1              ; 2 uses
  %i.auy = or disjoint i64 %i.aue, 5              ; 2 uses
  %i.auz = or disjoint i64 %i.aug, 9              ; 2 uses
  %i.ava = or disjoint i64 %i.aui, 13             ; 2 uses
  %i.avb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aux
  %i.avc = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.auy
  %i.avd = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.auz
  %i.ave = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ava
  %i.avf = load i32, ptr %i.avb, align 4, !tbaa !8
  %i.avg = load i32, ptr %i.avc, align 4, !tbaa !8
  %i.avh = load i32, ptr %i.avd, align 4, !tbaa !8
  %i.avi = load i32, ptr %i.ave, align 4, !tbaa !8
  %i.avj = insertelement <4 x i32> poison, i32 %i.avf, i64 0
  %i.avk = insertelement <4 x i32> %i.avj, i32 %i.avg, i64 1
  %i.avl = insertelement <4 x i32> %i.avk, i32 %i.avh, i64 2
  %i.avm = insertelement <4 x i32> %i.avl, i32 %i.avi, i64 3
  %i.avn = shl <4 x i32> %i.avm, %broadcast.splat399
  %i.avo = or disjoint i64 %i.aud, 2              ; 2 uses
  %i.avp = or disjoint i64 %i.aue, 6              ; 2 uses
  %i.avq = or disjoint i64 %i.aug, 10             ; 2 uses
  %i.avr = or disjoint i64 %i.aui, 14             ; 2 uses
  %i.avs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.avo
  %i.avt = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.avp
  %i.avu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.avq
  %i.avv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.avr
  %i.avw = load i32, ptr %i.avs, align 4, !tbaa !8
  %i.avx = load i32, ptr %i.avt, align 4, !tbaa !8
  %i.avy = load i32, ptr %i.avu, align 4, !tbaa !8
  %i.avz = load i32, ptr %i.avv, align 4, !tbaa !8
  %i.awa = insertelement <4 x i32> poison, i32 %i.avw, i64 0
  %i.awb = insertelement <4 x i32> %i.awa, i32 %i.avx, i64 1
  %i.awc = insertelement <4 x i32> %i.awb, i32 %i.avy, i64 2
  %i.awd = insertelement <4 x i32> %i.awc, i32 %i.avz, i64 3
  %i.awe = shl <4 x i32> %i.awd, %broadcast.splat399
  %i.awf = or disjoint i64 %i.aud, 3              ; 2 uses
  %i.awg = or disjoint i64 %i.aue, 7              ; 2 uses
  %i.awh = or disjoint i64 %i.aug, 11             ; 2 uses
  %i.awi = or disjoint i64 %i.aui, 15             ; 2 uses
  %i.awj = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.awf
  %i.awk = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.awg
  %i.awl = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.awh
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.awi
  %i.awn = load i32, ptr %i.awj, align 4, !tbaa !8
  %i.awo = load i32, ptr %i.awk, align 4, !tbaa !8
  %i.awp = load i32, ptr %i.awl, align 4, !tbaa !8
  %i.awq = load i32, ptr %i.awm, align 4, !tbaa !8
  %i.awr = insertelement <4 x i32> poison, i32 %i.awn, i64 0
  %i.aws = insertelement <4 x i32> %i.awr, i32 %i.awo, i64 1
  %i.awt = insertelement <4 x i32> %i.aws, i32 %i.awp, i64 2
  %i.awu = insertelement <4 x i32> %i.awt, i32 %i.awq, i64 3
  %i.awv = shl <4 x i32> %i.awu, %broadcast.splat399
  %i.aww = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aud
  %i.awx = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.auf
  %i.awy = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.auh
  %i.awz = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.auj
  %i.axa = load i32, ptr %i.aww, align 4, !tbaa !8
  %i.axb = load i32, ptr %i.awx, align 4, !tbaa !8
  %i.axc = load i32, ptr %i.awy, align 4, !tbaa !8
  %i.axd = load i32, ptr %i.awz, align 4, !tbaa !8
  %i.axe = insertelement <4 x i32> poison, i32 %i.axa, i64 0
  %i.axf = insertelement <4 x i32> %i.axe, i32 %i.axb, i64 1
  %i.axg = insertelement <4 x i32> %i.axf, i32 %i.axc, i64 2
  %i.axh = insertelement <4 x i32> %i.axg, i32 %i.axd, i64 3
  %i.axi = shl <4 x i32> %i.axh, %broadcast.splat401
  %i.axj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aux
  %i.axk = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.auy
  %i.axl = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.auz
  %i.axm = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ava
  %i.axn = load i32, ptr %i.axj, align 4, !tbaa !8
  %i.axo = load i32, ptr %i.axk, align 4, !tbaa !8
  %i.axp = load i32, ptr %i.axl, align 4, !tbaa !8
  %i.axq = load i32, ptr %i.axm, align 4, !tbaa !8
  %i.axr = insertelement <4 x i32> poison, i32 %i.axn, i64 0
  %i.axs = insertelement <4 x i32> %i.axr, i32 %i.axo, i64 1
  %i.axt = insertelement <4 x i32> %i.axs, i32 %i.axp, i64 2
  %i.axu = insertelement <4 x i32> %i.axt, i32 %i.axq, i64 3
  %i.axv = shl <4 x i32> %i.axu, %broadcast.splat401
  %i.axw = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.avo
  %i.axx = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.avp
  %i.axy = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.avq
  %i.axz = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.avr
  %i.aya = load i32, ptr %i.axw, align 4, !tbaa !8
  %i.ayb = load i32, ptr %i.axx, align 4, !tbaa !8
  %i.ayc = load i32, ptr %i.axy, align 4, !tbaa !8
  %i.ayd = load i32, ptr %i.axz, align 4, !tbaa !8
  %i.aye = insertelement <4 x i32> poison, i32 %i.aya, i64 0
  %i.ayf = insertelement <4 x i32> %i.aye, i32 %i.ayb, i64 1
  %i.ayg = insertelement <4 x i32> %i.ayf, i32 %i.ayc, i64 2
  %i.ayh = insertelement <4 x i32> %i.ayg, i32 %i.ayd, i64 3
  %i.ayi = shl <4 x i32> %i.ayh, %broadcast.splat401
  %i.ayj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.awf
  %i.ayk = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.awg
  %i.ayl = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.awh
  %i.aym = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.awi
  %i.ayn = load i32, ptr %i.ayj, align 4, !tbaa !8
  %i.ayo = load i32, ptr %i.ayk, align 4, !tbaa !8
  %i.ayp = load i32, ptr %i.ayl, align 4, !tbaa !8
  %i.ayq = load i32, ptr %i.aym, align 4, !tbaa !8
  %i.ayr = insertelement <4 x i32> poison, i32 %i.ayn, i64 0
  %i.ays = insertelement <4 x i32> %i.ayr, i32 %i.ayo, i64 1
  %i.ayt = insertelement <4 x i32> %i.ays, i32 %i.ayp, i64 2
  %i.ayu = insertelement <4 x i32> %i.ayt, i32 %i.ayq, i64 3
  %i.ayv = shl <4 x i32> %i.ayu, %broadcast.splat401
  %i.ayw = shl nuw nsw i64 %index403, 5
  %i.ayx = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.ayw
  %i.ayy = shufflevector <4 x i32> %i.auw, <4 x i32> %i.axi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ayz = shufflevector <4 x i32> %i.avn, <4 x i32> %i.axv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aza = shufflevector <4 x i32> %i.awe, <4 x i32> %i.ayi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.azb = shufflevector <4 x i32> %i.awv, <4 x i32> %i.ayv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.azc = shufflevector <8 x i32> %i.ayy, <8 x i32> %i.ayz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.azd = shufflevector <8 x i32> %i.aza, <8 x i32> %i.azb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aze = shufflevector <16 x i32> %i.azc, <16 x i32> %i.azd, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.azf = sitofp <32 x i32> %i.aze to <32 x float>
  %interleaved.vec404 = fmul nnan <32 x float> %i.azf, splat (float f0x30000000)
  store <32 x float> %interleaved.vec404, ptr %i.ayx, align 4, !tbaa !336
  %index.next405 = add nuw i64 %index403, 4       ; 2 uses
  %i.azg = icmp eq i64 %index.next405, %n.vec397
  br i1 %i.azg, label %middle.block406, label %vector.body402, !llvm.loop !1770

middle.block406:                                  ; preds = %vector.body402
  %cmp.n407 = icmp eq i64 %i.aty, %n.vec397
  br i1 %cmp.n407, label %._crit_edge200, label %.lr.ph199.preheader605

.lr.ph199.preheader605:                           ; preds = %.lr.ph199.preheader, %middle.block406
  %.0.i110197.ph = phi i64 [ 0, %.lr.ph199.preheader ], [ %n.vec397, %middle.block406 ]
  br label %.lr.ph199

.lr.ph199:                                        ; preds = %.lr.ph199.preheader605, %.lr.ph199
  %.0.i110197 = phi i64 [ %i.bax, %.lr.ph199 ], [ %.0.i110197.ph, %.lr.ph199.preheader605 ] ; 3 uses
  %i.azh = shl nuw nsw i64 %.0.i110197, 2         ; 5 uses
  %i.azi = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.azh
  %i.azj = or disjoint i64 %i.azh, 1              ; 2 uses
  %i.azk = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.azj
  %i.azl = or disjoint i64 %i.azh, 2              ; 2 uses
  %i.azm = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.azl
  %i.azn = or disjoint i64 %i.azh, 3              ; 2 uses
  %i.azo = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.azn
  %i.azp = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.azh
  %i.azq = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.azj
  %i.azr = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.azl
  %i.azs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.azn
  %.idx129 = shl nuw nsw i64 %.0.i110197, 5
  %i.azt = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx129 ; 2 uses
  %i.azu = load i32, ptr %i.azk, align 4, !tbaa !8
  %i.azv = load i32, ptr %i.azi, align 4, !tbaa !8
  %i.azw = load i32, ptr %i.azq, align 4, !tbaa !8
  %i.azx = load i32, ptr %i.azp, align 4, !tbaa !8
  %i.azy = shl i32 %i.azw, %i.auc
  %i.azz = shl i32 %i.azu, %i.aua
  %i.baa = shl i32 %i.azx, %i.auc
  %i.bab = shl i32 %i.azv, %i.aua
  %i.bac = insertelement <4 x i32> poison, i32 %i.bab, i64 0
  %i.bad = insertelement <4 x i32> %i.bac, i32 %i.baa, i64 1
  %i.bae = insertelement <4 x i32> %i.bad, i32 %i.azz, i64 2
  %i.baf = insertelement <4 x i32> %i.bae, i32 %i.azy, i64 3
  %i.bag = sitofp <4 x i32> %i.baf to <4 x float>
  %i.bah = fmul nnan <4 x float> %i.bag, splat (float f0x30000000)
  store <4 x float> %i.bah, ptr %i.azt, align 4, !tbaa !336
  %i.bai = getelementptr inbounds nuw i8, ptr %i.azt, i64 16
  %i.baj = load i32, ptr %i.azo, align 4, !tbaa !8
  %i.bak = load i32, ptr %i.azm, align 4, !tbaa !8
  %i.bal = load i32, ptr %i.azs, align 4, !tbaa !8
  %i.bam = load i32, ptr %i.azr, align 4, !tbaa !8
  %i.ban = shl i32 %i.bal, %i.auc
  %i.bao = shl i32 %i.baj, %i.aua
  %i.bap = shl i32 %i.bam, %i.auc
  %i.baq = shl i32 %i.bak, %i.aua
  %i.bar = insertelement <4 x i32> poison, i32 %i.baq, i64 0
  %i.bas = insertelement <4 x i32> %i.bar, i32 %i.bap, i64 1
  %i.bat = insertelement <4 x i32> %i.bas, i32 %i.bao, i64 2
  %i.bau = insertelement <4 x i32> %i.bat, i32 %i.ban, i64 3
  %i.bav = sitofp <4 x i32> %i.bau to <4 x float>
  %i.baw = fmul nnan <4 x float> %i.bav, splat (float f0x30000000)
  store <4 x float> %i.baw, ptr %i.bai, align 4, !tbaa !336
  %i.bax = add nuw nsw i64 %.0.i110197, 1         ; 2 uses
  %exitcond275.not = icmp eq i64 %i.bax, %i.aty
  br i1 %exitcond275.not, label %._crit_edge200, label %.lr.ph199, !llvm.loop !1771

._crit_edge200:                                   ; preds = %.lr.ph199, %middle.block406, %bb.ab
  %i.bay = and i64 %spec.select, 4294967292       ; 5 uses
  %.not242 = icmp eq i64 %i.bay, %spec.select
  br i1 %.not242, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph203.preheader

.lr.ph203.preheader:                              ; preds = %._crit_edge200
  %i.baz = or disjoint i64 %i.bay, 1
  %i.bba = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.baz) ; 2 uses
  %11 = and i64 %spec.select, 4294967292
  %i.bbb = sub nsw i64 %i.bba, %11                ; 2 uses
  %min.iters.check378 = icmp ult i64 %i.bbb, 4
  br i1 %min.iters.check378, label %.lr.ph203.preheader603, label %vector.ph379

vector.ph379:                                     ; preds = %.lr.ph203.preheader
  %i.bbc = and i64 %i.bba, 3                      ; 2 uses
  %n.vec380 = sub nuw nsw i64 %i.bbb, %i.bbc      ; 2 uses
  %i.bbd = add nsw i64 %i.bay, %n.vec380
  %broadcast.splatinsert381 = insertelement <4 x i32> poison, i32 %i.aua, i64 0
  %broadcast.splat382 = shufflevector <4 x i32> %broadcast.splatinsert381, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert383 = insertelement <4 x i32> poison, i32 %i.auc, i64 0
  %broadcast.splat384 = shufflevector <4 x i32> %broadcast.splatinsert383, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body385

vector.body385:                                   ; preds = %vector.body385, %vector.ph379
  %index386 = phi i64 [ 0, %vector.ph379 ], [ %index.next390, %vector.body385 ] ; 2 uses
  %i.bbe = add nuw i64 %i.bay, %index386          ; 3 uses
  %i.bbf = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bbe
  %wide.load387 = load <4 x i32>, ptr %i.bbf, align 4, !tbaa !8
  %i.bbg = shl <4 x i32> %wide.load387, %broadcast.splat382
  %i.bbh = shl nuw nsw i64 %i.bbe, 3
  %i.bbi = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.bbh
  %i.bbj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bbe
  %wide.load388 = load <4 x i32>, ptr %i.bbj, align 4, !tbaa !8
  %i.bbk = shl <4 x i32> %wide.load388, %broadcast.splat384
  %i.bbl = shufflevector <4 x i32> %i.bbg, <4 x i32> %i.bbk, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bbm = sitofp <8 x i32> %i.bbl to <8 x float>
  %interleaved.vec389 = fmul nnan <8 x float> %i.bbm, splat (float f0x30000000)
  store <8 x float> %interleaved.vec389, ptr %i.bbi, align 4, !tbaa !336
  %index.next390 = add nuw i64 %index386, 4       ; 2 uses
  %i.bbn = icmp eq i64 %index.next390, %n.vec380
  br i1 %i.bbn, label %middle.block391, label %vector.body385, !llvm.loop !1772

middle.block391:                                  ; preds = %vector.body385
  %cmp.n392 = icmp eq i64 %i.bbc, 0
  br i1 %cmp.n392, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph203.preheader603

.lr.ph203.preheader603:                           ; preds = %.lr.ph203.preheader, %middle.block391
  %.1.i111201.ph = phi i64 [ %i.bay, %.lr.ph203.preheader ], [ %i.bbd, %middle.block391 ]
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.preheader603, %.lr.ph203
  %.1.i111201 = phi i64 [ %i.bbz, %.lr.ph203 ], [ %.1.i111201.ph, %.lr.ph203.preheader603 ] ; 4 uses
  %i.bbo = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i111201
  %i.bbp = load i32, ptr %i.bbo, align 4, !tbaa !8
  %.idx128 = shl nuw nsw i64 %.1.i111201, 3
  %i.bbq = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx128
  %i.bbr = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.1.i111201
  %i.bbs = load i32, ptr %i.bbr, align 4, !tbaa !8
  %i.bbt = shl i32 %i.bbs, %i.auc
  %i.bbu = shl i32 %i.bbp, %i.aua
  %i.bbv = insertelement <2 x i32> poison, i32 %i.bbu, i64 0
  %i.bbw = insertelement <2 x i32> %i.bbv, i32 %i.bbt, i64 1
  %i.bbx = sitofp <2 x i32> %i.bbw to <2 x float>
  %i.bby = fmul nnan <2 x float> %i.bbx, splat (float f0x30000000)
  store <2 x float> %i.bby, ptr %i.bbq, align 4, !tbaa !336
  %i.bbz = add nuw nsw i64 %.1.i111201, 1         ; 2 uses
  %i.bca = icmp samesign ult i64 %i.bbz, %spec.select
  br i1 %i.bca, label %.lr.ph203, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, !llvm.loop !1773

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge213
  %.078214 = phi i64 [ %i.bdw, %._crit_edge213 ], [ 0, %.preheader.preheader ] ; 5 uses
  %i.bcb = mul nuw nsw i64 %.078214, %i.bk
  %i.bcc = getelementptr inbounds nuw [4 x i8], ptr %.081217, i64 %i.bcb ; 3 uses
  br i1 %i.bm, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bcd = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bcd, i64 8
  %i.bcf = load ptr, ptr %i.bce, align 8, !tbaa !1738
  %i.bcg = getelementptr inbounds nuw [4 x i8], ptr %i.bcf, i64 %.078214
  %i.bch = getelementptr inbounds nuw [4 x i8], ptr %i.bcg, i64 %i.bg
  %i.bci = load i32, ptr %i.bch, align 4, !tbaa !8
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bcd, i64 1
  %i.bck = load i8, ptr %i.bcj, align 1, !tbaa !1740
  %i.bcl = zext i8 %i.bck to i32
  %i.bcm = add nsw i32 %i.z, %i.bcl
  %i.bcn = shl i32 %i.bci, %i.bcm
  %i.bco = sitofp i32 %i.bcn to double
  %i.bcp = fmul nnan double %i.bco, f0x3E00000000000000
  %i.bcq = fptrunc double %i.bcp to float
  %i.bcr = getelementptr inbounds nuw [4 x i8], ptr %i.bcc, i64 %indvars.iv
  store float %i.bcq, ptr %i.bcr, align 4, !tbaa !336
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bcs = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.next ; 2 uses
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcs, i64 8
  %i.bcu = load ptr, ptr %i.bct, align 8, !tbaa !1738
  %i.bcv = getelementptr inbounds nuw [4 x i8], ptr %i.bcu, i64 %.078214
  %i.bcw = getelementptr inbounds nuw [4 x i8], ptr %i.bcv, i64 %i.bg
  %i.bcx = load i32, ptr %i.bcw, align 4, !tbaa !8
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcs, i64 1
  %i.bcz = load i8, ptr %i.bcy, align 1, !tbaa !1740
  %i.bda = zext i8 %i.bcz to i32
  %i.bdb = add nsw i32 %i.z, %i.bda
  %i.bdc = shl i32 %i.bcx, %i.bdb
  %i.bdd = sitofp i32 %i.bdc to double
  %i.bde = fmul nnan double %i.bdd, f0x3E00000000000000
  %i.bdf = fptrunc double %i.bde to float
  %i.bdg = getelementptr inbounds nuw [4 x i8], ptr %i.bcc, i64 %indvars.iv.next
  store float %i.bdf, ptr %i.bdg, align 4, !tbaa !336
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge213.unr-lcssa, label %.preheader.new, !llvm.loop !1774

._crit_edge213.unr-lcssa:                         ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge213, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge213.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge213.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod622)
  %i.bdh = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.epil.init ; 2 uses
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdh, i64 8
  %i.bdj = load ptr, ptr %i.bdi, align 8, !tbaa !1738
  %i.bdk = getelementptr inbounds nuw [4 x i8], ptr %i.bdj, i64 %.078214
  %i.bdl = getelementptr inbounds nuw [4 x i8], ptr %i.bdk, i64 %i.bg
  %i.bdm = load i32, ptr %i.bdl, align 4, !tbaa !8
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdh, i64 1
  %i.bdo = load i8, ptr %i.bdn, align 1, !tbaa !1740
  %i.bdp = zext i8 %i.bdo to i32
  %i.bdq = add nsw i32 %i.z, %i.bdp
  %i.bdr = shl i32 %i.bdm, %i.bdq
  %i.bds = sitofp i32 %i.bdr to double
  %i.bdt = fmul nnan double %i.bds, f0x3E00000000000000
  %i.bdu = fptrunc double %i.bdt to float
  %i.bdv = getelementptr inbounds nuw [4 x i8], ptr %i.bcc, i64 %indvars.iv.epil.init
  store float %i.bdu, ptr %i.bdv, align 4, !tbaa !336
  br label %._crit_edge213

._crit_edge213:                                   ; preds = %._crit_edge213.unr-lcssa, %.epil.preheader
  %i.bdw = add nuw nsw i64 %.078214, 1            ; 2 uses
  %exitcond280.not = icmp eq i64 %i.bdw, %spec.select
  br i1 %exitcond280.not, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.preheader, !llvm.loop !1775

ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit: ; preds = %scalar.ph543, %scalar.ph524, %scalar.ph507, %.lr.ph175, %.lr.ph182, %.lr.ph189, %.lr.ph196, %.lr.ph203, %.lr.ph210, %._crit_edge213, %middle.block559, %middle.block540, %middle.block521, %middle.block489, %middle.block472, %middle.block440, %middle.block423, %middle.block391, %middle.block, %.loopexit, %._crit_edge, %._crit_edge165, %._crit_edge172, %._crit_edge179, %._crit_edge186, %._crit_edge193, %._crit_edge200, %._crit_edge207
  %i.bdx = add i64 %spec.select, %.080220
  %i.bdy = zext i8 %i.bc to i64
  %i.bdz = mul nuw nsw i64 %spec.select, %i.bdy
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %.081217, i64 %i.bdz
  %i.beb = sub i64 %.083216, %spec.select
  %i.bec = load i64, ptr %i.al, align 8, !tbaa !1735
  %i.bed = add i64 %i.bec, %spec.select
  store i64 %i.bed, ptr %i.al, align 8, !tbaa !1735
  %i.bee = trunc nuw i64 %spec.select to i32
  %i.bef = load i32, ptr %i.aa, align 8, !tbaa !1732
  %i.beg = sub i32 %i.bef, %i.bee
  store i32 %i.beg, ptr %i.aa, align 8, !tbaa !1732
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit

ma_dr_flac__read_and_decode_next_flac_frame.exit: ; preds = %bb.h, %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit
  %.184 = phi i64 [ %i.beb, %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit ], [ %.083216, %bb.h ] ; 2 uses
  %.182 = phi ptr [ %i.bea, %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit ], [ %.081217, %bb.h ]
  %.1 = phi i64 [ %i.bdx, %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit ], [ %.080220, %bb.h ] ; 2 uses
  %.not = icmp eq i64 %.184, 0
  br i1 %.not, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread, label %bb.g, !llvm.loop !1776

ma_dr_flac__read_and_decode_next_flac_frame.exit.thread: ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit, %bb.h, %.preheader249, %bb.a, %ma_dr_flac__seek_forward_by_pcm_frames.exit
  %.0 = phi i64 [ 0, %bb.a ], [ %.025.i, %ma_dr_flac__seek_forward_by_pcm_frames.exit ], [ %.080220, %bb.h ], [ %.080220, %.preheader249 ], [ %.1, %ma_dr_flac__read_and_decode_next_flac_frame.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ma_dr_flac_read_pcm_frames_s16(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly %2) local_unnamed_addr #44 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %.lr.ph.i, label %.lr.ph222

.lr.ph.i:                                         ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.c

bb.c:                                             ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit.i, %.lr.ph.i
  %.028.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i112, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i ] ; 5 uses
  %.01627.i = phi i64 [ %1, %.lr.ph.i ], [ %.117.i, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i ] ; 5 uses
  %i.h = load i32, ptr %i.d, align 8, !tbaa !1732 ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.c, %bb.d
  %i.j = load i8, ptr %i.f, align 1, !tbaa !1733
  %i.k = tail call fastcc i32 @ma_dr_flac__read_next_flac_frame_header(ptr noundef %i.e, i8 noundef zeroext %i.j, ptr noundef %i.g)
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %ma_dr_flac__seek_forward_by_pcm_frames.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.l = tail call fastcc i32 @ma_dr_flac__decode_flac_frame(ptr noundef nonnull %0)
  switch i32 %i.l, label %ma_dr_flac__seek_forward_by_pcm_frames.exit [
    i32 0, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.i
    i32 -100, label %.preheader.i
  ]

bb.e:                                             ; preds = %bb.c
  %i.m = zext i32 %i.h to i64                     ; 3 uses
  %i.n = icmp ult i64 %.01627.i, %i.m
  br i1 %i.n, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i, label %bb.f

ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i: ; preds = %bb.e
  %i.o = add i64 %.01627.i, %.028.i
  %i.p = trunc nuw i64 %.01627.i to i32
  %i.q = sub i32 %i.h, %i.p
  store i32 %i.q, ptr %i.d, align 8, !tbaa !1732
  br label %ma_dr_flac__seek_forward_by_pcm_frames.exit

bb.f:                                             ; preds = %bb.e
  %i.r = add i64 %.028.i, %i.m
  %i.s = sub nuw i64 %.01627.i, %i.m
  store i32 0, ptr %i.d, align 8, !tbaa !1732
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit.i

ma_dr_flac__read_and_decode_next_flac_frame.exit.i: ; preds = %bb.d, %bb.f
  %.117.i = phi i64 [ %i.s, %bb.f ], [ %.01627.i, %bb.d ] ; 2 uses
  %.1.i112 = phi i64 [ %i.r, %bb.f ], [ %.028.i, %bb.d ] ; 2 uses
  %.not.i113 = icmp eq i64 %.117.i, 0
  br i1 %.not.i113, label %ma_dr_flac__seek_forward_by_pcm_frames.exit, label %bb.c, !llvm.loop !1734

ma_dr_flac__seek_forward_by_pcm_frames.exit:      ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit.i, %.preheader.i, %bb.d, %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i
  %.025.i = phi i64 [ %.028.i, %.preheader.i ], [ %i.o, %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i ], [ %.028.i, %bb.d ], [ %.1.i112, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1735
  %i.v = add i64 %i.u, %.025.i
  store i64 %i.v, ptr %i.t, align 8, !tbaa !1735
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread

.lr.ph222:                                        ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 6 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !1733  ; 2 uses
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = sub nsw i32 32, %i.y                     ; 18 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.not.i = icmp eq i8 %i.x, 32                   ; 2 uses
  %i.af = sub nsw i32 31, %i.y                    ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 13 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 13 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %broadcast.splatinsert520 = insertelement <4 x i32> poison, i32 %i.af, i64 0 ; 2 uses
  %i.am = shufflevector <4 x i32> %broadcast.splatinsert520, <4 x i32> poison, <16 x i32> zeroinitializer
  %i.an = shufflevector <4 x i32> %broadcast.splatinsert520, <4 x i32> poison, <16 x i32> zeroinitializer
  %i.ao = insertelement <8 x i32> poison, i32 %i.af, i64 0
  %i.ap = shufflevector <8 x i32> %i.ao, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert486 = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat487 = shufflevector <4 x i32> %broadcast.splatinsert486, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert467 = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat468 = shufflevector <4 x i32> %broadcast.splatinsert467, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph222, %ma_dr_flac__read_and_decode_next_flac_frame.exit
  %.080220 = phi i64 [ 0, %.lr.ph222 ], [ %.1, %ma_dr_flac__read_and_decode_next_flac_frame.exit ] ; 4 uses
  %.081217 = phi ptr [ %2, %.lr.ph222 ], [ %.182, %ma_dr_flac__read_and_decode_next_flac_frame.exit ] ; 33 uses
  %.083216 = phi i64 [ %1, %.lr.ph222 ], [ %.184, %ma_dr_flac__read_and_decode_next_flac_frame.exit ] ; 3 uses
  %i.aq = load i32, ptr %i.aa, align 8, !tbaa !1732 ; 3 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %.preheader244, label %bb.i

.preheader244:                                    ; preds = %bb.g, %bb.h
  %i.as = load i8, ptr %i.w, align 1, !tbaa !1733
  %i.at = tail call fastcc i32 @ma_dr_flac__read_next_flac_frame_header(ptr noundef %i.ak, i8 noundef zeroext %i.as, ptr noundef %i.al)
  %.not.i114 = icmp eq i32 %i.at, 0
  br i1 %.not.i114, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread, label %bb.h

bb.h:                                             ; preds = %.preheader244
  %i.au = tail call fastcc i32 @ma_dr_flac__decode_flac_frame(ptr noundef nonnull %0)
  switch i32 %i.au, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread [
    i32 0, label %ma_dr_flac__read_and_decode_next_flac_frame.exit
    i32 -100, label %.preheader244
  ]

bb.i:                                             ; preds = %bb.g
  %i.av = load i8, ptr %i.ab, align 2, !tbaa !1736 ; 3 uses
  %i.aw = sext i8 %i.av to i64                    ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr @__const.ma_dr_flac__get_channel_count_from_channel_assignment.lookup, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !9   ; 3 uses
  %i.az = load i16, ptr %i.ac, align 8, !tbaa !1737
  %i.ba = zext i16 %i.az to i32
  %i.bb = sub i32 %i.ba, %i.aq
  %i.bc = zext i32 %i.bb to i64                   ; 5 uses
  %i.bd = zext i32 %i.aq to i64
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.083216, i64 %i.bd) ; 61 uses
  %i.be = shl nuw i64 1, %i.aw
  %i.bf = and i64 %i.be, 1794
  %.not117 = icmp eq i64 %i.bf, 0
  br i1 %.not117, label %.preheader.preheader, label %bb.j

.preheader.preheader:                             ; preds = %bb.i
  %i.bg = zext i8 %i.ay to i64
  %i.bh = tail call i8 @llvm.umax.i8(i8 %i.ay, i8 1) ; 2 uses
  %wide.trip.count = zext i8 %i.bh to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bi = icmp eq i8 %i.av, 0
  %unroll_iter = and i64 %wide.trip.count, 254
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod554 = trunc i8 %i.bh to i1
  br label %.preheader

bb.j:                                             ; preds = %bb.i
  %i.bj = load ptr, ptr %i.ad, align 8, !tbaa !1738
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bc ; 63 uses
  %i.bl = load ptr, ptr %i.ae, align 8, !tbaa !1738
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bc ; 63 uses
  %.b.i93 = load i1, ptr @ma_dr_flac__gIsSSE2Supported, align 4 ; 4 uses
  switch i8 %i.av, label %bb.y [
    i8 8, label %bb.k
    i8 9, label %bb.o
    i8 10, label %bb.s
  ]

bb.k:                                             ; preds = %bb.j
  br i1 %.b.i93, label %bb.l, label %._crit_edge280

._crit_edge280:                                   ; preds = %bb.k
  %.pre281 = load i8, ptr %i.ag, align 1, !tbaa !1740
  %.pre283 = load i8, ptr %i.ah, align 1, !tbaa !1740
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bn = load i8, ptr %i.w, align 1, !tbaa !1733
  %i.bo = icmp ult i8 %i.bn, 25
  %.pre282 = load i8, ptr %i.ag, align 1, !tbaa !1740 ; 2 uses
  %.pre284 = load i8, ptr %i.ah, align 1, !tbaa !1740 ; 2 uses
  br i1 %i.bo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bp = lshr i64 %spec.select, 2                ; 2 uses
  %i.bq = zext i8 %.pre282 to i32
  %i.br = add nsw i32 %i.z, %i.bq                 ; 3 uses
  %i.bs = zext i8 %.pre284 to i32
  %i.bt = add nsw i32 %i.z, %i.bs                 ; 3 uses
  %.not236 = icmp eq i64 %i.bp, 0
  br i1 %.not236, label %._crit_edge193, label %.lr.ph192

.lr.ph192:                                        ; preds = %bb.m, %.lr.ph192
  %.0.i190 = phi i64 [ %i.cj, %.lr.ph192 ], [ 0, %bb.m ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %.0.i190
  %i.bv = load <4 x i32>, ptr %i.bu, align 1, !tbaa !9
  %i.bw = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.bv, i32 range(i32 -232, 288) %i.br) ; 2 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.0.i190
  %i.by = load <4 x i32>, ptr %i.bx, align 1, !tbaa !9
  %i.bz = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.by, i32 range(i32 -232, 288) %i.bt)
  %i.ca = sub <4 x i32> %i.bw, %i.bz
  %i.cb = ashr <4 x i32> %i.bw, splat (i32 16)
  %i.cc = ashr <4 x i32> %i.ca, splat (i32 16)
  %.idx.i = shl nuw nsw i64 %.0.i190, 4
  %i.cd = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx.i
  %i.ce = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cb, <4 x i32> %i.cc)
  %i.cf = bitcast <8 x i16> %i.ce to <4 x i32>
  %i.cg = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ch = bitcast <4 x i32> %i.cg to <8 x i16>
  %i.ci = shufflevector <8 x i16> %i.ch, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  store <8 x i16> %i.ci, ptr %i.cd, align 1, !tbaa !9
  %i.cj = add nuw nsw i64 %.0.i190, 1             ; 2 uses
  %exitcond269.not = icmp eq i64 %i.cj, %i.bp
  br i1 %exitcond269.not, label %._crit_edge193, label %.lr.ph192, !llvm.loop !1777

._crit_edge193:                                   ; preds = %.lr.ph192, %bb.m
  %i.ck = and i64 %spec.select, 4294967292        ; 5 uses
  %.not237 = icmp eq i64 %i.ck, %spec.select
  br i1 %.not237, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph196.preheader

.lr.ph196.preheader:                              ; preds = %._crit_edge193
  %i.cl = or disjoint i64 %i.ck, 1
  %i.cm = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.cl) ; 2 uses
  %3 = and i64 %spec.select, 4294967292
  %i.cn = sub nsw i64 %i.cm, %3                   ; 2 uses
  %min.iters.check375 = icmp ult i64 %i.cn, 4
  br i1 %min.iters.check375, label %.lr.ph196.preheader540, label %vector.ph376

vector.ph376:                                     ; preds = %.lr.ph196.preheader
  %i.co = and i64 %i.cm, 3                        ; 2 uses
  %n.vec377 = sub nuw nsw i64 %i.cn, %i.co        ; 2 uses
  %i.cp = add nsw i64 %i.ck, %n.vec377
  %broadcast.splatinsert378 = insertelement <4 x i32> poison, i32 %i.br, i64 0
  %broadcast.splat379 = shufflevector <4 x i32> %broadcast.splatinsert378, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert380 = insertelement <4 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat381 = shufflevector <4 x i32> %broadcast.splatinsert380, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body382

vector.body382:                                   ; preds = %vector.body382, %vector.ph376
  %index383 = phi i64 [ 0, %vector.ph376 ], [ %index.next387, %vector.body382 ] ; 2 uses
  %i.cq = add nuw i64 %i.ck, %index383            ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cq
  %wide.load384 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !8
  %i.cs = shl <4 x i32> %wide.load384, %broadcast.splat379 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cq
  %wide.load385 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !8
  %i.cu = shl <4 x i32> %wide.load385, %broadcast.splat381
  %i.cv = sub <4 x i32> %i.cs, %i.cu
  %i.cw = shl nuw nsw i64 %i.cq, 2
  %i.cx = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.cw
  %i.cy = shufflevector <4 x i32> %i.cs, <4 x i32> %i.cv, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cz = lshr <8 x i32> %i.cy, splat (i32 16)
  %interleaved.vec386 = trunc nuw <8 x i32> %i.cz to <8 x i16>
  store <8 x i16> %interleaved.vec386, ptr %i.cx, align 2, !tbaa !20
  %index.next387 = add nuw i64 %index383, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next387, %n.vec377
  br i1 %i.da, label %middle.block388, label %vector.body382, !llvm.loop !1778

middle.block388:                                  ; preds = %vector.body382
  %cmp.n389 = icmp eq i64 %i.co, 0
  br i1 %cmp.n389, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph196.preheader540

.lr.ph196.preheader540:                           ; preds = %.lr.ph196.preheader, %middle.block388
  %.1.i194.ph = phi i64 [ %i.ck, %.lr.ph196.preheader ], [ %i.cp, %middle.block388 ]
  br label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph196.preheader540, %.lr.ph196
  %.1.i194 = phi i64 [ %i.do, %.lr.ph196 ], [ %.1.i194.ph, %.lr.ph196.preheader540 ] ; 4 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.1.i194
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !8
  %i.dd = shl i32 %i.dc, %i.br                    ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i194
  %i.df = load i32, ptr %i.de, align 4, !tbaa !8
  %i.dg = shl i32 %i.df, %i.bt
  %i.dh = sub i32 %i.dd, %i.dg
  %i.di = lshr i32 %i.dd, 16
  %i.dj = lshr i32 %i.dh, 16
  %i.dk = trunc nuw i32 %i.di to i16
  %.idx127 = shl nuw nsw i64 %.1.i194, 2
  %i.dl = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx127 ; 2 uses
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !20
  %i.dm = trunc nuw i32 %i.dj to i16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !20
  %i.do = add nuw nsw i64 %.1.i194, 1             ; 2 uses
  %i.dp = icmp samesign ult i64 %i.do, %spec.select
  br i1 %i.dp, label %.lr.ph196, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, !llvm.loop !1779

bb.n:                                             ; preds = %._crit_edge280, %bb.l
  %i.dq = phi i8 [ %.pre283, %._crit_edge280 ], [ %.pre284, %bb.l ]
  %i.dr = phi i8 [ %.pre281, %._crit_edge280 ], [ %.pre282, %bb.l ]
  %i.ds = lshr i64 %spec.select, 2                ; 2 uses
  %i.dt = zext i8 %i.dr to i32
  %i.du = add nsw i32 %i.z, %i.dt                 ; 3 uses
  %i.dv = zext i8 %i.dq to i32
  %i.dw = add nsw i32 %i.z, %i.dv                 ; 3 uses
  %.not234 = icmp eq i64 %i.ds, 0
  br i1 %.not234, label %._crit_edge186, label %.lr.ph185.preheader

.lr.ph185.preheader:                              ; preds = %bb.n
  %i.dx = insertelement <4 x i32> poison, i32 %i.du, i64 0
  %i.dy = shufflevector <4 x i32> %i.dx, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dz = insertelement <4 x i32> poison, i32 %i.dw, i64 0
  %i.ea = shufflevector <4 x i32> %i.dz, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph185

.lr.ph185:                                        ; preds = %.lr.ph185.preheader, %.lr.ph185
  %.0.i94183 = phi i64 [ %i.eo, %.lr.ph185 ], [ 0, %.lr.ph185.preheader ] ; 3 uses
  %i.eb = shl nuw nsw i64 %.0.i94183, 2           ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.eb
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.eb
  %.idx126 = shl nuw nsw i64 %.0.i94183, 4
  %i.ee = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx126
  %i.ef = load <4 x i32>, ptr %i.ec, align 4, !tbaa !8
  %i.eg = shl <4 x i32> %i.ef, %i.dy              ; 2 uses
  %i.eh = load <4 x i32>, ptr %i.ed, align 4, !tbaa !8
  %i.ei = shl <4 x i32> %i.eh, %i.ea
  %i.ej = sub <4 x i32> %i.eg, %i.ei
  %i.ek = shufflevector <4 x i32> %i.eg, <4 x i32> %i.ej, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.el = lshr <8 x i32> %i.ek, splat (i32 16)
  %i.em = trunc nuw <8 x i32> %i.el to <8 x i16>
  %i.en = shufflevector <8 x i16> %i.em, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.en, ptr %i.ee, align 2, !tbaa !20
  %i.eo = add nuw nsw i64 %.0.i94183, 1           ; 2 uses
  %exitcond268.not = icmp eq i64 %i.eo, %i.ds
  br i1 %exitcond268.not, label %._crit_edge186, label %.lr.ph185, !llvm.loop !1780

._crit_edge186:                                   ; preds = %.lr.ph185, %bb.n
  %i.ep = and i64 %spec.select, 4294967292        ; 5 uses
  %.not235 = icmp eq i64 %i.ep, %spec.select
  br i1 %.not235, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph189.preheader

.lr.ph189.preheader:                              ; preds = %._crit_edge186
  %i.eq = or disjoint i64 %i.ep, 1
  %i.er = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.eq) ; 2 uses
  %4 = and i64 %spec.select, 4294967292
  %i.es = sub nsw i64 %i.er, %4                   ; 2 uses
  %min.iters.check392 = icmp ult i64 %i.es, 4
  br i1 %min.iters.check392, label %.lr.ph189.preheader542, label %vector.ph393

vector.ph393:                                     ; preds = %.lr.ph189.preheader
  %i.et = and i64 %i.er, 3                        ; 2 uses
  %n.vec394 = sub nuw nsw i64 %i.es, %i.et        ; 2 uses
  %i.eu = add nsw i64 %i.ep, %n.vec394
  %broadcast.splatinsert395 = insertelement <4 x i32> poison, i32 %i.du, i64 0
  %broadcast.splat396 = shufflevector <4 x i32> %broadcast.splatinsert395, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert397 = insertelement <4 x i32> poison, i32 %i.dw, i64 0
  %broadcast.splat398 = shufflevector <4 x i32> %broadcast.splatinsert397, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body399

vector.body399:                                   ; preds = %vector.body399, %vector.ph393
  %index400 = phi i64 [ 0, %vector.ph393 ], [ %index.next404, %vector.body399 ] ; 2 uses
  %i.ev = add nuw i64 %i.ep, %index400            ; 3 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ev
  %wide.load401 = load <4 x i32>, ptr %i.ew, align 4, !tbaa !8
  %i.ex = shl <4 x i32> %wide.load401, %broadcast.splat396 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ev
  %wide.load402 = load <4 x i32>, ptr %i.ey, align 4, !tbaa !8
  %i.ez = shl <4 x i32> %wide.load402, %broadcast.splat398
  %i.fa = sub <4 x i32> %i.ex, %i.ez
  %i.fb = shl nuw nsw i64 %i.ev, 2
  %i.fc = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.fb
  %i.fd = shufflevector <4 x i32> %i.ex, <4 x i32> %i.fa, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.fe = lshr <8 x i32> %i.fd, splat (i32 16)
  %interleaved.vec403 = trunc nuw <8 x i32> %i.fe to <8 x i16>
  store <8 x i16> %interleaved.vec403, ptr %i.fc, align 2, !tbaa !20
  %index.next404 = add nuw i64 %index400, 4       ; 2 uses
  %i.ff = icmp eq i64 %index.next404, %n.vec394
  br i1 %i.ff, label %middle.block405, label %vector.body399, !llvm.loop !1781

middle.block405:                                  ; preds = %vector.body399
  %cmp.n406 = icmp eq i64 %i.et, 0
  br i1 %cmp.n406, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph189.preheader542

.lr.ph189.preheader542:                           ; preds = %.lr.ph189.preheader, %middle.block405
  %.1.i95187.ph = phi i64 [ %i.ep, %.lr.ph189.preheader ], [ %i.eu, %middle.block405 ]
  br label %.lr.ph189

.lr.ph189:                                        ; preds = %.lr.ph189.preheader542, %.lr.ph189
  %.1.i95187 = phi i64 [ %i.ft, %.lr.ph189 ], [ %.1.i95187.ph, %.lr.ph189.preheader542 ] ; 4 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.1.i95187
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !8
  %i.fi = shl i32 %i.fh, %i.du                    ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i95187
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !8
  %i.fl = shl i32 %i.fk, %i.dw
  %i.fm = sub i32 %i.fi, %i.fl
  %i.fn = lshr i32 %i.fi, 16
  %i.fo = lshr i32 %i.fm, 16
  %i.fp = trunc nuw i32 %i.fn to i16
  %.idx125 = shl nuw nsw i64 %.1.i95187, 2
  %i.fq = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx125 ; 2 uses
  store i16 %i.fp, ptr %i.fq, align 2, !tbaa !20
  %i.fr = trunc nuw i32 %i.fo to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  store i16 %i.fr, ptr %i.fs, align 2, !tbaa !20
  %i.ft = add nuw nsw i64 %.1.i95187, 1           ; 2 uses
  %i.fu = icmp samesign ult i64 %i.ft, %spec.select
  br i1 %i.fu, label %.lr.ph189, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, !llvm.loop !1782

bb.o:                                             ; preds = %bb.j
  br i1 %.b.i93, label %bb.p, label %._crit_edge276

._crit_edge276:                                   ; preds = %bb.o
  %.pre = load i8, ptr %i.ag, align 1, !tbaa !1740
  %.pre278 = load i8, ptr %i.ah, align 1, !tbaa !1740
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.fv = load i8, ptr %i.w, align 1, !tbaa !1733
  %i.fw = icmp ult i8 %i.fv, 25
  %.pre277 = load i8, ptr %i.ag, align 1, !tbaa !1740 ; 2 uses
  %.pre279 = load i8, ptr %i.ah, align 1, !tbaa !1740 ; 2 uses
  br i1 %i.fw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fx = lshr i64 %spec.select, 2                ; 2 uses
  %i.fy = zext i8 %.pre277 to i32
  %i.fz = add nsw i32 %i.z, %i.fy                 ; 3 uses
  %i.ga = zext i8 %.pre279 to i32
  %i.gb = add nsw i32 %i.z, %i.ga                 ; 3 uses
  %.not232 = icmp eq i64 %i.fx, 0
  br i1 %.not232, label %._crit_edge179, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.q, %.lr.ph178
  %.0.i96176 = phi i64 [ %i.gr, %.lr.ph178 ], [ 0, %bb.q ] ; 4 uses
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %.0.i96176
  %i.gd = load <4 x i32>, ptr %i.gc, align 1, !tbaa !9
  %i.ge = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.gd, i32 range(i32 -232, 288) %i.fz)
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.0.i96176
  %i.gg = load <4 x i32>, ptr %i.gf, align 1, !tbaa !9
  %i.gh = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.gg, i32 range(i32 -232, 288) %i.gb) ; 2 uses
  %i.gi = add <4 x i32> %i.gh, %i.ge
  %i.gj = ashr <4 x i32> %i.gi, splat (i32 16)
  %i.gk = ashr <4 x i32> %i.gh, splat (i32 16)
  %.idx.i98 = shl nuw nsw i64 %.0.i96176, 4
  %i.gl = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx.i98
  %i.gm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.gj, <4 x i32> %i.gk)
  %i.gn = bitcast <8 x i16> %i.gm to <4 x i32>
  %i.go = shufflevector <4 x i32> %i.gn, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.gp = bitcast <4 x i32> %i.go to <8 x i16>
  %i.gq = shufflevector <8 x i16> %i.gp, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  store <8 x i16> %i.gq, ptr %i.gl, align 1, !tbaa !9
  %i.gr = add nuw nsw i64 %.0.i96176, 1           ; 2 uses
  %exitcond267.not = icmp eq i64 %i.gr, %i.fx
  br i1 %exitcond267.not, label %._crit_edge179, label %.lr.ph178, !llvm.loop !1783

._crit_edge179:                                   ; preds = %.lr.ph178, %bb.q
  %i.gs = and i64 %spec.select, 4294967292        ; 5 uses
  %.not233 = icmp eq i64 %i.gs, %spec.select
  br i1 %.not233, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph182.preheader

.lr.ph182.preheader:                              ; preds = %._crit_edge179
  %i.gt = or disjoint i64 %i.gs, 1
  %i.gu = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.gt) ; 2 uses
  %5 = and i64 %spec.select, 4294967292
  %i.gv = sub nsw i64 %i.gu, %5                   ; 2 uses
  %min.iters.check409 = icmp ult i64 %i.gv, 4
  br i1 %min.iters.check409, label %.lr.ph182.preheader544, label %vector.ph410

vector.ph410:                                     ; preds = %.lr.ph182.preheader
  %i.gw = and i64 %i.gu, 3                        ; 2 uses
  %n.vec411 = sub nuw nsw i64 %i.gv, %i.gw        ; 2 uses
  %i.gx = add nsw i64 %i.gs, %n.vec411
  %broadcast.splatinsert412 = insertelement <4 x i32> poison, i32 %i.fz, i64 0
  %broadcast.splat413 = shufflevector <4 x i32> %broadcast.splatinsert412, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert414 = insertelement <4 x i32> poison, i32 %i.gb, i64 0
  %broadcast.splat415 = shufflevector <4 x i32> %broadcast.splatinsert414, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body416

vector.body416:                                   ; preds = %vector.body416, %vector.ph410
  %index417 = phi i64 [ 0, %vector.ph410 ], [ %index.next421, %vector.body416 ] ; 2 uses
  %i.gy = add nuw i64 %i.gs, %index417            ; 3 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.gy
  %wide.load418 = load <4 x i32>, ptr %i.gz, align 4, !tbaa !8
  %i.ha = shl <4 x i32> %wide.load418, %broadcast.splat413
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.gy
  %wide.load419 = load <4 x i32>, ptr %i.hb, align 4, !tbaa !8
  %i.hc = shl <4 x i32> %wide.load419, %broadcast.splat415 ; 2 uses
  %i.hd = add <4 x i32> %i.hc, %i.ha
  %i.he = shl nuw nsw i64 %i.gy, 2
  %i.hf = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.he
  %i.hg = shufflevector <4 x i32> %i.hd, <4 x i32> %i.hc, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.hh = lshr <8 x i32> %i.hg, splat (i32 16)
  %interleaved.vec420 = trunc nuw <8 x i32> %i.hh to <8 x i16>
  store <8 x i16> %interleaved.vec420, ptr %i.hf, align 2, !tbaa !20
  %index.next421 = add nuw i64 %index417, 4       ; 2 uses
  %i.hi = icmp eq i64 %index.next421, %n.vec411
  br i1 %i.hi, label %middle.block422, label %vector.body416, !llvm.loop !1784

middle.block422:                                  ; preds = %vector.body416
  %cmp.n423 = icmp eq i64 %i.gw, 0
  br i1 %cmp.n423, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph182.preheader544

.lr.ph182.preheader544:                           ; preds = %.lr.ph182.preheader, %middle.block422
  %.1.i97180.ph = phi i64 [ %i.gs, %.lr.ph182.preheader ], [ %i.gx, %middle.block422 ]
  br label %.lr.ph182

.lr.ph182:                                        ; preds = %.lr.ph182.preheader544, %.lr.ph182
  %.1.i97180 = phi i64 [ %i.hw, %.lr.ph182 ], [ %.1.i97180.ph, %.lr.ph182.preheader544 ] ; 4 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.1.i97180
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !8
  %i.hl = shl i32 %i.hk, %i.fz
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i97180
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !8
  %i.ho = shl i32 %i.hn, %i.gb                    ; 2 uses
  %i.hp = add i32 %i.ho, %i.hl
  %i.hq = lshr i32 %i.hp, 16
  %i.hr = lshr i32 %i.ho, 16
  %i.hs = trunc nuw i32 %i.hq to i16
  %.idx124 = shl nuw nsw i64 %.1.i97180, 2
  %i.ht = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx124 ; 2 uses
  store i16 %i.hs, ptr %i.ht, align 2, !tbaa !20
  %i.hu = trunc nuw i32 %i.hr to i16
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 2
  store i16 %i.hu, ptr %i.hv, align 2, !tbaa !20
  %i.hw = add nuw nsw i64 %.1.i97180, 1           ; 2 uses
  %i.hx = icmp samesign ult i64 %i.hw, %spec.select
  br i1 %i.hx, label %.lr.ph182, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, !llvm.loop !1785

bb.r:                                             ; preds = %._crit_edge276, %bb.p
  %i.hy = phi i8 [ %.pre278, %._crit_edge276 ], [ %.pre279, %bb.p ]
  %i.hz = phi i8 [ %.pre, %._crit_edge276 ], [ %.pre277, %bb.p ]
  %i.ia = lshr i64 %spec.select, 2                ; 2 uses
  %i.ib = zext i8 %i.hz to i32
  %i.ic = add nsw i32 %i.z, %i.ib                 ; 3 uses
  %i.id = zext i8 %i.hy to i32
  %i.ie = add nsw i32 %i.z, %i.id                 ; 3 uses
  %.not230 = icmp eq i64 %i.ia, 0
  br i1 %.not230, label %._crit_edge172, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %bb.r
  %i.if = insertelement <4 x i32> poison, i32 %i.ic, i64 0
  %i.ig = shufflevector <4 x i32> %i.if, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ih = insertelement <4 x i32> poison, i32 %i.ie, i64 0
  %i.ii = shufflevector <4 x i32> %i.ih, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph171.preheader, %.lr.ph171
  %.0.i99169 = phi i64 [ %i.iw, %.lr.ph171 ], [ 0, %.lr.ph171.preheader ] ; 3 uses
  %i.ij = shl nuw nsw i64 %.0.i99169, 2           ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ij
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ij
  %.idx123 = shl nuw nsw i64 %.0.i99169, 4
  %i.im = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx123
  %i.in = load <4 x i32>, ptr %i.ik, align 4, !tbaa !8
  %i.io = shl <4 x i32> %i.in, %i.ig
  %i.ip = load <4 x i32>, ptr %i.il, align 4, !tbaa !8
  %i.iq = shl <4 x i32> %i.ip, %i.ii              ; 2 uses
  %i.ir = add <4 x i32> %i.iq, %i.io
  %i.is = shufflevector <4 x i32> %i.ir, <4 x i32> %i.iq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.it = lshr <8 x i32> %i.is, splat (i32 16)
  %i.iu = trunc nuw <8 x i32> %i.it to <8 x i16>
  %i.iv = shufflevector <8 x i16> %i.iu, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.iv, ptr %i.im, align 2, !tbaa !20
  %i.iw = add nuw nsw i64 %.0.i99169, 1           ; 2 uses
  %exitcond266.not = icmp eq i64 %i.iw, %i.ia
  br i1 %exitcond266.not, label %._crit_edge172, label %.lr.ph171, !llvm.loop !1786

._crit_edge172:                                   ; preds = %.lr.ph171, %bb.r
  %i.ix = and i64 %spec.select, 4294967292        ; 5 uses
  %.not231 = icmp eq i64 %i.ix, %spec.select
  br i1 %.not231, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph175.preheader

.lr.ph175.preheader:                              ; preds = %._crit_edge172
  %i.iy = or disjoint i64 %i.ix, 1
  %i.iz = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.iy) ; 2 uses
  %6 = and i64 %spec.select, 4294967292
  %i.ja = sub nsw i64 %i.iz, %6                   ; 2 uses
  %min.iters.check426 = icmp ult i64 %i.ja, 4
  br i1 %min.iters.check426, label %.lr.ph175.preheader546, label %vector.ph427

vector.ph427:                                     ; preds = %.lr.ph175.preheader
  %i.jb = and i64 %i.iz, 3                        ; 2 uses
  %n.vec428 = sub nuw nsw i64 %i.ja, %i.jb        ; 2 uses
  %i.jc = add nsw i64 %i.ix, %n.vec428
  %broadcast.splatinsert429 = insertelement <4 x i32> poison, i32 %i.ic, i64 0
  %broadcast.splat430 = shufflevector <4 x i32> %broadcast.splatinsert429, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert431 = insertelement <4 x i32> poison, i32 %i.ie, i64 0
  %broadcast.splat432 = shufflevector <4 x i32> %broadcast.splatinsert431, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body433

vector.body433:                                   ; preds = %vector.body433, %vector.ph427
  %index434 = phi i64 [ 0, %vector.ph427 ], [ %index.next438, %vector.body433 ] ; 2 uses
  %i.jd = add nuw i64 %i.ix, %index434            ; 3 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.jd
  %wide.load435 = load <4 x i32>, ptr %i.je, align 4, !tbaa !8
  %i.jf = shl <4 x i32> %wide.load435, %broadcast.splat430
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.jd
  %wide.load436 = load <4 x i32>, ptr %i.jg, align 4, !tbaa !8
  %i.jh = shl <4 x i32> %wide.load436, %broadcast.splat432 ; 2 uses
  %i.ji = add <4 x i32> %i.jh, %i.jf
  %i.jj = shl nuw nsw i64 %i.jd, 2
  %i.jk = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.jj
  %i.jl = shufflevector <4 x i32> %i.ji, <4 x i32> %i.jh, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.jm = lshr <8 x i32> %i.jl, splat (i32 16)
  %interleaved.vec437 = trunc nuw <8 x i32> %i.jm to <8 x i16>
  store <8 x i16> %interleaved.vec437, ptr %i.jk, align 2, !tbaa !20
  %index.next438 = add nuw i64 %index434, 4       ; 2 uses
  %i.jn = icmp eq i64 %index.next438, %n.vec428
  br i1 %i.jn, label %middle.block439, label %vector.body433, !llvm.loop !1787

middle.block439:                                  ; preds = %vector.body433
  %cmp.n440 = icmp eq i64 %i.jb, 0
  br i1 %cmp.n440, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph175.preheader546

.lr.ph175.preheader546:                           ; preds = %.lr.ph175.preheader, %middle.block439
  %.1.i100173.ph = phi i64 [ %i.ix, %.lr.ph175.preheader ], [ %i.jc, %middle.block439 ]
  br label %.lr.ph175

.lr.ph175:                                        ; preds = %.lr.ph175.preheader546, %.lr.ph175
  %.1.i100173 = phi i64 [ %i.kb, %.lr.ph175 ], [ %.1.i100173.ph, %.lr.ph175.preheader546 ] ; 4 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.1.i100173
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !8
  %i.jq = shl i32 %i.jp, %i.ic
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i100173
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !8
  %i.jt = shl i32 %i.js, %i.ie                    ; 2 uses
  %i.ju = add i32 %i.jt, %i.jq
  %i.jv = lshr i32 %i.ju, 16
  %i.jw = lshr i32 %i.jt, 16
  %i.jx = trunc nuw i32 %i.jv to i16
  %.idx122 = shl nuw nsw i64 %.1.i100173, 2
  %i.jy = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx122 ; 2 uses
  store i16 %i.jx, ptr %i.jy, align 2, !tbaa !20
  %i.jz = trunc nuw i32 %i.jw to i16
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 2
  store i16 %i.jz, ptr %i.ka, align 2, !tbaa !20
  %i.kb = add nuw nsw i64 %.1.i100173, 1          ; 2 uses
  %i.kc = icmp samesign ult i64 %i.kb, %spec.select
  br i1 %i.kc, label %.lr.ph175, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, !llvm.loop !1788

bb.s:                                             ; preds = %bb.j
  br i1 %.b.i93, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.kd = load i8, ptr %i.w, align 1, !tbaa !1733
  %i.ke = icmp ult i8 %i.kd, 25
  br i1 %i.ke, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.kf = lshr i64 %spec.select, 2                ; 3 uses
  %.not228 = icmp eq i64 %i.kf, 0                 ; 2 uses
  br i1 %.not.i, label %.preheader140, label %bb.v

.preheader140:                                    ; preds = %bb.u
  br i1 %.not228, label %._crit_edge165, label %.lr.ph164

.lr.ph164:                                        ; preds = %.preheader140, %.lr.ph164
  %.0.i102163 = phi i64 [ %i.ld, %.lr.ph164 ], [ 0, %.preheader140 ] ; 4 uses
  %i.kg = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %.0.i102163
  %i.kh = load <4 x i32>, ptr %i.kg, align 1, !tbaa !9
  %i.ki = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.kj = zext i8 %i.ki to i32
  %i.kk = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.kh, i32 range(i32 -232, 288) %i.kj)
  %i.kl = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.0.i102163
  %i.km = load <4 x i32>, ptr %i.kl, align 1, !tbaa !9
  %i.kn = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.ko = zext i8 %i.kn to i32
  %i.kp = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.km, i32 range(i32 -232, 288) %i.ko) ; 3 uses
  %i.kq = shl <4 x i32> %i.kk, splat (i32 1)
  %i.kr = and <4 x i32> %i.kp, splat (i32 1)
  %i.ks = or disjoint <4 x i32> %i.kr, %i.kq      ; 2 uses
  %i.kt = add <4 x i32> %i.ks, %i.kp
  %i.ku = sub <4 x i32> %i.ks, %i.kp
  %i.kv = ashr <4 x i32> %i.kt, splat (i32 17)
  %i.kw = ashr <4 x i32> %i.ku, splat (i32 17)
  %.idx94.i = shl nuw nsw i64 %.0.i102163, 4
  %i.kx = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx94.i
  %i.ky = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.kv, <4 x i32> %i.kw)
  %i.kz = bitcast <8 x i16> %i.ky to <4 x i32>
  %i.la = shufflevector <4 x i32> %i.kz, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.lb = bitcast <4 x i32> %i.la to <8 x i16>
  %i.lc = shufflevector <8 x i16> %i.lb, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  store <8 x i16> %i.lc, ptr %i.kx, align 1, !tbaa !9
  %i.ld = add nuw nsw i64 %.0.i102163, 1          ; 2 uses
  %exitcond265.not = icmp eq i64 %i.ld, %i.kf
  br i1 %exitcond265.not, label %._crit_edge165, label %.lr.ph164, !llvm.loop !1789

._crit_edge165:                                   ; preds = %.lr.ph164, %.preheader140
  %i.le = and i64 %spec.select, 4294967292        ; 5 uses
  %.not229 = icmp eq i64 %i.le, %spec.select
  br i1 %.not229, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph168

.lr.ph168:                                        ; preds = %._crit_edge165
  %i.lf = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.lg = zext nneg i8 %i.lf to i32               ; 2 uses
  %i.lh = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.li = zext nneg i8 %i.lh to i32               ; 2 uses
  %i.lj = or disjoint i64 %i.le, 1
  %i.lk = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.lj) ; 2 uses
  %7 = and i64 %spec.select, 4294967292
  %i.ll = sub nsw i64 %i.lk, %7                   ; 2 uses
  %min.iters.check443 = icmp ult i64 %i.ll, 4
  br i1 %min.iters.check443, label %scalar.ph442.preheader, label %vector.ph444

vector.ph444:                                     ; preds = %.lr.ph168
  %i.lm = and i64 %i.lk, 3                        ; 2 uses
  %n.vec445 = sub nuw nsw i64 %i.ll, %i.lm        ; 2 uses
  %i.ln = add nsw i64 %i.le, %n.vec445
  %broadcast.splatinsert446 = insertelement <4 x i32> poison, i32 %i.lg, i64 0
  %broadcast.splat447 = shufflevector <4 x i32> %broadcast.splatinsert446, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert448 = insertelement <4 x i32> poison, i32 %i.li, i64 0
  %broadcast.splat449 = shufflevector <4 x i32> %broadcast.splatinsert448, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body450

vector.body450:                                   ; preds = %vector.body450, %vector.ph444
  %index451 = phi i64 [ 0, %vector.ph444 ], [ %index.next455, %vector.body450 ] ; 2 uses
  %i.lo = add nuw i64 %i.le, %index451            ; 3 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.lo
  %wide.load452 = load <4 x i32>, ptr %i.lp, align 4, !tbaa !8
  %i.lq = shl <4 x i32> %wide.load452, %broadcast.splat447
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.lo
  %wide.load453 = load <4 x i32>, ptr %i.lr, align 4, !tbaa !8
  %i.ls = shl <4 x i32> %wide.load453, %broadcast.splat449 ; 3 uses
  %i.lt = shl <4 x i32> %i.lq, splat (i32 1)
  %i.lu = and <4 x i32> %i.ls, splat (i32 1)
  %i.lv = or disjoint <4 x i32> %i.lu, %i.lt      ; 2 uses
  %i.lw = add <4 x i32> %i.lv, %i.ls
  %i.lx = shl nuw nsw i64 %i.lo, 2
  %i.ly = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.lx
  %i.lz = sub <4 x i32> %i.lv, %i.ls
  %i.ma = shufflevector <4 x i32> %i.lw, <4 x i32> %i.lz, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.mb = ashr <8 x i32> %i.ma, splat (i32 17)
  %interleaved.vec454 = trunc nsw <8 x i32> %i.mb to <8 x i16>
  store <8 x i16> %interleaved.vec454, ptr %i.ly, align 2, !tbaa !20
  %index.next455 = add nuw i64 %index451, 4       ; 2 uses
  %i.mc = icmp eq i64 %index.next455, %n.vec445
  br i1 %i.mc, label %middle.block456, label %vector.body450, !llvm.loop !1790

middle.block456:                                  ; preds = %vector.body450
  %cmp.n457 = icmp eq i64 %i.lm, 0
  br i1 %cmp.n457, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %scalar.ph442.preheader

scalar.ph442.preheader:                           ; preds = %.lr.ph168, %middle.block456
  %.1.i103166.ph = phi i64 [ %i.le, %.lr.ph168 ], [ %i.ln, %middle.block456 ]
  br label %scalar.ph442

scalar.ph442:                                     ; preds = %scalar.ph442.preheader, %scalar.ph442
  %.1.i103166 = phi i64 [ %i.mu, %scalar.ph442 ], [ %.1.i103166.ph, %scalar.ph442.preheader ] ; 4 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.1.i103166
  %i.me = load i32, ptr %i.md, align 4, !tbaa !8
  %i.mf = shl i32 %i.me, %i.lg
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i103166
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !8
  %i.mi = shl i32 %i.mh, %i.li                    ; 3 uses
  %i.mj = shl i32 %i.mf, 1
  %i.mk = and i32 %i.mi, 1
  %i.ml = or disjoint i32 %i.mk, %i.mj            ; 2 uses
  %i.mm = add i32 %i.ml, %i.mi
  %i.mn = ashr i32 %i.mm, 17
  %i.mo = trunc nsw i32 %i.mn to i16
  %.idx121 = shl nuw nsw i64 %.1.i103166, 2
  %i.mp = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx121 ; 2 uses
  store i16 %i.mo, ptr %i.mp, align 2, !tbaa !20
  %i.mq = sub i32 %i.ml, %i.mi
  %i.mr = ashr i32 %i.mq, 17
  %i.ms = trunc nsw i32 %i.mr to i16
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 2
  store i16 %i.ms, ptr %i.mt, align 2, !tbaa !20
  %i.mu = add nuw nsw i64 %.1.i103166, 1          ; 2 uses
  %i.mv = icmp samesign ult i64 %i.mu, %spec.select
  br i1 %i.mv, label %scalar.ph442, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, !llvm.loop !1791

bb.v:                                             ; preds = %bb.u
  br i1 %.not228, label %._crit_edge, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.v, %.lr.ph159
  %.2.i158 = phi i64 [ %i.nv, %.lr.ph159 ], [ 0, %bb.v ] ; 4 uses
  %i.mw = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %.2.i158
  %i.mx = load <4 x i32>, ptr %i.mw, align 1, !tbaa !9
  %i.my = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.mz = zext i8 %i.my to i32
  %i.na = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.mx, i32 range(i32 -232, 288) %i.mz)
  %i.nb = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.2.i158
  %i.nc = load <4 x i32>, ptr %i.nb, align 1, !tbaa !9
  %i.nd = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.ne = zext i8 %i.nd to i32
  %i.nf = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.nc, i32 range(i32 -232, 288) %i.ne) ; 3 uses
  %i.ng = shl <4 x i32> %i.na, splat (i32 1)
  %i.nh = and <4 x i32> %i.nf, splat (i32 1)
  %i.ni = or disjoint <4 x i32> %i.nh, %i.ng      ; 2 uses
  %i.nj = add <4 x i32> %i.ni, %i.nf
  %i.nk = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.nj, i32 range(i32 -232, 288) %i.af)
  %i.nl = sub <4 x i32> %i.ni, %i.nf
  %i.nm = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.nl, i32 range(i32 -232, 288) %i.af)
  %i.nn = ashr <4 x i32> %i.nk, splat (i32 16)
  %i.no = ashr <4 x i32> %i.nm, splat (i32 16)
  %.idx.i101 = shl nuw nsw i64 %.2.i158, 4
  %i.np = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx.i101
  %i.nq = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.nn, <4 x i32> %i.no)
  %i.nr = bitcast <8 x i16> %i.nq to <4 x i32>
  %i.ns = shufflevector <4 x i32> %i.nr, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.nt = bitcast <4 x i32> %i.ns to <8 x i16>
  %i.nu = shufflevector <8 x i16> %i.nt, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  store <8 x i16> %i.nu, ptr %i.np, align 1, !tbaa !9
  %i.nv = add nuw nsw i64 %.2.i158, 1             ; 2 uses
  %exitcond264.not = icmp eq i64 %i.nv, %i.kf
  br i1 %exitcond264.not, label %._crit_edge, label %.lr.ph159, !llvm.loop !1792

._crit_edge:                                      ; preds = %.lr.ph159, %bb.v
  %i.nw = and i64 %spec.select, 4294967292        ; 5 uses
  %.not227 = icmp eq i64 %i.nw, %spec.select
  br i1 %.not227, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph162

.lr.ph162:                                        ; preds = %._crit_edge
  %i.nx = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.ny = zext nneg i8 %i.nx to i32               ; 2 uses
  %i.nz = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.oa = zext nneg i8 %i.nz to i32               ; 2 uses
  %i.ob = or disjoint i64 %i.nw, 1
  %i.oc = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.ob) ; 2 uses
  %8 = and i64 %spec.select, 4294967292
  %i.od = sub nsw i64 %i.oc, %8                   ; 2 uses
  %min.iters.check460 = icmp ult i64 %i.od, 4
  br i1 %min.iters.check460, label %scalar.ph459.preheader, label %vector.ph461

vector.ph461:                                     ; preds = %.lr.ph162
  %i.oe = and i64 %i.oc, 3                        ; 2 uses
  %n.vec462 = sub nuw nsw i64 %i.od, %i.oe        ; 2 uses
  %i.of = add nsw i64 %i.nw, %n.vec462
  %broadcast.splatinsert463 = insertelement <4 x i32> poison, i32 %i.ny, i64 0
  %broadcast.splat464 = shufflevector <4 x i32> %broadcast.splatinsert463, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert465 = insertelement <4 x i32> poison, i32 %i.oa, i64 0
  %broadcast.splat466 = shufflevector <4 x i32> %broadcast.splatinsert465, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body469

vector.body469:                                   ; preds = %vector.body469, %vector.ph461
  %index470 = phi i64 [ 0, %vector.ph461 ], [ %index.next474, %vector.body469 ] ; 2 uses
  %i.og = add nuw i64 %i.nw, %index470            ; 3 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.og
  %wide.load471 = load <4 x i32>, ptr %i.oh, align 4, !tbaa !8
  %i.oi = shl <4 x i32> %wide.load471, %broadcast.splat464
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.og
  %wide.load472 = load <4 x i32>, ptr %i.oj, align 4, !tbaa !8
  %i.ok = shl <4 x i32> %wide.load472, %broadcast.splat466 ; 3 uses
  %i.ol = shl <4 x i32> %i.oi, splat (i32 1)
  %i.om = and <4 x i32> %i.ok, splat (i32 1)
  %i.on = or disjoint <4 x i32> %i.om, %i.ol      ; 2 uses
  %i.oo = add <4 x i32> %i.on, %i.ok
  %i.op = shl <4 x i32> %i.oo, %broadcast.splat468
  %i.oq = shl nuw nsw i64 %i.og, 2
  %i.or = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.oq
  %i.os = sub <4 x i32> %i.on, %i.ok
  %i.ot = shl <4 x i32> %i.os, %broadcast.splat468
  %i.ou = shufflevector <4 x i32> %i.op, <4 x i32> %i.ot, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ov = lshr <8 x i32> %i.ou, splat (i32 16)
  %interleaved.vec473 = trunc nuw <8 x i32> %i.ov to <8 x i16>
  store <8 x i16> %interleaved.vec473, ptr %i.or, align 2, !tbaa !20
  %index.next474 = add nuw i64 %index470, 4       ; 2 uses
  %i.ow = icmp eq i64 %index.next474, %n.vec462
  br i1 %i.ow, label %middle.block475, label %vector.body469, !llvm.loop !1793

middle.block475:                                  ; preds = %vector.body469
  %cmp.n476 = icmp eq i64 %i.oe, 0
  br i1 %cmp.n476, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %scalar.ph459.preheader

scalar.ph459.preheader:                           ; preds = %.lr.ph162, %middle.block475
  %.3.i160.ph = phi i64 [ %i.nw, %.lr.ph162 ], [ %i.of, %middle.block475 ]
  br label %scalar.ph459

scalar.ph459:                                     ; preds = %scalar.ph459.preheader, %scalar.ph459
  %.3.i160 = phi i64 [ %i.pq, %scalar.ph459 ], [ %.3.i160.ph, %scalar.ph459.preheader ] ; 4 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.3.i160
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !8
  %i.oz = shl i32 %i.oy, %i.ny
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.3.i160
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !8
  %i.pc = shl i32 %i.pb, %i.oa                    ; 3 uses
  %i.pd = shl i32 %i.oz, 1
  %i.pe = and i32 %i.pc, 1
  %i.pf = or disjoint i32 %i.pe, %i.pd            ; 2 uses
  %i.pg = add i32 %i.pf, %i.pc
  %i.ph = shl i32 %i.pg, %i.af
  %i.pi = lshr i32 %i.ph, 16
  %i.pj = trunc nuw i32 %i.pi to i16
  %.idx120 = shl nuw nsw i64 %.3.i160, 2
  %i.pk = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx120 ; 2 uses
  store i16 %i.pj, ptr %i.pk, align 2, !tbaa !20
  %i.pl = sub i32 %i.pf, %i.pc
  %i.pm = shl i32 %i.pl, %i.af
  %i.pn = lshr i32 %i.pm, 16
  %i.po = trunc nuw i32 %i.pn to i16
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pk, i64 2
  store i16 %i.po, ptr %i.pp, align 2, !tbaa !20
  %i.pq = add nuw nsw i64 %.3.i160, 1             ; 2 uses
  %i.pr = icmp samesign ult i64 %i.pq, %spec.select
  br i1 %i.pr, label %scalar.ph459, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, !llvm.loop !1794

bb.w:                                             ; preds = %bb.t, %bb.s
  %i.ps = lshr i64 %spec.select, 2                ; 7 uses
  %.not224 = icmp eq i64 %i.ps, 0                 ; 2 uses
  br i1 %.not.i, label %.preheader143, label %bb.x

.preheader143:                                    ; preds = %bb.w
  br i1 %.not224, label %.loopexit, label %.lr.ph155

.lr.ph155:                                        ; preds = %.preheader143
  %i.pt = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.pu = zext i8 %i.pt to i32                    ; 2 uses
  %i.pv = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.pw = zext i8 %i.pv to i32                    ; 2 uses
  %min.iters.check498 = icmp samesign ult i64 %spec.select, 16
  br i1 %min.iters.check498, label %scalar.ph497.preheader, label %vector.ph499

vector.ph499:                                     ; preds = %.lr.ph155
  %n.vec500 = and i64 %i.ps, 1073741820           ; 3 uses
  %broadcast.splatinsert501 = insertelement <4 x i32> poison, i32 %i.pu, i64 0
  %broadcast.splat502 = shufflevector <4 x i32> %broadcast.splatinsert501, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert503 = insertelement <4 x i32> poison, i32 %i.pw, i64 0
  %broadcast.splat504 = shufflevector <4 x i32> %broadcast.splatinsert503, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body505

vector.body505:                                   ; preds = %vector.body505, %vector.ph499
  %index506 = phi i64 [ 0, %vector.ph499 ], [ %index.next508, %vector.body505 ] ; 6 uses
  %i.px = shl nuw nsw i64 %index506, 2            ; 5 uses
  %i.py = shl i64 %index506, 2                    ; 4 uses
  %i.pz = or disjoint i64 %i.py, 4                ; 2 uses
  %i.qa = shl i64 %index506, 2                    ; 4 uses
  %i.qb = or disjoint i64 %i.qa, 8                ; 2 uses
  %i.qc = shl i64 %index506, 2                    ; 4 uses
  %i.qd = or disjoint i64 %i.qc, 12               ; 2 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.px
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.pz
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.qb
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.qd
  %i.qi = load i32, ptr %i.qe, align 4, !tbaa !8
  %i.qj = load i32, ptr %i.qf, align 4, !tbaa !8
  %i.qk = load i32, ptr %i.qg, align 4, !tbaa !8
  %i.ql = load i32, ptr %i.qh, align 4, !tbaa !8
  %i.qm = insertelement <4 x i32> poison, i32 %i.qi, i64 0
  %i.qn = insertelement <4 x i32> %i.qm, i32 %i.qj, i64 1
  %i.qo = insertelement <4 x i32> %i.qn, i32 %i.qk, i64 2
  %i.qp = insertelement <4 x i32> %i.qo, i32 %i.ql, i64 3
  %i.qq = shl <4 x i32> %i.qp, %broadcast.splat502
  %i.qr = or disjoint i64 %i.px, 1                ; 2 uses
  %i.qs = or disjoint i64 %i.py, 5                ; 2 uses
  %i.qt = or disjoint i64 %i.qa, 9                ; 2 uses
  %i.qu = or disjoint i64 %i.qc, 13               ; 2 uses
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.qr
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.qs
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.qt
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.qu
  %i.qz = load i32, ptr %i.qv, align 4, !tbaa !8
  %i.ra = load i32, ptr %i.qw, align 4, !tbaa !8
  %i.rb = load i32, ptr %i.qx, align 4, !tbaa !8
  %i.rc = load i32, ptr %i.qy, align 4, !tbaa !8
  %i.rd = insertelement <4 x i32> poison, i32 %i.qz, i64 0
  %i.re = insertelement <4 x i32> %i.rd, i32 %i.ra, i64 1
  %i.rf = insertelement <4 x i32> %i.re, i32 %i.rb, i64 2
  %i.rg = insertelement <4 x i32> %i.rf, i32 %i.rc, i64 3
  %i.rh = shl <4 x i32> %i.rg, %broadcast.splat502
  %i.ri = or disjoint i64 %i.px, 2                ; 2 uses
  %i.rj = or disjoint i64 %i.py, 6                ; 2 uses
  %i.rk = or disjoint i64 %i.qa, 10               ; 2 uses
  %i.rl = or disjoint i64 %i.qc, 14               ; 2 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ri
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.rj
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.rk
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.rl
  %i.rq = load i32, ptr %i.rm, align 4, !tbaa !8
  %i.rr = load i32, ptr %i.rn, align 4, !tbaa !8
  %i.rs = load i32, ptr %i.ro, align 4, !tbaa !8
  %i.rt = load i32, ptr %i.rp, align 4, !tbaa !8
  %i.ru = insertelement <4 x i32> poison, i32 %i.rq, i64 0
  %i.rv = insertelement <4 x i32> %i.ru, i32 %i.rr, i64 1
  %i.rw = insertelement <4 x i32> %i.rv, i32 %i.rs, i64 2
  %i.rx = insertelement <4 x i32> %i.rw, i32 %i.rt, i64 3
  %i.ry = shl <4 x i32> %i.rx, %broadcast.splat502
  %i.rz = or disjoint i64 %i.px, 3                ; 2 uses
  %i.sa = or disjoint i64 %i.py, 7                ; 2 uses
  %i.sb = or disjoint i64 %i.qa, 11               ; 2 uses
  %i.sc = or disjoint i64 %i.qc, 15               ; 2 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.rz
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.sa
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.sb
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.sc
  %i.sh = load i32, ptr %i.sd, align 4, !tbaa !8
  %i.si = load i32, ptr %i.se, align 4, !tbaa !8
  %i.sj = load i32, ptr %i.sf, align 4, !tbaa !8
  %i.sk = load i32, ptr %i.sg, align 4, !tbaa !8
  %i.sl = insertelement <4 x i32> poison, i32 %i.sh, i64 0
  %i.sm = insertelement <4 x i32> %i.sl, i32 %i.si, i64 1
  %i.sn = insertelement <4 x i32> %i.sm, i32 %i.sj, i64 2
  %i.so = insertelement <4 x i32> %i.sn, i32 %i.sk, i64 3
  %i.sp = shl <4 x i32> %i.so, %broadcast.splat502
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.px
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.pz
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.qb
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.qd
  %i.su = load i32, ptr %i.sq, align 4, !tbaa !8
  %i.sv = load i32, ptr %i.sr, align 4, !tbaa !8
  %i.sw = load i32, ptr %i.ss, align 4, !tbaa !8
  %i.sx = load i32, ptr %i.st, align 4, !tbaa !8
  %i.sy = insertelement <4 x i32> poison, i32 %i.su, i64 0
  %i.sz = insertelement <4 x i32> %i.sy, i32 %i.sv, i64 1
  %i.ta = insertelement <4 x i32> %i.sz, i32 %i.sw, i64 2
  %i.tb = insertelement <4 x i32> %i.ta, i32 %i.sx, i64 3
  %i.tc = shl <4 x i32> %i.tb, %broadcast.splat504 ; 3 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.qr
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.qs
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.qt
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.qu
  %i.th = load i32, ptr %i.td, align 4, !tbaa !8
  %i.ti = load i32, ptr %i.te, align 4, !tbaa !8
  %i.tj = load i32, ptr %i.tf, align 4, !tbaa !8
  %i.tk = load i32, ptr %i.tg, align 4, !tbaa !8
  %i.tl = insertelement <4 x i32> poison, i32 %i.th, i64 0
  %i.tm = insertelement <4 x i32> %i.tl, i32 %i.ti, i64 1
  %i.tn = insertelement <4 x i32> %i.tm, i32 %i.tj, i64 2
  %i.to = insertelement <4 x i32> %i.tn, i32 %i.tk, i64 3
  %i.tp = shl <4 x i32> %i.to, %broadcast.splat504 ; 3 uses
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ri
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.rj
end_hunk_1
begin_hunk_2_@ma_dr_flac_read_pcm_frames_s16:bb.a
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.xa
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.xb
  %i.xg = load i32, ptr %i.xc, align 4, !tbaa !8
  %i.xh = load i32, ptr %i.xd, align 4, !tbaa !8
  %i.xi = load i32, ptr %i.xe, align 4, !tbaa !8
  %i.xj = load i32, ptr %i.xf, align 4, !tbaa !8
  %i.xk = insertelement <4 x i32> poison, i32 %i.xg, i64 0
  %i.xl = insertelement <4 x i32> %i.xk, i32 %i.xh, i64 1
  %i.xm = insertelement <4 x i32> %i.xl, i32 %i.xi, i64 2
  %i.xn = insertelement <4 x i32> %i.xm, i32 %i.xj, i64 3
  %i.xo = shl <4 x i32> %i.xn, %broadcast.splat517
  %i.xp = or disjoint i64 %i.we, 2                ; 2 uses
  %i.xq = or disjoint i64 %i.wf, 6                ; 2 uses
  %i.xr = or disjoint i64 %i.wh, 10               ; 2 uses
  %i.xs = or disjoint i64 %i.wj, 14               ; 2 uses
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.xp
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.xq
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.xr
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.xs
  %i.xx = load i32, ptr %i.xt, align 4, !tbaa !8
  %i.xy = load i32, ptr %i.xu, align 4, !tbaa !8
  %i.xz = load i32, ptr %i.xv, align 4, !tbaa !8
  %i.ya = load i32, ptr %i.xw, align 4, !tbaa !8
  %i.yb = insertelement <4 x i32> poison, i32 %i.xx, i64 0
  %i.yc = insertelement <4 x i32> %i.yb, i32 %i.xy, i64 1
  %i.yd = insertelement <4 x i32> %i.yc, i32 %i.xz, i64 2
  %i.ye = insertelement <4 x i32> %i.yd, i32 %i.ya, i64 3
  %i.yf = shl <4 x i32> %i.ye, %broadcast.splat517
  %i.yg = or disjoint i64 %i.we, 3                ; 2 uses
  %i.yh = or disjoint i64 %i.wf, 7                ; 2 uses
  %i.yi = or disjoint i64 %i.wh, 11               ; 2 uses
  %i.yj = or disjoint i64 %i.wj, 15               ; 2 uses
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.yg
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.yh
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.yi
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.yj
  %i.yo = load i32, ptr %i.yk, align 4, !tbaa !8
  %i.yp = load i32, ptr %i.yl, align 4, !tbaa !8
  %i.yq = load i32, ptr %i.ym, align 4, !tbaa !8
  %i.yr = load i32, ptr %i.yn, align 4, !tbaa !8
  %i.ys = insertelement <4 x i32> poison, i32 %i.yo, i64 0
  %i.yt = insertelement <4 x i32> %i.ys, i32 %i.yp, i64 1
  %i.yu = insertelement <4 x i32> %i.yt, i32 %i.yq, i64 2
  %i.yv = insertelement <4 x i32> %i.yu, i32 %i.yr, i64 3
  %i.yw = shl <4 x i32> %i.yv, %broadcast.splat517
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.we
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.wg
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.wi
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.wk
  %i.zb = load i32, ptr %i.yx, align 4, !tbaa !8
  %i.zc = load i32, ptr %i.yy, align 4, !tbaa !8
  %i.zd = load i32, ptr %i.yz, align 4, !tbaa !8
  %i.ze = load i32, ptr %i.za, align 4, !tbaa !8
  %i.zf = insertelement <4 x i32> poison, i32 %i.zb, i64 0
  %i.zg = insertelement <4 x i32> %i.zf, i32 %i.zc, i64 1
  %i.zh = insertelement <4 x i32> %i.zg, i32 %i.zd, i64 2
  %i.zi = insertelement <4 x i32> %i.zh, i32 %i.ze, i64 3
  %i.zj = shl <4 x i32> %i.zi, %broadcast.splat519 ; 3 uses
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.wy
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.wz
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.xa
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.xb
  %i.zo = load i32, ptr %i.zk, align 4, !tbaa !8
  %i.zp = load i32, ptr %i.zl, align 4, !tbaa !8
  %i.zq = load i32, ptr %i.zm, align 4, !tbaa !8
  %i.zr = load i32, ptr %i.zn, align 4, !tbaa !8
  %i.zs = insertelement <4 x i32> poison, i32 %i.zo, i64 0
  %i.zt = insertelement <4 x i32> %i.zs, i32 %i.zp, i64 1
  %i.zu = insertelement <4 x i32> %i.zt, i32 %i.zq, i64 2
  %i.zv = insertelement <4 x i32> %i.zu, i32 %i.zr, i64 3
  %i.zw = shl <4 x i32> %i.zv, %broadcast.splat519 ; 3 uses
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.xp
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.xq
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.xr
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.xs
  %i.aab = load i32, ptr %i.zx, align 4, !tbaa !8
  %i.aac = load i32, ptr %i.zy, align 4, !tbaa !8
  %i.aad = load i32, ptr %i.zz, align 4, !tbaa !8
  %i.aae = load i32, ptr %i.aaa, align 4, !tbaa !8
  %i.aaf = insertelement <4 x i32> poison, i32 %i.aab, i64 0
  %i.aag = insertelement <4 x i32> %i.aaf, i32 %i.aac, i64 1
  %i.aah = insertelement <4 x i32> %i.aag, i32 %i.aad, i64 2
  %i.aai = insertelement <4 x i32> %i.aah, i32 %i.aae, i64 3
  %i.aaj = shl <4 x i32> %i.aai, %broadcast.splat519 ; 3 uses
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.yg
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.yh
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.yi
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.yj
  %i.aao = load i32, ptr %i.aak, align 4, !tbaa !8
  %i.aap = load i32, ptr %i.aal, align 4, !tbaa !8
  %i.aaq = load i32, ptr %i.aam, align 4, !tbaa !8
  %i.aar = load i32, ptr %i.aan, align 4, !tbaa !8
  %i.aas = insertelement <4 x i32> poison, i32 %i.aao, i64 0
  %i.aat = insertelement <4 x i32> %i.aas, i32 %i.aap, i64 1
  %i.aau = insertelement <4 x i32> %i.aat, i32 %i.aaq, i64 2
  %i.aav = insertelement <4 x i32> %i.aau, i32 %i.aar, i64 3
  %i.aaw = shl <4 x i32> %i.aav, %broadcast.splat519 ; 3 uses
  %i.aax = shl <4 x i32> %i.wx, splat (i32 1)
  %i.aay = and <4 x i32> %i.zj, splat (i32 1)
  %i.aaz = or disjoint <4 x i32> %i.aay, %i.aax   ; 2 uses
  %i.aba = shl <4 x i32> %i.xo, splat (i32 1)
  %i.abb = and <4 x i32> %i.zw, splat (i32 1)
  %i.abc = or disjoint <4 x i32> %i.abb, %i.aba   ; 2 uses
  %i.abd = shl <4 x i32> %i.yf, splat (i32 1)
  %i.abe = and <4 x i32> %i.aaj, splat (i32 1)
  %i.abf = or disjoint <4 x i32> %i.abe, %i.abd   ; 2 uses
  %i.abg = shl <4 x i32> %i.yw, splat (i32 1)
  %i.abh = and <4 x i32> %i.aaw, splat (i32 1)
  %i.abi = or disjoint <4 x i32> %i.abh, %i.abg   ; 2 uses
  %i.abj = add <4 x i32> %i.aaz, %i.zj
  %i.abk = add <4 x i32> %i.abc, %i.zw
  %i.abl = add <4 x i32> %i.abf, %i.aaj
  %i.abm = add <4 x i32> %i.abi, %i.aaw
  %i.abn = sub <4 x i32> %i.aaz, %i.zj
  %i.abo = sub <4 x i32> %i.abc, %i.zw
  %i.abp = sub <4 x i32> %i.abf, %i.aaj
  %i.abq = sub <4 x i32> %i.abi, %i.aaw
  %i.abr = shl nuw nsw i64 %index523, 4
  %i.abs = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.abr
  %i.abt = shufflevector <4 x i32> %i.abj, <4 x i32> %i.abn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abu = shufflevector <4 x i32> %i.abk, <4 x i32> %i.abo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abv = shufflevector <8 x i32> %i.abt, <8 x i32> %i.abu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abw = shl <16 x i32> %i.abv, %i.am
  %i.abx = shufflevector <4 x i32> %i.abl, <4 x i32> %i.abp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aby = shufflevector <4 x i32> %i.abm, <4 x i32> %i.abq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abz = shufflevector <8 x i32> %i.abx, <8 x i32> %i.aby, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aca = shl <16 x i32> %i.abz, %i.an
  %i.acb = shufflevector <16 x i32> %i.abw, <16 x i32> %i.aca, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.acc = lshr <32 x i32> %i.acb, splat (i32 16)
  %interleaved.vec524 = trunc nuw <32 x i32> %i.acc to <32 x i16>
  store <32 x i16> %interleaved.vec524, ptr %i.abs, align 2, !tbaa !20
  %index.next525 = add nuw i64 %index523, 4       ; 2 uses
  %i.acd = icmp eq i64 %index.next525, %n.vec515
  br i1 %i.acd, label %middle.block526, label %vector.body522, !llvm.loop !1796

middle.block526:                                  ; preds = %vector.body522
  %cmp.n527 = icmp eq i64 %i.ps, %n.vec515
  br i1 %cmp.n527, label %.loopexit, label %scalar.ph512.preheader

scalar.ph512.preheader:                           ; preds = %.lr.ph, %middle.block526
  %.0.i104153.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec515, %middle.block526 ]
  %i.ace = insertelement <4 x i32> poison, i32 %i.wb, i64 0
  %i.acf = shufflevector <4 x i32> %i.ace, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.acg = insertelement <4 x i32> poison, i32 %i.wd, i64 0
  %i.ach = shufflevector <4 x i32> %i.acg, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %scalar.ph512

scalar.ph512:                                     ; preds = %scalar.ph512.preheader, %scalar.ph512
  %.0.i104153 = phi i64 [ %i.ada, %scalar.ph512 ], [ %.0.i104153.ph, %scalar.ph512.preheader ] ; 3 uses
  %i.aci = shl nuw nsw i64 %.0.i104153, 2         ; 2 uses
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.aci
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.aci
  %.idx = shl nuw nsw i64 %.0.i104153, 4
  %i.acl = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx
  %i.acm = load <4 x i32>, ptr %i.acj, align 4, !tbaa !8
  %i.acn = shl <4 x i32> %i.acm, %i.acf
  %i.aco = load <4 x i32>, ptr %i.ack, align 4, !tbaa !8
  %i.acp = shl <4 x i32> %i.aco, %i.ach           ; 3 uses
  %i.acq = shl <4 x i32> %i.acn, splat (i32 1)
  %i.acr = and <4 x i32> %i.acp, splat (i32 1)
  %i.acs = or disjoint <4 x i32> %i.acr, %i.acq   ; 2 uses
  %i.act = add <4 x i32> %i.acs, %i.acp
  %i.acu = sub <4 x i32> %i.acs, %i.acp
  %i.acv = shufflevector <4 x i32> %i.act, <4 x i32> %i.acu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.acw = shl <8 x i32> %i.acv, %i.ap
  %i.acx = lshr <8 x i32> %i.acw, splat (i32 16)
  %i.acy = trunc nuw <8 x i32> %i.acx to <8 x i16>
  %i.acz = shufflevector <8 x i16> %i.acy, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.acz, ptr %i.acl, align 2, !tbaa !20
  %i.ada = add nuw nsw i64 %.0.i104153, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.ada, %i.ps
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph512, !llvm.loop !1797

scalar.ph497:                                     ; preds = %scalar.ph497.preheader, %scalar.ph497
  %.1.i106154 = phi i64 [ %i.adt, %scalar.ph497 ], [ %.1.i106154.ph, %scalar.ph497.preheader ] ; 3 uses
  %i.adb = shl nuw nsw i64 %.1.i106154, 2         ; 2 uses
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.adb
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.adb
  %.idx119 = shl nuw nsw i64 %.1.i106154, 4
  %i.ade = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx119
  %i.adf = load <4 x i32>, ptr %i.adc, align 4, !tbaa !8
  %i.adg = shl <4 x i32> %i.adf, %i.vx
  %i.adh = load <4 x i32>, ptr %i.add, align 4, !tbaa !8
  %i.adi = shl <4 x i32> %i.adh, %i.vz            ; 3 uses
  %i.adj = shl <4 x i32> %i.adg, splat (i32 1)
  %i.adk = and <4 x i32> %i.adi, splat (i32 1)
  %i.adl = or disjoint <4 x i32> %i.adk, %i.adj   ; 2 uses
  %i.adm = add <4 x i32> %i.adl, %i.adi
  %i.adn = sub <4 x i32> %i.adl, %i.adi
  %i.ado = shufflevector <4 x i32> %i.adm, <4 x i32> %i.adn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.adp = ashr <8 x i32> %i.ado, splat (i32 1)
  %i.adq = lshr <8 x i32> %i.adp, splat (i32 16)
  %i.adr = trunc nuw <8 x i32> %i.adq to <8 x i16>
  %i.ads = shufflevector <8 x i16> %i.adr, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.ads, ptr %i.ade, align 2, !tbaa !20
  %i.adt = add nuw nsw i64 %.1.i106154, 1         ; 2 uses
  %exitcond263.not = icmp eq i64 %i.adt, %i.ps
  br i1 %exitcond263.not, label %.loopexit, label %scalar.ph497, !llvm.loop !1798

.loopexit:                                        ; preds = %scalar.ph512, %scalar.ph497, %middle.block526, %middle.block509, %bb.x, %.preheader143
  %i.adu = and i64 %spec.select, 4294967292       ; 5 uses
  %.not225 = icmp eq i64 %i.adu, %spec.select
  br i1 %.not225, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph157

.lr.ph157:                                        ; preds = %.loopexit
  %i.adv = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.adw = zext nneg i8 %i.adv to i32             ; 2 uses
  %i.adx = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.ady = zext nneg i8 %i.adx to i32             ; 2 uses
  %i.adz = or disjoint i64 %i.adu, 1
  %i.aea = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.adz) ; 2 uses
  %9 = and i64 %spec.select, 4294967292
  %i.aeb = sub nsw i64 %i.aea, %9                 ; 2 uses
  %min.iters.check479 = icmp ult i64 %i.aeb, 4
  br i1 %min.iters.check479, label %scalar.ph478.preheader, label %vector.ph480

vector.ph480:                                     ; preds = %.lr.ph157
  %i.aec = and i64 %i.aea, 3                      ; 2 uses
  %n.vec481 = sub nuw nsw i64 %i.aeb, %i.aec      ; 2 uses
  %i.aed = add nsw i64 %i.adu, %n.vec481
  %broadcast.splatinsert482 = insertelement <4 x i32> poison, i32 %i.adw, i64 0
  %broadcast.splat483 = shufflevector <4 x i32> %broadcast.splatinsert482, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert484 = insertelement <4 x i32> poison, i32 %i.ady, i64 0
  %broadcast.splat485 = shufflevector <4 x i32> %broadcast.splatinsert484, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body488

vector.body488:                                   ; preds = %vector.body488, %vector.ph480
  %index489 = phi i64 [ 0, %vector.ph480 ], [ %index.next493, %vector.body488 ] ; 2 uses
  %i.aee = add nuw i64 %i.adu, %index489          ; 3 uses
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.aee
  %wide.load490 = load <4 x i32>, ptr %i.aef, align 4, !tbaa !8
  %i.aeg = shl <4 x i32> %wide.load490, %broadcast.splat483
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.aee
  %wide.load491 = load <4 x i32>, ptr %i.aeh, align 4, !tbaa !8
  %i.aei = shl <4 x i32> %wide.load491, %broadcast.splat485 ; 3 uses
  %i.aej = shl <4 x i32> %i.aeg, splat (i32 1)
  %i.aek = and <4 x i32> %i.aei, splat (i32 1)
  %i.ael = or disjoint <4 x i32> %i.aek, %i.aej   ; 2 uses
  %i.aem = add <4 x i32> %i.ael, %i.aei
  %i.aen = ashr <4 x i32> %i.aem, splat (i32 1)
  %i.aeo = shl <4 x i32> %i.aen, %broadcast.splat487
  %i.aep = shl nuw nsw i64 %i.aee, 2
  %i.aeq = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.aep
  %i.aer = sub <4 x i32> %i.ael, %i.aei
  %i.aes = ashr <4 x i32> %i.aer, splat (i32 1)
  %i.aet = shl <4 x i32> %i.aes, %broadcast.splat487
  %i.aeu = shufflevector <4 x i32> %i.aeo, <4 x i32> %i.aet, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.aev = lshr <8 x i32> %i.aeu, splat (i32 16)
  %interleaved.vec492 = trunc nuw <8 x i32> %i.aev to <8 x i16>
  store <8 x i16> %interleaved.vec492, ptr %i.aeq, align 2, !tbaa !20
  %index.next493 = add nuw i64 %index489, 4       ; 2 uses
  %i.aew = icmp eq i64 %index.next493, %n.vec481
  br i1 %i.aew, label %middle.block494, label %vector.body488, !llvm.loop !1799

middle.block494:                                  ; preds = %vector.body488
  %cmp.n495 = icmp eq i64 %i.aec, 0
  br i1 %cmp.n495, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %scalar.ph478.preheader

scalar.ph478.preheader:                           ; preds = %.lr.ph157, %middle.block494
  %.2.i105156.ph = phi i64 [ %i.adu, %.lr.ph157 ], [ %i.aed, %middle.block494 ]
  br label %scalar.ph478

scalar.ph478:                                     ; preds = %scalar.ph478.preheader, %scalar.ph478
  %.2.i105156 = phi i64 [ %i.afs, %scalar.ph478 ], [ %.2.i105156.ph, %scalar.ph478.preheader ] ; 4 uses
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.2.i105156
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !8
  %i.aez = shl i32 %i.aey, %i.adw
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.2.i105156
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !8
  %i.afc = shl i32 %i.afb, %i.ady                 ; 3 uses
  %i.afd = shl i32 %i.aez, 1
  %i.afe = and i32 %i.afc, 1
  %i.aff = or disjoint i32 %i.afe, %i.afd         ; 2 uses
  %i.afg = add i32 %i.aff, %i.afc
  %i.afh = ashr i32 %i.afg, 1
  %i.afi = shl i32 %i.afh, %i.z
  %i.afj = lshr i32 %i.afi, 16
  %i.afk = trunc nuw i32 %i.afj to i16
  %.idx118 = shl nuw nsw i64 %.2.i105156, 2
  %i.afl = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx118 ; 2 uses
  store i16 %i.afk, ptr %i.afl, align 2, !tbaa !20
  %i.afm = sub i32 %i.aff, %i.afc
  %i.afn = ashr i32 %i.afm, 1
  %i.afo = shl i32 %i.afn, %i.z
  %i.afp = lshr i32 %i.afo, 16
  %i.afq = trunc nuw i32 %i.afp to i16
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afl, i64 2
  store i16 %i.afq, ptr %i.afr, align 2, !tbaa !20
  %i.afs = add nuw nsw i64 %.2.i105156, 1         ; 2 uses
  %i.aft = icmp samesign ult i64 %i.afs, %spec.select
  br i1 %i.aft, label %scalar.ph478, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, !llvm.loop !1800

bb.y:                                             ; preds = %bb.j
  br i1 %.b.i93, label %bb.z, label %._crit_edge285

._crit_edge285:                                   ; preds = %bb.y
  %.pre286 = load i8, ptr %i.ag, align 1, !tbaa !1740
  %.pre288 = load i8, ptr %i.ah, align 1, !tbaa !1740
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.afu = load i8, ptr %i.w, align 1, !tbaa !1733
  %i.afv = icmp ult i8 %i.afu, 25
  %.pre287 = load i8, ptr %i.ag, align 1, !tbaa !1740 ; 2 uses
  %.pre289 = load i8, ptr %i.ah, align 1, !tbaa !1740 ; 2 uses
  br i1 %i.afv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.afw = lshr i64 %spec.select, 2               ; 2 uses
  %i.afx = zext i8 %.pre287 to i32
  %i.afy = add nsw i32 %i.z, %i.afx               ; 3 uses
  %i.afz = zext i8 %.pre289 to i32
  %i.aga = add nsw i32 %i.z, %i.afz               ; 3 uses
  %.not240 = icmp eq i64 %i.afw, 0
  br i1 %.not240, label %._crit_edge207, label %.lr.ph206

.lr.ph206:                                        ; preds = %bb.aa, %.lr.ph206
  %.0.i107204 = phi i64 [ %i.agp, %.lr.ph206 ], [ 0, %bb.aa ] ; 4 uses
  %i.agb = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %.0.i107204
  %i.agc = load <4 x i32>, ptr %i.agb, align 1, !tbaa !9
  %i.agd = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.agc, i32 range(i32 -232, 288) %i.afy)
  %i.age = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.0.i107204
  %i.agf = load <4 x i32>, ptr %i.age, align 1, !tbaa !9
  %i.agg = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.agf, i32 range(i32 -232, 288) %i.aga)
  %i.agh = ashr <4 x i32> %i.agd, splat (i32 16)
  %i.agi = ashr <4 x i32> %i.agg, splat (i32 16)
  %.idx.i109 = shl nuw nsw i64 %.0.i107204, 4
  %i.agj = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx.i109
  %i.agk = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.agh, <4 x i32> %i.agi)
  %i.agl = bitcast <8 x i16> %i.agk to <4 x i32>
  %i.agm = shufflevector <4 x i32> %i.agl, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.agn = bitcast <4 x i32> %i.agm to <8 x i16>
  %i.ago = shufflevector <8 x i16> %i.agn, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  store <8 x i16> %i.ago, ptr %i.agj, align 1, !tbaa !9
  %i.agp = add nuw nsw i64 %.0.i107204, 1         ; 2 uses
  %exitcond271.not = icmp eq i64 %i.agp, %i.afw
  br i1 %exitcond271.not, label %._crit_edge207, label %.lr.ph206, !llvm.loop !1801

._crit_edge207:                                   ; preds = %.lr.ph206, %bb.aa
  %i.agq = and i64 %spec.select, 4294967292       ; 5 uses
  %.not241 = icmp eq i64 %i.agq, %spec.select
  br i1 %.not241, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph210.preheader

.lr.ph210.preheader:                              ; preds = %._crit_edge207
  %i.agr = or disjoint i64 %i.agq, 1
  %i.ags = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.agr) ; 2 uses
  %10 = and i64 %spec.select, 4294967292
  %i.agt = sub nsw i64 %i.ags, %10                ; 2 uses
  %min.iters.check = icmp ult i64 %i.agt, 4
  br i1 %min.iters.check, label %.lr.ph210.preheader536, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph210.preheader
  %i.agu = and i64 %i.ags, 3                      ; 2 uses
  %n.vec = sub nuw nsw i64 %i.agt, %i.agu         ; 2 uses
  %i.agv = add nsw i64 %i.agq, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.afy, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert354 = insertelement <4 x i32> poison, i32 %i.aga, i64 0
  %broadcast.splat355 = shufflevector <4 x i32> %broadcast.splatinsert354, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.agw = add nuw i64 %i.agq, %index             ; 3 uses
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.agw
  %wide.load = load <4 x i32>, ptr %i.agx, align 4, !tbaa !8
  %i.agy = shl <4 x i32> %wide.load, %broadcast.splat
  %i.agz = shl nuw nsw i64 %i.agw, 2
  %i.aha = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.agz
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.agw
  %wide.load356 = load <4 x i32>, ptr %i.ahb, align 4, !tbaa !8
  %i.ahc = shl <4 x i32> %wide.load356, %broadcast.splat355
  %i.ahd = shufflevector <4 x i32> %i.agy, <4 x i32> %i.ahc, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ahe = lshr <8 x i32> %i.ahd, splat (i32 16)
  %interleaved.vec = trunc nuw <8 x i32> %i.ahe to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %i.aha, align 2, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ahf = icmp eq i64 %index.next, %n.vec
  br i1 %i.ahf, label %middle.block, label %vector.body, !llvm.loop !1802

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.agu, 0
  br i1 %cmp.n, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph210.preheader536

.lr.ph210.preheader536:                           ; preds = %.lr.ph210.preheader, %middle.block
  %.1.i108208.ph = phi i64 [ %i.agq, %.lr.ph210.preheader ], [ %i.agv, %middle.block ]
  br label %.lr.ph210

.lr.ph210:                                        ; preds = %.lr.ph210.preheader536, %.lr.ph210
  %.1.i108208 = phi i64 [ %i.ahs, %.lr.ph210 ], [ %.1.i108208.ph, %.lr.ph210.preheader536 ] ; 4 uses
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.1.i108208
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !8
  %i.ahi = shl i32 %i.ahh, %i.afy
  %i.ahj = lshr i32 %i.ahi, 16
  %i.ahk = trunc nuw i32 %i.ahj to i16
  %.idx130 = shl nuw nsw i64 %.1.i108208, 2
  %i.ahl = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx130 ; 2 uses
  store i16 %i.ahk, ptr %i.ahl, align 2, !tbaa !20
  %i.ahm = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i108208
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !8
  %i.aho = shl i32 %i.ahn, %i.aga
  %i.ahp = lshr i32 %i.aho, 16
  %i.ahq = trunc nuw i32 %i.ahp to i16
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahl, i64 2
  store i16 %i.ahq, ptr %i.ahr, align 2, !tbaa !20
  %i.ahs = add nuw nsw i64 %.1.i108208, 1         ; 2 uses
  %i.aht = icmp samesign ult i64 %i.ahs, %spec.select
  br i1 %i.aht, label %.lr.ph210, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, !llvm.loop !1803

bb.ab:                                            ; preds = %._crit_edge285, %bb.z
  %i.ahu = phi i8 [ %.pre288, %._crit_edge285 ], [ %.pre289, %bb.z ]
  %i.ahv = phi i8 [ %.pre286, %._crit_edge285 ], [ %.pre287, %bb.z ]
  %i.ahw = lshr i64 %spec.select, 2               ; 2 uses
  %i.ahx = zext i8 %i.ahv to i32
  %i.ahy = add nsw i32 %i.z, %i.ahx               ; 6 uses
  %i.ahz = zext i8 %i.ahu to i32
  %i.aia = add nsw i32 %i.z, %i.ahz               ; 6 uses
  %.not238 = icmp eq i64 %i.ahw, 0
  br i1 %.not238, label %._crit_edge200, label %.lr.ph199

.lr.ph199:                                        ; preds = %bb.ab, %.lr.ph199
  %.0.i110197 = phi i64 [ %i.akb, %.lr.ph199 ], [ 0, %bb.ab ] ; 3 uses
  %i.aib = shl nuw nsw i64 %.0.i110197, 2         ; 5 uses
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.aib
  %i.aid = load i32, ptr %i.aic, align 4, !tbaa !8
  %i.aie = shl i32 %i.aid, %i.ahy
  %i.aif = or disjoint i64 %i.aib, 1              ; 2 uses
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.aif
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !8
  %i.aii = shl i32 %i.aih, %i.ahy
  %i.aij = or disjoint i64 %i.aib, 2              ; 2 uses
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.aij
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !8
  %i.aim = shl i32 %i.ail, %i.ahy
  %i.ain = or disjoint i64 %i.aib, 3              ; 2 uses
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ain
  %i.aip = load i32, ptr %i.aio, align 4, !tbaa !8
  %i.aiq = shl i32 %i.aip, %i.ahy
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.aib
  %i.ais = load i32, ptr %i.air, align 4, !tbaa !8
  %i.ait = shl i32 %i.ais, %i.aia
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.aif
  %i.aiv = load i32, ptr %i.aiu, align 4, !tbaa !8
  %i.aiw = shl i32 %i.aiv, %i.aia
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.aij
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !8
  %i.aiz = shl i32 %i.aiy, %i.aia
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ain
  %i.ajb = load i32, ptr %i.aja, align 4, !tbaa !8
  %i.ajc = shl i32 %i.ajb, %i.aia
  %i.ajd = lshr i32 %i.aie, 16
  %i.aje = lshr i32 %i.aii, 16
  %i.ajf = lshr i32 %i.aim, 16
  %i.ajg = lshr i32 %i.aiq, 16
  %i.ajh = lshr i32 %i.ait, 16
  %i.aji = lshr i32 %i.aiw, 16
  %i.ajj = lshr i32 %i.aiz, 16
  %i.ajk = lshr i32 %i.ajc, 16
  %i.ajl = trunc nuw i32 %i.ajd to i16
  %.idx129 = shl nuw nsw i64 %.0.i110197, 4
  %i.ajm = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx129 ; 8 uses
  store i16 %i.ajl, ptr %i.ajm, align 2, !tbaa !20
  %i.ajn = trunc nuw i32 %i.ajh to i16
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajm, i64 2
  store i16 %i.ajn, ptr %i.ajo, align 2, !tbaa !20
  %i.ajp = trunc nuw i32 %i.aje to i16
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajm, i64 4
  store i16 %i.ajp, ptr %i.ajq, align 2, !tbaa !20
  %i.ajr = trunc nuw i32 %i.aji to i16
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajm, i64 6
  store i16 %i.ajr, ptr %i.ajs, align 2, !tbaa !20
  %i.ajt = trunc nuw i32 %i.ajf to i16
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajm, i64 8
  store i16 %i.ajt, ptr %i.aju, align 2, !tbaa !20
  %i.ajv = trunc nuw i32 %i.ajj to i16
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajm, i64 10
  store i16 %i.ajv, ptr %i.ajw, align 2, !tbaa !20
  %i.ajx = trunc nuw i32 %i.ajg to i16
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajm, i64 12
  store i16 %i.ajx, ptr %i.ajy, align 2, !tbaa !20
  %i.ajz = trunc nuw i32 %i.ajk to i16
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajm, i64 14
  store i16 %i.ajz, ptr %i.aka, align 2, !tbaa !20
  %i.akb = add nuw nsw i64 %.0.i110197, 1         ; 2 uses
  %exitcond270.not = icmp eq i64 %i.akb, %i.ahw
  br i1 %exitcond270.not, label %._crit_edge200, label %.lr.ph199, !llvm.loop !1804

._crit_edge200:                                   ; preds = %.lr.ph199, %bb.ab
  %i.akc = and i64 %spec.select, 4294967292       ; 5 uses
  %.not239 = icmp eq i64 %i.akc, %spec.select
  br i1 %.not239, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph203.preheader

.lr.ph203.preheader:                              ; preds = %._crit_edge200
  %i.akd = or disjoint i64 %i.akc, 1
  %i.ake = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.akd) ; 2 uses
  %11 = and i64 %spec.select, 4294967292
  %i.akf = sub nsw i64 %i.ake, %11                ; 2 uses
  %min.iters.check358 = icmp ult i64 %i.akf, 4
  br i1 %min.iters.check358, label %.lr.ph203.preheader538, label %vector.ph359

vector.ph359:                                     ; preds = %.lr.ph203.preheader
  %i.akg = and i64 %i.ake, 3                      ; 2 uses
  %n.vec360 = sub nuw nsw i64 %i.akf, %i.akg      ; 2 uses
  %i.akh = add nsw i64 %i.akc, %n.vec360
  %broadcast.splatinsert361 = insertelement <4 x i32> poison, i32 %i.ahy, i64 0
  %broadcast.splat362 = shufflevector <4 x i32> %broadcast.splatinsert361, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert363 = insertelement <4 x i32> poison, i32 %i.aia, i64 0
  %broadcast.splat364 = shufflevector <4 x i32> %broadcast.splatinsert363, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body365

vector.body365:                                   ; preds = %vector.body365, %vector.ph359
  %index366 = phi i64 [ 0, %vector.ph359 ], [ %index.next370, %vector.body365 ] ; 2 uses
  %i.aki = add nuw i64 %i.akc, %index366          ; 3 uses
  %i.akj = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.aki
  %wide.load367 = load <4 x i32>, ptr %i.akj, align 4, !tbaa !8
  %i.akk = shl <4 x i32> %wide.load367, %broadcast.splat362
  %i.akl = shl nuw nsw i64 %i.aki, 2
  %i.akm = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.akl
  %i.akn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.aki
  %wide.load368 = load <4 x i32>, ptr %i.akn, align 4, !tbaa !8
  %i.ako = shl <4 x i32> %wide.load368, %broadcast.splat364
  %i.akp = shufflevector <4 x i32> %i.akk, <4 x i32> %i.ako, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.akq = lshr <8 x i32> %i.akp, splat (i32 16)
  %interleaved.vec369 = trunc nuw <8 x i32> %i.akq to <8 x i16>
  store <8 x i16> %interleaved.vec369, ptr %i.akm, align 2, !tbaa !20
  %index.next370 = add nuw i64 %index366, 4       ; 2 uses
  %i.akr = icmp eq i64 %index.next370, %n.vec360
  br i1 %i.akr, label %middle.block371, label %vector.body365, !llvm.loop !1805

middle.block371:                                  ; preds = %vector.body365
  %cmp.n372 = icmp eq i64 %i.akg, 0
  br i1 %cmp.n372, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph203.preheader538

.lr.ph203.preheader538:                           ; preds = %.lr.ph203.preheader, %middle.block371
  %.1.i111201.ph = phi i64 [ %i.akc, %.lr.ph203.preheader ], [ %i.akh, %middle.block371 ]
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.preheader538, %.lr.ph203
  %.1.i111201 = phi i64 [ %i.ale, %.lr.ph203 ], [ %.1.i111201.ph, %.lr.ph203.preheader538 ] ; 4 uses
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.1.i111201
  %i.akt = load i32, ptr %i.aks, align 4, !tbaa !8
  %i.aku = shl i32 %i.akt, %i.ahy
  %i.akv = lshr i32 %i.aku, 16
  %i.akw = trunc nuw i32 %i.akv to i16
  %.idx128 = shl nuw nsw i64 %.1.i111201, 2
  %i.akx = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx128 ; 2 uses
  store i16 %i.akw, ptr %i.akx, align 2, !tbaa !20
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i111201
  %i.akz = load i32, ptr %i.aky, align 4, !tbaa !8
  %i.ala = shl i32 %i.akz, %i.aia
  %i.alb = lshr i32 %i.ala, 16
  %i.alc = trunc nuw i32 %i.alb to i16
  %i.ald = getelementptr inbounds nuw i8, ptr %i.akx, i64 2
  store i16 %i.alc, ptr %i.ald, align 2, !tbaa !20
  %i.ale = add nuw nsw i64 %.1.i111201, 1         ; 2 uses
  %i.alf = icmp samesign ult i64 %i.ale, %spec.select
  br i1 %i.alf, label %.lr.ph203, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, !llvm.loop !1806

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge213
  %.078214 = phi i64 [ %i.amy, %._crit_edge213 ], [ 0, %.preheader.preheader ] ; 5 uses
  %i.alg = mul nuw nsw i64 %.078214, %i.bg
  %i.alh = getelementptr inbounds nuw [2 x i8], ptr %.081217, i64 %i.alg ; 3 uses
  br i1 %i.bi, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.ali = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 8
  %i.alk = load ptr, ptr %i.alj, align 8, !tbaa !1738
  %i.all = getelementptr inbounds nuw [4 x i8], ptr %i.alk, i64 %.078214
  %i.alm = getelementptr inbounds nuw [4 x i8], ptr %i.all, i64 %i.bc
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !8
  %i.alo = getelementptr inbounds nuw i8, ptr %i.ali, i64 1
  %i.alp = load i8, ptr %i.alo, align 1, !tbaa !1740
  %i.alq = zext i8 %i.alp to i32
  %i.alr = add nsw i32 %i.z, %i.alq
  %i.als = shl i32 %i.aln, %i.alr
  %i.alt = lshr i32 %i.als, 16
  %i.alu = trunc nuw i32 %i.alt to i16
  %i.alv = getelementptr inbounds nuw [2 x i8], ptr %i.alh, i64 %indvars.iv
  store i16 %i.alu, ptr %i.alv, align 2, !tbaa !20
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.alw = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv.next ; 2 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 8
  %i.aly = load ptr, ptr %i.alx, align 8, !tbaa !1738
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %i.aly, i64 %.078214
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr %i.alz, i64 %i.bc
  %i.amb = load i32, ptr %i.ama, align 4, !tbaa !8
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alw, i64 1
  %i.amd = load i8, ptr %i.amc, align 1, !tbaa !1740
  %i.ame = zext i8 %i.amd to i32
  %i.amf = add nsw i32 %i.z, %i.ame
  %i.amg = shl i32 %i.amb, %i.amf
  %i.amh = lshr i32 %i.amg, 16
  %i.ami = trunc nuw i32 %i.amh to i16
  %i.amj = getelementptr inbounds nuw [2 x i8], ptr %i.alh, i64 %indvars.iv.next
  store i16 %i.ami, ptr %i.amj, align 2, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge213.unr-lcssa, label %.preheader.new, !llvm.loop !1807

._crit_edge213.unr-lcssa:                         ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge213, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge213.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge213.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod554)
  %i.amk = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv.epil.init ; 2 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 8
  %i.amm = load ptr, ptr %i.aml, align 8, !tbaa !1738
  %i.amn = getelementptr inbounds nuw [4 x i8], ptr %i.amm, i64 %.078214
  %i.amo = getelementptr inbounds nuw [4 x i8], ptr %i.amn, i64 %i.bc
  %i.amp = load i32, ptr %i.amo, align 4, !tbaa !8
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amk, i64 1
  %i.amr = load i8, ptr %i.amq, align 1, !tbaa !1740
  %i.ams = zext i8 %i.amr to i32
  %i.amt = add nsw i32 %i.z, %i.ams
  %i.amu = shl i32 %i.amp, %i.amt
  %i.amv = lshr i32 %i.amu, 16
  %i.amw = trunc nuw i32 %i.amv to i16
  %i.amx = getelementptr inbounds nuw [2 x i8], ptr %i.alh, i64 %indvars.iv.epil.init
  store i16 %i.amw, ptr %i.amx, align 2, !tbaa !20
  br label %._crit_edge213

._crit_edge213:                                   ; preds = %._crit_edge213.unr-lcssa, %.epil.preheader
  %i.amy = add nuw nsw i64 %.078214, 1            ; 2 uses
  %exitcond275.not = icmp eq i64 %i.amy, %spec.select
  br i1 %exitcond275.not, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.preheader, !llvm.loop !1808

ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit: ; preds = %scalar.ph478, %scalar.ph459, %scalar.ph442, %.lr.ph175, %.lr.ph182, %.lr.ph189, %.lr.ph196, %.lr.ph203, %.lr.ph210, %._crit_edge213, %middle.block494, %middle.block475, %middle.block456, %middle.block439, %middle.block422, %middle.block405, %middle.block388, %middle.block371, %middle.block, %.loopexit, %._crit_edge, %._crit_edge165, %._crit_edge172, %._crit_edge179, %._crit_edge186, %._crit_edge193, %._crit_edge200, %._crit_edge207
  %i.amz = add i64 %spec.select, %.080220
  %i.ana = zext i8 %i.ay to i64
  %i.anb = mul nuw nsw i64 %spec.select, %i.ana
  %i.anc = getelementptr inbounds nuw [2 x i8], ptr %.081217, i64 %i.anb
  %i.and = sub i64 %.083216, %spec.select
  %i.ane = load i64, ptr %i.aj, align 8, !tbaa !1735
  %i.anf = add i64 %i.ane, %spec.select
  store i64 %i.anf, ptr %i.aj, align 8, !tbaa !1735
  %i.ang = trunc nuw i64 %spec.select to i32
  %i.anh = load i32, ptr %i.aa, align 8, !tbaa !1732
  %i.ani = sub i32 %i.anh, %i.ang
  store i32 %i.ani, ptr %i.aa, align 8, !tbaa !1732
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit

ma_dr_flac__read_and_decode_next_flac_frame.exit: ; preds = %bb.h, %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit
  %.184 = phi i64 [ %i.and, %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit ], [ %.083216, %bb.h ] ; 2 uses
  %.182 = phi ptr [ %i.anc, %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit ], [ %.081217, %bb.h ]
  %.1 = phi i64 [ %i.amz, %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit ], [ %.080220, %bb.h ] ; 2 uses
  %.not = icmp eq i64 %.184, 0
  br i1 %.not, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread, label %bb.g, !llvm.loop !1809

ma_dr_flac__read_and_decode_next_flac_frame.exit.thread: ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit, %bb.h, %.preheader244, %bb.a, %ma_dr_flac__seek_forward_by_pcm_frames.exit
  %.0 = phi i64 [ 0, %bb.a ], [ %.025.i, %ma_dr_flac__seek_forward_by_pcm_frames.exit ], [ %.080220, %bb.h ], [ %.080220, %.preheader244 ], [ %.1, %ma_dr_flac__read_and_decode_next_flac_frame.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ma_dr_flac_read_pcm_frames_s32(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly %2) local_unnamed_addr #44 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %.lr.ph.i, label %.lr.ph220

.lr.ph.i:                                         ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.c

bb.c:                                             ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit.i, %.lr.ph.i
  %.028.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i111, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i ] ; 5 uses
  %.01627.i = phi i64 [ %1, %.lr.ph.i ], [ %.117.i, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i ] ; 5 uses
  %i.h = load i32, ptr %i.d, align 8, !tbaa !1732 ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.c, %bb.d
  %i.j = load i8, ptr %i.f, align 1, !tbaa !1733
  %i.k = tail call fastcc i32 @ma_dr_flac__read_next_flac_frame_header(ptr noundef %i.e, i8 noundef zeroext %i.j, ptr noundef %i.g)
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %ma_dr_flac__seek_forward_by_pcm_frames.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.l = tail call fastcc i32 @ma_dr_flac__decode_flac_frame(ptr noundef nonnull %0)
  switch i32 %i.l, label %ma_dr_flac__seek_forward_by_pcm_frames.exit [
    i32 0, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.i
    i32 -100, label %.preheader.i
  ]

bb.e:                                             ; preds = %bb.c
  %i.m = zext i32 %i.h to i64                     ; 3 uses
  %i.n = icmp ult i64 %.01627.i, %i.m
  br i1 %i.n, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i, label %bb.f

ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i: ; preds = %bb.e
  %i.o = add i64 %.01627.i, %.028.i
  %i.p = trunc nuw i64 %.01627.i to i32
  %i.q = sub i32 %i.h, %i.p
  store i32 %i.q, ptr %i.d, align 8, !tbaa !1732
  br label %ma_dr_flac__seek_forward_by_pcm_frames.exit

bb.f:                                             ; preds = %bb.e
  %i.r = add i64 %.028.i, %i.m
  %i.s = sub nuw i64 %.01627.i, %i.m
  store i32 0, ptr %i.d, align 8, !tbaa !1732
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit.i

ma_dr_flac__read_and_decode_next_flac_frame.exit.i: ; preds = %bb.d, %bb.f
  %.117.i = phi i64 [ %i.s, %bb.f ], [ %.01627.i, %bb.d ] ; 2 uses
  %.1.i111 = phi i64 [ %i.r, %bb.f ], [ %.028.i, %bb.d ] ; 2 uses
  %.not.i = icmp eq i64 %.117.i, 0
  br i1 %.not.i, label %ma_dr_flac__seek_forward_by_pcm_frames.exit, label %bb.c, !llvm.loop !1734

ma_dr_flac__seek_forward_by_pcm_frames.exit:      ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit.i, %.preheader.i, %bb.d, %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i
  %.025.i = phi i64 [ %.028.i, %.preheader.i ], [ %i.o, %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i ], [ %.028.i, %bb.d ], [ %.1.i111, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1735
  %i.v = add i64 %i.u, %.025.i
  store i64 %i.v, ptr %i.t, align 8, !tbaa !1735
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread

.lr.ph220:                                        ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 6 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !1733  ; 3 uses
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = sub nsw i32 32, %i.y                     ; 18 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.af = icmp ult i8 %i.x, 32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 13 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 13 uses
  %i.ai = sub nsw i32 31, %i.y                    ; 6 uses
  %i.aj = icmp eq i8 %i.x, 32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %i.ap = shufflevector <4 x i32> %i.ao, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert611 = insertelement <2 x i32> poison, i32 %i.z, i64 0
  %i.aq = shufflevector <2 x i32> %broadcast.splatinsert611, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert577 = insertelement <2 x i32> poison, i32 %i.ai, i64 0
  %i.ar = shufflevector <2 x i32> %broadcast.splatinsert577, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph220, %ma_dr_flac__read_and_decode_next_flac_frame.exit
  %.078218 = phi i64 [ 0, %.lr.ph220 ], [ %.1, %ma_dr_flac__read_and_decode_next_flac_frame.exit ] ; 4 uses
  %.079215 = phi ptr [ %2, %.lr.ph220 ], [ %.180, %ma_dr_flac__read_and_decode_next_flac_frame.exit ] ; 49 uses
  %.081214 = phi i64 [ %1, %.lr.ph220 ], [ %.182, %ma_dr_flac__read_and_decode_next_flac_frame.exit ] ; 3 uses
  %i.as = load i32, ptr %i.aa, align 8, !tbaa !1732 ; 3 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.preheader242, label %bb.i

.preheader242:                                    ; preds = %bb.g, %bb.h
  %i.au = load i8, ptr %i.w, align 1, !tbaa !1733
  %i.av = tail call fastcc i32 @ma_dr_flac__read_next_flac_frame_header(ptr noundef %i.am, i8 noundef zeroext %i.au, ptr noundef %i.an)
  %.not.i112 = icmp eq i32 %i.av, 0
  br i1 %.not.i112, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread, label %bb.h

bb.h:                                             ; preds = %.preheader242
  %i.aw = tail call fastcc i32 @ma_dr_flac__decode_flac_frame(ptr noundef nonnull %0)
  switch i32 %i.aw, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread [
    i32 0, label %ma_dr_flac__read_and_decode_next_flac_frame.exit
    i32 -100, label %.preheader242
  ]

bb.i:                                             ; preds = %bb.g
  %i.ax = load i8, ptr %i.ab, align 2, !tbaa !1736 ; 3 uses
  %i.ay = sext i8 %i.ax to i64                    ; 2 uses
  %i.az = getelementptr inbounds i8, ptr @__const.ma_dr_flac__get_channel_count_from_channel_assignment.lookup, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !9   ; 3 uses
  %i.bb = load i16, ptr %i.ac, align 8, !tbaa !1737
  %i.bc = zext i16 %i.bb to i32
  %i.bd = sub i32 %i.bc, %i.as
  %i.be = zext i32 %i.bd to i64                   ; 23 uses
  %i.bf = zext i32 %i.as to i64
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.081214, i64 %i.bf) ; 68 uses
  %i.bg = shl nuw i64 1, %i.ay
  %i.bh = and i64 %i.bg, 1794
  %.not115 = icmp eq i64 %i.bh, 0
  br i1 %.not115, label %.preheader.preheader, label %bb.j

.preheader.preheader:                             ; preds = %bb.i
  %i.bi = zext i8 %i.ba to i64
  %i.bj = tail call i8 @llvm.umax.i8(i8 %i.ba, i8 1) ; 2 uses
  %wide.trip.count = zext i8 %i.bj to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bk = icmp eq i8 %i.ax, 0
  %unroll_iter = and i64 %wide.trip.count, 254
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod647 = trunc i8 %i.bj to i1
  br label %.preheader

bb.j:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr %i.ad, align 8, !tbaa !1738 ; 19 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.be ; 39 uses
  %i.bn = load ptr, ptr %i.ae, align 8, !tbaa !1738 ; 19 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.be ; 39 uses
  %.b.i92 = load i1, ptr @ma_dr_flac__gIsSSE2Supported, align 4 ; 4 uses
  switch i8 %i.ax, label %bb.aa [
    i8 8, label %bb.k
    i8 9, label %bb.o
    i8 10, label %bb.s
  ]

bb.k:                                             ; preds = %bb.j
  br i1 %.b.i92, label %bb.l, label %._crit_edge278

._crit_edge278:                                   ; preds = %bb.k
  %.pre279 = load i8, ptr %i.ag, align 1, !tbaa !1740
  %.pre281 = load i8, ptr %i.ah, align 1, !tbaa !1740
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bp = load i8, ptr %i.w, align 1, !tbaa !1733
  %i.bq = icmp ult i8 %i.bp, 25
  %.pre280 = load i8, ptr %i.ag, align 1, !tbaa !1740 ; 2 uses
  %.pre282 = load i8, ptr %i.ah, align 1, !tbaa !1740 ; 2 uses
  br i1 %i.bq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.br = lshr i64 %spec.select, 2                ; 4 uses
  %i.bs = zext i8 %.pre280 to i32
  %i.bt = add nsw i32 %i.z, %i.bs                 ; 3 uses
  %i.bu = zext i8 %.pre282 to i32
  %i.bv = add nsw i32 %i.z, %i.bu                 ; 3 uses
  %.not234 = icmp eq i64 %i.br, 0
  br i1 %.not234, label %._crit_edge191, label %.lr.ph190

.lr.ph190:                                        ; preds = %bb.m, %.lr.ph190
  %.0.i188 = phi i64 [ %i.ch, %.lr.ph190 ], [ 0, %bb.m ] ; 4 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.0.i188
  %i.bx = load <4 x i32>, ptr %i.bw, align 1, !tbaa !9
  %i.by = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.bx, i32 range(i32 -232, 288) %i.bt) ; 3 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0.i188
  %i.ca = load <4 x i32>, ptr %i.bz, align 1, !tbaa !9
  %i.cb = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.ca, i32 range(i32 -232, 288) %i.bv)
  %i.cc = sub <4 x i32> %i.by, %i.cb              ; 2 uses
  %.idx.i = shl nuw nsw i64 %.0.i188, 5
  %i.cd = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx.i ; 2 uses
  %i.ce = shufflevector <4 x i32> %i.by, <4 x i32> %i.cc, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x i32> %i.ce, ptr %i.cd, align 1, !tbaa !9
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cg = shufflevector <4 x i32> %i.by, <4 x i32> %i.cc, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.cg, ptr %i.cf, align 1, !tbaa !9
  %i.ch = add nuw nsw i64 %.0.i188, 1             ; 2 uses
  %exitcond267.not = icmp eq i64 %i.ch, %i.br
  br i1 %exitcond267.not, label %._crit_edge191, label %.lr.ph190, !llvm.loop !1810

._crit_edge191:                                   ; preds = %.lr.ph190, %bb.m
  %i.ci = and i64 %spec.select, 4294967292        ; 7 uses
  %.not235 = icmp eq i64 %i.ci, %spec.select
  br i1 %.not235, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph194.preheader

.lr.ph194.preheader:                              ; preds = %._crit_edge191
  %i.cj = or disjoint i64 %i.ci, 1
  %i.ck = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.cj) ; 2 uses
  %3 = and i64 %spec.select, 4294967292
  %i.cl = sub nsw i64 %i.ck, %3                   ; 2 uses
  %min.iters.check410 = icmp ult i64 %i.cl, 8
  br i1 %min.iters.check410, label %.lr.ph194.preheader633, label %vector.memcheck394

vector.memcheck394:                               ; preds = %.lr.ph194.preheader
  %i.cm = shl nuw nsw i64 %i.br, 5
  %scevgep395 = getelementptr i8, ptr %.079215, i64 %i.cm ; 2 uses
  %i.cn = or disjoint i64 %i.ci, 1
  %umax396 = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.cn) ; 2 uses
  %i.co = shl nuw nsw i64 %umax396, 3
  %scevgep397 = getelementptr i8, ptr %.079215, i64 %i.co ; 2 uses
  %i.cp = shl nuw nsw i64 %i.br, 4
  %i.cq = shl nuw nsw i64 %i.be, 2
  %i.cr = add nuw nsw i64 %i.cp, %i.cq            ; 2 uses
  %scevgep398 = getelementptr i8, ptr %i.bl, i64 %i.cr
  %i.cs = add nuw nsw i64 %umax396, %i.be
  %i.ct = shl nuw nsw i64 %i.cs, 2                ; 2 uses
  %scevgep399 = getelementptr i8, ptr %i.bl, i64 %i.ct
  %scevgep400 = getelementptr i8, ptr %i.bn, i64 %i.cr
  %scevgep401 = getelementptr i8, ptr %i.bn, i64 %i.ct
  %bound0402 = icmp ult ptr %scevgep395, %scevgep399
  %bound1403 = icmp ult ptr %scevgep398, %scevgep397
  %found.conflict404 = and i1 %bound0402, %bound1403
  %bound0405 = icmp ult ptr %scevgep395, %scevgep401
  %bound1406 = icmp ult ptr %scevgep400, %scevgep397
  %found.conflict407 = and i1 %bound0405, %bound1406
  %conflict.rdx408 = or i1 %found.conflict404, %found.conflict407
  br i1 %conflict.rdx408, label %.lr.ph194.preheader633, label %vector.ph411

vector.ph411:                                     ; preds = %vector.memcheck394
  %i.cu = and i64 %i.ck, 1                        ; 2 uses
  %n.vec412 = sub nsw i64 %i.cl, %i.cu            ; 2 uses
  %i.cv = add nsw i64 %i.ci, %n.vec412
  %broadcast.splatinsert413 = insertelement <2 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat414 = shufflevector <2 x i32> %broadcast.splatinsert413, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert415 = insertelement <2 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat416 = shufflevector <2 x i32> %broadcast.splatinsert415, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph411
  %index418 = phi i64 [ 0, %vector.ph411 ], [ %index.next422, %vector.body417 ] ; 2 uses
  %i.cw = add nuw i64 %i.ci, %index418            ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cw
  %wide.load419 = load <2 x i32>, ptr %i.cx, align 4, !tbaa !8, !alias.scope !1811
  %i.cy = shl <2 x i32> %wide.load419, %broadcast.splat414 ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cw
  %wide.load420 = load <2 x i32>, ptr %i.cz, align 4, !tbaa !8, !alias.scope !1814
  %i.da = shl <2 x i32> %wide.load420, %broadcast.splat416
  %i.db = sub <2 x i32> %i.cy, %i.da
  %i.dc = shl nuw nsw i64 %i.cw, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %.079215, i64 %i.dc
  %interleaved.vec421 = shufflevector <2 x i32> %i.cy, <2 x i32> %i.db, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec421, ptr %i.dd, align 4, !tbaa !8, !alias.scope !1816, !noalias !1818
  %index.next422 = add nuw i64 %index418, 2       ; 2 uses
  %i.de = icmp eq i64 %index.next422, %n.vec412
  br i1 %i.de, label %middle.block423, label %vector.body417, !llvm.loop !1819

middle.block423:                                  ; preds = %vector.body417
  %cmp.n424 = icmp eq i64 %i.cu, 0
  br i1 %cmp.n424, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph194.preheader633

.lr.ph194.preheader633:                           ; preds = %vector.memcheck394, %.lr.ph194.preheader, %middle.block423
  %.1.i192.ph = phi i64 [ %i.ci, %vector.memcheck394 ], [ %i.ci, %.lr.ph194.preheader ], [ %i.cv, %middle.block423 ]
  br label %.lr.ph194

.lr.ph194:                                        ; preds = %.lr.ph194.preheader633, %.lr.ph194
  %.1.i192 = phi i64 [ %i.do, %.lr.ph194 ], [ %.1.i192.ph, %.lr.ph194.preheader633 ] ; 4 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i192
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !8
  %i.dh = shl i32 %i.dg, %i.bt                    ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i192
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !8
  %i.dk = shl i32 %i.dj, %i.bv
  %i.dl = sub i32 %i.dh, %i.dk
  %.idx125 = shl nuw nsw i64 %.1.i192, 3
  %i.dm = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx125 ; 2 uses
  store i32 %i.dh, ptr %i.dm, align 4, !tbaa !8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  store i32 %i.dl, ptr %i.dn, align 4, !tbaa !8
  %i.do = add nuw nsw i64 %.1.i192, 1             ; 2 uses
  %i.dp = icmp samesign ult i64 %i.do, %spec.select
  br i1 %i.dp, label %.lr.ph194, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, !llvm.loop !1820

bb.n:                                             ; preds = %._crit_edge278, %bb.l
  %i.dq = phi i8 [ %.pre281, %._crit_edge278 ], [ %.pre282, %bb.l ]
  %i.dr = phi i8 [ %.pre279, %._crit_edge278 ], [ %.pre280, %bb.l ]
  %i.ds = lshr i64 %spec.select, 2                ; 4 uses
  %i.dt = zext i8 %i.dr to i32
  %i.du = add nsw i32 %i.z, %i.dt                 ; 6 uses
  %i.dv = zext i8 %i.dq to i32
  %i.dw = add nsw i32 %i.z, %i.dv                 ; 6 uses
  %.not232 = icmp eq i64 %i.ds, 0
  br i1 %.not232, label %._crit_edge184, label %.lr.ph183

.lr.ph183:                                        ; preds = %bb.n, %.lr.ph183
  %.0.i93181 = phi i64 [ %i.fl, %.lr.ph183 ], [ 0, %bb.n ] ; 3 uses
  %i.dx = shl nuw nsw i64 %.0.i93181, 2           ; 5 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !8
  %i.ea = shl i32 %i.dz, %i.du                    ; 2 uses
  %i.eb = or disjoint i64 %i.dx, 1                ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !8
  %i.ee = shl i32 %i.ed, %i.du                    ; 2 uses
  %i.ef = or disjoint i64 %i.dx, 2                ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !8
  %i.ei = shl i32 %i.eh, %i.du                    ; 2 uses
  %i.ej = or disjoint i64 %i.dx, 3                ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !8
  %i.em = shl i32 %i.el, %i.du                    ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.dx
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !8
  %i.ep = shl i32 %i.eo, %i.dw
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.eb
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !8
  %i.es = shl i32 %i.er, %i.dw
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ef
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !8
  %i.ev = shl i32 %i.eu, %i.dw
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ej
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !8
  %i.ey = shl i32 %i.ex, %i.dw
  %i.ez = sub i32 %i.ea, %i.ep
  %i.fa = sub i32 %i.ee, %i.es
  %i.fb = sub i32 %i.ei, %i.ev
  %i.fc = sub i32 %i.em, %i.ey
  %.idx124 = shl nuw nsw i64 %.0.i93181, 5
  %i.fd = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx124 ; 8 uses
  store i32 %i.ea, ptr %i.fd, align 4, !tbaa !8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store i32 %i.ez, ptr %i.fe, align 4, !tbaa !8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i32 %i.ee, ptr %i.ff, align 4, !tbaa !8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  store i32 %i.fa, ptr %i.fg, align 4, !tbaa !8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store i32 %i.ei, ptr %i.fh, align 4, !tbaa !8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 20
  store i32 %i.fb, ptr %i.fi, align 4, !tbaa !8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  store i32 %i.em, ptr %i.fj, align 4, !tbaa !8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 28
  store i32 %i.fc, ptr %i.fk, align 4, !tbaa !8
  %i.fl = add nuw nsw i64 %.0.i93181, 1           ; 2 uses
  %exitcond266.not = icmp eq i64 %i.fl, %i.ds
  br i1 %exitcond266.not, label %._crit_edge184, label %.lr.ph183, !llvm.loop !1821

._crit_edge184:                                   ; preds = %.lr.ph183, %bb.n
  %i.fm = and i64 %spec.select, 4294967292        ; 7 uses
  %.not233 = icmp eq i64 %i.fm, %spec.select
  br i1 %.not233, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph187.preheader

.lr.ph187.preheader:                              ; preds = %._crit_edge184
  %i.fn = or disjoint i64 %i.fm, 1
  %i.fo = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.fn) ; 2 uses
  %4 = and i64 %spec.select, 4294967292
  %i.fp = sub nsw i64 %i.fo, %4                   ; 2 uses
  %min.iters.check442 = icmp ult i64 %i.fp, 8
  br i1 %min.iters.check442, label %.lr.ph187.preheader635, label %vector.memcheck426

vector.memcheck426:                               ; preds = %.lr.ph187.preheader
  %i.fq = shl nuw nsw i64 %i.ds, 5
  %scevgep427 = getelementptr i8, ptr %.079215, i64 %i.fq ; 2 uses
  %i.fr = or disjoint i64 %i.fm, 1
  %umax428 = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.fr) ; 2 uses
  %i.fs = shl nuw nsw i64 %umax428, 3
  %scevgep429 = getelementptr i8, ptr %.079215, i64 %i.fs ; 2 uses
  %i.ft = shl nuw nsw i64 %i.ds, 4
  %i.fu = shl nuw nsw i64 %i.be, 2
  %i.fv = add nuw nsw i64 %i.ft, %i.fu            ; 2 uses
  %scevgep430 = getelementptr i8, ptr %i.bl, i64 %i.fv
  %i.fw = add nuw nsw i64 %umax428, %i.be
  %i.fx = shl nuw nsw i64 %i.fw, 2                ; 2 uses
  %scevgep431 = getelementptr i8, ptr %i.bl, i64 %i.fx
  %scevgep432 = getelementptr i8, ptr %i.bn, i64 %i.fv
  %scevgep433 = getelementptr i8, ptr %i.bn, i64 %i.fx
  %bound0434 = icmp ult ptr %scevgep427, %scevgep431
  %bound1435 = icmp ult ptr %scevgep430, %scevgep429
  %found.conflict436 = and i1 %bound0434, %bound1435
  %bound0437 = icmp ult ptr %scevgep427, %scevgep433
  %bound1438 = icmp ult ptr %scevgep432, %scevgep429
  %found.conflict439 = and i1 %bound0437, %bound1438
  %conflict.rdx440 = or i1 %found.conflict436, %found.conflict439
  br i1 %conflict.rdx440, label %.lr.ph187.preheader635, label %vector.ph443

vector.ph443:                                     ; preds = %vector.memcheck426
  %i.fy = and i64 %i.fo, 1                        ; 2 uses
  %n.vec444 = sub nsw i64 %i.fp, %i.fy            ; 2 uses
  %i.fz = add nsw i64 %i.fm, %n.vec444
  %broadcast.splatinsert445 = insertelement <2 x i32> poison, i32 %i.du, i64 0
  %broadcast.splat446 = shufflevector <2 x i32> %broadcast.splatinsert445, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert447 = insertelement <2 x i32> poison, i32 %i.dw, i64 0
  %broadcast.splat448 = shufflevector <2 x i32> %broadcast.splatinsert447, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body449

vector.body449:                                   ; preds = %vector.body449, %vector.ph443
  %index450 = phi i64 [ 0, %vector.ph443 ], [ %index.next454, %vector.body449 ] ; 2 uses
  %i.ga = add nuw i64 %i.fm, %index450            ; 3 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ga
  %wide.load451 = load <2 x i32>, ptr %i.gb, align 4, !tbaa !8, !alias.scope !1822
  %i.gc = shl <2 x i32> %wide.load451, %broadcast.splat446 ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ga
  %wide.load452 = load <2 x i32>, ptr %i.gd, align 4, !tbaa !8, !alias.scope !1825
  %i.ge = shl <2 x i32> %wide.load452, %broadcast.splat448
  %i.gf = sub <2 x i32> %i.gc, %i.ge
  %i.gg = shl nuw nsw i64 %i.ga, 3
  %i.gh = getelementptr inbounds nuw i8, ptr %.079215, i64 %i.gg
  %interleaved.vec453 = shufflevector <2 x i32> %i.gc, <2 x i32> %i.gf, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec453, ptr %i.gh, align 4, !tbaa !8, !alias.scope !1827, !noalias !1829
  %index.next454 = add nuw i64 %index450, 2       ; 2 uses
  %i.gi = icmp eq i64 %index.next454, %n.vec444
  br i1 %i.gi, label %middle.block455, label %vector.body449, !llvm.loop !1830

middle.block455:                                  ; preds = %vector.body449
  %cmp.n456 = icmp eq i64 %i.fy, 0
  br i1 %cmp.n456, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph187.preheader635

.lr.ph187.preheader635:                           ; preds = %vector.memcheck426, %.lr.ph187.preheader, %middle.block455
  %.1.i94185.ph = phi i64 [ %i.fm, %vector.memcheck426 ], [ %i.fm, %.lr.ph187.preheader ], [ %i.fz, %middle.block455 ]
  br label %.lr.ph187

.lr.ph187:                                        ; preds = %.lr.ph187.preheader635, %.lr.ph187
  %.1.i94185 = phi i64 [ %i.gs, %.lr.ph187 ], [ %.1.i94185.ph, %.lr.ph187.preheader635 ] ; 4 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i94185
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !8
  %i.gl = shl i32 %i.gk, %i.du                    ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i94185
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !8
  %i.go = shl i32 %i.gn, %i.dw
  %i.gp = sub i32 %i.gl, %i.go
  %.idx123 = shl nuw nsw i64 %.1.i94185, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx123 ; 2 uses
  store i32 %i.gl, ptr %i.gq, align 4, !tbaa !8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store i32 %i.gp, ptr %i.gr, align 4, !tbaa !8
  %i.gs = add nuw nsw i64 %.1.i94185, 1           ; 2 uses
  %i.gt = icmp samesign ult i64 %i.gs, %spec.select
  br i1 %i.gt, label %.lr.ph187, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, !llvm.loop !1831

bb.o:                                             ; preds = %bb.j
  br i1 %.b.i92, label %bb.p, label %._crit_edge274

._crit_edge274:                                   ; preds = %bb.o
  %.pre = load i8, ptr %i.ag, align 1, !tbaa !1740
  %.pre276 = load i8, ptr %i.ah, align 1, !tbaa !1740
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.gu = load i8, ptr %i.w, align 1, !tbaa !1733
  %i.gv = icmp ult i8 %i.gu, 25
  %.pre275 = load i8, ptr %i.ag, align 1, !tbaa !1740 ; 2 uses
  %.pre277 = load i8, ptr %i.ah, align 1, !tbaa !1740 ; 2 uses
  br i1 %i.gv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gw = lshr i64 %spec.select, 2                ; 4 uses
  %i.gx = zext i8 %.pre275 to i32
  %i.gy = add nsw i32 %i.z, %i.gx                 ; 3 uses
  %i.gz = zext i8 %.pre277 to i32
  %i.ha = add nsw i32 %i.z, %i.gz                 ; 3 uses
  %.not230 = icmp eq i64 %i.gw, 0
  br i1 %.not230, label %._crit_edge177, label %.lr.ph176

.lr.ph176:                                        ; preds = %bb.q, %.lr.ph176
  %.0.i95174 = phi i64 [ %i.hm, %.lr.ph176 ], [ 0, %bb.q ] ; 4 uses
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.0.i95174
  %i.hc = load <4 x i32>, ptr %i.hb, align 1, !tbaa !9
  %i.hd = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.hc, i32 range(i32 -232, 288) %i.gy)
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0.i95174
  %i.hf = load <4 x i32>, ptr %i.he, align 1, !tbaa !9
  %i.hg = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.hf, i32 range(i32 -232, 288) %i.ha) ; 3 uses
  %i.hh = add <4 x i32> %i.hg, %i.hd              ; 2 uses
  %.idx.i97 = shl nuw nsw i64 %.0.i95174, 5
  %i.hi = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx.i97 ; 2 uses
  %i.hj = shufflevector <4 x i32> %i.hh, <4 x i32> %i.hg, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x i32> %i.hj, ptr %i.hi, align 1, !tbaa !9
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hl = shufflevector <4 x i32> %i.hh, <4 x i32> %i.hg, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.hl, ptr %i.hk, align 1, !tbaa !9
  %i.hm = add nuw nsw i64 %.0.i95174, 1           ; 2 uses
  %exitcond265.not = icmp eq i64 %i.hm, %i.gw
  br i1 %exitcond265.not, label %._crit_edge177, label %.lr.ph176, !llvm.loop !1832

._crit_edge177:                                   ; preds = %.lr.ph176, %bb.q
  %i.hn = and i64 %spec.select, 4294967292        ; 7 uses
  %.not231 = icmp eq i64 %i.hn, %spec.select
  br i1 %.not231, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph180.preheader

.lr.ph180.preheader:                              ; preds = %._crit_edge177
  %i.ho = or disjoint i64 %i.hn, 1
  %i.hp = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.ho) ; 2 uses
  %5 = and i64 %spec.select, 4294967292
  %i.hq = sub nsw i64 %i.hp, %5                   ; 2 uses
  %min.iters.check474 = icmp ult i64 %i.hq, 8
  br i1 %min.iters.check474, label %.lr.ph180.preheader637, label %vector.memcheck458

vector.memcheck458:                               ; preds = %.lr.ph180.preheader
  %i.hr = shl nuw nsw i64 %i.gw, 5
  %scevgep459 = getelementptr i8, ptr %.079215, i64 %i.hr ; 2 uses
  %i.hs = or disjoint i64 %i.hn, 1
  %umax460 = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.hs) ; 2 uses
  %i.ht = shl nuw nsw i64 %umax460, 3
  %scevgep461 = getelementptr i8, ptr %.079215, i64 %i.ht ; 2 uses
  %i.hu = shl nuw nsw i64 %i.gw, 4
  %i.hv = shl nuw nsw i64 %i.be, 2
  %i.hw = add nuw nsw i64 %i.hu, %i.hv            ; 2 uses
  %scevgep462 = getelementptr i8, ptr %i.bl, i64 %i.hw
  %i.hx = add nuw nsw i64 %umax460, %i.be
  %i.hy = shl nuw nsw i64 %i.hx, 2                ; 2 uses
  %scevgep463 = getelementptr i8, ptr %i.bl, i64 %i.hy
  %scevgep464 = getelementptr i8, ptr %i.bn, i64 %i.hw
  %scevgep465 = getelementptr i8, ptr %i.bn, i64 %i.hy
  %bound0466 = icmp ult ptr %scevgep459, %scevgep463
  %bound1467 = icmp ult ptr %scevgep462, %scevgep461
  %found.conflict468 = and i1 %bound0466, %bound1467
  %bound0469 = icmp ult ptr %scevgep459, %scevgep465
  %bound1470 = icmp ult ptr %scevgep464, %scevgep461
  %found.conflict471 = and i1 %bound0469, %bound1470
  %conflict.rdx472 = or i1 %found.conflict468, %found.conflict471
  br i1 %conflict.rdx472, label %.lr.ph180.preheader637, label %vector.ph475

vector.ph475:                                     ; preds = %vector.memcheck458
  %i.hz = and i64 %i.hp, 1                        ; 2 uses
  %n.vec476 = sub nsw i64 %i.hq, %i.hz            ; 2 uses
  %i.ia = add nsw i64 %i.hn, %n.vec476
  %broadcast.splatinsert477 = insertelement <2 x i32> poison, i32 %i.gy, i64 0
  %broadcast.splat478 = shufflevector <2 x i32> %broadcast.splatinsert477, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert479 = insertelement <2 x i32> poison, i32 %i.ha, i64 0
  %broadcast.splat480 = shufflevector <2 x i32> %broadcast.splatinsert479, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body481

vector.body481:                                   ; preds = %vector.body481, %vector.ph475
  %index482 = phi i64 [ 0, %vector.ph475 ], [ %index.next486, %vector.body481 ] ; 2 uses
  %i.ib = add nuw i64 %i.hn, %index482            ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ib
  %wide.load483 = load <2 x i32>, ptr %i.ic, align 4, !tbaa !8, !alias.scope !1833
  %i.id = shl <2 x i32> %wide.load483, %broadcast.splat478
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ib
  %wide.load484 = load <2 x i32>, ptr %i.ie, align 4, !tbaa !8, !alias.scope !1836
  %i.if = shl <2 x i32> %wide.load484, %broadcast.splat480 ; 2 uses
  %i.ig = add <2 x i32> %i.if, %i.id
  %i.ih = shl nuw nsw i64 %i.ib, 3
  %i.ii = getelementptr inbounds nuw i8, ptr %.079215, i64 %i.ih
  %interleaved.vec485 = shufflevector <2 x i32> %i.ig, <2 x i32> %i.if, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec485, ptr %i.ii, align 4, !tbaa !8, !alias.scope !1838, !noalias !1840
  %index.next486 = add nuw i64 %index482, 2       ; 2 uses
  %i.ij = icmp eq i64 %index.next486, %n.vec476
  br i1 %i.ij, label %middle.block487, label %vector.body481, !llvm.loop !1841

middle.block487:                                  ; preds = %vector.body481
  %cmp.n488 = icmp eq i64 %i.hz, 0
  br i1 %cmp.n488, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph180.preheader637

.lr.ph180.preheader637:                           ; preds = %vector.memcheck458, %.lr.ph180.preheader, %middle.block487
  %.1.i96178.ph = phi i64 [ %i.hn, %vector.memcheck458 ], [ %i.hn, %.lr.ph180.preheader ], [ %i.ia, %middle.block487 ]
  br label %.lr.ph180

.lr.ph180:                                        ; preds = %.lr.ph180.preheader637, %.lr.ph180
  %.1.i96178 = phi i64 [ %i.it, %.lr.ph180 ], [ %.1.i96178.ph, %.lr.ph180.preheader637 ] ; 4 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i96178
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !8
  %i.im = shl i32 %i.il, %i.gy
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i96178
  %i.io = load i32, ptr %i.in, align 4, !tbaa !8
  %i.ip = shl i32 %i.io, %i.ha                    ; 2 uses
  %i.iq = add i32 %i.ip, %i.im
  %.idx122 = shl nuw nsw i64 %.1.i96178, 3
  %i.ir = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx122 ; 2 uses
  store i32 %i.iq, ptr %i.ir, align 4, !tbaa !8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  store i32 %i.ip, ptr %i.is, align 4, !tbaa !8
  %i.it = add nuw nsw i64 %.1.i96178, 1           ; 2 uses
  %i.iu = icmp samesign ult i64 %i.it, %spec.select
  br i1 %i.iu, label %.lr.ph180, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, !llvm.loop !1842

bb.r:                                             ; preds = %._crit_edge274, %bb.p
  %i.iv = phi i8 [ %.pre276, %._crit_edge274 ], [ %.pre277, %bb.p ]
  %i.iw = phi i8 [ %.pre, %._crit_edge274 ], [ %.pre275, %bb.p ]
  %i.ix = lshr i64 %spec.select, 2                ; 4 uses
  %i.iy = zext i8 %i.iw to i32
  %i.iz = add nsw i32 %i.z, %i.iy                 ; 6 uses
  %i.ja = zext i8 %i.iv to i32
  %i.jb = add nsw i32 %i.z, %i.ja                 ; 6 uses
  %.not228 = icmp eq i64 %i.ix, 0
  br i1 %.not228, label %._crit_edge170, label %.lr.ph169

.lr.ph169:                                        ; preds = %bb.r, %.lr.ph169
  %.0.i98167 = phi i64 [ %i.kq, %.lr.ph169 ], [ 0, %bb.r ] ; 3 uses
  %i.jc = shl nuw nsw i64 %.0.i98167, 2           ; 5 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !8
  %i.jf = shl i32 %i.je, %i.iz
  %i.jg = or disjoint i64 %i.jc, 1                ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !8
  %i.jj = shl i32 %i.ji, %i.iz
  %i.jk = or disjoint i64 %i.jc, 2                ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !8
  %i.jn = shl i32 %i.jm, %i.iz
  %i.jo = or disjoint i64 %i.jc, 3                ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !8
  %i.jr = shl i32 %i.jq, %i.iz
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.jc
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !8
  %i.ju = shl i32 %i.jt, %i.jb                    ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.jg
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !8
  %i.jx = shl i32 %i.jw, %i.jb                    ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.jk
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !8
  %i.ka = shl i32 %i.jz, %i.jb                    ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.jo
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !8
  %i.kd = shl i32 %i.kc, %i.jb                    ; 2 uses
  %i.ke = add i32 %i.ju, %i.jf
  %i.kf = add i32 %i.jx, %i.jj
  %i.kg = add i32 %i.ka, %i.jn
  %i.kh = add i32 %i.kd, %i.jr
  %.idx121 = shl nuw nsw i64 %.0.i98167, 5
  %i.ki = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx121 ; 8 uses
  store i32 %i.ke, ptr %i.ki, align 4, !tbaa !8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  store i32 %i.ju, ptr %i.kj, align 4, !tbaa !8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store i32 %i.kf, ptr %i.kk, align 4, !tbaa !8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 12
  store i32 %i.jx, ptr %i.kl, align 4, !tbaa !8
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store i32 %i.kg, ptr %i.km, align 4, !tbaa !8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ki, i64 20
  store i32 %i.ka, ptr %i.kn, align 4, !tbaa !8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  store i32 %i.kh, ptr %i.ko, align 4, !tbaa !8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ki, i64 28
  store i32 %i.kd, ptr %i.kp, align 4, !tbaa !8
  %i.kq = add nuw nsw i64 %.0.i98167, 1           ; 2 uses
  %exitcond264.not = icmp eq i64 %i.kq, %i.ix
  br i1 %exitcond264.not, label %._crit_edge170, label %.lr.ph169, !llvm.loop !1843

._crit_edge170:                                   ; preds = %.lr.ph169, %bb.r
  %i.kr = and i64 %spec.select, 4294967292        ; 7 uses
  %.not229 = icmp eq i64 %i.kr, %spec.select
  br i1 %.not229, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph173.preheader

.lr.ph173.preheader:                              ; preds = %._crit_edge170
  %i.ks = or disjoint i64 %i.kr, 1
  %i.kt = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.ks) ; 2 uses
  %6 = and i64 %spec.select, 4294967292
  %i.ku = sub nsw i64 %i.kt, %6                   ; 2 uses
  %min.iters.check506 = icmp ult i64 %i.ku, 8
  br i1 %min.iters.check506, label %.lr.ph173.preheader639, label %vector.memcheck490

vector.memcheck490:                               ; preds = %.lr.ph173.preheader
  %i.kv = shl nuw nsw i64 %i.ix, 5
  %scevgep491 = getelementptr i8, ptr %.079215, i64 %i.kv ; 2 uses
  %i.kw = or disjoint i64 %i.kr, 1
  %umax492 = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.kw) ; 2 uses
  %i.kx = shl nuw nsw i64 %umax492, 3
  %scevgep493 = getelementptr i8, ptr %.079215, i64 %i.kx ; 2 uses
  %i.ky = shl nuw nsw i64 %i.ix, 4
  %i.kz = shl nuw nsw i64 %i.be, 2
  %i.la = add nuw nsw i64 %i.ky, %i.kz            ; 2 uses
  %scevgep494 = getelementptr i8, ptr %i.bl, i64 %i.la
  %i.lb = add nuw nsw i64 %umax492, %i.be
  %i.lc = shl nuw nsw i64 %i.lb, 2                ; 2 uses
  %scevgep495 = getelementptr i8, ptr %i.bl, i64 %i.lc
  %scevgep496 = getelementptr i8, ptr %i.bn, i64 %i.la
  %scevgep497 = getelementptr i8, ptr %i.bn, i64 %i.lc
  %bound0498 = icmp ult ptr %scevgep491, %scevgep495
  %bound1499 = icmp ult ptr %scevgep494, %scevgep493
  %found.conflict500 = and i1 %bound0498, %bound1499
  %bound0501 = icmp ult ptr %scevgep491, %scevgep497
  %bound1502 = icmp ult ptr %scevgep496, %scevgep493
  %found.conflict503 = and i1 %bound0501, %bound1502
  %conflict.rdx504 = or i1 %found.conflict500, %found.conflict503
  br i1 %conflict.rdx504, label %.lr.ph173.preheader639, label %vector.ph507

vector.ph507:                                     ; preds = %vector.memcheck490
  %i.ld = and i64 %i.kt, 1                        ; 2 uses
  %n.vec508 = sub nsw i64 %i.ku, %i.ld            ; 2 uses
  %i.le = add nsw i64 %i.kr, %n.vec508
  %broadcast.splatinsert509 = insertelement <2 x i32> poison, i32 %i.iz, i64 0
  %broadcast.splat510 = shufflevector <2 x i32> %broadcast.splatinsert509, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert511 = insertelement <2 x i32> poison, i32 %i.jb, i64 0
  %broadcast.splat512 = shufflevector <2 x i32> %broadcast.splatinsert511, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body513

vector.body513:                                   ; preds = %vector.body513, %vector.ph507
  %index514 = phi i64 [ 0, %vector.ph507 ], [ %index.next518, %vector.body513 ] ; 2 uses
  %i.lf = add nuw i64 %i.kr, %index514            ; 3 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.lf
  %wide.load515 = load <2 x i32>, ptr %i.lg, align 4, !tbaa !8, !alias.scope !1844
  %i.lh = shl <2 x i32> %wide.load515, %broadcast.splat510
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.lf
  %wide.load516 = load <2 x i32>, ptr %i.li, align 4, !tbaa !8, !alias.scope !1847
  %i.lj = shl <2 x i32> %wide.load516, %broadcast.splat512 ; 2 uses
  %i.lk = add <2 x i32> %i.lj, %i.lh
  %i.ll = shl nuw nsw i64 %i.lf, 3
  %i.lm = getelementptr inbounds nuw i8, ptr %.079215, i64 %i.ll
  %interleaved.vec517 = shufflevector <2 x i32> %i.lk, <2 x i32> %i.lj, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec517, ptr %i.lm, align 4, !tbaa !8, !alias.scope !1849, !noalias !1851
  %index.next518 = add nuw i64 %index514, 2       ; 2 uses
  %i.ln = icmp eq i64 %index.next518, %n.vec508
  br i1 %i.ln, label %middle.block519, label %vector.body513, !llvm.loop !1852

middle.block519:                                  ; preds = %vector.body513
  %cmp.n520 = icmp eq i64 %i.ld, 0
  br i1 %cmp.n520, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph173.preheader639

.lr.ph173.preheader639:                           ; preds = %vector.memcheck490, %.lr.ph173.preheader, %middle.block519
  %.1.i99171.ph = phi i64 [ %i.kr, %vector.memcheck490 ], [ %i.kr, %.lr.ph173.preheader ], [ %i.le, %middle.block519 ]
  br label %.lr.ph173

.lr.ph173:                                        ; preds = %.lr.ph173.preheader639, %.lr.ph173
  %.1.i99171 = phi i64 [ %i.lx, %.lr.ph173 ], [ %.1.i99171.ph, %.lr.ph173.preheader639 ] ; 4 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i99171
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !8
  %i.lq = shl i32 %i.lp, %i.iz
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i99171
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !8
  %i.lt = shl i32 %i.ls, %i.jb                    ; 2 uses
  %i.lu = add i32 %i.lt, %i.lq
  %.idx120 = shl nuw nsw i64 %.1.i99171, 3
  %i.lv = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx120 ; 2 uses
  store i32 %i.lu, ptr %i.lv, align 4, !tbaa !8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 4
  store i32 %i.lt, ptr %i.lw, align 4, !tbaa !8
  %i.lx = add nuw nsw i64 %.1.i99171, 1           ; 2 uses
  %i.ly = icmp samesign ult i64 %i.lx, %spec.select
  br i1 %i.ly, label %.lr.ph173, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, !llvm.loop !1853

bb.s:                                             ; preds = %bb.j
  br i1 %.b.i92, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.lz = load i8, ptr %i.w, align 1, !tbaa !1733
  %i.ma = icmp ult i8 %i.lz, 25
  br i1 %i.ma, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.mb = lshr i64 %spec.select, 2                ; 7 uses
  %.not226 = icmp eq i64 %i.mb, 0                 ; 2 uses
  br i1 %i.aj, label %.preheader138, label %bb.v

.preheader138:                                    ; preds = %bb.u
  br i1 %.not226, label %._crit_edge163, label %.lr.ph162

.lr.ph162:                                        ; preds = %.preheader138, %.lr.ph162
  %.0.i101161 = phi i64 [ %i.mx, %.lr.ph162 ], [ 0, %.preheader138 ] ; 4 uses
  %i.mc = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.0.i101161
  %i.md = load <4 x i32>, ptr %i.mc, align 1, !tbaa !9
  %i.me = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.mf = zext i8 %i.me to i32
  %i.mg = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.md, i32 range(i32 -232, 288) %i.mf)
  %i.mh = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0.i101161
  %i.mi = load <4 x i32>, ptr %i.mh, align 1, !tbaa !9
  %i.mj = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.mk = zext i8 %i.mj to i32
  %i.ml = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.mi, i32 range(i32 -232, 288) %i.mk) ; 3 uses
  %i.mm = shl <4 x i32> %i.mg, splat (i32 1)
  %i.mn = and <4 x i32> %i.ml, splat (i32 1)
  %i.mo = or disjoint <4 x i32> %i.mn, %i.mm      ; 2 uses
  %i.mp = add <4 x i32> %i.mo, %i.ml
  %i.mq = ashr <4 x i32> %i.mp, splat (i32 1)     ; 2 uses
  %i.mr = sub <4 x i32> %i.mo, %i.ml
  %i.ms = ashr <4 x i32> %i.mr, splat (i32 1)     ; 2 uses
  %.idx98.i = shl nuw nsw i64 %.0.i101161, 5
  %i.mt = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx98.i ; 2 uses
  %i.mu = shufflevector <4 x i32> %i.mq, <4 x i32> %i.ms, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x i32> %i.mu, ptr %i.mt, align 1, !tbaa !9
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.mw = shufflevector <4 x i32> %i.mq, <4 x i32> %i.ms, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.mw, ptr %i.mv, align 1, !tbaa !9
  %i.mx = add nuw nsw i64 %.0.i101161, 1          ; 2 uses
  %exitcond263.not = icmp eq i64 %i.mx, %i.mb
  br i1 %exitcond263.not, label %._crit_edge163, label %.lr.ph162, !llvm.loop !1854

._crit_edge163:                                   ; preds = %.lr.ph162, %.preheader138
  %i.my = and i64 %spec.select, 4294967292        ; 7 uses
  %.not227 = icmp eq i64 %i.my, %spec.select
  br i1 %.not227, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph166

.lr.ph166:                                        ; preds = %._crit_edge163
  %i.mz = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.na = zext nneg i8 %i.mz to i32               ; 2 uses
  %i.nb = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.nc = zext nneg i8 %i.nb to i32               ; 2 uses
  %i.nd = or disjoint i64 %i.my, 1
  %i.ne = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.nd) ; 2 uses
  %7 = and i64 %spec.select, 4294967292
  %i.nf = sub nsw i64 %i.ne, %7                   ; 2 uses
  %min.iters.check538 = icmp ult i64 %i.nf, 6
  br i1 %min.iters.check538, label %scalar.ph537.preheader, label %vector.memcheck522

vector.memcheck522:                               ; preds = %.lr.ph166
  %i.ng = shl nuw nsw i64 %i.mb, 5
  %scevgep523 = getelementptr i8, ptr %.079215, i64 %i.ng ; 2 uses
  %i.nh = or disjoint i64 %i.my, 1
  %umax524 = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.nh) ; 2 uses
  %i.ni = shl nuw nsw i64 %umax524, 3
  %scevgep525 = getelementptr i8, ptr %.079215, i64 %i.ni ; 2 uses
  %i.nj = shl nuw nsw i64 %i.mb, 4
  %i.nk = shl nuw nsw i64 %i.be, 2
  %i.nl = add nuw nsw i64 %i.nj, %i.nk            ; 2 uses
  %scevgep526 = getelementptr i8, ptr %i.bl, i64 %i.nl
  %i.nm = add nuw nsw i64 %umax524, %i.be
  %i.nn = shl nuw nsw i64 %i.nm, 2                ; 2 uses
  %scevgep527 = getelementptr i8, ptr %i.bl, i64 %i.nn
  %scevgep528 = getelementptr i8, ptr %i.bn, i64 %i.nl
  %scevgep529 = getelementptr i8, ptr %i.bn, i64 %i.nn
  %bound0530 = icmp ult ptr %scevgep523, %scevgep527
  %bound1531 = icmp ult ptr %scevgep526, %scevgep525
  %found.conflict532 = and i1 %bound0530, %bound1531
  %bound0533 = icmp ult ptr %scevgep523, %scevgep529
  %bound1534 = icmp ult ptr %scevgep528, %scevgep525
  %found.conflict535 = and i1 %bound0533, %bound1534
  %conflict.rdx536 = or i1 %found.conflict532, %found.conflict535
  br i1 %conflict.rdx536, label %scalar.ph537.preheader, label %vector.ph539

vector.ph539:                                     ; preds = %vector.memcheck522
  %i.no = and i64 %i.ne, 1                        ; 2 uses
  %n.vec540 = sub nsw i64 %i.nf, %i.no            ; 2 uses
  %i.np = add nsw i64 %i.my, %n.vec540
  %broadcast.splatinsert541 = insertelement <2 x i32> poison, i32 %i.na, i64 0
  %broadcast.splat542 = shufflevector <2 x i32> %broadcast.splatinsert541, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert543 = insertelement <2 x i32> poison, i32 %i.nc, i64 0
  %broadcast.splat544 = shufflevector <2 x i32> %broadcast.splatinsert543, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body545

vector.body545:                                   ; preds = %vector.body545, %vector.ph539
  %index546 = phi i64 [ 0, %vector.ph539 ], [ %index.next550, %vector.body545 ] ; 2 uses
  %i.nq = add nuw i64 %i.my, %index546            ; 3 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.nq
  %wide.load547 = load <2 x i32>, ptr %i.nr, align 4, !tbaa !8, !alias.scope !1855
  %i.ns = shl <2 x i32> %wide.load547, %broadcast.splat542
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.nq
  %wide.load548 = load <2 x i32>, ptr %i.nt, align 4, !tbaa !8, !alias.scope !1858
  %i.nu = shl <2 x i32> %wide.load548, %broadcast.splat544 ; 3 uses
  %i.nv = shl <2 x i32> %i.ns, splat (i32 1)
  %i.nw = and <2 x i32> %i.nu, splat (i32 1)
  %i.nx = or disjoint <2 x i32> %i.nw, %i.nv      ; 2 uses
  %i.ny = add <2 x i32> %i.nx, %i.nu
  %i.nz = shl nuw nsw i64 %i.nq, 3
  %i.oa = getelementptr inbounds nuw i8, ptr %.079215, i64 %i.nz
  %i.ob = sub <2 x i32> %i.nx, %i.nu
  %i.oc = shufflevector <2 x i32> %i.ny, <2 x i32> %i.ob, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec549 = ashr <4 x i32> %i.oc, splat (i32 1)
  store <4 x i32> %interleaved.vec549, ptr %i.oa, align 4, !tbaa !8, !alias.scope !1860, !noalias !1862
  %index.next550 = add nuw i64 %index546, 2       ; 2 uses
  %i.od = icmp eq i64 %index.next550, %n.vec540
  br i1 %i.od, label %middle.block551, label %vector.body545, !llvm.loop !1863

middle.block551:                                  ; preds = %vector.body545
  %cmp.n552 = icmp eq i64 %i.no, 0
  br i1 %cmp.n552, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %scalar.ph537.preheader

scalar.ph537.preheader:                           ; preds = %vector.memcheck522, %.lr.ph166, %middle.block551
  %.1.i102164.ph = phi i64 [ %i.my, %vector.memcheck522 ], [ %i.my, %.lr.ph166 ], [ %i.np, %middle.block551 ]
  br label %scalar.ph537

scalar.ph537:                                     ; preds = %scalar.ph537.preheader, %scalar.ph537
  %.1.i102164 = phi i64 [ %i.ot, %scalar.ph537 ], [ %.1.i102164.ph, %scalar.ph537.preheader ] ; 4 uses
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i102164
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !8
  %i.og = shl i32 %i.of, %i.na
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i102164
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !8
  %i.oj = shl i32 %i.oi, %i.nc                    ; 3 uses
  %i.ok = shl i32 %i.og, 1
  %i.ol = and i32 %i.oj, 1
  %i.om = or disjoint i32 %i.ol, %i.ok            ; 2 uses
  %i.on = add i32 %i.om, %i.oj
  %i.oo = ashr i32 %i.on, 1
  %.idx119 = shl nuw nsw i64 %.1.i102164, 3
  %i.op = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx119 ; 2 uses
  store i32 %i.oo, ptr %i.op, align 4, !tbaa !8
  %i.oq = sub i32 %i.om, %i.oj
  %i.or = ashr i32 %i.oq, 1
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 4
  store i32 %i.or, ptr %i.os, align 4, !tbaa !8
  %i.ot = add nuw nsw i64 %.1.i102164, 1          ; 2 uses
  %i.ou = icmp samesign ult i64 %i.ot, %spec.select
  br i1 %i.ou, label %scalar.ph537, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, !llvm.loop !1864

bb.v:                                             ; preds = %bb.u
  br i1 %.not226, label %._crit_edge, label %.lr.ph157

.lr.ph157:                                        ; preds = %bb.v, %.lr.ph157
  %.2.i156 = phi i64 [ %i.pq, %.lr.ph157 ], [ 0, %bb.v ] ; 4 uses
  %i.ov = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.2.i156
  %i.ow = load <4 x i32>, ptr %i.ov, align 1, !tbaa !9
  %i.ox = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.oy = zext i8 %i.ox to i32
  %i.oz = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.ow, i32 range(i32 -232, 288) %i.oy)
  %i.pa = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.2.i156
  %i.pb = load <4 x i32>, ptr %i.pa, align 1, !tbaa !9
  %i.pc = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.pd = zext i8 %i.pc to i32
  %i.pe = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.pb, i32 range(i32 -232, 288) %i.pd) ; 3 uses
  %i.pf = shl <4 x i32> %i.oz, splat (i32 1)
  %i.pg = and <4 x i32> %i.pe, splat (i32 1)
  %i.ph = or disjoint <4 x i32> %i.pg, %i.pf      ; 2 uses
  %i.pi = add <4 x i32> %i.ph, %i.pe
  %i.pj = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.pi, i32 range(i32 -232, 288) %i.ai) ; 2 uses
  %i.pk = sub <4 x i32> %i.ph, %i.pe
  %i.pl = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.pk, i32 range(i32 -232, 288) %i.ai) ; 2 uses
  %.idx.i100 = shl nuw nsw i64 %.2.i156, 5
  %i.pm = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx.i100 ; 2 uses
  %i.pn = shufflevector <4 x i32> %i.pj, <4 x i32> %i.pl, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x i32> %i.pn, ptr %i.pm, align 1, !tbaa !9
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %i.pp = shufflevector <4 x i32> %i.pj, <4 x i32> %i.pl, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.pp, ptr %i.po, align 1, !tbaa !9
  %i.pq = add nuw nsw i64 %.2.i156, 1             ; 2 uses
  %exitcond262.not = icmp eq i64 %i.pq, %i.mb
  br i1 %exitcond262.not, label %._crit_edge, label %.lr.ph157, !llvm.loop !1865

._crit_edge:                                      ; preds = %.lr.ph157, %bb.v
  %i.pr = and i64 %spec.select, 4294967292        ; 7 uses
  %.not225 = icmp eq i64 %i.pr, %spec.select
  br i1 %.not225, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph160

.lr.ph160:                                        ; preds = %._crit_edge
  %i.ps = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.pt = zext nneg i8 %i.ps to i32               ; 2 uses
  %i.pu = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.pv = zext nneg i8 %i.pu to i32               ; 2 uses
  %i.pw = or disjoint i64 %i.pr, 1
  %i.px = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.pw) ; 2 uses
  %8 = and i64 %spec.select, 4294967292
  %i.py = sub nsw i64 %i.px, %8                   ; 2 uses
  %min.iters.check570 = icmp ult i64 %i.py, 6
  br i1 %min.iters.check570, label %scalar.ph569.preheader, label %vector.memcheck554

vector.memcheck554:                               ; preds = %.lr.ph160
  %i.pz = shl nuw nsw i64 %i.mb, 5
  %scevgep555 = getelementptr i8, ptr %.079215, i64 %i.pz ; 2 uses
  %i.qa = or disjoint i64 %i.pr, 1
  %umax556 = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.qa) ; 2 uses
  %i.qb = shl nuw nsw i64 %umax556, 3
  %scevgep557 = getelementptr i8, ptr %.079215, i64 %i.qb ; 2 uses
  %i.qc = shl nuw nsw i64 %i.mb, 4
  %i.qd = shl nuw nsw i64 %i.be, 2
  %i.qe = add nuw nsw i64 %i.qc, %i.qd            ; 2 uses
  %scevgep558 = getelementptr i8, ptr %i.bl, i64 %i.qe
  %i.qf = add nuw nsw i64 %umax556, %i.be
  %i.qg = shl nuw nsw i64 %i.qf, 2                ; 2 uses
  %scevgep559 = getelementptr i8, ptr %i.bl, i64 %i.qg
  %scevgep560 = getelementptr i8, ptr %i.bn, i64 %i.qe
  %scevgep561 = getelementptr i8, ptr %i.bn, i64 %i.qg
  %bound0562 = icmp ult ptr %scevgep555, %scevgep559
  %bound1563 = icmp ult ptr %scevgep558, %scevgep557
  %found.conflict564 = and i1 %bound0562, %bound1563
  %bound0565 = icmp ult ptr %scevgep555, %scevgep561
  %bound1566 = icmp ult ptr %scevgep560, %scevgep557
  %found.conflict567 = and i1 %bound0565, %bound1566
  %conflict.rdx568 = or i1 %found.conflict564, %found.conflict567
  br i1 %conflict.rdx568, label %scalar.ph569.preheader, label %vector.ph571

vector.ph571:                                     ; preds = %vector.memcheck554
  %i.qh = and i64 %i.px, 1                        ; 2 uses
  %n.vec572 = sub nsw i64 %i.py, %i.qh            ; 2 uses
  %i.qi = add nsw i64 %i.pr, %n.vec572
  %broadcast.splatinsert573 = insertelement <2 x i32> poison, i32 %i.pt, i64 0
  %broadcast.splat574 = shufflevector <2 x i32> %broadcast.splatinsert573, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert575 = insertelement <2 x i32> poison, i32 %i.pv, i64 0
  %broadcast.splat576 = shufflevector <2 x i32> %broadcast.splatinsert575, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body579

vector.body579:                                   ; preds = %vector.body579, %vector.ph571
  %index580 = phi i64 [ 0, %vector.ph571 ], [ %index.next584, %vector.body579 ] ; 2 uses
  %i.qj = add nuw i64 %i.pr, %index580            ; 3 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.qj
  %wide.load581 = load <2 x i32>, ptr %i.qk, align 4, !tbaa !8, !alias.scope !1866
  %i.ql = shl <2 x i32> %wide.load581, %broadcast.splat574
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.qj
  %wide.load582 = load <2 x i32>, ptr %i.qm, align 4, !tbaa !8, !alias.scope !1869
  %i.qn = shl <2 x i32> %wide.load582, %broadcast.splat576 ; 3 uses
  %i.qo = shl <2 x i32> %i.ql, splat (i32 1)
  %i.qp = and <2 x i32> %i.qn, splat (i32 1)
  %i.qq = or disjoint <2 x i32> %i.qp, %i.qo      ; 2 uses
  %i.qr = add <2 x i32> %i.qq, %i.qn
  %i.qs = shl nuw nsw i64 %i.qj, 3
  %i.qt = getelementptr inbounds nuw i8, ptr %.079215, i64 %i.qs
  %i.qu = sub <2 x i32> %i.qq, %i.qn
  %i.qv = shufflevector <2 x i32> %i.qr, <2 x i32> %i.qu, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec583 = shl <4 x i32> %i.qv, %i.ar
  store <4 x i32> %interleaved.vec583, ptr %i.qt, align 4, !tbaa !8, !alias.scope !1871, !noalias !1873
  %index.next584 = add nuw i64 %index580, 2       ; 2 uses
  %i.qw = icmp eq i64 %index.next584, %n.vec572
  br i1 %i.qw, label %middle.block585, label %vector.body579, !llvm.loop !1874

middle.block585:                                  ; preds = %vector.body579
  %cmp.n586 = icmp eq i64 %i.qh, 0
  br i1 %cmp.n586, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %scalar.ph569.preheader

scalar.ph569.preheader:                           ; preds = %vector.memcheck554, %.lr.ph160, %middle.block585
  %.3.i158.ph = phi i64 [ %i.pr, %vector.memcheck554 ], [ %i.pr, %.lr.ph160 ], [ %i.qi, %middle.block585 ]
  br label %scalar.ph569

scalar.ph569:                                     ; preds = %scalar.ph569.preheader, %scalar.ph569
  %.3.i158 = phi i64 [ %i.rm, %scalar.ph569 ], [ %.3.i158.ph, %scalar.ph569.preheader ] ; 4 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.3.i158
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !8
  %i.qz = shl i32 %i.qy, %i.pt
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.3.i158
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !8
  %i.rc = shl i32 %i.rb, %i.pv                    ; 3 uses
  %i.rd = shl i32 %i.qz, 1
  %i.re = and i32 %i.rc, 1
  %i.rf = or disjoint i32 %i.re, %i.rd            ; 2 uses
  %i.rg = add i32 %i.rf, %i.rc
  %i.rh = shl i32 %i.rg, %i.ai
  %.idx118 = shl nuw nsw i64 %.3.i158, 3
  %i.ri = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx118 ; 2 uses
  store i32 %i.rh, ptr %i.ri, align 4, !tbaa !8
  %i.rj = sub i32 %i.rf, %i.rc
  %i.rk = shl i32 %i.rj, %i.ai
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ri, i64 4
  store i32 %i.rk, ptr %i.rl, align 4, !tbaa !8
  %i.rm = add nuw nsw i64 %.3.i158, 1             ; 2 uses
  %i.rn = icmp samesign ult i64 %i.rm, %spec.select
  br i1 %i.rn, label %scalar.ph569, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, !llvm.loop !1875

bb.w:                                             ; preds = %bb.t, %bb.s
  %i.ro = lshr i64 %spec.select, 2                ; 5 uses
  %.not222 = icmp eq i64 %i.ro, 0                 ; 2 uses
  br i1 %i.af, label %bb.x, label %.preheader141

.preheader141:                                    ; preds = %bb.w
  br i1 %.not222, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader141
  %i.rp = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.rq = zext i8 %i.rp to i32
  %i.rr = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.rs = zext i8 %i.rr to i32
  %i.rt = insertelement <2 x i32> poison, i32 %i.rs, i64 0
  %i.ru = shufflevector <2 x i32> %i.rt, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.rv = insertelement <2 x i32> poison, i32 %i.rq, i64 0
  %i.rw = shufflevector <2 x i32> %i.rv, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  br i1 %.not222, label %.loopexit, label %.lr.ph153

.lr.ph153:                                        ; preds = %bb.x
  %i.rx = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.ry = zext i8 %i.rx to i32
  %i.rz = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.sa = zext i8 %i.rz to i32
  %i.sb = insertelement <2 x i32> poison, i32 %i.sa, i64 0
  %i.sc = shufflevector <2 x i32> %i.sb, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sd = insertelement <2 x i32> poison, i32 %i.ry, i64 0
  %i.se = shufflevector <2 x i32> %i.sd, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph153, %bb.y
  %.0.i105152 = phi i64 [ 0, %.lr.ph153 ], [ %i.tn, %bb.y ] ; 3 uses
  %i.sf = shl nuw nsw i64 %.0.i105152, 2          ; 3 uses
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.sf
  %i.sh = or disjoint i64 %i.sf, 2                ; 2 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.sh
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.sf
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.sh
  %.idx117 = shl nuw nsw i64 %.0.i105152, 5
  %i.sl = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx117 ; 2 uses
  %i.sm = load <2 x i32>, ptr %i.sg, align 4, !tbaa !8
  %i.sn = shl <2 x i32> %i.sm, %i.se
  %i.so = load <2 x i32>, ptr %i.sj, align 4, !tbaa !8
  %i.sp = shl <2 x i32> %i.so, %i.sc              ; 2 uses
  %i.sq = shl <2 x i32> %i.sn, splat (i32 1)
  %i.sr = and <2 x i32> %i.sp, splat (i32 1)
  %i.ss = or disjoint <2 x i32> %i.sr, %i.sq
  %i.st = shufflevector <2 x i32> %i.ss, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.su = shufflevector <2 x i32> %i.sp, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.sv = add <4 x i32> %i.st, %i.su
  %i.sw = sub <4 x i32> %i.st, %i.su
  %i.sx = shufflevector <4 x i32> %i.sv, <4 x i32> %i.sw, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.sy = shl <4 x i32> %i.sx, %i.ap
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  %i.ta = load <2 x i32>, ptr %i.si, align 4, !tbaa !8
  %i.tb = shl <2 x i32> %i.ta, %i.se
  %i.tc = load <2 x i32>, ptr %i.sk, align 4, !tbaa !8
  %i.td = shl <2 x i32> %i.tc, %i.sc              ; 2 uses
  %i.te = shl <2 x i32> %i.tb, splat (i32 1)
  %i.tf = and <2 x i32> %i.td, splat (i32 1)
  %i.tg = or disjoint <2 x i32> %i.tf, %i.te
  %i.th = shufflevector <2 x i32> %i.tg, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.ti = shufflevector <2 x i32> %i.td, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.tj = add <4 x i32> %i.th, %i.ti
  %i.tk = sub <4 x i32> %i.th, %i.ti
  %i.tl = shufflevector <4 x i32> %i.tj, <4 x i32> %i.tk, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.tm = shl <4 x i32> %i.tl, %i.ap
  store <4 x i32> %i.sy, ptr %i.sl, align 4, !tbaa !8
  store <4 x i32> %i.tm, ptr %i.sz, align 4, !tbaa !8
  %i.tn = add nuw nsw i64 %.0.i105152, 1          ; 2 uses
  %exitcond261.not = icmp eq i64 %i.tn, %i.ro
  br i1 %exitcond261.not, label %.loopexit, label %bb.y, !llvm.loop !1876

bb.z:                                             ; preds = %.lr.ph, %bb.z
  %.1.i103151 = phi i64 [ 0, %.lr.ph ], [ %i.uw, %bb.z ] ; 3 uses
  %i.to = shl nuw nsw i64 %.1.i103151, 2          ; 3 uses
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.to
  %i.tq = or disjoint i64 %i.to, 2                ; 2 uses
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.tq
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.to
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.tq
  %.idx = shl nuw nsw i64 %.1.i103151, 5
  %i.tu = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx ; 2 uses
  %i.tv = load <2 x i32>, ptr %i.tp, align 4, !tbaa !8
  %i.tw = shl <2 x i32> %i.tv, %i.rw
  %i.tx = load <2 x i32>, ptr %i.ts, align 4, !tbaa !8
  %i.ty = shl <2 x i32> %i.tx, %i.ru              ; 2 uses
  %i.tz = shl <2 x i32> %i.tw, splat (i32 1)
  %i.ua = and <2 x i32> %i.ty, splat (i32 1)
  %i.ub = or disjoint <2 x i32> %i.ua, %i.tz
  %i.uc = shufflevector <2 x i32> %i.ub, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.ud = shufflevector <2 x i32> %i.ty, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.ue = add <4 x i32> %i.uc, %i.ud
  %i.uf = sub <4 x i32> %i.uc, %i.ud
  %i.ug = shufflevector <4 x i32> %i.ue, <4 x i32> %i.uf, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.uh = ashr <4 x i32> %i.ug, splat (i32 1)
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  %i.uj = load <2 x i32>, ptr %i.tr, align 4, !tbaa !8
  %i.uk = shl <2 x i32> %i.uj, %i.rw
  %i.ul = load <2 x i32>, ptr %i.tt, align 4, !tbaa !8
  %i.um = shl <2 x i32> %i.ul, %i.ru              ; 2 uses
  %i.un = shl <2 x i32> %i.uk, splat (i32 1)
  %i.uo = and <2 x i32> %i.um, splat (i32 1)
  %i.up = or disjoint <2 x i32> %i.uo, %i.un
  %i.uq = shufflevector <2 x i32> %i.up, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.ur = shufflevector <2 x i32> %i.um, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.us = add <4 x i32> %i.uq, %i.ur
  %i.ut = sub <4 x i32> %i.uq, %i.ur
  %i.uu = shufflevector <4 x i32> %i.us, <4 x i32> %i.ut, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.uv = ashr <4 x i32> %i.uu, splat (i32 1)
  store <4 x i32> %i.uh, ptr %i.tu, align 4, !tbaa !8
  store <4 x i32> %i.uv, ptr %i.ui, align 4, !tbaa !8
  %i.uw = add nuw nsw i64 %.1.i103151, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.uw, %i.ro
  br i1 %exitcond.not, label %.loopexit, label %bb.z, !llvm.loop !1877

.loopexit:                                        ; preds = %bb.z, %bb.y, %.preheader141, %bb.x
  %i.ux = and i64 %spec.select, 4294967292        ; 7 uses
  %.not223 = icmp eq i64 %i.ux, %spec.select
  br i1 %.not223, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph155

.lr.ph155:                                        ; preds = %.loopexit
  %i.uy = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.uz = zext nneg i8 %i.uy to i32               ; 2 uses
  %i.va = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.vb = zext nneg i8 %i.va to i32               ; 2 uses
  %i.vc = or disjoint i64 %i.ux, 1
  %i.vd = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.vc) ; 2 uses
  %9 = and i64 %spec.select, 4294967292
  %i.ve = sub nsw i64 %i.vd, %9                   ; 2 uses
  %min.iters.check604 = icmp ult i64 %i.ve, 6
  br i1 %min.iters.check604, label %scalar.ph603.preheader, label %vector.memcheck588

vector.memcheck588:                               ; preds = %.lr.ph155
  %i.vf = shl nuw nsw i64 %i.ro, 5
  %scevgep589 = getelementptr i8, ptr %.079215, i64 %i.vf ; 2 uses
  %i.vg = or disjoint i64 %i.ux, 1
  %umax590 = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.vg) ; 2 uses
  %i.vh = shl nuw nsw i64 %umax590, 3
  %scevgep591 = getelementptr i8, ptr %.079215, i64 %i.vh ; 2 uses
  %i.vi = shl nuw nsw i64 %i.ro, 4
  %i.vj = shl nuw nsw i64 %i.be, 2
  %i.vk = add nuw nsw i64 %i.vi, %i.vj            ; 2 uses
  %scevgep592 = getelementptr i8, ptr %i.bl, i64 %i.vk
  %i.vl = add nuw nsw i64 %umax590, %i.be
  %i.vm = shl nuw nsw i64 %i.vl, 2                ; 2 uses
  %scevgep593 = getelementptr i8, ptr %i.bl, i64 %i.vm
  %scevgep594 = getelementptr i8, ptr %i.bn, i64 %i.vk
  %scevgep595 = getelementptr i8, ptr %i.bn, i64 %i.vm
  %bound0596 = icmp ult ptr %scevgep589, %scevgep593
  %bound1597 = icmp ult ptr %scevgep592, %scevgep591
  %found.conflict598 = and i1 %bound0596, %bound1597
  %bound0599 = icmp ult ptr %scevgep589, %scevgep595
  %bound1600 = icmp ult ptr %scevgep594, %scevgep591
  %found.conflict601 = and i1 %bound0599, %bound1600
  %conflict.rdx602 = or i1 %found.conflict598, %found.conflict601
  br i1 %conflict.rdx602, label %scalar.ph603.preheader, label %vector.ph605

vector.ph605:                                     ; preds = %vector.memcheck588
  %i.vn = and i64 %i.vd, 1                        ; 2 uses
  %n.vec606 = sub nsw i64 %i.ve, %i.vn            ; 2 uses
  %i.vo = add nsw i64 %i.ux, %n.vec606
  %broadcast.splatinsert607 = insertelement <2 x i32> poison, i32 %i.uz, i64 0
  %broadcast.splat608 = shufflevector <2 x i32> %broadcast.splatinsert607, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert609 = insertelement <2 x i32> poison, i32 %i.vb, i64 0
  %broadcast.splat610 = shufflevector <2 x i32> %broadcast.splatinsert609, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body613

vector.body613:                                   ; preds = %vector.body613, %vector.ph605
  %index614 = phi i64 [ 0, %vector.ph605 ], [ %index.next618, %vector.body613 ] ; 2 uses
  %i.vp = add nuw i64 %i.ux, %index614            ; 3 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.vp
  %wide.load615 = load <2 x i32>, ptr %i.vq, align 4, !tbaa !8, !alias.scope !1878
  %i.vr = shl <2 x i32> %wide.load615, %broadcast.splat608
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.vp
  %wide.load616 = load <2 x i32>, ptr %i.vs, align 4, !tbaa !8, !alias.scope !1881
  %i.vt = shl <2 x i32> %wide.load616, %broadcast.splat610 ; 3 uses
  %i.vu = shl <2 x i32> %i.vr, splat (i32 1)
  %i.vv = and <2 x i32> %i.vt, splat (i32 1)
  %i.vw = or disjoint <2 x i32> %i.vv, %i.vu      ; 2 uses
  %i.vx = add <2 x i32> %i.vw, %i.vt
  %i.vy = shl nuw nsw i64 %i.vp, 3
  %i.vz = getelementptr inbounds nuw i8, ptr %.079215, i64 %i.vy
  %i.wa = sub <2 x i32> %i.vw, %i.vt
  %i.wb = shufflevector <2 x i32> %i.vx, <2 x i32> %i.wa, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.wc = ashr <4 x i32> %i.wb, splat (i32 1)
  %interleaved.vec617 = shl <4 x i32> %i.wc, %i.aq
  store <4 x i32> %interleaved.vec617, ptr %i.vz, align 4, !tbaa !8, !alias.scope !1883, !noalias !1885
  %index.next618 = add nuw i64 %index614, 2       ; 2 uses
  %i.wd = icmp eq i64 %index.next618, %n.vec606
  br i1 %i.wd, label %middle.block619, label %vector.body613, !llvm.loop !1886

middle.block619:                                  ; preds = %vector.body613
  %cmp.n620 = icmp eq i64 %i.vn, 0
  br i1 %cmp.n620, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %scalar.ph603.preheader

scalar.ph603.preheader:                           ; preds = %vector.memcheck588, %.lr.ph155, %middle.block619
  %.2.i104154.ph = phi i64 [ %i.ux, %vector.memcheck588 ], [ %i.ux, %.lr.ph155 ], [ %i.vo, %middle.block619 ]
  br label %scalar.ph603

scalar.ph603:                                     ; preds = %scalar.ph603.preheader, %scalar.ph603
  %.2.i104154 = phi i64 [ %i.wv, %scalar.ph603 ], [ %.2.i104154.ph, %scalar.ph603.preheader ] ; 4 uses
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.2.i104154
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !8
  %i.wg = shl i32 %i.wf, %i.uz
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.2.i104154
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !8
  %i.wj = shl i32 %i.wi, %i.vb                    ; 3 uses
  %i.wk = shl i32 %i.wg, 1
  %i.wl = and i32 %i.wj, 1
  %i.wm = or disjoint i32 %i.wl, %i.wk            ; 2 uses
  %i.wn = add i32 %i.wm, %i.wj
  %i.wo = ashr i32 %i.wn, 1
  %i.wp = shl i32 %i.wo, %i.z
  %.idx116 = shl nuw nsw i64 %.2.i104154, 3
  %i.wq = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx116 ; 2 uses
  store i32 %i.wp, ptr %i.wq, align 4, !tbaa !8
  %i.wr = sub i32 %i.wm, %i.wj
  %i.ws = ashr i32 %i.wr, 1
  %i.wt = shl i32 %i.ws, %i.z
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wq, i64 4
  store i32 %i.wt, ptr %i.wu, align 4, !tbaa !8
  %i.wv = add nuw nsw i64 %.2.i104154, 1          ; 2 uses
  %i.ww = icmp samesign ult i64 %i.wv, %spec.select
  br i1 %i.ww, label %scalar.ph603, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, !llvm.loop !1887

bb.aa:                                            ; preds = %bb.j
  br i1 %.b.i92, label %bb.ab, label %._crit_edge283

._crit_edge283:                                   ; preds = %bb.aa
  %.pre284 = load i8, ptr %i.ag, align 1, !tbaa !1740
  %.pre286 = load i8, ptr %i.ah, align 1, !tbaa !1740
  br label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.wx = load i8, ptr %i.w, align 1, !tbaa !1733
  %i.wy = icmp ult i8 %i.wx, 25
  %.pre285 = load i8, ptr %i.ag, align 1, !tbaa !1740 ; 2 uses
  %.pre287 = load i8, ptr %i.ah, align 1, !tbaa !1740 ; 2 uses
  br i1 %i.wy, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.wz = lshr i64 %spec.select, 2                ; 4 uses
  %i.xa = zext i8 %.pre285 to i32
  %i.xb = add nsw i32 %i.z, %i.xa                 ; 3 uses
  %i.xc = zext i8 %.pre287 to i32
  %i.xd = add nsw i32 %i.z, %i.xc                 ; 3 uses
  %.not238 = icmp eq i64 %i.wz, 0
  br i1 %.not238, label %._crit_edge205, label %.lr.ph204

.lr.ph204:                                        ; preds = %bb.ac, %.lr.ph204
  %.0.i106202 = phi i64 [ %i.xo, %.lr.ph204 ], [ 0, %bb.ac ] ; 4 uses
  %i.xe = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.0.i106202
  %i.xf = load <4 x i32>, ptr %i.xe, align 1, !tbaa !9
  %i.xg = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.xf, i32 range(i32 -232, 288) %i.xb) ; 2 uses
  %i.xh = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0.i106202
  %i.xi = load <4 x i32>, ptr %i.xh, align 1, !tbaa !9
  %i.xj = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.xi, i32 range(i32 -232, 288) %i.xd) ; 2 uses
  %.idx.i108 = shl nuw nsw i64 %.0.i106202, 5
  %i.xk = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx.i108 ; 2 uses
  %i.xl = shufflevector <4 x i32> %i.xg, <4 x i32> %i.xj, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x i32> %i.xl, ptr %i.xk, align 1, !tbaa !9
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  %i.xn = shufflevector <4 x i32> %i.xg, <4 x i32> %i.xj, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.xn, ptr %i.xm, align 1, !tbaa !9
  %i.xo = add nuw nsw i64 %.0.i106202, 1          ; 2 uses
  %exitcond269.not = icmp eq i64 %i.xo, %i.wz
  br i1 %exitcond269.not, label %._crit_edge205, label %.lr.ph204, !llvm.loop !1888

._crit_edge205:                                   ; preds = %.lr.ph204, %bb.ac
  %i.xp = and i64 %spec.select, 4294967292        ; 7 uses
  %.not239 = icmp eq i64 %i.xp, %spec.select
  br i1 %.not239, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph208.preheader

.lr.ph208.preheader:                              ; preds = %._crit_edge205
  %i.xq = or disjoint i64 %i.xp, 1
  %i.xr = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.xq) ; 2 uses
  %10 = and i64 %spec.select, 4294967292
  %i.xs = sub nsw i64 %i.xr, %10                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.xs, 10
  br i1 %min.iters.check, label %.lr.ph208.preheader629, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph208.preheader
  %i.xt = shl nuw nsw i64 %i.wz, 5
  %scevgep = getelementptr i8, ptr %.079215, i64 %i.xt ; 2 uses
  %i.xu = or disjoint i64 %i.xp, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.xu) ; 2 uses
  %i.xv = shl nuw nsw i64 %umax, 3
  %scevgep351 = getelementptr i8, ptr %.079215, i64 %i.xv ; 2 uses
  %i.xw = shl nuw nsw i64 %i.wz, 4
  %i.xx = shl nuw nsw i64 %i.be, 2
  %i.xy = add nuw nsw i64 %i.xw, %i.xx            ; 2 uses
  %scevgep352 = getelementptr i8, ptr %i.bl, i64 %i.xy
  %i.xz = add nuw nsw i64 %umax, %i.be
  %i.ya = shl nuw nsw i64 %i.xz, 2                ; 2 uses
  %scevgep353 = getelementptr i8, ptr %i.bl, i64 %i.ya
  %scevgep354 = getelementptr i8, ptr %i.bn, i64 %i.xy
  %scevgep355 = getelementptr i8, ptr %i.bn, i64 %i.ya
  %bound0 = icmp ult ptr %scevgep, %scevgep353
  %bound1 = icmp ult ptr %scevgep352, %scevgep351
  %found.conflict = and i1 %bound0, %bound1
  %bound0356 = icmp ult ptr %scevgep, %scevgep355
  %bound1357 = icmp ult ptr %scevgep354, %scevgep351
  %found.conflict358 = and i1 %bound0356, %bound1357
  %conflict.rdx = or i1 %found.conflict, %found.conflict358
  br i1 %conflict.rdx, label %.lr.ph208.preheader629, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.yb = and i64 %i.xr, 1                        ; 2 uses
  %n.vec = sub nsw i64 %i.xs, %i.yb               ; 2 uses
  %i.yc = add nsw i64 %i.xp, %n.vec
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.xb, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert359 = insertelement <2 x i32> poison, i32 %i.xd, i64 0
  %broadcast.splat360 = shufflevector <2 x i32> %broadcast.splatinsert359, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.yd = add nuw i64 %i.xp, %index               ; 3 uses
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.yd
  %wide.load = load <2 x i32>, ptr %i.ye, align 4, !tbaa !8, !alias.scope !1889
  %i.yf = shl <2 x i32> %wide.load, %broadcast.splat
  %i.yg = shl nuw nsw i64 %i.yd, 3
  %i.yh = getelementptr inbounds nuw i8, ptr %.079215, i64 %i.yg
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.yd
  %wide.load361 = load <2 x i32>, ptr %i.yi, align 4, !tbaa !8, !alias.scope !1892
  %i.yj = shl <2 x i32> %wide.load361, %broadcast.splat360
  %interleaved.vec = shufflevector <2 x i32> %i.yf, <2 x i32> %i.yj, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.yh, align 4, !tbaa !8, !alias.scope !1894, !noalias !1896
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.yk = icmp eq i64 %index.next, %n.vec
  br i1 %i.yk, label %middle.block, label %vector.body, !llvm.loop !1897

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.yb, 0
  br i1 %cmp.n, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph208.preheader629

.lr.ph208.preheader629:                           ; preds = %vector.memcheck, %.lr.ph208.preheader, %middle.block
  %.1.i107206.ph = phi i64 [ %i.xp, %vector.memcheck ], [ %i.xp, %.lr.ph208.preheader ], [ %i.yc, %middle.block ]
  br label %.lr.ph208

.lr.ph208:                                        ; preds = %.lr.ph208.preheader629, %.lr.ph208
  %.1.i107206 = phi i64 [ %i.yt, %.lr.ph208 ], [ %.1.i107206.ph, %.lr.ph208.preheader629 ] ; 4 uses
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i107206
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !8
  %i.yn = shl i32 %i.ym, %i.xb
  %.idx128 = shl nuw nsw i64 %.1.i107206, 3
  %i.yo = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx128 ; 2 uses
  store i32 %i.yn, ptr %i.yo, align 4, !tbaa !8
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i107206
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !8
  %i.yr = shl i32 %i.yq, %i.xd
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yo, i64 4
  store i32 %i.yr, ptr %i.ys, align 4, !tbaa !8
  %i.yt = add nuw nsw i64 %.1.i107206, 1          ; 2 uses
  %i.yu = icmp samesign ult i64 %i.yt, %spec.select
  br i1 %i.yu, label %.lr.ph208, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, !llvm.loop !1898

bb.ad:                                            ; preds = %._crit_edge283, %bb.ab
  %i.yv = phi i8 [ %.pre286, %._crit_edge283 ], [ %.pre287, %bb.ab ]
  %i.yw = phi i8 [ %.pre284, %._crit_edge283 ], [ %.pre285, %bb.ab ]
  %i.yx = lshr i64 %spec.select, 2                ; 4 uses
  %i.yy = zext i8 %i.yw to i32
  %i.yz = add nsw i32 %i.z, %i.yy                 ; 6 uses
  %i.za = zext i8 %i.yv to i32
  %i.zb = add nsw i32 %i.z, %i.za                 ; 6 uses
  %.not236 = icmp eq i64 %i.yx, 0
  br i1 %.not236, label %._crit_edge198, label %.lr.ph197

.lr.ph197:                                        ; preds = %bb.ad, %.lr.ph197
  %.0.i109195 = phi i64 [ %i.aam, %.lr.ph197 ], [ 0, %bb.ad ] ; 3 uses
  %i.zc = shl nuw nsw i64 %.0.i109195, 2          ; 5 uses
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.zc
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !8
  %i.zf = shl i32 %i.ze, %i.yz
  %i.zg = or disjoint i64 %i.zc, 1                ; 2 uses
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.zg
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !8
  %i.zj = shl i32 %i.zi, %i.yz
  %i.zk = or disjoint i64 %i.zc, 2                ; 2 uses
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.zk
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !8
  %i.zn = shl i32 %i.zm, %i.yz
  %i.zo = or disjoint i64 %i.zc, 3                ; 2 uses
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.zo
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !8
  %i.zr = shl i32 %i.zq, %i.yz
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.zc
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !8
  %i.zu = shl i32 %i.zt, %i.zb
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.zg
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !8
  %i.zx = shl i32 %i.zw, %i.zb
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.zk
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !8
  %i.aaa = shl i32 %i.zz, %i.zb
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.zo
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !8
  %i.aad = shl i32 %i.aac, %i.zb
  %.idx127 = shl nuw nsw i64 %.0.i109195, 5
  %i.aae = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx127 ; 8 uses
  store i32 %i.zf, ptr %i.aae, align 4, !tbaa !8
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 4
  store i32 %i.zu, ptr %i.aaf, align 4, !tbaa !8
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  store i32 %i.zj, ptr %i.aag, align 4, !tbaa !8
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aae, i64 12
  store i32 %i.zx, ptr %i.aah, align 4, !tbaa !8
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  store i32 %i.zn, ptr %i.aai, align 4, !tbaa !8
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aae, i64 20
  store i32 %i.aaa, ptr %i.aaj, align 4, !tbaa !8
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aae, i64 24
  store i32 %i.zr, ptr %i.aak, align 4, !tbaa !8
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aae, i64 28
  store i32 %i.aad, ptr %i.aal, align 4, !tbaa !8
  %i.aam = add nuw nsw i64 %.0.i109195, 1         ; 2 uses
  %exitcond268.not = icmp eq i64 %i.aam, %i.yx
  br i1 %exitcond268.not, label %._crit_edge198, label %.lr.ph197, !llvm.loop !1899

._crit_edge198:                                   ; preds = %.lr.ph197, %bb.ad
  %i.aan = and i64 %spec.select, 4294967292       ; 7 uses
  %.not237 = icmp eq i64 %i.aan, %spec.select
  br i1 %.not237, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph201.preheader

.lr.ph201.preheader:                              ; preds = %._crit_edge198
  %i.aao = or disjoint i64 %i.aan, 1
  %i.aap = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.aao) ; 2 uses
  %11 = and i64 %spec.select, 4294967292
  %i.aaq = sub nsw i64 %i.aap, %11                ; 2 uses
  %min.iters.check378 = icmp ult i64 %i.aaq, 10
  br i1 %min.iters.check378, label %.lr.ph201.preheader631, label %vector.memcheck362

vector.memcheck362:                               ; preds = %.lr.ph201.preheader
  %i.aar = shl nuw nsw i64 %i.yx, 5
  %scevgep363 = getelementptr i8, ptr %.079215, i64 %i.aar ; 2 uses
  %i.aas = or disjoint i64 %i.aan, 1
  %umax364 = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.aas) ; 2 uses
  %i.aat = shl nuw nsw i64 %umax364, 3
  %scevgep365 = getelementptr i8, ptr %.079215, i64 %i.aat ; 2 uses
  %i.aau = shl nuw nsw i64 %i.yx, 4
  %i.aav = shl nuw nsw i64 %i.be, 2
  %i.aaw = add nuw nsw i64 %i.aau, %i.aav         ; 2 uses
  %scevgep366 = getelementptr i8, ptr %i.bl, i64 %i.aaw
  %i.aax = add nuw nsw i64 %umax364, %i.be
  %i.aay = shl nuw nsw i64 %i.aax, 2              ; 2 uses
  %scevgep367 = getelementptr i8, ptr %i.bl, i64 %i.aay
  %scevgep368 = getelementptr i8, ptr %i.bn, i64 %i.aaw
  %scevgep369 = getelementptr i8, ptr %i.bn, i64 %i.aay
  %bound0370 = icmp ult ptr %scevgep363, %scevgep367
  %bound1371 = icmp ult ptr %scevgep366, %scevgep365
  %found.conflict372 = and i1 %bound0370, %bound1371
  %bound0373 = icmp ult ptr %scevgep363, %scevgep369
  %bound1374 = icmp ult ptr %scevgep368, %scevgep365
  %found.conflict375 = and i1 %bound0373, %bound1374
  %conflict.rdx376 = or i1 %found.conflict372, %found.conflict375
  br i1 %conflict.rdx376, label %.lr.ph201.preheader631, label %vector.ph379

vector.ph379:                                     ; preds = %vector.memcheck362
  %i.aaz = and i64 %i.aap, 1                      ; 2 uses
  %n.vec380 = sub nsw i64 %i.aaq, %i.aaz          ; 2 uses
  %i.aba = add nsw i64 %i.aan, %n.vec380
  %broadcast.splatinsert381 = insertelement <2 x i32> poison, i32 %i.yz, i64 0
  %broadcast.splat382 = shufflevector <2 x i32> %broadcast.splatinsert381, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert383 = insertelement <2 x i32> poison, i32 %i.zb, i64 0
  %broadcast.splat384 = shufflevector <2 x i32> %broadcast.splatinsert383, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body385

vector.body385:                                   ; preds = %vector.body385, %vector.ph379
  %index386 = phi i64 [ 0, %vector.ph379 ], [ %index.next390, %vector.body385 ] ; 2 uses
  %i.abb = add nuw i64 %i.aan, %index386          ; 3 uses
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.abb
  %wide.load387 = load <2 x i32>, ptr %i.abc, align 4, !tbaa !8, !alias.scope !1900
  %i.abd = shl <2 x i32> %wide.load387, %broadcast.splat382
  %i.abe = shl nuw nsw i64 %i.abb, 3
  %i.abf = getelementptr inbounds nuw i8, ptr %.079215, i64 %i.abe
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.abb
  %wide.load388 = load <2 x i32>, ptr %i.abg, align 4, !tbaa !8, !alias.scope !1903
  %i.abh = shl <2 x i32> %wide.load388, %broadcast.splat384
  %interleaved.vec389 = shufflevector <2 x i32> %i.abd, <2 x i32> %i.abh, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec389, ptr %i.abf, align 4, !tbaa !8, !alias.scope !1905, !noalias !1907
  %index.next390 = add nuw i64 %index386, 2       ; 2 uses
  %i.abi = icmp eq i64 %index.next390, %n.vec380
  br i1 %i.abi, label %middle.block391, label %vector.body385, !llvm.loop !1908

middle.block391:                                  ; preds = %vector.body385
  %cmp.n392 = icmp eq i64 %i.aaz, 0
  br i1 %cmp.n392, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.lr.ph201.preheader631

.lr.ph201.preheader631:                           ; preds = %vector.memcheck362, %.lr.ph201.preheader, %middle.block391
  %.1.i110199.ph = phi i64 [ %i.aan, %vector.memcheck362 ], [ %i.aan, %.lr.ph201.preheader ], [ %i.aba, %middle.block391 ]
  br label %.lr.ph201

.lr.ph201:                                        ; preds = %.lr.ph201.preheader631, %.lr.ph201
  %.1.i110199 = phi i64 [ %i.abr, %.lr.ph201 ], [ %.1.i110199.ph, %.lr.ph201.preheader631 ] ; 4 uses
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i110199
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !8
  %i.abl = shl i32 %i.abk, %i.yz
  %.idx126 = shl nuw nsw i64 %.1.i110199, 3
  %i.abm = getelementptr inbounds nuw i8, ptr %.079215, i64 %.idx126 ; 2 uses
  store i32 %i.abl, ptr %i.abm, align 4, !tbaa !8
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i110199
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !8
  %i.abp = shl i32 %i.abo, %i.zb
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abm, i64 4
  store i32 %i.abp, ptr %i.abq, align 4, !tbaa !8
  %i.abr = add nuw nsw i64 %.1.i110199, 1         ; 2 uses
  %i.abs = icmp samesign ult i64 %i.abr, %spec.select
  br i1 %i.abs, label %.lr.ph201, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, !llvm.loop !1909

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge211
  %.076212 = phi i64 [ %i.adf, %._crit_edge211 ], [ 0, %.preheader.preheader ] ; 5 uses
  %i.abt = mul nuw nsw i64 %.076212, %i.bi
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %.079215, i64 %i.abt ; 3 uses
  br i1 %i.bk, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.abv = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 8
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !1738
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.abx, i64 %.076212
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.aby, i64 %i.be
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !8
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abv, i64 1
  %i.acc = load i8, ptr %i.acb, align 1, !tbaa !1740
  %i.acd = zext i8 %i.acc to i32
  %i.ace = add nsw i32 %i.z, %i.acd
  %i.acf = shl i32 %i.aca, %i.ace
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.abu, i64 %indvars.iv
  store i32 %i.acf, ptr %i.acg, align 4, !tbaa !8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ach = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.next ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 8
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !1738
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %.076212
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.ack, i64 %i.be
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !8
  %i.acn = getelementptr inbounds nuw i8, ptr %i.ach, i64 1
  %i.aco = load i8, ptr %i.acn, align 1, !tbaa !1740
  %i.acp = zext i8 %i.aco to i32
  %i.acq = add nsw i32 %i.z, %i.acp
  %i.acr = shl i32 %i.acm, %i.acq
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.abu, i64 %indvars.iv.next
  store i32 %i.acr, ptr %i.acs, align 4, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge211.unr-lcssa, label %.preheader.new, !llvm.loop !1910

._crit_edge211.unr-lcssa:                         ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge211, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge211.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge211.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod647)
  %i.act = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.epil.init ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 8
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !1738
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.acv, i64 %.076212
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %i.be
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !8
  %i.acz = getelementptr inbounds nuw i8, ptr %i.act, i64 1
  %i.ada = load i8, ptr %i.acz, align 1, !tbaa !1740
  %i.adb = zext i8 %i.ada to i32
  %i.adc = add nsw i32 %i.z, %i.adb
  %i.add = shl i32 %i.acy, %i.adc
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %i.abu, i64 %indvars.iv.epil.init
  store i32 %i.add, ptr %i.ade, align 4, !tbaa !8
  br label %._crit_edge211

._crit_edge211:                                   ; preds = %._crit_edge211.unr-lcssa, %.epil.preheader
  %i.adf = add nuw nsw i64 %.076212, 1            ; 2 uses
  %exitcond273.not = icmp eq i64 %i.adf, %spec.select
  br i1 %exitcond273.not, label %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit, label %.preheader, !llvm.loop !1911

ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit: ; preds = %scalar.ph603, %scalar.ph569, %scalar.ph537, %.lr.ph173, %.lr.ph180, %.lr.ph187, %.lr.ph194, %.lr.ph201, %.lr.ph208, %._crit_edge211, %middle.block619, %middle.block585, %middle.block551, %middle.block519, %middle.block487, %middle.block455, %middle.block423, %middle.block391, %middle.block, %.loopexit, %._crit_edge, %._crit_edge163, %._crit_edge170, %._crit_edge177, %._crit_edge184, %._crit_edge191, %._crit_edge198, %._crit_edge205
  %i.adg = add i64 %spec.select, %.078218
  %i.adh = zext i8 %i.ba to i64
  %i.adi = mul nuw nsw i64 %spec.select, %i.adh
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %.079215, i64 %i.adi
  %i.adk = sub i64 %.081214, %spec.select
  %i.adl = load i64, ptr %i.al, align 8, !tbaa !1735
  %i.adm = add i64 %i.adl, %spec.select
  store i64 %i.adm, ptr %i.al, align 8, !tbaa !1735
  %i.adn = trunc nuw i64 %spec.select to i32
  %i.ado = load i32, ptr %i.aa, align 8, !tbaa !1732
  %i.adp = sub i32 %i.ado, %i.adn
  store i32 %i.adp, ptr %i.aa, align 8, !tbaa !1732
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit

ma_dr_flac__read_and_decode_next_flac_frame.exit: ; preds = %bb.h, %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit
  %.182 = phi i64 [ %i.adk, %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit ], [ %.081214, %bb.h ] ; 2 uses
  %.180 = phi ptr [ %i.adj, %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit ], [ %.079215, %bb.h ]
  %.1 = phi i64 [ %i.adg, %ma_dr_flac_read_pcm_frames_s32__decode_left_side.exit ], [ %.078218, %bb.h ] ; 2 uses
  %.not = icmp eq i64 %.182, 0
  br i1 %.not, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread, label %bb.g, !llvm.loop !1912

ma_dr_flac__read_and_decode_next_flac_frame.exit.thread: ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit, %bb.h, %.preheader242, %bb.a, %ma_dr_flac__seek_forward_by_pcm_frames.exit
  %.083 = phi i64 [ 0, %bb.a ], [ %.025.i, %ma_dr_flac__seek_forward_by_pcm_frames.exit ], [ %.078218, %bb.h ], [ %.078218, %.preheader242 ], [ %.1, %ma_dr_flac__read_and_decode_next_flac_frame.exit ]
  ret i64 %.083
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @ma_flac_seek_to_pcm_frame(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1711
  %i.d = tail call i32 @ma_dr_flac_seek_to_pcm_frame(ptr noundef %i.c, i64 noundef %1)
  %sext = add nsw i32 %i.d, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i32 [ %sext, %bb.b ], [ -2, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ma_dr_flac_seek_to_pcm_frame(ptr noundef %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 8 uses
end_hunk_2
