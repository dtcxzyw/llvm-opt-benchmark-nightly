Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_colorlevels?download=true
inline.NumInlined: 49
inline.NumDeleted: 4
begin_hunk_0_@filter_frame:bb.a
  ret i32 %.0247
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 24 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !89
  %i.g = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.f) #7 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i8, ptr %i.h, align 8, !tbaa !92
  %i.j = zext i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  store i32 %i.j, ptr %i.k, align 4, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !93
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, 16                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 152 ; 2 uses
  store i32 %i.o, ptr %i.p, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !95   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 2 uses
  store i32 %i.r, ptr %i.s, align 8, !tbaa !52
  %notmask = shl nsw i32 -1, %i.r
  %i.t = xor i32 %notmask, -1
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  store i32 %i.t, ptr %i.u, align 4, !tbaa !53
  %i.v = add nsw i32 %i.r, 7
  %i.w = ashr i32 %i.v, 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 156 ; 3 uses
  store i32 %i.w, ptr %i.x, align 4, !tbaa !39
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = tail call i32 @av_get_padded_bits_per_pixel(ptr noundef nonnull %i.g) #7
  %i.z = load i32, ptr %i.x, align 4, !tbaa !39
  %i.aa = icmp eq i32 %i.z, 2
  %i.ab = select i1 %i.aa, i32 4, i32 3
  %i.ac = ashr i32 %i.y, %i.ab
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ad = phi i32 [ %i.ac, %bb.b ], [ 1, %bb.a ]  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !30
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !31
  %i.ah = mul nsw i32 %i.ag, %i.ad
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !42
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 164
  %i.ak = load i32, ptr %i.e, align 4, !tbaa !89
  %i.al = tail call i32 @ff_fill_rgba_map(ptr noundef nonnull %i.aj, i32 noundef %i.ak) #7 ; 0 uses
  %i.am = load i32, ptr %i.p, align 8, !tbaa !37
  %.not43 = icmp eq i32 %i.am, 0
  br i1 %.not43, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 176 ; 2 uses
  store ptr @colorlevels_slice_8, ptr %i.an, align 8, !tbaa !51
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 2 uses
  store ptr @colorlevels_preserve_slice_8, ptr %i.ao, align 8, !tbaa !51
  %i.ap = load i32, ptr %i.x, align 4, !tbaa !39
  %i.aq = icmp eq i32 %i.ap, 2
  br i1 %i.aq, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  store ptr @colorlevels_slice_16, ptr %i.an, align 8, !tbaa !51
  store ptr @colorlevels_preserve_slice_16, ptr %i.ao, align 8, !tbaa !51
  br label %bb.n

