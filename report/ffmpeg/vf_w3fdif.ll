Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_w3fdif?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@config_input:bb.a
  store ptr @filter_complex_low, ptr %i.bd, align 8, !tbaa !67
  store ptr @filter_simple_high, ptr %i.be, align 8, !tbaa !68
  store ptr @filter_complex_high, ptr %i.bf, align 8, !tbaa !69
  store ptr @filter_scale, ptr %i.bg, align 8, !tbaa !70
  br label %.loopexit

bb.h:                                             ; preds = %._crit_edge
  store ptr @filter16_simple_low, ptr %i.bc, align 8, !tbaa !66
  store ptr @filter16_complex_low, ptr %i.bd, align 8, !tbaa !67
  store ptr @filter16_simple_high, ptr %i.be, align 8, !tbaa !68
  store ptr @filter16_complex_high, ptr %i.bf, align 8, !tbaa !69
  store ptr @filter16_scale, ptr %i.bg, align 8, !tbaa !70
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.g, %bb.h, %bb.d, %bb.a, %bb.c
  %.050 = phi i32 [ %i.l, %bb.a ], [ -22, %bb.c ], [ -12, %bb.d ], [ 0, %bb.g ], [ 0, %bb.h ], [ -12, %.lr.ph ]
  ret i32 %.050
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #1

