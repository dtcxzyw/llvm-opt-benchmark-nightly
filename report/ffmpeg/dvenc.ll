Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dvenc?download=true
inline.NumInlined: 50
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumUnrolled: 40
begin_hunk_0_@dvvideo_encode_frame:bb.a
  ]

bb.t:                                             ; preds = %dv_format_frame.exit
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.t, %dv_format_frame.exit
  %.sink11.i = phi i32 [ -108, %bb.t ], [ -81, %dv_format_frame.exit ]
  %i.lt = load i32, ptr %i.lj, align 8, !tbaa !70
  %i.lu = icmp eq i32 %i.lt, 1
  %i.lv = select i1 %i.lu, i32 %.sink11.i, i32 0
  %spec.select.i = add nsw i32 %i.lv, %i.lq
  br label %dv_work_pool_size.exit

dv_work_pool_size.exit:                           ; preds = %dv_format_frame.exit, %.sink.split.i
  %.1.i = phi i32 [ %i.lq, %dv_format_frame.exit ], [ %spec.select.i, %.sink.split.i ]
  %i.lw = tail call i32 %i.ll(ptr noundef nonnull %0, ptr noundef nonnull @dv_encode_video_segment, ptr noundef nonnull %i.lm, ptr noundef null, i32 noundef %.1.i, i32 noundef 12) #9 ; 0 uses
  store i32 1, ptr %3, align 4, !tbaa !51
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %dv_work_pool_size.exit
  %.0 = phi i32 [ 0, %dv_work_pool_size.exit ], [ %i.k, %bb.a ]
  ret i32 %.0
}

declare ptr @av_default_item_name(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @av_chroma_location_name(i32 noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare ptr @av_dv_codec_profile2(i32 noundef, i32 noundef, i32 noundef, i64) local_unnamed_addr #2

declare ptr @av_get_pix_fmt_name(i32 noundef) local_unnamed_addr #2

declare void @ff_dv_print_profiles(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_dv_init_dynamic_tables(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_me_cmp_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_set_cmp(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare hidden void @ff_fdctdsp_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_pixblockdsp_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @dv_vlc_map_tableinit() #5 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %.04244 = phi i32 [ 0, %bb.a ], [ %i.g, %bb.e ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr @ff_dv_vlc_len, i64 %indvars.iv
  %i.b = load i8, ptr %i.a, align 1, !tbaa !48
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = sub nsw i32 32, %i.c                     ; 2 uses
  %i.e = lshr i32 %.04244, %i.d
  %i.f = shl nuw i32 1, %i.d
  %i.g = add i32 %i.f, %.04244
  %i.h = getelementptr inbounds nuw i8, ptr @ff_dv_vlc_run, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1, !tbaa !48    ; 2 uses
  %i.j = icmp ugt i8 %i.i, 63
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i8 %i.i to i64
  %i.l = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr @ff_dv_vlc_level, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1, !tbaa !48    ; 2 uses
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !53
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ne i8 %i.n, 0
  %i.t = zext i1 %i.s to i32                      ; 2 uses
  %i.u = shl i32 %i.e, %i.t
  store i32 %i.u, ptr %i.p, align 8, !tbaa !54
  %i.v = add nuw nsw i32 %i.t, %i.c
  store i32 %i.v, ptr %i.q, align 4, !tbaa !53
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 409
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !78

.preheader:                                       ; preds = %bb.e, %bb.g
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %bb.g ], [ 0, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %indvars.iv53 ; 4 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -4096
  %i.y = getelementptr i8, ptr %i.w, i64 -4092
  br label %bb.h

bb.f:                                             ; preds = %bb.g
  ret void

bb.g:                                             ; preds = %bb.j
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next54, 64
  br i1 %exitcond56.not, label %bb.f, label %.preheader, !llvm.loop !79

bb.h:                                             ; preds = %.preheader, %bb.j
  %indvars.iv49 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next50, %bb.j ] ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv49 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !53 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre = load i32, ptr %i.z, align 8, !tbaa !54
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr @dv_vlc_map, i64 %indvars.iv49 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !54
  %i.af = load i32, ptr %i.x, align 16, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !53 ; 2 uses
  %i.ai = shl i32 %i.af, %i.ah
  %i.aj = or i32 %i.ai, %i.ae                     ; 2 uses
  store i32 %i.aj, ptr %i.z, align 8, !tbaa !54
  %i.ak = load i32, ptr %i.y, align 4, !tbaa !53
  %i.al = add i32 %i.ak, %i.ah                    ; 2 uses
  store i32 %i.al, ptr %i.aa, align 4, !tbaa !53
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.am = phi i32 [ %i.ab, %._crit_edge ], [ %i.al, %bb.i ]
  %i.an = phi i32 [ %.pre, %._crit_edge ], [ %i.aj, %bb.i ]
  %i.ao = or i32 %i.an, 1
  %i.ap = sub nsw i64 0, %indvars.iv49
  %i.aq = and i64 %i.ap, 511
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.aq ; 2 uses
  store i32 %i.ao, ptr %i.ar, align 8, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 %i.am, ptr %i.as, align 4, !tbaa !53
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %exitcond52.not = icmp eq i64 %indvars.iv.next50, 256
  br i1 %exitcond52.not, label %bb.g, label %bb.h, !llvm.loop !80
}

declare i32 @ff_get_encode_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @dv_encode_video_segment(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 6 uses
  %i.b = alloca [5 x i32], align 16               ; 9 uses
  %i.c = alloca [5 x i32], align 16               ; 33 uses
  %i.d = alloca [5 x i32], align 16               ; 10 uses
  %i.e = alloca [40 x [31 x i16]], align 16       ; 6 uses
  %i.f = alloca [64 x i16], align 16              ; 19 uses
  %i.g = alloca [64 x i16], align 16              ; 14 uses
  %i.h = alloca [64 x i16], align 16              ; 17 uses
  %i.i = alloca [64 x i16], align 16              ; 14 uses
  %i.j = alloca [64 x i16], align 16              ; 19 uses
  %i.k = alloca [64 x i16], align 16              ; 17 uses
  %i.l = alloca [64 x i16], align 16              ; 19 uses
  %i.m = alloca [64 x i16], align 16              ; 17 uses
  %i.n = alloca [64 x i16], align 16              ; 19 uses
  %i.o = alloca [64 x i16], align 16              ; 19 uses
  %i.p = alloca [128 x i8], align 8               ; 67 uses
  %2 = alloca [40 x %struct.EncBlockInfo], align 16 ; 62 uses
  %3 = alloca [40 x %struct.PutBitContext], align 16 ; 9 uses
  %i.q = alloca [5 x i32], align 16               ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #9
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.v = load i16, ptr %1, align 2, !tbaa !115
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 27 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 64 ; 27 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 16 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 16 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 15624 ; 10 uses
  %i.ae = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_zigzag_direct, i64 1), align 1
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.af
  %i.ah = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_zigzag_direct, i64 2), align 2
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ai
  %i.ak = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_zigzag_direct, i64 3), align 1
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.al
  %i.an = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_zigzag_direct, i64 4), align 4
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ao
  %i.aq = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_zigzag_direct, i64 5), align 1
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ar
  %i.at = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_zigzag_direct, i64 1), align 1
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.au
  %i.aw = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_zigzag_direct, i64 2), align 2
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.ax
  %i.az = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_zigzag_direct, i64 3), align 1
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.ba
  %i.bc = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_zigzag_direct, i64 4), align 4
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.bd
  %i.bf = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_zigzag_direct, i64 5), align 1
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.bk = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  %i.bn = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  %i.bo = getelementptr inbounds nuw i8, ptr %i.p, i64 7
  %i.bp = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.p, i64 17
  %i.br = getelementptr inbounds nuw i8, ptr %i.p, i64 18
  %i.bs = getelementptr inbounds nuw i8, ptr %i.p, i64 19
  %i.bt = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.bu = getelementptr inbounds nuw i8, ptr %i.p, i64 21
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 22
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 23
  %i.bx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %i.p, i64 33
  %i.bz = getelementptr inbounds nuw i8, ptr %i.p, i64 34
  %i.ca = getelementptr inbounds nuw i8, ptr %i.p, i64 35
  %i.cb = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 37
  %i.cd = getelementptr inbounds nuw i8, ptr %i.p, i64 38
  %i.ce = getelementptr inbounds nuw i8, ptr %i.p, i64 39
  %i.cf = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.cg = getelementptr inbounds nuw i8, ptr %i.p, i64 49
  %i.ch = getelementptr inbounds nuw i8, ptr %i.p, i64 50
  %i.ci = getelementptr inbounds nuw i8, ptr %i.p, i64 51
  %i.cj = getelementptr inbounds nuw i8, ptr %i.p, i64 52
  %i.ck = getelementptr inbounds nuw i8, ptr %i.p, i64 53
  %i.cl = getelementptr inbounds nuw i8, ptr %i.p, i64 54
  %i.cm = getelementptr inbounds nuw i8, ptr %i.p, i64 55
  %i.cn = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.co = getelementptr inbounds nuw i8, ptr %i.p, i64 65
  %i.cp = getelementptr inbounds nuw i8, ptr %i.p, i64 66
  %i.cq = getelementptr inbounds nuw i8, ptr %i.p, i64 67
  %i.cr = getelementptr inbounds nuw i8, ptr %i.p, i64 68
  %i.cs = getelementptr inbounds nuw i8, ptr %i.p, i64 69
  %i.ct = getelementptr inbounds nuw i8, ptr %i.p, i64 70
  %i.cu = getelementptr inbounds nuw i8, ptr %i.p, i64 71
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.cw = getelementptr inbounds nuw i8, ptr %i.p, i64 81
  %i.cx = getelementptr inbounds nuw i8, ptr %i.p, i64 82
  %i.cy = getelementptr inbounds nuw i8, ptr %i.p, i64 83
  %i.cz = getelementptr inbounds nuw i8, ptr %i.p, i64 84
  %i.da = getelementptr inbounds nuw i8, ptr %i.p, i64 85
  %i.db = getelementptr inbounds nuw i8, ptr %i.p, i64 86
  %i.dc = getelementptr inbounds nuw i8, ptr %i.p, i64 87
  %i.dd = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 97
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 98
  %i.dg = getelementptr inbounds nuw i8, ptr %i.p, i64 99
  %i.dh = getelementptr inbounds nuw i8, ptr %i.p, i64 100
  %i.di = getelementptr inbounds nuw i8, ptr %i.p, i64 101
  %i.dj = getelementptr inbounds nuw i8, ptr %i.p, i64 102
  %i.dk = getelementptr inbounds nuw i8, ptr %i.p, i64 103
  %i.dl = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.dm = getelementptr inbounds nuw i8, ptr %i.p, i64 113
  %i.dn = getelementptr inbounds nuw i8, ptr %i.p, i64 114
  %i.do = getelementptr inbounds nuw i8, ptr %i.p, i64 115
  %i.dp = getelementptr inbounds nuw i8, ptr %i.p, i64 116
  %i.dq = getelementptr inbounds nuw i8, ptr %i.p, i64 117
  %i.dr = getelementptr inbounds nuw i8, ptr %i.p, i64 118
  %i.ds = getelementptr inbounds nuw i8, ptr %i.p, i64 119
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.ob
  %indvars.iv1604 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next1605, %bb.ob ] ; 3 uses
  %.0192993 = phi i32 [ 0, %bb.a ], [ %.3, %bb.ob ]
  %.0194992 = phi ptr [ %2, %bb.a ], [ %.2196, %bb.ob ] ; 304 uses
  %i.dt = load ptr, ptr %i.w, align 8, !tbaa !38  ; 3 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv1604
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !116 ; 3 uses
  %i.dw = and i16 %i.dv, 255                      ; 3 uses
  %i.dx = zext nneg i16 %i.dw to i32              ; 3 uses
  %i.dy = lshr i16 %i.dv, 8
  %i.dz = zext nneg i16 %i.dy to i32              ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !47 ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 720
  br i1 %i.ec, label %bb.c, label %dv_calculate_mb_xy.exit

bb.c:                                             ; preds = %bb.b
  %i.ed = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !48
  %i.eg = and i8 %i.ef, 12
  %.not.i511 = icmp eq i8 %i.eg, 0
  br i1 %.not.i511, label %bb.d, label %dv_calculate_mb_xy.exit

bb.d:                                             ; preds = %bb.c
  %i.eh = icmp ugt i16 %i.dv, 4607
  %.neg.i = select i1 %i.eh, i32 -18, i32 72
  %i.ei = add nsw i32 %.neg.i, %i.dz
  br label %dv_calculate_mb_xy.exit

dv_calculate_mb_xy.exit:                          ; preds = %bb.b, %bb.c, %bb.d
  %.0642 = phi i32 [ %i.ei, %bb.d ], [ %i.dz, %bb.c ], [ %i.dz, %bb.b ] ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !49
  %i.el = and i32 %i.ek, 16
  %.not221 = icmp eq i32 %i.el, 0
  %i.em = select i1 %.not221, i32 15, i32 1
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv1604
  store i32 %i.em, ptr %i.en, align 4, !tbaa !51
  %i.eo = icmp eq i32 %i.eb, 1080
  %i.ep = icmp slt i32 %.0642, 134
  %or.cond = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %dv_calculate_mb_xy.exit
  %i.eq = load ptr, ptr %i.y, align 8, !tbaa !45  ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 64
  %i.es = load i32, ptr %i.er, align 8, !tbaa !51 ; 2 uses
  %i.et = sext i32 %i.es to i64                   ; 3 uses
  %i.eu = load ptr, ptr %i.eq, align 8, !tbaa !117
  %i.ev = mul nsw i32 %i.es, %.0642
  %i.ew = add nsw i32 %i.ev, %i.dx
  %i.ex = shl nsw i32 %i.ew, 3
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds i8, ptr %i.eu, i64 %i.ey ; 3 uses
  %i.fa = load ptr, ptr %i.z, align 8, !tbaa !34
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 64
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !39
  %i.fd = and i32 %i.fc, 262144
  %.not.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i, label %dv_guess_dct_mode.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fe = load ptr, ptr %i.aa, align 8, !tbaa !41
  %i.ff = call i32 %i.fe(ptr noundef null, ptr noundef %i.ez, ptr noundef null, i64 noundef range(i64 -2147483648, 2147483648) %i.et, i32 noundef 8) #9, !inline_history !81 ; 2 uses
  %i.fg = icmp sgt i32 %i.ff, 400
  br i1 %i.fg, label %bb.g, label %dv_guess_dct_mode.exit

bb.g:                                             ; preds = %bb.f
  %i.fh = add nsw i32 %i.ff, -400
  %i.fi = load ptr, ptr %i.aa, align 8, !tbaa !41
  %i.fj = shl nsw i64 %i.et, 1                    ; 2 uses
  %i.fk = call i32 %i.fi(ptr noundef null, ptr noundef %i.ez, ptr noundef null, i64 noundef %i.fj, i32 noundef 4) #9, !inline_history !81
  %i.fl = load ptr, ptr %i.aa, align 8, !tbaa !41
  %i.fm = getelementptr inbounds i8, ptr %i.ez, i64 %i.et
  %i.fn = call i32 %i.fl(ptr noundef null, ptr noundef %i.fm, ptr noundef null, i64 noundef %i.fj, i32 noundef 4) #9, !inline_history !81
  %i.fo = add nsw i32 %i.fn, %i.fk
  %i.fp = icmp sgt i32 %i.fh, %i.fo
  %i.fq = zext i1 %i.fp to i32
  br label %dv_guess_dct_mode.exit

dv_guess_dct_mode.exit:                           ; preds = %bb.f, %bb.e, %bb.g
  %.1.i = phi i32 [ %i.fq, %bb.g ], [ 0, %bb.e ], [ 0, %bb.f ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.0194992, i64 60
  store i32 %.1.i, ptr %i.fr, align 4, !tbaa !119
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !38
  br label %bb.i

bb.h:                                             ; preds = %dv_calculate_mb_xy.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %.0194992, i64 60
  store i32 0, ptr %i.fs, align 4, !tbaa !119
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %dv_guess_dct_mode.exit
  %i.ft = phi ptr [ %i.dt, %bb.h ], [ %.pre, %dv_guess_dct_mode.exit ] ; 3 uses
  %i.fu = phi i32 [ 0, %bb.h ], [ %.1.i, %dv_guess_dct_mode.exit ] ; 8 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0194992, i64 60 ; 10 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.0194992, i64 460 ; 6 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0194992, i64 520
  store i32 %i.fu, ptr %i.fx, align 4, !tbaa !119
  %i.fy = getelementptr inbounds nuw i8, ptr %.0194992, i64 920 ; 6 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.0194992, i64 980
  store i32 %i.fu, ptr %i.fz, align 4, !tbaa !119
  %i.ga = getelementptr inbounds nuw i8, ptr %.0194992, i64 1380 ; 6 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.0194992, i64 1440
  store i32 %i.fu, ptr %i.gb, align 4, !tbaa !119
  %i.gc = getelementptr inbounds nuw i8, ptr %.0194992, i64 1840
  %i.gd = getelementptr inbounds nuw i8, ptr %.0194992, i64 1900
  store i32 %i.fu, ptr %i.gd, align 4, !tbaa !119
  %i.ge = getelementptr inbounds nuw i8, ptr %.0194992, i64 2360
  store i32 %i.fu, ptr %i.ge, align 4, !tbaa !119
  %i.gf = getelementptr inbounds nuw i8, ptr %.0194992, i64 2820
  store i32 %i.fu, ptr %i.gf, align 4, !tbaa !119
  %i.gg = getelementptr inbounds nuw i8, ptr %.0194992, i64 3280
  store i32 %i.fu, ptr %i.gg, align 4, !tbaa !119
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ft, i64 56
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !44 ; 2 uses
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.gk = icmp eq i32 %i.gi, 7
  %i.gl = icmp samesign ugt i16 %i.dw, 87
  %or.cond3 = select i1 %i.gk, i1 %i.gl, i1 false
  br i1 %or.cond3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !47
  %i.go = icmp sgt i32 %i.gn, 719
  %i.gp = icmp ne i32 %.0642, 134
  %or.cond5 = select i1 %i.go, i1 %i.gp, i1 false
  br i1 %or.cond5, label %bb.l, label %._crit_edge1624

._crit_edge1624:                                  ; preds = %bb.k
  %.pre1625 = load ptr, ptr %i.y, align 8, !tbaa !45 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre1625, i64 64
  %.pre1626 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !51
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.gq = load ptr, ptr %i.y, align 8, !tbaa !45  ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 64
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !51 ; 2 uses
  %.not222 = icmp eq i32 %i.fu, 0
  %i.gt = select i1 %.not222, i32 3, i32 0
  %i.gu = shl i32 %i.gs, %i.gt
  %i.gv = sext i32 %i.gu to i64
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge1624, %bb.l
  %i.gw = phi i32 [ %i.gs, %bb.l ], [ %.pre1626, %._crit_edge1624 ] ; 13 uses
  %i.gx = phi ptr [ %i.gq, %bb.l ], [ %.pre1625, %._crit_edge1624 ]
  %.0203 = phi i64 [ %i.gv, %bb.l ], [ 16, %._crit_edge1624 ] ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !117 ; 2 uses
  %i.gz = mul nsw i32 %i.gw, %.0642
  %i.ha = add nsw i32 %i.gz, %i.dx
  %i.hb = shl nsw i32 %i.ha, 3
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds i8, ptr %i.gy, i64 %i.hc ; 13 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.ft, i64 4 ; 3 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !49
  %i.hg = icmp eq i32 %i.hf, 4
  %i.hh = getelementptr inbounds nuw i8, ptr %.0194992, i64 320 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0194992, i64 324 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.0194992, i64 52 ; 2 uses
  %.not.i294 = icmp eq ptr %i.gy, null            ; 3 uses
  br i1 %i.hg, label %bb.n, label %bb.ey

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store i8 0, ptr %i.hh, align 4, !tbaa !120
  store i32 0, ptr %i.hi, align 4, !tbaa !121
  store i32 0, ptr %i.hj, align 4, !tbaa !122
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.0194992, i8 0, i64 16, i1 false)
  br i1 %.not.i294, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hk = load i32, ptr %i.he, align 4, !tbaa !49
  %i.hl = and i32 %i.hk, 16
  %.not48.i295 = icmp eq i32 %i.hl, 0
  br i1 %.not48.i295, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hm = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.hn = load i32, ptr %i.fv, align 4, !tbaa !119
  %i.ho = shl i32 %i.gw, %i.hn
  %i.hp = sext i32 %i.ho to i64
  call void %i.hm(ptr noundef nonnull %i.f, ptr noundef nonnull %i.hd, i64 noundef %i.hp) #9, !inline_history !82
  %i.hq = load ptr, ptr %i.ac, align 8, !tbaa !40
  call void %i.hq(ptr noundef nonnull %i.f) #9, !inline_history !82
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.hr = sext i32 %i.gw to i64                   ; 4 uses
  %i.hs = load ptr, ptr %i.z, align 8, !tbaa !34
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 64
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !39
end_hunk_0
begin_hunk_1_@dv_encode_video_segment:bb.a
  store i32 1, ptr %i.kp, align 4, !tbaa !51
  br label %.lr.ph868.1

.lr.ph868.1:                                      ; preds = %bb.z, %.lr.ph868.preheader.1
  %indvars.iv1304.1 = phi i64 [ 6, %.lr.ph868.preheader.1 ], [ %indvars.iv.next1305.1, %bb.z ] ; 7 uses
  %.1.i327867.1 = phi i32 [ %.3.i328.4, %.lr.ph868.preheader.1 ], [ %.3.i328.1, %bb.z ] ; 4 uses
  %.190.i866.1 = phi i32 [ %.493.i.4, %.lr.ph868.preheader.1 ], [ %.493.i.1, %bb.z ] ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ot, i64 %indvars.iv1304.1
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !48
  %i.ks = zext i8 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ks
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !116
  %i.kv = sext i16 %i.ku to i32                   ; 3 uses
  %i.kw = add i32 %i.ov, %i.kv
  %i.kx = icmp ugt i32 %i.kw, %i.ow
  br i1 %i.kx, label %bb.x, label %bb.z

bb.x:                                             ; preds = %.lr.ph868.1
  %i.ky = lshr i32 %i.kv, 31
  %i.kz = trunc nuw nsw i32 %i.ky to i8
  %i.la = getelementptr inbounds nuw i8, ptr %i.pb, i64 %indvars.iv1304.1
  store i8 %i.kz, ptr %i.la, align 1, !tbaa !48
  %i.lb = call i32 @llvm.abs.i32(i32 %i.kv, i1 true)
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv1304.1
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !51
  %i.le = mul nsw i32 %i.ld, %i.lb
  %i.lf = add nsw i32 %i.le, 2097152
  %i.lg = ashr i32 %i.lf, 22                      ; 4 uses
  %.not102.i.1 = icmp eq i32 %i.lg, 0
  br i1 %.not102.i.1, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.lh = trunc nsw i32 %i.lg to i16
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.oy, i64 %indvars.iv1304.1
  store i16 %i.lh, ptr %i.li, align 2, !tbaa !116
  %spec.select.i.1 = call i32 @llvm.smax.i32(i32 %i.lg, i32 %.190.i866.1)
  %i.lj = xor i32 %.1.i327867.1, -1
  %i.lk = trunc nsw i64 %indvars.iv1304.1 to i32  ; 2 uses
  %i.ll = add i32 %i.lk, %i.lj
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.lm
  %i.lo = sext i32 %i.lg to i64
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %i.lo
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !53
  %i.ls = load i32, ptr %i.kp, align 4, !tbaa !51
  %i.lt = add nsw i32 %i.ls, %i.lr
  store i32 %i.lt, ptr %i.kp, align 4, !tbaa !51
  %i.lu = trunc i64 %indvars.iv1304.1 to i8
  %i.lv = sext i32 %.1.i327867.1 to i64
  %i.lw = getelementptr inbounds i8, ptr %i.pc, i64 %i.lv
  store i8 %i.lu, ptr %i.lw, align 1, !tbaa !48
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %.lr.ph868.1
  %.493.i.1 = phi i32 [ %.190.i866.1, %bb.x ], [ %spec.select.i.1, %bb.y ], [ %.190.i866.1, %.lr.ph868.1 ] ; 2 uses
  %.3.i328.1 = phi i32 [ %.1.i327867.1, %bb.x ], [ %i.lk, %bb.y ], [ %.1.i327867.1, %.lr.ph868.1 ] ; 3 uses
  %indvars.iv.next1305.1 = add nuw nsw i64 %indvars.iv1304.1, 1 ; 2 uses
  %exitcond.11311.not = icmp eq i64 %indvars.iv.next1305.1, 21
  br i1 %exitcond.11311.not, label %.lr.ph868.preheader.2, label %.lr.ph868.1, !llvm.loop !84

.lr.ph868.preheader.2:                            ; preds = %bb.z
  %i.lx = getelementptr inbounds nuw i8, ptr %.0194992, i64 40 ; 2 uses
  store i32 %.3.i328.1, ptr %i.lx, align 4, !tbaa !51
  %i.ly = getelementptr inbounds nuw i8, ptr %.0194992, i64 24 ; 5 uses
  store i32 1, ptr %i.ly, align 4, !tbaa !51
  br label %.lr.ph868.2

.lr.ph868.2:                                      ; preds = %bb.ac, %.lr.ph868.preheader.2
  %indvars.iv1304.2 = phi i64 [ 21, %.lr.ph868.preheader.2 ], [ %indvars.iv.next1305.2, %bb.ac ] ; 7 uses
  %.1.i327867.2 = phi i32 [ %.3.i328.1, %.lr.ph868.preheader.2 ], [ %.3.i328.2, %bb.ac ] ; 4 uses
  %.190.i866.2 = phi i32 [ %.493.i.1, %.lr.ph868.preheader.2 ], [ %.493.i.2, %bb.ac ] ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ot, i64 %indvars.iv1304.2
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !48
  %i.mb = zext i8 %i.ma to i64
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.mb
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !116
  %i.me = sext i16 %i.md to i32                   ; 3 uses
  %i.mf = add i32 %i.ov, %i.me
  %i.mg = icmp ugt i32 %i.mf, %i.ow
  br i1 %i.mg, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.lr.ph868.2
  %i.mh = lshr i32 %i.me, 31
  %i.mi = trunc nuw nsw i32 %i.mh to i8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.pb, i64 %indvars.iv1304.2
  store i8 %i.mi, ptr %i.mj, align 1, !tbaa !48
  %i.mk = call i32 @llvm.abs.i32(i32 %i.me, i1 true)
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv1304.2
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !51
  %i.mn = mul nsw i32 %i.mm, %i.mk
  %i.mo = add nsw i32 %i.mn, 2097152
  %i.mp = ashr i32 %i.mo, 22                      ; 4 uses
  %.not102.i.2 = icmp eq i32 %i.mp, 0
  br i1 %.not102.i.2, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mq = trunc nsw i32 %i.mp to i16
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %i.oy, i64 %indvars.iv1304.2
  store i16 %i.mq, ptr %i.mr, align 2, !tbaa !116
  %spec.select.i.2 = call i32 @llvm.smax.i32(i32 %i.mp, i32 %.190.i866.2)
  %i.ms = xor i32 %.1.i327867.2, -1
  %i.mt = trunc nsw i64 %indvars.iv1304.2 to i32  ; 2 uses
  %i.mu = add i32 %i.mt, %i.ms
  %i.mv = sext i32 %i.mu to i64
  %i.mw = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.mv
  %i.mx = sext i32 %i.mp to i64
  %i.my = getelementptr inbounds [8 x i8], ptr %i.mw, i64 %i.mx
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !53
  %i.nb = load i32, ptr %i.ly, align 4, !tbaa !51
  %i.nc = add nsw i32 %i.nb, %i.na
  store i32 %i.nc, ptr %i.ly, align 4, !tbaa !51
  %i.nd = trunc i64 %indvars.iv1304.2 to i8
  %i.ne = sext i32 %.1.i327867.2 to i64
  %i.nf = getelementptr inbounds i8, ptr %i.pc, i64 %i.ne
  store i8 %i.nd, ptr %i.nf, align 1, !tbaa !48
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.lr.ph868.2
  %.493.i.2 = phi i32 [ %.190.i866.2, %bb.aa ], [ %spec.select.i.2, %bb.ab ], [ %.190.i866.2, %.lr.ph868.2 ] ; 2 uses
  %.3.i328.2 = phi i32 [ %.1.i327867.2, %bb.aa ], [ %i.mt, %bb.ab ], [ %.1.i327867.2, %.lr.ph868.2 ] ; 3 uses
  %indvars.iv.next1305.2 = add nuw nsw i64 %indvars.iv1304.2, 1 ; 2 uses
  %exitcond.21312.not = icmp eq i64 %indvars.iv.next1305.2, 43
  br i1 %exitcond.21312.not, label %.lr.ph868.preheader.3, label %.lr.ph868.2, !llvm.loop !84

.lr.ph868.preheader.3:                            ; preds = %bb.ac
  %i.ng = getelementptr inbounds nuw i8, ptr %.0194992, i64 44 ; 2 uses
  store i32 %.3.i328.2, ptr %i.ng, align 4, !tbaa !51
  %i.nh = getelementptr inbounds nuw i8, ptr %.0194992, i64 28 ; 5 uses
  store i32 1, ptr %i.nh, align 4, !tbaa !51
  br label %.lr.ph868.3

.lr.ph868.3:                                      ; preds = %bb.af, %.lr.ph868.preheader.3
  %indvars.iv1304.3 = phi i64 [ 43, %.lr.ph868.preheader.3 ], [ %indvars.iv.next1305.3, %bb.af ] ; 7 uses
  %.1.i327867.3 = phi i32 [ %.3.i328.2, %.lr.ph868.preheader.3 ], [ %.3.i328.3, %bb.af ] ; 4 uses
  %.190.i866.3 = phi i32 [ %.493.i.2, %.lr.ph868.preheader.3 ], [ %.493.i.3, %bb.af ] ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ot, i64 %indvars.iv1304.3
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !48
  %i.nk = zext i8 %i.nj to i64
  %i.nl = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.nk
  %i.nm = load i16, ptr %i.nl, align 2, !tbaa !116
  %i.nn = sext i16 %i.nm to i32                   ; 3 uses
  %i.no = add i32 %i.ov, %i.nn
  %i.np = icmp ugt i32 %i.no, %i.ow
  br i1 %i.np, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.lr.ph868.3
  %i.nq = lshr i32 %i.nn, 31
  %i.nr = trunc nuw nsw i32 %i.nq to i8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.pb, i64 %indvars.iv1304.3
  store i8 %i.nr, ptr %i.ns, align 1, !tbaa !48
  %i.nt = call i32 @llvm.abs.i32(i32 %i.nn, i1 true)
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv1304.3
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !51
  %i.nw = mul nsw i32 %i.nv, %i.nt
  %i.nx = add nsw i32 %i.nw, 2097152
  %i.ny = ashr i32 %i.nx, 22                      ; 4 uses
  %.not102.i.3 = icmp eq i32 %i.ny, 0
  br i1 %.not102.i.3, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.nz = trunc nsw i32 %i.ny to i16
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %i.oy, i64 %indvars.iv1304.3
  store i16 %i.nz, ptr %i.oa, align 2, !tbaa !116
  %spec.select.i.3 = call i32 @llvm.smax.i32(i32 %i.ny, i32 %.190.i866.3)
  %i.ob = xor i32 %.1.i327867.3, -1
  %i.oc = trunc nsw i64 %indvars.iv1304.3 to i32  ; 2 uses
  %i.od = add i32 %i.oc, %i.ob
  %i.oe = sext i32 %i.od to i64
  %i.of = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.oe
  %i.og = sext i32 %i.ny to i64
  %i.oh = getelementptr inbounds [8 x i8], ptr %i.of, i64 %i.og
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !53
  %i.ok = load i32, ptr %i.nh, align 4, !tbaa !51
  %i.ol = add nsw i32 %i.ok, %i.oj
  store i32 %i.ol, ptr %i.nh, align 4, !tbaa !51
  %i.om = trunc i64 %indvars.iv1304.3 to i8
  %i.on = sext i32 %.1.i327867.3 to i64
  %i.oo = getelementptr inbounds i8, ptr %i.pc, i64 %i.on
  store i8 %i.om, ptr %i.oo, align 1, !tbaa !48
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %.lr.ph868.3
  %.493.i.3 = phi i32 [ %.190.i866.3, %bb.ad ], [ %spec.select.i.3, %bb.ae ], [ %.190.i866.3, %.lr.ph868.3 ] ; 2 uses
  %.3.i328.3 = phi i32 [ %.1.i327867.3, %bb.ad ], [ %i.oc, %bb.ae ], [ %.1.i327867.3, %.lr.ph868.3 ] ; 2 uses
  %indvars.iv.next1305.3 = add nuw nsw i64 %indvars.iv1304.3, 1 ; 2 uses
  %exitcond.31313.not = icmp eq i64 %indvars.iv.next1305.3, 64
  br i1 %exitcond.31313.not, label %.loopexit694.3, label %.lr.ph868.3, !llvm.loop !84

.loopexit694.3:                                   ; preds = %bb.af
  %i.op = sext i32 %.3.i328.3 to i64
  %i.oq = getelementptr inbounds i8, ptr %i.pc, i64 %i.op
  store i8 64, ptr %i.oq, align 1, !tbaa !48
  %i.or = getelementptr inbounds nuw i8, ptr %.0194992, i64 56 ; 2 uses
  br label %bb.aq

.lr.ph868.preheader:                              ; preds = %bb.u
  %i.os = load i32, ptr %i.fv, align 4, !tbaa !119
  %.not50.i298 = icmp eq i32 %i.os, 0             ; 5 uses
  %i.ot = select i1 %.not50.i298, ptr @ff_zigzag_direct, ptr @ff_dv_zigzag248_direct ; 8 uses
  %i.ou = select i1 %.not50.i298, ptr @dv_weight_88, ptr @dv_weight_248 ; 3 uses
  %i.ov = load i32, ptr %i.ad, align 8, !tbaa !125 ; 9 uses
  %i.ow = shl i32 %i.ov, 1                        ; 8 uses
  %i.ox = load i16, ptr %i.f, align 16, !tbaa !116
  %i.oy = getelementptr inbounds nuw i8, ptr %.0194992, i64 64 ; 8 uses
  store i16 %i.ox, ptr %i.oy, align 4, !tbaa !116
  %i.oz = getelementptr inbounds nuw i8, ptr %.0194992, i64 32 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.0194992, i64 16 ; 11 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.0194992, i64 256 ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.0194992, i64 192 ; 19 uses
  store i32 0, ptr %i.oz, align 4, !tbaa !51
  store i32 1, ptr %i.pa, align 4, !tbaa !51
  %4 = getelementptr inbounds nuw i8, ptr %i.ot, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !48
  %i.pd = zext i8 %5 to i64
  %i.pe = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.pd
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !116
  %i.pg = sext i16 %i.pf to i32                   ; 3 uses
  %i.ph = add i32 %i.ov, %i.pg
  %i.pi = icmp ugt i32 %i.ph, %i.ow
  br i1 %i.pi, label %bb.ag, label %.lr.ph868.11317

bb.ag:                                            ; preds = %.lr.ph868.preheader
  %i.pj = lshr i32 %i.pg, 31
  %i.pk = trunc nuw nsw i32 %i.pj to i8
  %i.pl = getelementptr inbounds nuw i8, ptr %.0194992, i64 257
  store i8 %i.pk, ptr %i.pl, align 1, !tbaa !48
  %i.pm = call i32 @llvm.abs.i32(i32 %i.pg, i1 true)
  %i.pn = select i1 %.not50.i298, i32 257107, i32 262144
  %i.po = mul nuw nsw i32 %i.pn, %i.pm
  %i.pp = add nuw nsw i32 %i.po, 2097152
  %i.pq = lshr i32 %i.pp, 22                      ; 4 uses
  %.not102.i = icmp eq i32 %i.pq, 0
  br i1 %.not102.i, label %.lr.ph868.11317, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.pr = trunc nuw nsw i32 %i.pq to i16
  %i.ps = getelementptr inbounds nuw i8, ptr %.0194992, i64 66
  store i16 %i.pr, ptr %i.ps, align 2, !tbaa !116
  %i.pt = zext nneg i32 %i.pq to i64
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr @dv_vlc_map, i64 %i.pt
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 4
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !53
  %i.px = add nsw i32 %i.pw, 1                    ; 2 uses
  store i32 %i.px, ptr %i.pa, align 4, !tbaa !51
  store i8 1, ptr %i.pc, align 4, !tbaa !48
  br label %.lr.ph868.11317

.lr.ph868.11317:                                  ; preds = %bb.ah, %bb.ag, %.lr.ph868.preheader
  %i.py = phi i32 [ 1, %bb.ag ], [ %i.px, %bb.ah ], [ 1, %.lr.ph868.preheader ] ; 3 uses
  %.493.i = phi i32 [ -1, %bb.ag ], [ %i.pq, %bb.ah ], [ -1, %.lr.ph868.preheader ] ; 3 uses
  %.3.i328 = phi i32 [ 0, %bb.ag ], [ 1, %bb.ah ], [ 0, %.lr.ph868.preheader ] ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.ot, i64 2
  %7 = load i8, ptr %6, align 2, !tbaa !48
  %i.pz = zext i8 %7 to i64
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.pz
  %i.qb = load i16, ptr %i.qa, align 2, !tbaa !116
  %i.qc = sext i16 %i.qb to i32                   ; 3 uses
  %i.qd = add i32 %i.ov, %i.qc
  %i.qe = icmp ugt i32 %i.qd, %i.ow
  br i1 %i.qe, label %bb.ai, label %.lr.ph868.21327

bb.ai:                                            ; preds = %.lr.ph868.11317
  %i.qf = lshr i32 %i.qc, 31
  %i.qg = trunc nuw nsw i32 %i.qf to i8
  %i.qh = getelementptr inbounds nuw i8, ptr %.0194992, i64 258
  store i8 %i.qg, ptr %i.qh, align 2, !tbaa !48
  %i.qi = call i32 @llvm.abs.i32(i32 %i.qc, i1 true)
  %i.qj = mul nuw nsw i32 %i.qi, 257107
  %i.qk = add nuw nsw i32 %i.qj, 2097152
  %i.ql = lshr i32 %i.qk, 22                      ; 4 uses
  %.not102.i.11318 = icmp eq i32 %i.ql, 0
  br i1 %.not102.i.11318, label %.lr.ph868.21327, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.qm = trunc nuw nsw i32 %i.ql to i16
  %i.qn = getelementptr inbounds nuw i8, ptr %.0194992, i64 68
  store i16 %i.qm, ptr %i.qn, align 4, !tbaa !116
  %spec.select.i.11319 = call i32 @llvm.smax.i32(i32 %i.ql, i32 %.493.i)
  %i.qo = xor i32 %.3.i328, 1
  %i.qp = zext nneg i32 %i.qo to i64
  %i.qq = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.qp
  %i.qr = zext nneg i32 %i.ql to i64
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %i.qr
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 4
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !53
  %i.qv = add nsw i32 %i.py, %i.qu                ; 2 uses
  store i32 %i.qv, ptr %i.pa, align 4, !tbaa !51
  %i.qw = zext nneg i32 %.3.i328 to i64
  %i.qx = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.qw
  store i8 2, ptr %i.qx, align 1, !tbaa !48
  br label %.lr.ph868.21327

.lr.ph868.21327:                                  ; preds = %bb.aj, %bb.ai, %.lr.ph868.11317
  %i.qy = phi i32 [ %i.py, %bb.ai ], [ %i.qv, %bb.aj ], [ %i.py, %.lr.ph868.11317 ]
  %.493.i.11320 = phi i32 [ %.493.i, %bb.ai ], [ %spec.select.i.11319, %bb.aj ], [ %.493.i, %.lr.ph868.11317 ] ; 3 uses
  %.3.i328.11321 = phi i32 [ %.3.i328, %bb.ai ], [ 2, %bb.aj ], [ %.3.i328, %.lr.ph868.11317 ] ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.ot, i64 3
  %9 = load i8, ptr %8, align 1, !tbaa !48
  %i.qz = zext i8 %9 to i64
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.qz
  %i.rb = load i16, ptr %i.ra, align 2, !tbaa !116
  %i.rc = sext i16 %i.rb to i32                   ; 3 uses
  %i.rd = add i32 %i.ov, %i.rc
  %i.re = icmp ugt i32 %i.rd, %i.ow
  br i1 %i.re, label %bb.ak, label %.lr.ph868.31337

bb.ak:                                            ; preds = %.lr.ph868.21327
  %i.rf = lshr i32 %i.rc, 31
  %i.rg = trunc nuw nsw i32 %i.rf to i8
  %i.rh = getelementptr inbounds nuw i8, ptr %.0194992, i64 259
  store i8 %i.rg, ptr %i.rh, align 1, !tbaa !48
  %i.ri = call i32 @llvm.abs.i32(i32 %i.rc, i1 true)
  %i.rj = select i1 %.not50.i298, i32 242189, i32 257107
  %i.rk = mul nuw nsw i32 %i.rj, %i.ri
  %i.rl = add nuw nsw i32 %i.rk, 2097152
  %i.rm = lshr i32 %i.rl, 22                      ; 4 uses
  %.not102.i.21328 = icmp eq i32 %i.rm, 0
  br i1 %.not102.i.21328, label %.lr.ph868.31337, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.rn = trunc nuw nsw i32 %i.rm to i16
  %i.ro = getelementptr inbounds nuw i8, ptr %.0194992, i64 70
  store i16 %i.rn, ptr %i.ro, align 2, !tbaa !116
  %spec.select.i.21329 = call i32 @llvm.smax.i32(i32 %i.rm, i32 %.493.i.11320)
  %i.rp = sub nuw nsw i32 2, %.3.i328.11321
  %i.rq = zext nneg i32 %i.rp to i64
  %i.rr = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.rq
  %i.rs = zext nneg i32 %i.rm to i64
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %i.rs
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 4
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !53
  %i.rw = add nsw i32 %i.qy, %i.rv
  store i32 %i.rw, ptr %i.pa, align 4, !tbaa !51
  %i.rx = zext nneg i32 %.3.i328.11321 to i64
  %i.ry = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.rx
  store i8 3, ptr %i.ry, align 1, !tbaa !48
  br label %.lr.ph868.31337

.lr.ph868.31337:                                  ; preds = %bb.al, %bb.ak, %.lr.ph868.21327
  %.493.i.21330 = phi i32 [ %.493.i.11320, %bb.ak ], [ %spec.select.i.21329, %bb.al ], [ %.493.i.11320, %.lr.ph868.21327 ] ; 3 uses
  %.3.i328.21331 = phi i32 [ %.3.i328.11321, %bb.ak ], [ 3, %bb.al ], [ %.3.i328.11321, %.lr.ph868.21327 ] ; 4 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.ot, i64 4
  %11 = load i8, ptr %10, align 4, !tbaa !48
  %i.rz = zext i8 %11 to i64
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.rz
  %i.sb = load i16, ptr %i.sa, align 2, !tbaa !116
  %i.sc = sext i16 %i.sb to i32                   ; 3 uses
  %i.sd = add i32 %i.ov, %i.sc
  %i.se = icmp ugt i32 %i.sd, %i.ow
  br i1 %i.se, label %bb.am, label %.lr.ph868.4

bb.am:                                            ; preds = %.lr.ph868.31337
  %i.sf = lshr i32 %i.sc, 31
  %i.sg = trunc nuw nsw i32 %i.sf to i8
  %i.sh = getelementptr inbounds nuw i8, ptr %.0194992, i64 260
  store i8 %i.sg, ptr %i.sh, align 4, !tbaa !48
  %i.si = call i32 @llvm.abs.i32(i32 %i.sc, i1 true)
  %i.sj = select i1 %.not50.i298, i32 252167, i32 242189
  %i.sk = mul nuw nsw i32 %i.sj, %i.si
  %i.sl = add nuw nsw i32 %i.sk, 2097152
  %i.sm = lshr i32 %i.sl, 22                      ; 4 uses
  %.not102.i.31338 = icmp eq i32 %i.sm, 0
  br i1 %.not102.i.31338, label %.lr.ph868.4, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.sn = trunc nuw nsw i32 %i.sm to i16
  %i.so = getelementptr inbounds nuw i8, ptr %.0194992, i64 72
  store i16 %i.sn, ptr %i.so, align 4, !tbaa !116
  %spec.select.i.31339 = call i32 @llvm.smax.i32(i32 %i.sm, i32 %.493.i.21330)
  %i.sp = sub nuw nsw i32 3, %.3.i328.21331
  %i.sq = zext nneg i32 %i.sp to i64
  %i.sr = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.sq
  %i.ss = zext nneg i32 %i.sm to i64
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %i.ss
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 4
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !53
  %i.sw = load i32, ptr %i.pa, align 4, !tbaa !51
  %i.sx = add nsw i32 %i.sw, %i.sv
  store i32 %i.sx, ptr %i.pa, align 4, !tbaa !51
  %i.sy = zext nneg i32 %.3.i328.21331 to i64
  %i.sz = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.sy
  store i8 4, ptr %i.sz, align 1, !tbaa !48
  br label %.lr.ph868.4

.lr.ph868.4:                                      ; preds = %bb.an, %bb.am, %.lr.ph868.31337
  %.493.i.31340 = phi i32 [ %.493.i.21330, %bb.am ], [ %spec.select.i.31339, %bb.an ], [ %.493.i.21330, %.lr.ph868.31337 ] ; 3 uses
  %.3.i328.31341 = phi i32 [ %.3.i328.21331, %bb.am ], [ 4, %bb.an ], [ %.3.i328.21331, %.lr.ph868.31337 ] ; 4 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.ot, i64 5
  %13 = load i8, ptr %12, align 1, !tbaa !48
  %i.ta = zext i8 %13 to i64
  %i.tb = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ta
  %i.tc = load i16, ptr %i.tb, align 2, !tbaa !116
  %i.td = sext i16 %i.tc to i32                   ; 3 uses
  %i.te = add i32 %i.ov, %i.td
  %i.tf = icmp ugt i32 %i.te, %i.ow
  br i1 %i.tf, label %bb.ao, label %.lr.ph868.preheader.1

bb.ao:                                            ; preds = %.lr.ph868.4
  %i.tg = lshr i32 %i.td, 31
  %i.th = trunc nuw nsw i32 %i.tg to i8
  %i.ti = getelementptr inbounds nuw i8, ptr %.0194992, i64 261
  store i8 %i.th, ptr %i.ti, align 1, !tbaa !48
  %i.tj = call i32 @llvm.abs.i32(i32 %i.td, i1 true)
  %i.tk = mul nuw nsw i32 %i.tj, 242189
  %i.tl = add nuw nsw i32 %i.tk, 2097152
  %i.tm = lshr i32 %i.tl, 22                      ; 4 uses
  %.not102.i.4 = icmp eq i32 %i.tm, 0
  br i1 %.not102.i.4, label %.lr.ph868.preheader.1, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.tn = trunc nuw nsw i32 %i.tm to i16
  %i.to = getelementptr inbounds nuw i8, ptr %.0194992, i64 74
  store i16 %i.tn, ptr %i.to, align 2, !tbaa !116
  %spec.select.i.4 = call i32 @llvm.smax.i32(i32 %i.tm, i32 %.493.i.31340)
  %i.tp = sub nuw nsw i32 4, %.3.i328.31341
  %i.tq = zext nneg i32 %i.tp to i64
  %i.tr = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.tq
  %i.ts = zext nneg i32 %i.tm to i64
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %i.ts
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 4
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !53
  %i.tw = load i32, ptr %i.pa, align 4, !tbaa !51
  %i.tx = add nsw i32 %i.tw, %i.tv
  store i32 %i.tx, ptr %i.pa, align 4, !tbaa !51
  %i.ty = zext nneg i32 %.3.i328.31341 to i64
  %i.tz = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.ty
  store i8 5, ptr %i.tz, align 1, !tbaa !48
  br label %.lr.ph868.preheader.1

bb.aq:                                            ; preds = %bb.aq, %.loopexit694.3
  %indvars.iv1344 = phi i64 [ %indvars.iv.next1345, %bb.aq ], [ 0, %.loopexit694.3 ] ; 4 uses
  %i.ua = trunc nuw nsw i64 %indvars.iv1344 to i32
  store i32 %i.ua, ptr %i.or, align 4, !tbaa !124
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr @dv_set_class_number_sd.classes, i64 %indvars.iv1344
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !51
  %i.ud = icmp sgt i32 %.493.i.3, %i.uc
  %indvars.iv.next1345 = add nuw nsw i64 %indvars.iv1344, 1
  br i1 %i.ud, label %bb.aq, label %bb.ar, !llvm.loop !85

bb.ar:                                            ; preds = %bb.aq
  %i.ue = icmp samesign ugt i64 %indvars.iv1344, 2
  br i1 %i.ue, label %bb.as, label %.dv_init_enc_block.exit303_crit_edge

.dv_init_enc_block.exit303_crit_edge:             ; preds = %bb.ar
  %.pre1660 = load i32, ptr %i.pa, align 4, !tbaa !51
  %.phi.trans.insert1661 = getelementptr inbounds nuw i8, ptr %.0194992, i64 20
  %.pre1662 = load i32, ptr %.phi.trans.insert1661, align 4, !tbaa !51
  %.phi.trans.insert1663 = getelementptr inbounds nuw i8, ptr %.0194992, i64 24
  %.pre1664 = load i32, ptr %.phi.trans.insert1663, align 4, !tbaa !51
  %.phi.trans.insert1665 = getelementptr inbounds nuw i8, ptr %.0194992, i64 28
  %.pre1666 = load i32, ptr %.phi.trans.insert1665, align 4, !tbaa !51
  br label %dv_init_enc_block.exit303

bb.as:                                            ; preds = %bb.ar
  store i32 3, ptr %i.or, align 4, !tbaa !124
  %i.uf = load i8, ptr %i.pc, align 4, !tbaa !48  ; 2 uses
  %i.ug = zext i8 %i.uf to i32                    ; 2 uses
  store i32 0, ptr %i.oz, align 4, !tbaa !51
  store i32 1, ptr %i.pa, align 4, !tbaa !51
  %i.uh = icmp ult i8 %i.uf, 6
  br i1 %i.uh, label %.lr.ph878, label %.loopexit693

.loopexit693:                                     ; preds = %bb.ba, %bb.as
  %i.ui = phi i32 [ 1, %bb.as ], [ %i.xx, %bb.ba ]
  %.399.i.lcssa = phi i32 [ %i.ug, %bb.as ], [ %i.ya, %bb.ba ] ; 3 uses
  %.5.i.lcssa = phi i32 [ 0, %bb.as ], [ %.6.i, %bb.ba ] ; 3 uses
  store i32 %.5.i.lcssa, ptr %i.ko, align 4, !tbaa !51
  store i32 1, ptr %i.kp, align 4, !tbaa !51
  %i.uj = icmp samesign ult i32 %.399.i.lcssa, 21
  br i1 %i.uj, label %.lr.ph878.1, label %.loopexit693.1

.lr.ph878.1:                                      ; preds = %.loopexit693, %bb.au
  %i.uk = phi i32 [ %i.vb, %bb.au ], [ 1, %.loopexit693 ] ; 2 uses
  %.5.i877.1 = phi i32 [ %.6.i.1, %bb.au ], [ %.5.i.lcssa, %.loopexit693 ] ; 3 uses
  %.399.i876.1 = phi i32 [ %i.ve, %bb.au ], [ %.399.i.lcssa, %.loopexit693 ] ; 4 uses
  %i.ul = zext nneg i32 %.399.i876.1 to i64       ; 2 uses
  %i.um = getelementptr inbounds nuw [2 x i8], ptr %i.oy, i64 %i.ul ; 2 uses
  %i.un = load i16, ptr %i.um, align 2, !tbaa !116
  %i.uo = ashr i16 %i.un, 1                       ; 3 uses
  store i16 %i.uo, ptr %i.um, align 2, !tbaa !116
  %.not.i326.1 = icmp eq i16 %i.uo, 0
  br i1 %.not.i326.1, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph878.1
  %i.up = xor i32 %.5.i877.1, -1
  %i.uq = add nsw i32 %.399.i876.1, %i.up
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.ur
  %i.ut = sext i16 %i.uo to i64
  %i.uu = getelementptr inbounds [8 x i8], ptr %i.us, i64 %i.ut
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 4
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !53
  %i.ux = add nsw i32 %i.uk, %i.uw                ; 2 uses
  store i32 %i.ux, ptr %i.kp, align 4, !tbaa !51
  %i.uy = trunc nuw nsw i32 %.399.i876.1 to i8
  %i.uz = zext nneg i32 %.5.i877.1 to i64
  %i.va = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.uz
  store i8 %i.uy, ptr %i.va, align 1, !tbaa !48
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph878.1
  %i.vb = phi i32 [ %i.ux, %bb.at ], [ %i.uk, %.lr.ph878.1 ] ; 2 uses
  %.6.i.1 = phi i32 [ %.399.i876.1, %bb.at ], [ %.5.i877.1, %.lr.ph878.1 ] ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.ul
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !48  ; 2 uses
  %i.ve = zext i8 %i.vd to i32                    ; 2 uses
  %i.vf = icmp ult i8 %i.vd, 21
  br i1 %i.vf, label %.lr.ph878.1, label %.loopexit693.1, !llvm.loop !86

.loopexit693.1:                                   ; preds = %bb.au, %.loopexit693
  %i.vg = phi i32 [ 1, %.loopexit693 ], [ %i.vb, %bb.au ]
  %.399.i.lcssa.1 = phi i32 [ %.399.i.lcssa, %.loopexit693 ], [ %i.ve, %bb.au ] ; 3 uses
  %.5.i.lcssa.1 = phi i32 [ %.5.i.lcssa, %.loopexit693 ], [ %.6.i.1, %bb.au ] ; 3 uses
  store i32 %.5.i.lcssa.1, ptr %i.lx, align 4, !tbaa !51
  store i32 1, ptr %i.ly, align 4, !tbaa !51
  %i.vh = icmp samesign ult i32 %.399.i.lcssa.1, 43
  br i1 %i.vh, label %.lr.ph878.2, label %.loopexit693.2

.lr.ph878.2:                                      ; preds = %.loopexit693.1, %bb.aw
  %i.vi = phi i32 [ %i.vz, %bb.aw ], [ 1, %.loopexit693.1 ] ; 2 uses
  %.5.i877.2 = phi i32 [ %.6.i.2, %bb.aw ], [ %.5.i.lcssa.1, %.loopexit693.1 ] ; 3 uses
  %.399.i876.2 = phi i32 [ %i.wc, %bb.aw ], [ %.399.i.lcssa.1, %.loopexit693.1 ] ; 4 uses
  %i.vj = zext nneg i32 %.399.i876.2 to i64       ; 2 uses
  %i.vk = getelementptr inbounds nuw [2 x i8], ptr %i.oy, i64 %i.vj ; 2 uses
  %i.vl = load i16, ptr %i.vk, align 2, !tbaa !116
  %i.vm = ashr i16 %i.vl, 1                       ; 3 uses
  store i16 %i.vm, ptr %i.vk, align 2, !tbaa !116
  %.not.i326.2 = icmp eq i16 %i.vm, 0
  br i1 %.not.i326.2, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph878.2
  %i.vn = xor i32 %.5.i877.2, -1
  %i.vo = add nsw i32 %.399.i876.2, %i.vn
  %i.vp = sext i32 %i.vo to i64
  %i.vq = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.vp
  %i.vr = sext i16 %i.vm to i64
  %i.vs = getelementptr inbounds [8 x i8], ptr %i.vq, i64 %i.vr
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 4
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !53
  %i.vv = add nsw i32 %i.vi, %i.vu                ; 2 uses
  store i32 %i.vv, ptr %i.ly, align 4, !tbaa !51
  %i.vw = trunc nuw nsw i32 %.399.i876.2 to i8
  %i.vx = zext nneg i32 %.5.i877.2 to i64
  %i.vy = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.vx
  store i8 %i.vw, ptr %i.vy, align 1, !tbaa !48
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph878.2
  %i.vz = phi i32 [ %i.vv, %bb.av ], [ %i.vi, %.lr.ph878.2 ] ; 2 uses
  %.6.i.2 = phi i32 [ %.399.i876.2, %bb.av ], [ %.5.i877.2, %.lr.ph878.2 ] ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.vj
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !48  ; 2 uses
  %i.wc = zext i8 %i.wb to i32                    ; 2 uses
  %i.wd = icmp ult i8 %i.wb, 43
  br i1 %i.wd, label %.lr.ph878.2, label %.loopexit693.2, !llvm.loop !86

.loopexit693.2:                                   ; preds = %bb.aw, %.loopexit693.1
  %i.we = phi i32 [ 1, %.loopexit693.1 ], [ %i.vz, %bb.aw ]
  %.399.i.lcssa.2 = phi i32 [ %.399.i.lcssa.1, %.loopexit693.1 ], [ %i.wc, %bb.aw ] ; 3 uses
  %.5.i.lcssa.2 = phi i32 [ %.5.i.lcssa.1, %.loopexit693.1 ], [ %.6.i.2, %bb.aw ] ; 3 uses
  store i32 %.5.i.lcssa.2, ptr %i.ng, align 4, !tbaa !51
  store i32 1, ptr %i.nh, align 4, !tbaa !51
  %i.wf = icmp samesign ult i32 %.399.i.lcssa.2, 64
  br i1 %i.wf, label %.lr.ph878.3, label %.loopexit693.3

.lr.ph878.3:                                      ; preds = %.loopexit693.2, %bb.ay
  %i.wg = phi i32 [ %i.wx, %bb.ay ], [ 1, %.loopexit693.2 ] ; 2 uses
  %.5.i877.3 = phi i32 [ %.6.i.3, %bb.ay ], [ %.5.i.lcssa.2, %.loopexit693.2 ] ; 3 uses
  %.399.i876.3 = phi i32 [ %i.xa, %bb.ay ], [ %.399.i.lcssa.2, %.loopexit693.2 ] ; 4 uses
  %i.wh = zext nneg i32 %.399.i876.3 to i64       ; 2 uses
  %i.wi = getelementptr inbounds nuw [2 x i8], ptr %i.oy, i64 %i.wh ; 2 uses
  %i.wj = load i16, ptr %i.wi, align 2, !tbaa !116
  %i.wk = ashr i16 %i.wj, 1                       ; 3 uses
  store i16 %i.wk, ptr %i.wi, align 2, !tbaa !116
  %.not.i326.3 = icmp eq i16 %i.wk, 0
  br i1 %.not.i326.3, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph878.3
  %i.wl = xor i32 %.5.i877.3, -1
  %i.wm = add nsw i32 %.399.i876.3, %i.wl
  %i.wn = sext i32 %i.wm to i64
  %i.wo = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.wn
  %i.wp = sext i16 %i.wk to i64
  %i.wq = getelementptr inbounds [8 x i8], ptr %i.wo, i64 %i.wp
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 4
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !53
  %i.wt = add nsw i32 %i.wg, %i.ws                ; 2 uses
  store i32 %i.wt, ptr %i.nh, align 4, !tbaa !51
  %i.wu = trunc nuw nsw i32 %.399.i876.3 to i8
  %i.wv = zext nneg i32 %.5.i877.3 to i64
end_hunk_1
begin_hunk_2_@dv_encode_video_segment:bb.a
  br label %.lr.ph908.1

.lr.ph908.1:                                      ; preds = %bb.cq, %.lr.ph908.preheader.1
  %indvars.iv1402.1 = phi i64 [ 6, %.lr.ph908.preheader.1 ], [ %indvars.iv.next1403.1, %bb.cq ] ; 7 uses
  %.1.i363907.1 = phi i32 [ %.3.i365.4, %.lr.ph908.preheader.1 ], [ %.3.i365.1, %bb.cq ] ; 4 uses
  %.190.i362906.1 = phi i32 [ %.493.i364.4, %.lr.ph908.preheader.1 ], [ %.493.i364.1, %bb.cq ] ; 3 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.avb, i64 %indvars.iv1402.1
  %i.aqy = load i8, ptr %i.aqx, align 1, !tbaa !48
  %i.aqz = zext i8 %i.aqy to i64
  %i.ara = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.aqz
  %i.arb = load i16, ptr %i.ara, align 2, !tbaa !116
  %i.arc = sext i16 %i.arb to i32                 ; 3 uses
  %i.ard = add i32 %i.avd, %i.arc
  %i.are = icmp ugt i32 %i.ard, %i.ave
  br i1 %i.are, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %.lr.ph908.1
  %i.arf = lshr i32 %i.arc, 31
  %i.arg = trunc nuw nsw i32 %i.arf to i8
  %i.arh = getelementptr inbounds nuw i8, ptr %i.avj, i64 %indvars.iv1402.1
  store i8 %i.arg, ptr %i.arh, align 1, !tbaa !48
  %i.ari = call i32 @llvm.abs.i32(i32 %i.arc, i1 true)
  %i.arj = getelementptr inbounds nuw [4 x i8], ptr %i.avc, i64 %indvars.iv1402.1
  %i.ark = load i32, ptr %i.arj, align 4, !tbaa !51
  %i.arl = mul nsw i32 %i.ark, %i.ari
  %i.arm = add nsw i32 %i.arl, 2097152
  %i.arn = ashr i32 %i.arm, 22                    ; 4 uses
  %.not102.i366.1 = icmp eq i32 %i.arn, 0
  br i1 %.not102.i366.1, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aro = trunc nsw i32 %i.arn to i16
  %i.arp = getelementptr inbounds nuw [2 x i8], ptr %i.avg, i64 %indvars.iv1402.1
  store i16 %i.aro, ptr %i.arp, align 2, !tbaa !116
  %spec.select.i367.1 = call i32 @llvm.smax.i32(i32 %i.arn, i32 %.190.i362906.1)
  %i.arq = xor i32 %.1.i363907.1, -1
  %i.arr = trunc nsw i64 %indvars.iv1402.1 to i32 ; 2 uses
  %i.ars = add i32 %i.arr, %i.arq
  %i.art = sext i32 %i.ars to i64
  %i.aru = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.art
  %i.arv = sext i32 %i.arn to i64
  %i.arw = getelementptr inbounds [8 x i8], ptr %i.aru, i64 %i.arv
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arw, i64 4
  %i.ary = load i32, ptr %i.arx, align 4, !tbaa !53
  %i.arz = load i32, ptr %i.aqw, align 4, !tbaa !51
  %i.asa = add nsw i32 %i.arz, %i.ary
  store i32 %i.asa, ptr %i.aqw, align 4, !tbaa !51
  %i.asb = trunc i64 %indvars.iv1402.1 to i8
  %i.asc = sext i32 %.1.i363907.1 to i64
  %i.asd = getelementptr inbounds i8, ptr %i.avk, i64 %i.asc
  store i8 %i.asb, ptr %i.asd, align 1, !tbaa !48
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %.lr.ph908.1
  %.493.i364.1 = phi i32 [ %.190.i362906.1, %bb.co ], [ %spec.select.i367.1, %bb.cp ], [ %.190.i362906.1, %.lr.ph908.1 ] ; 2 uses
  %.3.i365.1 = phi i32 [ %.1.i363907.1, %bb.co ], [ %i.arr, %bb.cp ], [ %.1.i363907.1, %.lr.ph908.1 ] ; 3 uses
  %indvars.iv.next1403.1 = add nuw nsw i64 %indvars.iv1402.1, 1 ; 2 uses
  %exitcond.11409.not = icmp eq i64 %indvars.iv.next1403.1, 21
  br i1 %exitcond.11409.not, label %.lr.ph908.preheader.2, label %.lr.ph908.1, !llvm.loop !84

.lr.ph908.preheader.2:                            ; preds = %bb.cq
  %i.ase = getelementptr inbounds nuw i8, ptr %.0194992, i64 960 ; 2 uses
  store i32 %.3.i365.1, ptr %i.ase, align 4, !tbaa !51
  %i.asf = getelementptr inbounds nuw i8, ptr %.0194992, i64 944 ; 5 uses
  store i32 1, ptr %i.asf, align 4, !tbaa !51
  br label %.lr.ph908.2

.lr.ph908.2:                                      ; preds = %bb.ct, %.lr.ph908.preheader.2
  %indvars.iv1402.2 = phi i64 [ 21, %.lr.ph908.preheader.2 ], [ %indvars.iv.next1403.2, %bb.ct ] ; 7 uses
  %.1.i363907.2 = phi i32 [ %.3.i365.1, %.lr.ph908.preheader.2 ], [ %.3.i365.2, %bb.ct ] ; 4 uses
  %.190.i362906.2 = phi i32 [ %.493.i364.1, %.lr.ph908.preheader.2 ], [ %.493.i364.2, %bb.ct ] ; 3 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %i.avb, i64 %indvars.iv1402.2
  %i.ash = load i8, ptr %i.asg, align 1, !tbaa !48
  %i.asi = zext i8 %i.ash to i64
  %i.asj = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.asi
  %i.ask = load i16, ptr %i.asj, align 2, !tbaa !116
  %i.asl = sext i16 %i.ask to i32                 ; 3 uses
  %i.asm = add i32 %i.avd, %i.asl
  %i.asn = icmp ugt i32 %i.asm, %i.ave
  br i1 %i.asn, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %.lr.ph908.2
  %i.aso = lshr i32 %i.asl, 31
  %i.asp = trunc nuw nsw i32 %i.aso to i8
  %i.asq = getelementptr inbounds nuw i8, ptr %i.avj, i64 %indvars.iv1402.2
  store i8 %i.asp, ptr %i.asq, align 1, !tbaa !48
  %i.asr = call i32 @llvm.abs.i32(i32 %i.asl, i1 true)
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %i.avc, i64 %indvars.iv1402.2
  %i.ast = load i32, ptr %i.ass, align 4, !tbaa !51
  %i.asu = mul nsw i32 %i.ast, %i.asr
  %i.asv = add nsw i32 %i.asu, 2097152
  %i.asw = ashr i32 %i.asv, 22                    ; 4 uses
  %.not102.i366.2 = icmp eq i32 %i.asw, 0
  br i1 %.not102.i366.2, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.asx = trunc nsw i32 %i.asw to i16
  %i.asy = getelementptr inbounds nuw [2 x i8], ptr %i.avg, i64 %indvars.iv1402.2
  store i16 %i.asx, ptr %i.asy, align 2, !tbaa !116
  %spec.select.i367.2 = call i32 @llvm.smax.i32(i32 %i.asw, i32 %.190.i362906.2)
  %i.asz = xor i32 %.1.i363907.2, -1
  %i.ata = trunc nsw i64 %indvars.iv1402.2 to i32 ; 2 uses
  %i.atb = add i32 %i.ata, %i.asz
  %i.atc = sext i32 %i.atb to i64
  %i.atd = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.atc
  %i.ate = sext i32 %i.asw to i64
  %i.atf = getelementptr inbounds [8 x i8], ptr %i.atd, i64 %i.ate
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 4
  %i.ath = load i32, ptr %i.atg, align 4, !tbaa !53
  %i.ati = load i32, ptr %i.asf, align 4, !tbaa !51
  %i.atj = add nsw i32 %i.ati, %i.ath
  store i32 %i.atj, ptr %i.asf, align 4, !tbaa !51
  %i.atk = trunc i64 %indvars.iv1402.2 to i8
  %i.atl = sext i32 %.1.i363907.2 to i64
  %i.atm = getelementptr inbounds i8, ptr %i.avk, i64 %i.atl
  store i8 %i.atk, ptr %i.atm, align 1, !tbaa !48
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %.lr.ph908.2
  %.493.i364.2 = phi i32 [ %.190.i362906.2, %bb.cr ], [ %spec.select.i367.2, %bb.cs ], [ %.190.i362906.2, %.lr.ph908.2 ] ; 2 uses
  %.3.i365.2 = phi i32 [ %.1.i363907.2, %bb.cr ], [ %i.ata, %bb.cs ], [ %.1.i363907.2, %.lr.ph908.2 ] ; 3 uses
  %indvars.iv.next1403.2 = add nuw nsw i64 %indvars.iv1402.2, 1 ; 2 uses
  %exitcond.21410.not = icmp eq i64 %indvars.iv.next1403.2, 43
  br i1 %exitcond.21410.not, label %.lr.ph908.preheader.3, label %.lr.ph908.2, !llvm.loop !84

.lr.ph908.preheader.3:                            ; preds = %bb.ct
  %i.atn = getelementptr inbounds nuw i8, ptr %.0194992, i64 964 ; 2 uses
  store i32 %.3.i365.2, ptr %i.atn, align 4, !tbaa !51
  %i.ato = getelementptr inbounds nuw i8, ptr %.0194992, i64 948 ; 5 uses
  store i32 1, ptr %i.ato, align 4, !tbaa !51
  br label %.lr.ph908.3

.lr.ph908.3:                                      ; preds = %bb.cw, %.lr.ph908.preheader.3
  %indvars.iv1402.3 = phi i64 [ 43, %.lr.ph908.preheader.3 ], [ %indvars.iv.next1403.3, %bb.cw ] ; 7 uses
  %.1.i363907.3 = phi i32 [ %.3.i365.2, %.lr.ph908.preheader.3 ], [ %.3.i365.3, %bb.cw ] ; 4 uses
  %.190.i362906.3 = phi i32 [ %.493.i364.2, %.lr.ph908.preheader.3 ], [ %.493.i364.3, %bb.cw ] ; 3 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %i.avb, i64 %indvars.iv1402.3
  %i.atq = load i8, ptr %i.atp, align 1, !tbaa !48
  %i.atr = zext i8 %i.atq to i64
  %i.ats = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.atr
  %i.att = load i16, ptr %i.ats, align 2, !tbaa !116
  %i.atu = sext i16 %i.att to i32                 ; 3 uses
  %i.atv = add i32 %i.avd, %i.atu
  %i.atw = icmp ugt i32 %i.atv, %i.ave
  br i1 %i.atw, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %.lr.ph908.3
  %i.atx = lshr i32 %i.atu, 31
  %i.aty = trunc nuw nsw i32 %i.atx to i8
  %i.atz = getelementptr inbounds nuw i8, ptr %i.avj, i64 %indvars.iv1402.3
  store i8 %i.aty, ptr %i.atz, align 1, !tbaa !48
  %i.aua = call i32 @llvm.abs.i32(i32 %i.atu, i1 true)
  %i.aub = getelementptr inbounds nuw [4 x i8], ptr %i.avc, i64 %indvars.iv1402.3
  %i.auc = load i32, ptr %i.aub, align 4, !tbaa !51
  %i.aud = mul nsw i32 %i.auc, %i.aua
  %i.aue = add nsw i32 %i.aud, 2097152
  %i.auf = ashr i32 %i.aue, 22                    ; 4 uses
  %.not102.i366.3 = icmp eq i32 %i.auf, 0
  br i1 %.not102.i366.3, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.aug = trunc nsw i32 %i.auf to i16
  %i.auh = getelementptr inbounds nuw [2 x i8], ptr %i.avg, i64 %indvars.iv1402.3
  store i16 %i.aug, ptr %i.auh, align 2, !tbaa !116
  %spec.select.i367.3 = call i32 @llvm.smax.i32(i32 %i.auf, i32 %.190.i362906.3)
  %i.aui = xor i32 %.1.i363907.3, -1
  %i.auj = trunc nsw i64 %indvars.iv1402.3 to i32 ; 2 uses
  %i.auk = add i32 %i.auj, %i.aui
  %i.aul = sext i32 %i.auk to i64
  %i.aum = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.aul
  %i.aun = sext i32 %i.auf to i64
  %i.auo = getelementptr inbounds [8 x i8], ptr %i.aum, i64 %i.aun
  %i.aup = getelementptr inbounds nuw i8, ptr %i.auo, i64 4
  %i.auq = load i32, ptr %i.aup, align 4, !tbaa !53
  %i.aur = load i32, ptr %i.ato, align 4, !tbaa !51
  %i.aus = add nsw i32 %i.aur, %i.auq
  store i32 %i.aus, ptr %i.ato, align 4, !tbaa !51
  %i.aut = trunc i64 %indvars.iv1402.3 to i8
  %i.auu = sext i32 %.1.i363907.3 to i64
  %i.auv = getelementptr inbounds i8, ptr %i.avk, i64 %i.auu
  store i8 %i.aut, ptr %i.auv, align 1, !tbaa !48
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %.lr.ph908.3
  %.493.i364.3 = phi i32 [ %.190.i362906.3, %bb.cu ], [ %spec.select.i367.3, %bb.cv ], [ %.190.i362906.3, %.lr.ph908.3 ] ; 2 uses
  %.3.i365.3 = phi i32 [ %.1.i363907.3, %bb.cu ], [ %i.auj, %bb.cv ], [ %.1.i363907.3, %.lr.ph908.3 ] ; 2 uses
  %indvars.iv.next1403.3 = add nuw nsw i64 %indvars.iv1402.3, 1 ; 2 uses
  %exitcond.31411.not = icmp eq i64 %indvars.iv.next1403.3, 64
  br i1 %exitcond.31411.not, label %.loopexit690.3, label %.lr.ph908.3, !llvm.loop !84

.loopexit690.3:                                   ; preds = %bb.cw
  %i.auw = sext i32 %.3.i365.3 to i64
  %i.aux = getelementptr inbounds i8, ptr %i.avk, i64 %i.auw
  store i8 64, ptr %i.aux, align 1, !tbaa !48
  %i.auy = getelementptr inbounds nuw i8, ptr %.0194992, i64 976 ; 2 uses
  br label %bb.dh

.lr.ph908.preheader:                              ; preds = %bb.cl
  %i.auz = getelementptr inbounds nuw i8, ptr %.0194992, i64 980
  %i.ava = load i32, ptr %i.auz, align 4, !tbaa !119
  %.not50.i284 = icmp eq i32 %i.ava, 0            ; 5 uses
  %i.avb = select i1 %.not50.i284, ptr @ff_zigzag_direct, ptr @ff_dv_zigzag248_direct ; 8 uses
  %i.avc = select i1 %.not50.i284, ptr @dv_weight_88, ptr @dv_weight_248 ; 3 uses
  %i.avd = load i32, ptr %i.ad, align 8, !tbaa !125 ; 9 uses
  %i.ave = shl i32 %i.avd, 1                      ; 8 uses
  %i.avf = load i16, ptr %i.h, align 16, !tbaa !116
  %i.avg = getelementptr inbounds nuw i8, ptr %.0194992, i64 984 ; 8 uses
  store i16 %i.avf, ptr %i.avg, align 4, !tbaa !116
  %i.avh = getelementptr inbounds nuw i8, ptr %.0194992, i64 952 ; 2 uses
  %i.avi = getelementptr inbounds nuw i8, ptr %.0194992, i64 936 ; 11 uses
  %i.avj = getelementptr inbounds nuw i8, ptr %.0194992, i64 1176 ; 3 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %.0194992, i64 1112 ; 19 uses
  store i32 0, ptr %i.avh, align 4, !tbaa !51
  store i32 1, ptr %i.avi, align 4, !tbaa !51
  %14 = getelementptr inbounds nuw i8, ptr %i.avb, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !48
  %i.avl = zext i8 %15 to i64
  %i.avm = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.avl
  %i.avn = load i16, ptr %i.avm, align 2, !tbaa !116
  %i.avo = sext i16 %i.avn to i32                 ; 3 uses
  %i.avp = add i32 %i.avd, %i.avo
  %i.avq = icmp ugt i32 %i.avp, %i.ave
  br i1 %i.avq, label %bb.cx, label %.lr.ph908.11415

bb.cx:                                            ; preds = %.lr.ph908.preheader
  %i.avr = lshr i32 %i.avo, 31
  %i.avs = trunc nuw nsw i32 %i.avr to i8
  %i.avt = getelementptr inbounds nuw i8, ptr %.0194992, i64 1177
  store i8 %i.avs, ptr %i.avt, align 1, !tbaa !48
  %i.avu = call i32 @llvm.abs.i32(i32 %i.avo, i1 true)
  %i.avv = select i1 %.not50.i284, i32 257107, i32 262144
  %i.avw = mul nuw nsw i32 %i.avv, %i.avu
  %i.avx = add nuw nsw i32 %i.avw, 2097152
  %i.avy = lshr i32 %i.avx, 22                    ; 4 uses
  %.not102.i366 = icmp eq i32 %i.avy, 0
  br i1 %.not102.i366, label %.lr.ph908.11415, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.avz = trunc nuw nsw i32 %i.avy to i16
  %i.awa = getelementptr inbounds nuw i8, ptr %.0194992, i64 986
  store i16 %i.avz, ptr %i.awa, align 2, !tbaa !116
  %i.awb = zext nneg i32 %i.avy to i64
  %i.awc = getelementptr inbounds nuw [8 x i8], ptr @dv_vlc_map, i64 %i.awb
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awc, i64 4
  %i.awe = load i32, ptr %i.awd, align 4, !tbaa !53
  %i.awf = add nsw i32 %i.awe, 1                  ; 2 uses
  store i32 %i.awf, ptr %i.avi, align 4, !tbaa !51
  store i8 1, ptr %i.avk, align 4, !tbaa !48
  br label %.lr.ph908.11415

.lr.ph908.11415:                                  ; preds = %bb.cy, %bb.cx, %.lr.ph908.preheader
  %i.awg = phi i32 [ 1, %bb.cx ], [ %i.awf, %bb.cy ], [ 1, %.lr.ph908.preheader ] ; 3 uses
  %.493.i364 = phi i32 [ -1, %bb.cx ], [ %i.avy, %bb.cy ], [ -1, %.lr.ph908.preheader ] ; 3 uses
  %.3.i365 = phi i32 [ 0, %bb.cx ], [ 1, %bb.cy ], [ 0, %.lr.ph908.preheader ] ; 4 uses
  %16 = getelementptr inbounds nuw i8, ptr %i.avb, i64 2
  %17 = load i8, ptr %16, align 2, !tbaa !48
  %i.awh = zext i8 %17 to i64
  %i.awi = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.awh
  %i.awj = load i16, ptr %i.awi, align 2, !tbaa !116
  %i.awk = sext i16 %i.awj to i32                 ; 3 uses
  %i.awl = add i32 %i.avd, %i.awk
  %i.awm = icmp ugt i32 %i.awl, %i.ave
  br i1 %i.awm, label %bb.cz, label %.lr.ph908.21425

bb.cz:                                            ; preds = %.lr.ph908.11415
  %i.awn = lshr i32 %i.awk, 31
  %i.awo = trunc nuw nsw i32 %i.awn to i8
  %i.awp = getelementptr inbounds nuw i8, ptr %.0194992, i64 1178
  store i8 %i.awo, ptr %i.awp, align 2, !tbaa !48
  %i.awq = call i32 @llvm.abs.i32(i32 %i.awk, i1 true)
  %i.awr = mul nuw nsw i32 %i.awq, 257107
  %i.aws = add nuw nsw i32 %i.awr, 2097152
  %i.awt = lshr i32 %i.aws, 22                    ; 4 uses
  %.not102.i366.11416 = icmp eq i32 %i.awt, 0
  br i1 %.not102.i366.11416, label %.lr.ph908.21425, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.awu = trunc nuw nsw i32 %i.awt to i16
  %i.awv = getelementptr inbounds nuw i8, ptr %.0194992, i64 988
  store i16 %i.awu, ptr %i.awv, align 4, !tbaa !116
  %spec.select.i367.11417 = call i32 @llvm.smax.i32(i32 %i.awt, i32 %.493.i364)
  %i.aww = xor i32 %.3.i365, 1
  %i.awx = zext nneg i32 %i.aww to i64
  %i.awy = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.awx
  %i.awz = zext nneg i32 %i.awt to i64
  %i.axa = getelementptr inbounds nuw [8 x i8], ptr %i.awy, i64 %i.awz
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 4
  %i.axc = load i32, ptr %i.axb, align 4, !tbaa !53
  %i.axd = add nsw i32 %i.awg, %i.axc             ; 2 uses
  store i32 %i.axd, ptr %i.avi, align 4, !tbaa !51
  %i.axe = zext nneg i32 %.3.i365 to i64
  %i.axf = getelementptr inbounds nuw i8, ptr %i.avk, i64 %i.axe
  store i8 2, ptr %i.axf, align 1, !tbaa !48
  br label %.lr.ph908.21425

.lr.ph908.21425:                                  ; preds = %bb.da, %bb.cz, %.lr.ph908.11415
  %i.axg = phi i32 [ %i.awg, %bb.cz ], [ %i.axd, %bb.da ], [ %i.awg, %.lr.ph908.11415 ]
  %.493.i364.11418 = phi i32 [ %.493.i364, %bb.cz ], [ %spec.select.i367.11417, %bb.da ], [ %.493.i364, %.lr.ph908.11415 ] ; 3 uses
  %.3.i365.11419 = phi i32 [ %.3.i365, %bb.cz ], [ 2, %bb.da ], [ %.3.i365, %.lr.ph908.11415 ] ; 4 uses
  %18 = getelementptr inbounds nuw i8, ptr %i.avb, i64 3
  %19 = load i8, ptr %18, align 1, !tbaa !48
  %i.axh = zext i8 %19 to i64
  %i.axi = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.axh
  %i.axj = load i16, ptr %i.axi, align 2, !tbaa !116
  %i.axk = sext i16 %i.axj to i32                 ; 3 uses
  %i.axl = add i32 %i.avd, %i.axk
  %i.axm = icmp ugt i32 %i.axl, %i.ave
  br i1 %i.axm, label %bb.db, label %.lr.ph908.31435

bb.db:                                            ; preds = %.lr.ph908.21425
  %i.axn = lshr i32 %i.axk, 31
  %i.axo = trunc nuw nsw i32 %i.axn to i8
  %i.axp = getelementptr inbounds nuw i8, ptr %.0194992, i64 1179
  store i8 %i.axo, ptr %i.axp, align 1, !tbaa !48
  %i.axq = call i32 @llvm.abs.i32(i32 %i.axk, i1 true)
  %i.axr = select i1 %.not50.i284, i32 242189, i32 257107
  %i.axs = mul nuw nsw i32 %i.axr, %i.axq
  %i.axt = add nuw nsw i32 %i.axs, 2097152
  %i.axu = lshr i32 %i.axt, 22                    ; 4 uses
  %.not102.i366.21426 = icmp eq i32 %i.axu, 0
  br i1 %.not102.i366.21426, label %.lr.ph908.31435, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.axv = trunc nuw nsw i32 %i.axu to i16
  %i.axw = getelementptr inbounds nuw i8, ptr %.0194992, i64 990
  store i16 %i.axv, ptr %i.axw, align 2, !tbaa !116
  %spec.select.i367.21427 = call i32 @llvm.smax.i32(i32 %i.axu, i32 %.493.i364.11418)
  %i.axx = sub nuw nsw i32 2, %.3.i365.11419
  %i.axy = zext nneg i32 %i.axx to i64
  %i.axz = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.axy
  %i.aya = zext nneg i32 %i.axu to i64
  %i.ayb = getelementptr inbounds nuw [8 x i8], ptr %i.axz, i64 %i.aya
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ayb, i64 4
  %i.ayd = load i32, ptr %i.ayc, align 4, !tbaa !53
  %i.aye = add nsw i32 %i.axg, %i.ayd
  store i32 %i.aye, ptr %i.avi, align 4, !tbaa !51
  %i.ayf = zext nneg i32 %.3.i365.11419 to i64
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.avk, i64 %i.ayf
  store i8 3, ptr %i.ayg, align 1, !tbaa !48
  br label %.lr.ph908.31435

.lr.ph908.31435:                                  ; preds = %bb.dc, %bb.db, %.lr.ph908.21425
  %.493.i364.21428 = phi i32 [ %.493.i364.11418, %bb.db ], [ %spec.select.i367.21427, %bb.dc ], [ %.493.i364.11418, %.lr.ph908.21425 ] ; 3 uses
  %.3.i365.21429 = phi i32 [ %.3.i365.11419, %bb.db ], [ 3, %bb.dc ], [ %.3.i365.11419, %.lr.ph908.21425 ] ; 4 uses
  %20 = getelementptr inbounds nuw i8, ptr %i.avb, i64 4
  %21 = load i8, ptr %20, align 4, !tbaa !48
  %i.ayh = zext i8 %21 to i64
  %i.ayi = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.ayh
  %i.ayj = load i16, ptr %i.ayi, align 2, !tbaa !116
  %i.ayk = sext i16 %i.ayj to i32                 ; 3 uses
  %i.ayl = add i32 %i.avd, %i.ayk
  %i.aym = icmp ugt i32 %i.ayl, %i.ave
  br i1 %i.aym, label %bb.dd, label %.lr.ph908.4

bb.dd:                                            ; preds = %.lr.ph908.31435
  %i.ayn = lshr i32 %i.ayk, 31
  %i.ayo = trunc nuw nsw i32 %i.ayn to i8
  %i.ayp = getelementptr inbounds nuw i8, ptr %.0194992, i64 1180
  store i8 %i.ayo, ptr %i.ayp, align 4, !tbaa !48
  %i.ayq = call i32 @llvm.abs.i32(i32 %i.ayk, i1 true)
  %i.ayr = select i1 %.not50.i284, i32 252167, i32 242189
  %i.ays = mul nuw nsw i32 %i.ayr, %i.ayq
  %i.ayt = add nuw nsw i32 %i.ays, 2097152
  %i.ayu = lshr i32 %i.ayt, 22                    ; 4 uses
  %.not102.i366.31436 = icmp eq i32 %i.ayu, 0
  br i1 %.not102.i366.31436, label %.lr.ph908.4, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ayv = trunc nuw nsw i32 %i.ayu to i16
  %i.ayw = getelementptr inbounds nuw i8, ptr %.0194992, i64 992
  store i16 %i.ayv, ptr %i.ayw, align 4, !tbaa !116
  %spec.select.i367.31437 = call i32 @llvm.smax.i32(i32 %i.ayu, i32 %.493.i364.21428)
  %i.ayx = sub nuw nsw i32 3, %.3.i365.21429
  %i.ayy = zext nneg i32 %i.ayx to i64
  %i.ayz = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.ayy
  %i.aza = zext nneg i32 %i.ayu to i64
  %i.azb = getelementptr inbounds nuw [8 x i8], ptr %i.ayz, i64 %i.aza
  %i.azc = getelementptr inbounds nuw i8, ptr %i.azb, i64 4
  %i.azd = load i32, ptr %i.azc, align 4, !tbaa !53
  %i.aze = load i32, ptr %i.avi, align 4, !tbaa !51
  %i.azf = add nsw i32 %i.aze, %i.azd
  store i32 %i.azf, ptr %i.avi, align 4, !tbaa !51
  %i.azg = zext nneg i32 %.3.i365.21429 to i64
  %i.azh = getelementptr inbounds nuw i8, ptr %i.avk, i64 %i.azg
  store i8 4, ptr %i.azh, align 1, !tbaa !48
  br label %.lr.ph908.4

.lr.ph908.4:                                      ; preds = %bb.de, %bb.dd, %.lr.ph908.31435
  %.493.i364.31438 = phi i32 [ %.493.i364.21428, %bb.dd ], [ %spec.select.i367.31437, %bb.de ], [ %.493.i364.21428, %.lr.ph908.31435 ] ; 3 uses
  %.3.i365.31439 = phi i32 [ %.3.i365.21429, %bb.dd ], [ 4, %bb.de ], [ %.3.i365.21429, %.lr.ph908.31435 ] ; 4 uses
  %22 = getelementptr inbounds nuw i8, ptr %i.avb, i64 5
  %23 = load i8, ptr %22, align 1, !tbaa !48
  %i.azi = zext i8 %23 to i64
  %i.azj = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.azi
  %i.azk = load i16, ptr %i.azj, align 2, !tbaa !116
  %i.azl = sext i16 %i.azk to i32                 ; 3 uses
  %i.azm = add i32 %i.avd, %i.azl
  %i.azn = icmp ugt i32 %i.azm, %i.ave
  br i1 %i.azn, label %bb.df, label %.lr.ph908.preheader.1

bb.df:                                            ; preds = %.lr.ph908.4
  %i.azo = lshr i32 %i.azl, 31
  %i.azp = trunc nuw nsw i32 %i.azo to i8
  %i.azq = getelementptr inbounds nuw i8, ptr %.0194992, i64 1181
  store i8 %i.azp, ptr %i.azq, align 1, !tbaa !48
  %i.azr = call i32 @llvm.abs.i32(i32 %i.azl, i1 true)
  %i.azs = mul nuw nsw i32 %i.azr, 242189
  %i.azt = add nuw nsw i32 %i.azs, 2097152
  %i.azu = lshr i32 %i.azt, 22                    ; 4 uses
  %.not102.i366.4 = icmp eq i32 %i.azu, 0
  br i1 %.not102.i366.4, label %.lr.ph908.preheader.1, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.azv = trunc nuw nsw i32 %i.azu to i16
  %i.azw = getelementptr inbounds nuw i8, ptr %.0194992, i64 994
  store i16 %i.azv, ptr %i.azw, align 2, !tbaa !116
  %spec.select.i367.4 = call i32 @llvm.smax.i32(i32 %i.azu, i32 %.493.i364.31438)
  %i.azx = sub nuw nsw i32 4, %.3.i365.31439
  %i.azy = zext nneg i32 %i.azx to i64
  %i.azz = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.azy
  %i.baa = zext nneg i32 %i.azu to i64
  %i.bab = getelementptr inbounds nuw [8 x i8], ptr %i.azz, i64 %i.baa
  %i.bac = getelementptr inbounds nuw i8, ptr %i.bab, i64 4
  %i.bad = load i32, ptr %i.bac, align 4, !tbaa !53
  %i.bae = load i32, ptr %i.avi, align 4, !tbaa !51
  %i.baf = add nsw i32 %i.bae, %i.bad
  store i32 %i.baf, ptr %i.avi, align 4, !tbaa !51
  %i.bag = zext nneg i32 %.3.i365.31439 to i64
  %i.bah = getelementptr inbounds nuw i8, ptr %i.avk, i64 %i.bag
  store i8 5, ptr %i.bah, align 1, !tbaa !48
  br label %.lr.ph908.preheader.1

bb.dh:                                            ; preds = %bb.dh, %.loopexit690.3
  %indvars.iv1442 = phi i64 [ %indvars.iv.next1443, %bb.dh ], [ 0, %.loopexit690.3 ] ; 4 uses
  %i.bai = trunc nuw nsw i64 %indvars.iv1442 to i32
  store i32 %i.bai, ptr %i.auy, align 4, !tbaa !124
  %i.baj = getelementptr inbounds nuw [4 x i8], ptr @dv_set_class_number_sd.classes, i64 %indvars.iv1442
  %i.bak = load i32, ptr %i.baj, align 4, !tbaa !51
  %i.bal = icmp sgt i32 %.493.i364.3, %i.bak
  %indvars.iv.next1443 = add nuw nsw i64 %indvars.iv1442, 1
  br i1 %i.bal, label %bb.dh, label %bb.di, !llvm.loop !85

bb.di:                                            ; preds = %bb.dh
  %i.bam = icmp samesign ugt i64 %indvars.iv1442, 2
  br i1 %i.bam, label %bb.dj, label %.dv_init_enc_block.exit289_crit_edge

.dv_init_enc_block.exit289_crit_edge:             ; preds = %bb.di
  %.pre1676 = load i32, ptr %i.avi, align 4, !tbaa !51
  %.phi.trans.insert1677 = getelementptr inbounds nuw i8, ptr %.0194992, i64 940
  %.pre1678 = load i32, ptr %.phi.trans.insert1677, align 4, !tbaa !51
  %.phi.trans.insert1679 = getelementptr inbounds nuw i8, ptr %.0194992, i64 944
  %.pre1680 = load i32, ptr %.phi.trans.insert1679, align 4, !tbaa !51
  %.phi.trans.insert1681 = getelementptr inbounds nuw i8, ptr %.0194992, i64 948
  %.pre1682 = load i32, ptr %.phi.trans.insert1681, align 4, !tbaa !51
  br label %dv_init_enc_block.exit289

bb.dj:                                            ; preds = %bb.di
  store i32 3, ptr %i.auy, align 4, !tbaa !124
  %i.ban = load i8, ptr %i.avk, align 4, !tbaa !48 ; 2 uses
  %i.bao = zext i8 %i.ban to i32                  ; 2 uses
  store i32 0, ptr %i.avh, align 4, !tbaa !51
  store i32 1, ptr %i.avi, align 4, !tbaa !51
  %i.bap = icmp ult i8 %i.ban, 6
  br i1 %i.bap, label %.lr.ph918, label %.loopexit689

.loopexit689:                                     ; preds = %bb.dr, %bb.dj
  %i.baq = phi i32 [ 1, %bb.dj ], [ %i.bef, %bb.dr ]
  %.399.i357.lcssa = phi i32 [ %i.bao, %bb.dj ], [ %i.bei, %bb.dr ] ; 3 uses
  %.5.i358.lcssa = phi i32 [ 0, %bb.dj ], [ %.6.i360, %bb.dr ] ; 3 uses
  store i32 %.5.i358.lcssa, ptr %i.aqv, align 4, !tbaa !51
  store i32 1, ptr %i.aqw, align 4, !tbaa !51
  %i.bar = icmp samesign ult i32 %.399.i357.lcssa, 21
  br i1 %i.bar, label %.lr.ph918.1, label %.loopexit689.1

.lr.ph918.1:                                      ; preds = %.loopexit689, %bb.dl
  %i.bas = phi i32 [ %i.bbj, %bb.dl ], [ 1, %.loopexit689 ] ; 2 uses
  %.5.i358917.1 = phi i32 [ %.6.i360.1, %bb.dl ], [ %.5.i358.lcssa, %.loopexit689 ] ; 3 uses
  %.399.i357916.1 = phi i32 [ %i.bbm, %bb.dl ], [ %.399.i357.lcssa, %.loopexit689 ] ; 4 uses
  %i.bat = zext nneg i32 %.399.i357916.1 to i64   ; 2 uses
  %i.bau = getelementptr inbounds nuw [2 x i8], ptr %i.avg, i64 %i.bat ; 2 uses
  %i.bav = load i16, ptr %i.bau, align 2, !tbaa !116
  %i.baw = ashr i16 %i.bav, 1                     ; 3 uses
  store i16 %i.baw, ptr %i.bau, align 2, !tbaa !116
  %.not.i359.1 = icmp eq i16 %i.baw, 0
  br i1 %.not.i359.1, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %.lr.ph918.1
  %i.bax = xor i32 %.5.i358917.1, -1
  %i.bay = add nsw i32 %.399.i357916.1, %i.bax
  %i.baz = sext i32 %i.bay to i64
  %i.bba = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.baz
  %i.bbb = sext i16 %i.baw to i64
  %i.bbc = getelementptr inbounds [8 x i8], ptr %i.bba, i64 %i.bbb
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 4
  %i.bbe = load i32, ptr %i.bbd, align 4, !tbaa !53
  %i.bbf = add nsw i32 %i.bas, %i.bbe             ; 2 uses
  store i32 %i.bbf, ptr %i.aqw, align 4, !tbaa !51
  %i.bbg = trunc nuw nsw i32 %.399.i357916.1 to i8
  %i.bbh = zext nneg i32 %.5.i358917.1 to i64
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.avk, i64 %i.bbh
  store i8 %i.bbg, ptr %i.bbi, align 1, !tbaa !48
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %.lr.ph918.1
  %i.bbj = phi i32 [ %i.bbf, %bb.dk ], [ %i.bas, %.lr.ph918.1 ] ; 2 uses
  %.6.i360.1 = phi i32 [ %.399.i357916.1, %bb.dk ], [ %.5.i358917.1, %.lr.ph918.1 ] ; 2 uses
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.avk, i64 %i.bat
  %i.bbl = load i8, ptr %i.bbk, align 1, !tbaa !48 ; 2 uses
  %i.bbm = zext i8 %i.bbl to i32                  ; 2 uses
  %i.bbn = icmp ult i8 %i.bbl, 21
  br i1 %i.bbn, label %.lr.ph918.1, label %.loopexit689.1, !llvm.loop !86

.loopexit689.1:                                   ; preds = %bb.dl, %.loopexit689
  %i.bbo = phi i32 [ 1, %.loopexit689 ], [ %i.bbj, %bb.dl ]
  %.399.i357.lcssa.1 = phi i32 [ %.399.i357.lcssa, %.loopexit689 ], [ %i.bbm, %bb.dl ] ; 3 uses
  %.5.i358.lcssa.1 = phi i32 [ %.5.i358.lcssa, %.loopexit689 ], [ %.6.i360.1, %bb.dl ] ; 3 uses
  store i32 %.5.i358.lcssa.1, ptr %i.ase, align 4, !tbaa !51
  store i32 1, ptr %i.asf, align 4, !tbaa !51
  %i.bbp = icmp samesign ult i32 %.399.i357.lcssa.1, 43
  br i1 %i.bbp, label %.lr.ph918.2, label %.loopexit689.2

.lr.ph918.2:                                      ; preds = %.loopexit689.1, %bb.dn
  %i.bbq = phi i32 [ %i.bch, %bb.dn ], [ 1, %.loopexit689.1 ] ; 2 uses
  %.5.i358917.2 = phi i32 [ %.6.i360.2, %bb.dn ], [ %.5.i358.lcssa.1, %.loopexit689.1 ] ; 3 uses
  %.399.i357916.2 = phi i32 [ %i.bck, %bb.dn ], [ %.399.i357.lcssa.1, %.loopexit689.1 ] ; 4 uses
  %i.bbr = zext nneg i32 %.399.i357916.2 to i64   ; 2 uses
  %i.bbs = getelementptr inbounds nuw [2 x i8], ptr %i.avg, i64 %i.bbr ; 2 uses
  %i.bbt = load i16, ptr %i.bbs, align 2, !tbaa !116
  %i.bbu = ashr i16 %i.bbt, 1                     ; 3 uses
  store i16 %i.bbu, ptr %i.bbs, align 2, !tbaa !116
  %.not.i359.2 = icmp eq i16 %i.bbu, 0
  br i1 %.not.i359.2, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph918.2
  %i.bbv = xor i32 %.5.i358917.2, -1
  %i.bbw = add nsw i32 %.399.i357916.2, %i.bbv
  %i.bbx = sext i32 %i.bbw to i64
  %i.bby = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.bbx
  %i.bbz = sext i16 %i.bbu to i64
  %i.bca = getelementptr inbounds [8 x i8], ptr %i.bby, i64 %i.bbz
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bca, i64 4
  %i.bcc = load i32, ptr %i.bcb, align 4, !tbaa !53
  %i.bcd = add nsw i32 %i.bbq, %i.bcc             ; 2 uses
  store i32 %i.bcd, ptr %i.asf, align 4, !tbaa !51
  %i.bce = trunc nuw nsw i32 %.399.i357916.2 to i8
  %i.bcf = zext nneg i32 %.5.i358917.2 to i64
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.avk, i64 %i.bcf
  store i8 %i.bce, ptr %i.bcg, align 1, !tbaa !48
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %.lr.ph918.2
  %i.bch = phi i32 [ %i.bcd, %bb.dm ], [ %i.bbq, %.lr.ph918.2 ] ; 2 uses
  %.6.i360.2 = phi i32 [ %.399.i357916.2, %bb.dm ], [ %.5.i358917.2, %.lr.ph918.2 ] ; 2 uses
  %i.bci = getelementptr inbounds nuw i8, ptr %i.avk, i64 %i.bbr
  %i.bcj = load i8, ptr %i.bci, align 1, !tbaa !48 ; 2 uses
  %i.bck = zext i8 %i.bcj to i32                  ; 2 uses
  %i.bcl = icmp ult i8 %i.bcj, 43
  br i1 %i.bcl, label %.lr.ph918.2, label %.loopexit689.2, !llvm.loop !86

.loopexit689.2:                                   ; preds = %bb.dn, %.loopexit689.1
  %i.bcm = phi i32 [ 1, %.loopexit689.1 ], [ %i.bch, %bb.dn ]
  %.399.i357.lcssa.2 = phi i32 [ %.399.i357.lcssa.1, %.loopexit689.1 ], [ %i.bck, %bb.dn ] ; 3 uses
  %.5.i358.lcssa.2 = phi i32 [ %.5.i358.lcssa.1, %.loopexit689.1 ], [ %.6.i360.2, %bb.dn ] ; 3 uses
  store i32 %.5.i358.lcssa.2, ptr %i.atn, align 4, !tbaa !51
  store i32 1, ptr %i.ato, align 4, !tbaa !51
  %i.bcn = icmp samesign ult i32 %.399.i357.lcssa.2, 64
  br i1 %i.bcn, label %.lr.ph918.3, label %.loopexit689.3

.lr.ph918.3:                                      ; preds = %.loopexit689.2, %bb.dp
  %i.bco = phi i32 [ %i.bdf, %bb.dp ], [ 1, %.loopexit689.2 ] ; 2 uses
  %.5.i358917.3 = phi i32 [ %.6.i360.3, %bb.dp ], [ %.5.i358.lcssa.2, %.loopexit689.2 ] ; 3 uses
  %.399.i357916.3 = phi i32 [ %i.bdi, %bb.dp ], [ %.399.i357.lcssa.2, %.loopexit689.2 ] ; 4 uses
  %i.bcp = zext nneg i32 %.399.i357916.3 to i64   ; 2 uses
  %i.bcq = getelementptr inbounds nuw [2 x i8], ptr %i.avg, i64 %i.bcp ; 2 uses
  %i.bcr = load i16, ptr %i.bcq, align 2, !tbaa !116
  %i.bcs = ashr i16 %i.bcr, 1                     ; 3 uses
  store i16 %i.bcs, ptr %i.bcq, align 2, !tbaa !116
  %.not.i359.3 = icmp eq i16 %i.bcs, 0
  br i1 %.not.i359.3, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %.lr.ph918.3
  %i.bct = xor i32 %.5.i358917.3, -1
  %i.bcu = add nsw i32 %.399.i357916.3, %i.bct
  %i.bcv = sext i32 %i.bcu to i64
  %i.bcw = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.bcv
  %i.bcx = sext i16 %i.bcs to i64
  %i.bcy = getelementptr inbounds [8 x i8], ptr %i.bcw, i64 %i.bcx
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcy, i64 4
  %i.bda = load i32, ptr %i.bcz, align 4, !tbaa !53
  %i.bdb = add nsw i32 %i.bco, %i.bda             ; 2 uses
  store i32 %i.bdb, ptr %i.ato, align 4, !tbaa !51
  %i.bdc = trunc nuw nsw i32 %.399.i357916.3 to i8
  %i.bdd = zext nneg i32 %.5.i358917.3 to i64
end_hunk_2
begin_hunk_3_@dv_encode_video_segment:bb.a
  store i32 1, ptr %i.bxn, align 4, !tbaa !51
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.fk, %.lr.ph.preheader.1
  %indvars.iv.1 = phi i64 [ 6, %.lr.ph.preheader.1 ], [ %indvars.iv.next.1, %bb.fk ] ; 7 uses
  %.1.i403789.1 = phi i32 [ %.3.i405.4, %.lr.ph.preheader.1 ], [ %.3.i405.1, %bb.fk ] ; 4 uses
  %.190.i402788.1 = phi i32 [ %.493.i404.4, %.lr.ph.preheader.1 ], [ %.493.i404.1, %bb.fk ] ; 3 uses
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.cbr, i64 %indvars.iv.1
  %i.bxp = load i8, ptr %i.bxo, align 1, !tbaa !48
  %i.bxq = zext i8 %i.bxp to i64
  %i.bxr = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.bxq
  %i.bxs = load i16, ptr %i.bxr, align 2, !tbaa !116
  %i.bxt = sext i16 %i.bxs to i32                 ; 3 uses
  %i.bxu = add i32 %i.cbt, %i.bxt
  %i.bxv = icmp ugt i32 %i.bxu, %i.cbu
  br i1 %i.bxv, label %bb.fi, label %bb.fk

bb.fi:                                            ; preds = %.lr.ph.1
  %i.bxw = lshr i32 %i.bxt, 31
  %i.bxx = trunc nuw nsw i32 %i.bxw to i8
  %i.bxy = getelementptr inbounds nuw i8, ptr %i.cbz, i64 %indvars.iv.1
  store i8 %i.bxx, ptr %i.bxy, align 1, !tbaa !48
  %i.bxz = call i32 @llvm.abs.i32(i32 %i.bxt, i1 true)
  %i.bya = getelementptr inbounds nuw [4 x i8], ptr %i.cbs, i64 %indvars.iv.1
  %i.byb = load i32, ptr %i.bya, align 4, !tbaa !51
  %i.byc = mul nsw i32 %i.byb, %i.bxz
  %i.byd = add nsw i32 %i.byc, 2097152
  %i.bye = ashr i32 %i.byd, 22                    ; 4 uses
  %.not102.i406.1 = icmp eq i32 %i.bye, 0
  br i1 %.not102.i406.1, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.byf = trunc nsw i32 %i.bye to i16
  %i.byg = getelementptr inbounds nuw [2 x i8], ptr %i.cbw, i64 %indvars.iv.1
  store i16 %i.byf, ptr %i.byg, align 2, !tbaa !116
  %spec.select.i407.1 = call i32 @llvm.smax.i32(i32 %i.bye, i32 %.190.i402788.1)
  %i.byh = xor i32 %.1.i403789.1, -1
  %i.byi = trunc nsw i64 %indvars.iv.1 to i32     ; 2 uses
  %i.byj = add i32 %i.byi, %i.byh
  %i.byk = sext i32 %i.byj to i64
  %i.byl = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.byk
  %i.bym = sext i32 %i.bye to i64
  %i.byn = getelementptr inbounds [8 x i8], ptr %i.byl, i64 %i.bym
  %i.byo = getelementptr inbounds nuw i8, ptr %i.byn, i64 4
  %i.byp = load i32, ptr %i.byo, align 4, !tbaa !53
  %i.byq = load i32, ptr %i.bxn, align 4, !tbaa !51
  %i.byr = add nsw i32 %i.byq, %i.byp
  store i32 %i.byr, ptr %i.bxn, align 4, !tbaa !51
  %i.bys = trunc i64 %indvars.iv.1 to i8
  %i.byt = sext i32 %.1.i403789.1 to i64
  %i.byu = getelementptr inbounds i8, ptr %i.cca, i64 %i.byt
  store i8 %i.bys, ptr %i.byu, align 1, !tbaa !48
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi, %.lr.ph.1
  %.493.i404.1 = phi i32 [ %.190.i402788.1, %bb.fi ], [ %spec.select.i407.1, %bb.fj ], [ %.190.i402788.1, %.lr.ph.1 ] ; 2 uses
  %.3.i405.1 = phi i32 [ %.1.i403789.1, %bb.fi ], [ %i.byi, %bb.fj ], [ %.1.i403789.1, %.lr.ph.1 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, 21
  br i1 %exitcond.1.not, label %.lr.ph.preheader.2, label %.lr.ph.1, !llvm.loop !84

.lr.ph.preheader.2:                               ; preds = %bb.fk
  %i.byv = getelementptr inbounds nuw i8, ptr %.0194992, i64 40 ; 2 uses
  store i32 %.3.i405.1, ptr %i.byv, align 4, !tbaa !51
  %i.byw = getelementptr inbounds nuw i8, ptr %.0194992, i64 24 ; 5 uses
  store i32 1, ptr %i.byw, align 4, !tbaa !51
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.fn, %.lr.ph.preheader.2
  %indvars.iv.2 = phi i64 [ 21, %.lr.ph.preheader.2 ], [ %indvars.iv.next.2, %bb.fn ] ; 7 uses
  %.1.i403789.2 = phi i32 [ %.3.i405.1, %.lr.ph.preheader.2 ], [ %.3.i405.2, %bb.fn ] ; 4 uses
  %.190.i402788.2 = phi i32 [ %.493.i404.1, %.lr.ph.preheader.2 ], [ %.493.i404.2, %bb.fn ] ; 3 uses
  %i.byx = getelementptr inbounds nuw i8, ptr %i.cbr, i64 %indvars.iv.2
  %i.byy = load i8, ptr %i.byx, align 1, !tbaa !48
  %i.byz = zext i8 %i.byy to i64
  %i.bza = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.byz
  %i.bzb = load i16, ptr %i.bza, align 2, !tbaa !116
  %i.bzc = sext i16 %i.bzb to i32                 ; 3 uses
  %i.bzd = add i32 %i.cbt, %i.bzc
  %i.bze = icmp ugt i32 %i.bzd, %i.cbu
  br i1 %i.bze, label %bb.fl, label %bb.fn

bb.fl:                                            ; preds = %.lr.ph.2
  %i.bzf = lshr i32 %i.bzc, 31
  %i.bzg = trunc nuw nsw i32 %i.bzf to i8
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.cbz, i64 %indvars.iv.2
  store i8 %i.bzg, ptr %i.bzh, align 1, !tbaa !48
  %i.bzi = call i32 @llvm.abs.i32(i32 %i.bzc, i1 true)
  %i.bzj = getelementptr inbounds nuw [4 x i8], ptr %i.cbs, i64 %indvars.iv.2
  %i.bzk = load i32, ptr %i.bzj, align 4, !tbaa !51
  %i.bzl = mul nsw i32 %i.bzk, %i.bzi
  %i.bzm = add nsw i32 %i.bzl, 2097152
  %i.bzn = ashr i32 %i.bzm, 22                    ; 4 uses
  %.not102.i406.2 = icmp eq i32 %i.bzn, 0
  br i1 %.not102.i406.2, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.bzo = trunc nsw i32 %i.bzn to i16
  %i.bzp = getelementptr inbounds nuw [2 x i8], ptr %i.cbw, i64 %indvars.iv.2
  store i16 %i.bzo, ptr %i.bzp, align 2, !tbaa !116
  %spec.select.i407.2 = call i32 @llvm.smax.i32(i32 %i.bzn, i32 %.190.i402788.2)
  %i.bzq = xor i32 %.1.i403789.2, -1
  %i.bzr = trunc nsw i64 %indvars.iv.2 to i32     ; 2 uses
  %i.bzs = add i32 %i.bzr, %i.bzq
  %i.bzt = sext i32 %i.bzs to i64
  %i.bzu = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.bzt
  %i.bzv = sext i32 %i.bzn to i64
  %i.bzw = getelementptr inbounds [8 x i8], ptr %i.bzu, i64 %i.bzv
  %i.bzx = getelementptr inbounds nuw i8, ptr %i.bzw, i64 4
  %i.bzy = load i32, ptr %i.bzx, align 4, !tbaa !53
  %i.bzz = load i32, ptr %i.byw, align 4, !tbaa !51
  %i.caa = add nsw i32 %i.bzz, %i.bzy
  store i32 %i.caa, ptr %i.byw, align 4, !tbaa !51
  %i.cab = trunc i64 %indvars.iv.2 to i8
  %i.cac = sext i32 %.1.i403789.2 to i64
  %i.cad = getelementptr inbounds i8, ptr %i.cca, i64 %i.cac
  store i8 %i.cab, ptr %i.cad, align 1, !tbaa !48
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl, %.lr.ph.2
  %.493.i404.2 = phi i32 [ %.190.i402788.2, %bb.fl ], [ %spec.select.i407.2, %bb.fm ], [ %.190.i402788.2, %.lr.ph.2 ] ; 2 uses
  %.3.i405.2 = phi i32 [ %.1.i403789.2, %bb.fl ], [ %i.bzr, %bb.fm ], [ %.1.i403789.2, %.lr.ph.2 ] ; 3 uses
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.2, 43
  br i1 %exitcond.2.not, label %.lr.ph.preheader.3, label %.lr.ph.2, !llvm.loop !84

.lr.ph.preheader.3:                               ; preds = %bb.fn
  %i.cae = getelementptr inbounds nuw i8, ptr %.0194992, i64 44 ; 2 uses
  store i32 %.3.i405.2, ptr %i.cae, align 4, !tbaa !51
  %i.caf = getelementptr inbounds nuw i8, ptr %.0194992, i64 28 ; 5 uses
  store i32 1, ptr %i.caf, align 4, !tbaa !51
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.fq, %.lr.ph.preheader.3
  %indvars.iv.3 = phi i64 [ 43, %.lr.ph.preheader.3 ], [ %indvars.iv.next.3, %bb.fq ] ; 7 uses
  %.1.i403789.3 = phi i32 [ %.3.i405.2, %.lr.ph.preheader.3 ], [ %.3.i405.3, %bb.fq ] ; 4 uses
  %.190.i402788.3 = phi i32 [ %.493.i404.2, %.lr.ph.preheader.3 ], [ %.493.i404.3, %bb.fq ] ; 3 uses
  %i.cag = getelementptr inbounds nuw i8, ptr %i.cbr, i64 %indvars.iv.3
  %i.cah = load i8, ptr %i.cag, align 1, !tbaa !48
  %i.cai = zext i8 %i.cah to i64
  %i.caj = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.cai
  %i.cak = load i16, ptr %i.caj, align 2, !tbaa !116
  %i.cal = sext i16 %i.cak to i32                 ; 3 uses
  %i.cam = add i32 %i.cbt, %i.cal
  %i.can = icmp ugt i32 %i.cam, %i.cbu
  br i1 %i.can, label %bb.fo, label %bb.fq

bb.fo:                                            ; preds = %.lr.ph.3
  %i.cao = lshr i32 %i.cal, 31
  %i.cap = trunc nuw nsw i32 %i.cao to i8
  %i.caq = getelementptr inbounds nuw i8, ptr %i.cbz, i64 %indvars.iv.3
  store i8 %i.cap, ptr %i.caq, align 1, !tbaa !48
  %i.car = call i32 @llvm.abs.i32(i32 %i.cal, i1 true)
  %i.cas = getelementptr inbounds nuw [4 x i8], ptr %i.cbs, i64 %indvars.iv.3
  %i.cat = load i32, ptr %i.cas, align 4, !tbaa !51
  %i.cau = mul nsw i32 %i.cat, %i.car
  %i.cav = add nsw i32 %i.cau, 2097152
  %i.caw = ashr i32 %i.cav, 22                    ; 4 uses
  %.not102.i406.3 = icmp eq i32 %i.caw, 0
  br i1 %.not102.i406.3, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.cax = trunc nsw i32 %i.caw to i16
  %i.cay = getelementptr inbounds nuw [2 x i8], ptr %i.cbw, i64 %indvars.iv.3
  store i16 %i.cax, ptr %i.cay, align 2, !tbaa !116
  %spec.select.i407.3 = call i32 @llvm.smax.i32(i32 %i.caw, i32 %.190.i402788.3)
  %i.caz = xor i32 %.1.i403789.3, -1
  %i.cba = trunc nsw i64 %indvars.iv.3 to i32     ; 2 uses
  %i.cbb = add i32 %i.cba, %i.caz
  %i.cbc = sext i32 %i.cbb to i64
  %i.cbd = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.cbc
  %i.cbe = sext i32 %i.caw to i64
  %i.cbf = getelementptr inbounds [8 x i8], ptr %i.cbd, i64 %i.cbe
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.cbf, i64 4
  %i.cbh = load i32, ptr %i.cbg, align 4, !tbaa !53
  %i.cbi = load i32, ptr %i.caf, align 4, !tbaa !51
  %i.cbj = add nsw i32 %i.cbi, %i.cbh
  store i32 %i.cbj, ptr %i.caf, align 4, !tbaa !51
  %i.cbk = trunc i64 %indvars.iv.3 to i8
  %i.cbl = sext i32 %.1.i403789.3 to i64
  %i.cbm = getelementptr inbounds i8, ptr %i.cca, i64 %i.cbl
  store i8 %i.cbk, ptr %i.cbm, align 1, !tbaa !48
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo, %.lr.ph.3
  %.493.i404.3 = phi i32 [ %.190.i402788.3, %bb.fo ], [ %spec.select.i407.3, %bb.fp ], [ %.190.i402788.3, %.lr.ph.3 ] ; 2 uses
  %.3.i405.3 = phi i32 [ %.1.i403789.3, %bb.fo ], [ %i.cba, %bb.fp ], [ %.1.i403789.3, %.lr.ph.3 ] ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 2 uses
  %exitcond.3.not = icmp eq i64 %indvars.iv.next.3, 64
  br i1 %exitcond.3.not, label %.loopexit702.3, label %.lr.ph.3, !llvm.loop !84

.loopexit702.3:                                   ; preds = %bb.fq
  %i.cbn = sext i32 %.3.i405.3 to i64
  %i.cbo = getelementptr inbounds i8, ptr %i.cca, i64 %i.cbn
  store i8 64, ptr %i.cbo, align 1, !tbaa !48
  %i.cbp = getelementptr inbounds nuw i8, ptr %.0194992, i64 56 ; 2 uses
  br label %bb.gb

.lr.ph.preheader:                                 ; preds = %bb.ff
  %i.cbq = load i32, ptr %i.fv, align 4, !tbaa !119
  %.not50.i270 = icmp eq i32 %i.cbq, 0            ; 5 uses
  %i.cbr = select i1 %.not50.i270, ptr @ff_zigzag_direct, ptr @ff_dv_zigzag248_direct ; 8 uses
  %i.cbs = select i1 %.not50.i270, ptr @dv_weight_88, ptr @dv_weight_248 ; 3 uses
  %i.cbt = load i32, ptr %i.ad, align 8, !tbaa !125 ; 9 uses
  %i.cbu = shl i32 %i.cbt, 1                      ; 8 uses
  %i.cbv = load i16, ptr %i.j, align 16, !tbaa !116
  %i.cbw = getelementptr inbounds nuw i8, ptr %.0194992, i64 64 ; 8 uses
  store i16 %i.cbv, ptr %i.cbw, align 4, !tbaa !116
  %i.cbx = getelementptr inbounds nuw i8, ptr %.0194992, i64 32 ; 2 uses
  %i.cby = getelementptr inbounds nuw i8, ptr %.0194992, i64 16 ; 11 uses
  %i.cbz = getelementptr inbounds nuw i8, ptr %.0194992, i64 256 ; 3 uses
  %i.cca = getelementptr inbounds nuw i8, ptr %.0194992, i64 192 ; 19 uses
  store i32 0, ptr %i.cbx, align 4, !tbaa !51
  store i32 1, ptr %i.cby, align 4, !tbaa !51
  %24 = getelementptr inbounds nuw i8, ptr %i.cbr, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !48
  %i.ccb = zext i8 %25 to i64
  %i.ccc = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.ccb
  %i.ccd = load i16, ptr %i.ccc, align 2, !tbaa !116
  %i.cce = sext i16 %i.ccd to i32                 ; 3 uses
  %i.ccf = add i32 %i.cbt, %i.cce
  %i.ccg = icmp ugt i32 %i.ccf, %i.cbu
  br i1 %i.ccg, label %bb.fr, label %.lr.ph.11123

bb.fr:                                            ; preds = %.lr.ph.preheader
  %i.cch = lshr i32 %i.cce, 31
  %i.cci = trunc nuw nsw i32 %i.cch to i8
  %i.ccj = getelementptr inbounds nuw i8, ptr %.0194992, i64 257
  store i8 %i.cci, ptr %i.ccj, align 1, !tbaa !48
  %i.cck = call i32 @llvm.abs.i32(i32 %i.cce, i1 true)
  %i.ccl = select i1 %.not50.i270, i32 257107, i32 262144
  %i.ccm = mul nuw nsw i32 %i.ccl, %i.cck
  %i.ccn = add nuw nsw i32 %i.ccm, 2097152
  %i.cco = lshr i32 %i.ccn, 22                    ; 4 uses
  %.not102.i406 = icmp eq i32 %i.cco, 0
  br i1 %.not102.i406, label %.lr.ph.11123, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.ccp = trunc nuw nsw i32 %i.cco to i16
  %i.ccq = getelementptr inbounds nuw i8, ptr %.0194992, i64 66
  store i16 %i.ccp, ptr %i.ccq, align 2, !tbaa !116
  %i.ccr = zext nneg i32 %i.cco to i64
  %i.ccs = getelementptr inbounds nuw [8 x i8], ptr @dv_vlc_map, i64 %i.ccr
  %i.cct = getelementptr inbounds nuw i8, ptr %i.ccs, i64 4
  %i.ccu = load i32, ptr %i.cct, align 4, !tbaa !53
  %i.ccv = add nsw i32 %i.ccu, 1                  ; 2 uses
  store i32 %i.ccv, ptr %i.cby, align 4, !tbaa !51
  store i8 1, ptr %i.cca, align 4, !tbaa !48
  br label %.lr.ph.11123

.lr.ph.11123:                                     ; preds = %bb.fs, %bb.fr, %.lr.ph.preheader
  %i.ccw = phi i32 [ 1, %bb.fr ], [ %i.ccv, %bb.fs ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %.493.i404 = phi i32 [ -1, %bb.fr ], [ %i.cco, %bb.fs ], [ -1, %.lr.ph.preheader ] ; 3 uses
  %.3.i405 = phi i32 [ 0, %bb.fr ], [ 1, %bb.fs ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %26 = getelementptr inbounds nuw i8, ptr %i.cbr, i64 2
  %27 = load i8, ptr %26, align 2, !tbaa !48
  %i.ccx = zext i8 %27 to i64
  %i.ccy = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.ccx
  %i.ccz = load i16, ptr %i.ccy, align 2, !tbaa !116
  %i.cda = sext i16 %i.ccz to i32                 ; 3 uses
  %i.cdb = add i32 %i.cbt, %i.cda
  %i.cdc = icmp ugt i32 %i.cdb, %i.cbu
  br i1 %i.cdc, label %bb.ft, label %.lr.ph.21133

bb.ft:                                            ; preds = %.lr.ph.11123
  %i.cdd = lshr i32 %i.cda, 31
  %i.cde = trunc nuw nsw i32 %i.cdd to i8
  %i.cdf = getelementptr inbounds nuw i8, ptr %.0194992, i64 258
  store i8 %i.cde, ptr %i.cdf, align 2, !tbaa !48
  %i.cdg = call i32 @llvm.abs.i32(i32 %i.cda, i1 true)
  %i.cdh = mul nuw nsw i32 %i.cdg, 257107
  %i.cdi = add nuw nsw i32 %i.cdh, 2097152
  %i.cdj = lshr i32 %i.cdi, 22                    ; 4 uses
  %.not102.i406.11124 = icmp eq i32 %i.cdj, 0
  br i1 %.not102.i406.11124, label %.lr.ph.21133, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.cdk = trunc nuw nsw i32 %i.cdj to i16
  %i.cdl = getelementptr inbounds nuw i8, ptr %.0194992, i64 68
  store i16 %i.cdk, ptr %i.cdl, align 4, !tbaa !116
  %spec.select.i407.11125 = call i32 @llvm.smax.i32(i32 %i.cdj, i32 %.493.i404)
  %i.cdm = xor i32 %.3.i405, 1
  %i.cdn = zext nneg i32 %i.cdm to i64
  %i.cdo = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.cdn
  %i.cdp = zext nneg i32 %i.cdj to i64
  %i.cdq = getelementptr inbounds nuw [8 x i8], ptr %i.cdo, i64 %i.cdp
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.cdq, i64 4
  %i.cds = load i32, ptr %i.cdr, align 4, !tbaa !53
  %i.cdt = add nsw i32 %i.ccw, %i.cds             ; 2 uses
  store i32 %i.cdt, ptr %i.cby, align 4, !tbaa !51
  %i.cdu = zext nneg i32 %.3.i405 to i64
  %i.cdv = getelementptr inbounds nuw i8, ptr %i.cca, i64 %i.cdu
  store i8 2, ptr %i.cdv, align 1, !tbaa !48
  br label %.lr.ph.21133

.lr.ph.21133:                                     ; preds = %bb.fu, %bb.ft, %.lr.ph.11123
  %i.cdw = phi i32 [ %i.ccw, %bb.ft ], [ %i.cdt, %bb.fu ], [ %i.ccw, %.lr.ph.11123 ]
  %.493.i404.11126 = phi i32 [ %.493.i404, %bb.ft ], [ %spec.select.i407.11125, %bb.fu ], [ %.493.i404, %.lr.ph.11123 ] ; 3 uses
  %.3.i405.11127 = phi i32 [ %.3.i405, %bb.ft ], [ 2, %bb.fu ], [ %.3.i405, %.lr.ph.11123 ] ; 4 uses
  %28 = getelementptr inbounds nuw i8, ptr %i.cbr, i64 3
  %29 = load i8, ptr %28, align 1, !tbaa !48
  %i.cdx = zext i8 %29 to i64
  %i.cdy = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.cdx
  %i.cdz = load i16, ptr %i.cdy, align 2, !tbaa !116
  %i.cea = sext i16 %i.cdz to i32                 ; 3 uses
  %i.ceb = add i32 %i.cbt, %i.cea
  %i.cec = icmp ugt i32 %i.ceb, %i.cbu
  br i1 %i.cec, label %bb.fv, label %.lr.ph.31143

bb.fv:                                            ; preds = %.lr.ph.21133
  %i.ced = lshr i32 %i.cea, 31
  %i.cee = trunc nuw nsw i32 %i.ced to i8
  %i.cef = getelementptr inbounds nuw i8, ptr %.0194992, i64 259
  store i8 %i.cee, ptr %i.cef, align 1, !tbaa !48
  %i.ceg = call i32 @llvm.abs.i32(i32 %i.cea, i1 true)
  %i.ceh = select i1 %.not50.i270, i32 242189, i32 257107
  %i.cei = mul nuw nsw i32 %i.ceh, %i.ceg
  %i.cej = add nuw nsw i32 %i.cei, 2097152
  %i.cek = lshr i32 %i.cej, 22                    ; 4 uses
  %.not102.i406.21134 = icmp eq i32 %i.cek, 0
  br i1 %.not102.i406.21134, label %.lr.ph.31143, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.cel = trunc nuw nsw i32 %i.cek to i16
  %i.cem = getelementptr inbounds nuw i8, ptr %.0194992, i64 70
  store i16 %i.cel, ptr %i.cem, align 2, !tbaa !116
  %spec.select.i407.21135 = call i32 @llvm.smax.i32(i32 %i.cek, i32 %.493.i404.11126)
  %i.cen = sub nuw nsw i32 2, %.3.i405.11127
  %i.ceo = zext nneg i32 %i.cen to i64
  %i.cep = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.ceo
  %i.ceq = zext nneg i32 %i.cek to i64
  %i.cer = getelementptr inbounds nuw [8 x i8], ptr %i.cep, i64 %i.ceq
  %i.ces = getelementptr inbounds nuw i8, ptr %i.cer, i64 4
  %i.cet = load i32, ptr %i.ces, align 4, !tbaa !53
  %i.ceu = add nsw i32 %i.cdw, %i.cet
  store i32 %i.ceu, ptr %i.cby, align 4, !tbaa !51
  %i.cev = zext nneg i32 %.3.i405.11127 to i64
  %i.cew = getelementptr inbounds nuw i8, ptr %i.cca, i64 %i.cev
  store i8 3, ptr %i.cew, align 1, !tbaa !48
  br label %.lr.ph.31143

.lr.ph.31143:                                     ; preds = %bb.fw, %bb.fv, %.lr.ph.21133
  %.493.i404.21136 = phi i32 [ %.493.i404.11126, %bb.fv ], [ %spec.select.i407.21135, %bb.fw ], [ %.493.i404.11126, %.lr.ph.21133 ] ; 3 uses
  %.3.i405.21137 = phi i32 [ %.3.i405.11127, %bb.fv ], [ 3, %bb.fw ], [ %.3.i405.11127, %.lr.ph.21133 ] ; 4 uses
  %30 = getelementptr inbounds nuw i8, ptr %i.cbr, i64 4
  %31 = load i8, ptr %30, align 4, !tbaa !48
  %i.cex = zext i8 %31 to i64
  %i.cey = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.cex
  %i.cez = load i16, ptr %i.cey, align 2, !tbaa !116
  %i.cfa = sext i16 %i.cez to i32                 ; 3 uses
  %i.cfb = add i32 %i.cbt, %i.cfa
  %i.cfc = icmp ugt i32 %i.cfb, %i.cbu
  br i1 %i.cfc, label %bb.fx, label %.lr.ph.4

bb.fx:                                            ; preds = %.lr.ph.31143
  %i.cfd = lshr i32 %i.cfa, 31
  %i.cfe = trunc nuw nsw i32 %i.cfd to i8
  %i.cff = getelementptr inbounds nuw i8, ptr %.0194992, i64 260
  store i8 %i.cfe, ptr %i.cff, align 4, !tbaa !48
  %i.cfg = call i32 @llvm.abs.i32(i32 %i.cfa, i1 true)
  %i.cfh = select i1 %.not50.i270, i32 252167, i32 242189
  %i.cfi = mul nuw nsw i32 %i.cfh, %i.cfg
  %i.cfj = add nuw nsw i32 %i.cfi, 2097152
  %i.cfk = lshr i32 %i.cfj, 22                    ; 4 uses
  %.not102.i406.31144 = icmp eq i32 %i.cfk, 0
  br i1 %.not102.i406.31144, label %.lr.ph.4, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.cfl = trunc nuw nsw i32 %i.cfk to i16
  %i.cfm = getelementptr inbounds nuw i8, ptr %.0194992, i64 72
  store i16 %i.cfl, ptr %i.cfm, align 4, !tbaa !116
  %spec.select.i407.31145 = call i32 @llvm.smax.i32(i32 %i.cfk, i32 %.493.i404.21136)
  %i.cfn = sub nuw nsw i32 3, %.3.i405.21137
  %i.cfo = zext nneg i32 %i.cfn to i64
  %i.cfp = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.cfo
  %i.cfq = zext nneg i32 %i.cfk to i64
  %i.cfr = getelementptr inbounds nuw [8 x i8], ptr %i.cfp, i64 %i.cfq
  %i.cfs = getelementptr inbounds nuw i8, ptr %i.cfr, i64 4
  %i.cft = load i32, ptr %i.cfs, align 4, !tbaa !53
  %i.cfu = load i32, ptr %i.cby, align 4, !tbaa !51
  %i.cfv = add nsw i32 %i.cfu, %i.cft
  store i32 %i.cfv, ptr %i.cby, align 4, !tbaa !51
  %i.cfw = zext nneg i32 %.3.i405.21137 to i64
  %i.cfx = getelementptr inbounds nuw i8, ptr %i.cca, i64 %i.cfw
  store i8 4, ptr %i.cfx, align 1, !tbaa !48
  br label %.lr.ph.4

.lr.ph.4:                                         ; preds = %bb.fy, %bb.fx, %.lr.ph.31143
  %.493.i404.31146 = phi i32 [ %.493.i404.21136, %bb.fx ], [ %spec.select.i407.31145, %bb.fy ], [ %.493.i404.21136, %.lr.ph.31143 ] ; 3 uses
  %.3.i405.31147 = phi i32 [ %.3.i405.21137, %bb.fx ], [ 4, %bb.fy ], [ %.3.i405.21137, %.lr.ph.31143 ] ; 4 uses
  %32 = getelementptr inbounds nuw i8, ptr %i.cbr, i64 5
  %33 = load i8, ptr %32, align 1, !tbaa !48
  %i.cfy = zext i8 %33 to i64
  %i.cfz = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.cfy
  %i.cga = load i16, ptr %i.cfz, align 2, !tbaa !116
  %i.cgb = sext i16 %i.cga to i32                 ; 3 uses
  %i.cgc = add i32 %i.cbt, %i.cgb
  %i.cgd = icmp ugt i32 %i.cgc, %i.cbu
  br i1 %i.cgd, label %bb.fz, label %.lr.ph.preheader.1

bb.fz:                                            ; preds = %.lr.ph.4
  %i.cge = lshr i32 %i.cgb, 31
  %i.cgf = trunc nuw nsw i32 %i.cge to i8
  %i.cgg = getelementptr inbounds nuw i8, ptr %.0194992, i64 261
  store i8 %i.cgf, ptr %i.cgg, align 1, !tbaa !48
  %i.cgh = call i32 @llvm.abs.i32(i32 %i.cgb, i1 true)
  %i.cgi = mul nuw nsw i32 %i.cgh, 242189
  %i.cgj = add nuw nsw i32 %i.cgi, 2097152
  %i.cgk = lshr i32 %i.cgj, 22                    ; 4 uses
  %.not102.i406.4 = icmp eq i32 %i.cgk, 0
  br i1 %.not102.i406.4, label %.lr.ph.preheader.1, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.cgl = trunc nuw nsw i32 %i.cgk to i16
  %i.cgm = getelementptr inbounds nuw i8, ptr %.0194992, i64 74
  store i16 %i.cgl, ptr %i.cgm, align 2, !tbaa !116
  %spec.select.i407.4 = call i32 @llvm.smax.i32(i32 %i.cgk, i32 %.493.i404.31146)
  %i.cgn = sub nuw nsw i32 4, %.3.i405.31147
  %i.cgo = zext nneg i32 %i.cgn to i64
  %i.cgp = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.cgo
  %i.cgq = zext nneg i32 %i.cgk to i64
  %i.cgr = getelementptr inbounds nuw [8 x i8], ptr %i.cgp, i64 %i.cgq
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.cgr, i64 4
  %i.cgt = load i32, ptr %i.cgs, align 4, !tbaa !53
  %i.cgu = load i32, ptr %i.cby, align 4, !tbaa !51
  %i.cgv = add nsw i32 %i.cgu, %i.cgt
  store i32 %i.cgv, ptr %i.cby, align 4, !tbaa !51
  %i.cgw = zext nneg i32 %.3.i405.31147 to i64
  %i.cgx = getelementptr inbounds nuw i8, ptr %i.cca, i64 %i.cgw
  store i8 5, ptr %i.cgx, align 1, !tbaa !48
  br label %.lr.ph.preheader.1

bb.gb:                                            ; preds = %bb.gb, %.loopexit702.3
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.gb ], [ 0, %.loopexit702.3 ] ; 4 uses
  %i.cgy = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.cgy, ptr %i.cbp, align 4, !tbaa !124
  %i.cgz = getelementptr inbounds nuw [4 x i8], ptr @dv_set_class_number_sd.classes, i64 %indvars.iv
  %i.cha = load i32, ptr %i.cgz, align 4, !tbaa !51
  %i.chb = icmp sgt i32 %.493.i404.3, %i.cha
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.chb, label %bb.gb, label %bb.gc, !llvm.loop !85

bb.gc:                                            ; preds = %bb.gb
  %i.chc = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %i.chc, label %bb.gd, label %.dv_init_enc_block.exit275_crit_edge

.dv_init_enc_block.exit275_crit_edge:             ; preds = %bb.gc
  %.pre1628 = load i32, ptr %i.cby, align 4, !tbaa !51
  %.phi.trans.insert1629 = getelementptr inbounds nuw i8, ptr %.0194992, i64 20
  %.pre1630 = load i32, ptr %.phi.trans.insert1629, align 4, !tbaa !51
  %.phi.trans.insert1631 = getelementptr inbounds nuw i8, ptr %.0194992, i64 24
  %.pre1632 = load i32, ptr %.phi.trans.insert1631, align 4, !tbaa !51
  %.phi.trans.insert1633 = getelementptr inbounds nuw i8, ptr %.0194992, i64 28
  %.pre1634 = load i32, ptr %.phi.trans.insert1633, align 4, !tbaa !51
  br label %dv_init_enc_block.exit275

bb.gd:                                            ; preds = %bb.gc
  store i32 3, ptr %i.cbp, align 4, !tbaa !124
  %i.chd = load i8, ptr %i.cca, align 4, !tbaa !48 ; 2 uses
  %i.che = zext i8 %i.chd to i32                  ; 2 uses
  store i32 0, ptr %i.cbx, align 4, !tbaa !51
  store i32 1, ptr %i.cby, align 4, !tbaa !51
  %i.chf = icmp ult i8 %i.chd, 6
  br i1 %i.chf, label %.lr.ph798, label %.loopexit701

.loopexit701:                                     ; preds = %bb.gl, %bb.gd
  %i.chg = phi i32 [ 1, %bb.gd ], [ %i.ckv, %bb.gl ]
  %.399.i397.lcssa = phi i32 [ %i.che, %bb.gd ], [ %i.cky, %bb.gl ] ; 3 uses
  %.5.i398.lcssa = phi i32 [ 0, %bb.gd ], [ %.6.i400, %bb.gl ] ; 3 uses
  store i32 %.5.i398.lcssa, ptr %i.bxm, align 4, !tbaa !51
  store i32 1, ptr %i.bxn, align 4, !tbaa !51
  %i.chh = icmp samesign ult i32 %.399.i397.lcssa, 21
  br i1 %i.chh, label %.lr.ph798.1, label %.loopexit701.1

.lr.ph798.1:                                      ; preds = %.loopexit701, %bb.gf
  %i.chi = phi i32 [ %i.chz, %bb.gf ], [ 1, %.loopexit701 ] ; 2 uses
  %.5.i398797.1 = phi i32 [ %.6.i400.1, %bb.gf ], [ %.5.i398.lcssa, %.loopexit701 ] ; 3 uses
  %.399.i397796.1 = phi i32 [ %i.cic, %bb.gf ], [ %.399.i397.lcssa, %.loopexit701 ] ; 4 uses
  %i.chj = zext nneg i32 %.399.i397796.1 to i64   ; 2 uses
  %i.chk = getelementptr inbounds nuw [2 x i8], ptr %i.cbw, i64 %i.chj ; 2 uses
  %i.chl = load i16, ptr %i.chk, align 2, !tbaa !116
  %i.chm = ashr i16 %i.chl, 1                     ; 3 uses
  store i16 %i.chm, ptr %i.chk, align 2, !tbaa !116
  %.not.i399.1 = icmp eq i16 %i.chm, 0
  br i1 %.not.i399.1, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %.lr.ph798.1
  %i.chn = xor i32 %.5.i398797.1, -1
  %i.cho = add nsw i32 %.399.i397796.1, %i.chn
  %i.chp = sext i32 %i.cho to i64
  %i.chq = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.chp
  %i.chr = sext i16 %i.chm to i64
  %i.chs = getelementptr inbounds [8 x i8], ptr %i.chq, i64 %i.chr
  %i.cht = getelementptr inbounds nuw i8, ptr %i.chs, i64 4
  %i.chu = load i32, ptr %i.cht, align 4, !tbaa !53
  %i.chv = add nsw i32 %i.chi, %i.chu             ; 2 uses
  store i32 %i.chv, ptr %i.bxn, align 4, !tbaa !51
  %i.chw = trunc nuw nsw i32 %.399.i397796.1 to i8
  %i.chx = zext nneg i32 %.5.i398797.1 to i64
  %i.chy = getelementptr inbounds nuw i8, ptr %i.cca, i64 %i.chx
  store i8 %i.chw, ptr %i.chy, align 1, !tbaa !48
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %.lr.ph798.1
  %i.chz = phi i32 [ %i.chv, %bb.ge ], [ %i.chi, %.lr.ph798.1 ] ; 2 uses
  %.6.i400.1 = phi i32 [ %.399.i397796.1, %bb.ge ], [ %.5.i398797.1, %.lr.ph798.1 ] ; 2 uses
  %i.cia = getelementptr inbounds nuw i8, ptr %i.cca, i64 %i.chj
  %i.cib = load i8, ptr %i.cia, align 1, !tbaa !48 ; 2 uses
  %i.cic = zext i8 %i.cib to i32                  ; 2 uses
  %i.cid = icmp ult i8 %i.cib, 21
  br i1 %i.cid, label %.lr.ph798.1, label %.loopexit701.1, !llvm.loop !86

.loopexit701.1:                                   ; preds = %bb.gf, %.loopexit701
  %i.cie = phi i32 [ 1, %.loopexit701 ], [ %i.chz, %bb.gf ]
  %.399.i397.lcssa.1 = phi i32 [ %.399.i397.lcssa, %.loopexit701 ], [ %i.cic, %bb.gf ] ; 3 uses
  %.5.i398.lcssa.1 = phi i32 [ %.5.i398.lcssa, %.loopexit701 ], [ %.6.i400.1, %bb.gf ] ; 3 uses
  store i32 %.5.i398.lcssa.1, ptr %i.byv, align 4, !tbaa !51
  store i32 1, ptr %i.byw, align 4, !tbaa !51
  %i.cif = icmp samesign ult i32 %.399.i397.lcssa.1, 43
  br i1 %i.cif, label %.lr.ph798.2, label %.loopexit701.2

.lr.ph798.2:                                      ; preds = %.loopexit701.1, %bb.gh
  %i.cig = phi i32 [ %i.cix, %bb.gh ], [ 1, %.loopexit701.1 ] ; 2 uses
  %.5.i398797.2 = phi i32 [ %.6.i400.2, %bb.gh ], [ %.5.i398.lcssa.1, %.loopexit701.1 ] ; 3 uses
  %.399.i397796.2 = phi i32 [ %i.cja, %bb.gh ], [ %.399.i397.lcssa.1, %.loopexit701.1 ] ; 4 uses
  %i.cih = zext nneg i32 %.399.i397796.2 to i64   ; 2 uses
  %i.cii = getelementptr inbounds nuw [2 x i8], ptr %i.cbw, i64 %i.cih ; 2 uses
  %i.cij = load i16, ptr %i.cii, align 2, !tbaa !116
  %i.cik = ashr i16 %i.cij, 1                     ; 3 uses
  store i16 %i.cik, ptr %i.cii, align 2, !tbaa !116
  %.not.i399.2 = icmp eq i16 %i.cik, 0
  br i1 %.not.i399.2, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %.lr.ph798.2
  %i.cil = xor i32 %.5.i398797.2, -1
  %i.cim = add nsw i32 %.399.i397796.2, %i.cil
  %i.cin = sext i32 %i.cim to i64
  %i.cio = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.cin
  %i.cip = sext i16 %i.cik to i64
  %i.ciq = getelementptr inbounds [8 x i8], ptr %i.cio, i64 %i.cip
  %i.cir = getelementptr inbounds nuw i8, ptr %i.ciq, i64 4
  %i.cis = load i32, ptr %i.cir, align 4, !tbaa !53
  %i.cit = add nsw i32 %i.cig, %i.cis             ; 2 uses
  store i32 %i.cit, ptr %i.byw, align 4, !tbaa !51
  %i.ciu = trunc nuw nsw i32 %.399.i397796.2 to i8
  %i.civ = zext nneg i32 %.5.i398797.2 to i64
  %i.ciw = getelementptr inbounds nuw i8, ptr %i.cca, i64 %i.civ
  store i8 %i.ciu, ptr %i.ciw, align 1, !tbaa !48
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %.lr.ph798.2
  %i.cix = phi i32 [ %i.cit, %bb.gg ], [ %i.cig, %.lr.ph798.2 ] ; 2 uses
  %.6.i400.2 = phi i32 [ %.399.i397796.2, %bb.gg ], [ %.5.i398797.2, %.lr.ph798.2 ] ; 2 uses
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.cca, i64 %i.cih
  %i.ciz = load i8, ptr %i.ciy, align 1, !tbaa !48 ; 2 uses
  %i.cja = zext i8 %i.ciz to i32                  ; 2 uses
  %i.cjb = icmp ult i8 %i.ciz, 43
  br i1 %i.cjb, label %.lr.ph798.2, label %.loopexit701.2, !llvm.loop !86

.loopexit701.2:                                   ; preds = %bb.gh, %.loopexit701.1
  %i.cjc = phi i32 [ 1, %.loopexit701.1 ], [ %i.cix, %bb.gh ]
  %.399.i397.lcssa.2 = phi i32 [ %.399.i397.lcssa.1, %.loopexit701.1 ], [ %i.cja, %bb.gh ] ; 3 uses
  %.5.i398.lcssa.2 = phi i32 [ %.5.i398.lcssa.1, %.loopexit701.1 ], [ %.6.i400.2, %bb.gh ] ; 3 uses
  store i32 %.5.i398.lcssa.2, ptr %i.cae, align 4, !tbaa !51
  store i32 1, ptr %i.caf, align 4, !tbaa !51
  %i.cjd = icmp samesign ult i32 %.399.i397.lcssa.2, 64
  br i1 %i.cjd, label %.lr.ph798.3, label %.loopexit701.3

.lr.ph798.3:                                      ; preds = %.loopexit701.2, %bb.gj
  %i.cje = phi i32 [ %i.cjv, %bb.gj ], [ 1, %.loopexit701.2 ] ; 2 uses
  %.5.i398797.3 = phi i32 [ %.6.i400.3, %bb.gj ], [ %.5.i398.lcssa.2, %.loopexit701.2 ] ; 3 uses
  %.399.i397796.3 = phi i32 [ %i.cjy, %bb.gj ], [ %.399.i397.lcssa.2, %.loopexit701.2 ] ; 4 uses
  %i.cjf = zext nneg i32 %.399.i397796.3 to i64   ; 2 uses
  %i.cjg = getelementptr inbounds nuw [2 x i8], ptr %i.cbw, i64 %i.cjf ; 2 uses
  %i.cjh = load i16, ptr %i.cjg, align 2, !tbaa !116
  %i.cji = ashr i16 %i.cjh, 1                     ; 3 uses
  store i16 %i.cji, ptr %i.cjg, align 2, !tbaa !116
  %.not.i399.3 = icmp eq i16 %i.cji, 0
  br i1 %.not.i399.3, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %.lr.ph798.3
  %i.cjj = xor i32 %.5.i398797.3, -1
  %i.cjk = add nsw i32 %.399.i397796.3, %i.cjj
  %i.cjl = sext i32 %i.cjk to i64
  %i.cjm = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.cjl
  %i.cjn = sext i16 %i.cji to i64
  %i.cjo = getelementptr inbounds [8 x i8], ptr %i.cjm, i64 %i.cjn
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cjo, i64 4
  %i.cjq = load i32, ptr %i.cjp, align 4, !tbaa !53
  %i.cjr = add nsw i32 %i.cje, %i.cjq             ; 2 uses
  store i32 %i.cjr, ptr %i.caf, align 4, !tbaa !51
  %i.cjs = trunc nuw nsw i32 %.399.i397796.3 to i8
  %i.cjt = zext nneg i32 %.5.i398797.3 to i64
end_hunk_3
begin_hunk_4_@dv_encode_video_segment:bb.a
  br label %.lr.ph808.1

.lr.ph808.1:                                      ; preds = %bb.gv, %.lr.ph808.preheader.1
  %indvars.iv1157.1 = phi i64 [ 6, %.lr.ph808.preheader.1 ], [ %indvars.iv.next1158.1, %bb.gv ] ; 7 uses
  %.1.i423807.1 = phi i32 [ %.3.i425.4, %.lr.ph808.preheader.1 ], [ %.3.i425.1, %bb.gv ] ; 4 uses
  %.190.i422806.1 = phi i32 [ %.493.i424.4, %.lr.ph808.preheader.1 ], [ %.493.i424.1, %bb.gv ] ; 3 uses
  %i.coq = getelementptr inbounds nuw i8, ptr %i.csu, i64 %indvars.iv1157.1
  %i.cor = load i8, ptr %i.coq, align 1, !tbaa !48
  %i.cos = zext i8 %i.cor to i64
  %i.cot = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.cos
  %i.cou = load i16, ptr %i.cot, align 2, !tbaa !116
  %i.cov = sext i16 %i.cou to i32                 ; 3 uses
  %i.cow = add i32 %i.csw, %i.cov
  %i.cox = icmp ugt i32 %i.cow, %i.csx
  br i1 %i.cox, label %bb.gt, label %bb.gv

bb.gt:                                            ; preds = %.lr.ph808.1
  %i.coy = lshr i32 %i.cov, 31
  %i.coz = trunc nuw nsw i32 %i.coy to i8
  %i.cpa = getelementptr inbounds nuw i8, ptr %i.ctc, i64 %indvars.iv1157.1
  store i8 %i.coz, ptr %i.cpa, align 1, !tbaa !48
  %i.cpb = call i32 @llvm.abs.i32(i32 %i.cov, i1 true)
  %i.cpc = getelementptr inbounds nuw [4 x i8], ptr %i.csv, i64 %indvars.iv1157.1
  %i.cpd = load i32, ptr %i.cpc, align 4, !tbaa !51
  %i.cpe = mul nsw i32 %i.cpd, %i.cpb
  %i.cpf = add nsw i32 %i.cpe, 2097152
  %i.cpg = ashr i32 %i.cpf, 22                    ; 4 uses
  %.not102.i426.1 = icmp eq i32 %i.cpg, 0
  br i1 %.not102.i426.1, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.cph = trunc nsw i32 %i.cpg to i16
  %i.cpi = getelementptr inbounds nuw [2 x i8], ptr %i.csz, i64 %indvars.iv1157.1
  store i16 %i.cph, ptr %i.cpi, align 2, !tbaa !116
  %spec.select.i427.1 = call i32 @llvm.smax.i32(i32 %i.cpg, i32 %.190.i422806.1)
  %i.cpj = xor i32 %.1.i423807.1, -1
  %i.cpk = trunc nsw i64 %indvars.iv1157.1 to i32 ; 2 uses
  %i.cpl = add i32 %i.cpk, %i.cpj
  %i.cpm = sext i32 %i.cpl to i64
  %i.cpn = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.cpm
  %i.cpo = sext i32 %i.cpg to i64
  %i.cpp = getelementptr inbounds [8 x i8], ptr %i.cpn, i64 %i.cpo
  %i.cpq = getelementptr inbounds nuw i8, ptr %i.cpp, i64 4
  %i.cpr = load i32, ptr %i.cpq, align 4, !tbaa !53
  %i.cps = load i32, ptr %i.cop, align 4, !tbaa !51
  %i.cpt = add nsw i32 %i.cps, %i.cpr
  store i32 %i.cpt, ptr %i.cop, align 4, !tbaa !51
  %i.cpu = trunc i64 %indvars.iv1157.1 to i8
  %i.cpv = sext i32 %.1.i423807.1 to i64
  %i.cpw = getelementptr inbounds i8, ptr %i.ctd, i64 %i.cpv
  store i8 %i.cpu, ptr %i.cpw, align 1, !tbaa !48
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt, %.lr.ph808.1
  %.493.i424.1 = phi i32 [ %.190.i422806.1, %bb.gt ], [ %spec.select.i427.1, %bb.gu ], [ %.190.i422806.1, %.lr.ph808.1 ] ; 2 uses
  %.3.i425.1 = phi i32 [ %.1.i423807.1, %bb.gt ], [ %i.cpk, %bb.gu ], [ %.1.i423807.1, %.lr.ph808.1 ] ; 3 uses
  %indvars.iv.next1158.1 = add nuw nsw i64 %indvars.iv1157.1, 1 ; 2 uses
  %exitcond.11164.not = icmp eq i64 %indvars.iv.next1158.1, 21
  br i1 %exitcond.11164.not, label %.lr.ph808.preheader.2, label %.lr.ph808.1, !llvm.loop !84

.lr.ph808.preheader.2:                            ; preds = %bb.gv
  %i.cpx = getelementptr inbounds nuw i8, ptr %.0194992, i64 500 ; 2 uses
  store i32 %.3.i425.1, ptr %i.cpx, align 4, !tbaa !51
  %i.cpy = getelementptr inbounds nuw i8, ptr %.0194992, i64 484 ; 5 uses
  store i32 1, ptr %i.cpy, align 4, !tbaa !51
  br label %.lr.ph808.2

.lr.ph808.2:                                      ; preds = %bb.gy, %.lr.ph808.preheader.2
  %indvars.iv1157.2 = phi i64 [ 21, %.lr.ph808.preheader.2 ], [ %indvars.iv.next1158.2, %bb.gy ] ; 7 uses
  %.1.i423807.2 = phi i32 [ %.3.i425.1, %.lr.ph808.preheader.2 ], [ %.3.i425.2, %bb.gy ] ; 4 uses
  %.190.i422806.2 = phi i32 [ %.493.i424.1, %.lr.ph808.preheader.2 ], [ %.493.i424.2, %bb.gy ] ; 3 uses
  %i.cpz = getelementptr inbounds nuw i8, ptr %i.csu, i64 %indvars.iv1157.2
  %i.cqa = load i8, ptr %i.cpz, align 1, !tbaa !48
  %i.cqb = zext i8 %i.cqa to i64
  %i.cqc = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.cqb
  %i.cqd = load i16, ptr %i.cqc, align 2, !tbaa !116
  %i.cqe = sext i16 %i.cqd to i32                 ; 3 uses
  %i.cqf = add i32 %i.csw, %i.cqe
  %i.cqg = icmp ugt i32 %i.cqf, %i.csx
  br i1 %i.cqg, label %bb.gw, label %bb.gy

bb.gw:                                            ; preds = %.lr.ph808.2
  %i.cqh = lshr i32 %i.cqe, 31
  %i.cqi = trunc nuw nsw i32 %i.cqh to i8
  %i.cqj = getelementptr inbounds nuw i8, ptr %i.ctc, i64 %indvars.iv1157.2
  store i8 %i.cqi, ptr %i.cqj, align 1, !tbaa !48
  %i.cqk = call i32 @llvm.abs.i32(i32 %i.cqe, i1 true)
  %i.cql = getelementptr inbounds nuw [4 x i8], ptr %i.csv, i64 %indvars.iv1157.2
  %i.cqm = load i32, ptr %i.cql, align 4, !tbaa !51
  %i.cqn = mul nsw i32 %i.cqm, %i.cqk
  %i.cqo = add nsw i32 %i.cqn, 2097152
  %i.cqp = ashr i32 %i.cqo, 22                    ; 4 uses
  %.not102.i426.2 = icmp eq i32 %i.cqp, 0
  br i1 %.not102.i426.2, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.cqq = trunc nsw i32 %i.cqp to i16
  %i.cqr = getelementptr inbounds nuw [2 x i8], ptr %i.csz, i64 %indvars.iv1157.2
  store i16 %i.cqq, ptr %i.cqr, align 2, !tbaa !116
  %spec.select.i427.2 = call i32 @llvm.smax.i32(i32 %i.cqp, i32 %.190.i422806.2)
  %i.cqs = xor i32 %.1.i423807.2, -1
  %i.cqt = trunc nsw i64 %indvars.iv1157.2 to i32 ; 2 uses
  %i.cqu = add i32 %i.cqt, %i.cqs
  %i.cqv = sext i32 %i.cqu to i64
  %i.cqw = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.cqv
  %i.cqx = sext i32 %i.cqp to i64
  %i.cqy = getelementptr inbounds [8 x i8], ptr %i.cqw, i64 %i.cqx
  %i.cqz = getelementptr inbounds nuw i8, ptr %i.cqy, i64 4
  %i.cra = load i32, ptr %i.cqz, align 4, !tbaa !53
  %i.crb = load i32, ptr %i.cpy, align 4, !tbaa !51
  %i.crc = add nsw i32 %i.crb, %i.cra
  store i32 %i.crc, ptr %i.cpy, align 4, !tbaa !51
  %i.crd = trunc i64 %indvars.iv1157.2 to i8
  %i.cre = sext i32 %.1.i423807.2 to i64
  %i.crf = getelementptr inbounds i8, ptr %i.ctd, i64 %i.cre
  store i8 %i.crd, ptr %i.crf, align 1, !tbaa !48
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw, %.lr.ph808.2
  %.493.i424.2 = phi i32 [ %.190.i422806.2, %bb.gw ], [ %spec.select.i427.2, %bb.gx ], [ %.190.i422806.2, %.lr.ph808.2 ] ; 2 uses
  %.3.i425.2 = phi i32 [ %.1.i423807.2, %bb.gw ], [ %i.cqt, %bb.gx ], [ %.1.i423807.2, %.lr.ph808.2 ] ; 3 uses
  %indvars.iv.next1158.2 = add nuw nsw i64 %indvars.iv1157.2, 1 ; 2 uses
  %exitcond.21165.not = icmp eq i64 %indvars.iv.next1158.2, 43
  br i1 %exitcond.21165.not, label %.lr.ph808.preheader.3, label %.lr.ph808.2, !llvm.loop !84

.lr.ph808.preheader.3:                            ; preds = %bb.gy
  %i.crg = getelementptr inbounds nuw i8, ptr %.0194992, i64 504 ; 2 uses
  store i32 %.3.i425.2, ptr %i.crg, align 4, !tbaa !51
  %i.crh = getelementptr inbounds nuw i8, ptr %.0194992, i64 488 ; 5 uses
  store i32 1, ptr %i.crh, align 4, !tbaa !51
  br label %.lr.ph808.3

.lr.ph808.3:                                      ; preds = %bb.hb, %.lr.ph808.preheader.3
  %indvars.iv1157.3 = phi i64 [ 43, %.lr.ph808.preheader.3 ], [ %indvars.iv.next1158.3, %bb.hb ] ; 7 uses
  %.1.i423807.3 = phi i32 [ %.3.i425.2, %.lr.ph808.preheader.3 ], [ %.3.i425.3, %bb.hb ] ; 4 uses
  %.190.i422806.3 = phi i32 [ %.493.i424.2, %.lr.ph808.preheader.3 ], [ %.493.i424.3, %bb.hb ] ; 3 uses
  %i.cri = getelementptr inbounds nuw i8, ptr %i.csu, i64 %indvars.iv1157.3
  %i.crj = load i8, ptr %i.cri, align 1, !tbaa !48
  %i.crk = zext i8 %i.crj to i64
  %i.crl = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.crk
  %i.crm = load i16, ptr %i.crl, align 2, !tbaa !116
  %i.crn = sext i16 %i.crm to i32                 ; 3 uses
  %i.cro = add i32 %i.csw, %i.crn
  %i.crp = icmp ugt i32 %i.cro, %i.csx
  br i1 %i.crp, label %bb.gz, label %bb.hb

bb.gz:                                            ; preds = %.lr.ph808.3
  %i.crq = lshr i32 %i.crn, 31
  %i.crr = trunc nuw nsw i32 %i.crq to i8
  %i.crs = getelementptr inbounds nuw i8, ptr %i.ctc, i64 %indvars.iv1157.3
  store i8 %i.crr, ptr %i.crs, align 1, !tbaa !48
  %i.crt = call i32 @llvm.abs.i32(i32 %i.crn, i1 true)
  %i.cru = getelementptr inbounds nuw [4 x i8], ptr %i.csv, i64 %indvars.iv1157.3
  %i.crv = load i32, ptr %i.cru, align 4, !tbaa !51
  %i.crw = mul nsw i32 %i.crv, %i.crt
  %i.crx = add nsw i32 %i.crw, 2097152
  %i.cry = ashr i32 %i.crx, 22                    ; 4 uses
  %.not102.i426.3 = icmp eq i32 %i.cry, 0
  br i1 %.not102.i426.3, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.crz = trunc nsw i32 %i.cry to i16
  %i.csa = getelementptr inbounds nuw [2 x i8], ptr %i.csz, i64 %indvars.iv1157.3
  store i16 %i.crz, ptr %i.csa, align 2, !tbaa !116
  %spec.select.i427.3 = call i32 @llvm.smax.i32(i32 %i.cry, i32 %.190.i422806.3)
  %i.csb = xor i32 %.1.i423807.3, -1
  %i.csc = trunc nsw i64 %indvars.iv1157.3 to i32 ; 2 uses
  %i.csd = add i32 %i.csc, %i.csb
  %i.cse = sext i32 %i.csd to i64
  %i.csf = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.cse
  %i.csg = sext i32 %i.cry to i64
  %i.csh = getelementptr inbounds [8 x i8], ptr %i.csf, i64 %i.csg
  %i.csi = getelementptr inbounds nuw i8, ptr %i.csh, i64 4
  %i.csj = load i32, ptr %i.csi, align 4, !tbaa !53
  %i.csk = load i32, ptr %i.crh, align 4, !tbaa !51
  %i.csl = add nsw i32 %i.csk, %i.csj
  store i32 %i.csl, ptr %i.crh, align 4, !tbaa !51
  %i.csm = trunc i64 %indvars.iv1157.3 to i8
  %i.csn = sext i32 %.1.i423807.3 to i64
  %i.cso = getelementptr inbounds i8, ptr %i.ctd, i64 %i.csn
  store i8 %i.csm, ptr %i.cso, align 1, !tbaa !48
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz, %.lr.ph808.3
  %.493.i424.3 = phi i32 [ %.190.i422806.3, %bb.gz ], [ %spec.select.i427.3, %bb.ha ], [ %.190.i422806.3, %.lr.ph808.3 ] ; 2 uses
  %.3.i425.3 = phi i32 [ %.1.i423807.3, %bb.gz ], [ %i.csc, %bb.ha ], [ %.1.i423807.3, %.lr.ph808.3 ] ; 2 uses
  %indvars.iv.next1158.3 = add nuw nsw i64 %indvars.iv1157.3, 1 ; 2 uses
  %exitcond.31166.not = icmp eq i64 %indvars.iv.next1158.3, 64
  br i1 %exitcond.31166.not, label %.loopexit700.3, label %.lr.ph808.3, !llvm.loop !84

.loopexit700.3:                                   ; preds = %bb.hb
  %i.csp = sext i32 %.3.i425.3 to i64
  %i.csq = getelementptr inbounds i8, ptr %i.ctd, i64 %i.csp
  store i8 64, ptr %i.csq, align 1, !tbaa !48
  %i.csr = getelementptr inbounds nuw i8, ptr %.0194992, i64 516 ; 2 uses
  br label %bb.hm

.lr.ph808.preheader:                              ; preds = %bb.gq
  %i.css = getelementptr inbounds nuw i8, ptr %.0194992, i64 520
  %i.cst = load i32, ptr %i.css, align 4, !tbaa !119
  %.not50.i260 = icmp eq i32 %i.cst, 0            ; 5 uses
  %i.csu = select i1 %.not50.i260, ptr @ff_zigzag_direct, ptr @ff_dv_zigzag248_direct ; 8 uses
  %i.csv = select i1 %.not50.i260, ptr @dv_weight_88, ptr @dv_weight_248 ; 3 uses
  %i.csw = load i32, ptr %i.ad, align 8, !tbaa !125 ; 9 uses
  %i.csx = shl i32 %i.csw, 1                      ; 8 uses
  %i.csy = load i16, ptr %i.k, align 16, !tbaa !116
  %i.csz = getelementptr inbounds nuw i8, ptr %.0194992, i64 524 ; 8 uses
  store i16 %i.csy, ptr %i.csz, align 4, !tbaa !116
  %i.cta = getelementptr inbounds nuw i8, ptr %.0194992, i64 492 ; 2 uses
  %i.ctb = getelementptr inbounds nuw i8, ptr %.0194992, i64 476 ; 11 uses
  %i.ctc = getelementptr inbounds nuw i8, ptr %.0194992, i64 716 ; 3 uses
  %i.ctd = getelementptr inbounds nuw i8, ptr %.0194992, i64 652 ; 19 uses
  store i32 0, ptr %i.cta, align 4, !tbaa !51
  store i32 1, ptr %i.ctb, align 4, !tbaa !51
  %34 = getelementptr inbounds nuw i8, ptr %i.csu, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !48
  %i.cte = zext i8 %35 to i64
  %i.ctf = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.cte
  %i.ctg = load i16, ptr %i.ctf, align 2, !tbaa !116
  %i.cth = sext i16 %i.ctg to i32                 ; 3 uses
  %i.cti = add i32 %i.csw, %i.cth
  %i.ctj = icmp ugt i32 %i.cti, %i.csx
  br i1 %i.ctj, label %bb.hc, label %.lr.ph808.11170

bb.hc:                                            ; preds = %.lr.ph808.preheader
  %i.ctk = lshr i32 %i.cth, 31
  %i.ctl = trunc nuw nsw i32 %i.ctk to i8
  %i.ctm = getelementptr inbounds nuw i8, ptr %.0194992, i64 717
  store i8 %i.ctl, ptr %i.ctm, align 1, !tbaa !48
  %i.ctn = call i32 @llvm.abs.i32(i32 %i.cth, i1 true)
  %i.cto = select i1 %.not50.i260, i32 257107, i32 262144
  %i.ctp = mul nuw nsw i32 %i.cto, %i.ctn
  %i.ctq = add nuw nsw i32 %i.ctp, 2097152
  %i.ctr = lshr i32 %i.ctq, 22                    ; 4 uses
  %.not102.i426 = icmp eq i32 %i.ctr, 0
  br i1 %.not102.i426, label %.lr.ph808.11170, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.cts = trunc nuw nsw i32 %i.ctr to i16
  %i.ctt = getelementptr inbounds nuw i8, ptr %.0194992, i64 526
  store i16 %i.cts, ptr %i.ctt, align 2, !tbaa !116
  %i.ctu = zext nneg i32 %i.ctr to i64
  %i.ctv = getelementptr inbounds nuw [8 x i8], ptr @dv_vlc_map, i64 %i.ctu
  %i.ctw = getelementptr inbounds nuw i8, ptr %i.ctv, i64 4
  %i.ctx = load i32, ptr %i.ctw, align 4, !tbaa !53
  %i.cty = add nsw i32 %i.ctx, 1                  ; 2 uses
  store i32 %i.cty, ptr %i.ctb, align 4, !tbaa !51
  store i8 1, ptr %i.ctd, align 4, !tbaa !48
  br label %.lr.ph808.11170

.lr.ph808.11170:                                  ; preds = %bb.hd, %bb.hc, %.lr.ph808.preheader
  %i.ctz = phi i32 [ 1, %bb.hc ], [ %i.cty, %bb.hd ], [ 1, %.lr.ph808.preheader ] ; 3 uses
  %.493.i424 = phi i32 [ -1, %bb.hc ], [ %i.ctr, %bb.hd ], [ -1, %.lr.ph808.preheader ] ; 3 uses
  %.3.i425 = phi i32 [ 0, %bb.hc ], [ 1, %bb.hd ], [ 0, %.lr.ph808.preheader ] ; 4 uses
  %36 = getelementptr inbounds nuw i8, ptr %i.csu, i64 2
  %37 = load i8, ptr %36, align 2, !tbaa !48
  %i.cua = zext i8 %37 to i64
  %i.cub = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.cua
  %i.cuc = load i16, ptr %i.cub, align 2, !tbaa !116
  %i.cud = sext i16 %i.cuc to i32                 ; 3 uses
  %i.cue = add i32 %i.csw, %i.cud
  %i.cuf = icmp ugt i32 %i.cue, %i.csx
  br i1 %i.cuf, label %bb.he, label %.lr.ph808.21180

bb.he:                                            ; preds = %.lr.ph808.11170
  %i.cug = lshr i32 %i.cud, 31
  %i.cuh = trunc nuw nsw i32 %i.cug to i8
  %i.cui = getelementptr inbounds nuw i8, ptr %.0194992, i64 718
  store i8 %i.cuh, ptr %i.cui, align 2, !tbaa !48
  %i.cuj = call i32 @llvm.abs.i32(i32 %i.cud, i1 true)
  %i.cuk = mul nuw nsw i32 %i.cuj, 257107
  %i.cul = add nuw nsw i32 %i.cuk, 2097152
  %i.cum = lshr i32 %i.cul, 22                    ; 4 uses
  %.not102.i426.11171 = icmp eq i32 %i.cum, 0
  br i1 %.not102.i426.11171, label %.lr.ph808.21180, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.cun = trunc nuw nsw i32 %i.cum to i16
  %i.cuo = getelementptr inbounds nuw i8, ptr %.0194992, i64 528
  store i16 %i.cun, ptr %i.cuo, align 4, !tbaa !116
  %spec.select.i427.11172 = call i32 @llvm.smax.i32(i32 %i.cum, i32 %.493.i424)
  %i.cup = xor i32 %.3.i425, 1
  %i.cuq = zext nneg i32 %i.cup to i64
  %i.cur = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.cuq
  %i.cus = zext nneg i32 %i.cum to i64
  %i.cut = getelementptr inbounds nuw [8 x i8], ptr %i.cur, i64 %i.cus
  %i.cuu = getelementptr inbounds nuw i8, ptr %i.cut, i64 4
  %i.cuv = load i32, ptr %i.cuu, align 4, !tbaa !53
  %i.cuw = add nsw i32 %i.ctz, %i.cuv             ; 2 uses
  store i32 %i.cuw, ptr %i.ctb, align 4, !tbaa !51
  %i.cux = zext nneg i32 %.3.i425 to i64
  %i.cuy = getelementptr inbounds nuw i8, ptr %i.ctd, i64 %i.cux
  store i8 2, ptr %i.cuy, align 1, !tbaa !48
  br label %.lr.ph808.21180

.lr.ph808.21180:                                  ; preds = %bb.hf, %bb.he, %.lr.ph808.11170
  %i.cuz = phi i32 [ %i.ctz, %bb.he ], [ %i.cuw, %bb.hf ], [ %i.ctz, %.lr.ph808.11170 ]
  %.493.i424.11173 = phi i32 [ %.493.i424, %bb.he ], [ %spec.select.i427.11172, %bb.hf ], [ %.493.i424, %.lr.ph808.11170 ] ; 3 uses
  %.3.i425.11174 = phi i32 [ %.3.i425, %bb.he ], [ 2, %bb.hf ], [ %.3.i425, %.lr.ph808.11170 ] ; 4 uses
  %38 = getelementptr inbounds nuw i8, ptr %i.csu, i64 3
  %39 = load i8, ptr %38, align 1, !tbaa !48
  %i.cva = zext i8 %39 to i64
  %i.cvb = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.cva
  %i.cvc = load i16, ptr %i.cvb, align 2, !tbaa !116
  %i.cvd = sext i16 %i.cvc to i32                 ; 3 uses
  %i.cve = add i32 %i.csw, %i.cvd
  %i.cvf = icmp ugt i32 %i.cve, %i.csx
  br i1 %i.cvf, label %bb.hg, label %.lr.ph808.31190

bb.hg:                                            ; preds = %.lr.ph808.21180
  %i.cvg = lshr i32 %i.cvd, 31
  %i.cvh = trunc nuw nsw i32 %i.cvg to i8
  %i.cvi = getelementptr inbounds nuw i8, ptr %.0194992, i64 719
  store i8 %i.cvh, ptr %i.cvi, align 1, !tbaa !48
  %i.cvj = call i32 @llvm.abs.i32(i32 %i.cvd, i1 true)
  %i.cvk = select i1 %.not50.i260, i32 242189, i32 257107
  %i.cvl = mul nuw nsw i32 %i.cvk, %i.cvj
  %i.cvm = add nuw nsw i32 %i.cvl, 2097152
  %i.cvn = lshr i32 %i.cvm, 22                    ; 4 uses
  %.not102.i426.21181 = icmp eq i32 %i.cvn, 0
  br i1 %.not102.i426.21181, label %.lr.ph808.31190, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.cvo = trunc nuw nsw i32 %i.cvn to i16
  %i.cvp = getelementptr inbounds nuw i8, ptr %.0194992, i64 530
  store i16 %i.cvo, ptr %i.cvp, align 2, !tbaa !116
  %spec.select.i427.21182 = call i32 @llvm.smax.i32(i32 %i.cvn, i32 %.493.i424.11173)
  %i.cvq = sub nuw nsw i32 2, %.3.i425.11174
  %i.cvr = zext nneg i32 %i.cvq to i64
  %i.cvs = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.cvr
  %i.cvt = zext nneg i32 %i.cvn to i64
  %i.cvu = getelementptr inbounds nuw [8 x i8], ptr %i.cvs, i64 %i.cvt
  %i.cvv = getelementptr inbounds nuw i8, ptr %i.cvu, i64 4
  %i.cvw = load i32, ptr %i.cvv, align 4, !tbaa !53
  %i.cvx = add nsw i32 %i.cuz, %i.cvw
  store i32 %i.cvx, ptr %i.ctb, align 4, !tbaa !51
  %i.cvy = zext nneg i32 %.3.i425.11174 to i64
  %i.cvz = getelementptr inbounds nuw i8, ptr %i.ctd, i64 %i.cvy
  store i8 3, ptr %i.cvz, align 1, !tbaa !48
  br label %.lr.ph808.31190

.lr.ph808.31190:                                  ; preds = %bb.hh, %bb.hg, %.lr.ph808.21180
  %.493.i424.21183 = phi i32 [ %.493.i424.11173, %bb.hg ], [ %spec.select.i427.21182, %bb.hh ], [ %.493.i424.11173, %.lr.ph808.21180 ] ; 3 uses
  %.3.i425.21184 = phi i32 [ %.3.i425.11174, %bb.hg ], [ 3, %bb.hh ], [ %.3.i425.11174, %.lr.ph808.21180 ] ; 4 uses
  %40 = getelementptr inbounds nuw i8, ptr %i.csu, i64 4
  %41 = load i8, ptr %40, align 4, !tbaa !48
  %i.cwa = zext i8 %41 to i64
  %i.cwb = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.cwa
  %i.cwc = load i16, ptr %i.cwb, align 2, !tbaa !116
  %i.cwd = sext i16 %i.cwc to i32                 ; 3 uses
  %i.cwe = add i32 %i.csw, %i.cwd
  %i.cwf = icmp ugt i32 %i.cwe, %i.csx
  br i1 %i.cwf, label %bb.hi, label %.lr.ph808.4

bb.hi:                                            ; preds = %.lr.ph808.31190
  %i.cwg = lshr i32 %i.cwd, 31
  %i.cwh = trunc nuw nsw i32 %i.cwg to i8
  %i.cwi = getelementptr inbounds nuw i8, ptr %.0194992, i64 720
  store i8 %i.cwh, ptr %i.cwi, align 4, !tbaa !48
  %i.cwj = call i32 @llvm.abs.i32(i32 %i.cwd, i1 true)
  %i.cwk = select i1 %.not50.i260, i32 252167, i32 242189
  %i.cwl = mul nuw nsw i32 %i.cwk, %i.cwj
  %i.cwm = add nuw nsw i32 %i.cwl, 2097152
  %i.cwn = lshr i32 %i.cwm, 22                    ; 4 uses
  %.not102.i426.31191 = icmp eq i32 %i.cwn, 0
  br i1 %.not102.i426.31191, label %.lr.ph808.4, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.cwo = trunc nuw nsw i32 %i.cwn to i16
  %i.cwp = getelementptr inbounds nuw i8, ptr %.0194992, i64 532
  store i16 %i.cwo, ptr %i.cwp, align 4, !tbaa !116
  %spec.select.i427.31192 = call i32 @llvm.smax.i32(i32 %i.cwn, i32 %.493.i424.21183)
  %i.cwq = sub nuw nsw i32 3, %.3.i425.21184
  %i.cwr = zext nneg i32 %i.cwq to i64
  %i.cws = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.cwr
  %i.cwt = zext nneg i32 %i.cwn to i64
  %i.cwu = getelementptr inbounds nuw [8 x i8], ptr %i.cws, i64 %i.cwt
  %i.cwv = getelementptr inbounds nuw i8, ptr %i.cwu, i64 4
  %i.cww = load i32, ptr %i.cwv, align 4, !tbaa !53
  %i.cwx = load i32, ptr %i.ctb, align 4, !tbaa !51
  %i.cwy = add nsw i32 %i.cwx, %i.cww
  store i32 %i.cwy, ptr %i.ctb, align 4, !tbaa !51
  %i.cwz = zext nneg i32 %.3.i425.21184 to i64
  %i.cxa = getelementptr inbounds nuw i8, ptr %i.ctd, i64 %i.cwz
  store i8 4, ptr %i.cxa, align 1, !tbaa !48
  br label %.lr.ph808.4

.lr.ph808.4:                                      ; preds = %bb.hj, %bb.hi, %.lr.ph808.31190
  %.493.i424.31193 = phi i32 [ %.493.i424.21183, %bb.hi ], [ %spec.select.i427.31192, %bb.hj ], [ %.493.i424.21183, %.lr.ph808.31190 ] ; 3 uses
  %.3.i425.31194 = phi i32 [ %.3.i425.21184, %bb.hi ], [ 4, %bb.hj ], [ %.3.i425.21184, %.lr.ph808.31190 ] ; 4 uses
  %42 = getelementptr inbounds nuw i8, ptr %i.csu, i64 5
  %43 = load i8, ptr %42, align 1, !tbaa !48
  %i.cxb = zext i8 %43 to i64
  %i.cxc = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.cxb
  %i.cxd = load i16, ptr %i.cxc, align 2, !tbaa !116
  %i.cxe = sext i16 %i.cxd to i32                 ; 3 uses
  %i.cxf = add i32 %i.csw, %i.cxe
  %i.cxg = icmp ugt i32 %i.cxf, %i.csx
  br i1 %i.cxg, label %bb.hk, label %.lr.ph808.preheader.1

bb.hk:                                            ; preds = %.lr.ph808.4
  %i.cxh = lshr i32 %i.cxe, 31
  %i.cxi = trunc nuw nsw i32 %i.cxh to i8
  %i.cxj = getelementptr inbounds nuw i8, ptr %.0194992, i64 721
  store i8 %i.cxi, ptr %i.cxj, align 1, !tbaa !48
  %i.cxk = call i32 @llvm.abs.i32(i32 %i.cxe, i1 true)
  %i.cxl = mul nuw nsw i32 %i.cxk, 242189
  %i.cxm = add nuw nsw i32 %i.cxl, 2097152
  %i.cxn = lshr i32 %i.cxm, 22                    ; 4 uses
  %.not102.i426.4 = icmp eq i32 %i.cxn, 0
  br i1 %.not102.i426.4, label %.lr.ph808.preheader.1, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.cxo = trunc nuw nsw i32 %i.cxn to i16
  %i.cxp = getelementptr inbounds nuw i8, ptr %.0194992, i64 534
  store i16 %i.cxo, ptr %i.cxp, align 2, !tbaa !116
  %spec.select.i427.4 = call i32 @llvm.smax.i32(i32 %i.cxn, i32 %.493.i424.31193)
  %i.cxq = sub nuw nsw i32 4, %.3.i425.31194
  %i.cxr = zext nneg i32 %i.cxq to i64
  %i.cxs = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.cxr
  %i.cxt = zext nneg i32 %i.cxn to i64
  %i.cxu = getelementptr inbounds nuw [8 x i8], ptr %i.cxs, i64 %i.cxt
  %i.cxv = getelementptr inbounds nuw i8, ptr %i.cxu, i64 4
  %i.cxw = load i32, ptr %i.cxv, align 4, !tbaa !53
  %i.cxx = load i32, ptr %i.ctb, align 4, !tbaa !51
  %i.cxy = add nsw i32 %i.cxx, %i.cxw
  store i32 %i.cxy, ptr %i.ctb, align 4, !tbaa !51
  %i.cxz = zext nneg i32 %.3.i425.31194 to i64
  %i.cya = getelementptr inbounds nuw i8, ptr %i.ctd, i64 %i.cxz
  store i8 5, ptr %i.cya, align 1, !tbaa !48
  br label %.lr.ph808.preheader.1

bb.hm:                                            ; preds = %bb.hm, %.loopexit700.3
  %indvars.iv1197 = phi i64 [ %indvars.iv.next1198, %bb.hm ], [ 0, %.loopexit700.3 ] ; 4 uses
  %i.cyb = trunc nuw nsw i64 %indvars.iv1197 to i32
  store i32 %i.cyb, ptr %i.csr, align 4, !tbaa !124
  %i.cyc = getelementptr inbounds nuw [4 x i8], ptr @dv_set_class_number_sd.classes, i64 %indvars.iv1197
  %i.cyd = load i32, ptr %i.cyc, align 4, !tbaa !51
  %i.cye = icmp sgt i32 %.493.i424.3, %i.cyd
  %indvars.iv.next1198 = add nuw nsw i64 %indvars.iv1197, 1
  br i1 %i.cye, label %bb.hm, label %bb.hn, !llvm.loop !85

bb.hn:                                            ; preds = %bb.hm
  %i.cyf = icmp samesign ugt i64 %indvars.iv1197, 2
  br i1 %i.cyf, label %bb.ho, label %.dv_init_enc_block.exit265_crit_edge

.dv_init_enc_block.exit265_crit_edge:             ; preds = %bb.hn
  %.pre1636 = load i32, ptr %i.ctb, align 4, !tbaa !51
  %.phi.trans.insert1637 = getelementptr inbounds nuw i8, ptr %.0194992, i64 480
  %.pre1638 = load i32, ptr %.phi.trans.insert1637, align 4, !tbaa !51
  %.phi.trans.insert1639 = getelementptr inbounds nuw i8, ptr %.0194992, i64 484
  %.pre1640 = load i32, ptr %.phi.trans.insert1639, align 4, !tbaa !51
  %.phi.trans.insert1641 = getelementptr inbounds nuw i8, ptr %.0194992, i64 488
  %.pre1642 = load i32, ptr %.phi.trans.insert1641, align 4, !tbaa !51
  br label %dv_init_enc_block.exit265

bb.ho:                                            ; preds = %bb.hn
  store i32 3, ptr %i.csr, align 4, !tbaa !124
  %i.cyg = load i8, ptr %i.ctd, align 4, !tbaa !48 ; 2 uses
  %i.cyh = zext i8 %i.cyg to i32                  ; 2 uses
  store i32 0, ptr %i.cta, align 4, !tbaa !51
  store i32 1, ptr %i.ctb, align 4, !tbaa !51
  %i.cyi = icmp ult i8 %i.cyg, 6
  br i1 %i.cyi, label %.lr.ph818, label %.loopexit699

.loopexit699:                                     ; preds = %bb.hw, %bb.ho
  %i.cyj = phi i32 [ 1, %bb.ho ], [ %i.dby, %bb.hw ]
  %.399.i417.lcssa = phi i32 [ %i.cyh, %bb.ho ], [ %i.dcb, %bb.hw ] ; 3 uses
  %.5.i418.lcssa = phi i32 [ 0, %bb.ho ], [ %.6.i420, %bb.hw ] ; 3 uses
  store i32 %.5.i418.lcssa, ptr %i.coo, align 4, !tbaa !51
  store i32 1, ptr %i.cop, align 4, !tbaa !51
  %i.cyk = icmp samesign ult i32 %.399.i417.lcssa, 21
  br i1 %i.cyk, label %.lr.ph818.1, label %.loopexit699.1

.lr.ph818.1:                                      ; preds = %.loopexit699, %bb.hq
  %i.cyl = phi i32 [ %i.czc, %bb.hq ], [ 1, %.loopexit699 ] ; 2 uses
  %.5.i418817.1 = phi i32 [ %.6.i420.1, %bb.hq ], [ %.5.i418.lcssa, %.loopexit699 ] ; 3 uses
  %.399.i417816.1 = phi i32 [ %i.czf, %bb.hq ], [ %.399.i417.lcssa, %.loopexit699 ] ; 4 uses
  %i.cym = zext nneg i32 %.399.i417816.1 to i64   ; 2 uses
  %i.cyn = getelementptr inbounds nuw [2 x i8], ptr %i.csz, i64 %i.cym ; 2 uses
  %i.cyo = load i16, ptr %i.cyn, align 2, !tbaa !116
  %i.cyp = ashr i16 %i.cyo, 1                     ; 3 uses
  store i16 %i.cyp, ptr %i.cyn, align 2, !tbaa !116
  %.not.i419.1 = icmp eq i16 %i.cyp, 0
  br i1 %.not.i419.1, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %.lr.ph818.1
  %i.cyq = xor i32 %.5.i418817.1, -1
  %i.cyr = add nsw i32 %.399.i417816.1, %i.cyq
  %i.cys = sext i32 %i.cyr to i64
  %i.cyt = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.cys
  %i.cyu = sext i16 %i.cyp to i64
  %i.cyv = getelementptr inbounds [8 x i8], ptr %i.cyt, i64 %i.cyu
  %i.cyw = getelementptr inbounds nuw i8, ptr %i.cyv, i64 4
  %i.cyx = load i32, ptr %i.cyw, align 4, !tbaa !53
  %i.cyy = add nsw i32 %i.cyl, %i.cyx             ; 2 uses
  store i32 %i.cyy, ptr %i.cop, align 4, !tbaa !51
  %i.cyz = trunc nuw nsw i32 %.399.i417816.1 to i8
  %i.cza = zext nneg i32 %.5.i418817.1 to i64
  %i.czb = getelementptr inbounds nuw i8, ptr %i.ctd, i64 %i.cza
  store i8 %i.cyz, ptr %i.czb, align 1, !tbaa !48
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %.lr.ph818.1
  %i.czc = phi i32 [ %i.cyy, %bb.hp ], [ %i.cyl, %.lr.ph818.1 ] ; 2 uses
  %.6.i420.1 = phi i32 [ %.399.i417816.1, %bb.hp ], [ %.5.i418817.1, %.lr.ph818.1 ] ; 2 uses
  %i.czd = getelementptr inbounds nuw i8, ptr %i.ctd, i64 %i.cym
  %i.cze = load i8, ptr %i.czd, align 1, !tbaa !48 ; 2 uses
  %i.czf = zext i8 %i.cze to i32                  ; 2 uses
  %i.czg = icmp ult i8 %i.cze, 21
  br i1 %i.czg, label %.lr.ph818.1, label %.loopexit699.1, !llvm.loop !86

.loopexit699.1:                                   ; preds = %bb.hq, %.loopexit699
  %i.czh = phi i32 [ 1, %.loopexit699 ], [ %i.czc, %bb.hq ]
  %.399.i417.lcssa.1 = phi i32 [ %.399.i417.lcssa, %.loopexit699 ], [ %i.czf, %bb.hq ] ; 3 uses
  %.5.i418.lcssa.1 = phi i32 [ %.5.i418.lcssa, %.loopexit699 ], [ %.6.i420.1, %bb.hq ] ; 3 uses
  store i32 %.5.i418.lcssa.1, ptr %i.cpx, align 4, !tbaa !51
  store i32 1, ptr %i.cpy, align 4, !tbaa !51
  %i.czi = icmp samesign ult i32 %.399.i417.lcssa.1, 43
  br i1 %i.czi, label %.lr.ph818.2, label %.loopexit699.2

.lr.ph818.2:                                      ; preds = %.loopexit699.1, %bb.hs
  %i.czj = phi i32 [ %i.daa, %bb.hs ], [ 1, %.loopexit699.1 ] ; 2 uses
  %.5.i418817.2 = phi i32 [ %.6.i420.2, %bb.hs ], [ %.5.i418.lcssa.1, %.loopexit699.1 ] ; 3 uses
  %.399.i417816.2 = phi i32 [ %i.dad, %bb.hs ], [ %.399.i417.lcssa.1, %.loopexit699.1 ] ; 4 uses
  %i.czk = zext nneg i32 %.399.i417816.2 to i64   ; 2 uses
  %i.czl = getelementptr inbounds nuw [2 x i8], ptr %i.csz, i64 %i.czk ; 2 uses
  %i.czm = load i16, ptr %i.czl, align 2, !tbaa !116
  %i.czn = ashr i16 %i.czm, 1                     ; 3 uses
  store i16 %i.czn, ptr %i.czl, align 2, !tbaa !116
  %.not.i419.2 = icmp eq i16 %i.czn, 0
  br i1 %.not.i419.2, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %.lr.ph818.2
  %i.czo = xor i32 %.5.i418817.2, -1
  %i.czp = add nsw i32 %.399.i417816.2, %i.czo
  %i.czq = sext i32 %i.czp to i64
  %i.czr = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.czq
  %i.czs = sext i16 %i.czn to i64
  %i.czt = getelementptr inbounds [8 x i8], ptr %i.czr, i64 %i.czs
  %i.czu = getelementptr inbounds nuw i8, ptr %i.czt, i64 4
  %i.czv = load i32, ptr %i.czu, align 4, !tbaa !53
  %i.czw = add nsw i32 %i.czj, %i.czv             ; 2 uses
  store i32 %i.czw, ptr %i.cpy, align 4, !tbaa !51
  %i.czx = trunc nuw nsw i32 %.399.i417816.2 to i8
  %i.czy = zext nneg i32 %.5.i418817.2 to i64
  %i.czz = getelementptr inbounds nuw i8, ptr %i.ctd, i64 %i.czy
  store i8 %i.czx, ptr %i.czz, align 1, !tbaa !48
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %.lr.ph818.2
  %i.daa = phi i32 [ %i.czw, %bb.hr ], [ %i.czj, %.lr.ph818.2 ] ; 2 uses
  %.6.i420.2 = phi i32 [ %.399.i417816.2, %bb.hr ], [ %.5.i418817.2, %.lr.ph818.2 ] ; 2 uses
  %i.dab = getelementptr inbounds nuw i8, ptr %i.ctd, i64 %i.czk
  %i.dac = load i8, ptr %i.dab, align 1, !tbaa !48 ; 2 uses
  %i.dad = zext i8 %i.dac to i32                  ; 2 uses
  %i.dae = icmp ult i8 %i.dac, 43
  br i1 %i.dae, label %.lr.ph818.2, label %.loopexit699.2, !llvm.loop !86

.loopexit699.2:                                   ; preds = %bb.hs, %.loopexit699.1
  %i.daf = phi i32 [ 1, %.loopexit699.1 ], [ %i.daa, %bb.hs ]
  %.399.i417.lcssa.2 = phi i32 [ %.399.i417.lcssa.1, %.loopexit699.1 ], [ %i.dad, %bb.hs ] ; 3 uses
  %.5.i418.lcssa.2 = phi i32 [ %.5.i418.lcssa.1, %.loopexit699.1 ], [ %.6.i420.2, %bb.hs ] ; 3 uses
  store i32 %.5.i418.lcssa.2, ptr %i.crg, align 4, !tbaa !51
  store i32 1, ptr %i.crh, align 4, !tbaa !51
  %i.dag = icmp samesign ult i32 %.399.i417.lcssa.2, 64
  br i1 %i.dag, label %.lr.ph818.3, label %.loopexit699.3

.lr.ph818.3:                                      ; preds = %.loopexit699.2, %bb.hu
  %i.dah = phi i32 [ %i.day, %bb.hu ], [ 1, %.loopexit699.2 ] ; 2 uses
  %.5.i418817.3 = phi i32 [ %.6.i420.3, %bb.hu ], [ %.5.i418.lcssa.2, %.loopexit699.2 ] ; 3 uses
  %.399.i417816.3 = phi i32 [ %i.dbb, %bb.hu ], [ %.399.i417.lcssa.2, %.loopexit699.2 ] ; 4 uses
  %i.dai = zext nneg i32 %.399.i417816.3 to i64   ; 2 uses
  %i.daj = getelementptr inbounds nuw [2 x i8], ptr %i.csz, i64 %i.dai ; 2 uses
  %i.dak = load i16, ptr %i.daj, align 2, !tbaa !116
  %i.dal = ashr i16 %i.dak, 1                     ; 3 uses
  store i16 %i.dal, ptr %i.daj, align 2, !tbaa !116
  %.not.i419.3 = icmp eq i16 %i.dal, 0
  br i1 %.not.i419.3, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %.lr.ph818.3
  %i.dam = xor i32 %.5.i418817.3, -1
  %i.dan = add nsw i32 %.399.i417816.3, %i.dam
  %i.dao = sext i32 %i.dan to i64
  %i.dap = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.dao
  %i.daq = sext i16 %i.dal to i64
  %i.dar = getelementptr inbounds [8 x i8], ptr %i.dap, i64 %i.daq
  %i.das = getelementptr inbounds nuw i8, ptr %i.dar, i64 4
  %i.dat = load i32, ptr %i.das, align 4, !tbaa !53
  %i.dau = add nsw i32 %i.dah, %i.dat             ; 2 uses
  store i32 %i.dau, ptr %i.crh, align 4, !tbaa !51
  %i.dav = trunc nuw nsw i32 %.399.i417816.3 to i8
  %i.daw = zext nneg i32 %.5.i418817.3 to i64
end_hunk_4
begin_hunk_5_@dv_encode_video_segment:bb.a
  br label %.lr.ph828.1

.lr.ph828.1:                                      ; preds = %bb.ii, %.lr.ph828.preheader.1
  %indvars.iv1206.1 = phi i64 [ 6, %.lr.ph828.preheader.1 ], [ %indvars.iv.next1207.1, %bb.ii ] ; 7 uses
  %.1.i443827.1 = phi i32 [ %.3.i445.4, %.lr.ph828.preheader.1 ], [ %.3.i445.1, %bb.ii ] ; 4 uses
  %.190.i442826.1 = phi i32 [ %.493.i444.4, %.lr.ph828.preheader.1 ], [ %.493.i444.1, %bb.ii ] ; 3 uses
  %i.dfw = getelementptr inbounds nuw i8, ptr %i.dka, i64 %indvars.iv1206.1
  %i.dfx = load i8, ptr %i.dfw, align 1, !tbaa !48
  %i.dfy = zext i8 %i.dfx to i64
  %i.dfz = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.dfy
  %i.dga = load i16, ptr %i.dfz, align 2, !tbaa !116
  %i.dgb = sext i16 %i.dga to i32                 ; 3 uses
  %i.dgc = add i32 %i.dkc, %i.dgb
  %i.dgd = icmp ugt i32 %i.dgc, %i.dkd
  br i1 %i.dgd, label %bb.ig, label %bb.ii

bb.ig:                                            ; preds = %.lr.ph828.1
  %i.dge = lshr i32 %i.dgb, 31
  %i.dgf = trunc nuw nsw i32 %i.dge to i8
  %i.dgg = getelementptr inbounds nuw i8, ptr %i.dki, i64 %indvars.iv1206.1
  store i8 %i.dgf, ptr %i.dgg, align 1, !tbaa !48
  %i.dgh = call i32 @llvm.abs.i32(i32 %i.dgb, i1 true)
  %i.dgi = getelementptr inbounds nuw [4 x i8], ptr %i.dkb, i64 %indvars.iv1206.1
  %i.dgj = load i32, ptr %i.dgi, align 4, !tbaa !51
  %i.dgk = mul nsw i32 %i.dgj, %i.dgh
  %i.dgl = add nsw i32 %i.dgk, 2097152
  %i.dgm = ashr i32 %i.dgl, 22                    ; 4 uses
  %.not102.i446.1 = icmp eq i32 %i.dgm, 0
  br i1 %.not102.i446.1, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.dgn = trunc nsw i32 %i.dgm to i16
  %i.dgo = getelementptr inbounds nuw [2 x i8], ptr %i.dkf, i64 %indvars.iv1206.1
  store i16 %i.dgn, ptr %i.dgo, align 2, !tbaa !116
  %spec.select.i447.1 = call i32 @llvm.smax.i32(i32 %i.dgm, i32 %.190.i442826.1)
  %i.dgp = xor i32 %.1.i443827.1, -1
  %i.dgq = trunc nsw i64 %indvars.iv1206.1 to i32 ; 2 uses
  %i.dgr = add i32 %i.dgq, %i.dgp
  %i.dgs = sext i32 %i.dgr to i64
  %i.dgt = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.dgs
  %i.dgu = sext i32 %i.dgm to i64
  %i.dgv = getelementptr inbounds [8 x i8], ptr %i.dgt, i64 %i.dgu
  %i.dgw = getelementptr inbounds nuw i8, ptr %i.dgv, i64 4
  %i.dgx = load i32, ptr %i.dgw, align 4, !tbaa !53
  %i.dgy = load i32, ptr %i.dfv, align 4, !tbaa !51
  %i.dgz = add nsw i32 %i.dgy, %i.dgx
  store i32 %i.dgz, ptr %i.dfv, align 4, !tbaa !51
  %i.dha = trunc i64 %indvars.iv1206.1 to i8
  %i.dhb = sext i32 %.1.i443827.1 to i64
  %i.dhc = getelementptr inbounds i8, ptr %i.dkj, i64 %i.dhb
  store i8 %i.dha, ptr %i.dhc, align 1, !tbaa !48
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig, %.lr.ph828.1
  %.493.i444.1 = phi i32 [ %.190.i442826.1, %bb.ig ], [ %spec.select.i447.1, %bb.ih ], [ %.190.i442826.1, %.lr.ph828.1 ] ; 2 uses
  %.3.i445.1 = phi i32 [ %.1.i443827.1, %bb.ig ], [ %i.dgq, %bb.ih ], [ %.1.i443827.1, %.lr.ph828.1 ] ; 3 uses
  %indvars.iv.next1207.1 = add nuw nsw i64 %indvars.iv1206.1, 1 ; 2 uses
  %exitcond.11213.not = icmp eq i64 %indvars.iv.next1207.1, 21
  br i1 %exitcond.11213.not, label %.lr.ph828.preheader.2, label %.lr.ph828.1, !llvm.loop !84

.lr.ph828.preheader.2:                            ; preds = %bb.ii
  %i.dhd = getelementptr inbounds nuw i8, ptr %.0194992, i64 960 ; 2 uses
  store i32 %.3.i445.1, ptr %i.dhd, align 4, !tbaa !51
  %i.dhe = getelementptr inbounds nuw i8, ptr %.0194992, i64 944 ; 5 uses
  store i32 1, ptr %i.dhe, align 4, !tbaa !51
  br label %.lr.ph828.2

.lr.ph828.2:                                      ; preds = %bb.il, %.lr.ph828.preheader.2
  %indvars.iv1206.2 = phi i64 [ 21, %.lr.ph828.preheader.2 ], [ %indvars.iv.next1207.2, %bb.il ] ; 7 uses
  %.1.i443827.2 = phi i32 [ %.3.i445.1, %.lr.ph828.preheader.2 ], [ %.3.i445.2, %bb.il ] ; 4 uses
  %.190.i442826.2 = phi i32 [ %.493.i444.1, %.lr.ph828.preheader.2 ], [ %.493.i444.2, %bb.il ] ; 3 uses
  %i.dhf = getelementptr inbounds nuw i8, ptr %i.dka, i64 %indvars.iv1206.2
  %i.dhg = load i8, ptr %i.dhf, align 1, !tbaa !48
  %i.dhh = zext i8 %i.dhg to i64
  %i.dhi = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.dhh
  %i.dhj = load i16, ptr %i.dhi, align 2, !tbaa !116
  %i.dhk = sext i16 %i.dhj to i32                 ; 3 uses
  %i.dhl = add i32 %i.dkc, %i.dhk
  %i.dhm = icmp ugt i32 %i.dhl, %i.dkd
  br i1 %i.dhm, label %bb.ij, label %bb.il

bb.ij:                                            ; preds = %.lr.ph828.2
  %i.dhn = lshr i32 %i.dhk, 31
  %i.dho = trunc nuw nsw i32 %i.dhn to i8
  %i.dhp = getelementptr inbounds nuw i8, ptr %i.dki, i64 %indvars.iv1206.2
  store i8 %i.dho, ptr %i.dhp, align 1, !tbaa !48
  %i.dhq = call i32 @llvm.abs.i32(i32 %i.dhk, i1 true)
  %i.dhr = getelementptr inbounds nuw [4 x i8], ptr %i.dkb, i64 %indvars.iv1206.2
  %i.dhs = load i32, ptr %i.dhr, align 4, !tbaa !51
  %i.dht = mul nsw i32 %i.dhs, %i.dhq
  %i.dhu = add nsw i32 %i.dht, 2097152
  %i.dhv = ashr i32 %i.dhu, 22                    ; 4 uses
  %.not102.i446.2 = icmp eq i32 %i.dhv, 0
  br i1 %.not102.i446.2, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.dhw = trunc nsw i32 %i.dhv to i16
  %i.dhx = getelementptr inbounds nuw [2 x i8], ptr %i.dkf, i64 %indvars.iv1206.2
  store i16 %i.dhw, ptr %i.dhx, align 2, !tbaa !116
  %spec.select.i447.2 = call i32 @llvm.smax.i32(i32 %i.dhv, i32 %.190.i442826.2)
  %i.dhy = xor i32 %.1.i443827.2, -1
  %i.dhz = trunc nsw i64 %indvars.iv1206.2 to i32 ; 2 uses
  %i.dia = add i32 %i.dhz, %i.dhy
  %i.dib = sext i32 %i.dia to i64
  %i.dic = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.dib
  %i.did = sext i32 %i.dhv to i64
  %i.die = getelementptr inbounds [8 x i8], ptr %i.dic, i64 %i.did
  %i.dif = getelementptr inbounds nuw i8, ptr %i.die, i64 4
  %i.dig = load i32, ptr %i.dif, align 4, !tbaa !53
  %i.dih = load i32, ptr %i.dhe, align 4, !tbaa !51
  %i.dii = add nsw i32 %i.dih, %i.dig
  store i32 %i.dii, ptr %i.dhe, align 4, !tbaa !51
  %i.dij = trunc i64 %indvars.iv1206.2 to i8
  %i.dik = sext i32 %.1.i443827.2 to i64
  %i.dil = getelementptr inbounds i8, ptr %i.dkj, i64 %i.dik
  store i8 %i.dij, ptr %i.dil, align 1, !tbaa !48
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij, %.lr.ph828.2
  %.493.i444.2 = phi i32 [ %.190.i442826.2, %bb.ij ], [ %spec.select.i447.2, %bb.ik ], [ %.190.i442826.2, %.lr.ph828.2 ] ; 2 uses
  %.3.i445.2 = phi i32 [ %.1.i443827.2, %bb.ij ], [ %i.dhz, %bb.ik ], [ %.1.i443827.2, %.lr.ph828.2 ] ; 3 uses
  %indvars.iv.next1207.2 = add nuw nsw i64 %indvars.iv1206.2, 1 ; 2 uses
  %exitcond.21214.not = icmp eq i64 %indvars.iv.next1207.2, 43
  br i1 %exitcond.21214.not, label %.lr.ph828.preheader.3, label %.lr.ph828.2, !llvm.loop !84

.lr.ph828.preheader.3:                            ; preds = %bb.il
  %i.dim = getelementptr inbounds nuw i8, ptr %.0194992, i64 964 ; 2 uses
  store i32 %.3.i445.2, ptr %i.dim, align 4, !tbaa !51
  %i.din = getelementptr inbounds nuw i8, ptr %.0194992, i64 948 ; 5 uses
  store i32 1, ptr %i.din, align 4, !tbaa !51
  br label %.lr.ph828.3

.lr.ph828.3:                                      ; preds = %bb.io, %.lr.ph828.preheader.3
  %indvars.iv1206.3 = phi i64 [ 43, %.lr.ph828.preheader.3 ], [ %indvars.iv.next1207.3, %bb.io ] ; 7 uses
  %.1.i443827.3 = phi i32 [ %.3.i445.2, %.lr.ph828.preheader.3 ], [ %.3.i445.3, %bb.io ] ; 4 uses
  %.190.i442826.3 = phi i32 [ %.493.i444.2, %.lr.ph828.preheader.3 ], [ %.493.i444.3, %bb.io ] ; 3 uses
  %i.dio = getelementptr inbounds nuw i8, ptr %i.dka, i64 %indvars.iv1206.3
  %i.dip = load i8, ptr %i.dio, align 1, !tbaa !48
  %i.diq = zext i8 %i.dip to i64
  %i.dir = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.diq
  %i.dis = load i16, ptr %i.dir, align 2, !tbaa !116
  %i.dit = sext i16 %i.dis to i32                 ; 3 uses
  %i.diu = add i32 %i.dkc, %i.dit
  %i.div = icmp ugt i32 %i.diu, %i.dkd
  br i1 %i.div, label %bb.im, label %bb.io

bb.im:                                            ; preds = %.lr.ph828.3
  %i.diw = lshr i32 %i.dit, 31
  %i.dix = trunc nuw nsw i32 %i.diw to i8
  %i.diy = getelementptr inbounds nuw i8, ptr %i.dki, i64 %indvars.iv1206.3
  store i8 %i.dix, ptr %i.diy, align 1, !tbaa !48
  %i.diz = call i32 @llvm.abs.i32(i32 %i.dit, i1 true)
  %i.dja = getelementptr inbounds nuw [4 x i8], ptr %i.dkb, i64 %indvars.iv1206.3
  %i.djb = load i32, ptr %i.dja, align 4, !tbaa !51
  %i.djc = mul nsw i32 %i.djb, %i.diz
  %i.djd = add nsw i32 %i.djc, 2097152
  %i.dje = ashr i32 %i.djd, 22                    ; 4 uses
  %.not102.i446.3 = icmp eq i32 %i.dje, 0
  br i1 %.not102.i446.3, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.djf = trunc nsw i32 %i.dje to i16
  %i.djg = getelementptr inbounds nuw [2 x i8], ptr %i.dkf, i64 %indvars.iv1206.3
  store i16 %i.djf, ptr %i.djg, align 2, !tbaa !116
  %spec.select.i447.3 = call i32 @llvm.smax.i32(i32 %i.dje, i32 %.190.i442826.3)
  %i.djh = xor i32 %.1.i443827.3, -1
  %i.dji = trunc nsw i64 %indvars.iv1206.3 to i32 ; 2 uses
  %i.djj = add i32 %i.dji, %i.djh
  %i.djk = sext i32 %i.djj to i64
  %i.djl = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.djk
  %i.djm = sext i32 %i.dje to i64
  %i.djn = getelementptr inbounds [8 x i8], ptr %i.djl, i64 %i.djm
  %i.djo = getelementptr inbounds nuw i8, ptr %i.djn, i64 4
  %i.djp = load i32, ptr %i.djo, align 4, !tbaa !53
  %i.djq = load i32, ptr %i.din, align 4, !tbaa !51
  %i.djr = add nsw i32 %i.djq, %i.djp
  store i32 %i.djr, ptr %i.din, align 4, !tbaa !51
  %i.djs = trunc i64 %indvars.iv1206.3 to i8
  %i.djt = sext i32 %.1.i443827.3 to i64
  %i.dju = getelementptr inbounds i8, ptr %i.dkj, i64 %i.djt
  store i8 %i.djs, ptr %i.dju, align 1, !tbaa !48
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im, %.lr.ph828.3
  %.493.i444.3 = phi i32 [ %.190.i442826.3, %bb.im ], [ %spec.select.i447.3, %bb.in ], [ %.190.i442826.3, %.lr.ph828.3 ] ; 2 uses
  %.3.i445.3 = phi i32 [ %.1.i443827.3, %bb.im ], [ %i.dji, %bb.in ], [ %.1.i443827.3, %.lr.ph828.3 ] ; 2 uses
  %indvars.iv.next1207.3 = add nuw nsw i64 %indvars.iv1206.3, 1 ; 2 uses
  %exitcond.31215.not = icmp eq i64 %indvars.iv.next1207.3, 64
  br i1 %exitcond.31215.not, label %.loopexit698.3, label %.lr.ph828.3, !llvm.loop !84

.loopexit698.3:                                   ; preds = %bb.io
  %i.djv = sext i32 %.3.i445.3 to i64
  %i.djw = getelementptr inbounds i8, ptr %i.dkj, i64 %i.djv
  store i8 64, ptr %i.djw, align 1, !tbaa !48
  %i.djx = getelementptr inbounds nuw i8, ptr %.0194992, i64 976 ; 2 uses
  br label %bb.iz

.lr.ph828.preheader:                              ; preds = %bb.id
  %i.djy = getelementptr inbounds nuw i8, ptr %.0194992, i64 980
  %i.djz = load i32, ptr %i.djy, align 4, !tbaa !119
  %.not50.i250 = icmp eq i32 %i.djz, 0            ; 5 uses
  %i.dka = select i1 %.not50.i250, ptr @ff_zigzag_direct, ptr @ff_dv_zigzag248_direct ; 8 uses
  %i.dkb = select i1 %.not50.i250, ptr @dv_weight_88, ptr @dv_weight_248 ; 3 uses
  %i.dkc = load i32, ptr %i.ad, align 8, !tbaa !125 ; 9 uses
  %i.dkd = shl i32 %i.dkc, 1                      ; 8 uses
  %i.dke = load i16, ptr %i.l, align 16, !tbaa !116
  %i.dkf = getelementptr inbounds nuw i8, ptr %.0194992, i64 984 ; 8 uses
  store i16 %i.dke, ptr %i.dkf, align 4, !tbaa !116
  %i.dkg = getelementptr inbounds nuw i8, ptr %.0194992, i64 952 ; 2 uses
  %i.dkh = getelementptr inbounds nuw i8, ptr %.0194992, i64 936 ; 11 uses
  %i.dki = getelementptr inbounds nuw i8, ptr %.0194992, i64 1176 ; 3 uses
  %i.dkj = getelementptr inbounds nuw i8, ptr %.0194992, i64 1112 ; 19 uses
  store i32 0, ptr %i.dkg, align 4, !tbaa !51
  store i32 1, ptr %i.dkh, align 4, !tbaa !51
  %44 = getelementptr inbounds nuw i8, ptr %i.dka, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !48
  %i.dkk = zext i8 %45 to i64
  %i.dkl = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.dkk
  %i.dkm = load i16, ptr %i.dkl, align 2, !tbaa !116
  %i.dkn = sext i16 %i.dkm to i32                 ; 3 uses
  %i.dko = add i32 %i.dkc, %i.dkn
  %i.dkp = icmp ugt i32 %i.dko, %i.dkd
  br i1 %i.dkp, label %bb.ip, label %.lr.ph828.11219

bb.ip:                                            ; preds = %.lr.ph828.preheader
  %i.dkq = lshr i32 %i.dkn, 31
  %i.dkr = trunc nuw nsw i32 %i.dkq to i8
  %i.dks = getelementptr inbounds nuw i8, ptr %.0194992, i64 1177
  store i8 %i.dkr, ptr %i.dks, align 1, !tbaa !48
  %i.dkt = call i32 @llvm.abs.i32(i32 %i.dkn, i1 true)
  %i.dku = select i1 %.not50.i250, i32 257107, i32 262144
  %i.dkv = mul nuw nsw i32 %i.dku, %i.dkt
  %i.dkw = add nuw nsw i32 %i.dkv, 2097152
  %i.dkx = lshr i32 %i.dkw, 22                    ; 4 uses
  %.not102.i446 = icmp eq i32 %i.dkx, 0
  br i1 %.not102.i446, label %.lr.ph828.11219, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.dky = trunc nuw nsw i32 %i.dkx to i16
  %i.dkz = getelementptr inbounds nuw i8, ptr %.0194992, i64 986
  store i16 %i.dky, ptr %i.dkz, align 2, !tbaa !116
  %i.dla = zext nneg i32 %i.dkx to i64
  %i.dlb = getelementptr inbounds nuw [8 x i8], ptr @dv_vlc_map, i64 %i.dla
  %i.dlc = getelementptr inbounds nuw i8, ptr %i.dlb, i64 4
  %i.dld = load i32, ptr %i.dlc, align 4, !tbaa !53
  %i.dle = add nsw i32 %i.dld, 1                  ; 2 uses
  store i32 %i.dle, ptr %i.dkh, align 4, !tbaa !51
  store i8 1, ptr %i.dkj, align 4, !tbaa !48
  br label %.lr.ph828.11219

.lr.ph828.11219:                                  ; preds = %bb.iq, %bb.ip, %.lr.ph828.preheader
  %i.dlf = phi i32 [ 1, %bb.ip ], [ %i.dle, %bb.iq ], [ 1, %.lr.ph828.preheader ] ; 3 uses
  %.493.i444 = phi i32 [ -1, %bb.ip ], [ %i.dkx, %bb.iq ], [ -1, %.lr.ph828.preheader ] ; 3 uses
  %.3.i445 = phi i32 [ 0, %bb.ip ], [ 1, %bb.iq ], [ 0, %.lr.ph828.preheader ] ; 4 uses
  %46 = getelementptr inbounds nuw i8, ptr %i.dka, i64 2
  %47 = load i8, ptr %46, align 2, !tbaa !48
  %i.dlg = zext i8 %47 to i64
  %i.dlh = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.dlg
  %i.dli = load i16, ptr %i.dlh, align 2, !tbaa !116
  %i.dlj = sext i16 %i.dli to i32                 ; 3 uses
  %i.dlk = add i32 %i.dkc, %i.dlj
  %i.dll = icmp ugt i32 %i.dlk, %i.dkd
  br i1 %i.dll, label %bb.ir, label %.lr.ph828.21229

bb.ir:                                            ; preds = %.lr.ph828.11219
  %i.dlm = lshr i32 %i.dlj, 31
  %i.dln = trunc nuw nsw i32 %i.dlm to i8
  %i.dlo = getelementptr inbounds nuw i8, ptr %.0194992, i64 1178
  store i8 %i.dln, ptr %i.dlo, align 2, !tbaa !48
  %i.dlp = call i32 @llvm.abs.i32(i32 %i.dlj, i1 true)
  %i.dlq = mul nuw nsw i32 %i.dlp, 257107
  %i.dlr = add nuw nsw i32 %i.dlq, 2097152
  %i.dls = lshr i32 %i.dlr, 22                    ; 4 uses
  %.not102.i446.11220 = icmp eq i32 %i.dls, 0
  br i1 %.not102.i446.11220, label %.lr.ph828.21229, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.dlt = trunc nuw nsw i32 %i.dls to i16
  %i.dlu = getelementptr inbounds nuw i8, ptr %.0194992, i64 988
  store i16 %i.dlt, ptr %i.dlu, align 4, !tbaa !116
  %spec.select.i447.11221 = call i32 @llvm.smax.i32(i32 %i.dls, i32 %.493.i444)
  %i.dlv = xor i32 %.3.i445, 1
  %i.dlw = zext nneg i32 %i.dlv to i64
  %i.dlx = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.dlw
  %i.dly = zext nneg i32 %i.dls to i64
  %i.dlz = getelementptr inbounds nuw [8 x i8], ptr %i.dlx, i64 %i.dly
  %i.dma = getelementptr inbounds nuw i8, ptr %i.dlz, i64 4
  %i.dmb = load i32, ptr %i.dma, align 4, !tbaa !53
  %i.dmc = add nsw i32 %i.dlf, %i.dmb             ; 2 uses
  store i32 %i.dmc, ptr %i.dkh, align 4, !tbaa !51
  %i.dmd = zext nneg i32 %.3.i445 to i64
  %i.dme = getelementptr inbounds nuw i8, ptr %i.dkj, i64 %i.dmd
  store i8 2, ptr %i.dme, align 1, !tbaa !48
  br label %.lr.ph828.21229

.lr.ph828.21229:                                  ; preds = %bb.is, %bb.ir, %.lr.ph828.11219
  %i.dmf = phi i32 [ %i.dlf, %bb.ir ], [ %i.dmc, %bb.is ], [ %i.dlf, %.lr.ph828.11219 ]
  %.493.i444.11222 = phi i32 [ %.493.i444, %bb.ir ], [ %spec.select.i447.11221, %bb.is ], [ %.493.i444, %.lr.ph828.11219 ] ; 3 uses
  %.3.i445.11223 = phi i32 [ %.3.i445, %bb.ir ], [ 2, %bb.is ], [ %.3.i445, %.lr.ph828.11219 ] ; 4 uses
  %48 = getelementptr inbounds nuw i8, ptr %i.dka, i64 3
  %49 = load i8, ptr %48, align 1, !tbaa !48
  %i.dmg = zext i8 %49 to i64
  %i.dmh = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.dmg
  %i.dmi = load i16, ptr %i.dmh, align 2, !tbaa !116
  %i.dmj = sext i16 %i.dmi to i32                 ; 3 uses
  %i.dmk = add i32 %i.dkc, %i.dmj
  %i.dml = icmp ugt i32 %i.dmk, %i.dkd
  br i1 %i.dml, label %bb.it, label %.lr.ph828.31239

bb.it:                                            ; preds = %.lr.ph828.21229
  %i.dmm = lshr i32 %i.dmj, 31
  %i.dmn = trunc nuw nsw i32 %i.dmm to i8
  %i.dmo = getelementptr inbounds nuw i8, ptr %.0194992, i64 1179
  store i8 %i.dmn, ptr %i.dmo, align 1, !tbaa !48
  %i.dmp = call i32 @llvm.abs.i32(i32 %i.dmj, i1 true)
  %i.dmq = select i1 %.not50.i250, i32 242189, i32 257107
  %i.dmr = mul nuw nsw i32 %i.dmq, %i.dmp
  %i.dms = add nuw nsw i32 %i.dmr, 2097152
  %i.dmt = lshr i32 %i.dms, 22                    ; 4 uses
  %.not102.i446.21230 = icmp eq i32 %i.dmt, 0
  br i1 %.not102.i446.21230, label %.lr.ph828.31239, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.dmu = trunc nuw nsw i32 %i.dmt to i16
  %i.dmv = getelementptr inbounds nuw i8, ptr %.0194992, i64 990
  store i16 %i.dmu, ptr %i.dmv, align 2, !tbaa !116
  %spec.select.i447.21231 = call i32 @llvm.smax.i32(i32 %i.dmt, i32 %.493.i444.11222)
  %i.dmw = sub nuw nsw i32 2, %.3.i445.11223
  %i.dmx = zext nneg i32 %i.dmw to i64
  %i.dmy = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.dmx
  %i.dmz = zext nneg i32 %i.dmt to i64
  %i.dna = getelementptr inbounds nuw [8 x i8], ptr %i.dmy, i64 %i.dmz
  %i.dnb = getelementptr inbounds nuw i8, ptr %i.dna, i64 4
  %i.dnc = load i32, ptr %i.dnb, align 4, !tbaa !53
  %i.dnd = add nsw i32 %i.dmf, %i.dnc
  store i32 %i.dnd, ptr %i.dkh, align 4, !tbaa !51
  %i.dne = zext nneg i32 %.3.i445.11223 to i64
  %i.dnf = getelementptr inbounds nuw i8, ptr %i.dkj, i64 %i.dne
  store i8 3, ptr %i.dnf, align 1, !tbaa !48
  br label %.lr.ph828.31239

.lr.ph828.31239:                                  ; preds = %bb.iu, %bb.it, %.lr.ph828.21229
  %.493.i444.21232 = phi i32 [ %.493.i444.11222, %bb.it ], [ %spec.select.i447.21231, %bb.iu ], [ %.493.i444.11222, %.lr.ph828.21229 ] ; 3 uses
  %.3.i445.21233 = phi i32 [ %.3.i445.11223, %bb.it ], [ 3, %bb.iu ], [ %.3.i445.11223, %.lr.ph828.21229 ] ; 4 uses
  %50 = getelementptr inbounds nuw i8, ptr %i.dka, i64 4
  %51 = load i8, ptr %50, align 4, !tbaa !48
  %i.dng = zext i8 %51 to i64
  %i.dnh = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.dng
  %i.dni = load i16, ptr %i.dnh, align 2, !tbaa !116
  %i.dnj = sext i16 %i.dni to i32                 ; 3 uses
  %i.dnk = add i32 %i.dkc, %i.dnj
  %i.dnl = icmp ugt i32 %i.dnk, %i.dkd
  br i1 %i.dnl, label %bb.iv, label %.lr.ph828.4

bb.iv:                                            ; preds = %.lr.ph828.31239
  %i.dnm = lshr i32 %i.dnj, 31
  %i.dnn = trunc nuw nsw i32 %i.dnm to i8
  %i.dno = getelementptr inbounds nuw i8, ptr %.0194992, i64 1180
  store i8 %i.dnn, ptr %i.dno, align 4, !tbaa !48
  %i.dnp = call i32 @llvm.abs.i32(i32 %i.dnj, i1 true)
  %i.dnq = select i1 %.not50.i250, i32 252167, i32 242189
  %i.dnr = mul nuw nsw i32 %i.dnq, %i.dnp
  %i.dns = add nuw nsw i32 %i.dnr, 2097152
  %i.dnt = lshr i32 %i.dns, 22                    ; 4 uses
  %.not102.i446.31240 = icmp eq i32 %i.dnt, 0
  br i1 %.not102.i446.31240, label %.lr.ph828.4, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.dnu = trunc nuw nsw i32 %i.dnt to i16
  %i.dnv = getelementptr inbounds nuw i8, ptr %.0194992, i64 992
  store i16 %i.dnu, ptr %i.dnv, align 4, !tbaa !116
  %spec.select.i447.31241 = call i32 @llvm.smax.i32(i32 %i.dnt, i32 %.493.i444.21232)
  %i.dnw = sub nuw nsw i32 3, %.3.i445.21233
  %i.dnx = zext nneg i32 %i.dnw to i64
  %i.dny = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.dnx
  %i.dnz = zext nneg i32 %i.dnt to i64
  %i.doa = getelementptr inbounds nuw [8 x i8], ptr %i.dny, i64 %i.dnz
  %i.dob = getelementptr inbounds nuw i8, ptr %i.doa, i64 4
  %i.doc = load i32, ptr %i.dob, align 4, !tbaa !53
  %i.dod = load i32, ptr %i.dkh, align 4, !tbaa !51
  %i.doe = add nsw i32 %i.dod, %i.doc
  store i32 %i.doe, ptr %i.dkh, align 4, !tbaa !51
  %i.dof = zext nneg i32 %.3.i445.21233 to i64
  %i.dog = getelementptr inbounds nuw i8, ptr %i.dkj, i64 %i.dof
  store i8 4, ptr %i.dog, align 1, !tbaa !48
  br label %.lr.ph828.4

.lr.ph828.4:                                      ; preds = %bb.iw, %bb.iv, %.lr.ph828.31239
  %.493.i444.31242 = phi i32 [ %.493.i444.21232, %bb.iv ], [ %spec.select.i447.31241, %bb.iw ], [ %.493.i444.21232, %.lr.ph828.31239 ] ; 3 uses
  %.3.i445.31243 = phi i32 [ %.3.i445.21233, %bb.iv ], [ 4, %bb.iw ], [ %.3.i445.21233, %.lr.ph828.31239 ] ; 4 uses
  %52 = getelementptr inbounds nuw i8, ptr %i.dka, i64 5
  %53 = load i8, ptr %52, align 1, !tbaa !48
  %i.doh = zext i8 %53 to i64
  %i.doi = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.doh
  %i.doj = load i16, ptr %i.doi, align 2, !tbaa !116
  %i.dok = sext i16 %i.doj to i32                 ; 3 uses
  %i.dol = add i32 %i.dkc, %i.dok
  %i.dom = icmp ugt i32 %i.dol, %i.dkd
  br i1 %i.dom, label %bb.ix, label %.lr.ph828.preheader.1

bb.ix:                                            ; preds = %.lr.ph828.4
  %i.don = lshr i32 %i.dok, 31
  %i.doo = trunc nuw nsw i32 %i.don to i8
  %i.dop = getelementptr inbounds nuw i8, ptr %.0194992, i64 1181
  store i8 %i.doo, ptr %i.dop, align 1, !tbaa !48
  %i.doq = call i32 @llvm.abs.i32(i32 %i.dok, i1 true)
  %i.dor = mul nuw nsw i32 %i.doq, 242189
  %i.dos = add nuw nsw i32 %i.dor, 2097152
  %i.dot = lshr i32 %i.dos, 22                    ; 4 uses
  %.not102.i446.4 = icmp eq i32 %i.dot, 0
  br i1 %.not102.i446.4, label %.lr.ph828.preheader.1, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.dou = trunc nuw nsw i32 %i.dot to i16
  %i.dov = getelementptr inbounds nuw i8, ptr %.0194992, i64 994
  store i16 %i.dou, ptr %i.dov, align 2, !tbaa !116
  %spec.select.i447.4 = call i32 @llvm.smax.i32(i32 %i.dot, i32 %.493.i444.31242)
  %i.dow = sub nuw nsw i32 4, %.3.i445.31243
  %i.dox = zext nneg i32 %i.dow to i64
  %i.doy = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.dox
  %i.doz = zext nneg i32 %i.dot to i64
  %i.dpa = getelementptr inbounds nuw [8 x i8], ptr %i.doy, i64 %i.doz
  %i.dpb = getelementptr inbounds nuw i8, ptr %i.dpa, i64 4
  %i.dpc = load i32, ptr %i.dpb, align 4, !tbaa !53
  %i.dpd = load i32, ptr %i.dkh, align 4, !tbaa !51
  %i.dpe = add nsw i32 %i.dpd, %i.dpc
  store i32 %i.dpe, ptr %i.dkh, align 4, !tbaa !51
  %i.dpf = zext nneg i32 %.3.i445.31243 to i64
  %i.dpg = getelementptr inbounds nuw i8, ptr %i.dkj, i64 %i.dpf
  store i8 5, ptr %i.dpg, align 1, !tbaa !48
  br label %.lr.ph828.preheader.1

bb.iz:                                            ; preds = %bb.iz, %.loopexit698.3
  %indvars.iv1246 = phi i64 [ %indvars.iv.next1247, %bb.iz ], [ 0, %.loopexit698.3 ] ; 4 uses
  %i.dph = trunc nuw nsw i64 %indvars.iv1246 to i32
  store i32 %i.dph, ptr %i.djx, align 4, !tbaa !124
  %i.dpi = getelementptr inbounds nuw [4 x i8], ptr @dv_set_class_number_sd.classes, i64 %indvars.iv1246
  %i.dpj = load i32, ptr %i.dpi, align 4, !tbaa !51
  %i.dpk = icmp sgt i32 %.493.i444.3, %i.dpj
  %indvars.iv.next1247 = add nuw nsw i64 %indvars.iv1246, 1
  br i1 %i.dpk, label %bb.iz, label %bb.ja, !llvm.loop !85

bb.ja:                                            ; preds = %bb.iz
  %i.dpl = icmp samesign ugt i64 %indvars.iv1246, 2
  br i1 %i.dpl, label %bb.jb, label %.dv_init_enc_block.exit255_crit_edge

.dv_init_enc_block.exit255_crit_edge:             ; preds = %bb.ja
  %.pre1644 = load i32, ptr %i.dkh, align 4, !tbaa !51
  %.phi.trans.insert1645 = getelementptr inbounds nuw i8, ptr %.0194992, i64 940
  %.pre1646 = load i32, ptr %.phi.trans.insert1645, align 4, !tbaa !51
  %.phi.trans.insert1647 = getelementptr inbounds nuw i8, ptr %.0194992, i64 944
  %.pre1648 = load i32, ptr %.phi.trans.insert1647, align 4, !tbaa !51
  %.phi.trans.insert1649 = getelementptr inbounds nuw i8, ptr %.0194992, i64 948
  %.pre1650 = load i32, ptr %.phi.trans.insert1649, align 4, !tbaa !51
  br label %dv_init_enc_block.exit255

bb.jb:                                            ; preds = %bb.ja
  store i32 3, ptr %i.djx, align 4, !tbaa !124
  %i.dpm = load i8, ptr %i.dkj, align 4, !tbaa !48 ; 2 uses
  %i.dpn = zext i8 %i.dpm to i32                  ; 2 uses
  store i32 0, ptr %i.dkg, align 4, !tbaa !51
  store i32 1, ptr %i.dkh, align 4, !tbaa !51
  %i.dpo = icmp ult i8 %i.dpm, 6
  br i1 %i.dpo, label %.lr.ph838, label %.loopexit697

.loopexit697:                                     ; preds = %bb.jj, %bb.jb
  %i.dpp = phi i32 [ 1, %bb.jb ], [ %i.dte, %bb.jj ]
  %.399.i437.lcssa = phi i32 [ %i.dpn, %bb.jb ], [ %i.dth, %bb.jj ] ; 3 uses
  %.5.i438.lcssa = phi i32 [ 0, %bb.jb ], [ %.6.i440, %bb.jj ] ; 3 uses
  store i32 %.5.i438.lcssa, ptr %i.dfu, align 4, !tbaa !51
  store i32 1, ptr %i.dfv, align 4, !tbaa !51
  %i.dpq = icmp samesign ult i32 %.399.i437.lcssa, 21
  br i1 %i.dpq, label %.lr.ph838.1, label %.loopexit697.1

.lr.ph838.1:                                      ; preds = %.loopexit697, %bb.jd
  %i.dpr = phi i32 [ %i.dqi, %bb.jd ], [ 1, %.loopexit697 ] ; 2 uses
  %.5.i438837.1 = phi i32 [ %.6.i440.1, %bb.jd ], [ %.5.i438.lcssa, %.loopexit697 ] ; 3 uses
  %.399.i437836.1 = phi i32 [ %i.dql, %bb.jd ], [ %.399.i437.lcssa, %.loopexit697 ] ; 4 uses
  %i.dps = zext nneg i32 %.399.i437836.1 to i64   ; 2 uses
  %i.dpt = getelementptr inbounds nuw [2 x i8], ptr %i.dkf, i64 %i.dps ; 2 uses
  %i.dpu = load i16, ptr %i.dpt, align 2, !tbaa !116
  %i.dpv = ashr i16 %i.dpu, 1                     ; 3 uses
  store i16 %i.dpv, ptr %i.dpt, align 2, !tbaa !116
  %.not.i439.1 = icmp eq i16 %i.dpv, 0
  br i1 %.not.i439.1, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %.lr.ph838.1
  %i.dpw = xor i32 %.5.i438837.1, -1
  %i.dpx = add nsw i32 %.399.i437836.1, %i.dpw
  %i.dpy = sext i32 %i.dpx to i64
  %i.dpz = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.dpy
  %i.dqa = sext i16 %i.dpv to i64
  %i.dqb = getelementptr inbounds [8 x i8], ptr %i.dpz, i64 %i.dqa
  %i.dqc = getelementptr inbounds nuw i8, ptr %i.dqb, i64 4
  %i.dqd = load i32, ptr %i.dqc, align 4, !tbaa !53
  %i.dqe = add nsw i32 %i.dpr, %i.dqd             ; 2 uses
  store i32 %i.dqe, ptr %i.dfv, align 4, !tbaa !51
  %i.dqf = trunc nuw nsw i32 %.399.i437836.1 to i8
  %i.dqg = zext nneg i32 %.5.i438837.1 to i64
  %i.dqh = getelementptr inbounds nuw i8, ptr %i.dkj, i64 %i.dqg
  store i8 %i.dqf, ptr %i.dqh, align 1, !tbaa !48
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %.lr.ph838.1
  %i.dqi = phi i32 [ %i.dqe, %bb.jc ], [ %i.dpr, %.lr.ph838.1 ] ; 2 uses
  %.6.i440.1 = phi i32 [ %.399.i437836.1, %bb.jc ], [ %.5.i438837.1, %.lr.ph838.1 ] ; 2 uses
  %i.dqj = getelementptr inbounds nuw i8, ptr %i.dkj, i64 %i.dps
  %i.dqk = load i8, ptr %i.dqj, align 1, !tbaa !48 ; 2 uses
  %i.dql = zext i8 %i.dqk to i32                  ; 2 uses
  %i.dqm = icmp ult i8 %i.dqk, 21
  br i1 %i.dqm, label %.lr.ph838.1, label %.loopexit697.1, !llvm.loop !86

.loopexit697.1:                                   ; preds = %bb.jd, %.loopexit697
  %i.dqn = phi i32 [ 1, %.loopexit697 ], [ %i.dqi, %bb.jd ]
  %.399.i437.lcssa.1 = phi i32 [ %.399.i437.lcssa, %.loopexit697 ], [ %i.dql, %bb.jd ] ; 3 uses
  %.5.i438.lcssa.1 = phi i32 [ %.5.i438.lcssa, %.loopexit697 ], [ %.6.i440.1, %bb.jd ] ; 3 uses
  store i32 %.5.i438.lcssa.1, ptr %i.dhd, align 4, !tbaa !51
  store i32 1, ptr %i.dhe, align 4, !tbaa !51
  %i.dqo = icmp samesign ult i32 %.399.i437.lcssa.1, 43
  br i1 %i.dqo, label %.lr.ph838.2, label %.loopexit697.2

.lr.ph838.2:                                      ; preds = %.loopexit697.1, %bb.jf
  %i.dqp = phi i32 [ %i.drg, %bb.jf ], [ 1, %.loopexit697.1 ] ; 2 uses
  %.5.i438837.2 = phi i32 [ %.6.i440.2, %bb.jf ], [ %.5.i438.lcssa.1, %.loopexit697.1 ] ; 3 uses
  %.399.i437836.2 = phi i32 [ %i.drj, %bb.jf ], [ %.399.i437.lcssa.1, %.loopexit697.1 ] ; 4 uses
  %i.dqq = zext nneg i32 %.399.i437836.2 to i64   ; 2 uses
  %i.dqr = getelementptr inbounds nuw [2 x i8], ptr %i.dkf, i64 %i.dqq ; 2 uses
  %i.dqs = load i16, ptr %i.dqr, align 2, !tbaa !116
  %i.dqt = ashr i16 %i.dqs, 1                     ; 3 uses
  store i16 %i.dqt, ptr %i.dqr, align 2, !tbaa !116
  %.not.i439.2 = icmp eq i16 %i.dqt, 0
  br i1 %.not.i439.2, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %.lr.ph838.2
  %i.dqu = xor i32 %.5.i438837.2, -1
  %i.dqv = add nsw i32 %.399.i437836.2, %i.dqu
  %i.dqw = sext i32 %i.dqv to i64
  %i.dqx = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.dqw
  %i.dqy = sext i16 %i.dqt to i64
  %i.dqz = getelementptr inbounds [8 x i8], ptr %i.dqx, i64 %i.dqy
  %i.dra = getelementptr inbounds nuw i8, ptr %i.dqz, i64 4
  %i.drb = load i32, ptr %i.dra, align 4, !tbaa !53
  %i.drc = add nsw i32 %i.dqp, %i.drb             ; 2 uses
  store i32 %i.drc, ptr %i.dhe, align 4, !tbaa !51
  %i.drd = trunc nuw nsw i32 %.399.i437836.2 to i8
  %i.dre = zext nneg i32 %.5.i438837.2 to i64
  %i.drf = getelementptr inbounds nuw i8, ptr %i.dkj, i64 %i.dre
  store i8 %i.drd, ptr %i.drf, align 1, !tbaa !48
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %.lr.ph838.2
  %i.drg = phi i32 [ %i.drc, %bb.je ], [ %i.dqp, %.lr.ph838.2 ] ; 2 uses
  %.6.i440.2 = phi i32 [ %.399.i437836.2, %bb.je ], [ %.5.i438837.2, %.lr.ph838.2 ] ; 2 uses
  %i.drh = getelementptr inbounds nuw i8, ptr %i.dkj, i64 %i.dqq
  %i.dri = load i8, ptr %i.drh, align 1, !tbaa !48 ; 2 uses
  %i.drj = zext i8 %i.dri to i32                  ; 2 uses
  %i.drk = icmp ult i8 %i.dri, 43
  br i1 %i.drk, label %.lr.ph838.2, label %.loopexit697.2, !llvm.loop !86

.loopexit697.2:                                   ; preds = %bb.jf, %.loopexit697.1
  %i.drl = phi i32 [ 1, %.loopexit697.1 ], [ %i.drg, %bb.jf ]
  %.399.i437.lcssa.2 = phi i32 [ %.399.i437.lcssa.1, %.loopexit697.1 ], [ %i.drj, %bb.jf ] ; 3 uses
  %.5.i438.lcssa.2 = phi i32 [ %.5.i438.lcssa.1, %.loopexit697.1 ], [ %.6.i440.2, %bb.jf ] ; 3 uses
  store i32 %.5.i438.lcssa.2, ptr %i.dim, align 4, !tbaa !51
  store i32 1, ptr %i.din, align 4, !tbaa !51
  %i.drm = icmp samesign ult i32 %.399.i437.lcssa.2, 64
  br i1 %i.drm, label %.lr.ph838.3, label %.loopexit697.3

.lr.ph838.3:                                      ; preds = %.loopexit697.2, %bb.jh
  %i.drn = phi i32 [ %i.dse, %bb.jh ], [ 1, %.loopexit697.2 ] ; 2 uses
  %.5.i438837.3 = phi i32 [ %.6.i440.3, %bb.jh ], [ %.5.i438.lcssa.2, %.loopexit697.2 ] ; 3 uses
  %.399.i437836.3 = phi i32 [ %i.dsh, %bb.jh ], [ %.399.i437.lcssa.2, %.loopexit697.2 ] ; 4 uses
  %i.dro = zext nneg i32 %.399.i437836.3 to i64   ; 2 uses
  %i.drp = getelementptr inbounds nuw [2 x i8], ptr %i.dkf, i64 %i.dro ; 2 uses
  %i.drq = load i16, ptr %i.drp, align 2, !tbaa !116
  %i.drr = ashr i16 %i.drq, 1                     ; 3 uses
  store i16 %i.drr, ptr %i.drp, align 2, !tbaa !116
  %.not.i439.3 = icmp eq i16 %i.drr, 0
  br i1 %.not.i439.3, label %bb.jh, label %bb.jg

bb.jg:                                            ; preds = %.lr.ph838.3
  %i.drs = xor i32 %.5.i438837.3, -1
  %i.drt = add nsw i32 %.399.i437836.3, %i.drs
  %i.dru = sext i32 %i.drt to i64
  %i.drv = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.dru
  %i.drw = sext i16 %i.drr to i64
  %i.drx = getelementptr inbounds [8 x i8], ptr %i.drv, i64 %i.drw
  %i.dry = getelementptr inbounds nuw i8, ptr %i.drx, i64 4
  %i.drz = load i32, ptr %i.dry, align 4, !tbaa !53
  %i.dsa = add nsw i32 %i.drn, %i.drz             ; 2 uses
  store i32 %i.dsa, ptr %i.din, align 4, !tbaa !51
  %i.dsb = trunc nuw nsw i32 %.399.i437836.3 to i8
  %i.dsc = zext nneg i32 %.5.i438837.3 to i64
end_hunk_5
begin_hunk_6_@dv_encode_video_segment:bb.a
  br label %.lr.ph848.1

.lr.ph848.1:                                      ; preds = %bb.jt, %.lr.ph848.preheader.1
  %indvars.iv1255.1 = phi i64 [ 6, %.lr.ph848.preheader.1 ], [ %indvars.iv.next1256.1, %bb.jt ] ; 7 uses
  %.1.i463847.1 = phi i32 [ %.3.i465.4, %.lr.ph848.preheader.1 ], [ %.3.i465.1, %bb.jt ] ; 4 uses
  %.190.i462846.1 = phi i32 [ %.493.i464.4, %.lr.ph848.preheader.1 ], [ %.493.i464.1, %bb.jt ] ; 3 uses
  %i.dwz = getelementptr inbounds nuw i8, ptr %i.ebd, i64 %indvars.iv1255.1
  %i.dxa = load i8, ptr %i.dwz, align 1, !tbaa !48
  %i.dxb = zext i8 %i.dxa to i64
  %i.dxc = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.dxb
  %i.dxd = load i16, ptr %i.dxc, align 2, !tbaa !116
  %i.dxe = sext i16 %i.dxd to i32                 ; 3 uses
  %i.dxf = add i32 %i.ebf, %i.dxe
  %i.dxg = icmp ugt i32 %i.dxf, %i.ebg
  br i1 %i.dxg, label %bb.jr, label %bb.jt

bb.jr:                                            ; preds = %.lr.ph848.1
  %i.dxh = lshr i32 %i.dxe, 31
  %i.dxi = trunc nuw nsw i32 %i.dxh to i8
  %i.dxj = getelementptr inbounds nuw i8, ptr %i.ebl, i64 %indvars.iv1255.1
  store i8 %i.dxi, ptr %i.dxj, align 1, !tbaa !48
  %i.dxk = call i32 @llvm.abs.i32(i32 %i.dxe, i1 true)
  %i.dxl = getelementptr inbounds nuw [4 x i8], ptr %i.ebe, i64 %indvars.iv1255.1
  %i.dxm = load i32, ptr %i.dxl, align 4, !tbaa !51
  %i.dxn = mul nsw i32 %i.dxm, %i.dxk
  %i.dxo = add nsw i32 %i.dxn, 2097152
  %i.dxp = ashr i32 %i.dxo, 22                    ; 4 uses
  %.not102.i466.1 = icmp eq i32 %i.dxp, 0
  br i1 %.not102.i466.1, label %bb.jt, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.dxq = trunc nsw i32 %i.dxp to i16
  %i.dxr = getelementptr inbounds nuw [2 x i8], ptr %i.ebi, i64 %indvars.iv1255.1
  store i16 %i.dxq, ptr %i.dxr, align 2, !tbaa !116
  %spec.select.i467.1 = call i32 @llvm.smax.i32(i32 %i.dxp, i32 %.190.i462846.1)
  %i.dxs = xor i32 %.1.i463847.1, -1
  %i.dxt = trunc nsw i64 %indvars.iv1255.1 to i32 ; 2 uses
  %i.dxu = add i32 %i.dxt, %i.dxs
  %i.dxv = sext i32 %i.dxu to i64
  %i.dxw = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.dxv
  %i.dxx = sext i32 %i.dxp to i64
  %i.dxy = getelementptr inbounds [8 x i8], ptr %i.dxw, i64 %i.dxx
  %i.dxz = getelementptr inbounds nuw i8, ptr %i.dxy, i64 4
  %i.dya = load i32, ptr %i.dxz, align 4, !tbaa !53
  %i.dyb = load i32, ptr %i.dwy, align 4, !tbaa !51
  %i.dyc = add nsw i32 %i.dyb, %i.dya
  store i32 %i.dyc, ptr %i.dwy, align 4, !tbaa !51
  %i.dyd = trunc i64 %indvars.iv1255.1 to i8
  %i.dye = sext i32 %.1.i463847.1 to i64
  %i.dyf = getelementptr inbounds i8, ptr %i.ebm, i64 %i.dye
  store i8 %i.dyd, ptr %i.dyf, align 1, !tbaa !48
  br label %bb.jt

bb.jt:                                            ; preds = %bb.js, %bb.jr, %.lr.ph848.1
  %.493.i464.1 = phi i32 [ %.190.i462846.1, %bb.jr ], [ %spec.select.i467.1, %bb.js ], [ %.190.i462846.1, %.lr.ph848.1 ] ; 2 uses
  %.3.i465.1 = phi i32 [ %.1.i463847.1, %bb.jr ], [ %i.dxt, %bb.js ], [ %.1.i463847.1, %.lr.ph848.1 ] ; 3 uses
  %indvars.iv.next1256.1 = add nuw nsw i64 %indvars.iv1255.1, 1 ; 2 uses
  %exitcond.11262.not = icmp eq i64 %indvars.iv.next1256.1, 21
  br i1 %exitcond.11262.not, label %.lr.ph848.preheader.2, label %.lr.ph848.1, !llvm.loop !84

.lr.ph848.preheader.2:                            ; preds = %bb.jt
  %i.dyg = getelementptr inbounds nuw i8, ptr %.0194992, i64 1420 ; 2 uses
  store i32 %.3.i465.1, ptr %i.dyg, align 4, !tbaa !51
  %i.dyh = getelementptr inbounds nuw i8, ptr %.0194992, i64 1404 ; 5 uses
  store i32 1, ptr %i.dyh, align 4, !tbaa !51
  br label %.lr.ph848.2

.lr.ph848.2:                                      ; preds = %bb.jw, %.lr.ph848.preheader.2
  %indvars.iv1255.2 = phi i64 [ 21, %.lr.ph848.preheader.2 ], [ %indvars.iv.next1256.2, %bb.jw ] ; 7 uses
  %.1.i463847.2 = phi i32 [ %.3.i465.1, %.lr.ph848.preheader.2 ], [ %.3.i465.2, %bb.jw ] ; 4 uses
  %.190.i462846.2 = phi i32 [ %.493.i464.1, %.lr.ph848.preheader.2 ], [ %.493.i464.2, %bb.jw ] ; 3 uses
  %i.dyi = getelementptr inbounds nuw i8, ptr %i.ebd, i64 %indvars.iv1255.2
  %i.dyj = load i8, ptr %i.dyi, align 1, !tbaa !48
  %i.dyk = zext i8 %i.dyj to i64
  %i.dyl = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.dyk
  %i.dym = load i16, ptr %i.dyl, align 2, !tbaa !116
  %i.dyn = sext i16 %i.dym to i32                 ; 3 uses
  %i.dyo = add i32 %i.ebf, %i.dyn
  %i.dyp = icmp ugt i32 %i.dyo, %i.ebg
  br i1 %i.dyp, label %bb.ju, label %bb.jw

bb.ju:                                            ; preds = %.lr.ph848.2
  %i.dyq = lshr i32 %i.dyn, 31
  %i.dyr = trunc nuw nsw i32 %i.dyq to i8
  %i.dys = getelementptr inbounds nuw i8, ptr %i.ebl, i64 %indvars.iv1255.2
  store i8 %i.dyr, ptr %i.dys, align 1, !tbaa !48
  %i.dyt = call i32 @llvm.abs.i32(i32 %i.dyn, i1 true)
  %i.dyu = getelementptr inbounds nuw [4 x i8], ptr %i.ebe, i64 %indvars.iv1255.2
  %i.dyv = load i32, ptr %i.dyu, align 4, !tbaa !51
  %i.dyw = mul nsw i32 %i.dyv, %i.dyt
  %i.dyx = add nsw i32 %i.dyw, 2097152
  %i.dyy = ashr i32 %i.dyx, 22                    ; 4 uses
  %.not102.i466.2 = icmp eq i32 %i.dyy, 0
  br i1 %.not102.i466.2, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.dyz = trunc nsw i32 %i.dyy to i16
  %i.dza = getelementptr inbounds nuw [2 x i8], ptr %i.ebi, i64 %indvars.iv1255.2
  store i16 %i.dyz, ptr %i.dza, align 2, !tbaa !116
  %spec.select.i467.2 = call i32 @llvm.smax.i32(i32 %i.dyy, i32 %.190.i462846.2)
  %i.dzb = xor i32 %.1.i463847.2, -1
  %i.dzc = trunc nsw i64 %indvars.iv1255.2 to i32 ; 2 uses
  %i.dzd = add i32 %i.dzc, %i.dzb
  %i.dze = sext i32 %i.dzd to i64
  %i.dzf = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.dze
  %i.dzg = sext i32 %i.dyy to i64
  %i.dzh = getelementptr inbounds [8 x i8], ptr %i.dzf, i64 %i.dzg
  %i.dzi = getelementptr inbounds nuw i8, ptr %i.dzh, i64 4
  %i.dzj = load i32, ptr %i.dzi, align 4, !tbaa !53
  %i.dzk = load i32, ptr %i.dyh, align 4, !tbaa !51
  %i.dzl = add nsw i32 %i.dzk, %i.dzj
  store i32 %i.dzl, ptr %i.dyh, align 4, !tbaa !51
  %i.dzm = trunc i64 %indvars.iv1255.2 to i8
  %i.dzn = sext i32 %.1.i463847.2 to i64
  %i.dzo = getelementptr inbounds i8, ptr %i.ebm, i64 %i.dzn
  store i8 %i.dzm, ptr %i.dzo, align 1, !tbaa !48
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.ju, %.lr.ph848.2
  %.493.i464.2 = phi i32 [ %.190.i462846.2, %bb.ju ], [ %spec.select.i467.2, %bb.jv ], [ %.190.i462846.2, %.lr.ph848.2 ] ; 2 uses
  %.3.i465.2 = phi i32 [ %.1.i463847.2, %bb.ju ], [ %i.dzc, %bb.jv ], [ %.1.i463847.2, %.lr.ph848.2 ] ; 3 uses
  %indvars.iv.next1256.2 = add nuw nsw i64 %indvars.iv1255.2, 1 ; 2 uses
  %exitcond.21263.not = icmp eq i64 %indvars.iv.next1256.2, 43
  br i1 %exitcond.21263.not, label %.lr.ph848.preheader.3, label %.lr.ph848.2, !llvm.loop !84

.lr.ph848.preheader.3:                            ; preds = %bb.jw
  %i.dzp = getelementptr inbounds nuw i8, ptr %.0194992, i64 1424 ; 2 uses
  store i32 %.3.i465.2, ptr %i.dzp, align 4, !tbaa !51
  %i.dzq = getelementptr inbounds nuw i8, ptr %.0194992, i64 1408 ; 5 uses
  store i32 1, ptr %i.dzq, align 4, !tbaa !51
  br label %.lr.ph848.3

.lr.ph848.3:                                      ; preds = %bb.jz, %.lr.ph848.preheader.3
  %indvars.iv1255.3 = phi i64 [ 43, %.lr.ph848.preheader.3 ], [ %indvars.iv.next1256.3, %bb.jz ] ; 7 uses
  %.1.i463847.3 = phi i32 [ %.3.i465.2, %.lr.ph848.preheader.3 ], [ %.3.i465.3, %bb.jz ] ; 4 uses
  %.190.i462846.3 = phi i32 [ %.493.i464.2, %.lr.ph848.preheader.3 ], [ %.493.i464.3, %bb.jz ] ; 3 uses
  %i.dzr = getelementptr inbounds nuw i8, ptr %i.ebd, i64 %indvars.iv1255.3
  %i.dzs = load i8, ptr %i.dzr, align 1, !tbaa !48
  %i.dzt = zext i8 %i.dzs to i64
  %i.dzu = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.dzt
  %i.dzv = load i16, ptr %i.dzu, align 2, !tbaa !116
  %i.dzw = sext i16 %i.dzv to i32                 ; 3 uses
  %i.dzx = add i32 %i.ebf, %i.dzw
  %i.dzy = icmp ugt i32 %i.dzx, %i.ebg
  br i1 %i.dzy, label %bb.jx, label %bb.jz

bb.jx:                                            ; preds = %.lr.ph848.3
  %i.dzz = lshr i32 %i.dzw, 31
  %i.eaa = trunc nuw nsw i32 %i.dzz to i8
  %i.eab = getelementptr inbounds nuw i8, ptr %i.ebl, i64 %indvars.iv1255.3
  store i8 %i.eaa, ptr %i.eab, align 1, !tbaa !48
  %i.eac = call i32 @llvm.abs.i32(i32 %i.dzw, i1 true)
  %i.ead = getelementptr inbounds nuw [4 x i8], ptr %i.ebe, i64 %indvars.iv1255.3
  %i.eae = load i32, ptr %i.ead, align 4, !tbaa !51
  %i.eaf = mul nsw i32 %i.eae, %i.eac
  %i.eag = add nsw i32 %i.eaf, 2097152
  %i.eah = ashr i32 %i.eag, 22                    ; 4 uses
  %.not102.i466.3 = icmp eq i32 %i.eah, 0
  br i1 %.not102.i466.3, label %bb.jz, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.eai = trunc nsw i32 %i.eah to i16
  %i.eaj = getelementptr inbounds nuw [2 x i8], ptr %i.ebi, i64 %indvars.iv1255.3
  store i16 %i.eai, ptr %i.eaj, align 2, !tbaa !116
  %spec.select.i467.3 = call i32 @llvm.smax.i32(i32 %i.eah, i32 %.190.i462846.3)
  %i.eak = xor i32 %.1.i463847.3, -1
  %i.eal = trunc nsw i64 %indvars.iv1255.3 to i32 ; 2 uses
  %i.eam = add i32 %i.eal, %i.eak
  %i.ean = sext i32 %i.eam to i64
  %i.eao = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.ean
  %i.eap = sext i32 %i.eah to i64
  %i.eaq = getelementptr inbounds [8 x i8], ptr %i.eao, i64 %i.eap
  %i.ear = getelementptr inbounds nuw i8, ptr %i.eaq, i64 4
  %i.eas = load i32, ptr %i.ear, align 4, !tbaa !53
  %i.eat = load i32, ptr %i.dzq, align 4, !tbaa !51
  %i.eau = add nsw i32 %i.eat, %i.eas
  store i32 %i.eau, ptr %i.dzq, align 4, !tbaa !51
  %i.eav = trunc i64 %indvars.iv1255.3 to i8
  %i.eaw = sext i32 %.1.i463847.3 to i64
  %i.eax = getelementptr inbounds i8, ptr %i.ebm, i64 %i.eaw
  store i8 %i.eav, ptr %i.eax, align 1, !tbaa !48
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jy, %bb.jx, %.lr.ph848.3
  %.493.i464.3 = phi i32 [ %.190.i462846.3, %bb.jx ], [ %spec.select.i467.3, %bb.jy ], [ %.190.i462846.3, %.lr.ph848.3 ] ; 2 uses
  %.3.i465.3 = phi i32 [ %.1.i463847.3, %bb.jx ], [ %i.eal, %bb.jy ], [ %.1.i463847.3, %.lr.ph848.3 ] ; 2 uses
  %indvars.iv.next1256.3 = add nuw nsw i64 %indvars.iv1255.3, 1 ; 2 uses
  %exitcond.31264.not = icmp eq i64 %indvars.iv.next1256.3, 64
  br i1 %exitcond.31264.not, label %.loopexit696.3, label %.lr.ph848.3, !llvm.loop !84

.loopexit696.3:                                   ; preds = %bb.jz
  %i.eay = sext i32 %.3.i465.3 to i64
  %i.eaz = getelementptr inbounds i8, ptr %i.ebm, i64 %i.eay
  store i8 64, ptr %i.eaz, align 1, !tbaa !48
  %i.eba = getelementptr inbounds nuw i8, ptr %.0194992, i64 1436 ; 2 uses
  br label %bb.kk

.lr.ph848.preheader:                              ; preds = %bb.jo
  %i.ebb = getelementptr inbounds nuw i8, ptr %.0194992, i64 1440
  %i.ebc = load i32, ptr %i.ebb, align 4, !tbaa !119
  %.not50.i240 = icmp eq i32 %i.ebc, 0            ; 5 uses
  %i.ebd = select i1 %.not50.i240, ptr @ff_zigzag_direct, ptr @ff_dv_zigzag248_direct ; 8 uses
  %i.ebe = select i1 %.not50.i240, ptr @dv_weight_88, ptr @dv_weight_248 ; 3 uses
  %i.ebf = load i32, ptr %i.ad, align 8, !tbaa !125 ; 9 uses
  %i.ebg = shl i32 %i.ebf, 1                      ; 8 uses
  %i.ebh = load i16, ptr %i.m, align 16, !tbaa !116
  %i.ebi = getelementptr inbounds nuw i8, ptr %.0194992, i64 1444 ; 8 uses
  store i16 %i.ebh, ptr %i.ebi, align 4, !tbaa !116
  %i.ebj = getelementptr inbounds nuw i8, ptr %.0194992, i64 1412 ; 2 uses
  %i.ebk = getelementptr inbounds nuw i8, ptr %.0194992, i64 1396 ; 11 uses
  %i.ebl = getelementptr inbounds nuw i8, ptr %.0194992, i64 1636 ; 3 uses
  %i.ebm = getelementptr inbounds nuw i8, ptr %.0194992, i64 1572 ; 19 uses
  store i32 0, ptr %i.ebj, align 4, !tbaa !51
  store i32 1, ptr %i.ebk, align 4, !tbaa !51
  %54 = getelementptr inbounds nuw i8, ptr %i.ebd, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !48
  %i.ebn = zext i8 %55 to i64
  %i.ebo = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.ebn
  %i.ebp = load i16, ptr %i.ebo, align 2, !tbaa !116
  %i.ebq = sext i16 %i.ebp to i32                 ; 3 uses
  %i.ebr = add i32 %i.ebf, %i.ebq
  %i.ebs = icmp ugt i32 %i.ebr, %i.ebg
  br i1 %i.ebs, label %bb.ka, label %.lr.ph848.11268

bb.ka:                                            ; preds = %.lr.ph848.preheader
  %i.ebt = lshr i32 %i.ebq, 31
  %i.ebu = trunc nuw nsw i32 %i.ebt to i8
  %i.ebv = getelementptr inbounds nuw i8, ptr %.0194992, i64 1637
  store i8 %i.ebu, ptr %i.ebv, align 1, !tbaa !48
  %i.ebw = call i32 @llvm.abs.i32(i32 %i.ebq, i1 true)
  %i.ebx = select i1 %.not50.i240, i32 257107, i32 262144
  %i.eby = mul nuw nsw i32 %i.ebx, %i.ebw
  %i.ebz = add nuw nsw i32 %i.eby, 2097152
  %i.eca = lshr i32 %i.ebz, 22                    ; 4 uses
  %.not102.i466 = icmp eq i32 %i.eca, 0
  br i1 %.not102.i466, label %.lr.ph848.11268, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.ecb = trunc nuw nsw i32 %i.eca to i16
  %i.ecc = getelementptr inbounds nuw i8, ptr %.0194992, i64 1446
  store i16 %i.ecb, ptr %i.ecc, align 2, !tbaa !116
  %i.ecd = zext nneg i32 %i.eca to i64
  %i.ece = getelementptr inbounds nuw [8 x i8], ptr @dv_vlc_map, i64 %i.ecd
  %i.ecf = getelementptr inbounds nuw i8, ptr %i.ece, i64 4
  %i.ecg = load i32, ptr %i.ecf, align 4, !tbaa !53
  %i.ech = add nsw i32 %i.ecg, 1                  ; 2 uses
  store i32 %i.ech, ptr %i.ebk, align 4, !tbaa !51
  store i8 1, ptr %i.ebm, align 4, !tbaa !48
  br label %.lr.ph848.11268

.lr.ph848.11268:                                  ; preds = %bb.kb, %bb.ka, %.lr.ph848.preheader
  %i.eci = phi i32 [ 1, %bb.ka ], [ %i.ech, %bb.kb ], [ 1, %.lr.ph848.preheader ] ; 3 uses
  %.493.i464 = phi i32 [ -1, %bb.ka ], [ %i.eca, %bb.kb ], [ -1, %.lr.ph848.preheader ] ; 3 uses
  %.3.i465 = phi i32 [ 0, %bb.ka ], [ 1, %bb.kb ], [ 0, %.lr.ph848.preheader ] ; 4 uses
  %56 = getelementptr inbounds nuw i8, ptr %i.ebd, i64 2
  %57 = load i8, ptr %56, align 2, !tbaa !48
  %i.ecj = zext i8 %57 to i64
  %i.eck = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.ecj
  %i.ecl = load i16, ptr %i.eck, align 2, !tbaa !116
  %i.ecm = sext i16 %i.ecl to i32                 ; 3 uses
  %i.ecn = add i32 %i.ebf, %i.ecm
  %i.eco = icmp ugt i32 %i.ecn, %i.ebg
  br i1 %i.eco, label %bb.kc, label %.lr.ph848.21278

bb.kc:                                            ; preds = %.lr.ph848.11268
  %i.ecp = lshr i32 %i.ecm, 31
  %i.ecq = trunc nuw nsw i32 %i.ecp to i8
  %i.ecr = getelementptr inbounds nuw i8, ptr %.0194992, i64 1638
  store i8 %i.ecq, ptr %i.ecr, align 2, !tbaa !48
  %i.ecs = call i32 @llvm.abs.i32(i32 %i.ecm, i1 true)
  %i.ect = mul nuw nsw i32 %i.ecs, 257107
  %i.ecu = add nuw nsw i32 %i.ect, 2097152
  %i.ecv = lshr i32 %i.ecu, 22                    ; 4 uses
  %.not102.i466.11269 = icmp eq i32 %i.ecv, 0
  br i1 %.not102.i466.11269, label %.lr.ph848.21278, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.ecw = trunc nuw nsw i32 %i.ecv to i16
  %i.ecx = getelementptr inbounds nuw i8, ptr %.0194992, i64 1448
  store i16 %i.ecw, ptr %i.ecx, align 4, !tbaa !116
  %spec.select.i467.11270 = call i32 @llvm.smax.i32(i32 %i.ecv, i32 %.493.i464)
  %i.ecy = xor i32 %.3.i465, 1
  %i.ecz = zext nneg i32 %i.ecy to i64
  %i.eda = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.ecz
  %i.edb = zext nneg i32 %i.ecv to i64
  %i.edc = getelementptr inbounds nuw [8 x i8], ptr %i.eda, i64 %i.edb
  %i.edd = getelementptr inbounds nuw i8, ptr %i.edc, i64 4
  %i.ede = load i32, ptr %i.edd, align 4, !tbaa !53
  %i.edf = add nsw i32 %i.eci, %i.ede             ; 2 uses
  store i32 %i.edf, ptr %i.ebk, align 4, !tbaa !51
  %i.edg = zext nneg i32 %.3.i465 to i64
  %i.edh = getelementptr inbounds nuw i8, ptr %i.ebm, i64 %i.edg
  store i8 2, ptr %i.edh, align 1, !tbaa !48
  br label %.lr.ph848.21278

.lr.ph848.21278:                                  ; preds = %bb.kd, %bb.kc, %.lr.ph848.11268
  %i.edi = phi i32 [ %i.eci, %bb.kc ], [ %i.edf, %bb.kd ], [ %i.eci, %.lr.ph848.11268 ]
  %.493.i464.11271 = phi i32 [ %.493.i464, %bb.kc ], [ %spec.select.i467.11270, %bb.kd ], [ %.493.i464, %.lr.ph848.11268 ] ; 3 uses
  %.3.i465.11272 = phi i32 [ %.3.i465, %bb.kc ], [ 2, %bb.kd ], [ %.3.i465, %.lr.ph848.11268 ] ; 4 uses
  %58 = getelementptr inbounds nuw i8, ptr %i.ebd, i64 3
  %59 = load i8, ptr %58, align 1, !tbaa !48
  %i.edj = zext i8 %59 to i64
  %i.edk = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.edj
  %i.edl = load i16, ptr %i.edk, align 2, !tbaa !116
  %i.edm = sext i16 %i.edl to i32                 ; 3 uses
  %i.edn = add i32 %i.ebf, %i.edm
  %i.edo = icmp ugt i32 %i.edn, %i.ebg
  br i1 %i.edo, label %bb.ke, label %.lr.ph848.31288

bb.ke:                                            ; preds = %.lr.ph848.21278
  %i.edp = lshr i32 %i.edm, 31
  %i.edq = trunc nuw nsw i32 %i.edp to i8
  %i.edr = getelementptr inbounds nuw i8, ptr %.0194992, i64 1639
  store i8 %i.edq, ptr %i.edr, align 1, !tbaa !48
  %i.eds = call i32 @llvm.abs.i32(i32 %i.edm, i1 true)
  %i.edt = select i1 %.not50.i240, i32 242189, i32 257107
  %i.edu = mul nuw nsw i32 %i.edt, %i.eds
  %i.edv = add nuw nsw i32 %i.edu, 2097152
  %i.edw = lshr i32 %i.edv, 22                    ; 4 uses
  %.not102.i466.21279 = icmp eq i32 %i.edw, 0
  br i1 %.not102.i466.21279, label %.lr.ph848.31288, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.edx = trunc nuw nsw i32 %i.edw to i16
  %i.edy = getelementptr inbounds nuw i8, ptr %.0194992, i64 1450
  store i16 %i.edx, ptr %i.edy, align 2, !tbaa !116
  %spec.select.i467.21280 = call i32 @llvm.smax.i32(i32 %i.edw, i32 %.493.i464.11271)
  %i.edz = sub nuw nsw i32 2, %.3.i465.11272
  %i.eea = zext nneg i32 %i.edz to i64
  %i.eeb = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.eea
  %i.eec = zext nneg i32 %i.edw to i64
  %i.eed = getelementptr inbounds nuw [8 x i8], ptr %i.eeb, i64 %i.eec
  %i.eee = getelementptr inbounds nuw i8, ptr %i.eed, i64 4
  %i.eef = load i32, ptr %i.eee, align 4, !tbaa !53
  %i.eeg = add nsw i32 %i.edi, %i.eef
  store i32 %i.eeg, ptr %i.ebk, align 4, !tbaa !51
  %i.eeh = zext nneg i32 %.3.i465.11272 to i64
  %i.eei = getelementptr inbounds nuw i8, ptr %i.ebm, i64 %i.eeh
  store i8 3, ptr %i.eei, align 1, !tbaa !48
  br label %.lr.ph848.31288

.lr.ph848.31288:                                  ; preds = %bb.kf, %bb.ke, %.lr.ph848.21278
  %.493.i464.21281 = phi i32 [ %.493.i464.11271, %bb.ke ], [ %spec.select.i467.21280, %bb.kf ], [ %.493.i464.11271, %.lr.ph848.21278 ] ; 3 uses
  %.3.i465.21282 = phi i32 [ %.3.i465.11272, %bb.ke ], [ 3, %bb.kf ], [ %.3.i465.11272, %.lr.ph848.21278 ] ; 4 uses
  %60 = getelementptr inbounds nuw i8, ptr %i.ebd, i64 4
  %61 = load i8, ptr %60, align 4, !tbaa !48
  %i.eej = zext i8 %61 to i64
  %i.eek = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.eej
  %i.eel = load i16, ptr %i.eek, align 2, !tbaa !116
  %i.eem = sext i16 %i.eel to i32                 ; 3 uses
  %i.een = add i32 %i.ebf, %i.eem
  %i.eeo = icmp ugt i32 %i.een, %i.ebg
  br i1 %i.eeo, label %bb.kg, label %.lr.ph848.4

bb.kg:                                            ; preds = %.lr.ph848.31288
  %i.eep = lshr i32 %i.eem, 31
  %i.eeq = trunc nuw nsw i32 %i.eep to i8
  %i.eer = getelementptr inbounds nuw i8, ptr %.0194992, i64 1640
  store i8 %i.eeq, ptr %i.eer, align 4, !tbaa !48
  %i.ees = call i32 @llvm.abs.i32(i32 %i.eem, i1 true)
  %i.eet = select i1 %.not50.i240, i32 252167, i32 242189
  %i.eeu = mul nuw nsw i32 %i.eet, %i.ees
  %i.eev = add nuw nsw i32 %i.eeu, 2097152
  %i.eew = lshr i32 %i.eev, 22                    ; 4 uses
  %.not102.i466.31289 = icmp eq i32 %i.eew, 0
  br i1 %.not102.i466.31289, label %.lr.ph848.4, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.eex = trunc nuw nsw i32 %i.eew to i16
  %i.eey = getelementptr inbounds nuw i8, ptr %.0194992, i64 1452
  store i16 %i.eex, ptr %i.eey, align 4, !tbaa !116
  %spec.select.i467.31290 = call i32 @llvm.smax.i32(i32 %i.eew, i32 %.493.i464.21281)
  %i.eez = sub nuw nsw i32 3, %.3.i465.21282
  %i.efa = zext nneg i32 %i.eez to i64
  %i.efb = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.efa
  %i.efc = zext nneg i32 %i.eew to i64
  %i.efd = getelementptr inbounds nuw [8 x i8], ptr %i.efb, i64 %i.efc
  %i.efe = getelementptr inbounds nuw i8, ptr %i.efd, i64 4
  %i.eff = load i32, ptr %i.efe, align 4, !tbaa !53
  %i.efg = load i32, ptr %i.ebk, align 4, !tbaa !51
  %i.efh = add nsw i32 %i.efg, %i.eff
  store i32 %i.efh, ptr %i.ebk, align 4, !tbaa !51
  %i.efi = zext nneg i32 %.3.i465.21282 to i64
  %i.efj = getelementptr inbounds nuw i8, ptr %i.ebm, i64 %i.efi
  store i8 4, ptr %i.efj, align 1, !tbaa !48
  br label %.lr.ph848.4

.lr.ph848.4:                                      ; preds = %bb.kh, %bb.kg, %.lr.ph848.31288
  %.493.i464.31291 = phi i32 [ %.493.i464.21281, %bb.kg ], [ %spec.select.i467.31290, %bb.kh ], [ %.493.i464.21281, %.lr.ph848.31288 ] ; 3 uses
  %.3.i465.31292 = phi i32 [ %.3.i465.21282, %bb.kg ], [ 4, %bb.kh ], [ %.3.i465.21282, %.lr.ph848.31288 ] ; 4 uses
  %62 = getelementptr inbounds nuw i8, ptr %i.ebd, i64 5
  %63 = load i8, ptr %62, align 1, !tbaa !48
  %i.efk = zext i8 %63 to i64
  %i.efl = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.efk
  %i.efm = load i16, ptr %i.efl, align 2, !tbaa !116
  %i.efn = sext i16 %i.efm to i32                 ; 3 uses
  %i.efo = add i32 %i.ebf, %i.efn
  %i.efp = icmp ugt i32 %i.efo, %i.ebg
  br i1 %i.efp, label %bb.ki, label %.lr.ph848.preheader.1

bb.ki:                                            ; preds = %.lr.ph848.4
  %i.efq = lshr i32 %i.efn, 31
  %i.efr = trunc nuw nsw i32 %i.efq to i8
  %i.efs = getelementptr inbounds nuw i8, ptr %.0194992, i64 1641
  store i8 %i.efr, ptr %i.efs, align 1, !tbaa !48
  %i.eft = call i32 @llvm.abs.i32(i32 %i.efn, i1 true)
  %i.efu = mul nuw nsw i32 %i.eft, 242189
  %i.efv = add nuw nsw i32 %i.efu, 2097152
  %i.efw = lshr i32 %i.efv, 22                    ; 4 uses
  %.not102.i466.4 = icmp eq i32 %i.efw, 0
  br i1 %.not102.i466.4, label %.lr.ph848.preheader.1, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.efx = trunc nuw nsw i32 %i.efw to i16
  %i.efy = getelementptr inbounds nuw i8, ptr %.0194992, i64 1454
  store i16 %i.efx, ptr %i.efy, align 2, !tbaa !116
  %spec.select.i467.4 = call i32 @llvm.smax.i32(i32 %i.efw, i32 %.493.i464.31291)
  %i.efz = sub nuw nsw i32 4, %.3.i465.31292
  %i.ega = zext nneg i32 %i.efz to i64
  %i.egb = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.ega
  %i.egc = zext nneg i32 %i.efw to i64
  %i.egd = getelementptr inbounds nuw [8 x i8], ptr %i.egb, i64 %i.egc
  %i.ege = getelementptr inbounds nuw i8, ptr %i.egd, i64 4
  %i.egf = load i32, ptr %i.ege, align 4, !tbaa !53
  %i.egg = load i32, ptr %i.ebk, align 4, !tbaa !51
  %i.egh = add nsw i32 %i.egg, %i.egf
  store i32 %i.egh, ptr %i.ebk, align 4, !tbaa !51
  %i.egi = zext nneg i32 %.3.i465.31292 to i64
  %i.egj = getelementptr inbounds nuw i8, ptr %i.ebm, i64 %i.egi
  store i8 5, ptr %i.egj, align 1, !tbaa !48
  br label %.lr.ph848.preheader.1

bb.kk:                                            ; preds = %bb.kk, %.loopexit696.3
  %indvars.iv1295 = phi i64 [ %indvars.iv.next1296, %bb.kk ], [ 0, %.loopexit696.3 ] ; 4 uses
  %i.egk = trunc nuw nsw i64 %indvars.iv1295 to i32
  store i32 %i.egk, ptr %i.eba, align 4, !tbaa !124
  %i.egl = getelementptr inbounds nuw [4 x i8], ptr @dv_set_class_number_sd.classes, i64 %indvars.iv1295
  %i.egm = load i32, ptr %i.egl, align 4, !tbaa !51
  %i.egn = icmp sgt i32 %.493.i464.3, %i.egm
  %indvars.iv.next1296 = add nuw nsw i64 %indvars.iv1295, 1
  br i1 %i.egn, label %bb.kk, label %bb.kl, !llvm.loop !85

bb.kl:                                            ; preds = %bb.kk
  %i.ego = icmp samesign ugt i64 %indvars.iv1295, 2
  br i1 %i.ego, label %bb.km, label %.dv_init_enc_block.exit245_crit_edge

.dv_init_enc_block.exit245_crit_edge:             ; preds = %bb.kl
  %.pre1652 = load i32, ptr %i.ebk, align 4, !tbaa !51
  %.phi.trans.insert1653 = getelementptr inbounds nuw i8, ptr %.0194992, i64 1400
  %.pre1654 = load i32, ptr %.phi.trans.insert1653, align 4, !tbaa !51
  %.phi.trans.insert1655 = getelementptr inbounds nuw i8, ptr %.0194992, i64 1404
  %.pre1656 = load i32, ptr %.phi.trans.insert1655, align 4, !tbaa !51
  %.phi.trans.insert1657 = getelementptr inbounds nuw i8, ptr %.0194992, i64 1408
  %.pre1658 = load i32, ptr %.phi.trans.insert1657, align 4, !tbaa !51
  br label %dv_init_enc_block.exit245

bb.km:                                            ; preds = %bb.kl
  store i32 3, ptr %i.eba, align 4, !tbaa !124
  %i.egp = load i8, ptr %i.ebm, align 4, !tbaa !48 ; 2 uses
  %i.egq = zext i8 %i.egp to i32                  ; 2 uses
  store i32 0, ptr %i.ebj, align 4, !tbaa !51
  store i32 1, ptr %i.ebk, align 4, !tbaa !51
  %i.egr = icmp ult i8 %i.egp, 6
  br i1 %i.egr, label %.lr.ph858, label %.loopexit695

.loopexit695:                                     ; preds = %bb.ku, %bb.km
  %i.egs = phi i32 [ 1, %bb.km ], [ %i.ekh, %bb.ku ]
  %.399.i457.lcssa = phi i32 [ %i.egq, %bb.km ], [ %i.ekk, %bb.ku ] ; 3 uses
  %.5.i458.lcssa = phi i32 [ 0, %bb.km ], [ %.6.i460, %bb.ku ] ; 3 uses
  store i32 %.5.i458.lcssa, ptr %i.dwx, align 4, !tbaa !51
  store i32 1, ptr %i.dwy, align 4, !tbaa !51
  %i.egt = icmp samesign ult i32 %.399.i457.lcssa, 21
  br i1 %i.egt, label %.lr.ph858.1, label %.loopexit695.1

.lr.ph858.1:                                      ; preds = %.loopexit695, %bb.ko
  %i.egu = phi i32 [ %i.ehl, %bb.ko ], [ 1, %.loopexit695 ] ; 2 uses
  %.5.i458857.1 = phi i32 [ %.6.i460.1, %bb.ko ], [ %.5.i458.lcssa, %.loopexit695 ] ; 3 uses
  %.399.i457856.1 = phi i32 [ %i.eho, %bb.ko ], [ %.399.i457.lcssa, %.loopexit695 ] ; 4 uses
  %i.egv = zext nneg i32 %.399.i457856.1 to i64   ; 2 uses
  %i.egw = getelementptr inbounds nuw [2 x i8], ptr %i.ebi, i64 %i.egv ; 2 uses
  %i.egx = load i16, ptr %i.egw, align 2, !tbaa !116
  %i.egy = ashr i16 %i.egx, 1                     ; 3 uses
  store i16 %i.egy, ptr %i.egw, align 2, !tbaa !116
  %.not.i459.1 = icmp eq i16 %i.egy, 0
  br i1 %.not.i459.1, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %.lr.ph858.1
  %i.egz = xor i32 %.5.i458857.1, -1
  %i.eha = add nsw i32 %.399.i457856.1, %i.egz
  %i.ehb = sext i32 %i.eha to i64
  %i.ehc = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.ehb
  %i.ehd = sext i16 %i.egy to i64
  %i.ehe = getelementptr inbounds [8 x i8], ptr %i.ehc, i64 %i.ehd
  %i.ehf = getelementptr inbounds nuw i8, ptr %i.ehe, i64 4
  %i.ehg = load i32, ptr %i.ehf, align 4, !tbaa !53
  %i.ehh = add nsw i32 %i.egu, %i.ehg             ; 2 uses
  store i32 %i.ehh, ptr %i.dwy, align 4, !tbaa !51
  %i.ehi = trunc nuw nsw i32 %.399.i457856.1 to i8
  %i.ehj = zext nneg i32 %.5.i458857.1 to i64
  %i.ehk = getelementptr inbounds nuw i8, ptr %i.ebm, i64 %i.ehj
  store i8 %i.ehi, ptr %i.ehk, align 1, !tbaa !48
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %.lr.ph858.1
  %i.ehl = phi i32 [ %i.ehh, %bb.kn ], [ %i.egu, %.lr.ph858.1 ] ; 2 uses
  %.6.i460.1 = phi i32 [ %.399.i457856.1, %bb.kn ], [ %.5.i458857.1, %.lr.ph858.1 ] ; 2 uses
  %i.ehm = getelementptr inbounds nuw i8, ptr %i.ebm, i64 %i.egv
  %i.ehn = load i8, ptr %i.ehm, align 1, !tbaa !48 ; 2 uses
  %i.eho = zext i8 %i.ehn to i32                  ; 2 uses
  %i.ehp = icmp ult i8 %i.ehn, 21
  br i1 %i.ehp, label %.lr.ph858.1, label %.loopexit695.1, !llvm.loop !86

.loopexit695.1:                                   ; preds = %bb.ko, %.loopexit695
  %i.ehq = phi i32 [ 1, %.loopexit695 ], [ %i.ehl, %bb.ko ]
  %.399.i457.lcssa.1 = phi i32 [ %.399.i457.lcssa, %.loopexit695 ], [ %i.eho, %bb.ko ] ; 3 uses
  %.5.i458.lcssa.1 = phi i32 [ %.5.i458.lcssa, %.loopexit695 ], [ %.6.i460.1, %bb.ko ] ; 3 uses
  store i32 %.5.i458.lcssa.1, ptr %i.dyg, align 4, !tbaa !51
  store i32 1, ptr %i.dyh, align 4, !tbaa !51
  %i.ehr = icmp samesign ult i32 %.399.i457.lcssa.1, 43
  br i1 %i.ehr, label %.lr.ph858.2, label %.loopexit695.2

.lr.ph858.2:                                      ; preds = %.loopexit695.1, %bb.kq
  %i.ehs = phi i32 [ %i.eij, %bb.kq ], [ 1, %.loopexit695.1 ] ; 2 uses
  %.5.i458857.2 = phi i32 [ %.6.i460.2, %bb.kq ], [ %.5.i458.lcssa.1, %.loopexit695.1 ] ; 3 uses
  %.399.i457856.2 = phi i32 [ %i.eim, %bb.kq ], [ %.399.i457.lcssa.1, %.loopexit695.1 ] ; 4 uses
  %i.eht = zext nneg i32 %.399.i457856.2 to i64   ; 2 uses
  %i.ehu = getelementptr inbounds nuw [2 x i8], ptr %i.ebi, i64 %i.eht ; 2 uses
  %i.ehv = load i16, ptr %i.ehu, align 2, !tbaa !116
  %i.ehw = ashr i16 %i.ehv, 1                     ; 3 uses
  store i16 %i.ehw, ptr %i.ehu, align 2, !tbaa !116
  %.not.i459.2 = icmp eq i16 %i.ehw, 0
  br i1 %.not.i459.2, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %.lr.ph858.2
  %i.ehx = xor i32 %.5.i458857.2, -1
  %i.ehy = add nsw i32 %.399.i457856.2, %i.ehx
  %i.ehz = sext i32 %i.ehy to i64
  %i.eia = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.ehz
  %i.eib = sext i16 %i.ehw to i64
  %i.eic = getelementptr inbounds [8 x i8], ptr %i.eia, i64 %i.eib
  %i.eid = getelementptr inbounds nuw i8, ptr %i.eic, i64 4
  %i.eie = load i32, ptr %i.eid, align 4, !tbaa !53
  %i.eif = add nsw i32 %i.ehs, %i.eie             ; 2 uses
  store i32 %i.eif, ptr %i.dyh, align 4, !tbaa !51
  %i.eig = trunc nuw nsw i32 %.399.i457856.2 to i8
  %i.eih = zext nneg i32 %.5.i458857.2 to i64
  %i.eii = getelementptr inbounds nuw i8, ptr %i.ebm, i64 %i.eih
  store i8 %i.eig, ptr %i.eii, align 1, !tbaa !48
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %.lr.ph858.2
  %i.eij = phi i32 [ %i.eif, %bb.kp ], [ %i.ehs, %.lr.ph858.2 ] ; 2 uses
  %.6.i460.2 = phi i32 [ %.399.i457856.2, %bb.kp ], [ %.5.i458857.2, %.lr.ph858.2 ] ; 2 uses
  %i.eik = getelementptr inbounds nuw i8, ptr %i.ebm, i64 %i.eht
  %i.eil = load i8, ptr %i.eik, align 1, !tbaa !48 ; 2 uses
  %i.eim = zext i8 %i.eil to i32                  ; 2 uses
  %i.ein = icmp ult i8 %i.eil, 43
  br i1 %i.ein, label %.lr.ph858.2, label %.loopexit695.2, !llvm.loop !86

.loopexit695.2:                                   ; preds = %bb.kq, %.loopexit695.1
  %i.eio = phi i32 [ 1, %.loopexit695.1 ], [ %i.eij, %bb.kq ]
  %.399.i457.lcssa.2 = phi i32 [ %.399.i457.lcssa.1, %.loopexit695.1 ], [ %i.eim, %bb.kq ] ; 3 uses
  %.5.i458.lcssa.2 = phi i32 [ %.5.i458.lcssa.1, %.loopexit695.1 ], [ %.6.i460.2, %bb.kq ] ; 3 uses
  store i32 %.5.i458.lcssa.2, ptr %i.dzp, align 4, !tbaa !51
  store i32 1, ptr %i.dzq, align 4, !tbaa !51
  %i.eip = icmp samesign ult i32 %.399.i457.lcssa.2, 64
  br i1 %i.eip, label %.lr.ph858.3, label %.loopexit695.3

.lr.ph858.3:                                      ; preds = %.loopexit695.2, %bb.ks
  %i.eiq = phi i32 [ %i.ejh, %bb.ks ], [ 1, %.loopexit695.2 ] ; 2 uses
  %.5.i458857.3 = phi i32 [ %.6.i460.3, %bb.ks ], [ %.5.i458.lcssa.2, %.loopexit695.2 ] ; 3 uses
  %.399.i457856.3 = phi i32 [ %i.ejk, %bb.ks ], [ %.399.i457.lcssa.2, %.loopexit695.2 ] ; 4 uses
  %i.eir = zext nneg i32 %.399.i457856.3 to i64   ; 2 uses
  %i.eis = getelementptr inbounds nuw [2 x i8], ptr %i.ebi, i64 %i.eir ; 2 uses
  %i.eit = load i16, ptr %i.eis, align 2, !tbaa !116
  %i.eiu = ashr i16 %i.eit, 1                     ; 3 uses
  store i16 %i.eiu, ptr %i.eis, align 2, !tbaa !116
  %.not.i459.3 = icmp eq i16 %i.eiu, 0
  br i1 %.not.i459.3, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %.lr.ph858.3
  %i.eiv = xor i32 %.5.i458857.3, -1
  %i.eiw = add nsw i32 %.399.i457856.3, %i.eiv
  %i.eix = sext i32 %i.eiw to i64
  %i.eiy = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.eix
  %i.eiz = sext i16 %i.eiu to i64
  %i.eja = getelementptr inbounds [8 x i8], ptr %i.eiy, i64 %i.eiz
  %i.ejb = getelementptr inbounds nuw i8, ptr %i.eja, i64 4
  %i.ejc = load i32, ptr %i.ejb, align 4, !tbaa !53
  %i.ejd = add nsw i32 %i.eiq, %i.ejc             ; 2 uses
  store i32 %i.ejd, ptr %i.dzq, align 4, !tbaa !51
  %i.eje = trunc nuw nsw i32 %.399.i457856.3 to i8
  %i.ejf = zext nneg i32 %.5.i458857.3 to i64
end_hunk_6
begin_hunk_7_@dv_encode_video_segment:bb.a
  br label %.lr.ph951.1

.lr.ph951.1:                                      ; preds = %bb.lk, %.lr.ph951.preheader.1
  %indvars.iv1503.1 = phi i64 [ 6, %.lr.ph951.preheader.1 ], [ %indvars.iv.next1504.1, %bb.lk ] ; 7 uses
  %.1.i483950.1 = phi i32 [ %.3.i485.4, %.lr.ph951.preheader.1 ], [ %.3.i485.1, %bb.lk ] ; 4 uses
  %.190.i482949.1 = phi i32 [ %.493.i484.4, %.lr.ph951.preheader.1 ], [ %.493.i484.1, %bb.lk ] ; 3 uses
  %i.evc = getelementptr inbounds nuw i8, ptr %i.ezg, i64 %indvars.iv1503.1
  %i.evd = load i8, ptr %i.evc, align 1, !tbaa !48
  %i.eve = zext i8 %i.evd to i64
  %i.evf = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.eve
  %i.evg = load i16, ptr %i.evf, align 2, !tbaa !116
  %i.evh = sext i16 %i.evg to i32                 ; 3 uses
  %i.evi = add i32 %i.ezi, %i.evh
  %i.evj = icmp ugt i32 %i.evi, %i.ezj
  br i1 %i.evj, label %bb.li, label %bb.lk

bb.li:                                            ; preds = %.lr.ph951.1
  %i.evk = lshr i32 %i.evh, 31
  %i.evl = trunc nuw nsw i32 %i.evk to i8
  %i.evm = getelementptr inbounds nuw i8, ptr %i.ezo, i64 %indvars.iv1503.1
  store i8 %i.evl, ptr %i.evm, align 1, !tbaa !48
  %i.evn = call i32 @llvm.abs.i32(i32 %i.evh, i1 true)
  %i.evo = getelementptr inbounds nuw [4 x i8], ptr %i.ezh, i64 %indvars.iv1503.1
  %i.evp = load i32, ptr %i.evo, align 4, !tbaa !51
  %i.evq = mul nsw i32 %i.evp, %i.evn
  %i.evr = add nsw i32 %i.evq, 2097152
  %i.evs = ashr i32 %i.evr, 22                    ; 4 uses
  %.not102.i486.1 = icmp eq i32 %i.evs, 0
  br i1 %.not102.i486.1, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.evt = trunc nsw i32 %i.evs to i16
  %i.evu = getelementptr inbounds nuw [2 x i8], ptr %i.ezl, i64 %indvars.iv1503.1
  store i16 %i.evt, ptr %i.evu, align 2, !tbaa !116
  %spec.select.i487.1 = call i32 @llvm.smax.i32(i32 %i.evs, i32 %.190.i482949.1)
  %i.evv = xor i32 %.1.i483950.1, -1
  %i.evw = trunc nsw i64 %indvars.iv1503.1 to i32 ; 2 uses
  %i.evx = add i32 %i.evw, %i.evv
  %i.evy = sext i32 %i.evx to i64
  %i.evz = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.evy
  %i.ewa = sext i32 %i.evs to i64
  %i.ewb = getelementptr inbounds [8 x i8], ptr %i.evz, i64 %i.ewa
  %i.ewc = getelementptr inbounds nuw i8, ptr %i.ewb, i64 4
  %i.ewd = load i32, ptr %i.ewc, align 4, !tbaa !53
  %i.ewe = load i32, ptr %i.evb, align 4, !tbaa !51
  %i.ewf = add nsw i32 %i.ewe, %i.ewd
  store i32 %i.ewf, ptr %i.evb, align 4, !tbaa !51
  %i.ewg = trunc i64 %indvars.iv1503.1 to i8
  %i.ewh = sext i32 %.1.i483950.1 to i64
  %i.ewi = getelementptr inbounds i8, ptr %i.ezp, i64 %i.ewh
  store i8 %i.ewg, ptr %i.ewi, align 1, !tbaa !48
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %bb.li, %.lr.ph951.1
  %.493.i484.1 = phi i32 [ %.190.i482949.1, %bb.li ], [ %spec.select.i487.1, %bb.lj ], [ %.190.i482949.1, %.lr.ph951.1 ] ; 2 uses
  %.3.i485.1 = phi i32 [ %.1.i483950.1, %bb.li ], [ %i.evw, %bb.lj ], [ %.1.i483950.1, %.lr.ph951.1 ] ; 3 uses
  %indvars.iv.next1504.1 = add nuw nsw i64 %indvars.iv1503.1, 1 ; 2 uses
  %exitcond.11510.not = icmp eq i64 %indvars.iv.next1504.1, 21
  br i1 %exitcond.11510.not, label %.lr.ph951.preheader.2, label %.lr.ph951.1, !llvm.loop !84

.lr.ph951.preheader.2:                            ; preds = %bb.lk
  %i.ewj = getelementptr inbounds nuw i8, ptr %.1195989, i64 40 ; 2 uses
  store i32 %.3.i485.1, ptr %i.ewj, align 4, !tbaa !51
  %i.ewk = getelementptr inbounds nuw i8, ptr %.1195989, i64 24 ; 5 uses
  store i32 1, ptr %i.ewk, align 4, !tbaa !51
  br label %.lr.ph951.2

.lr.ph951.2:                                      ; preds = %bb.ln, %.lr.ph951.preheader.2
  %indvars.iv1503.2 = phi i64 [ 21, %.lr.ph951.preheader.2 ], [ %indvars.iv.next1504.2, %bb.ln ] ; 7 uses
  %.1.i483950.2 = phi i32 [ %.3.i485.1, %.lr.ph951.preheader.2 ], [ %.3.i485.2, %bb.ln ] ; 4 uses
  %.190.i482949.2 = phi i32 [ %.493.i484.1, %.lr.ph951.preheader.2 ], [ %.493.i484.2, %bb.ln ] ; 3 uses
  %i.ewl = getelementptr inbounds nuw i8, ptr %i.ezg, i64 %indvars.iv1503.2
  %i.ewm = load i8, ptr %i.ewl, align 1, !tbaa !48
  %i.ewn = zext i8 %i.ewm to i64
  %i.ewo = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.ewn
  %i.ewp = load i16, ptr %i.ewo, align 2, !tbaa !116
  %i.ewq = sext i16 %i.ewp to i32                 ; 3 uses
  %i.ewr = add i32 %i.ezi, %i.ewq
  %i.ews = icmp ugt i32 %i.ewr, %i.ezj
  br i1 %i.ews, label %bb.ll, label %bb.ln

bb.ll:                                            ; preds = %.lr.ph951.2
  %i.ewt = lshr i32 %i.ewq, 31
  %i.ewu = trunc nuw nsw i32 %i.ewt to i8
  %i.ewv = getelementptr inbounds nuw i8, ptr %i.ezo, i64 %indvars.iv1503.2
  store i8 %i.ewu, ptr %i.ewv, align 1, !tbaa !48
  %i.eww = call i32 @llvm.abs.i32(i32 %i.ewq, i1 true)
  %i.ewx = getelementptr inbounds nuw [4 x i8], ptr %i.ezh, i64 %indvars.iv1503.2
  %i.ewy = load i32, ptr %i.ewx, align 4, !tbaa !51
  %i.ewz = mul nsw i32 %i.ewy, %i.eww
  %i.exa = add nsw i32 %i.ewz, 2097152
  %i.exb = ashr i32 %i.exa, 22                    ; 4 uses
  %.not102.i486.2 = icmp eq i32 %i.exb, 0
  br i1 %.not102.i486.2, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.exc = trunc nsw i32 %i.exb to i16
  %i.exd = getelementptr inbounds nuw [2 x i8], ptr %i.ezl, i64 %indvars.iv1503.2
  store i16 %i.exc, ptr %i.exd, align 2, !tbaa !116
  %spec.select.i487.2 = call i32 @llvm.smax.i32(i32 %i.exb, i32 %.190.i482949.2)
  %i.exe = xor i32 %.1.i483950.2, -1
  %i.exf = trunc nsw i64 %indvars.iv1503.2 to i32 ; 2 uses
  %i.exg = add i32 %i.exf, %i.exe
  %i.exh = sext i32 %i.exg to i64
  %i.exi = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.exh
  %i.exj = sext i32 %i.exb to i64
  %i.exk = getelementptr inbounds [8 x i8], ptr %i.exi, i64 %i.exj
  %i.exl = getelementptr inbounds nuw i8, ptr %i.exk, i64 4
  %i.exm = load i32, ptr %i.exl, align 4, !tbaa !53
  %i.exn = load i32, ptr %i.ewk, align 4, !tbaa !51
  %i.exo = add nsw i32 %i.exn, %i.exm
  store i32 %i.exo, ptr %i.ewk, align 4, !tbaa !51
  %i.exp = trunc i64 %indvars.iv1503.2 to i8
  %i.exq = sext i32 %.1.i483950.2 to i64
  %i.exr = getelementptr inbounds i8, ptr %i.ezp, i64 %i.exq
  store i8 %i.exp, ptr %i.exr, align 1, !tbaa !48
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.ll, %.lr.ph951.2
  %.493.i484.2 = phi i32 [ %.190.i482949.2, %bb.ll ], [ %spec.select.i487.2, %bb.lm ], [ %.190.i482949.2, %.lr.ph951.2 ] ; 2 uses
  %.3.i485.2 = phi i32 [ %.1.i483950.2, %bb.ll ], [ %i.exf, %bb.lm ], [ %.1.i483950.2, %.lr.ph951.2 ] ; 3 uses
  %indvars.iv.next1504.2 = add nuw nsw i64 %indvars.iv1503.2, 1 ; 2 uses
  %exitcond.21511.not = icmp eq i64 %indvars.iv.next1504.2, 43
  br i1 %exitcond.21511.not, label %.lr.ph951.preheader.3, label %.lr.ph951.2, !llvm.loop !84

.lr.ph951.preheader.3:                            ; preds = %bb.ln
  %i.exs = getelementptr inbounds nuw i8, ptr %.1195989, i64 44 ; 2 uses
  store i32 %.3.i485.2, ptr %i.exs, align 4, !tbaa !51
  %i.ext = getelementptr inbounds nuw i8, ptr %.1195989, i64 28 ; 5 uses
  store i32 1, ptr %i.ext, align 4, !tbaa !51
  br label %.lr.ph951.3

.lr.ph951.3:                                      ; preds = %bb.lq, %.lr.ph951.preheader.3
  %indvars.iv1503.3 = phi i64 [ 43, %.lr.ph951.preheader.3 ], [ %indvars.iv.next1504.3, %bb.lq ] ; 7 uses
  %.1.i483950.3 = phi i32 [ %.3.i485.2, %.lr.ph951.preheader.3 ], [ %.3.i485.3, %bb.lq ] ; 4 uses
  %.190.i482949.3 = phi i32 [ %.493.i484.2, %.lr.ph951.preheader.3 ], [ %.493.i484.3, %bb.lq ] ; 3 uses
  %i.exu = getelementptr inbounds nuw i8, ptr %i.ezg, i64 %indvars.iv1503.3
  %i.exv = load i8, ptr %i.exu, align 1, !tbaa !48
  %i.exw = zext i8 %i.exv to i64
  %i.exx = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.exw
  %i.exy = load i16, ptr %i.exx, align 2, !tbaa !116
  %i.exz = sext i16 %i.exy to i32                 ; 3 uses
  %i.eya = add i32 %i.ezi, %i.exz
  %i.eyb = icmp ugt i32 %i.eya, %i.ezj
  br i1 %i.eyb, label %bb.lo, label %bb.lq

bb.lo:                                            ; preds = %.lr.ph951.3
  %i.eyc = lshr i32 %i.exz, 31
  %i.eyd = trunc nuw nsw i32 %i.eyc to i8
  %i.eye = getelementptr inbounds nuw i8, ptr %i.ezo, i64 %indvars.iv1503.3
  store i8 %i.eyd, ptr %i.eye, align 1, !tbaa !48
  %i.eyf = call i32 @llvm.abs.i32(i32 %i.exz, i1 true)
  %i.eyg = getelementptr inbounds nuw [4 x i8], ptr %i.ezh, i64 %indvars.iv1503.3
  %i.eyh = load i32, ptr %i.eyg, align 4, !tbaa !51
  %i.eyi = mul nsw i32 %i.eyh, %i.eyf
  %i.eyj = add nsw i32 %i.eyi, 2097152
  %i.eyk = ashr i32 %i.eyj, 22                    ; 4 uses
  %.not102.i486.3 = icmp eq i32 %i.eyk, 0
  br i1 %.not102.i486.3, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.eyl = trunc nsw i32 %i.eyk to i16
  %i.eym = getelementptr inbounds nuw [2 x i8], ptr %i.ezl, i64 %indvars.iv1503.3
  store i16 %i.eyl, ptr %i.eym, align 2, !tbaa !116
  %spec.select.i487.3 = call i32 @llvm.smax.i32(i32 %i.eyk, i32 %.190.i482949.3)
  %i.eyn = xor i32 %.1.i483950.3, -1
  %i.eyo = trunc nsw i64 %indvars.iv1503.3 to i32 ; 2 uses
  %i.eyp = add i32 %i.eyo, %i.eyn
  %i.eyq = sext i32 %i.eyp to i64
  %i.eyr = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.eyq
  %i.eys = sext i32 %i.eyk to i64
  %i.eyt = getelementptr inbounds [8 x i8], ptr %i.eyr, i64 %i.eys
  %i.eyu = getelementptr inbounds nuw i8, ptr %i.eyt, i64 4
  %i.eyv = load i32, ptr %i.eyu, align 4, !tbaa !53
  %i.eyw = load i32, ptr %i.ext, align 4, !tbaa !51
  %i.eyx = add nsw i32 %i.eyw, %i.eyv
  store i32 %i.eyx, ptr %i.ext, align 4, !tbaa !51
  %i.eyy = trunc i64 %indvars.iv1503.3 to i8
  %i.eyz = sext i32 %.1.i483950.3 to i64
  %i.eza = getelementptr inbounds i8, ptr %i.ezp, i64 %i.eyz
  store i8 %i.eyy, ptr %i.eza, align 1, !tbaa !48
  br label %bb.lq

bb.lq:                                            ; preds = %bb.lp, %bb.lo, %.lr.ph951.3
  %.493.i484.3 = phi i32 [ %.190.i482949.3, %bb.lo ], [ %spec.select.i487.3, %bb.lp ], [ %.190.i482949.3, %.lr.ph951.3 ] ; 2 uses
  %.3.i485.3 = phi i32 [ %.1.i483950.3, %bb.lo ], [ %i.eyo, %bb.lp ], [ %.1.i483950.3, %.lr.ph951.3 ] ; 2 uses
  %indvars.iv.next1504.3 = add nuw nsw i64 %indvars.iv1503.3, 1 ; 2 uses
  %exitcond.31512.not = icmp eq i64 %indvars.iv.next1504.3, 64
  br i1 %exitcond.31512.not, label %.loopexit684.3, label %.lr.ph951.3, !llvm.loop !84

.loopexit684.3:                                   ; preds = %bb.lq
  %i.ezb = sext i32 %.3.i485.3 to i64
  %i.ezc = getelementptr inbounds i8, ptr %i.ezp, i64 %i.ezb
  store i8 64, ptr %i.ezc, align 1, !tbaa !48
  %i.ezd = getelementptr inbounds nuw i8, ptr %.1195989, i64 56 ; 3 uses
  br label %bb.mb

.lr.ph951.preheader:                              ; preds = %bb.lf
  %i.eze = getelementptr inbounds nuw i8, ptr %.1195989, i64 60
  %i.ezf = load i32, ptr %i.eze, align 4, !tbaa !119
  %.not50.i230 = icmp eq i32 %i.ezf, 0            ; 5 uses
  %i.ezg = select i1 %.not50.i230, ptr @ff_zigzag_direct, ptr @ff_dv_zigzag248_direct ; 8 uses
  %i.ezh = select i1 %.not50.i230, ptr @dv_weight_88, ptr @dv_weight_248 ; 3 uses
  %i.ezi = load i32, ptr %i.ad, align 8, !tbaa !125 ; 9 uses
  %i.ezj = shl i32 %i.ezi, 1                      ; 8 uses
  %i.ezk = load i16, ptr %i.n, align 16, !tbaa !116
  %i.ezl = getelementptr inbounds nuw i8, ptr %.1195989, i64 64 ; 8 uses
  store i16 %i.ezk, ptr %i.ezl, align 4, !tbaa !116
  %i.ezm = getelementptr inbounds nuw i8, ptr %.1195989, i64 32 ; 2 uses
  %i.ezn = getelementptr inbounds nuw i8, ptr %.1195989, i64 16 ; 11 uses
  %i.ezo = getelementptr inbounds nuw i8, ptr %.1195989, i64 256 ; 3 uses
  %i.ezp = getelementptr inbounds nuw i8, ptr %.1195989, i64 192 ; 19 uses
  store i32 0, ptr %i.ezm, align 4, !tbaa !51
  store i32 1, ptr %i.ezn, align 4, !tbaa !51
  %64 = getelementptr inbounds nuw i8, ptr %i.ezg, i64 1
  %65 = load i8, ptr %64, align 1, !tbaa !48
  %i.ezq = zext i8 %65 to i64
  %i.ezr = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.ezq
  %i.ezs = load i16, ptr %i.ezr, align 2, !tbaa !116
  %i.ezt = sext i16 %i.ezs to i32                 ; 3 uses
  %i.ezu = add i32 %i.ezi, %i.ezt
  %i.ezv = icmp ugt i32 %i.ezu, %i.ezj
  br i1 %i.ezv, label %bb.lr, label %.lr.ph951.11516

bb.lr:                                            ; preds = %.lr.ph951.preheader
  %i.ezw = lshr i32 %i.ezt, 31
  %i.ezx = trunc nuw nsw i32 %i.ezw to i8
  %i.ezy = getelementptr inbounds nuw i8, ptr %.1195989, i64 257
  store i8 %i.ezx, ptr %i.ezy, align 1, !tbaa !48
  %i.ezz = call i32 @llvm.abs.i32(i32 %i.ezt, i1 true)
  %i.faa = select i1 %.not50.i230, i32 257107, i32 262144
  %i.fab = mul nuw nsw i32 %i.faa, %i.ezz
  %i.fac = add nuw nsw i32 %i.fab, 2097152
  %i.fad = lshr i32 %i.fac, 22                    ; 4 uses
  %.not102.i486 = icmp eq i32 %i.fad, 0
  br i1 %.not102.i486, label %.lr.ph951.11516, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.fae = trunc nuw nsw i32 %i.fad to i16
  %i.faf = getelementptr inbounds nuw i8, ptr %.1195989, i64 66
  store i16 %i.fae, ptr %i.faf, align 2, !tbaa !116
  %i.fag = zext nneg i32 %i.fad to i64
  %i.fah = getelementptr inbounds nuw [8 x i8], ptr @dv_vlc_map, i64 %i.fag
  %i.fai = getelementptr inbounds nuw i8, ptr %i.fah, i64 4
  %i.faj = load i32, ptr %i.fai, align 4, !tbaa !53
  %i.fak = add nsw i32 %i.faj, 1                  ; 2 uses
  store i32 %i.fak, ptr %i.ezn, align 4, !tbaa !51
  store i8 1, ptr %i.ezp, align 4, !tbaa !48
  br label %.lr.ph951.11516

.lr.ph951.11516:                                  ; preds = %bb.ls, %bb.lr, %.lr.ph951.preheader
  %i.fal = phi i32 [ 1, %bb.lr ], [ %i.fak, %bb.ls ], [ 1, %.lr.ph951.preheader ] ; 3 uses
  %.493.i484 = phi i32 [ -1, %bb.lr ], [ %i.fad, %bb.ls ], [ -1, %.lr.ph951.preheader ] ; 3 uses
  %.3.i485 = phi i32 [ 0, %bb.lr ], [ 1, %bb.ls ], [ 0, %.lr.ph951.preheader ] ; 4 uses
  %66 = getelementptr inbounds nuw i8, ptr %i.ezg, i64 2
  %67 = load i8, ptr %66, align 2, !tbaa !48
  %i.fam = zext i8 %67 to i64
  %i.fan = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.fam
  %i.fao = load i16, ptr %i.fan, align 2, !tbaa !116
  %i.fap = sext i16 %i.fao to i32                 ; 3 uses
  %i.faq = add i32 %i.ezi, %i.fap
  %i.far = icmp ugt i32 %i.faq, %i.ezj
  br i1 %i.far, label %bb.lt, label %.lr.ph951.21526

bb.lt:                                            ; preds = %.lr.ph951.11516
  %i.fas = lshr i32 %i.fap, 31
  %i.fat = trunc nuw nsw i32 %i.fas to i8
  %i.fau = getelementptr inbounds nuw i8, ptr %.1195989, i64 258
  store i8 %i.fat, ptr %i.fau, align 2, !tbaa !48
  %i.fav = call i32 @llvm.abs.i32(i32 %i.fap, i1 true)
  %i.faw = mul nuw nsw i32 %i.fav, 257107
  %i.fax = add nuw nsw i32 %i.faw, 2097152
  %i.fay = lshr i32 %i.fax, 22                    ; 4 uses
  %.not102.i486.11517 = icmp eq i32 %i.fay, 0
  br i1 %.not102.i486.11517, label %.lr.ph951.21526, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.faz = trunc nuw nsw i32 %i.fay to i16
  %i.fba = getelementptr inbounds nuw i8, ptr %.1195989, i64 68
  store i16 %i.faz, ptr %i.fba, align 4, !tbaa !116
  %spec.select.i487.11518 = call i32 @llvm.smax.i32(i32 %i.fay, i32 %.493.i484)
  %i.fbb = xor i32 %.3.i485, 1
  %i.fbc = zext nneg i32 %i.fbb to i64
  %i.fbd = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.fbc
  %i.fbe = zext nneg i32 %i.fay to i64
  %i.fbf = getelementptr inbounds nuw [8 x i8], ptr %i.fbd, i64 %i.fbe
  %i.fbg = getelementptr inbounds nuw i8, ptr %i.fbf, i64 4
  %i.fbh = load i32, ptr %i.fbg, align 4, !tbaa !53
  %i.fbi = add nsw i32 %i.fal, %i.fbh             ; 2 uses
  store i32 %i.fbi, ptr %i.ezn, align 4, !tbaa !51
  %i.fbj = zext nneg i32 %.3.i485 to i64
  %i.fbk = getelementptr inbounds nuw i8, ptr %i.ezp, i64 %i.fbj
  store i8 2, ptr %i.fbk, align 1, !tbaa !48
  br label %.lr.ph951.21526

.lr.ph951.21526:                                  ; preds = %bb.lu, %bb.lt, %.lr.ph951.11516
  %i.fbl = phi i32 [ %i.fal, %bb.lt ], [ %i.fbi, %bb.lu ], [ %i.fal, %.lr.ph951.11516 ]
  %.493.i484.11519 = phi i32 [ %.493.i484, %bb.lt ], [ %spec.select.i487.11518, %bb.lu ], [ %.493.i484, %.lr.ph951.11516 ] ; 3 uses
  %.3.i485.11520 = phi i32 [ %.3.i485, %bb.lt ], [ 2, %bb.lu ], [ %.3.i485, %.lr.ph951.11516 ] ; 4 uses
  %68 = getelementptr inbounds nuw i8, ptr %i.ezg, i64 3
  %69 = load i8, ptr %68, align 1, !tbaa !48
  %i.fbm = zext i8 %69 to i64
  %i.fbn = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.fbm
  %i.fbo = load i16, ptr %i.fbn, align 2, !tbaa !116
  %i.fbp = sext i16 %i.fbo to i32                 ; 3 uses
  %i.fbq = add i32 %i.ezi, %i.fbp
  %i.fbr = icmp ugt i32 %i.fbq, %i.ezj
  br i1 %i.fbr, label %bb.lv, label %.lr.ph951.31536

bb.lv:                                            ; preds = %.lr.ph951.21526
  %i.fbs = lshr i32 %i.fbp, 31
  %i.fbt = trunc nuw nsw i32 %i.fbs to i8
  %i.fbu = getelementptr inbounds nuw i8, ptr %.1195989, i64 259
  store i8 %i.fbt, ptr %i.fbu, align 1, !tbaa !48
  %i.fbv = call i32 @llvm.abs.i32(i32 %i.fbp, i1 true)
  %i.fbw = select i1 %.not50.i230, i32 242189, i32 257107
  %i.fbx = mul nuw nsw i32 %i.fbw, %i.fbv
  %i.fby = add nuw nsw i32 %i.fbx, 2097152
  %i.fbz = lshr i32 %i.fby, 22                    ; 4 uses
  %.not102.i486.21527 = icmp eq i32 %i.fbz, 0
  br i1 %.not102.i486.21527, label %.lr.ph951.31536, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.fca = trunc nuw nsw i32 %i.fbz to i16
  %i.fcb = getelementptr inbounds nuw i8, ptr %.1195989, i64 70
  store i16 %i.fca, ptr %i.fcb, align 2, !tbaa !116
  %spec.select.i487.21528 = call i32 @llvm.smax.i32(i32 %i.fbz, i32 %.493.i484.11519)
  %i.fcc = sub nuw nsw i32 2, %.3.i485.11520
  %i.fcd = zext nneg i32 %i.fcc to i64
  %i.fce = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.fcd
  %i.fcf = zext nneg i32 %i.fbz to i64
  %i.fcg = getelementptr inbounds nuw [8 x i8], ptr %i.fce, i64 %i.fcf
  %i.fch = getelementptr inbounds nuw i8, ptr %i.fcg, i64 4
  %i.fci = load i32, ptr %i.fch, align 4, !tbaa !53
  %i.fcj = add nsw i32 %i.fbl, %i.fci
  store i32 %i.fcj, ptr %i.ezn, align 4, !tbaa !51
  %i.fck = zext nneg i32 %.3.i485.11520 to i64
  %i.fcl = getelementptr inbounds nuw i8, ptr %i.ezp, i64 %i.fck
  store i8 3, ptr %i.fcl, align 1, !tbaa !48
  br label %.lr.ph951.31536

.lr.ph951.31536:                                  ; preds = %bb.lw, %bb.lv, %.lr.ph951.21526
  %.493.i484.21529 = phi i32 [ %.493.i484.11519, %bb.lv ], [ %spec.select.i487.21528, %bb.lw ], [ %.493.i484.11519, %.lr.ph951.21526 ] ; 3 uses
  %.3.i485.21530 = phi i32 [ %.3.i485.11520, %bb.lv ], [ 3, %bb.lw ], [ %.3.i485.11520, %.lr.ph951.21526 ] ; 4 uses
  %70 = getelementptr inbounds nuw i8, ptr %i.ezg, i64 4
  %71 = load i8, ptr %70, align 4, !tbaa !48
  %i.fcm = zext i8 %71 to i64
  %i.fcn = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.fcm
  %i.fco = load i16, ptr %i.fcn, align 2, !tbaa !116
  %i.fcp = sext i16 %i.fco to i32                 ; 3 uses
  %i.fcq = add i32 %i.ezi, %i.fcp
  %i.fcr = icmp ugt i32 %i.fcq, %i.ezj
  br i1 %i.fcr, label %bb.lx, label %.lr.ph951.4

bb.lx:                                            ; preds = %.lr.ph951.31536
  %i.fcs = lshr i32 %i.fcp, 31
  %i.fct = trunc nuw nsw i32 %i.fcs to i8
  %i.fcu = getelementptr inbounds nuw i8, ptr %.1195989, i64 260
  store i8 %i.fct, ptr %i.fcu, align 4, !tbaa !48
  %i.fcv = call i32 @llvm.abs.i32(i32 %i.fcp, i1 true)
  %i.fcw = select i1 %.not50.i230, i32 252167, i32 242189
  %i.fcx = mul nuw nsw i32 %i.fcw, %i.fcv
  %i.fcy = add nuw nsw i32 %i.fcx, 2097152
  %i.fcz = lshr i32 %i.fcy, 22                    ; 4 uses
  %.not102.i486.31537 = icmp eq i32 %i.fcz, 0
  br i1 %.not102.i486.31537, label %.lr.ph951.4, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.fda = trunc nuw nsw i32 %i.fcz to i16
  %i.fdb = getelementptr inbounds nuw i8, ptr %.1195989, i64 72
  store i16 %i.fda, ptr %i.fdb, align 4, !tbaa !116
  %spec.select.i487.31538 = call i32 @llvm.smax.i32(i32 %i.fcz, i32 %.493.i484.21529)
  %i.fdc = sub nuw nsw i32 3, %.3.i485.21530
  %i.fdd = zext nneg i32 %i.fdc to i64
  %i.fde = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.fdd
  %i.fdf = zext nneg i32 %i.fcz to i64
  %i.fdg = getelementptr inbounds nuw [8 x i8], ptr %i.fde, i64 %i.fdf
  %i.fdh = getelementptr inbounds nuw i8, ptr %i.fdg, i64 4
  %i.fdi = load i32, ptr %i.fdh, align 4, !tbaa !53
  %i.fdj = load i32, ptr %i.ezn, align 4, !tbaa !51
  %i.fdk = add nsw i32 %i.fdj, %i.fdi
  store i32 %i.fdk, ptr %i.ezn, align 4, !tbaa !51
  %i.fdl = zext nneg i32 %.3.i485.21530 to i64
  %i.fdm = getelementptr inbounds nuw i8, ptr %i.ezp, i64 %i.fdl
  store i8 4, ptr %i.fdm, align 1, !tbaa !48
  br label %.lr.ph951.4

.lr.ph951.4:                                      ; preds = %bb.ly, %bb.lx, %.lr.ph951.31536
  %.493.i484.31539 = phi i32 [ %.493.i484.21529, %bb.lx ], [ %spec.select.i487.31538, %bb.ly ], [ %.493.i484.21529, %.lr.ph951.31536 ] ; 3 uses
  %.3.i485.31540 = phi i32 [ %.3.i485.21530, %bb.lx ], [ 4, %bb.ly ], [ %.3.i485.21530, %.lr.ph951.31536 ] ; 4 uses
  %72 = getelementptr inbounds nuw i8, ptr %i.ezg, i64 5
  %73 = load i8, ptr %72, align 1, !tbaa !48
  %i.fdn = zext i8 %73 to i64
  %i.fdo = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.fdn
  %i.fdp = load i16, ptr %i.fdo, align 2, !tbaa !116
  %i.fdq = sext i16 %i.fdp to i32                 ; 3 uses
  %i.fdr = add i32 %i.ezi, %i.fdq
  %i.fds = icmp ugt i32 %i.fdr, %i.ezj
  br i1 %i.fds, label %bb.lz, label %.lr.ph951.preheader.1

bb.lz:                                            ; preds = %.lr.ph951.4
  %i.fdt = lshr i32 %i.fdq, 31
  %i.fdu = trunc nuw nsw i32 %i.fdt to i8
  %i.fdv = getelementptr inbounds nuw i8, ptr %.1195989, i64 261
  store i8 %i.fdu, ptr %i.fdv, align 1, !tbaa !48
  %i.fdw = call i32 @llvm.abs.i32(i32 %i.fdq, i1 true)
  %i.fdx = mul nuw nsw i32 %i.fdw, 242189
  %i.fdy = add nuw nsw i32 %i.fdx, 2097152
  %i.fdz = lshr i32 %i.fdy, 22                    ; 4 uses
  %.not102.i486.4 = icmp eq i32 %i.fdz, 0
  br i1 %.not102.i486.4, label %.lr.ph951.preheader.1, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.fea = trunc nuw nsw i32 %i.fdz to i16
  %i.feb = getelementptr inbounds nuw i8, ptr %.1195989, i64 74
  store i16 %i.fea, ptr %i.feb, align 2, !tbaa !116
  %spec.select.i487.4 = call i32 @llvm.smax.i32(i32 %i.fdz, i32 %.493.i484.31539)
  %i.fec = sub nuw nsw i32 4, %.3.i485.31540
  %i.fed = zext nneg i32 %i.fec to i64
  %i.fee = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.fed
  %i.fef = zext nneg i32 %i.fdz to i64
  %i.feg = getelementptr inbounds nuw [8 x i8], ptr %i.fee, i64 %i.fef
  %i.feh = getelementptr inbounds nuw i8, ptr %i.feg, i64 4
  %i.fei = load i32, ptr %i.feh, align 4, !tbaa !53
  %i.fej = load i32, ptr %i.ezn, align 4, !tbaa !51
  %i.fek = add nsw i32 %i.fej, %i.fei
  store i32 %i.fek, ptr %i.ezn, align 4, !tbaa !51
  %i.fel = zext nneg i32 %.3.i485.31540 to i64
  %i.fem = getelementptr inbounds nuw i8, ptr %i.ezp, i64 %i.fel
  store i8 5, ptr %i.fem, align 1, !tbaa !48
  br label %.lr.ph951.preheader.1

bb.mb:                                            ; preds = %bb.mb, %.loopexit684.3
  %indvars.iv1543 = phi i64 [ %indvars.iv.next1544, %bb.mb ], [ 0, %.loopexit684.3 ] ; 4 uses
  %i.fen = trunc nuw nsw i64 %indvars.iv1543 to i32 ; 2 uses
  store i32 %i.fen, ptr %i.ezd, align 4, !tbaa !124
  %i.feo = getelementptr inbounds nuw [4 x i8], ptr @dv_set_class_number_sd.classes, i64 %indvars.iv1543
  %i.fep = load i32, ptr %i.feo, align 4, !tbaa !51
  %i.feq = icmp sgt i32 %.493.i484.3, %i.fep
  %indvars.iv.next1544 = add nuw nsw i64 %indvars.iv1543, 1
  br i1 %i.feq, label %bb.mb, label %bb.mc, !llvm.loop !85

bb.mc:                                            ; preds = %bb.mb
  %i.fer = add nuw nsw i32 %i.fen, 1
  store i32 %i.fer, ptr %i.ezd, align 4, !tbaa !124
  %i.fes = icmp samesign ugt i64 %indvars.iv1543, 1
  br i1 %i.fes, label %bb.md, label %.dv_init_enc_block.exit235_crit_edge

.dv_init_enc_block.exit235_crit_edge:             ; preds = %bb.mc
  %.pre1692 = load i32, ptr %i.ezn, align 4, !tbaa !51
  %.phi.trans.insert1693 = getelementptr inbounds nuw i8, ptr %.1195989, i64 20
  %.pre1694 = load i32, ptr %.phi.trans.insert1693, align 4, !tbaa !51
  %.phi.trans.insert1695 = getelementptr inbounds nuw i8, ptr %.1195989, i64 24
  %.pre1696 = load i32, ptr %.phi.trans.insert1695, align 4, !tbaa !51
  %.phi.trans.insert1697 = getelementptr inbounds nuw i8, ptr %.1195989, i64 28
  %.pre1698 = load i32, ptr %.phi.trans.insert1697, align 4, !tbaa !51
  br label %dv_init_enc_block.exit235

bb.md:                                            ; preds = %bb.mc
  store i32 3, ptr %i.ezd, align 4, !tbaa !124
  %i.fet = load i8, ptr %i.ezp, align 4, !tbaa !48 ; 2 uses
  %i.feu = zext i8 %i.fet to i32                  ; 2 uses
  store i32 0, ptr %i.ezm, align 4, !tbaa !51
  store i32 1, ptr %i.ezn, align 4, !tbaa !51
  %i.fev = icmp ult i8 %i.fet, 6
  br i1 %i.fev, label %.lr.ph961, label %.loopexit683

.loopexit683:                                     ; preds = %bb.ml, %bb.md
  %i.few = phi i32 [ 1, %bb.md ], [ %i.fil, %bb.ml ]
  %.399.i477.lcssa = phi i32 [ %i.feu, %bb.md ], [ %i.fio, %bb.ml ] ; 3 uses
  %.5.i478.lcssa = phi i32 [ 0, %bb.md ], [ %.6.i480, %bb.ml ] ; 3 uses
  store i32 %.5.i478.lcssa, ptr %i.eva, align 4, !tbaa !51
  store i32 1, ptr %i.evb, align 4, !tbaa !51
  %i.fex = icmp samesign ult i32 %.399.i477.lcssa, 21
  br i1 %i.fex, label %.lr.ph961.1, label %.loopexit683.1

.lr.ph961.1:                                      ; preds = %.loopexit683, %bb.mf
  %i.fey = phi i32 [ %i.ffp, %bb.mf ], [ 1, %.loopexit683 ] ; 2 uses
  %.5.i478960.1 = phi i32 [ %.6.i480.1, %bb.mf ], [ %.5.i478.lcssa, %.loopexit683 ] ; 3 uses
  %.399.i477959.1 = phi i32 [ %i.ffs, %bb.mf ], [ %.399.i477.lcssa, %.loopexit683 ] ; 4 uses
  %i.fez = zext nneg i32 %.399.i477959.1 to i64   ; 2 uses
  %i.ffa = getelementptr inbounds nuw [2 x i8], ptr %i.ezl, i64 %i.fez ; 2 uses
  %i.ffb = load i16, ptr %i.ffa, align 2, !tbaa !116
  %i.ffc = ashr i16 %i.ffb, 1                     ; 3 uses
  store i16 %i.ffc, ptr %i.ffa, align 2, !tbaa !116
  %.not.i479.1 = icmp eq i16 %i.ffc, 0
  br i1 %.not.i479.1, label %bb.mf, label %bb.me

bb.me:                                            ; preds = %.lr.ph961.1
  %i.ffd = xor i32 %.5.i478960.1, -1
  %i.ffe = add nsw i32 %.399.i477959.1, %i.ffd
  %i.fff = sext i32 %i.ffe to i64
  %i.ffg = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.fff
  %i.ffh = sext i16 %i.ffc to i64
  %i.ffi = getelementptr inbounds [8 x i8], ptr %i.ffg, i64 %i.ffh
  %i.ffj = getelementptr inbounds nuw i8, ptr %i.ffi, i64 4
  %i.ffk = load i32, ptr %i.ffj, align 4, !tbaa !53
  %i.ffl = add nsw i32 %i.fey, %i.ffk             ; 2 uses
  store i32 %i.ffl, ptr %i.evb, align 4, !tbaa !51
  %i.ffm = trunc nuw nsw i32 %.399.i477959.1 to i8
  %i.ffn = zext nneg i32 %.5.i478960.1 to i64
  %i.ffo = getelementptr inbounds nuw i8, ptr %i.ezp, i64 %i.ffn
  store i8 %i.ffm, ptr %i.ffo, align 1, !tbaa !48
  br label %bb.mf

bb.mf:                                            ; preds = %bb.me, %.lr.ph961.1
  %i.ffp = phi i32 [ %i.ffl, %bb.me ], [ %i.fey, %.lr.ph961.1 ] ; 2 uses
  %.6.i480.1 = phi i32 [ %.399.i477959.1, %bb.me ], [ %.5.i478960.1, %.lr.ph961.1 ] ; 2 uses
  %i.ffq = getelementptr inbounds nuw i8, ptr %i.ezp, i64 %i.fez
  %i.ffr = load i8, ptr %i.ffq, align 1, !tbaa !48 ; 2 uses
  %i.ffs = zext i8 %i.ffr to i32                  ; 2 uses
  %i.fft = icmp ult i8 %i.ffr, 21
  br i1 %i.fft, label %.lr.ph961.1, label %.loopexit683.1, !llvm.loop !86

.loopexit683.1:                                   ; preds = %bb.mf, %.loopexit683
  %i.ffu = phi i32 [ 1, %.loopexit683 ], [ %i.ffp, %bb.mf ]
  %.399.i477.lcssa.1 = phi i32 [ %.399.i477.lcssa, %.loopexit683 ], [ %i.ffs, %bb.mf ] ; 3 uses
  %.5.i478.lcssa.1 = phi i32 [ %.5.i478.lcssa, %.loopexit683 ], [ %.6.i480.1, %bb.mf ] ; 3 uses
  store i32 %.5.i478.lcssa.1, ptr %i.ewj, align 4, !tbaa !51
  store i32 1, ptr %i.ewk, align 4, !tbaa !51
  %i.ffv = icmp samesign ult i32 %.399.i477.lcssa.1, 43
  br i1 %i.ffv, label %.lr.ph961.2, label %.loopexit683.2

.lr.ph961.2:                                      ; preds = %.loopexit683.1, %bb.mh
  %i.ffw = phi i32 [ %i.fgn, %bb.mh ], [ 1, %.loopexit683.1 ] ; 2 uses
  %.5.i478960.2 = phi i32 [ %.6.i480.2, %bb.mh ], [ %.5.i478.lcssa.1, %.loopexit683.1 ] ; 3 uses
  %.399.i477959.2 = phi i32 [ %i.fgq, %bb.mh ], [ %.399.i477.lcssa.1, %.loopexit683.1 ] ; 4 uses
  %i.ffx = zext nneg i32 %.399.i477959.2 to i64   ; 2 uses
  %i.ffy = getelementptr inbounds nuw [2 x i8], ptr %i.ezl, i64 %i.ffx ; 2 uses
  %i.ffz = load i16, ptr %i.ffy, align 2, !tbaa !116
  %i.fga = ashr i16 %i.ffz, 1                     ; 3 uses
  store i16 %i.fga, ptr %i.ffy, align 2, !tbaa !116
  %.not.i479.2 = icmp eq i16 %i.fga, 0
  br i1 %.not.i479.2, label %bb.mh, label %bb.mg

bb.mg:                                            ; preds = %.lr.ph961.2
  %i.fgb = xor i32 %.5.i478960.2, -1
  %i.fgc = add nsw i32 %.399.i477959.2, %i.fgb
  %i.fgd = sext i32 %i.fgc to i64
  %i.fge = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.fgd
  %i.fgf = sext i16 %i.fga to i64
  %i.fgg = getelementptr inbounds [8 x i8], ptr %i.fge, i64 %i.fgf
  %i.fgh = getelementptr inbounds nuw i8, ptr %i.fgg, i64 4
  %i.fgi = load i32, ptr %i.fgh, align 4, !tbaa !53
  %i.fgj = add nsw i32 %i.ffw, %i.fgi             ; 2 uses
  store i32 %i.fgj, ptr %i.ewk, align 4, !tbaa !51
  %i.fgk = trunc nuw nsw i32 %.399.i477959.2 to i8
  %i.fgl = zext nneg i32 %.5.i478960.2 to i64
  %i.fgm = getelementptr inbounds nuw i8, ptr %i.ezp, i64 %i.fgl
  store i8 %i.fgk, ptr %i.fgm, align 1, !tbaa !48
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %.lr.ph961.2
  %i.fgn = phi i32 [ %i.fgj, %bb.mg ], [ %i.ffw, %.lr.ph961.2 ] ; 2 uses
  %.6.i480.2 = phi i32 [ %.399.i477959.2, %bb.mg ], [ %.5.i478960.2, %.lr.ph961.2 ] ; 2 uses
  %i.fgo = getelementptr inbounds nuw i8, ptr %i.ezp, i64 %i.ffx
  %i.fgp = load i8, ptr %i.fgo, align 1, !tbaa !48 ; 2 uses
  %i.fgq = zext i8 %i.fgp to i32                  ; 2 uses
  %i.fgr = icmp ult i8 %i.fgp, 43
  br i1 %i.fgr, label %.lr.ph961.2, label %.loopexit683.2, !llvm.loop !86

.loopexit683.2:                                   ; preds = %bb.mh, %.loopexit683.1
  %i.fgs = phi i32 [ 1, %.loopexit683.1 ], [ %i.fgn, %bb.mh ]
  %.399.i477.lcssa.2 = phi i32 [ %.399.i477.lcssa.1, %.loopexit683.1 ], [ %i.fgq, %bb.mh ] ; 3 uses
  %.5.i478.lcssa.2 = phi i32 [ %.5.i478.lcssa.1, %.loopexit683.1 ], [ %.6.i480.2, %bb.mh ] ; 3 uses
  store i32 %.5.i478.lcssa.2, ptr %i.exs, align 4, !tbaa !51
  store i32 1, ptr %i.ext, align 4, !tbaa !51
  %i.fgt = icmp samesign ult i32 %.399.i477.lcssa.2, 64
  br i1 %i.fgt, label %.lr.ph961.3, label %.loopexit683.3

.lr.ph961.3:                                      ; preds = %.loopexit683.2, %bb.mj
  %i.fgu = phi i32 [ %i.fhl, %bb.mj ], [ 1, %.loopexit683.2 ] ; 2 uses
  %.5.i478960.3 = phi i32 [ %.6.i480.3, %bb.mj ], [ %.5.i478.lcssa.2, %.loopexit683.2 ] ; 3 uses
  %.399.i477959.3 = phi i32 [ %i.fho, %bb.mj ], [ %.399.i477.lcssa.2, %.loopexit683.2 ] ; 4 uses
  %i.fgv = zext nneg i32 %.399.i477959.3 to i64   ; 2 uses
  %i.fgw = getelementptr inbounds nuw [2 x i8], ptr %i.ezl, i64 %i.fgv ; 2 uses
  %i.fgx = load i16, ptr %i.fgw, align 2, !tbaa !116
  %i.fgy = ashr i16 %i.fgx, 1                     ; 3 uses
  store i16 %i.fgy, ptr %i.fgw, align 2, !tbaa !116
  %.not.i479.3 = icmp eq i16 %i.fgy, 0
  br i1 %.not.i479.3, label %bb.mj, label %bb.mi

bb.mi:                                            ; preds = %.lr.ph961.3
  %i.fgz = xor i32 %.5.i478960.3, -1
  %i.fha = add nsw i32 %.399.i477959.3, %i.fgz
  %i.fhb = sext i32 %i.fha to i64
  %i.fhc = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.fhb
  %i.fhd = sext i16 %i.fgy to i64
  %i.fhe = getelementptr inbounds [8 x i8], ptr %i.fhc, i64 %i.fhd
  %i.fhf = getelementptr inbounds nuw i8, ptr %i.fhe, i64 4
  %i.fhg = load i32, ptr %i.fhf, align 4, !tbaa !53
  %i.fhh = add nsw i32 %i.fgu, %i.fhg             ; 2 uses
  store i32 %i.fhh, ptr %i.ext, align 4, !tbaa !51
end_hunk_7
begin_hunk_8_@dv_encode_video_segment:bb.a
  br label %.lr.ph971.1

.lr.ph971.1:                                      ; preds = %bb.my, %.lr.ph971.preheader.1
  %indvars.iv1552.1 = phi i64 [ 6, %.lr.ph971.preheader.1 ], [ %indvars.iv.next1553.1, %bb.my ] ; 7 uses
  %.1.i503970.1 = phi i32 [ %.3.i505.4, %.lr.ph971.preheader.1 ], [ %.3.i505.1, %bb.my ] ; 4 uses
  %.190.i502969.1 = phi i32 [ %.493.i504.4, %.lr.ph971.preheader.1 ], [ %.493.i504.1, %bb.my ] ; 3 uses
  %i.fmr = getelementptr inbounds nuw i8, ptr %i.fqv, i64 %indvars.iv1552.1
  %i.fms = load i8, ptr %i.fmr, align 1, !tbaa !48
  %i.fmt = zext i8 %i.fms to i64
  %i.fmu = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.fmt
  %i.fmv = load i16, ptr %i.fmu, align 2, !tbaa !116
  %i.fmw = sext i16 %i.fmv to i32                 ; 3 uses
  %i.fmx = add i32 %i.fqx, %i.fmw
  %i.fmy = icmp ugt i32 %i.fmx, %i.fqy
  br i1 %i.fmy, label %bb.mw, label %bb.my

bb.mw:                                            ; preds = %.lr.ph971.1
  %i.fmz = lshr i32 %i.fmw, 31
  %i.fna = trunc nuw nsw i32 %i.fmz to i8
  %i.fnb = getelementptr inbounds nuw i8, ptr %i.frd, i64 %indvars.iv1552.1
  store i8 %i.fna, ptr %i.fnb, align 1, !tbaa !48
  %i.fnc = call i32 @llvm.abs.i32(i32 %i.fmw, i1 true)
  %i.fnd = getelementptr inbounds nuw [4 x i8], ptr %i.fqw, i64 %indvars.iv1552.1
  %i.fne = load i32, ptr %i.fnd, align 4, !tbaa !51
  %i.fnf = mul nsw i32 %i.fne, %i.fnc
  %i.fng = add nsw i32 %i.fnf, 2097152
  %i.fnh = ashr i32 %i.fng, 22                    ; 4 uses
  %.not102.i506.1 = icmp eq i32 %i.fnh, 0
  br i1 %.not102.i506.1, label %bb.my, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.fni = trunc nsw i32 %i.fnh to i16
  %i.fnj = getelementptr inbounds nuw [2 x i8], ptr %i.fra, i64 %indvars.iv1552.1
  store i16 %i.fni, ptr %i.fnj, align 2, !tbaa !116
  %spec.select.i507.1 = call i32 @llvm.smax.i32(i32 %i.fnh, i32 %.190.i502969.1)
  %i.fnk = xor i32 %.1.i503970.1, -1
  %i.fnl = trunc nsw i64 %indvars.iv1552.1 to i32 ; 2 uses
  %i.fnm = add i32 %i.fnl, %i.fnk
  %i.fnn = sext i32 %i.fnm to i64
  %i.fno = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.fnn
  %i.fnp = sext i32 %i.fnh to i64
  %i.fnq = getelementptr inbounds [8 x i8], ptr %i.fno, i64 %i.fnp
  %i.fnr = getelementptr inbounds nuw i8, ptr %i.fnq, i64 4
  %i.fns = load i32, ptr %i.fnr, align 4, !tbaa !53
  %i.fnt = load i32, ptr %i.fmq, align 4, !tbaa !51
  %i.fnu = add nsw i32 %i.fnt, %i.fns
  store i32 %i.fnu, ptr %i.fmq, align 4, !tbaa !51
  %i.fnv = trunc i64 %indvars.iv1552.1 to i8
  %i.fnw = sext i32 %.1.i503970.1 to i64
  %i.fnx = getelementptr inbounds i8, ptr %i.fre, i64 %i.fnw
  store i8 %i.fnv, ptr %i.fnx, align 1, !tbaa !48
  br label %bb.my

bb.my:                                            ; preds = %bb.mx, %bb.mw, %.lr.ph971.1
  %.493.i504.1 = phi i32 [ %.190.i502969.1, %bb.mw ], [ %spec.select.i507.1, %bb.mx ], [ %.190.i502969.1, %.lr.ph971.1 ] ; 2 uses
  %.3.i505.1 = phi i32 [ %.1.i503970.1, %bb.mw ], [ %i.fnl, %bb.mx ], [ %.1.i503970.1, %.lr.ph971.1 ] ; 3 uses
  %indvars.iv.next1553.1 = add nuw nsw i64 %indvars.iv1552.1, 1 ; 2 uses
  %exitcond.11559.not = icmp eq i64 %indvars.iv.next1553.1, 21
  br i1 %exitcond.11559.not, label %.lr.ph971.preheader.2, label %.lr.ph971.1, !llvm.loop !84

.lr.ph971.preheader.2:                            ; preds = %bb.my
  %i.fny = getelementptr inbounds nuw i8, ptr %.1195989, i64 500 ; 2 uses
  store i32 %.3.i505.1, ptr %i.fny, align 4, !tbaa !51
  %i.fnz = getelementptr inbounds nuw i8, ptr %.1195989, i64 484 ; 5 uses
  store i32 1, ptr %i.fnz, align 4, !tbaa !51
  br label %.lr.ph971.2

.lr.ph971.2:                                      ; preds = %bb.nb, %.lr.ph971.preheader.2
  %indvars.iv1552.2 = phi i64 [ 21, %.lr.ph971.preheader.2 ], [ %indvars.iv.next1553.2, %bb.nb ] ; 7 uses
  %.1.i503970.2 = phi i32 [ %.3.i505.1, %.lr.ph971.preheader.2 ], [ %.3.i505.2, %bb.nb ] ; 4 uses
  %.190.i502969.2 = phi i32 [ %.493.i504.1, %.lr.ph971.preheader.2 ], [ %.493.i504.2, %bb.nb ] ; 3 uses
  %i.foa = getelementptr inbounds nuw i8, ptr %i.fqv, i64 %indvars.iv1552.2
  %i.fob = load i8, ptr %i.foa, align 1, !tbaa !48
  %i.foc = zext i8 %i.fob to i64
  %i.fod = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.foc
  %i.foe = load i16, ptr %i.fod, align 2, !tbaa !116
  %i.fof = sext i16 %i.foe to i32                 ; 3 uses
  %i.fog = add i32 %i.fqx, %i.fof
  %i.foh = icmp ugt i32 %i.fog, %i.fqy
  br i1 %i.foh, label %bb.mz, label %bb.nb

bb.mz:                                            ; preds = %.lr.ph971.2
  %i.foi = lshr i32 %i.fof, 31
  %i.foj = trunc nuw nsw i32 %i.foi to i8
  %i.fok = getelementptr inbounds nuw i8, ptr %i.frd, i64 %indvars.iv1552.2
  store i8 %i.foj, ptr %i.fok, align 1, !tbaa !48
  %i.fol = call i32 @llvm.abs.i32(i32 %i.fof, i1 true)
  %i.fom = getelementptr inbounds nuw [4 x i8], ptr %i.fqw, i64 %indvars.iv1552.2
  %i.fon = load i32, ptr %i.fom, align 4, !tbaa !51
  %i.foo = mul nsw i32 %i.fon, %i.fol
  %i.fop = add nsw i32 %i.foo, 2097152
  %i.foq = ashr i32 %i.fop, 22                    ; 4 uses
  %.not102.i506.2 = icmp eq i32 %i.foq, 0
  br i1 %.not102.i506.2, label %bb.nb, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.for = trunc nsw i32 %i.foq to i16
  %i.fos = getelementptr inbounds nuw [2 x i8], ptr %i.fra, i64 %indvars.iv1552.2
  store i16 %i.for, ptr %i.fos, align 2, !tbaa !116
  %spec.select.i507.2 = call i32 @llvm.smax.i32(i32 %i.foq, i32 %.190.i502969.2)
  %i.fot = xor i32 %.1.i503970.2, -1
  %i.fou = trunc nsw i64 %indvars.iv1552.2 to i32 ; 2 uses
  %i.fov = add i32 %i.fou, %i.fot
  %i.fow = sext i32 %i.fov to i64
  %i.fox = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.fow
  %i.foy = sext i32 %i.foq to i64
  %i.foz = getelementptr inbounds [8 x i8], ptr %i.fox, i64 %i.foy
  %i.fpa = getelementptr inbounds nuw i8, ptr %i.foz, i64 4
  %i.fpb = load i32, ptr %i.fpa, align 4, !tbaa !53
  %i.fpc = load i32, ptr %i.fnz, align 4, !tbaa !51
  %i.fpd = add nsw i32 %i.fpc, %i.fpb
  store i32 %i.fpd, ptr %i.fnz, align 4, !tbaa !51
  %i.fpe = trunc i64 %indvars.iv1552.2 to i8
  %i.fpf = sext i32 %.1.i503970.2 to i64
  %i.fpg = getelementptr inbounds i8, ptr %i.fre, i64 %i.fpf
  store i8 %i.fpe, ptr %i.fpg, align 1, !tbaa !48
  br label %bb.nb

bb.nb:                                            ; preds = %bb.na, %bb.mz, %.lr.ph971.2
  %.493.i504.2 = phi i32 [ %.190.i502969.2, %bb.mz ], [ %spec.select.i507.2, %bb.na ], [ %.190.i502969.2, %.lr.ph971.2 ] ; 2 uses
  %.3.i505.2 = phi i32 [ %.1.i503970.2, %bb.mz ], [ %i.fou, %bb.na ], [ %.1.i503970.2, %.lr.ph971.2 ] ; 3 uses
  %indvars.iv.next1553.2 = add nuw nsw i64 %indvars.iv1552.2, 1 ; 2 uses
  %exitcond.21560.not = icmp eq i64 %indvars.iv.next1553.2, 43
  br i1 %exitcond.21560.not, label %.lr.ph971.preheader.3, label %.lr.ph971.2, !llvm.loop !84

.lr.ph971.preheader.3:                            ; preds = %bb.nb
  %i.fph = getelementptr inbounds nuw i8, ptr %.1195989, i64 504 ; 2 uses
  store i32 %.3.i505.2, ptr %i.fph, align 4, !tbaa !51
  %i.fpi = getelementptr inbounds nuw i8, ptr %.1195989, i64 488 ; 5 uses
  store i32 1, ptr %i.fpi, align 4, !tbaa !51
  br label %.lr.ph971.3

.lr.ph971.3:                                      ; preds = %bb.ne, %.lr.ph971.preheader.3
  %indvars.iv1552.3 = phi i64 [ 43, %.lr.ph971.preheader.3 ], [ %indvars.iv.next1553.3, %bb.ne ] ; 7 uses
  %.1.i503970.3 = phi i32 [ %.3.i505.2, %.lr.ph971.preheader.3 ], [ %.3.i505.3, %bb.ne ] ; 4 uses
  %.190.i502969.3 = phi i32 [ %.493.i504.2, %.lr.ph971.preheader.3 ], [ %.493.i504.3, %bb.ne ] ; 3 uses
  %i.fpj = getelementptr inbounds nuw i8, ptr %i.fqv, i64 %indvars.iv1552.3
  %i.fpk = load i8, ptr %i.fpj, align 1, !tbaa !48
  %i.fpl = zext i8 %i.fpk to i64
  %i.fpm = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.fpl
  %i.fpn = load i16, ptr %i.fpm, align 2, !tbaa !116
  %i.fpo = sext i16 %i.fpn to i32                 ; 3 uses
  %i.fpp = add i32 %i.fqx, %i.fpo
  %i.fpq = icmp ugt i32 %i.fpp, %i.fqy
  br i1 %i.fpq, label %bb.nc, label %bb.ne

bb.nc:                                            ; preds = %.lr.ph971.3
  %i.fpr = lshr i32 %i.fpo, 31
  %i.fps = trunc nuw nsw i32 %i.fpr to i8
  %i.fpt = getelementptr inbounds nuw i8, ptr %i.frd, i64 %indvars.iv1552.3
  store i8 %i.fps, ptr %i.fpt, align 1, !tbaa !48
  %i.fpu = call i32 @llvm.abs.i32(i32 %i.fpo, i1 true)
  %i.fpv = getelementptr inbounds nuw [4 x i8], ptr %i.fqw, i64 %indvars.iv1552.3
  %i.fpw = load i32, ptr %i.fpv, align 4, !tbaa !51
  %i.fpx = mul nsw i32 %i.fpw, %i.fpu
  %i.fpy = add nsw i32 %i.fpx, 2097152
  %i.fpz = ashr i32 %i.fpy, 22                    ; 4 uses
  %.not102.i506.3 = icmp eq i32 %i.fpz, 0
  br i1 %.not102.i506.3, label %bb.ne, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  %i.fqa = trunc nsw i32 %i.fpz to i16
  %i.fqb = getelementptr inbounds nuw [2 x i8], ptr %i.fra, i64 %indvars.iv1552.3
  store i16 %i.fqa, ptr %i.fqb, align 2, !tbaa !116
  %spec.select.i507.3 = call i32 @llvm.smax.i32(i32 %i.fpz, i32 %.190.i502969.3)
  %i.fqc = xor i32 %.1.i503970.3, -1
  %i.fqd = trunc nsw i64 %indvars.iv1552.3 to i32 ; 2 uses
  %i.fqe = add i32 %i.fqd, %i.fqc
  %i.fqf = sext i32 %i.fqe to i64
  %i.fqg = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.fqf
  %i.fqh = sext i32 %i.fpz to i64
  %i.fqi = getelementptr inbounds [8 x i8], ptr %i.fqg, i64 %i.fqh
  %i.fqj = getelementptr inbounds nuw i8, ptr %i.fqi, i64 4
  %i.fqk = load i32, ptr %i.fqj, align 4, !tbaa !53
  %i.fql = load i32, ptr %i.fpi, align 4, !tbaa !51
  %i.fqm = add nsw i32 %i.fql, %i.fqk
  store i32 %i.fqm, ptr %i.fpi, align 4, !tbaa !51
  %i.fqn = trunc i64 %indvars.iv1552.3 to i8
  %i.fqo = sext i32 %.1.i503970.3 to i64
  %i.fqp = getelementptr inbounds i8, ptr %i.fre, i64 %i.fqo
  store i8 %i.fqn, ptr %i.fqp, align 1, !tbaa !48
  br label %bb.ne

bb.ne:                                            ; preds = %bb.nd, %bb.nc, %.lr.ph971.3
  %.493.i504.3 = phi i32 [ %.190.i502969.3, %bb.nc ], [ %spec.select.i507.3, %bb.nd ], [ %.190.i502969.3, %.lr.ph971.3 ] ; 2 uses
  %.3.i505.3 = phi i32 [ %.1.i503970.3, %bb.nc ], [ %i.fqd, %bb.nd ], [ %.1.i503970.3, %.lr.ph971.3 ] ; 2 uses
  %indvars.iv.next1553.3 = add nuw nsw i64 %indvars.iv1552.3, 1 ; 2 uses
  %exitcond.31561.not = icmp eq i64 %indvars.iv.next1553.3, 64
  br i1 %exitcond.31561.not, label %.loopexit682.3, label %.lr.ph971.3, !llvm.loop !84

.loopexit682.3:                                   ; preds = %bb.ne
  %i.fqq = sext i32 %.3.i505.3 to i64
  %i.fqr = getelementptr inbounds i8, ptr %i.fre, i64 %i.fqq
  store i8 64, ptr %i.fqr, align 1, !tbaa !48
  %i.fqs = getelementptr inbounds nuw i8, ptr %.1195989, i64 516 ; 3 uses
  br label %bb.np

.lr.ph971.preheader:                              ; preds = %bb.mt
  %i.fqt = getelementptr inbounds nuw i8, ptr %.1195989, i64 520
  %i.fqu = load i32, ptr %i.fqt, align 4, !tbaa !119
  %.not50.i = icmp eq i32 %i.fqu, 0               ; 5 uses
  %i.fqv = select i1 %.not50.i, ptr @ff_zigzag_direct, ptr @ff_dv_zigzag248_direct ; 8 uses
  %i.fqw = select i1 %.not50.i, ptr @dv_weight_88, ptr @dv_weight_248 ; 3 uses
  %i.fqx = load i32, ptr %i.ad, align 8, !tbaa !125 ; 9 uses
  %i.fqy = shl i32 %i.fqx, 1                      ; 8 uses
  %i.fqz = load i16, ptr %i.o, align 16, !tbaa !116
  %i.fra = getelementptr inbounds nuw i8, ptr %.1195989, i64 524 ; 8 uses
  store i16 %i.fqz, ptr %i.fra, align 4, !tbaa !116
  %i.frb = getelementptr inbounds nuw i8, ptr %.1195989, i64 492 ; 2 uses
  %i.frc = getelementptr inbounds nuw i8, ptr %.1195989, i64 476 ; 11 uses
  %i.frd = getelementptr inbounds nuw i8, ptr %.1195989, i64 716 ; 3 uses
  %i.fre = getelementptr inbounds nuw i8, ptr %.1195989, i64 652 ; 19 uses
  store i32 0, ptr %i.frb, align 4, !tbaa !51
  store i32 1, ptr %i.frc, align 4, !tbaa !51
  %74 = getelementptr inbounds nuw i8, ptr %i.fqv, i64 1
  %75 = load i8, ptr %74, align 1, !tbaa !48
  %i.frf = zext i8 %75 to i64
  %i.frg = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.frf
  %i.frh = load i16, ptr %i.frg, align 2, !tbaa !116
  %i.fri = sext i16 %i.frh to i32                 ; 3 uses
  %i.frj = add i32 %i.fqx, %i.fri
  %i.frk = icmp ugt i32 %i.frj, %i.fqy
  br i1 %i.frk, label %bb.nf, label %.lr.ph971.11565

bb.nf:                                            ; preds = %.lr.ph971.preheader
  %i.frl = lshr i32 %i.fri, 31
  %i.frm = trunc nuw nsw i32 %i.frl to i8
  %i.frn = getelementptr inbounds nuw i8, ptr %.1195989, i64 717
  store i8 %i.frm, ptr %i.frn, align 1, !tbaa !48
  %i.fro = call i32 @llvm.abs.i32(i32 %i.fri, i1 true)
  %i.frp = select i1 %.not50.i, i32 257107, i32 262144
  %i.frq = mul nuw nsw i32 %i.frp, %i.fro
  %i.frr = add nuw nsw i32 %i.frq, 2097152
  %i.frs = lshr i32 %i.frr, 22                    ; 4 uses
  %.not102.i506 = icmp eq i32 %i.frs, 0
  br i1 %.not102.i506, label %.lr.ph971.11565, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %i.frt = trunc nuw nsw i32 %i.frs to i16
  %i.fru = getelementptr inbounds nuw i8, ptr %.1195989, i64 526
  store i16 %i.frt, ptr %i.fru, align 2, !tbaa !116
  %i.frv = zext nneg i32 %i.frs to i64
  %i.frw = getelementptr inbounds nuw [8 x i8], ptr @dv_vlc_map, i64 %i.frv
  %i.frx = getelementptr inbounds nuw i8, ptr %i.frw, i64 4
  %i.fry = load i32, ptr %i.frx, align 4, !tbaa !53
  %i.frz = add nsw i32 %i.fry, 1                  ; 2 uses
  store i32 %i.frz, ptr %i.frc, align 4, !tbaa !51
  store i8 1, ptr %i.fre, align 4, !tbaa !48
  br label %.lr.ph971.11565

.lr.ph971.11565:                                  ; preds = %bb.ng, %bb.nf, %.lr.ph971.preheader
  %i.fsa = phi i32 [ 1, %bb.nf ], [ %i.frz, %bb.ng ], [ 1, %.lr.ph971.preheader ] ; 3 uses
  %.493.i504 = phi i32 [ -1, %bb.nf ], [ %i.frs, %bb.ng ], [ -1, %.lr.ph971.preheader ] ; 3 uses
  %.3.i505 = phi i32 [ 0, %bb.nf ], [ 1, %bb.ng ], [ 0, %.lr.ph971.preheader ] ; 4 uses
  %76 = getelementptr inbounds nuw i8, ptr %i.fqv, i64 2
  %77 = load i8, ptr %76, align 2, !tbaa !48
  %i.fsb = zext i8 %77 to i64
  %i.fsc = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.fsb
  %i.fsd = load i16, ptr %i.fsc, align 2, !tbaa !116
  %i.fse = sext i16 %i.fsd to i32                 ; 3 uses
  %i.fsf = add i32 %i.fqx, %i.fse
  %i.fsg = icmp ugt i32 %i.fsf, %i.fqy
  br i1 %i.fsg, label %bb.nh, label %.lr.ph971.21575

bb.nh:                                            ; preds = %.lr.ph971.11565
  %i.fsh = lshr i32 %i.fse, 31
  %i.fsi = trunc nuw nsw i32 %i.fsh to i8
  %i.fsj = getelementptr inbounds nuw i8, ptr %.1195989, i64 718
  store i8 %i.fsi, ptr %i.fsj, align 2, !tbaa !48
  %i.fsk = call i32 @llvm.abs.i32(i32 %i.fse, i1 true)
  %i.fsl = mul nuw nsw i32 %i.fsk, 257107
  %i.fsm = add nuw nsw i32 %i.fsl, 2097152
  %i.fsn = lshr i32 %i.fsm, 22                    ; 4 uses
  %.not102.i506.11566 = icmp eq i32 %i.fsn, 0
  br i1 %.not102.i506.11566, label %.lr.ph971.21575, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.fso = trunc nuw nsw i32 %i.fsn to i16
  %i.fsp = getelementptr inbounds nuw i8, ptr %.1195989, i64 528
  store i16 %i.fso, ptr %i.fsp, align 4, !tbaa !116
  %spec.select.i507.11567 = call i32 @llvm.smax.i32(i32 %i.fsn, i32 %.493.i504)
  %i.fsq = xor i32 %.3.i505, 1
  %i.fsr = zext nneg i32 %i.fsq to i64
  %i.fss = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.fsr
  %i.fst = zext nneg i32 %i.fsn to i64
  %i.fsu = getelementptr inbounds nuw [8 x i8], ptr %i.fss, i64 %i.fst
  %i.fsv = getelementptr inbounds nuw i8, ptr %i.fsu, i64 4
  %i.fsw = load i32, ptr %i.fsv, align 4, !tbaa !53
  %i.fsx = add nsw i32 %i.fsa, %i.fsw             ; 2 uses
  store i32 %i.fsx, ptr %i.frc, align 4, !tbaa !51
  %i.fsy = zext nneg i32 %.3.i505 to i64
  %i.fsz = getelementptr inbounds nuw i8, ptr %i.fre, i64 %i.fsy
  store i8 2, ptr %i.fsz, align 1, !tbaa !48
  br label %.lr.ph971.21575

.lr.ph971.21575:                                  ; preds = %bb.ni, %bb.nh, %.lr.ph971.11565
  %i.fta = phi i32 [ %i.fsa, %bb.nh ], [ %i.fsx, %bb.ni ], [ %i.fsa, %.lr.ph971.11565 ]
  %.493.i504.11568 = phi i32 [ %.493.i504, %bb.nh ], [ %spec.select.i507.11567, %bb.ni ], [ %.493.i504, %.lr.ph971.11565 ] ; 3 uses
  %.3.i505.11569 = phi i32 [ %.3.i505, %bb.nh ], [ 2, %bb.ni ], [ %.3.i505, %.lr.ph971.11565 ] ; 4 uses
  %78 = getelementptr inbounds nuw i8, ptr %i.fqv, i64 3
  %79 = load i8, ptr %78, align 1, !tbaa !48
  %i.ftb = zext i8 %79 to i64
  %i.ftc = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.ftb
  %i.ftd = load i16, ptr %i.ftc, align 2, !tbaa !116
  %i.fte = sext i16 %i.ftd to i32                 ; 3 uses
  %i.ftf = add i32 %i.fqx, %i.fte
  %i.ftg = icmp ugt i32 %i.ftf, %i.fqy
  br i1 %i.ftg, label %bb.nj, label %.lr.ph971.31585

bb.nj:                                            ; preds = %.lr.ph971.21575
  %i.fth = lshr i32 %i.fte, 31
  %i.fti = trunc nuw nsw i32 %i.fth to i8
  %i.ftj = getelementptr inbounds nuw i8, ptr %.1195989, i64 719
  store i8 %i.fti, ptr %i.ftj, align 1, !tbaa !48
  %i.ftk = call i32 @llvm.abs.i32(i32 %i.fte, i1 true)
  %i.ftl = select i1 %.not50.i, i32 242189, i32 257107
  %i.ftm = mul nuw nsw i32 %i.ftl, %i.ftk
  %i.ftn = add nuw nsw i32 %i.ftm, 2097152
  %i.fto = lshr i32 %i.ftn, 22                    ; 4 uses
  %.not102.i506.21576 = icmp eq i32 %i.fto, 0
  br i1 %.not102.i506.21576, label %.lr.ph971.31585, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.ftp = trunc nuw nsw i32 %i.fto to i16
  %i.ftq = getelementptr inbounds nuw i8, ptr %.1195989, i64 530
  store i16 %i.ftp, ptr %i.ftq, align 2, !tbaa !116
  %spec.select.i507.21577 = call i32 @llvm.smax.i32(i32 %i.fto, i32 %.493.i504.11568)
  %i.ftr = sub nuw nsw i32 2, %.3.i505.11569
  %i.fts = zext nneg i32 %i.ftr to i64
  %i.ftt = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.fts
  %i.ftu = zext nneg i32 %i.fto to i64
  %i.ftv = getelementptr inbounds nuw [8 x i8], ptr %i.ftt, i64 %i.ftu
  %i.ftw = getelementptr inbounds nuw i8, ptr %i.ftv, i64 4
  %i.ftx = load i32, ptr %i.ftw, align 4, !tbaa !53
  %i.fty = add nsw i32 %i.fta, %i.ftx
  store i32 %i.fty, ptr %i.frc, align 4, !tbaa !51
  %i.ftz = zext nneg i32 %.3.i505.11569 to i64
  %i.fua = getelementptr inbounds nuw i8, ptr %i.fre, i64 %i.ftz
  store i8 3, ptr %i.fua, align 1, !tbaa !48
  br label %.lr.ph971.31585

.lr.ph971.31585:                                  ; preds = %bb.nk, %bb.nj, %.lr.ph971.21575
  %.493.i504.21578 = phi i32 [ %.493.i504.11568, %bb.nj ], [ %spec.select.i507.21577, %bb.nk ], [ %.493.i504.11568, %.lr.ph971.21575 ] ; 3 uses
  %.3.i505.21579 = phi i32 [ %.3.i505.11569, %bb.nj ], [ 3, %bb.nk ], [ %.3.i505.11569, %.lr.ph971.21575 ] ; 4 uses
  %80 = getelementptr inbounds nuw i8, ptr %i.fqv, i64 4
  %81 = load i8, ptr %80, align 4, !tbaa !48
  %i.fub = zext i8 %81 to i64
  %i.fuc = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.fub
  %i.fud = load i16, ptr %i.fuc, align 2, !tbaa !116
  %i.fue = sext i16 %i.fud to i32                 ; 3 uses
  %i.fuf = add i32 %i.fqx, %i.fue
  %i.fug = icmp ugt i32 %i.fuf, %i.fqy
  br i1 %i.fug, label %bb.nl, label %.lr.ph971.4

bb.nl:                                            ; preds = %.lr.ph971.31585
  %i.fuh = lshr i32 %i.fue, 31
  %i.fui = trunc nuw nsw i32 %i.fuh to i8
  %i.fuj = getelementptr inbounds nuw i8, ptr %.1195989, i64 720
  store i8 %i.fui, ptr %i.fuj, align 4, !tbaa !48
  %i.fuk = call i32 @llvm.abs.i32(i32 %i.fue, i1 true)
  %i.ful = select i1 %.not50.i, i32 252167, i32 242189
  %i.fum = mul nuw nsw i32 %i.ful, %i.fuk
  %i.fun = add nuw nsw i32 %i.fum, 2097152
  %i.fuo = lshr i32 %i.fun, 22                    ; 4 uses
  %.not102.i506.31586 = icmp eq i32 %i.fuo, 0
  br i1 %.not102.i506.31586, label %.lr.ph971.4, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.fup = trunc nuw nsw i32 %i.fuo to i16
  %i.fuq = getelementptr inbounds nuw i8, ptr %.1195989, i64 532
  store i16 %i.fup, ptr %i.fuq, align 4, !tbaa !116
  %spec.select.i507.31587 = call i32 @llvm.smax.i32(i32 %i.fuo, i32 %.493.i504.21578)
  %i.fur = sub nuw nsw i32 3, %.3.i505.21579
  %i.fus = zext nneg i32 %i.fur to i64
  %i.fut = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.fus
  %i.fuu = zext nneg i32 %i.fuo to i64
  %i.fuv = getelementptr inbounds nuw [8 x i8], ptr %i.fut, i64 %i.fuu
  %i.fuw = getelementptr inbounds nuw i8, ptr %i.fuv, i64 4
  %i.fux = load i32, ptr %i.fuw, align 4, !tbaa !53
  %i.fuy = load i32, ptr %i.frc, align 4, !tbaa !51
  %i.fuz = add nsw i32 %i.fuy, %i.fux
  store i32 %i.fuz, ptr %i.frc, align 4, !tbaa !51
  %i.fva = zext nneg i32 %.3.i505.21579 to i64
  %i.fvb = getelementptr inbounds nuw i8, ptr %i.fre, i64 %i.fva
  store i8 4, ptr %i.fvb, align 1, !tbaa !48
  br label %.lr.ph971.4

.lr.ph971.4:                                      ; preds = %bb.nm, %bb.nl, %.lr.ph971.31585
  %.493.i504.31588 = phi i32 [ %.493.i504.21578, %bb.nl ], [ %spec.select.i507.31587, %bb.nm ], [ %.493.i504.21578, %.lr.ph971.31585 ] ; 3 uses
  %.3.i505.31589 = phi i32 [ %.3.i505.21579, %bb.nl ], [ 4, %bb.nm ], [ %.3.i505.21579, %.lr.ph971.31585 ] ; 4 uses
  %82 = getelementptr inbounds nuw i8, ptr %i.fqv, i64 5
  %83 = load i8, ptr %82, align 1, !tbaa !48
  %i.fvc = zext i8 %83 to i64
  %i.fvd = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.fvc
  %i.fve = load i16, ptr %i.fvd, align 2, !tbaa !116
  %i.fvf = sext i16 %i.fve to i32                 ; 3 uses
  %i.fvg = add i32 %i.fqx, %i.fvf
  %i.fvh = icmp ugt i32 %i.fvg, %i.fqy
  br i1 %i.fvh, label %bb.nn, label %.lr.ph971.preheader.1

bb.nn:                                            ; preds = %.lr.ph971.4
  %i.fvi = lshr i32 %i.fvf, 31
  %i.fvj = trunc nuw nsw i32 %i.fvi to i8
  %i.fvk = getelementptr inbounds nuw i8, ptr %.1195989, i64 721
  store i8 %i.fvj, ptr %i.fvk, align 1, !tbaa !48
  %i.fvl = call i32 @llvm.abs.i32(i32 %i.fvf, i1 true)
  %i.fvm = mul nuw nsw i32 %i.fvl, 242189
  %i.fvn = add nuw nsw i32 %i.fvm, 2097152
  %i.fvo = lshr i32 %i.fvn, 22                    ; 4 uses
  %.not102.i506.4 = icmp eq i32 %i.fvo, 0
  br i1 %.not102.i506.4, label %.lr.ph971.preheader.1, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.fvp = trunc nuw nsw i32 %i.fvo to i16
  %i.fvq = getelementptr inbounds nuw i8, ptr %.1195989, i64 534
  store i16 %i.fvp, ptr %i.fvq, align 2, !tbaa !116
  %spec.select.i507.4 = call i32 @llvm.smax.i32(i32 %i.fvo, i32 %.493.i504.31588)
  %i.fvr = sub nuw nsw i32 4, %.3.i505.31589
  %i.fvs = zext nneg i32 %i.fvr to i64
  %i.fvt = getelementptr inbounds nuw [4096 x i8], ptr @dv_vlc_map, i64 %i.fvs
  %i.fvu = zext nneg i32 %i.fvo to i64
  %i.fvv = getelementptr inbounds nuw [8 x i8], ptr %i.fvt, i64 %i.fvu
  %i.fvw = getelementptr inbounds nuw i8, ptr %i.fvv, i64 4
  %i.fvx = load i32, ptr %i.fvw, align 4, !tbaa !53
  %i.fvy = load i32, ptr %i.frc, align 4, !tbaa !51
  %i.fvz = add nsw i32 %i.fvy, %i.fvx
  store i32 %i.fvz, ptr %i.frc, align 4, !tbaa !51
  %i.fwa = zext nneg i32 %.3.i505.31589 to i64
  %i.fwb = getelementptr inbounds nuw i8, ptr %i.fre, i64 %i.fwa
  store i8 5, ptr %i.fwb, align 1, !tbaa !48
  br label %.lr.ph971.preheader.1

bb.np:                                            ; preds = %bb.np, %.loopexit682.3
  %indvars.iv1592 = phi i64 [ %indvars.iv.next1593, %bb.np ], [ 0, %.loopexit682.3 ] ; 4 uses
  %i.fwc = trunc nuw nsw i64 %indvars.iv1592 to i32 ; 2 uses
  store i32 %i.fwc, ptr %i.fqs, align 4, !tbaa !124
  %i.fwd = getelementptr inbounds nuw [4 x i8], ptr @dv_set_class_number_sd.classes, i64 %indvars.iv1592
  %i.fwe = load i32, ptr %i.fwd, align 4, !tbaa !51
  %i.fwf = icmp sgt i32 %.493.i504.3, %i.fwe
  %indvars.iv.next1593 = add nuw nsw i64 %indvars.iv1592, 1
  br i1 %i.fwf, label %bb.np, label %bb.nq, !llvm.loop !85

bb.nq:                                            ; preds = %bb.np
  %i.fwg = add nuw nsw i32 %i.fwc, 1
  store i32 %i.fwg, ptr %i.fqs, align 4, !tbaa !124
  %i.fwh = icmp samesign ugt i64 %indvars.iv1592, 1
  br i1 %i.fwh, label %bb.nr, label %.dv_init_enc_block.exit_crit_edge

.dv_init_enc_block.exit_crit_edge:                ; preds = %bb.nq
  %.pre1700 = load i32, ptr %i.frc, align 4, !tbaa !51
  %.phi.trans.insert1701 = getelementptr inbounds nuw i8, ptr %.1195989, i64 480
  %.pre1702 = load i32, ptr %.phi.trans.insert1701, align 4, !tbaa !51
  %.phi.trans.insert1703 = getelementptr inbounds nuw i8, ptr %.1195989, i64 484
  %.pre1704 = load i32, ptr %.phi.trans.insert1703, align 4, !tbaa !51
  %.phi.trans.insert1705 = getelementptr inbounds nuw i8, ptr %.1195989, i64 488
  %.pre1706 = load i32, ptr %.phi.trans.insert1705, align 4, !tbaa !51
  br label %dv_init_enc_block.exit

bb.nr:                                            ; preds = %bb.nq
  store i32 3, ptr %i.fqs, align 4, !tbaa !124
  %i.fwi = load i8, ptr %i.fre, align 4, !tbaa !48 ; 2 uses
  %i.fwj = zext i8 %i.fwi to i32                  ; 2 uses
  store i32 0, ptr %i.frb, align 4, !tbaa !51
  store i32 1, ptr %i.frc, align 4, !tbaa !51
  %i.fwk = icmp ult i8 %i.fwi, 6
  br i1 %i.fwk, label %.lr.ph981, label %.loopexit681

.loopexit681:                                     ; preds = %bb.nz, %bb.nr
  %i.fwl = phi i32 [ 1, %bb.nr ], [ %i.gaa, %bb.nz ]
  %.399.i497.lcssa = phi i32 [ %i.fwj, %bb.nr ], [ %i.gad, %bb.nz ] ; 3 uses
  %.5.i498.lcssa = phi i32 [ 0, %bb.nr ], [ %.6.i500, %bb.nz ] ; 3 uses
  store i32 %.5.i498.lcssa, ptr %i.fmp, align 4, !tbaa !51
  store i32 1, ptr %i.fmq, align 4, !tbaa !51
  %i.fwm = icmp samesign ult i32 %.399.i497.lcssa, 21
  br i1 %i.fwm, label %.lr.ph981.1, label %.loopexit681.1

.lr.ph981.1:                                      ; preds = %.loopexit681, %bb.nt
  %i.fwn = phi i32 [ %i.fxe, %bb.nt ], [ 1, %.loopexit681 ] ; 2 uses
  %.5.i498980.1 = phi i32 [ %.6.i500.1, %bb.nt ], [ %.5.i498.lcssa, %.loopexit681 ] ; 3 uses
  %.399.i497979.1 = phi i32 [ %i.fxh, %bb.nt ], [ %.399.i497.lcssa, %.loopexit681 ] ; 4 uses
  %i.fwo = zext nneg i32 %.399.i497979.1 to i64   ; 2 uses
  %i.fwp = getelementptr inbounds nuw [2 x i8], ptr %i.fra, i64 %i.fwo ; 2 uses
  %i.fwq = load i16, ptr %i.fwp, align 2, !tbaa !116
  %i.fwr = ashr i16 %i.fwq, 1                     ; 3 uses
  store i16 %i.fwr, ptr %i.fwp, align 2, !tbaa !116
  %.not.i499.1 = icmp eq i16 %i.fwr, 0
  br i1 %.not.i499.1, label %bb.nt, label %bb.ns

bb.ns:                                            ; preds = %.lr.ph981.1
  %i.fws = xor i32 %.5.i498980.1, -1
  %i.fwt = add nsw i32 %.399.i497979.1, %i.fws
  %i.fwu = sext i32 %i.fwt to i64
  %i.fwv = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.fwu
  %i.fww = sext i16 %i.fwr to i64
  %i.fwx = getelementptr inbounds [8 x i8], ptr %i.fwv, i64 %i.fww
  %i.fwy = getelementptr inbounds nuw i8, ptr %i.fwx, i64 4
  %i.fwz = load i32, ptr %i.fwy, align 4, !tbaa !53
  %i.fxa = add nsw i32 %i.fwn, %i.fwz             ; 2 uses
  store i32 %i.fxa, ptr %i.fmq, align 4, !tbaa !51
  %i.fxb = trunc nuw nsw i32 %.399.i497979.1 to i8
  %i.fxc = zext nneg i32 %.5.i498980.1 to i64
  %i.fxd = getelementptr inbounds nuw i8, ptr %i.fre, i64 %i.fxc
  store i8 %i.fxb, ptr %i.fxd, align 1, !tbaa !48
  br label %bb.nt

bb.nt:                                            ; preds = %bb.ns, %.lr.ph981.1
  %i.fxe = phi i32 [ %i.fxa, %bb.ns ], [ %i.fwn, %.lr.ph981.1 ] ; 2 uses
  %.6.i500.1 = phi i32 [ %.399.i497979.1, %bb.ns ], [ %.5.i498980.1, %.lr.ph981.1 ] ; 2 uses
  %i.fxf = getelementptr inbounds nuw i8, ptr %i.fre, i64 %i.fwo
  %i.fxg = load i8, ptr %i.fxf, align 1, !tbaa !48 ; 2 uses
  %i.fxh = zext i8 %i.fxg to i32                  ; 2 uses
  %i.fxi = icmp ult i8 %i.fxg, 21
  br i1 %i.fxi, label %.lr.ph981.1, label %.loopexit681.1, !llvm.loop !86

.loopexit681.1:                                   ; preds = %bb.nt, %.loopexit681
  %i.fxj = phi i32 [ 1, %.loopexit681 ], [ %i.fxe, %bb.nt ]
  %.399.i497.lcssa.1 = phi i32 [ %.399.i497.lcssa, %.loopexit681 ], [ %i.fxh, %bb.nt ] ; 3 uses
  %.5.i498.lcssa.1 = phi i32 [ %.5.i498.lcssa, %.loopexit681 ], [ %.6.i500.1, %bb.nt ] ; 3 uses
  store i32 %.5.i498.lcssa.1, ptr %i.fny, align 4, !tbaa !51
  store i32 1, ptr %i.fnz, align 4, !tbaa !51
  %i.fxk = icmp samesign ult i32 %.399.i497.lcssa.1, 43
  br i1 %i.fxk, label %.lr.ph981.2, label %.loopexit681.2

.lr.ph981.2:                                      ; preds = %.loopexit681.1, %bb.nv
  %i.fxl = phi i32 [ %i.fyc, %bb.nv ], [ 1, %.loopexit681.1 ] ; 2 uses
  %.5.i498980.2 = phi i32 [ %.6.i500.2, %bb.nv ], [ %.5.i498.lcssa.1, %.loopexit681.1 ] ; 3 uses
  %.399.i497979.2 = phi i32 [ %i.fyf, %bb.nv ], [ %.399.i497.lcssa.1, %.loopexit681.1 ] ; 4 uses
  %i.fxm = zext nneg i32 %.399.i497979.2 to i64   ; 2 uses
  %i.fxn = getelementptr inbounds nuw [2 x i8], ptr %i.fra, i64 %i.fxm ; 2 uses
  %i.fxo = load i16, ptr %i.fxn, align 2, !tbaa !116
  %i.fxp = ashr i16 %i.fxo, 1                     ; 3 uses
  store i16 %i.fxp, ptr %i.fxn, align 2, !tbaa !116
  %.not.i499.2 = icmp eq i16 %i.fxp, 0
  br i1 %.not.i499.2, label %bb.nv, label %bb.nu

bb.nu:                                            ; preds = %.lr.ph981.2
  %i.fxq = xor i32 %.5.i498980.2, -1
  %i.fxr = add nsw i32 %.399.i497979.2, %i.fxq
  %i.fxs = sext i32 %i.fxr to i64
  %i.fxt = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.fxs
  %i.fxu = sext i16 %i.fxp to i64
  %i.fxv = getelementptr inbounds [8 x i8], ptr %i.fxt, i64 %i.fxu
  %i.fxw = getelementptr inbounds nuw i8, ptr %i.fxv, i64 4
  %i.fxx = load i32, ptr %i.fxw, align 4, !tbaa !53
  %i.fxy = add nsw i32 %i.fxl, %i.fxx             ; 2 uses
  store i32 %i.fxy, ptr %i.fnz, align 4, !tbaa !51
  %i.fxz = trunc nuw nsw i32 %.399.i497979.2 to i8
  %i.fya = zext nneg i32 %.5.i498980.2 to i64
  %i.fyb = getelementptr inbounds nuw i8, ptr %i.fre, i64 %i.fya
  store i8 %i.fxz, ptr %i.fyb, align 1, !tbaa !48
  br label %bb.nv

bb.nv:                                            ; preds = %bb.nu, %.lr.ph981.2
  %i.fyc = phi i32 [ %i.fxy, %bb.nu ], [ %i.fxl, %.lr.ph981.2 ] ; 2 uses
  %.6.i500.2 = phi i32 [ %.399.i497979.2, %bb.nu ], [ %.5.i498980.2, %.lr.ph981.2 ] ; 2 uses
  %i.fyd = getelementptr inbounds nuw i8, ptr %i.fre, i64 %i.fxm
  %i.fye = load i8, ptr %i.fyd, align 1, !tbaa !48 ; 2 uses
  %i.fyf = zext i8 %i.fye to i32                  ; 2 uses
  %i.fyg = icmp ult i8 %i.fye, 43
  br i1 %i.fyg, label %.lr.ph981.2, label %.loopexit681.2, !llvm.loop !86

.loopexit681.2:                                   ; preds = %bb.nv, %.loopexit681.1
  %i.fyh = phi i32 [ 1, %.loopexit681.1 ], [ %i.fyc, %bb.nv ]
  %.399.i497.lcssa.2 = phi i32 [ %.399.i497.lcssa.1, %.loopexit681.1 ], [ %i.fyf, %bb.nv ] ; 3 uses
  %.5.i498.lcssa.2 = phi i32 [ %.5.i498.lcssa.1, %.loopexit681.1 ], [ %.6.i500.2, %bb.nv ] ; 3 uses
  store i32 %.5.i498.lcssa.2, ptr %i.fph, align 4, !tbaa !51
  store i32 1, ptr %i.fpi, align 4, !tbaa !51
  %i.fyi = icmp samesign ult i32 %.399.i497.lcssa.2, 64
  br i1 %i.fyi, label %.lr.ph981.3, label %.loopexit681.3

.lr.ph981.3:                                      ; preds = %.loopexit681.2, %bb.nx
  %i.fyj = phi i32 [ %i.fza, %bb.nx ], [ 1, %.loopexit681.2 ] ; 2 uses
  %.5.i498980.3 = phi i32 [ %.6.i500.3, %bb.nx ], [ %.5.i498.lcssa.2, %.loopexit681.2 ] ; 3 uses
  %.399.i497979.3 = phi i32 [ %i.fzd, %bb.nx ], [ %.399.i497.lcssa.2, %.loopexit681.2 ] ; 4 uses
  %i.fyk = zext nneg i32 %.399.i497979.3 to i64   ; 2 uses
  %i.fyl = getelementptr inbounds nuw [2 x i8], ptr %i.fra, i64 %i.fyk ; 2 uses
  %i.fym = load i16, ptr %i.fyl, align 2, !tbaa !116
  %i.fyn = ashr i16 %i.fym, 1                     ; 3 uses
  store i16 %i.fyn, ptr %i.fyl, align 2, !tbaa !116
  %.not.i499.3 = icmp eq i16 %i.fyn, 0
  br i1 %.not.i499.3, label %bb.nx, label %bb.nw

bb.nw:                                            ; preds = %.lr.ph981.3
  %i.fyo = xor i32 %.5.i498980.3, -1
  %i.fyp = add nsw i32 %.399.i497979.3, %i.fyo
  %i.fyq = sext i32 %i.fyp to i64
  %i.fyr = getelementptr inbounds [4096 x i8], ptr @dv_vlc_map, i64 %i.fyq
  %i.fys = sext i16 %i.fyn to i64
  %i.fyt = getelementptr inbounds [8 x i8], ptr %i.fyr, i64 %i.fys
  %i.fyu = getelementptr inbounds nuw i8, ptr %i.fyt, i64 4
  %i.fyv = load i32, ptr %i.fyu, align 4, !tbaa !53
  %i.fyw = add nsw i32 %i.fyj, %i.fyv             ; 2 uses
  store i32 %i.fyw, ptr %i.fpi, align 4, !tbaa !51
end_hunk_8