bb.f:                                             ; preds = %bb.c
  %i.ar = load i32, ptr %i.s, align 8, !tbaa !52
  switch i32 %i.ar, label %bb.n [
    i32 8, label %bb.g
    i32 9, label %bb.h
    i32 10, label %bb.i
    i32 12, label %bb.j
    i32 14, label %bb.k
    i32 16, label %bb.l
    i32 32, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store ptr @colorlevels_slice_8_planar, ptr %i.as, align 8, !tbaa !51
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr @colorlevels_preserve_slice_8_planar, ptr %i.at, align 8, !tbaa !51
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store ptr @colorlevels_slice_9_planar, ptr %i.au, align 8, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr @colorlevels_preserve_slice_9_planar, ptr %i.av, align 8, !tbaa !51
  br label %bb.n

bb.i:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store ptr @colorlevels_slice_10_planar, ptr %i.aw, align 8, !tbaa !51
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr @colorlevels_preserve_slice_10_planar, ptr %i.ax, align 8, !tbaa !51
  br label %bb.n

bb.j:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store ptr @colorlevels_slice_12_planar, ptr %i.ay, align 8, !tbaa !51
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr @colorlevels_preserve_slice_12_planar, ptr %i.az, align 8, !tbaa !51
  br label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store ptr @colorlevels_slice_14_planar, ptr %i.ba, align 8, !tbaa !51
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr @colorlevels_preserve_slice_14_planar, ptr %i.bb, align 8, !tbaa !51
  br label %bb.n

bb.l:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store ptr @colorlevels_slice_16_planar, ptr %i.bc, align 8, !tbaa !51
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr @colorlevels_preserve_slice_16_planar, ptr %i.bd, align 8, !tbaa !51
  br label %bb.n

bb.m:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store ptr @colorlevels_slice_32_planar, ptr %i.be, align 8, !tbaa !51
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr @colorlevels_preserve_slice_32_planar, ptr %i.bf, align 8, !tbaa !51
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.d, %bb.e
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #0

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare void @av_frame_free(ptr noundef) local_unnamed_addr #0

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #3

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #4

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #0

declare i32 @av_get_padded_bits_per_pixel(ptr noundef) local_unnamed_addr #0

declare i32 @ff_fill_rgba_map(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_slice_8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 2 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 2 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %5 = load i32, ptr %4, align 8, !tbaa !35       ; 4 uses
  %6 = load i32, ptr %i.t, align 4, !tbaa !36     ; 4 uses
  %7 = sext i32 %6 to i64                         ; 5 uses
  %i.u = sext i32 %5 to i64                       ; 5 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.w = mul i32 %6, %i.n
  %i.x = sext i32 %i.w to i64                     ; 10 uses
  %i.y = getelementptr i8, ptr %i.v, i64 %i.x     ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !38  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.x   ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !38 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.x   ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !38
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.x
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.x   ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !38 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 %i.x   ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !38 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.x   ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !38
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.x
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.av = load i32, ptr %i.au, align 8, !tbaa !52
  %i.aw = icmp eq i32 %i.av, 32
  br i1 %i.aw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ba = load <2 x float>, ptr %i.ax, align 4, !tbaa !47
  %i.bb = load <2 x float>, ptr %i.az, align 4, !tbaa !47
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bd = load <2 x float>, ptr %i.ay, align 4, !tbaa !47
  %i.be = load <2 x float>, ptr %i.bc, align 4, !tbaa !47
  %i.bf = shufflevector <2 x float> %i.bd, <2 x float> %i.be, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bj = load <2 x i32>, ptr %i.bg, align 4, !tbaa !34
  %i.bk = sitofp <2 x i32> %i.bj to <2 x float>
  %i.bl = load <2 x i32>, ptr %i.bi, align 4, !tbaa !34
  %i.bm = sitofp <2 x i32> %i.bl to <2 x float>
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.bo = load <2 x i32>, ptr %i.bh, align 4, !tbaa !34
  %i.bp = load <2 x i32>, ptr %i.bn, align 4, !tbaa !34
  %i.bq = shufflevector <2 x i32> %i.bo, <2 x i32> %i.bp, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.br = sitofp <4 x i32> %i.bq to <4 x float>
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bs = phi <2 x float> [ %i.ba, %bb.b ], [ %i.bk, %bb.c ]
  %i.bt = phi <2 x float> [ %i.bb, %bb.b ], [ %i.bm, %bb.c ]
  %i.bu = phi <4 x float> [ %i.bf, %bb.b ], [ %i.br, %bb.c ] ; 4 uses
  %i.bv = extractelement <4 x float> %i.bu, i64 1
  %i.bw = fptosi float %i.bv to i32
  %i.bx = fptosi <2 x float> %i.bs to <2 x i32>   ; 5 uses
  %i.by = extractelement <4 x float> %i.bu, i64 0
  %i.bz = fptosi float %i.by to i32               ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cb = load <2 x float>, ptr %i.ca, align 8, !tbaa !47 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !47 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !47
  %i.cg = icmp slt i32 %i.n, %i.s
  br i1 %i.cg, label %.preheader156.lr.ph, label %._crit_edge

.preheader156.lr.ph:                              ; preds = %bb.d
  %i.ch = extractelement <4 x float> %i.bu, i64 3
  %i.ci = fptosi float %i.ch to i32
  %i.cj = extractelement <4 x float> %i.bu, i64 2
  %i.ck = fptosi float %i.cj to i32
  %i.cl = fptosi <2 x float> %i.bt to <2 x i32>
  %i.cm = icmp sgt i32 %i.d, 0
  %i.cn = sitofp <2 x i32> %i.cl to <2 x float>   ; 5 uses
  %i.co = sitofp nsz i32 %i.ck to float           ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.cq = sitofp nsz i32 %i.ci to float
  br i1 %i.cm, label %.preheader156.us.us.preheader, label %._crit_edge

.preheader156.us.us.preheader:                    ; preds = %.preheader156.lr.ph
  %i.cr = sext i32 %i.f to i64                    ; 3 uses
  %i.cs = zext nneg i32 %i.d to i64               ; 8 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.cr, i64 %i.cs)
  %i.ct = add nsw i64 %smax, -1                   ; 2 uses
  %i.cu = xor i64 %i.m, -1
  %i.cv = add i64 %i.r, %i.cu
  %i.cw = and i64 %i.cv, 4294967295               ; 2 uses
  %i.cx = mul nsw i64 %i.cw, %i.u
  %i.cy = mul nsw i64 %i.cw, %7
  %i.cz = insertelement <4 x ptr> poison, ptr %i.an, i64 0
  %i.da = shufflevector <4 x ptr> %i.cz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.db = insertelement <4 x ptr> poison, ptr %i.aq, i64 0 ; 2 uses
  %i.dc = insertelement <4 x ptr> %i.db, ptr %i.y, i64 1
  %i.dd = insertelement <4 x ptr> %i.dc, ptr %i.ab, i64 2
  %i.de = insertelement <4 x ptr> %i.dd, ptr %i.ae, i64 3
  %i.df = insertelement <2 x ptr> poison, ptr %i.y, i64 0
  %i.dg = insertelement <2 x ptr> %i.df, ptr %i.ab, i64 1
  %i.dh = shufflevector <4 x ptr> %i.db, <4 x ptr> poison, <2 x i32> zeroinitializer
  %8 = insertelement <8 x i32> poison, i32 %6, i64 0
  %9 = insertelement <8 x i32> poison, i32 %5, i64 0
  %min.iters.check = icmp ugt i32 %i.d, 3
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.di = add i64 %i.ct, %i.cx
  %i.dj = add i64 %i.di, %i.x
  %i.dk = add i64 %i.dj, 1                        ; 3 uses
  %scevgep = getelementptr i8, ptr %i.aj, i64 %i.dk ; 5 uses
  %scevgep178 = getelementptr i8, ptr %i.am, i64 %i.dk ; 2 uses
  %scevgep179 = getelementptr i8, ptr %i.ap, i64 %i.dk ; 3 uses
  %i.dl = add i64 %i.ct, %i.cy
  %i.dm = add i64 %i.dl, %i.x
  %i.dn = add i64 %i.dm, 1                        ; 3 uses
  %scevgep180 = getelementptr i8, ptr %i.v, i64 %i.dn ; 3 uses
  %scevgep181 = getelementptr i8, ptr %i.aa, i64 %i.dn ; 3 uses
  %scevgep182 = getelementptr i8, ptr %i.ad, i64 %i.dn ; 3 uses
  %bound0 = icmp ult ptr %i.ak, %scevgep178
  %bound1 = icmp ult ptr %i.an, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0184 = icmp ult ptr %i.ak, %scevgep179
  %bound1185 = icmp ult ptr %i.aq, %scevgep
  %found.conflict186 = and i1 %bound0184, %bound1185
  %bound0189 = icmp ult ptr %i.ak, %scevgep180
  %bound1190 = icmp ult ptr %i.y, %scevgep
  %found.conflict191 = and i1 %bound0189, %bound1190
  %i.do = or <8 x i32> %8, %9
  %bound0195 = icmp ult ptr %i.ak, %scevgep181
  %bound1196 = icmp ult ptr %i.ab, %scevgep
  %found.conflict197 = and i1 %bound0195, %bound1196
  %bound0201 = icmp ult ptr %i.ak, %scevgep182
  %bound1202 = icmp ult ptr %i.ae, %scevgep
  %found.conflict203 = and i1 %bound0201, %bound1202
  %i.dp = icmp slt <8 x i32> %i.do, zeroinitializer
  %10 = shufflevector <8 x i1> %i.dp, <8 x i1> poison, <8 x i32> zeroinitializer
  %bound0243 = icmp ult ptr %i.aq, %scevgep182
  %bound1244 = icmp ult ptr %i.ae, %scevgep179
  %stride.check187 = icmp slt i32 %5, 0
  %i.dq = insertelement <4 x ptr> poison, ptr %scevgep179, i64 0 ; 2 uses
  %i.dr = insertelement <4 x ptr> %i.dq, ptr %scevgep180, i64 1
  %i.ds = insertelement <4 x ptr> %i.dr, ptr %scevgep181, i64 2
  %i.dt = insertelement <4 x ptr> %i.ds, ptr %scevgep182, i64 3
  %i.du = icmp ult <4 x ptr> %i.da, %i.dt
  %i.dv = insertelement <4 x ptr> poison, ptr %scevgep178, i64 0
  %i.dw = shufflevector <4 x ptr> %i.dv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dx = icmp ult <4 x ptr> %i.de, %i.dw
  %i.dy = insertelement <2 x ptr> poison, ptr %scevgep180, i64 0
  %i.dz = insertelement <2 x ptr> %i.dy, ptr %scevgep181, i64 1
  %i.ea = icmp ult <2 x ptr> %i.dh, %i.dz
  %i.eb = shufflevector <4 x ptr> %i.dq, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ec = icmp ult <2 x ptr> %i.dg, %i.eb
  %i.ed = insertelement <8 x i1> poison, i1 %bound0243, i64 6
  %i.ee = insertelement <8 x i1> %i.ed, i1 %stride.check187, i64 7
  %i.ef = shufflevector <4 x i1> %i.du, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eg = shufflevector <8 x i1> %i.ef, <8 x i1> %i.ee, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.eh = shufflevector <2 x i1> %i.ea, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ei = shufflevector <8 x i1> %i.eg, <8 x i1> %i.eh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.ej = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1244, i64 6
  %i.ek = shufflevector <4 x i1> %i.dx, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.el = shufflevector <8 x i1> %i.ek, <8 x i1> %i.ej, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.em = shufflevector <2 x i1> %i.ec, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.en = shufflevector <8 x i1> %i.el, <8 x i1> %i.em, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.eo = and <8 x i1> %i.ei, %i.en
  %i.ep = or i32 %6, %5
  %i.eq = icmp slt i32 %i.ep, 0
  %rdx.op = or <8 x i1> %i.eo, %10
  %i.er = bitcast <8 x i1> %rdx.op to i8
  %i.es = icmp ne i8 %i.er, 0
  %op.rdx = or i1 %i.es, %found.conflict186
  %op.rdx294 = or i1 %found.conflict, %found.conflict191
  %op.rdx295 = or i1 %found.conflict197, %found.conflict203
  %op.rdx296 = or i1 %op.rdx, %op.rdx294
  %op.rdx297 = or i1 %op.rdx295, %i.eq
  %op.rdx298 = or i1 %op.rdx296, %op.rdx297
  %min.iters.check250 = icmp ult i32 %i.d, 16
  %i.et = and i64 %i.cs, 12
  %n.vec = and i64 %i.cs, 2147483632              ; 4 uses
  %broadcast.splat = shufflevector <2 x i32> %i.bx, <2 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splat252 = shufflevector <2 x float> %i.cb, <2 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splat254 = shufflevector <2 x float> %i.cn, <2 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splat256 = shufflevector <2 x i32> %i.bx, <2 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat258 = shufflevector <2 x float> %i.cb, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat260 = shufflevector <2 x float> %i.cn, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert261 = insertelement <16 x i32> poison, i32 %i.bz, i64 0
  %broadcast.splat262 = shufflevector <16 x i32> %broadcast.splatinsert261, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert263 = insertelement <16 x float> poison, float %i.cd, i64 0
  %broadcast.splat264 = shufflevector <16 x float> %broadcast.splatinsert263, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert265 = insertelement <16 x float> poison, float %i.co, i64 0
  %broadcast.splat266 = shufflevector <16 x float> %broadcast.splatinsert265, <16 x float> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.cs
  %min.epilog.iters.check = icmp eq i64 %i.et, 0
  %n.vec269 = and i64 %i.cs, 2147483644           ; 3 uses
  %broadcast.splat271 = shufflevector <2 x i32> %i.bx, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat273 = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat275 = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat277 = shufflevector <2 x i32> %i.bx, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat279 = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat281 = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert282 = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %broadcast.splat283 = shufflevector <4 x i32> %broadcast.splatinsert282, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert284 = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat285 = shufflevector <4 x float> %broadcast.splatinsert284, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert286 = insertelement <4 x float> poison, float %i.co, i64 0
  %broadcast.splat287 = shufflevector <4 x float> %broadcast.splatinsert286, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n293 = icmp eq i64 %n.vec269, %i.cs
  br label %iter.check

iter.check:                                       ; preds = %.preheader156.us.us.preheader, %.critedge.us.us
  %.0125169.us.us = phi i32 [ %i.jt, %.critedge.us.us ], [ %i.n, %.preheader156.us.us.preheader ]
  %.0126168.us.us = phi ptr [ %i.js, %.critedge.us.us ], [ %i.at, %.preheader156.us.us.preheader ] ; 2 uses
  %.0127167.us.us = phi ptr [ %i.jr, %.critedge.us.us ], [ %i.aq, %.preheader156.us.us.preheader ] ; 4 uses
  %.0128166.us.us = phi ptr [ %i.jq, %.critedge.us.us ], [ %i.an, %.preheader156.us.us.preheader ] ; 4 uses
  %.0129165.us.us = phi ptr [ %i.jp, %.critedge.us.us ], [ %i.ak, %.preheader156.us.us.preheader ] ; 4 uses
  %.0130164.us.us = phi ptr [ %i.jo, %.critedge.us.us ], [ %i.ah, %.preheader156.us.us.preheader ] ; 2 uses
  %.0131163.us.us = phi ptr [ %i.jn, %.critedge.us.us ], [ %i.ae, %.preheader156.us.us.preheader ] ; 4 uses
  %.0132162.us.us = phi ptr [ %i.jm, %.critedge.us.us ], [ %i.ab, %.preheader156.us.us.preheader ] ; 4 uses
  %.0133161.us.us = phi ptr [ %i.jl, %.critedge.us.us ], [ %i.y, %.preheader156.us.us.preheader ] ; 4 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx298
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check250, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 7 uses
  %i.eu = getelementptr inbounds i8, ptr %.0133161.us.us, i64 %index
  %wide.load = load <16 x i8>, ptr %i.eu, align 1, !tbaa !40, !alias.scope !108
  %i.ev = zext <16 x i8> %wide.load to <16 x i32>
  %i.ew = getelementptr inbounds i8, ptr %.0132162.us.us, i64 %index
  %wide.load267 = load <16 x i8>, ptr %i.ew, align 1, !tbaa !40, !alias.scope !109
  %i.ex = zext <16 x i8> %wide.load267 to <16 x i32>
  %i.ey = getelementptr inbounds i8, ptr %.0131163.us.us, i64 %index
  %wide.load268 = load <16 x i8>, ptr %i.ey, align 1, !tbaa !40, !alias.scope !110
  %i.ez = zext <16 x i8> %wide.load268 to <16 x i32>
  %i.fa = sub nsw <16 x i32> %i.ev, %broadcast.splat
  %i.fb = sitofp nsz <16 x i32> %i.fa to <16 x float>
  %i.fc = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.fb, <16 x float> %broadcast.splat252, <16 x float> %broadcast.splat254)
  %i.fd = fptosi <16 x float> %i.fc to <16 x i32> ; 3 uses
  %i.fe = icmp ult <16 x i32> %i.fd, splat (i32 256)
  %i.ff = icmp sgt <16 x i32> %i.fd, splat (i32 -1)
  %i.fg = sext <16 x i1> %i.ff to <16 x i8>
  %i.fh = trunc nuw <16 x i32> %i.fd to <16 x i8>
  %i.fi = select <16 x i1> %i.fe, <16 x i8> %i.fh, <16 x i8> %i.fg
  %i.fj = getelementptr inbounds i8, ptr %.0129165.us.us, i64 %index
  store <16 x i8> %i.fi, ptr %i.fj, align 1, !tbaa !40, !alias.scope !111, !noalias !112
  %i.fk = sub nsw <16 x i32> %i.ex, %broadcast.splat256
  %i.fl = sitofp nsz <16 x i32> %i.fk to <16 x float>
  %i.fm = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.fl, <16 x float> %broadcast.splat258, <16 x float> %broadcast.splat260)
  %i.fn = fptosi <16 x float> %i.fm to <16 x i32> ; 3 uses
  %i.fo = icmp ult <16 x i32> %i.fn, splat (i32 256)
  %i.fp = icmp sgt <16 x i32> %i.fn, splat (i32 -1)
  %i.fq = sext <16 x i1> %i.fp to <16 x i8>
  %i.fr = trunc nuw <16 x i32> %i.fn to <16 x i8>
  %i.fs = select <16 x i1> %i.fo, <16 x i8> %i.fr, <16 x i8> %i.fq
  %i.ft = getelementptr inbounds i8, ptr %.0128166.us.us, i64 %index
  store <16 x i8> %i.fs, ptr %i.ft, align 1, !tbaa !40, !alias.scope !113, !noalias !114
  %i.fu = sub nsw <16 x i32> %i.ez, %broadcast.splat262
  %i.fv = sitofp nsz <16 x i32> %i.fu to <16 x float>
  %i.fw = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.fv, <16 x float> %broadcast.splat264, <16 x float> %broadcast.splat266)
  %i.fx = fptosi <16 x float> %i.fw to <16 x i32> ; 3 uses
  %i.fy = icmp ult <16 x i32> %i.fx, splat (i32 256)
  %i.fz = icmp sgt <16 x i32> %i.fx, splat (i32 -1)
  %i.ga = sext <16 x i1> %i.fz to <16 x i8>
  %i.gb = trunc nuw <16 x i32> %i.fx to <16 x i8>
  %i.gc = select <16 x i1> %i.fy, <16 x i8> %i.gb, <16 x i8> %i.ga
  %i.gd = getelementptr inbounds i8, ptr %.0127167.us.us, i64 %index
  store <16 x i8> %i.gc, ptr %i.gd, align 1, !tbaa !40, !alias.scope !115, !noalias !116
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ge = icmp eq i64 %index.next, %n.vec
  br i1 %i.ge, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..preheader_crit_edge.us.us.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !54

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index288 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next292, %vec.epilog.vector.body ] ; 7 uses
  %i.gf = getelementptr inbounds i8, ptr %.0133161.us.us, i64 %index288
  %wide.load289 = load <4 x i8>, ptr %i.gf, align 1, !tbaa !40, !alias.scope !108
  %i.gg = zext <4 x i8> %wide.load289 to <4 x i32>
  %i.gh = getelementptr inbounds i8, ptr %.0132162.us.us, i64 %index288
  %wide.load290 = load <4 x i8>, ptr %i.gh, align 1, !tbaa !40, !alias.scope !109
  %i.gi = zext <4 x i8> %wide.load290 to <4 x i32>
  %i.gj = getelementptr inbounds i8, ptr %.0131163.us.us, i64 %index288
  %wide.load291 = load <4 x i8>, ptr %i.gj, align 1, !tbaa !40, !alias.scope !110
  %i.gk = zext <4 x i8> %wide.load291 to <4 x i32>
  %i.gl = sub nsw <4 x i32> %i.gg, %broadcast.splat271
  %i.gm = sitofp nsz <4 x i32> %i.gl to <4 x float>
  %i.gn = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gm, <4 x float> %broadcast.splat273, <4 x float> %broadcast.splat275)
  %i.go = fptosi <4 x float> %i.gn to <4 x i32>   ; 3 uses
  %i.gp = icmp ult <4 x i32> %i.go, splat (i32 256)
  %i.gq = icmp sgt <4 x i32> %i.go, splat (i32 -1)
  %i.gr = sext <4 x i1> %i.gq to <4 x i8>
  %i.gs = trunc nuw <4 x i32> %i.go to <4 x i8>
  %i.gt = select <4 x i1> %i.gp, <4 x i8> %i.gs, <4 x i8> %i.gr
  %i.gu = getelementptr inbounds i8, ptr %.0129165.us.us, i64 %index288
  store <4 x i8> %i.gt, ptr %i.gu, align 1, !tbaa !40, !alias.scope !111, !noalias !112
  %i.gv = sub nsw <4 x i32> %i.gi, %broadcast.splat277
  %i.gw = sitofp nsz <4 x i32> %i.gv to <4 x float>
  %i.gx = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gw, <4 x float> %broadcast.splat279, <4 x float> %broadcast.splat281)
  %i.gy = fptosi <4 x float> %i.gx to <4 x i32>   ; 3 uses
  %i.gz = icmp ult <4 x i32> %i.gy, splat (i32 256)
  %i.ha = icmp sgt <4 x i32> %i.gy, splat (i32 -1)
  %i.hb = sext <4 x i1> %i.ha to <4 x i8>
  %i.hc = trunc nuw <4 x i32> %i.gy to <4 x i8>
  %i.hd = select <4 x i1> %i.gz, <4 x i8> %i.hc, <4 x i8> %i.hb
  %i.he = getelementptr inbounds i8, ptr %.0128166.us.us, i64 %index288
  store <4 x i8> %i.hd, ptr %i.he, align 1, !tbaa !40, !alias.scope !113, !noalias !114
  %i.hf = sub nsw <4 x i32> %i.gk, %broadcast.splat283
  %i.hg = sitofp nsz <4 x i32> %i.hf to <4 x float>
  %i.hh = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hg, <4 x float> %broadcast.splat285, <4 x float> %broadcast.splat287)
  %i.hi = fptosi <4 x float> %i.hh to <4 x i32>   ; 3 uses
  %i.hj = icmp ult <4 x i32> %i.hi, splat (i32 256)
  %i.hk = icmp sgt <4 x i32> %i.hi, splat (i32 -1)
  %i.hl = sext <4 x i1> %i.hk to <4 x i8>
  %i.hm = trunc nuw <4 x i32> %i.hi to <4 x i8>
  %i.hn = select <4 x i1> %i.hj, <4 x i8> %i.hm, <4 x i8> %i.hl
  %i.ho = getelementptr inbounds i8, ptr %.0127167.us.us, i64 %index288
  store <4 x i8> %i.hn, ptr %i.ho, align 1, !tbaa !40, !alias.scope !115, !noalias !116
  %index.next292 = add nuw i64 %index288, 4       ; 2 uses
  %i.hp = icmp eq i64 %index.next292, %n.vec269
  br i1 %i.hp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !104

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n293, label %..preheader_crit_edge.us.us.preheader, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec269, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 7 uses
  %i.hq = getelementptr inbounds i8, ptr %.0133161.us.us, i64 %indvars.iv
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !40
  %i.hs = getelementptr inbounds i8, ptr %.0132162.us.us, i64 %indvars.iv
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !40
  %i.hu = getelementptr inbounds i8, ptr %.0131163.us.us, i64 %indvars.iv
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !40
  %i.hw = zext i8 %i.hv to i32
  %i.hx = getelementptr inbounds i8, ptr %.0129165.us.us, i64 %indvars.iv
  %i.hy = zext i8 %i.hr to i32
  %i.hz = zext i8 %i.ht to i32
  %i.ia = insertelement <2 x i32> poison, i32 %i.hy, i64 0
  %i.ib = insertelement <2 x i32> %i.ia, i32 %i.hz, i64 1
  %i.ic = sub nsw <2 x i32> %i.ib, %i.bx
  %i.id = sitofp <2 x i32> %i.ic to <2 x float>
  %i.ie = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.id, <2 x float> %i.cb, <2 x float> %i.cn)
  %i.if = fptosi <2 x float> %i.ie to <2 x i32>   ; 3 uses
  %i.ig = extractelement <2 x i32> %i.if, i64 0   ; 2 uses
  %isnotneg.i142.us.us = icmp sgt i32 %i.ig, -1
  %i.ih = sext i1 %isnotneg.i142.us.us to i8
  %i.ii = trunc nuw i32 %i.ig to i8
  %i.ij = icmp ult <2 x i32> %i.if, splat (i32 256) ; 2 uses
  %i.ik = extractelement <2 x i1> %i.ij, i64 0
  %.0.i143.us.us = select i1 %i.ik, i8 %i.ii, i8 %i.ih
  store i8 %.0.i143.us.us, ptr %i.hx, align 1, !tbaa !40
  %i.il = extractelement <2 x i32> %i.if, i64 1   ; 2 uses
  %isnotneg.i139.us.us = icmp sgt i32 %i.il, -1
  %i.im = sext i1 %isnotneg.i139.us.us to i8
  %i.in = trunc nuw i32 %i.il to i8
  %i.io = extractelement <2 x i1> %i.ij, i64 1
  %.0.i140.us.us = select i1 %i.io, i8 %i.in, i8 %i.im
  %i.ip = getelementptr inbounds i8, ptr %.0128166.us.us, i64 %indvars.iv
  store i8 %.0.i140.us.us, ptr %i.ip, align 1, !tbaa !40
  %i.iq = sub nsw i32 %i.hw, %i.bz
  %i.ir = sitofp nsz i32 %i.iq to float
  %i.is = tail call nsz float @llvm.fmuladd.f32(float %i.ir, float %i.cd, float %i.co)
  %i.it = fptosi float %i.is to i32               ; 3 uses
  %.not.i135.us.us = icmp ult i32 %i.it, 256
  %isnotneg.i136.us.us = icmp sgt i32 %i.it, -1
  %i.iu = sext i1 %isnotneg.i136.us.us to i8
  %i.iv = trunc nuw i32 %i.it to i8
  %.0.i137.us.us = select i1 %.not.i135.us.us, i8 %i.iv, i8 %i.iu
  %i.iw = getelementptr inbounds i8, ptr %.0127167.us.us, i64 %indvars.iv
  store i8 %.0.i137.us.us, ptr %i.iw, align 1, !tbaa !40
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.cr ; 2 uses
  %i.ix = icmp slt i64 %indvars.iv.next, %i.cs
  br i1 %i.ix, label %vec.epilog.scalar.ph, label %..preheader_crit_edge.us.us.preheader, !llvm.loop !105