declare ptr @av_frame_clone(ptr noundef) local_unnamed_addr #1

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @filter(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.ThreadData, align 8         ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !55
  %i.j = tail call ptr @ff_get_video_buffer(ptr noundef %i.e, i32 noundef %i.g, i32 noundef %i.i) #11 ; 8 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.m = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.j, ptr noundef %i.l) #11 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 276 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !41
  %i.p = and i32 %i.o, -9
  store i32 %i.p, ptr %i.n, align 4, !tbaa !41
  %.not43 = icmp eq i32 %1, 0
  br i1 %.not43, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 136 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !48   ; 2 uses
  %.not44 = icmp eq i64 %i.r, -9223372036854775808
  br i1 %.not44, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = shl nsw i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !48
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.v = load i64, ptr %i.u, align 8, !tbaa !48   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !39
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  %i.z = load i64, ptr %i.y, align 8, !tbaa !48   ; 2 uses
  %i.aa = icmp ne i64 %i.z, -9223372036854775808
  %i.ab = icmp ne i64 %i.v, -9223372036854775808
  %or.cond = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = add nsw i64 %i.z, %i.v
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !48
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  store i64 -9223372036854775808, ptr %i.ae, align 8, !tbaa !48
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !71
  %.not45 = icmp eq i32 %i.ag, 0
  %.in.v = select i1 %.not45, i64 72, i64 88
  %.in = getelementptr inbounds nuw i8, ptr %i.b, i64 %.in.v
  %i.ah = load ptr, ptr %.in, align 8, !tbaa !72
  store ptr %i.j, ptr %2, align 8, !tbaa !73
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !75
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !76
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.am = load i32, ptr %i.al, align 4, !tbaa !58
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !20
  %i.ap = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %i.ao)
  %i.aq = call i32 @ff_filter_execute(ptr noundef nonnull %0, ptr noundef nonnull @deinterlace_slice, ptr noundef nonnull %2, ptr noundef null, i32 noundef %i.ap) #11 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !52
  %.not46 = icmp eq i32 %i.as, 0
  br i1 %.not46, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = load i32, ptr %i.af, align 8, !tbaa !71
  %.not47 = icmp eq i32 %i.at, 0
  %i.au = zext i1 %.not47 to i32
  store i32 %i.au, ptr %i.af, align 8, !tbaa !71
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.av = call i32 @ff_filter_frame(ptr noundef nonnull %i.e, ptr noundef nonnull %i.j) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  %.0 = phi i32 [ %i.av, %bb.j ], [ -12, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i32 %.0
}

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @deinterlace_slice(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = alloca [5 x ptr], align 16               ; 8 uses
  %i.b = alloca [5 x ptr], align 16               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !59
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = sext i32 %2 to i64                       ; 4 uses
  %i.k = sext i32 %3 to i64                       ; 2 uses
  %i.l = add nsw i32 %2, 1
  %i.m = sext i32 %i.l to i64
  br label %bb.b

._crit_edge:                                      ; preds = %deinterlace_plane_slice.exit, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %deinterlace_plane_slice.exit
  %indvars.iv17 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next18, %deinterlace_plane_slice.exit ] ; 9 uses
  %.val = load ptr, ptr %i.c, align 8, !tbaa !9   ; 12 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !73     ; 2 uses
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !75   ; 3 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !76   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !77   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv17
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78   ; 5 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv17
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !78   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv17
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !78   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv17
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !58  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv17
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !58 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv17
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !58 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv17
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !58 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv17
  %i.am = load i32, ptr %i.al, align 4, !tbaa !58 ; 4 uses
  %i.an = sext i32 %i.ad to i64                   ; 2 uses
  %i.ao = mul nsw i64 %i.an, %i.j
  %i.ap = sdiv i64 %i.ao, %i.k
  %i.aq = trunc i64 %i.ap to i32                  ; 3 uses
  %i.ar = mul nsw i64 %i.an, %i.m
  %i.as = sdiv i64 %i.ar, %i.k
  %i.at = trunc i64 %i.as to i32                  ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 108
  %i.av = load i32, ptr %i.au, align 4, !tbaa !65
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 276
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !41 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !71
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !79 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, -1
  br i1 %i.bc, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.bd = and i32 %i.ax, 8
  %.not.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.be = lshr i32 %i.ax, 4
  %.lobit.i = and i32 %i.be, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.bf = xor i32 %i.bb, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.bg = phi i32 [ %i.bf, %bb.e ], [ %.lobit.i, %bb.d ], [ 1, %bb.c ]
  %i.bh = icmp eq i32 %i.az, %i.bg                ; 2 uses
  %i.bi = zext i1 %i.bh to i32
  %i.bj = and i32 %i.aq, 1                        ; 2 uses
  %i.bk = xor i32 %i.bj, %i.bi
  %i.bl = add nsw i32 %i.bk, %i.aq                ; 4 uses
  %i.bm = icmp slt i32 %i.bl, %i.at
  br i1 %i.bm, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.bn = mul nsw i32 %i.bl, %i.am
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds i8, ptr %i.x, i64 %i.bo
  %i.bq = mul nsw i32 %i.bl, %i.ag
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %i.t, i64 %i.br
  %i.bt = sext i32 %i.aa to i64
  %i.bu = shl nsw i32 %i.ag, 1
  %i.bv = sext i32 %i.bu to i64
  %i.bw = shl nsw i32 %i.am, 1
  %i.bx = sext i32 %i.bw to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.08.i = phi i32 [ %i.bl, %.lr.ph.i ], [ %i.by, %bb.g ]
  %.01327.i = phi ptr [ %i.bp, %.lr.ph.i ], [ %i.ca, %bb.g ] ; 2 uses
  %.01346.i = phi ptr [ %i.bs, %.lr.ph.i ], [ %i.bz, %bb.g ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.01327.i, ptr align 1 %.01346.i, i64 %i.bt, i1 false)
  %i.by = add nsw i32 %.08.i, 2                   ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %.01346.i, i64 %i.bv
  %i.ca = getelementptr inbounds i8, ptr %.01327.i, i64 %i.bx
  %i.cb = icmp slt i32 %i.by, %i.at
  br i1 %i.cb, label %bb.g, label %._crit_edge.i, !llvm.loop !80

._crit_edge.i:                                    ; preds = %bb.g, %bb.f
  %i.cc = xor i1 %i.bh, true
  %i.cd = zext i1 %i.cc to i32
  %i.ce = xor i32 %i.bj, %i.cd
  %i.cf = add i32 %i.ce, %i.aq                    ; 6 uses
  %i.cg = icmp slt i32 %i.cf, %i.at
  br i1 %i.cg, label %.preheader3.lr.ph.i, label %deinterlace_plane_slice.exit

