Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vsrc_testsrc?download=true
inline.NumInlined: 37
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 27
begin_hunk_0_@color_config_props:bb.a
bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.d ], [ -22, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @ff_draw_init_from_link(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @ff_draw_color(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_image_check_size(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @config_props(ptr nofree noundef captures(none) initializes((40, 56), (96, 104), (280, 288)) %0) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load <2 x i32>, ptr %i.d, align 8, !tbaa !49
  store <2 x i32> %i.f, ptr %i.e, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !49
  store i64 %i.i, ptr %i.g, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.l = load i64, ptr %i.k, align 4, !tbaa !49
  store i64 %i.l, ptr %i.j, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.o = load i64, ptr %i.n, align 4, !tbaa !49
  store i64 %i.o, ptr %i.m, align 8, !tbaa !49
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare ptr @av_default_item_name(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @color_fill_picture(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36
  tail call void @ff_fill_rectangle(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 0, i32 noundef %i.g, i32 noundef %i.i) #19
  ret void
}

declare void @ff_fill_rectangle(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare i32 @ff_set_common_formats2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ff_draw_supported_pixel_formats(i32 noundef) local_unnamed_addr #2

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #5

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @av_frame_clone(ptr noundef) local_unnamed_addr #2

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @haldclutsrc_config_props(ptr nofree noundef captures(none) initializes((40, 56), (96, 104), (280, 288)) %0) #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 332
  %i.e = load i32, ptr %i.d, align 4, !tbaa !53   ; 3 uses
  %i.f = mul nsw i32 %i.e, %i.e
  %i.g = mul nsw i32 %i.f, %i.e                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.g, ptr %i.h, align 4, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.g, ptr %i.i, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.g, ptr %i.j, align 8, !tbaa !102
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.g, ptr %i.k, align 4, !tbaa !103
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !49
  store i64 %i.n, ptr %i.l, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.q = load i64, ptr %i.p, align 4, !tbaa !49
  store i64 %i.q, ptr %i.o, align 8, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.t = load i64, ptr %i.s, align 4, !tbaa !49
  store i64 %i.t, ptr %i.r, align 8, !tbaa !49
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @haldclutsrc_fill_picture(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 332
  %i.e = load i32, ptr %i.d, align 4, !tbaa !53   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load i32, ptr %i.f, align 8, !tbaa !54   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.i = load i32, ptr %i.h, align 4, !tbaa !55
  %i.j = load ptr, ptr %1, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !49
  %i.m = sext i32 %i.l to i64                     ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !57
  %i.p = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.o) #19 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !59   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !107
  %i.u = load i32, ptr %i.n, align 4, !tbaa !57
  %i.v = tail call i32 @av_pix_fmt_count_planes(i32 noundef %i.u) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.w = icmp eq i32 %i.g, %i.i
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = mul nsw i32 %i.e, %i.e                   ; 5 uses
  %i.y = mul nsw i32 %i.x, %i.e
  %i.z = icmp eq i32 %i.g, %i.y
  br i1 %i.z, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 343) #19
  tail call void @abort() #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.aa = load i32, ptr %i.n, align 4, !tbaa !57
  %i.ab = call i32 @ff_fill_rgba_map(ptr noundef nonnull %i.a, i32 noundef %i.aa) #19 ; 0 uses
  %notmask = shl nsw i32 -1, %i.r
  %i.ac = xor i32 %notmask, -1                    ; 3 uses
  %i.ad = icmp sgt i32 %i.r, 8                    ; 2 uses
  %i.ae = call i32 @av_get_padded_bits_per_pixel(ptr noundef nonnull %i.p) #19
  %i.af = select i1 %i.ad, i32 4, i32 3
  %i.ag = ashr i32 %i.ae, %i.af                   ; 2 uses
  %i.ah = uitofp nsz nneg i32 %i.ac to float
  %i.ai = add nsw i32 %i.x, -1
  %i.aj = sitofp nsz i32 %i.ai to float
  %i.ak = fdiv nsz float %i.ah, %i.aj             ; 9 uses
  %.not331 = icmp eq i32 %i.e, 0
  br i1 %.not331, label %._crit_edge, label %.preheader321.lr.ph

.preheader321.lr.ph:                              ; preds = %bb.d
  %i.al = and i64 %i.t, 16
  %.not = icmp eq i64 %i.al, 0
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 6 uses
  %i.aq = icmp eq i32 %i.v, 4                     ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.as = trunc i32 %i.ac to i16                  ; 6 uses
  %i.at = trunc i32 %i.ac to i8                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.aw = icmp eq i32 %i.ag, 4                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  br label %.preheader321

.preheader321:                                    ; preds = %.preheader321.lr.ph, %bb.z
  %.0330 = phi i32 [ 0, %.preheader321.lr.ph ], [ %spec.select252, %bb.z ]
  %.0242329 = phi i32 [ 0, %.preheader321.lr.ph ], [ %spec.select, %bb.z ]
  %.0246328 = phi i32 [ 0, %.preheader321.lr.ph ], [ %i.kt, %bb.z ] ; 2 uses
  %i.ay = uitofp nsz nneg i32 %.0246328 to float
  %i.az = fmul nsz float %i.ak, %i.ay
  %i.ba = fptosi float %i.az to i32
  %i.bb = call i32 @llvm.smax.i32(i32 %i.ba, i32 0) ; 8 uses
  %i.bc = call i32 @llvm.umin.i32(i32 %i.bb, i32 65535)
  %i.bd = trunc nuw i32 %i.bc to i16
  %i.be = call i32 @llvm.umin.i32(i32 %i.bb, i32 16383)
  %i.bf = trunc nuw nsw i32 %i.be to i16
  %i.bg = call i32 @llvm.umin.i32(i32 %i.bb, i32 4095)
  %i.bh = trunc nuw nsw i32 %i.bg to i16
  %i.bi = call i32 @llvm.umin.i32(i32 %i.bb, i32 1023)
  %i.bj = trunc nuw nsw i32 %i.bi to i16
  %i.bk = call i32 @llvm.umin.i32(i32 %i.bb, i32 511)
  %i.bl = trunc nuw nsw i32 %i.bk to i16
  %i.bm = call i32 @llvm.umin.i32(i32 %i.bb, i32 255)
  %i.bn = trunc nuw i32 %i.bm to i8
  %.0.i323 = call i32 @llvm.umin.i32(i32 %i.bb, i32 255)
  %i.bo = trunc nuw i32 %.0.i323 to i8
  %.0.i261326 = call i32 @llvm.umin.i32(i32 %i.bb, i32 65535)
  %i.bp = trunc nuw i32 %.0.i261326 to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader321, %bb.y
  %.1327 = phi i32 [ %.0330, %.preheader321 ], [ %spec.select252, %bb.y ]
  %.1243326 = phi i32 [ %.0242329, %.preheader321 ], [ %spec.select, %bb.y ]
  %.0247325 = phi i32 [ 0, %.preheader321 ], [ %i.ks, %bb.y ] ; 2 uses
  %i.bq = uitofp nsz nneg i32 %.0247325 to float
  %i.br = fmul nsz float %i.ak, %i.bq
  %i.bs = fptosi float %i.br to i32
  %i.bt = call i32 @llvm.smax.i32(i32 %i.bs, i32 0) ; 8 uses
  %i.bu = call i32 @llvm.umin.i32(i32 %i.bt, i32 65535)
  %i.bv = trunc nuw i32 %i.bu to i16
  %i.bw = call i32 @llvm.umin.i32(i32 %i.bt, i32 16383)
  %i.bx = trunc nuw nsw i32 %i.bw to i16
  %i.by = call i32 @llvm.umin.i32(i32 %i.bt, i32 4095)
  %i.bz = trunc nuw nsw i32 %i.by to i16
  %i.ca = call i32 @llvm.umin.i32(i32 %i.bt, i32 1023)
  %i.cb = trunc nuw nsw i32 %i.ca to i16
  %i.cc = call i32 @llvm.umin.i32(i32 %i.bt, i32 511)
  %i.cd = trunc nuw nsw i32 %i.cc to i16
  %i.ce = call i32 @llvm.umin.i32(i32 %i.bt, i32 255)
  %i.cf = trunc nuw i32 %i.ce to i8
  %.0.i255322 = call i32 @llvm.umin.i32(i32 %i.bt, i32 255)
  %i.cg = trunc nuw i32 %.0.i255322 to i8
  %.0.i264325 = call i32 @llvm.umin.i32(i32 %i.bt, i32 65535)
  %i.ch = trunc nuw i32 %.0.i264325 to i16
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.x
  %.2324 = phi i32 [ %.1327, %.preheader ], [ %spec.select252, %bb.x ] ; 26 uses
  %.2244323 = phi i32 [ %.1243326, %.preheader ], [ %spec.select, %bb.x ] ; 8 uses
  %.0248322 = phi i32 [ 0, %.preheader ], [ %i.kr, %bb.x ] ; 8 uses
  br i1 %.not, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ci = sext i32 %.2324 to i64
  %i.cj = mul nsw i64 %i.ci, %i.m
  %i.ck = getelementptr inbounds i8, ptr %i.j, i64 %i.cj ; 2 uses
  %i.cl = mul nsw i32 %.2244323, %i.ag
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  %i.cn = uitofp nsz nneg i32 %.0248322 to float
  %i.co = fmul nsz float %i.ak, %i.cn
  %i.cp = fptosi float %i.co to i32
  %2 = call i32 @llvm.smax.i32(i32 %i.cp, i32 0)  ; 2 uses
  %i.cq = load i8, ptr %i.a, align 1, !tbaa !61
  %i.cr = zext i8 %i.cq to i64                    ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cs = getelementptr inbounds i8, ptr %i.ck, i64 %i.cm ; 4 uses
  %.0.i258321 = call i32 @llvm.umin.i32(i32 %2, i32 255)
  %i.ct = trunc nuw i32 %.0.i258321 to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cr
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !61
  %i.cv = load i8, ptr %i.au, align 1, !tbaa !61
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cw
  store i8 %i.cg, ptr %i.cx, align 1, !tbaa !61
  %i.cy = load i8, ptr %i.av, align 1, !tbaa !61
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cz
  store i8 %i.bo, ptr %i.da, align 1, !tbaa !61
  br i1 %i.aw, label %bb.h, label %bb.x

bb.h:                                             ; preds = %bb.g
  %i.db = load i8, ptr %i.ax, align 1, !tbaa !61
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dc
  store i8 %i.at, ptr %i.dd, align 1, !tbaa !61
  br label %bb.x

bb.i:                                             ; preds = %bb.f
  %i.de = getelementptr inbounds [2 x i8], ptr %i.ck, i64 %i.cm ; 4 uses
  %.0.i267324 = call i32 @llvm.umin.i32(i32 %2, i32 65535)
  %i.df = trunc nuw i32 %.0.i267324 to i16
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %i.cr
  store i16 %i.df, ptr %i.dg, align 2, !tbaa !63
  %i.dh = load i8, ptr %i.au, align 1, !tbaa !61
  %i.di = zext i8 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %i.di
  store i16 %i.ch, ptr %i.dj, align 2, !tbaa !63
  %i.dk = load i8, ptr %i.av, align 1, !tbaa !61
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %i.dl
  store i16 %i.bp, ptr %i.dm, align 2, !tbaa !63
  br i1 %i.aw, label %bb.j, label %bb.x

bb.j:                                             ; preds = %bb.i
  %i.dn = load i8, ptr %i.ax, align 1, !tbaa !61
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %i.do
  store i16 %i.as, ptr %i.dp, align 2, !tbaa !63
  br label %bb.x

bb.k:                                             ; preds = %bb.e
  switch i32 %i.r, label %bb.x [
    i32 8, label %bb.l
    i32 9, label %bb.n
    i32 10, label %bb.p
    i32 12, label %bb.r
    i32 14, label %bb.t
    i32 16, label %bb.v
  ]

bb.l:                                             ; preds = %bb.k
  %i.dq = load ptr, ptr %i.am, align 8, !tbaa !56
  %i.dr = load i32, ptr %i.an, align 8, !tbaa !49
  %i.ds = mul nsw i32 %i.dr, %.2324
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr %i.dq, i64 %i.dt
  %i.dv = sext i32 %.2244323 to i64               ; 4 uses
  %i.dw = getelementptr inbounds i8, ptr %i.du, i64 %i.dv
  %i.dx = uitofp nsz nneg i32 %.0248322 to float
  %i.dy = fmul nsz float %i.ak, %i.dx
  %i.dz = fptosi float %i.dy to i32
  %i.ea = call i32 @llvm.smax.i32(i32 %i.dz, i32 0)
  %i.eb = call i32 @llvm.umin.i32(i32 %i.ea, i32 255)
  %i.ec = trunc nuw i32 %i.eb to i8
  store i8 %i.ec, ptr %i.dw, align 1, !tbaa !61
  %i.ed = load ptr, ptr %1, align 8, !tbaa !56
  %i.ee = load i32, ptr %i.k, align 8, !tbaa !49
  %i.ef = mul nsw i32 %i.ee, %.2324
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds i8, ptr %i.ed, i64 %i.eg
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 %i.dv
  store i8 %i.cf, ptr %i.ei, align 1, !tbaa !61
  %i.ej = load ptr, ptr %i.ao, align 8, !tbaa !56
  %i.ek = load i32, ptr %i.ap, align 4, !tbaa !49
  %i.el = mul nsw i32 %i.ek, %.2324
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds i8, ptr %i.ej, i64 %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.dv
  store i8 %i.bn, ptr %i.eo, align 1, !tbaa !61
  br i1 %i.aq, label %bb.m, label %bb.x

bb.m:                                             ; preds = %bb.l
  %i.ep = load ptr, ptr %i.ar, align 8, !tbaa !56
  %i.eq = sext i32 %.2324 to i64
  %i.er = mul nsw i64 %i.eq, %i.m
  %i.es = getelementptr inbounds i8, ptr %i.ep, i64 %i.er
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 %i.dv
  store i8 %i.at, ptr %i.et, align 1, !tbaa !61
  br label %bb.x

bb.n:                                             ; preds = %bb.k
  %i.eu = load ptr, ptr %i.am, align 8, !tbaa !56
  %i.ev = load i32, ptr %i.an, align 8, !tbaa !49
  %i.ew = mul nsw i32 %i.ev, %.2324
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr %i.eu, i64 %i.ex
  %i.ez = sext i32 %.2244323 to i64               ; 4 uses
  %i.fa = getelementptr inbounds [2 x i8], ptr %i.ey, i64 %i.ez
  %i.fb = uitofp nsz nneg i32 %.0248322 to float
  %i.fc = fmul nsz float %i.ak, %i.fb
  %i.fd = fptosi float %i.fc to i32
  %i.fe = call i32 @llvm.smax.i32(i32 %i.fd, i32 0)
  %i.ff = call i32 @llvm.umin.i32(i32 %i.fe, i32 511)
  %i.fg = trunc nuw nsw i32 %i.ff to i16
  store i16 %i.fg, ptr %i.fa, align 2, !tbaa !63
  %i.fh = load ptr, ptr %1, align 8, !tbaa !56
  %i.fi = load i32, ptr %i.k, align 8, !tbaa !49
  %i.fj = mul nsw i32 %i.fi, %.2324
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds i8, ptr %i.fh, i64 %i.fk
  %i.fm = getelementptr inbounds [2 x i8], ptr %i.fl, i64 %i.ez
  store i16 %i.cd, ptr %i.fm, align 2, !tbaa !63
  %i.fn = load ptr, ptr %i.ao, align 8, !tbaa !56
  %i.fo = load i32, ptr %i.ap, align 4, !tbaa !49
  %i.fp = mul nsw i32 %i.fo, %.2324
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds i8, ptr %i.fn, i64 %i.fq
  %i.fs = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.ez
  store i16 %i.bl, ptr %i.fs, align 2, !tbaa !63
  br i1 %i.aq, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.ft = load ptr, ptr %i.ar, align 8, !tbaa !56
  %i.fu = sext i32 %.2324 to i64
  %i.fv = mul nsw i64 %i.fu, %i.m
  %i.fw = getelementptr inbounds i8, ptr %i.ft, i64 %i.fv
  %i.fx = getelementptr inbounds [2 x i8], ptr %i.fw, i64 %i.ez
  store i16 %i.as, ptr %i.fx, align 2, !tbaa !63
  br label %bb.x

bb.p:                                             ; preds = %bb.k
  %i.fy = load ptr, ptr %i.am, align 8, !tbaa !56
  %i.fz = load i32, ptr %i.an, align 8, !tbaa !49
  %i.ga = mul nsw i32 %i.fz, %.2324
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds i8, ptr %i.fy, i64 %i.gb
  %i.gd = sext i32 %.2244323 to i64               ; 4 uses
  %i.ge = getelementptr inbounds [2 x i8], ptr %i.gc, i64 %i.gd
  %i.gf = uitofp nsz nneg i32 %.0248322 to float
  %i.gg = fmul nsz float %i.ak, %i.gf
  %i.gh = fptosi float %i.gg to i32
  %i.gi = call i32 @llvm.smax.i32(i32 %i.gh, i32 0)
  %i.gj = call i32 @llvm.umin.i32(i32 %i.gi, i32 1023)
  %i.gk = trunc nuw nsw i32 %i.gj to i16
  store i16 %i.gk, ptr %i.ge, align 2, !tbaa !63
  %i.gl = load ptr, ptr %1, align 8, !tbaa !56
  %i.gm = load i32, ptr %i.k, align 8, !tbaa !49
  %i.gn = mul nsw i32 %i.gm, %.2324
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds i8, ptr %i.gl, i64 %i.go
  %i.gq = getelementptr inbounds [2 x i8], ptr %i.gp, i64 %i.gd
  store i16 %i.cb, ptr %i.gq, align 2, !tbaa !63
  %i.gr = load ptr, ptr %i.ao, align 8, !tbaa !56
  %i.gs = load i32, ptr %i.ap, align 4, !tbaa !49
  %i.gt = mul nsw i32 %i.gs, %.2324
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds i8, ptr %i.gr, i64 %i.gu
  %i.gw = getelementptr inbounds [2 x i8], ptr %i.gv, i64 %i.gd
  store i16 %i.bj, ptr %i.gw, align 2, !tbaa !63
  br i1 %i.aq, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.gx = load ptr, ptr %i.ar, align 8, !tbaa !56
  %i.gy = sext i32 %.2324 to i64
  %i.gz = mul nsw i64 %i.gy, %i.m
  %i.ha = getelementptr inbounds i8, ptr %i.gx, i64 %i.gz
  %i.hb = getelementptr inbounds [2 x i8], ptr %i.ha, i64 %i.gd
  store i16 %i.as, ptr %i.hb, align 2, !tbaa !63
  br label %bb.x

bb.r:                                             ; preds = %bb.k
  %i.hc = load ptr, ptr %i.am, align 8, !tbaa !56
  %i.hd = load i32, ptr %i.an, align 8, !tbaa !49
  %i.he = mul nsw i32 %i.hd, %.2324
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds i8, ptr %i.hc, i64 %i.hf
  %i.hh = sext i32 %.2244323 to i64               ; 4 uses
  %i.hi = getelementptr inbounds [2 x i8], ptr %i.hg, i64 %i.hh
  %i.hj = uitofp nsz nneg i32 %.0248322 to float
  %i.hk = fmul nsz float %i.ak, %i.hj
  %i.hl = fptosi float %i.hk to i32
  %i.hm = call i32 @llvm.smax.i32(i32 %i.hl, i32 0)
  %i.hn = call i32 @llvm.umin.i32(i32 %i.hm, i32 4095)
  %i.ho = trunc nuw nsw i32 %i.hn to i16
  store i16 %i.ho, ptr %i.hi, align 2, !tbaa !63
  %i.hp = load ptr, ptr %1, align 8, !tbaa !56
  %i.hq = load i32, ptr %i.k, align 8, !tbaa !49
  %i.hr = mul nsw i32 %i.hq, %.2324
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds i8, ptr %i.hp, i64 %i.hs
  %i.hu = getelementptr inbounds [2 x i8], ptr %i.ht, i64 %i.hh
  store i16 %i.bz, ptr %i.hu, align 2, !tbaa !63
  %i.hv = load ptr, ptr %i.ao, align 8, !tbaa !56
  %i.hw = load i32, ptr %i.ap, align 4, !tbaa !49
  %i.hx = mul nsw i32 %i.hw, %.2324
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds i8, ptr %i.hv, i64 %i.hy
  %i.ia = getelementptr inbounds [2 x i8], ptr %i.hz, i64 %i.hh
  store i16 %i.bh, ptr %i.ia, align 2, !tbaa !63
  br i1 %i.aq, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.ib = load ptr, ptr %i.ar, align 8, !tbaa !56
  %i.ic = sext i32 %.2324 to i64
  %i.id = mul nsw i64 %i.ic, %i.m
  %i.ie = getelementptr inbounds i8, ptr %i.ib, i64 %i.id
  %i.if = getelementptr inbounds [2 x i8], ptr %i.ie, i64 %i.hh
  store i16 %i.as, ptr %i.if, align 2, !tbaa !63
  br label %bb.x

bb.t:                                             ; preds = %bb.k
  %i.ig = load ptr, ptr %i.am, align 8, !tbaa !56
  %i.ih = load i32, ptr %i.an, align 8, !tbaa !49
  %i.ii = mul nsw i32 %i.ih, %.2324
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds i8, ptr %i.ig, i64 %i.ij
  %i.il = sext i32 %.2244323 to i64               ; 4 uses
  %i.im = getelementptr inbounds [2 x i8], ptr %i.ik, i64 %i.il
  %i.in = uitofp nsz nneg i32 %.0248322 to float
  %i.io = fmul nsz float %i.ak, %i.in
  %i.ip = fptosi float %i.io to i32
  %i.iq = call i32 @llvm.smax.i32(i32 %i.ip, i32 0)
  %i.ir = call i32 @llvm.umin.i32(i32 %i.iq, i32 16383)
  %i.is = trunc nuw nsw i32 %i.ir to i16
  store i16 %i.is, ptr %i.im, align 2, !tbaa !63
  %i.it = load ptr, ptr %1, align 8, !tbaa !56
  %i.iu = load i32, ptr %i.k, align 8, !tbaa !49
  %i.iv = mul nsw i32 %i.iu, %.2324
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds i8, ptr %i.it, i64 %i.iw
  %i.iy = getelementptr inbounds [2 x i8], ptr %i.ix, i64 %i.il
end_hunk_0