..preheader_crit_edge.us.us.preheader:            ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  br label %..preheader_crit_edge.us.us

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader, %bb.e
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %bb.e ], [ 0, %..preheader_crit_edge.us.us.preheader ] ; 3 uses
  %i.iy = load i32, ptr %i.cp, align 4, !tbaa !41
  %i.iz = icmp eq i32 %i.iy, 4
  br i1 %i.iz, label %bb.e, label %.critedge.us.us

bb.e:                                             ; preds = %..preheader_crit_edge.us.us
  %i.ja = getelementptr inbounds i8, ptr %.0130164.us.us, i64 %indvars.iv171
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !40
  %i.jc = zext i8 %i.jb to i32
  %i.jd = sub nsw i32 %i.jc, %i.bw
  %i.je = sitofp nsz i32 %i.jd to float
  %i.jf = tail call nsz float @llvm.fmuladd.f32(float %i.je, float %i.cf, float %i.cq)
  %i.jg = fptosi float %i.jf to i32               ; 3 uses
  %.not.i.us.us = icmp ult i32 %i.jg, 256
  %isnotneg.i.us.us = icmp sgt i32 %i.jg, -1
  %i.jh = sext i1 %isnotneg.i.us.us to i8
  %i.ji = trunc nuw i32 %i.jg to i8
  %.0.i.us.us = select i1 %.not.i.us.us, i8 %i.ji, i8 %i.jh
  %i.jj = getelementptr inbounds i8, ptr %.0126168.us.us, i64 %indvars.iv171
  store i8 %.0.i.us.us, ptr %i.jj, align 1, !tbaa !40
  %indvars.iv.next172 = add nsw i64 %indvars.iv171, %i.cr ; 2 uses
  %i.jk = icmp slt i64 %indvars.iv.next172, %i.cs
  br i1 %i.jk, label %..preheader_crit_edge.us.us, label %.critedge.us.us, !llvm.loop !106