.preheader3.lr.ph.i:                              ; preds = %._crit_edge.i
  %i.ch = mul nsw i32 %i.cf, %i.am
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %i.x, i64 %i.ci
  %i.ck = sext i32 %i.r to i64                    ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr @n_coef_lf, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !81  ; 2 uses
  %i.cn = sext i8 %i.cm to i32                    ; 3 uses
  %i.co = icmp ult i32 %i.r, 2                    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val, i64 96 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.cr = getelementptr inbounds [8 x i8], ptr @coef_lf, i64 %i.ck
  %i.cs = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.ct = getelementptr inbounds i8, ptr @n_coef_hf, i64 %i.ck
  %i.cu = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.cv = getelementptr inbounds [10 x i8], ptr @coef_hf, i64 %i.ck
  %i.cw = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.cx = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.cy = shl nsw i32 %i.am, 1
  %i.cz = sext i32 %i.cy to i64
  %i.da = add nsw i32 %i.cf, 1                    ; 2 uses
  %i.db = sub i32 %i.da, %i.cn
  %i.dc = sub i32 %i.cn, %i.cf
  %smax33.i = call i32 @llvm.smax.i32(i32 %i.cn, i32 1)
  %i.dd = sub i32 0, %i.cf
  %wide.trip.count.i = zext nneg i32 %smax33.i to i64 ; 3 uses
  %i.de = add i32 %i.ad, -1                       ; 6 uses
  %n.vec48 = and i64 %wide.trip.count.i, 2147483646 ; 4 uses
  %i.df = trunc nuw nsw i64 %n.vec48 to i32       ; 2 uses
  %i.dg = shl nuw i32 %i.df, 1
  %i.dh = shl nuw i32 %i.df, 1
  %broadcast.splatinsert49 = insertelement <2 x i32> poison, i32 %i.de, i64 0
  %broadcast.splat50 = shufflevector <2 x i32> %broadcast.splatinsert49, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert51 = insertelement <2 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat52 = shufflevector <2 x i32> %broadcast.splatinsert51, <2 x i32> poison, <2 x i32> zeroinitializer
  %cmp.n73 = icmp eq i64 %n.vec48, %wide.trip.count.i
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.de, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert25 = insertelement <2 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat26 = shufflevector <2 x i32> %broadcast.splatinsert25, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert27 = insertelement <2 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat28 = shufflevector <2 x i32> %broadcast.splatinsert27, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.preheader3.i