.critedge.us.us:                                  ; preds = %bb.e, %..preheader_crit_edge.us.us
  %i.jl = getelementptr inbounds i8, ptr %.0133161.us.us, i64 %7
  %i.jm = getelementptr inbounds i8, ptr %.0132162.us.us, i64 %7
  %i.jn = getelementptr inbounds i8, ptr %.0131163.us.us, i64 %7
  %i.jo = getelementptr inbounds i8, ptr %.0130164.us.us, i64 %7
  %i.jp = getelementptr inbounds i8, ptr %.0129165.us.us, i64 %i.u
  %i.jq = getelementptr inbounds i8, ptr %.0128166.us.us, i64 %i.u
  %i.jr = getelementptr inbounds i8, ptr %.0127167.us.us, i64 %i.u
  %i.js = getelementptr inbounds i8, ptr %.0126168.us.us, i64 %i.u
  %i.jt = add nsw i32 %.0125169.us.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.jt, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %iter.check, !llvm.loop !107

._crit_edge:                                      ; preds = %.critedge.us.us, %.preheader156.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_preserve_slice_8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !36   ; 2 uses
  %i.v = sext i32 %i.u to i64                     ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !35
  %i.y = sext i32 %i.x to i64                     ; 4 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !38
  %i.aa = mul nsw i32 %i.u, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 8 uses
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ab
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ab
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !52
  %i.ba = icmp eq i32 %i.az, 32
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !47
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !47
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !47
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !47
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !34
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !34
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !34
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !34
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !34
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !34
  %i.ce = sitofp nsz i32 %i.cd to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in178 = phi float [ %i.bh, %bb.b ], [ %i.bw, %bb.c ]
  %.in180 = phi float [ %i.bc, %bb.b ], [ %i.bp, %bb.c ]
  %.in182 = phi float [ %i.bf, %bb.b ], [ %i.bt, %bb.c ]
  %i.cf = phi nsz float [ %i.bm, %bb.b ], [ %i.ce, %bb.c ]
  %i.cg = phi <2 x float> [ %i.bj, %bb.b ], [ %i.bz, %bb.c ]
  %i.ch = phi <2 x float> [ %i.bk, %bb.b ], [ %i.cb, %bb.c ]
  %i.ci = fptosi float %.in182 to i32
  %i.cj = fptosi float %.in180 to i32
  %i.ck = fptosi <2 x float> %i.cg to <2 x i32>
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !47
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !47
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !47
  %i.cr = icmp slt i32 %i.n, %i.s
  br i1 %i.cr, label %.preheader184.lr.ph, label %._crit_edge

.preheader184.lr.ph:                              ; preds = %bb.d
  %i.cs = fptosi float %i.cf to i32
  %i.ct = fptosi <2 x float> %i.ch to <2 x i32>
  %i.cu = fptosi float %.in178 to i32
  %i.cv = icmp sgt i32 %i.d, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.cx = sitofp nsz i32 %i.cu to float
  %i.cy = sitofp <2 x i32> %i.ct to <2 x float>
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.db = sitofp nsz i32 %i.cs to float
  br i1 %i.cv, label %.preheader184.us.preheader, label %._crit_edge

.preheader184.us.preheader:                       ; preds = %.preheader184.lr.ph
  %i.dc = sext i32 %i.f to i64                    ; 2 uses
  %i.dd = zext nneg i32 %i.d to i64               ; 2 uses
  br label %.preheader184.us

.preheader184.us:                                 ; preds = %.preheader184.us.preheader, %.critedge.us
  %.0147197.us = phi i32 [ %i.ix, %.critedge.us ], [ %i.n, %.preheader184.us.preheader ]
  %.0148196.us = phi ptr [ %i.iw, %.critedge.us ], [ %i.ax, %.preheader184.us.preheader ] ; 2 uses
  %.0149195.us = phi ptr [ %i.iv, %.critedge.us ], [ %i.au, %.preheader184.us.preheader ] ; 2 uses
  %.0150194.us = phi ptr [ %i.iu, %.critedge.us ], [ %i.ar, %.preheader184.us.preheader ] ; 2 uses
  %.0151193.us = phi ptr [ %i.it, %.critedge.us ], [ %i.ao, %.preheader184.us.preheader ] ; 2 uses
  %.0152192.us = phi ptr [ %i.is, %.critedge.us ], [ %i.al, %.preheader184.us.preheader ] ; 2 uses
  %.0153191.us = phi ptr [ %i.ir, %.critedge.us ], [ %i.ai, %.preheader184.us.preheader ] ; 2 uses
  %.0154190.us = phi ptr [ %i.iq, %.critedge.us ], [ %i.af, %.preheader184.us.preheader ] ; 2 uses
  %.0155189.us = phi ptr [ %i.ip, %.critedge.us ], [ %i.ac, %.preheader184.us.preheader ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader184.us, %preserve_color.exit.thread.us
  %indvars.iv = phi i64 [ 0, %.preheader184.us ], [ %indvars.iv.next, %preserve_color.exit.thread.us ] ; 7 uses
  %i.de = getelementptr inbounds i8, ptr %.0155189.us, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1, !tbaa !40  ; 2 uses
  %i.dg = zext i8 %i.df to i32
  %i.dh = getelementptr inbounds i8, ptr %.0154190.us, i64 %indvars.iv
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !40  ; 2 uses
  %i.dj = zext i8 %i.di to i32
  %i.dk = getelementptr inbounds i8, ptr %.0153191.us, i64 %indvars.iv
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !40  ; 2 uses
  %i.dm = zext i8 %i.dl to i32
  %i.dn = load i32, ptr %i.ay, align 8, !tbaa !52
  %i.do = icmp eq i32 %i.dn, 32
  br i1 %i.do, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dp = load i32, ptr %i.cw, align 4, !tbaa !53
  %i.dq = sitofp nsz i32 %i.dp to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dr = phi nsz float [ %i.dq, %bb.f ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.ds = sub nsw i32 %i.dg, %i.cj
  %i.dt = sitofp nsz i32 %i.ds to float
  %i.du = tail call nsz float @llvm.fmuladd.f32(float %i.dt, float %i.cm, float %i.cx)
  %i.dv = fptosi float %i.du to i32               ; 3 uses
  %i.dw = insertelement <2 x i32> poison, i32 %i.dj, i64 0
  %i.dx = insertelement <2 x i32> %i.dw, i32 %i.dm, i64 1
  %i.dy = sub nsw <2 x i32> %i.dx, %i.ck
  %i.dz = sitofp <2 x i32> %i.dy to <2 x float>
  %i.ea = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.co, <2 x float> %i.cy)
  %i.eb = fptosi <2 x float> %i.ea to <2 x i32>   ; 3 uses
  %i.ec = load i32, ptr %i.cz, align 8, !tbaa !50
  %i.ed = uitofp i8 %i.df to float                ; 6 uses
  %i.ee = uitofp i8 %i.di to float                ; 6 uses
  %i.ef = uitofp i8 %i.dl to float                ; 6 uses
  %i.eg = sitofp nsz i32 %i.dv to float           ; 7 uses
  %i.eh = sitofp <2 x i32> %i.eb to <2 x float>   ; 13 uses
  switch i32 %i.ec, label %preserve_color.exit.thread.us [
    i32 1, label %bb.m
    i32 2, label %bb.l
    i32 3, label %bb.k
    i32 4, label %bb.j
    i32 5, label %bb.i
    i32 6, label %bb.h
end_hunk_0
begin_hunk_1_@colorlevels_preserve_slice_16:bb.a
  %i.ga = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gc = fdiv nsz <2 x float> %i.fz, %i.gb       ; 2 uses
  %i.gd = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ge = insertelement <2 x float> %i.gd, float %i.ey, i64 0
  %i.gf = fdiv nsz <2 x float> %i.ge, %i.gb       ; 2 uses
  %i.gg = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.gh = fdiv nsz <2 x float> %i.gg, %i.gb       ; 2 uses
  %i.gi = fmul nsz <2 x float> %i.gf, %i.gf
  %i.gj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.gc, <2 x float> %i.gi)
  %i.gk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.gh, <2 x float> %i.gj)
  %i.gl = tail call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.gk)
  br label %preserve_color.exit.us

bb.j:                                             ; preds = %bb.g
  %i.gm = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %i.fa, i64 1
  %i.go = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gp = insertelement <2 x float> %i.go, float %i.ey, i64 0
  %i.gq = fadd nsz <2 x float> %i.gn, %i.gp
  %i.gr = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.gs = fadd nsz <2 x float> %i.gq, %i.gr
  br label %preserve_color.exit.us

bb.k:                                             ; preds = %bb.g
  %i.gt = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.gu = insertelement <2 x float> %i.gt, float %i.fa, i64 1
  %i.gv = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gw = insertelement <2 x float> %i.gv, float %i.ey, i64 0
  %i.gx = fadd nsz <2 x float> %i.gu, %i.gw
  %i.gy = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.gz = fadd nsz <2 x float> %i.gx, %i.gy
  %i.ha = fadd nsz <2 x float> %i.gz, splat (float 1.000000e+00)
  %i.hb = fdiv nsz <2 x float> %i.ha, splat (float 3.000000e+00)
  br label %preserve_color.exit.us

bb.l:                                             ; preds = %bb.g
  %i.hc = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.hd = insertelement <2 x float> %i.hc, float %i.fa, i64 1 ; 2 uses
  %i.he = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hf = insertelement <2 x float> %i.he, float %i.ey, i64 0 ; 2 uses
  %i.hg = fcmp nsz ogt <2 x float> %i.hd, %i.hf
  %i.hh = select <2 x i1> %i.hg, <2 x float> %i.hd, <2 x float> %i.hf ; 2 uses
  %i.hi = insertelement <2 x float> %i.fb, float %i.ez, i64 0 ; 2 uses
  %i.hj = fcmp nsz ogt <2 x float> %i.hh, %i.hi
  %i.hk = select <2 x i1> %i.hj, <2 x float> %i.hh, <2 x float> %i.hi
  br label %preserve_color.exit.us

bb.m:                                             ; preds = %bb.g
  %i.hl = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.hm = insertelement <2 x float> %i.hl, float %i.fa, i64 1 ; 3 uses
  %i.hn = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ho = insertelement <2 x float> %i.hn, float %i.ey, i64 0 ; 3 uses
  %i.hp = fcmp nsz ogt <2 x float> %i.hm, %i.ho   ; 2 uses
  %i.hq = select <2 x i1> %i.hp, <2 x float> %i.hm, <2 x float> %i.ho ; 2 uses
  %i.hr = insertelement <2 x float> %i.fb, float %i.ez, i64 0 ; 4 uses
  %i.hs = fcmp nsz ogt <2 x float> %i.hq, %i.hr
  %i.ht = select <2 x i1> %i.hs, <2 x float> %i.hq, <2 x float> %i.hr
  %i.hu = select <2 x i1> %i.hp, <2 x float> %i.ho, <2 x float> %i.hm ; 2 uses
  %i.hv = fcmp nsz ogt <2 x float> %i.hu, %i.hr
  %i.hw = select <2 x i1> %i.hv, <2 x float> %i.hr, <2 x float> %i.hu
  %i.hx = fadd nsz <2 x float> %i.ht, %i.hw
  br label %preserve_color.exit.us

preserve_color.exit.us:                           ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.hy = phi <2 x float> [ %i.fx, %bb.h ], [ %i.hx, %bb.m ], [ %i.hk, %bb.l ], [ %i.hb, %bb.k ], [ %i.gs, %bb.j ], [ %i.gl, %bb.i ] ; 2 uses
  %i.hz = extractelement <2 x float> %i.hy, i64 1 ; 2 uses
  %i.ia = fcmp nsz ogt float %i.hz, 0.000000e+00
  br i1 %i.ia, label %bb.n, label %preserve_color.exit.thread.us

bb.n:                                             ; preds = %preserve_color.exit.us
  %i.ib = extractelement <2 x float> %i.hy, i64 0
  %i.ic = fdiv nsz float %i.ib, %i.hz             ; 2 uses
  %i.id = fmul nsz float %i.ic, %i.fa
  %i.ie = fptosi float %i.id to i32
  %i.if = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.ig = shufflevector <2 x float> %i.if, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ih = fmul nsz <2 x float> %i.ig, %i.fb
  %i.ii = fptosi <2 x float> %i.ih to <2 x i32>
  br label %preserve_color.exit.thread.us

preserve_color.exit.thread.us:                    ; preds = %bb.n, %preserve_color.exit.us, %bb.g
  %.0145.us = phi i32 [ %i.ie, %bb.n ], [ %i.es, %preserve_color.exit.us ], [ %i.es, %bb.g ] ; 3 uses
  %i.ij = phi <2 x i32> [ %i.ii, %bb.n ], [ %i.ew, %preserve_color.exit.us ], [ %i.ew, %bb.g ] ; 3 uses
  %.not.i164.us = icmp ult i32 %.0145.us, 65536
  %isnotneg.i165.us = icmp sgt i32 %.0145.us, -1
  %i.ik = sext i1 %isnotneg.i165.us to i16
  %i.il = trunc nuw i32 %.0145.us to i16
  %.0.i166.us = select i1 %.not.i164.us, i16 %i.il, i16 %i.ik
  %i.im = getelementptr inbounds [2 x i8], ptr %.0151193.us, i64 %indvars.iv
  store i16 %.0.i166.us, ptr %i.im, align 2, !tbaa !49
  %i.in = getelementptr inbounds [2 x i8], ptr %.0150194.us, i64 %indvars.iv
  %i.io = icmp ult <2 x i32> %i.ij, splat (i32 65536)
  %i.ip = icmp sgt <2 x i32> %i.ij, splat (i32 -1)
  %i.iq = sext <2 x i1> %i.ip to <2 x i16>
  %i.ir = trunc <2 x i32> %i.ij to <2 x i16>
  %i.is = select <2 x i1> %i.io, <2 x i16> %i.ir, <2 x i16> %i.iq ; 2 uses
  %i.it = extractelement <2 x i16> %i.is, i64 0
  store i16 %i.it, ptr %i.in, align 2, !tbaa !49
  %i.iu = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %indvars.iv
  %i.iv = extractelement <2 x i16> %i.is, i64 1
  store i16 %i.iv, ptr %i.iu, align 2, !tbaa !49
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.df ; 2 uses
  %i.iw = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.iw, label %bb.e, label %.lr.ph187.us, !llvm.loop !146

.lr.ph187.split.us:                               ; preds = %.lr.ph187.split.us.preheader231, %.lr.ph187.split.us
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %.lr.ph187.split.us ], [ %indvars.iv218.ph, %.lr.ph187.split.us.preheader231 ] ; 3 uses
  %i.ix = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %indvars.iv218
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !49
  %i.iz = zext i16 %i.iy to i32
  %i.ja = sub nsw i32 %i.iz, %i.ci
  %i.jb = sitofp nsz i32 %i.ja to float
  %i.jc = tail call nsz float @llvm.fmuladd.f32(float %i.jb, float %i.cq, float %i.cz)
  %i.jd = fptosi float %i.jc to i32               ; 3 uses
  %.not.i.us = icmp ult i32 %i.jd, 65536
  %isnotneg.i.us = icmp sgt i32 %i.jd, -1
  %i.je = sext i1 %isnotneg.i.us to i16
  %i.jf = trunc nuw i32 %i.jd to i16
  %.0.i.us = select i1 %.not.i.us, i16 %i.jf, i16 %i.je
  %i.jg = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %indvars.iv218
  store i16 %.0.i.us, ptr %i.jg, align 2, !tbaa !49
  %indvars.iv.next219 = add nsw i64 %indvars.iv218, %i.df ; 2 uses
  %i.jh = icmp slt i64 %indvars.iv.next219, %i.dg
  br i1 %i.jh, label %.lr.ph187.split.us, label %.critedge.us, !llvm.loop !147

.critedge.us:                                     ; preds = %.lr.ph187.split.us, %middle.block, %.lr.ph187.us
  %i.ji = getelementptr inbounds [2 x i8], ptr %.0155189.us, i64 %i.da
  %i.jj = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %i.da
  %i.jk = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %i.da
  %i.jl = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %i.da
  %i.jm = getelementptr inbounds [2 x i8], ptr %.0151193.us, i64 %i.db
  %i.jn = getelementptr inbounds [2 x i8], ptr %.0150194.us, i64 %i.db
  %i.jo = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %i.db
  %i.jp = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %i.db
  %i.jq = add nsw i32 %.0147197.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.jq, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader184.us, !llvm.loop !148

.lr.ph187.us:                                     ; preds = %preserve_color.exit.thread.us
  br i1 %i.di, label %.lr.ph187.split.us.preheader, label %.critedge.us

.lr.ph187.split.us.preheader:                     ; preds = %.lr.ph187.us
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.eb
  br i1 %brmerge, label %.lr.ph187.split.us.preheader231, label %vector.body

vector.body:                                      ; preds = %.lr.ph187.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph187.split.us.preheader ] ; 3 uses
  %i.jr = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.jr, align 2, !tbaa !49, !alias.scope !153
  %i.js = zext <8 x i16> %wide.load to <8 x i32>
  %i.jt = sub nsw <8 x i32> %i.js, %broadcast.splat
  %i.ju = sitofp nsz <8 x i32> %i.jt to <8 x float>
  %i.jv = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ju, <8 x float> %broadcast.splat228, <8 x float> %broadcast.splat230)
  %i.jw = fptosi <8 x float> %i.jv to <8 x i32>   ; 3 uses
  %i.jx = icmp ult <8 x i32> %i.jw, splat (i32 65536)
  %i.jy = icmp sgt <8 x i32> %i.jw, splat (i32 -1)
  %i.jz = sext <8 x i1> %i.jy to <8 x i16>
  %i.ka = trunc nuw <8 x i32> %i.jw to <8 x i16>
  %i.kb = select <8 x i1> %i.jx, <8 x i16> %i.ka, <8 x i16> %i.jz
  %i.kc = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %index
  store <8 x i16> %i.kb, ptr %i.kc, align 2, !tbaa !49, !alias.scope !154, !noalias !153
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kd = icmp eq i64 %index.next, %n.vec
  br i1 %i.kd, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us, label %.lr.ph187.split.us.preheader231

.lr.ph187.split.us.preheader231:                  ; preds = %.lr.ph187.split.us.preheader, %middle.block
  %indvars.iv218.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph187.split.us.preheader ]
  br label %.lr.ph187.split.us

._crit_edge:                                      ; preds = %.critedge.us, %.preheader184.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_slice_8_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 2 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 2 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %5 = load i32, ptr %4, align 8, !tbaa !35       ; 4 uses
  %6 = load i32, ptr %i.t, align 4, !tbaa !36     ; 4 uses
  %7 = sext i32 %6 to i64                         ; 5 uses
  %i.u = sext i32 %5 to i64                       ; 5 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.w = mul i32 %6, %i.n
  %i.x = sext i32 %i.w to i64                     ; 10 uses
  %i.y = getelementptr i8, ptr %i.v, i64 %i.x     ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !38  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.x   ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !38 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.x   ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !38
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.x
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.x   ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !38 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 %i.x   ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !38 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.x   ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !38
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.x
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.av = load i32, ptr %i.au, align 8, !tbaa !52
  %i.aw = icmp eq i32 %i.av, 32
  br i1 %i.aw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ba = load <2 x float>, ptr %i.ax, align 4, !tbaa !47
  %i.bb = load <2 x float>, ptr %i.az, align 4, !tbaa !47
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bd = load <2 x float>, ptr %i.ay, align 4, !tbaa !47
  %i.be = load <2 x float>, ptr %i.bc, align 4, !tbaa !47
  %i.bf = shufflevector <2 x float> %i.bd, <2 x float> %i.be, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bj = load <2 x i32>, ptr %i.bg, align 4, !tbaa !34
  %i.bk = sitofp <2 x i32> %i.bj to <2 x float>
  %i.bl = load <2 x i32>, ptr %i.bi, align 4, !tbaa !34
  %i.bm = sitofp <2 x i32> %i.bl to <2 x float>
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.bo = load <2 x i32>, ptr %i.bh, align 4, !tbaa !34
  %i.bp = load <2 x i32>, ptr %i.bn, align 4, !tbaa !34
  %i.bq = shufflevector <2 x i32> %i.bo, <2 x i32> %i.bp, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.br = sitofp <4 x i32> %i.bq to <4 x float>
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bs = phi <2 x float> [ %i.ba, %bb.b ], [ %i.bk, %bb.c ]
  %i.bt = phi <2 x float> [ %i.bb, %bb.b ], [ %i.bm, %bb.c ]
  %i.bu = phi <4 x float> [ %i.bf, %bb.b ], [ %i.br, %bb.c ] ; 4 uses
  %i.bv = extractelement <4 x float> %i.bu, i64 1
  %i.bw = fptosi float %i.bv to i32
  %i.bx = fptosi <2 x float> %i.bs to <2 x i32>   ; 5 uses
  %i.by = extractelement <4 x float> %i.bu, i64 0
  %i.bz = fptosi float %i.by to i32               ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cb = load <2 x float>, ptr %i.ca, align 8, !tbaa !47 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !47 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !47
  %i.cg = icmp slt i32 %i.n, %i.s
  br i1 %i.cg, label %.preheader156.lr.ph, label %._crit_edge