.preheader3.i:                                    ; preds = %bb.k, %.preheader3.lr.ph.i
  %indvars.iv39.i = phi i32 [ %i.dd, %.preheader3.lr.ph.i ], [ %indvars.iv.next40.i, %bb.k ] ; 2 uses
  %indvars.iv34.i = phi i32 [ %i.da, %.preheader3.lr.ph.i ], [ %indvars.iv.next35.i, %bb.k ] ; 2 uses
  %indvars.iv26.i = phi i32 [ %i.dc, %.preheader3.lr.ph.i ], [ %indvars.iv.next27.i, %bb.k ] ; 3 uses
  %indvars.iv.i = phi i32 [ %i.db, %.preheader3.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 3 uses
  %.121.i = phi i32 [ %i.cf, %.preheader3.lr.ph.i ], [ %i.fx, %bb.k ]
  %.113320.i = phi ptr [ %i.cj, %.preheader3.lr.ph.i ], [ %i.fy, %bb.k ] ; 2 uses
  br i1 %i.co, label %vector.ph47, label %._crit_edge11.i

vector.ph47:                                      ; preds = %.preheader3.i
  %i.di = sub i32 %indvars.iv26.i, %i.dg
  %i.dj = add i32 %indvars.iv.i, %i.dh
  %broadcast.splatinsert56 = insertelement <2 x i32> poison, i32 %indvars.iv26.i, i64 0
  %broadcast.splat57 = shufflevector <2 x i32> %broadcast.splatinsert56, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction58 = add <2 x i32> %broadcast.splat57, <i32 0, i32 -2>
  %broadcast.splatinsert59 = insertelement <2 x i32> poison, i32 %indvars.iv.i, i64 0
  %broadcast.splat60 = shufflevector <2 x i32> %broadcast.splatinsert59, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction61 = add <2 x i32> %broadcast.splat60, <i32 0, i32 2>
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph47
  %index63 = phi i64 [ 0, %vector.ph47 ], [ %index.next68, %vector.body62 ] ; 2 uses
  %vec.ind65 = phi <2 x i32> [ %induction58, %vector.ph47 ], [ %vec.ind.next70, %vector.body62 ] ; 2 uses
  %vec.ind66 = phi <2 x i32> [ %induction61, %vector.ph47 ], [ %vec.ind.next71, %vector.body62 ] ; 3 uses
  %i.dk = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %vec.ind66, <2 x i32> zeroinitializer)
  %i.dl = add <2 x i32> %i.dk, %vec.ind65
  %i.dm = and <2 x i32> %i.dl, splat (i32 -2)
  %i.dn = add <2 x i32> %vec.ind66, %i.dm         ; 4 uses
  %4 = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.dn, <2 x i32> %broadcast.splat50)
  %5 = icmp sgt <2 x i32> %i.dn, %broadcast.splat50 ; 2 uses
  %6 = zext <2 x i1> %5 to <2 x i32>
  %i.do = add <2 x i32> %4, %6
  %7 = sub <2 x i32> %i.dn, %i.do
  %8 = select <2 x i1> %5, <2 x i32> splat (i32 2), <2 x i32> zeroinitializer
  %9 = add <2 x i32> %7, %8
  %i.dp = and <2 x i32> %9, splat (i32 -2)
  %i.dq = sub <2 x i32> %i.dn, %i.dp
  %i.dr = mul nsw <2 x i32> %i.dq, %broadcast.splat52
  %i.ds = sext <2 x i32> %i.dr to <2 x i64>
  %wide.gep67 = getelementptr inbounds i8, ptr %i.t, <2 x i64> %i.ds
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index63
  store <2 x ptr> %wide.gep67, ptr %i.dt, align 16, !tbaa !78
  %index.next68 = add nuw i64 %index63, 2         ; 2 uses
  %vec.ind.next70 = add <2 x i32> %vec.ind65, splat (i32 -4)
  %vec.ind.next71 = add <2 x i32> %vec.ind66, splat (i32 4)
  %i.du = icmp eq i64 %index.next68, %n.vec48
  br i1 %i.du, label %middle.block72, label %vector.body62, !llvm.loop !82

middle.block72:                                   ; preds = %vector.body62
  br i1 %cmp.n73, label %._crit_edge11.i, label %.preheader2.preheader.i

.preheader2.preheader.i:                          ; preds = %middle.block72, %.preheader2.preheader.i
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %.preheader2.preheader.i ], [ %n.vec48, %middle.block72 ] ; 2 uses
  %indvars.iv28.i = phi i32 [ %indvars.iv.next29.i, %.preheader2.preheader.i ], [ %i.di, %middle.block72 ] ; 2 uses
  %indvars.iv24.i = phi i32 [ %indvars.iv.next25.i, %.preheader2.preheader.i ], [ %i.dj, %middle.block72 ] ; 3 uses
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv24.i, i32 0)
  %i.dv = add i32 %smax, %indvars.iv28.i
  %i.dw = and i32 %i.dv, -2
  %i.dx = add i32 %indvars.iv24.i, %i.dw          ; 4 uses
  %smin = call i32 @llvm.smin.i32(i32 %i.dx, i32 %i.de)
  %10 = icmp sgt i32 %i.dx, %i.de                 ; 2 uses
  %umin = zext i1 %10 to i32
  %i.dy = add i32 %smin, %umin
  %11 = sub i32 %i.dx, %i.dy
  %12 = select i1 %10, i32 2, i32 0
  %13 = add i32 %11, %12
  %i.dz = and i32 %13, -2
  %i.ea = sub i32 %i.dx, %i.dz
  %i.eb = mul nsw i32 %i.ea, %i.ag
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds i8, ptr %i.t, i64 %i.ec
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv30.i
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !78
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %indvars.iv.next25.i = add i32 %indvars.iv24.i, 2
  %indvars.iv.next29.i = add i32 %indvars.iv28.i, -2
  %exitcond.not.i = icmp eq i64 %indvars.iv.next31.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge11.i, label %.preheader2.preheader.i, !llvm.loop !85