.preheader156.lr.ph:                              ; preds = %bb.d
  %i.ch = extractelement <4 x float> %i.bu, i64 3
  %i.ci = fptosi float %i.ch to i32
  %i.cj = extractelement <4 x float> %i.bu, i64 2
  %i.ck = fptosi float %i.cj to i32
  %i.cl = fptosi <2 x float> %i.bt to <2 x i32>
  %i.cm = icmp sgt i32 %i.d, 0
  %i.cn = sitofp <2 x i32> %i.cl to <2 x float>   ; 5 uses
  %i.co = sitofp nsz i32 %i.ck to float           ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.cq = sitofp nsz i32 %i.ci to float
  br i1 %i.cm, label %.preheader156.us.us.preheader, label %._crit_edge

.preheader156.us.us.preheader:                    ; preds = %.preheader156.lr.ph
  %i.cr = sext i32 %i.f to i64                    ; 3 uses
  %i.cs = zext nneg i32 %i.d to i64               ; 8 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.cr, i64 %i.cs)
  %i.ct = add nsw i64 %smax, -1                   ; 2 uses
  %i.cu = xor i64 %i.m, -1
  %i.cv = add i64 %i.r, %i.cu
  %i.cw = and i64 %i.cv, 4294967295               ; 2 uses
  %i.cx = mul nsw i64 %i.cw, %i.u
  %i.cy = mul nsw i64 %i.cw, %7
  %i.cz = insertelement <4 x ptr> poison, ptr %i.an, i64 0
  %i.da = shufflevector <4 x ptr> %i.cz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.db = insertelement <4 x ptr> poison, ptr %i.aq, i64 0 ; 2 uses
  %i.dc = insertelement <4 x ptr> %i.db, ptr %i.y, i64 1
  %i.dd = insertelement <4 x ptr> %i.dc, ptr %i.ab, i64 2
  %i.de = insertelement <4 x ptr> %i.dd, ptr %i.ae, i64 3
  %i.df = insertelement <2 x ptr> poison, ptr %i.y, i64 0
  %i.dg = insertelement <2 x ptr> %i.df, ptr %i.ab, i64 1
  %i.dh = shufflevector <4 x ptr> %i.db, <4 x ptr> poison, <2 x i32> zeroinitializer
  %8 = insertelement <8 x i32> poison, i32 %6, i64 0
  %9 = insertelement <8 x i32> poison, i32 %5, i64 0
  %min.iters.check = icmp ugt i32 %i.d, 3
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.di = add i64 %i.ct, %i.cx
  %i.dj = add i64 %i.di, %i.x
  %i.dk = add i64 %i.dj, 1                        ; 3 uses
  %scevgep = getelementptr i8, ptr %i.aj, i64 %i.dk ; 5 uses
  %scevgep178 = getelementptr i8, ptr %i.am, i64 %i.dk ; 2 uses
  %scevgep179 = getelementptr i8, ptr %i.ap, i64 %i.dk ; 3 uses
  %i.dl = add i64 %i.ct, %i.cy
  %i.dm = add i64 %i.dl, %i.x
  %i.dn = add i64 %i.dm, 1                        ; 3 uses
  %scevgep180 = getelementptr i8, ptr %i.v, i64 %i.dn ; 3 uses
  %scevgep181 = getelementptr i8, ptr %i.aa, i64 %i.dn ; 3 uses
  %scevgep182 = getelementptr i8, ptr %i.ad, i64 %i.dn ; 3 uses
  %bound0 = icmp ult ptr %i.ak, %scevgep178
  %bound1 = icmp ult ptr %i.an, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0184 = icmp ult ptr %i.ak, %scevgep179
  %bound1185 = icmp ult ptr %i.aq, %scevgep
  %found.conflict186 = and i1 %bound0184, %bound1185
  %bound0189 = icmp ult ptr %i.ak, %scevgep180
  %bound1190 = icmp ult ptr %i.y, %scevgep
  %found.conflict191 = and i1 %bound0189, %bound1190
  %i.do = or <8 x i32> %8, %9
  %bound0195 = icmp ult ptr %i.ak, %scevgep181
  %bound1196 = icmp ult ptr %i.ab, %scevgep
  %found.conflict197 = and i1 %bound0195, %bound1196
  %bound0201 = icmp ult ptr %i.ak, %scevgep182
  %bound1202 = icmp ult ptr %i.ae, %scevgep
  %found.conflict203 = and i1 %bound0201, %bound1202
  %i.dp = icmp slt <8 x i32> %i.do, zeroinitializer
  %10 = shufflevector <8 x i1> %i.dp, <8 x i1> poison, <8 x i32> zeroinitializer
  %bound0243 = icmp ult ptr %i.aq, %scevgep182
  %bound1244 = icmp ult ptr %i.ae, %scevgep179
  %stride.check187 = icmp slt i32 %5, 0
  %i.dq = insertelement <4 x ptr> poison, ptr %scevgep179, i64 0 ; 2 uses
  %i.dr = insertelement <4 x ptr> %i.dq, ptr %scevgep180, i64 1
  %i.ds = insertelement <4 x ptr> %i.dr, ptr %scevgep181, i64 2
  %i.dt = insertelement <4 x ptr> %i.ds, ptr %scevgep182, i64 3
  %i.du = icmp ult <4 x ptr> %i.da, %i.dt
  %i.dv = insertelement <4 x ptr> poison, ptr %scevgep178, i64 0
  %i.dw = shufflevector <4 x ptr> %i.dv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dx = icmp ult <4 x ptr> %i.de, %i.dw
  %i.dy = insertelement <2 x ptr> poison, ptr %scevgep180, i64 0
  %i.dz = insertelement <2 x ptr> %i.dy, ptr %scevgep181, i64 1
  %i.ea = icmp ult <2 x ptr> %i.dh, %i.dz
  %i.eb = shufflevector <4 x ptr> %i.dq, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ec = icmp ult <2 x ptr> %i.dg, %i.eb
  %i.ed = insertelement <8 x i1> poison, i1 %bound0243, i64 6
  %i.ee = insertelement <8 x i1> %i.ed, i1 %stride.check187, i64 7
  %i.ef = shufflevector <4 x i1> %i.du, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eg = shufflevector <8 x i1> %i.ef, <8 x i1> %i.ee, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.eh = shufflevector <2 x i1> %i.ea, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ei = shufflevector <8 x i1> %i.eg, <8 x i1> %i.eh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.ej = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1244, i64 6
  %i.ek = shufflevector <4 x i1> %i.dx, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.el = shufflevector <8 x i1> %i.ek, <8 x i1> %i.ej, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.em = shufflevector <2 x i1> %i.ec, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.en = shufflevector <8 x i1> %i.el, <8 x i1> %i.em, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.eo = and <8 x i1> %i.ei, %i.en
  %i.ep = or i32 %6, %5
  %i.eq = icmp slt i32 %i.ep, 0
  %rdx.op = or <8 x i1> %i.eo, %10
  %i.er = bitcast <8 x i1> %rdx.op to i8
  %i.es = icmp ne i8 %i.er, 0
  %op.rdx = or i1 %i.es, %found.conflict186
  %op.rdx294 = or i1 %found.conflict, %found.conflict191
  %op.rdx295 = or i1 %found.conflict197, %found.conflict203
  %op.rdx296 = or i1 %op.rdx, %op.rdx294
  %op.rdx297 = or i1 %op.rdx295, %i.eq
  %op.rdx298 = or i1 %op.rdx296, %op.rdx297
  %min.iters.check250 = icmp ult i32 %i.d, 16
  %i.et = and i64 %i.cs, 12
  %n.vec = and i64 %i.cs, 2147483632              ; 4 uses
  %broadcast.splat = shufflevector <2 x i32> %i.bx, <2 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splat252 = shufflevector <2 x float> %i.cb, <2 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splat254 = shufflevector <2 x float> %i.cn, <2 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splat256 = shufflevector <2 x i32> %i.bx, <2 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat258 = shufflevector <2 x float> %i.cb, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat260 = shufflevector <2 x float> %i.cn, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert261 = insertelement <16 x i32> poison, i32 %i.bz, i64 0
  %broadcast.splat262 = shufflevector <16 x i32> %broadcast.splatinsert261, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert263 = insertelement <16 x float> poison, float %i.cd, i64 0
  %broadcast.splat264 = shufflevector <16 x float> %broadcast.splatinsert263, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert265 = insertelement <16 x float> poison, float %i.co, i64 0
  %broadcast.splat266 = shufflevector <16 x float> %broadcast.splatinsert265, <16 x float> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.cs
  %min.epilog.iters.check = icmp eq i64 %i.et, 0
  %n.vec269 = and i64 %i.cs, 2147483644           ; 3 uses
  %broadcast.splat271 = shufflevector <2 x i32> %i.bx, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat273 = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat275 = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat277 = shufflevector <2 x i32> %i.bx, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat279 = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat281 = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert282 = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %broadcast.splat283 = shufflevector <4 x i32> %broadcast.splatinsert282, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert284 = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat285 = shufflevector <4 x float> %broadcast.splatinsert284, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert286 = insertelement <4 x float> poison, float %i.co, i64 0
  %broadcast.splat287 = shufflevector <4 x float> %broadcast.splatinsert286, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n293 = icmp eq i64 %n.vec269, %i.cs
  br label %iter.check

iter.check:                                       ; preds = %.preheader156.us.us.preheader, %.critedge.us.us
  %.0125169.us.us = phi i32 [ %i.jt, %.critedge.us.us ], [ %i.n, %.preheader156.us.us.preheader ]
  %.0126168.us.us = phi ptr [ %i.js, %.critedge.us.us ], [ %i.at, %.preheader156.us.us.preheader ] ; 2 uses
  %.0127167.us.us = phi ptr [ %i.jr, %.critedge.us.us ], [ %i.aq, %.preheader156.us.us.preheader ] ; 4 uses
  %.0128166.us.us = phi ptr [ %i.jq, %.critedge.us.us ], [ %i.an, %.preheader156.us.us.preheader ] ; 4 uses
  %.0129165.us.us = phi ptr [ %i.jp, %.critedge.us.us ], [ %i.ak, %.preheader156.us.us.preheader ] ; 4 uses
  %.0130164.us.us = phi ptr [ %i.jo, %.critedge.us.us ], [ %i.ah, %.preheader156.us.us.preheader ] ; 2 uses
  %.0131163.us.us = phi ptr [ %i.jn, %.critedge.us.us ], [ %i.ae, %.preheader156.us.us.preheader ] ; 4 uses
  %.0132162.us.us = phi ptr [ %i.jm, %.critedge.us.us ], [ %i.ab, %.preheader156.us.us.preheader ] ; 4 uses
  %.0133161.us.us = phi ptr [ %i.jl, %.critedge.us.us ], [ %i.y, %.preheader156.us.us.preheader ] ; 4 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx298
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check250, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 7 uses
  %i.eu = getelementptr inbounds i8, ptr %.0133161.us.us, i64 %index
  %wide.load = load <16 x i8>, ptr %i.eu, align 1, !tbaa !40, !alias.scope !167
  %i.ev = zext <16 x i8> %wide.load to <16 x i32>
  %i.ew = getelementptr inbounds i8, ptr %.0132162.us.us, i64 %index
  %wide.load267 = load <16 x i8>, ptr %i.ew, align 1, !tbaa !40, !alias.scope !168
  %i.ex = zext <16 x i8> %wide.load267 to <16 x i32>
  %i.ey = getelementptr inbounds i8, ptr %.0131163.us.us, i64 %index
  %wide.load268 = load <16 x i8>, ptr %i.ey, align 1, !tbaa !40, !alias.scope !169
  %i.ez = zext <16 x i8> %wide.load268 to <16 x i32>
  %i.fa = sub nsw <16 x i32> %i.ev, %broadcast.splat
  %i.fb = sitofp nsz <16 x i32> %i.fa to <16 x float>
  %i.fc = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.fb, <16 x float> %broadcast.splat252, <16 x float> %broadcast.splat254)
  %i.fd = fptosi <16 x float> %i.fc to <16 x i32> ; 3 uses
  %i.fe = icmp ult <16 x i32> %i.fd, splat (i32 256)
  %i.ff = icmp sgt <16 x i32> %i.fd, splat (i32 -1)
  %i.fg = sext <16 x i1> %i.ff to <16 x i8>
  %i.fh = trunc nuw <16 x i32> %i.fd to <16 x i8>
  %i.fi = select <16 x i1> %i.fe, <16 x i8> %i.fh, <16 x i8> %i.fg
  %i.fj = getelementptr inbounds i8, ptr %.0129165.us.us, i64 %index
  store <16 x i8> %i.fi, ptr %i.fj, align 1, !tbaa !40, !alias.scope !170, !noalias !171
  %i.fk = sub nsw <16 x i32> %i.ex, %broadcast.splat256
  %i.fl = sitofp nsz <16 x i32> %i.fk to <16 x float>
  %i.fm = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.fl, <16 x float> %broadcast.splat258, <16 x float> %broadcast.splat260)
  %i.fn = fptosi <16 x float> %i.fm to <16 x i32> ; 3 uses
  %i.fo = icmp ult <16 x i32> %i.fn, splat (i32 256)
  %i.fp = icmp sgt <16 x i32> %i.fn, splat (i32 -1)
  %i.fq = sext <16 x i1> %i.fp to <16 x i8>
  %i.fr = trunc nuw <16 x i32> %i.fn to <16 x i8>
  %i.fs = select <16 x i1> %i.fo, <16 x i8> %i.fr, <16 x i8> %i.fq
  %i.ft = getelementptr inbounds i8, ptr %.0128166.us.us, i64 %index
  store <16 x i8> %i.fs, ptr %i.ft, align 1, !tbaa !40, !alias.scope !172, !noalias !173
  %i.fu = sub nsw <16 x i32> %i.ez, %broadcast.splat262
  %i.fv = sitofp nsz <16 x i32> %i.fu to <16 x float>
  %i.fw = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.fv, <16 x float> %broadcast.splat264, <16 x float> %broadcast.splat266)
  %i.fx = fptosi <16 x float> %i.fw to <16 x i32> ; 3 uses
  %i.fy = icmp ult <16 x i32> %i.fx, splat (i32 256)
  %i.fz = icmp sgt <16 x i32> %i.fx, splat (i32 -1)
  %i.ga = sext <16 x i1> %i.fz to <16 x i8>
  %i.gb = trunc nuw <16 x i32> %i.fx to <16 x i8>
  %i.gc = select <16 x i1> %i.fy, <16 x i8> %i.gb, <16 x i8> %i.ga
  %i.gd = getelementptr inbounds i8, ptr %.0127167.us.us, i64 %index
  store <16 x i8> %i.gc, ptr %i.gd, align 1, !tbaa !40, !alias.scope !174, !noalias !175
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ge = icmp eq i64 %index.next, %n.vec
  br i1 %i.ge, label %middle.block, label %vector.body, !llvm.loop !162

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..preheader_crit_edge.us.us.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !54

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index288 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next292, %vec.epilog.vector.body ] ; 7 uses
  %i.gf = getelementptr inbounds i8, ptr %.0133161.us.us, i64 %index288
  %wide.load289 = load <4 x i8>, ptr %i.gf, align 1, !tbaa !40, !alias.scope !167
  %i.gg = zext <4 x i8> %wide.load289 to <4 x i32>
  %i.gh = getelementptr inbounds i8, ptr %.0132162.us.us, i64 %index288
  %wide.load290 = load <4 x i8>, ptr %i.gh, align 1, !tbaa !40, !alias.scope !168
  %i.gi = zext <4 x i8> %wide.load290 to <4 x i32>
  %i.gj = getelementptr inbounds i8, ptr %.0131163.us.us, i64 %index288
  %wide.load291 = load <4 x i8>, ptr %i.gj, align 1, !tbaa !40, !alias.scope !169
  %i.gk = zext <4 x i8> %wide.load291 to <4 x i32>
  %i.gl = sub nsw <4 x i32> %i.gg, %broadcast.splat271
  %i.gm = sitofp nsz <4 x i32> %i.gl to <4 x float>
  %i.gn = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gm, <4 x float> %broadcast.splat273, <4 x float> %broadcast.splat275)
  %i.go = fptosi <4 x float> %i.gn to <4 x i32>   ; 3 uses
  %i.gp = icmp ult <4 x i32> %i.go, splat (i32 256)
  %i.gq = icmp sgt <4 x i32> %i.go, splat (i32 -1)
  %i.gr = sext <4 x i1> %i.gq to <4 x i8>
  %i.gs = trunc nuw <4 x i32> %i.go to <4 x i8>
  %i.gt = select <4 x i1> %i.gp, <4 x i8> %i.gs, <4 x i8> %i.gr
  %i.gu = getelementptr inbounds i8, ptr %.0129165.us.us, i64 %index288
  store <4 x i8> %i.gt, ptr %i.gu, align 1, !tbaa !40, !alias.scope !170, !noalias !171
  %i.gv = sub nsw <4 x i32> %i.gi, %broadcast.splat277
  %i.gw = sitofp nsz <4 x i32> %i.gv to <4 x float>
  %i.gx = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gw, <4 x float> %broadcast.splat279, <4 x float> %broadcast.splat281)
  %i.gy = fptosi <4 x float> %i.gx to <4 x i32>   ; 3 uses
  %i.gz = icmp ult <4 x i32> %i.gy, splat (i32 256)
  %i.ha = icmp sgt <4 x i32> %i.gy, splat (i32 -1)
  %i.hb = sext <4 x i1> %i.ha to <4 x i8>
  %i.hc = trunc nuw <4 x i32> %i.gy to <4 x i8>
  %i.hd = select <4 x i1> %i.gz, <4 x i8> %i.hc, <4 x i8> %i.hb
  %i.he = getelementptr inbounds i8, ptr %.0128166.us.us, i64 %index288
  store <4 x i8> %i.hd, ptr %i.he, align 1, !tbaa !40, !alias.scope !172, !noalias !173
  %i.hf = sub nsw <4 x i32> %i.gk, %broadcast.splat283
  %i.hg = sitofp nsz <4 x i32> %i.hf to <4 x float>
  %i.hh = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hg, <4 x float> %broadcast.splat285, <4 x float> %broadcast.splat287)
  %i.hi = fptosi <4 x float> %i.hh to <4 x i32>   ; 3 uses
  %i.hj = icmp ult <4 x i32> %i.hi, splat (i32 256)
  %i.hk = icmp sgt <4 x i32> %i.hi, splat (i32 -1)
  %i.hl = sext <4 x i1> %i.hk to <4 x i8>
  %i.hm = trunc nuw <4 x i32> %i.hi to <4 x i8>
  %i.hn = select <4 x i1> %i.hj, <4 x i8> %i.hm, <4 x i8> %i.hl
  %i.ho = getelementptr inbounds i8, ptr %.0127167.us.us, i64 %index288
  store <4 x i8> %i.hn, ptr %i.ho, align 1, !tbaa !40, !alias.scope !174, !noalias !175
  %index.next292 = add nuw i64 %index288, 4       ; 2 uses
  %i.hp = icmp eq i64 %index.next292, %n.vec269
  br i1 %i.hp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !163

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n293, label %..preheader_crit_edge.us.us.preheader, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec269, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 7 uses
  %i.hq = getelementptr inbounds i8, ptr %.0133161.us.us, i64 %indvars.iv
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !40
  %i.hs = getelementptr inbounds i8, ptr %.0132162.us.us, i64 %indvars.iv
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !40
  %i.hu = getelementptr inbounds i8, ptr %.0131163.us.us, i64 %indvars.iv
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !40
  %i.hw = zext i8 %i.hv to i32
  %i.hx = getelementptr inbounds i8, ptr %.0129165.us.us, i64 %indvars.iv
  %i.hy = zext i8 %i.hr to i32
  %i.hz = zext i8 %i.ht to i32
  %i.ia = insertelement <2 x i32> poison, i32 %i.hy, i64 0
  %i.ib = insertelement <2 x i32> %i.ia, i32 %i.hz, i64 1
  %i.ic = sub nsw <2 x i32> %i.ib, %i.bx
  %i.id = sitofp <2 x i32> %i.ic to <2 x float>
  %i.ie = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.id, <2 x float> %i.cb, <2 x float> %i.cn)
  %i.if = fptosi <2 x float> %i.ie to <2 x i32>   ; 3 uses
  %i.ig = extractelement <2 x i32> %i.if, i64 0   ; 2 uses
  %isnotneg.i142.us.us = icmp sgt i32 %i.ig, -1
  %i.ih = sext i1 %isnotneg.i142.us.us to i8
  %i.ii = trunc nuw i32 %i.ig to i8
  %i.ij = icmp ult <2 x i32> %i.if, splat (i32 256) ; 2 uses
  %i.ik = extractelement <2 x i1> %i.ij, i64 0
  %.0.i143.us.us = select i1 %i.ik, i8 %i.ii, i8 %i.ih
  store i8 %.0.i143.us.us, ptr %i.hx, align 1, !tbaa !40
  %i.il = extractelement <2 x i32> %i.if, i64 1   ; 2 uses
  %isnotneg.i139.us.us = icmp sgt i32 %i.il, -1
  %i.im = sext i1 %isnotneg.i139.us.us to i8
  %i.in = trunc nuw i32 %i.il to i8
  %i.io = extractelement <2 x i1> %i.ij, i64 1
  %.0.i140.us.us = select i1 %i.io, i8 %i.in, i8 %i.im
  %i.ip = getelementptr inbounds i8, ptr %.0128166.us.us, i64 %indvars.iv
  store i8 %.0.i140.us.us, ptr %i.ip, align 1, !tbaa !40
  %i.iq = sub nsw i32 %i.hw, %i.bz
  %i.ir = sitofp nsz i32 %i.iq to float
  %i.is = tail call nsz float @llvm.fmuladd.f32(float %i.ir, float %i.cd, float %i.co)
  %i.it = fptosi float %i.is to i32               ; 3 uses
  %.not.i135.us.us = icmp ult i32 %i.it, 256
  %isnotneg.i136.us.us = icmp sgt i32 %i.it, -1
  %i.iu = sext i1 %isnotneg.i136.us.us to i8
  %i.iv = trunc nuw i32 %i.it to i8
  %.0.i137.us.us = select i1 %.not.i135.us.us, i8 %i.iv, i8 %i.iu
  %i.iw = getelementptr inbounds i8, ptr %.0127167.us.us, i64 %indvars.iv
  store i8 %.0.i137.us.us, ptr %i.iw, align 1, !tbaa !40
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.cr ; 2 uses
  %i.ix = icmp slt i64 %indvars.iv.next, %i.cs
  br i1 %i.ix, label %vec.epilog.scalar.ph, label %..preheader_crit_edge.us.us.preheader, !llvm.loop !164