._crit_edge11.i:                                  ; preds = %.preheader2.preheader.i, %middle.block72, %.preheader3.i
  %i.ef = load ptr, ptr %i.cp, align 8, !tbaa !25
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.j
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !61
  switch i8 %i.cm, label %bb.i [
    i8 2, label %.sink.split.i
    i8 4, label %bb.h
  ]

bb.h:                                             ; preds = %._crit_edge11.i
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %._crit_edge11.i, %bb.h
  %.sink.in.i = phi ptr [ %i.cq, %bb.h ], [ %i.cs, %._crit_edge11.i ]
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !86
  call void %.sink.i(ptr noundef %i.eh, ptr noundef nonnull %i.a, ptr noundef nonnull %i.cr, i32 noundef %i.aa) #11, !inline_history !87
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i, %._crit_edge11.i
  %i.ei = load i8, ptr %i.ct, align 1, !tbaa !81  ; 2 uses
  br i1 %i.co, label %.lr.ph15.i, label %._crit_edge16.i

.lr.ph15.i:                                       ; preds = %bb.i
  %i.ej = sext i8 %i.ei to i32                    ; 3 uses
  %smax46.i = call i32 @llvm.smax.i32(i32 %i.ej, i32 1)
  %wide.trip.count47.i = zext nneg i32 %smax46.i to i64 ; 3 uses
  %i.ek = sub i32 %indvars.iv34.i, %i.ej          ; 2 uses
  %i.el = add i32 %indvars.iv39.i, %i.ej          ; 2 uses
  %n.vec = and i64 %wide.trip.count47.i, 2147483646 ; 4 uses
  %i.em = trunc nuw nsw i64 %n.vec to i32         ; 2 uses
  %i.en = shl nuw i32 %i.em, 1
  %14 = sub i32 %i.el, %i.en
  %i.eo = shl nuw i32 %i.em, 1
  %i.ep = add i32 %i.ek, %i.eo
  %broadcast.splatinsert31 = insertelement <2 x i32> poison, i32 %i.el, i64 0
  %broadcast.splat32 = shufflevector <2 x i32> %broadcast.splatinsert31, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction33 = add <2 x i32> %broadcast.splat32, <i32 0, i32 -2>
  %broadcast.splatinsert34 = insertelement <2 x i32> poison, i32 %i.ek, i64 0
  %broadcast.splat35 = shufflevector <2 x i32> %broadcast.splatinsert34, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction36 = add <2 x i32> %broadcast.splat35, <i32 0, i32 2>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph15.i
  %index = phi i64 [ 0, %.lr.ph15.i ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind37 = phi <2 x i32> [ %induction33, %.lr.ph15.i ], [ %vec.ind.next40, %vector.body ] ; 2 uses
  %vec.ind38 = phi <2 x i32> [ %induction36, %.lr.ph15.i ], [ %vec.ind.next41, %vector.body ] ; 3 uses
  %i.eq = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %vec.ind38, <2 x i32> zeroinitializer)
  %i.er = add <2 x i32> %i.eq, %vec.ind37
  %i.es = and <2 x i32> %i.er, splat (i32 -2)
  %i.et = add <2 x i32> %vec.ind38, %i.es         ; 4 uses
  %15 = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.et, <2 x i32> %broadcast.splat)
  %16 = icmp sgt <2 x i32> %i.et, %broadcast.splat ; 2 uses
  %17 = zext <2 x i1> %16 to <2 x i32>
  %i.eu = add <2 x i32> %15, %17
  %18 = sub <2 x i32> %i.et, %i.eu
  %19 = select <2 x i1> %16, <2 x i32> splat (i32 2), <2 x i32> zeroinitializer
  %20 = add <2 x i32> %18, %19
  %i.ev = and <2 x i32> %20, splat (i32 -2)
  %i.ew = sub <2 x i32> %i.et, %i.ev              ; 2 uses
  %i.ex = mul nsw <2 x i32> %i.ew, %broadcast.splat26
  %i.ey = sext <2 x i32> %i.ex to <2 x i64>
  %wide.gep = getelementptr inbounds i8, ptr %i.t, <2 x i64> %i.ey
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index
  store <2 x ptr> %wide.gep, ptr %i.ez, align 16, !tbaa !78
  %i.fa = mul nsw <2 x i32> %i.ew, %broadcast.splat28
  %i.fb = sext <2 x i32> %i.fa to <2 x i64>
  %wide.gep39 = getelementptr inbounds i8, ptr %i.v, <2 x i64> %i.fb
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index
  store <2 x ptr> %wide.gep39, ptr %i.fc, align 16, !tbaa !78
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next40 = add <2 x i32> %vec.ind37, splat (i32 -4)
  %vec.ind.next41 = add <2 x i32> %vec.ind38, splat (i32 4)
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count47.i
  br i1 %cmp.n, label %._crit_edge16.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %middle.block, %.preheader.preheader.i
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i, %.preheader.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %indvars.iv41.i = phi i32 [ %indvars.iv.next42.i, %.preheader.preheader.i ], [ %14, %middle.block ] ; 2 uses
  %indvars.iv36.i = phi i32 [ %indvars.iv.next37.i, %.preheader.preheader.i ], [ %i.ep, %middle.block ] ; 3 uses
  %smax11 = call i32 @llvm.smax.i32(i32 %indvars.iv36.i, i32 0)
  %i.fe = add i32 %smax11, %indvars.iv41.i
  %i.ff = and i32 %i.fe, -2
  %i.fg = add i32 %indvars.iv36.i, %i.ff          ; 4 uses
  %smin10 = call i32 @llvm.smin.i32(i32 %i.fg, i32 %i.de)
  %21 = icmp sgt i32 %i.fg, %i.de                 ; 2 uses
  %umin11 = zext i1 %21 to i32
  %i.fh = add i32 %smin10, %umin11
  %22 = sub i32 %i.fg, %i.fh
  %23 = select i1 %21, i32 2, i32 0
  %24 = add i32 %22, %23
  %i.fi = and i32 %24, -2
  %i.fj = sub i32 %i.fg, %i.fi                    ; 2 uses
  %i.fk = mul nsw i32 %i.fj, %i.ag
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %i.t, i64 %i.fl
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv43.i
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !78
  %i.fo = mul nsw i32 %i.fj, %i.aj
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds i8, ptr %i.v, i64 %i.fp
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv43.i
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !78
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1 ; 2 uses
  %indvars.iv.next37.i = add i32 %indvars.iv36.i, 2
  %indvars.iv.next42.i = add i32 %indvars.iv41.i, -2
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next44.i, %wide.trip.count47.i
  br i1 %exitcond48.not.i, label %._crit_edge16.i, label %.preheader.preheader.i, !llvm.loop !89

._crit_edge16.i:                                  ; preds = %.preheader.preheader.i, %middle.block, %bb.i
  %i.fs = load ptr, ptr %i.cp, align 8, !tbaa !25
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.j
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !61 ; 2 uses
  switch i8 %i.ei, label %bb.k [
    i8 3, label %.sink.split53.i
    i8 5, label %bb.j
  ]

bb.j:                                             ; preds = %._crit_edge16.i
  br label %.sink.split53.i

.sink.split53.i:                                  ; preds = %._crit_edge16.i, %bb.j
  %.sink54.in.i = phi ptr [ %i.cu, %bb.j ], [ %i.cw, %._crit_edge16.i ]
  %.sink54.i = load ptr, ptr %.sink54.in.i, align 8, !tbaa !86
  call void %.sink54.i(ptr noundef %i.fu, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.cv, i32 noundef %i.aa) #11, !inline_history !87
  %.pre = load ptr, ptr %i.cp, align 8, !tbaa !25
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.j
  %.pre20 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !61
  br label %bb.k

bb.k:                                             ; preds = %.sink.split53.i, %._crit_edge16.i
  %i.fv = phi ptr [ %.pre20, %.sink.split53.i ], [ %i.fu, %._crit_edge16.i ]
  %i.fw = load ptr, ptr %i.cx, align 8, !tbaa !70
  call void %i.fw(ptr noundef %.113320.i, ptr noundef %i.fv, i32 noundef %i.aa, i32 noundef %i.av) #11, !inline_history !87
  %i.fx = add nsw i32 %.121.i, 2                  ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %.113320.i, i64 %i.cz
  %i.fz = icmp slt i32 %i.fx, %i.at
  %indvars.iv.next.i = add i32 %indvars.iv.i, 2
  %indvars.iv.next27.i = add i32 %indvars.iv26.i, -2
  %indvars.iv.next35.i = add i32 %indvars.iv34.i, 2
  %indvars.iv.next40.i = add i32 %indvars.iv39.i, -2
  br i1 %i.fz, label %.preheader3.i, label %deinterlace_plane_slice.exit, !llvm.loop !90