..preheader_crit_edge.us.us.preheader:            ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  br label %..preheader_crit_edge.us.us

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader, %bb.e
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %bb.e ], [ 0, %..preheader_crit_edge.us.us.preheader ] ; 3 uses
  %i.iy = load i32, ptr %i.cp, align 4, !tbaa !41
  %i.iz = icmp eq i32 %i.iy, 4
  br i1 %i.iz, label %bb.e, label %.critedge.us.us

bb.e:                                             ; preds = %..preheader_crit_edge.us.us
  %i.ja = getelementptr inbounds i8, ptr %.0130164.us.us, i64 %indvars.iv171
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !40
  %i.jc = zext i8 %i.jb to i32
  %i.jd = sub nsw i32 %i.jc, %i.bw
  %i.je = sitofp nsz i32 %i.jd to float
  %i.jf = tail call nsz float @llvm.fmuladd.f32(float %i.je, float %i.cf, float %i.cq)
  %i.jg = fptosi float %i.jf to i32               ; 3 uses
  %.not.i.us.us = icmp ult i32 %i.jg, 256
  %isnotneg.i.us.us = icmp sgt i32 %i.jg, -1
  %i.jh = sext i1 %isnotneg.i.us.us to i8
  %i.ji = trunc nuw i32 %i.jg to i8
  %.0.i.us.us = select i1 %.not.i.us.us, i8 %i.ji, i8 %i.jh
  %i.jj = getelementptr inbounds i8, ptr %.0126168.us.us, i64 %indvars.iv171
  store i8 %.0.i.us.us, ptr %i.jj, align 1, !tbaa !40
  %indvars.iv.next172 = add nsw i64 %indvars.iv171, %i.cr ; 2 uses
  %i.jk = icmp slt i64 %indvars.iv.next172, %i.cs
  br i1 %i.jk, label %..preheader_crit_edge.us.us, label %.critedge.us.us, !llvm.loop !165

.critedge.us.us:                                  ; preds = %bb.e, %..preheader_crit_edge.us.us
  %i.jl = getelementptr inbounds i8, ptr %.0133161.us.us, i64 %7
  %i.jm = getelementptr inbounds i8, ptr %.0132162.us.us, i64 %7
  %i.jn = getelementptr inbounds i8, ptr %.0131163.us.us, i64 %7
  %i.jo = getelementptr inbounds i8, ptr %.0130164.us.us, i64 %7
  %i.jp = getelementptr inbounds i8, ptr %.0129165.us.us, i64 %i.u
  %i.jq = getelementptr inbounds i8, ptr %.0128166.us.us, i64 %i.u
  %i.jr = getelementptr inbounds i8, ptr %.0127167.us.us, i64 %i.u
  %i.js = getelementptr inbounds i8, ptr %.0126168.us.us, i64 %i.u
  %i.jt = add nsw i32 %.0125169.us.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.jt, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %iter.check, !llvm.loop !166

._crit_edge:                                      ; preds = %.critedge.us.us, %.preheader156.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_preserve_slice_8_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !36   ; 2 uses
  %i.v = sext i32 %i.u to i64                     ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !35
  %i.y = sext i32 %i.x to i64                     ; 4 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !38
  %i.aa = mul nsw i32 %i.u, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 8 uses
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ab
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ab
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !52
  %i.ba = icmp eq i32 %i.az, 32
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !47
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !47
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !47
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !47
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !34
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !34
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !34
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !34
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !34
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !34
  %i.ce = sitofp nsz i32 %i.cd to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in178 = phi float [ %i.bh, %bb.b ], [ %i.bw, %bb.c ]
  %.in180 = phi float [ %i.bc, %bb.b ], [ %i.bp, %bb.c ]
  %.in182 = phi float [ %i.bf, %bb.b ], [ %i.bt, %bb.c ]
  %i.cf = phi nsz float [ %i.bm, %bb.b ], [ %i.ce, %bb.c ]
  %i.cg = phi <2 x float> [ %i.bj, %bb.b ], [ %i.bz, %bb.c ]
  %i.ch = phi <2 x float> [ %i.bk, %bb.b ], [ %i.cb, %bb.c ]
  %i.ci = fptosi float %.in182 to i32
  %i.cj = fptosi float %.in180 to i32
  %i.ck = fptosi <2 x float> %i.cg to <2 x i32>
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !47
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !47
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !47
  %i.cr = icmp slt i32 %i.n, %i.s
  br i1 %i.cr, label %.preheader184.lr.ph, label %._crit_edge

.preheader184.lr.ph:                              ; preds = %bb.d
  %i.cs = fptosi float %i.cf to i32
  %i.ct = fptosi <2 x float> %i.ch to <2 x i32>
  %i.cu = fptosi float %.in178 to i32
  %i.cv = icmp sgt i32 %i.d, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.cx = sitofp nsz i32 %i.cu to float
  %i.cy = sitofp <2 x i32> %i.ct to <2 x float>
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.db = sitofp nsz i32 %i.cs to float
  br i1 %i.cv, label %.preheader184.us.preheader, label %._crit_edge

.preheader184.us.preheader:                       ; preds = %.preheader184.lr.ph
  %i.dc = sext i32 %i.f to i64                    ; 2 uses
  %i.dd = zext nneg i32 %i.d to i64               ; 2 uses
  br label %.preheader184.us

.preheader184.us:                                 ; preds = %.preheader184.us.preheader, %.critedge.us
  %.0147197.us = phi i32 [ %i.ix, %.critedge.us ], [ %i.n, %.preheader184.us.preheader ]
  %.0148196.us = phi ptr [ %i.iw, %.critedge.us ], [ %i.ax, %.preheader184.us.preheader ] ; 2 uses
  %.0149195.us = phi ptr [ %i.iv, %.critedge.us ], [ %i.au, %.preheader184.us.preheader ] ; 2 uses
  %.0150194.us = phi ptr [ %i.iu, %.critedge.us ], [ %i.ar, %.preheader184.us.preheader ] ; 2 uses
  %.0151193.us = phi ptr [ %i.it, %.critedge.us ], [ %i.ao, %.preheader184.us.preheader ] ; 2 uses
  %.0152192.us = phi ptr [ %i.is, %.critedge.us ], [ %i.al, %.preheader184.us.preheader ] ; 2 uses
  %.0153191.us = phi ptr [ %i.ir, %.critedge.us ], [ %i.ai, %.preheader184.us.preheader ] ; 2 uses
  %.0154190.us = phi ptr [ %i.iq, %.critedge.us ], [ %i.af, %.preheader184.us.preheader ] ; 2 uses
  %.0155189.us = phi ptr [ %i.ip, %.critedge.us ], [ %i.ac, %.preheader184.us.preheader ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader184.us, %preserve_color.exit.thread.us
  %indvars.iv = phi i64 [ 0, %.preheader184.us ], [ %indvars.iv.next, %preserve_color.exit.thread.us ] ; 7 uses
  %i.de = getelementptr inbounds i8, ptr %.0155189.us, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1, !tbaa !40  ; 2 uses
  %i.dg = zext i8 %i.df to i32
  %i.dh = getelementptr inbounds i8, ptr %.0154190.us, i64 %indvars.iv
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !40  ; 2 uses
  %i.dj = zext i8 %i.di to i32
  %i.dk = getelementptr inbounds i8, ptr %.0153191.us, i64 %indvars.iv
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !40  ; 2 uses
  %i.dm = zext i8 %i.dl to i32
  %i.dn = load i32, ptr %i.ay, align 8, !tbaa !52
  %i.do = icmp eq i32 %i.dn, 32
  br i1 %i.do, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dp = load i32, ptr %i.cw, align 4, !tbaa !53
  %i.dq = sitofp nsz i32 %i.dp to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dr = phi nsz float [ %i.dq, %bb.f ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.ds = sub nsw i32 %i.dg, %i.cj
  %i.dt = sitofp nsz i32 %i.ds to float
  %i.du = tail call nsz float @llvm.fmuladd.f32(float %i.dt, float %i.cm, float %i.cx)
  %i.dv = fptosi float %i.du to i32               ; 3 uses
  %i.dw = insertelement <2 x i32> poison, i32 %i.dj, i64 0
  %i.dx = insertelement <2 x i32> %i.dw, i32 %i.dm, i64 1
  %i.dy = sub nsw <2 x i32> %i.dx, %i.ck
  %i.dz = sitofp <2 x i32> %i.dy to <2 x float>
  %i.ea = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.co, <2 x float> %i.cy)
  %i.eb = fptosi <2 x float> %i.ea to <2 x i32>   ; 3 uses
  %i.ec = load i32, ptr %i.cz, align 8, !tbaa !50
  %i.ed = uitofp i8 %i.df to float                ; 6 uses
  %i.ee = uitofp i8 %i.di to float                ; 6 uses
  %i.ef = uitofp i8 %i.dl to float                ; 6 uses
  %i.eg = sitofp nsz i32 %i.dv to float           ; 7 uses
  %i.eh = sitofp <2 x i32> %i.eb to <2 x float>   ; 13 uses
  switch i32 %i.ec, label %preserve_color.exit.thread.us [
    i32 1, label %bb.m
    i32 2, label %bb.l
    i32 3, label %bb.k
    i32 4, label %bb.j
    i32 5, label %bb.i
    i32 6, label %bb.h
end_hunk_1