deinterlace_plane_slice.exit:                     ; preds = %bb.k, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 2 uses
  %i.ga = load i32, ptr %i.e, align 8, !tbaa !59
  %i.gb = sext i32 %i.ga to i64
  %i.gc = icmp slt i64 %indvars.iv.next18, %i.gb
  br i1 %i.gc, label %bb.b, label %._crit_edge, !llvm.loop !91
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #1

declare i32 @av_image_fill_linesizes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @av_pix_fmt_count_planes(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #4

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @filter_simple_low(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #5 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i16, ptr %2, align 2, !tbaa !92
  %i.c = sext i16 %i.b to i32                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !92
  %i.g = sext i16 %i.f to i32                     ; 3 uses
  %.promoted = load ptr, ptr %1, align 8, !tbaa !78 ; 2 uses
  %.promoted11 = load ptr, ptr %i.d, align 8, !tbaa !78 ; 2 uses
  %xtraiter = and i32 %3, 1
  %i.h = icmp eq i32 %3, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %3, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %i.i = phi ptr [ %.promoted11, %.lr.ph.new ], [ %i.y, %bb.b ] ; 3 uses
  %i.j = phi ptr [ %.promoted, %.lr.ph.new ], [ %i.u, %bb.b ] ; 3 uses
  %.089 = phi ptr [ %0, %.lr.ph.new ], [ %i.ac, %bb.b ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !78
  %i.l = load i8, ptr %i.j, align 1, !tbaa !81
  %i.m = zext i8 %i.l to i32
  %i.n = mul nsw i32 %i.c, %i.m                   ; 2 uses
  store i32 %i.n, ptr %.089, align 4, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !78
  %i.p = load i8, ptr %i.i, align 1, !tbaa !81
  %i.q = zext i8 %i.p to i32
  %i.r = mul nsw i32 %i.g, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.089, i64 4 ; 2 uses
  %i.t = add nsw i32 %i.r, %i.n
  store i32 %i.t, ptr %.089, align 4, !tbaa !58
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 2 ; 3 uses
  store ptr %i.u, ptr %1, align 8, !tbaa !78
  %i.v = load i8, ptr %i.k, align 1, !tbaa !81
  %i.w = zext i8 %i.v to i32
  %i.x = mul nsw i32 %i.c, %i.w                   ; 2 uses
  store i32 %i.x, ptr %i.s, align 4, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 3 uses
  store ptr %i.y, ptr %i.d, align 8, !tbaa !78
  %i.z = load i8, ptr %i.o, align 1, !tbaa !81
  %i.aa = zext i8 %i.z to i32
  %i.ab = mul nsw i32 %i.g, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %.089, i64 8 ; 2 uses
  %i.ad = add nsw i32 %i.ab, %i.x
  store i32 %i.ad, ptr %i.s, align 4, !tbaa !58
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !94

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi ptr [ %.promoted11, %.lr.ph ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init13 = phi ptr [ %.promoted, %.lr.ph ], [ %i.u, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.089.epil.init = phi ptr [ %0, %.lr.ph ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod14 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod14)
  %i.ae = getelementptr inbounds nuw i8, ptr %.epil.init13, i64 1
  store ptr %i.ae, ptr %1, align 8, !tbaa !78
  %i.af = load i8, ptr %.epil.init13, align 1, !tbaa !81
  %i.ag = zext i8 %i.af to i32
  %i.ah = mul nsw i32 %i.c, %i.ag                 ; 2 uses
  store i32 %i.ah, ptr %.089.epil.init, align 4, !tbaa !58
  %i.ai = getelementptr inbounds nuw i8, ptr %.epil.init, i64 1
  store ptr %i.ai, ptr %i.d, align 8, !tbaa !78
  %i.aj = load i8, ptr %.epil.init, align 1, !tbaa !81
  %i.ak = zext i8 %i.aj to i32
  %i.al = mul nsw i32 %i.g, %i.ak
  %i.am = add nsw i32 %i.al, %i.ah
  store i32 %i.am, ptr %.089.epil.init, align 4, !tbaa !58
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @filter_complex_low(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #5 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i16, ptr %2, align 2, !tbaa !92
  %i.c = sext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !92
  %i.g = sext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i16, ptr %i.i, align 2, !tbaa !92
  %i.k = sext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.n = load i16, ptr %i.m, align 2, !tbaa !92
  %i.o = sext i16 %i.n to i32
  %.promoted = load ptr, ptr %1, align 8, !tbaa !78
  %.promoted17 = load ptr, ptr %i.d, align 8, !tbaa !78
  %.promoted18 = load ptr, ptr %i.h, align 8, !tbaa !78
  %.promoted19 = load ptr, ptr %i.l, align 8, !tbaa !78
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.p = phi ptr [ %.promoted19, %.lr.ph ], [ %i.ah, %bb.b ] ; 2 uses
  %i.q = phi ptr [ %.promoted18, %.lr.ph ], [ %i.ac, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %.promoted17, %.lr.ph ], [ %i.x, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %.promoted, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %.016 = phi i32 [ 0, %.lr.ph ], [ %i.an, %bb.b ]
  %.01415 = phi ptr [ %0, %.lr.ph ], [ %i.al, %bb.b ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  store ptr %i.t, ptr %1, align 8, !tbaa !78
  %i.u = load i8, ptr %i.s, align 1, !tbaa !81
  %i.v = zext i8 %i.u to i32
  %i.w = mul nsw i32 %i.c, %i.v                   ; 2 uses
  store i32 %i.w, ptr %.01415, align 4, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  store ptr %i.x, ptr %i.d, align 8, !tbaa !78
  %i.y = load i8, ptr %i.r, align 1, !tbaa !81
  %i.z = zext i8 %i.y to i32
  %i.aa = mul nsw i32 %i.g, %i.z
  %i.ab = add nsw i32 %i.aa, %i.w                 ; 2 uses
  store i32 %i.ab, ptr %.01415, align 4, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !78
  %i.ad = load i8, ptr %i.q, align 1, !tbaa !81
  %i.ae = zext i8 %i.ad to i32
  %i.af = mul nsw i32 %i.k, %i.ae
  %i.ag = add nsw i32 %i.af, %i.ab                ; 2 uses
  store i32 %i.ag, ptr %.01415, align 4, !tbaa !58
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  store ptr %i.ah, ptr %i.l, align 8, !tbaa !78
  %i.ai = load i8, ptr %i.p, align 1, !tbaa !81
  %i.aj = zext i8 %i.ai to i32
  %i.ak = mul nsw i32 %i.o, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.01415, i64 4
  %i.am = add nsw i32 %i.ak, %i.ag
  store i32 %i.am, ptr %.01415, align 4, !tbaa !58
  %i.an = add nuw nsw i32 %.016, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.an, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !95

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @filter_simple_high(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #5 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i16, ptr %3, align 2, !tbaa !92
  %i.c = sext i16 %i.b to i32                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !92
  %i.g = sext i16 %i.f to i32                     ; 2 uses
end_hunk_0
