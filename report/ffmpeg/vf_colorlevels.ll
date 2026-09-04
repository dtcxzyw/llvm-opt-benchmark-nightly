Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_colorlevels?download=true
inline.NumInlined: 49
inline.NumDeleted: 4
begin_hunk_0_@config_input:bb.a

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
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load <2 x i32>, ptr %i.t, align 8, !tbaa !34 ; 4 uses
  %i.v = extractelement <2 x i32> %i.u, i64 1     ; 3 uses
  %i.w = sext i32 %i.v to i64                     ; 5 uses
  %i.x = extractelement <2 x i32> %i.u, i64 0     ; 3 uses
  %i.y = sext i32 %i.x to i64                     ; 5 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 10 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 %i.ab   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ab  ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.ab  ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ab
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.ab  ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.ab  ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 %i.ab  ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ab
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !52
  %i.ba = icmp eq i32 %i.az, 32
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.be = load <2 x float>, ptr %i.bb, align 4, !tbaa !47
  %i.bf = load <2 x float>, ptr %i.bd, align 4, !tbaa !47
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bh = load <2 x float>, ptr %i.bc, align 4, !tbaa !47
  %i.bi = load <2 x float>, ptr %i.bg, align 4, !tbaa !47
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bn = load <2 x i32>, ptr %i.bk, align 4, !tbaa !34
  %i.bo = sitofp <2 x i32> %i.bn to <2 x float>
  %i.bp = load <2 x i32>, ptr %i.bm, align 4, !tbaa !34
  %i.bq = sitofp <2 x i32> %i.bp to <2 x float>
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.bs = load <2 x i32>, ptr %i.bl, align 4, !tbaa !34
  %i.bt = load <2 x i32>, ptr %i.br, align 4, !tbaa !34
  %i.bu = shufflevector <2 x i32> %i.bs, <2 x i32> %i.bt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bv = sitofp <4 x i32> %i.bu to <4 x float>
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bw = phi <2 x float> [ %i.be, %bb.b ], [ %i.bo, %bb.c ]
  %i.bx = phi <2 x float> [ %i.bf, %bb.b ], [ %i.bq, %bb.c ]
  %i.by = phi <4 x float> [ %i.bj, %bb.b ], [ %i.bv, %bb.c ] ; 4 uses
  %i.bz = extractelement <4 x float> %i.by, i64 1
  %i.ca = fptosi float %i.bz to i32
  %i.cb = fptosi <2 x float> %i.bw to <2 x i32>   ; 5 uses
  %i.cc = extractelement <4 x float> %i.by, i64 0
  %i.cd = fptosi float %i.cc to i32               ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cf = load <2 x float>, ptr %i.ce, align 8, !tbaa !47 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !47 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !47
  %i.ck = icmp slt i32 %i.n, %i.s
  br i1 %i.ck, label %.preheader156.lr.ph, label %._crit_edge

.preheader156.lr.ph:                              ; preds = %bb.d
  %i.cl = extractelement <4 x float> %i.by, i64 3
  %i.cm = fptosi float %i.cl to i32
  %i.cn = extractelement <4 x float> %i.by, i64 2
  %i.co = fptosi float %i.cn to i32
  %i.cp = fptosi <2 x float> %i.bx to <2 x i32>
  %i.cq = icmp sgt i32 %i.d, 0
  %i.cr = sitofp <2 x i32> %i.cp to <2 x float>   ; 5 uses
  %i.cs = sitofp nsz i32 %i.co to float           ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.cu = sitofp nsz i32 %i.cm to float
  br i1 %i.cq, label %.preheader156.us.us.preheader, label %._crit_edge

.preheader156.us.us.preheader:                    ; preds = %.preheader156.lr.ph
  %i.cv = sext i32 %i.f to i64                    ; 2 uses
  %i.cw = zext nneg i32 %i.d to i64               ; 8 uses
  %i.cx = add nsw i64 %i.cw, -1                   ; 2 uses
  %i.cy = xor i64 %i.m, -1
  %i.cz = add i64 %i.r, %i.cy
  %i.da = and i64 %i.cz, 4294967295               ; 2 uses
  %i.db = mul nsw i64 %i.da, %i.y
  %i.dc = mul nsw i64 %i.da, %i.w
  %i.dd = insertelement <4 x ptr> poison, ptr %i.ar, i64 0
  %i.de = shufflevector <4 x ptr> %i.dd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.df = insertelement <4 x ptr> poison, ptr %i.au, i64 0 ; 2 uses
  %i.dg = insertelement <4 x ptr> %i.df, ptr %i.ac, i64 1
  %i.dh = insertelement <4 x ptr> %i.dg, ptr %i.af, i64 2
  %i.di = insertelement <4 x ptr> %i.dh, ptr %i.ai, i64 3
  %i.dj = insertelement <2 x ptr> poison, ptr %i.ac, i64 0
  %i.dk = insertelement <2 x ptr> %i.dj, ptr %i.af, i64 1
  %i.dl = shufflevector <4 x ptr> %i.df, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.dm = shufflevector <2 x i32> %i.u, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.dn = shufflevector <2 x i32> %i.u, <2 x i32> poison, <8 x i32> zeroinitializer
  %min.iters.check = icmp ugt i32 %i.d, 3
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.do = add i64 %i.cx, %i.db
  %i.dp = add i64 %i.do, %i.ab
  %i.dq = add i64 %i.dp, 1                        ; 3 uses
  %scevgep = getelementptr i8, ptr %i.an, i64 %i.dq ; 5 uses
  %scevgep178 = getelementptr i8, ptr %i.aq, i64 %i.dq ; 2 uses
  %scevgep179 = getelementptr i8, ptr %i.at, i64 %i.dq ; 3 uses
  %i.dr = add i64 %i.cx, %i.dc
  %i.ds = add i64 %i.dr, %i.ab
  %i.dt = add i64 %i.ds, 1                        ; 3 uses
  %scevgep180 = getelementptr i8, ptr %i.z, i64 %i.dt ; 3 uses
  %scevgep181 = getelementptr i8, ptr %i.ae, i64 %i.dt ; 3 uses
  %scevgep182 = getelementptr i8, ptr %i.ah, i64 %i.dt ; 3 uses
  %bound0 = icmp ult ptr %i.ao, %scevgep178
  %bound1 = icmp ult ptr %i.ar, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0184 = icmp ult ptr %i.ao, %scevgep179
  %bound1185 = icmp ult ptr %i.au, %scevgep
  %found.conflict186 = and i1 %bound0184, %bound1185
  %bound0189 = icmp ult ptr %i.ao, %scevgep180
  %bound1190 = icmp ult ptr %i.ac, %scevgep
  %found.conflict191 = and i1 %bound0189, %bound1190
  %i.du = or <8 x i32> %i.dm, %i.dn
  %bound0195 = icmp ult ptr %i.ao, %scevgep181
  %bound1196 = icmp ult ptr %i.af, %scevgep
  %found.conflict197 = and i1 %bound0195, %bound1196
  %bound0201 = icmp ult ptr %i.ao, %scevgep182
  %bound1202 = icmp ult ptr %i.ai, %scevgep
  %found.conflict203 = and i1 %bound0201, %bound1202
  %i.dv = icmp slt <8 x i32> %i.du, zeroinitializer
  %bound0243 = icmp ult ptr %i.au, %scevgep182
  %bound1244 = icmp ult ptr %i.ai, %scevgep179
  %stride.check187 = icmp slt i32 %i.x, 0
  %i.dw = insertelement <4 x ptr> poison, ptr %scevgep179, i64 0 ; 2 uses
  %i.dx = insertelement <4 x ptr> %i.dw, ptr %scevgep180, i64 1
  %i.dy = insertelement <4 x ptr> %i.dx, ptr %scevgep181, i64 2
  %i.dz = insertelement <4 x ptr> %i.dy, ptr %scevgep182, i64 3
  %i.ea = icmp ult <4 x ptr> %i.de, %i.dz
  %i.eb = insertelement <4 x ptr> poison, ptr %scevgep178, i64 0
  %i.ec = shufflevector <4 x ptr> %i.eb, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ed = icmp ult <4 x ptr> %i.di, %i.ec
  %i.ee = insertelement <2 x ptr> poison, ptr %scevgep180, i64 0
  %i.ef = insertelement <2 x ptr> %i.ee, ptr %scevgep181, i64 1
  %i.eg = icmp ult <2 x ptr> %i.dl, %i.ef
  %i.eh = shufflevector <4 x ptr> %i.dw, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ei = icmp ult <2 x ptr> %i.dk, %i.eh
  %i.ej = insertelement <8 x i1> poison, i1 %bound0243, i64 6
  %i.ek = insertelement <8 x i1> %i.ej, i1 %stride.check187, i64 7
  %i.el = shufflevector <4 x i1> %i.ea, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.em = shufflevector <8 x i1> %i.el, <8 x i1> %i.ek, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.en = shufflevector <2 x i1> %i.eg, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eo = shufflevector <8 x i1> %i.em, <8 x i1> %i.en, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.ep = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1244, i64 6
  %i.eq = shufflevector <4 x i1> %i.ed, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.er = shufflevector <8 x i1> %i.eq, <8 x i1> %i.ep, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.es = shufflevector <2 x i1> %i.ei, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.et = shufflevector <8 x i1> %i.er, <8 x i1> %i.es, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.eu = and <8 x i1> %i.eo, %i.et
  %i.ev = or i32 %i.v, %i.x
  %i.ew = icmp slt i32 %i.ev, 0
  %rdx.op = or <8 x i1> %i.eu, %i.dv
  %i.ex = bitcast <8 x i1> %rdx.op to i8
  %i.ey = icmp ne i8 %i.ex, 0
  %op.rdx = or i1 %i.ey, %found.conflict186
  %op.rdx294.a = or i1 %found.conflict, %found.conflict191
  %op.rdx295.a = or i1 %found.conflict197, %found.conflict203
  %op.rdx296.a = or i1 %op.rdx, %op.rdx294.a
  %op.rdx297.a = or i1 %op.rdx295.a, %i.ew
  %op.rdx298 = or i1 %op.rdx296.a, %op.rdx297.a
  %min.iters.check250 = icmp ult i32 %i.d, 16
  %i.ez = and i64 %i.cw, 12
  %n.vec = and i64 %i.cw, 2147483632              ; 4 uses
  %broadcast.splat = shufflevector <2 x i32> %i.cb, <2 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splat252 = shufflevector <2 x float> %i.cf, <2 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splat254 = shufflevector <2 x float> %i.cr, <2 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splat256 = shufflevector <2 x i32> %i.cb, <2 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat258 = shufflevector <2 x float> %i.cf, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat260 = shufflevector <2 x float> %i.cr, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert261 = insertelement <16 x i32> poison, i32 %i.cd, i64 0
  %broadcast.splat262 = shufflevector <16 x i32> %broadcast.splatinsert261, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert263 = insertelement <16 x float> poison, float %i.ch, i64 0
  %broadcast.splat264 = shufflevector <16 x float> %broadcast.splatinsert263, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert265 = insertelement <16 x float> poison, float %i.cs, i64 0
  %broadcast.splat266 = shufflevector <16 x float> %broadcast.splatinsert265, <16 x float> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.cw
  %min.epilog.iters.check = icmp eq i64 %i.ez, 0
  %n.vec269 = and i64 %i.cw, 2147483644           ; 3 uses
  %broadcast.splat271 = shufflevector <2 x i32> %i.cb, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat273 = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat275 = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat277 = shufflevector <2 x i32> %i.cb, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat279 = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat281 = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert282 = insertelement <4 x i32> poison, i32 %i.cd, i64 0
  %broadcast.splat283 = shufflevector <4 x i32> %broadcast.splatinsert282, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert284 = insertelement <4 x float> poison, float %i.ch, i64 0
  %broadcast.splat285 = shufflevector <4 x float> %broadcast.splatinsert284, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert286 = insertelement <4 x float> poison, float %i.cs, i64 0
  %broadcast.splat287 = shufflevector <4 x float> %broadcast.splatinsert286, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n293 = icmp eq i64 %n.vec269, %i.cw
  br label %iter.check

iter.check:                                       ; preds = %.preheader156.us.us.preheader, %.critedge.us.us
  %.0125169.us.us = phi i32 [ %i.jz, %.critedge.us.us ], [ %i.n, %.preheader156.us.us.preheader ]
  %.0126168.us.us = phi ptr [ %i.jy, %.critedge.us.us ], [ %i.ax, %.preheader156.us.us.preheader ] ; 2 uses
  %.0127167.us.us = phi ptr [ %i.jx, %.critedge.us.us ], [ %i.au, %.preheader156.us.us.preheader ] ; 4 uses
  %.0128166.us.us = phi ptr [ %i.jw, %.critedge.us.us ], [ %i.ar, %.preheader156.us.us.preheader ] ; 4 uses
  %.0129165.us.us = phi ptr [ %i.jv, %.critedge.us.us ], [ %i.ao, %.preheader156.us.us.preheader ] ; 4 uses
  %.0130164.us.us = phi ptr [ %i.ju, %.critedge.us.us ], [ %i.al, %.preheader156.us.us.preheader ] ; 2 uses
  %.0131163.us.us = phi ptr [ %i.jt, %.critedge.us.us ], [ %i.ai, %.preheader156.us.us.preheader ] ; 4 uses
  %.0132162.us.us = phi ptr [ %i.js, %.critedge.us.us ], [ %i.af, %.preheader156.us.us.preheader ] ; 4 uses
  %.0133161.us.us = phi ptr [ %i.jr, %.critedge.us.us ], [ %i.ac, %.preheader156.us.us.preheader ] ; 4 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx298
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check250, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 7 uses
  %i.fa = getelementptr inbounds i8, ptr %.0133161.us.us, i64 %index
  %wide.load = load <16 x i8>, ptr %i.fa, align 1, !tbaa !40, !alias.scope !108
  %i.fb = zext <16 x i8> %wide.load to <16 x i32>
  %i.fc = getelementptr inbounds i8, ptr %.0132162.us.us, i64 %index
  %wide.load267.a = load <16 x i8>, ptr %i.fc, align 1, !tbaa !40, !alias.scope !109
  %i.fd = zext <16 x i8> %wide.load267.a to <16 x i32>
  %i.fe = getelementptr inbounds i8, ptr %.0131163.us.us, i64 %index
  %wide.load268 = load <16 x i8>, ptr %i.fe, align 1, !tbaa !40, !alias.scope !110
  %i.ff = zext <16 x i8> %wide.load268 to <16 x i32>
  %i.fg = sub nsw <16 x i32> %i.fb, %broadcast.splat
  %i.fh = sitofp nsz <16 x i32> %i.fg to <16 x float>
  %i.fi = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.fh, <16 x float> %broadcast.splat252, <16 x float> %broadcast.splat254)
  %i.fj = fptosi <16 x float> %i.fi to <16 x i32> ; 3 uses
  %i.fk = icmp ult <16 x i32> %i.fj, splat (i32 256)
  %i.fl = icmp sgt <16 x i32> %i.fj, splat (i32 -1)
  %i.fm = sext <16 x i1> %i.fl to <16 x i8>
  %i.fn = trunc nuw <16 x i32> %i.fj to <16 x i8>
  %i.fo = select <16 x i1> %i.fk, <16 x i8> %i.fn, <16 x i8> %i.fm
  %i.fp = getelementptr inbounds i8, ptr %.0129165.us.us, i64 %index
  store <16 x i8> %i.fo, ptr %i.fp, align 1, !tbaa !40, !alias.scope !111, !noalias !112
  %i.fq = sub nsw <16 x i32> %i.fd, %broadcast.splat256
  %i.fr = sitofp nsz <16 x i32> %i.fq to <16 x float>
  %i.fs = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.fr, <16 x float> %broadcast.splat258, <16 x float> %broadcast.splat260)
  %i.ft = fptosi <16 x float> %i.fs to <16 x i32> ; 3 uses
  %i.fu = icmp ult <16 x i32> %i.ft, splat (i32 256)
  %i.fv = icmp sgt <16 x i32> %i.ft, splat (i32 -1)
  %i.fw = sext <16 x i1> %i.fv to <16 x i8>
  %i.fx = trunc nuw <16 x i32> %i.ft to <16 x i8>
  %i.fy = select <16 x i1> %i.fu, <16 x i8> %i.fx, <16 x i8> %i.fw
  %i.fz = getelementptr inbounds i8, ptr %.0128166.us.us, i64 %index
  store <16 x i8> %i.fy, ptr %i.fz, align 1, !tbaa !40, !alias.scope !113, !noalias !114
  %i.ga = sub nsw <16 x i32> %i.ff, %broadcast.splat262
  %i.gb = sitofp nsz <16 x i32> %i.ga to <16 x float>
  %i.gc = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.gb, <16 x float> %broadcast.splat264, <16 x float> %broadcast.splat266)
  %i.gd = fptosi <16 x float> %i.gc to <16 x i32> ; 3 uses
  %i.ge = icmp ult <16 x i32> %i.gd, splat (i32 256)
  %i.gf = icmp sgt <16 x i32> %i.gd, splat (i32 -1)
  %i.gg = sext <16 x i1> %i.gf to <16 x i8>
  %i.gh = trunc nuw <16 x i32> %i.gd to <16 x i8>
  %i.gi = select <16 x i1> %i.ge, <16 x i8> %i.gh, <16 x i8> %i.gg
  %i.gj = getelementptr inbounds i8, ptr %.0127167.us.us, i64 %index
  store <16 x i8> %i.gi, ptr %i.gj, align 1, !tbaa !40, !alias.scope !115, !noalias !116
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gk = icmp eq i64 %index.next, %n.vec
  br i1 %i.gk, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..preheader_crit_edge.us.us.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !54

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index288 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next292, %vec.epilog.vector.body ] ; 7 uses
  %i.gl = getelementptr inbounds i8, ptr %.0133161.us.us, i64 %index288
  %wide.load289.a = load <4 x i8>, ptr %i.gl, align 1, !tbaa !40, !alias.scope !108
  %i.gm = zext <4 x i8> %wide.load289.a to <4 x i32>
end_hunk_0
begin_hunk_1_@colorlevels_preserve_slice_8:bb.a
  %i.hj = fmul nsz float %i.hi, %i.eg
  %i.hk = fptosi float %i.hj to i32
  %i.hl = insertelement <2 x float> poison, float %i.hi, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hn = fmul nsz <2 x float> %i.hm, %i.eh
  %i.ho = fptosi <2 x float> %i.hn to <2 x i32>
  br label %preserve_color.exit.thread.us

preserve_color.exit.thread.us:                    ; preds = %bb.n, %preserve_color.exit.us, %bb.g
  %.0145.us = phi i32 [ %i.hk, %bb.n ], [ %i.dv, %preserve_color.exit.us ], [ %i.dv, %bb.g ] ; 3 uses
  %i.hp = phi <2 x i32> [ %i.ho, %bb.n ], [ %i.eb, %preserve_color.exit.us ], [ %i.eb, %bb.g ] ; 2 uses
  %.not.i164.us = icmp ult i32 %.0145.us, 256
  %isnotneg.i165.us = icmp sgt i32 %.0145.us, -1
  %i.hq = sext i1 %isnotneg.i165.us to i8
  %i.hr = trunc nuw i32 %.0145.us to i8
  %.0.i166.us = select i1 %.not.i164.us, i8 %i.hr, i8 %i.hq
  %i.hs = getelementptr inbounds i8, ptr %.0151193.us, i64 %indvars.iv
  store i8 %.0.i166.us, ptr %i.hs, align 1, !tbaa !40
  %i.ht = extractelement <2 x i32> %i.hp, i64 0   ; 3 uses
  %.not.i161.us = icmp ult i32 %i.ht, 256
  %isnotneg.i162.us = icmp sgt i32 %i.ht, -1
  %i.hu = sext i1 %isnotneg.i162.us to i8
  %i.hv = trunc nuw i32 %i.ht to i8
  %.0.i163.us = select i1 %.not.i161.us, i8 %i.hv, i8 %i.hu
  %i.hw = getelementptr inbounds i8, ptr %.0150194.us, i64 %indvars.iv
  store i8 %.0.i163.us, ptr %i.hw, align 1, !tbaa !40
  %i.hx = extractelement <2 x i32> %i.hp, i64 1   ; 3 uses
  %.not.i158.us = icmp ult i32 %i.hx, 256
  %isnotneg.i159.us = icmp sgt i32 %i.hx, -1
  %i.hy = sext i1 %isnotneg.i159.us to i8
  %i.hz = trunc nuw i32 %i.hx to i8
  %.0.i160.us = select i1 %.not.i158.us, i8 %i.hz, i8 %i.hy
  %i.ia = getelementptr inbounds i8, ptr %.0149195.us, i64 %indvars.iv
  store i8 %.0.i160.us, ptr %i.ia, align 1, !tbaa !40
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.dc ; 2 uses
  %i.ib = icmp slt i64 %indvars.iv.next, %i.dd
  br i1 %i.ib, label %bb.e, label %.lr.ph187.us, !llvm.loop !117

.lr.ph187.us:                                     ; preds = %preserve_color.exit.thread.us, %bb.o
  %indvars.iv199 = phi i64 [ %indvars.iv.next200, %bb.o ], [ 0, %preserve_color.exit.thread.us ] ; 3 uses
  %i.ic = load i32, ptr %i.da, align 4, !tbaa !41
  %i.id = icmp eq i32 %i.ic, 4
  br i1 %i.id, label %bb.o, label %.critedge.us

bb.o:                                             ; preds = %.lr.ph187.us
  %i.ie = getelementptr inbounds i8, ptr %.0152192.us, i64 %indvars.iv199
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !40
  %i.ig = zext i8 %i.if to i32
  %i.ih = sub nsw i32 %i.ig, %i.ci
  %i.ii = sitofp nsz i32 %i.ih to float
  %i.ij = tail call nsz float @llvm.fmuladd.f32(float %i.ii, float %i.cq, float %i.db)
  %i.ik = fptosi float %i.ij to i32               ; 3 uses
  %.not.i.us = icmp ult i32 %i.ik, 256
  %isnotneg.i.us = icmp sgt i32 %i.ik, -1
  %i.il = sext i1 %isnotneg.i.us to i8
  %i.im = trunc nuw i32 %i.ik to i8
  %.0.i.us = select i1 %.not.i.us, i8 %i.im, i8 %i.il
  %i.in = getelementptr inbounds i8, ptr %.0148196.us, i64 %indvars.iv199
  store i8 %.0.i.us, ptr %i.in, align 1, !tbaa !40
  %indvars.iv.next200 = add nsw i64 %indvars.iv199, %i.dc ; 2 uses
  %i.io = icmp slt i64 %indvars.iv.next200, %i.dd
  br i1 %i.io, label %.lr.ph187.us, label %.critedge.us, !llvm.loop !118

.critedge.us:                                     ; preds = %.lr.ph187.us, %bb.o
  %i.ip = getelementptr inbounds i8, ptr %.0155189.us, i64 %i.v
  %i.iq = getelementptr inbounds i8, ptr %.0154190.us, i64 %i.v
  %i.ir = getelementptr inbounds i8, ptr %.0153191.us, i64 %i.v
  %i.is = getelementptr inbounds i8, ptr %.0152192.us, i64 %i.v
  %i.it = getelementptr inbounds i8, ptr %.0151193.us, i64 %i.y
  %i.iu = getelementptr inbounds i8, ptr %.0150194.us, i64 %i.y
  %i.iv = getelementptr inbounds i8, ptr %.0149195.us, i64 %i.y
  %i.iw = getelementptr inbounds i8, ptr %.0148196.us, i64 %i.y
  %i.ix = add nsw i32 %.0147197.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ix, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader184.us, !llvm.loop !119

._crit_edge:                                      ; preds = %.critedge.us, %.preheader184.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_slice_16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 3 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 3 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load <2 x i32>, ptr %i.t, align 8, !tbaa !34
  %i.v = ashr <2 x i32> %i.u, splat (i32 1)       ; 4 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.x = extractelement <2 x i32> %i.v, i64 1     ; 4 uses
  %i.y = mul i32 %i.x, %i.n
  %i.z = sext i32 %i.y to i64                     ; 10 uses
  %i.aa = getelementptr [2 x i8], ptr %i.w, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38 ; 2 uses
  %i.ad = getelementptr [2 x i8], ptr %i.ac, i64 %i.z ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38 ; 2 uses
  %i.ag = getelementptr [2 x i8], ptr %i.af, i64 %i.z ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38 ; 2 uses
  %i.aj = getelementptr [2 x i8], ptr %i.ai, i64 %i.z ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38 ; 2 uses
  %i.am = getelementptr [2 x i8], ptr %i.al, i64 %i.z ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !38 ; 2 uses
  %i.ap = getelementptr [2 x i8], ptr %i.ao, i64 %i.z ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38 ; 2 uses
  %i.as = getelementptr [2 x i8], ptr %i.ar, i64 %i.z ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.av = getelementptr [2 x i8], ptr %i.au, i64 %i.z ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !52
  %i.ay = icmp eq i32 %i.ax, 32
  br i1 %i.ay, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bc = load <2 x float>, ptr %i.az, align 4, !tbaa !47
  %i.bd = load <2 x float>, ptr %i.bb, align 4, !tbaa !47
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bf = load <2 x float>, ptr %i.ba, align 4, !tbaa !47
  %i.bg = load <2 x float>, ptr %i.be, align 4, !tbaa !47
  %i.bh = shufflevector <2 x float> %i.bf, <2 x float> %i.bg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bl = load <2 x i32>, ptr %i.bi, align 4, !tbaa !34
  %i.bm = sitofp <2 x i32> %i.bl to <2 x float>
  %i.bn = load <2 x i32>, ptr %i.bk, align 4, !tbaa !34
  %i.bo = sitofp <2 x i32> %i.bn to <2 x float>
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.bq = load <2 x i32>, ptr %i.bj, align 4, !tbaa !34
  %i.br = load <2 x i32>, ptr %i.bp, align 4, !tbaa !34
  %i.bs = shufflevector <2 x i32> %i.bq, <2 x i32> %i.br, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bt = sitofp <4 x i32> %i.bs to <4 x float>
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bu = phi <2 x float> [ %i.bc, %bb.b ], [ %i.bm, %bb.c ]
  %i.bv = phi <2 x float> [ %i.bd, %bb.b ], [ %i.bo, %bb.c ]
  %i.bw = phi <4 x float> [ %i.bh, %bb.b ], [ %i.bt, %bb.c ] ; 4 uses
  %i.bx = extractelement <4 x float> %i.bw, i64 1
  %i.by = fptosi float %i.bx to i32               ; 2 uses
  %i.bz = fptosi <2 x float> %i.bu to <2 x i32>   ; 3 uses
  %i.ca = extractelement <4 x float> %i.bw, i64 0
  %i.cb = fptosi float %i.ca to i32               ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cd = load <2 x float>, ptr %i.cc, align 8, !tbaa !47 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !47 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !47 ; 2 uses
  %i.ci = icmp slt i32 %i.n, %i.s
  br i1 %i.ci, label %.preheader156.lr.ph, label %._crit_edge

.preheader156.lr.ph:                              ; preds = %bb.d
  %i.cj = extractelement <4 x float> %i.bw, i64 3
  %i.ck = fptosi float %i.cj to i32
  %i.cl = extractelement <4 x float> %i.bw, i64 2
  %i.cm = fptosi float %i.cl to i32
  %i.cn = fptosi <2 x float> %i.bv to <2 x i32>
  %i.co = icmp sgt i32 %i.d, 0
  %i.cp = sitofp <2 x i32> %i.cn to <2 x float>   ; 3 uses
  %i.cq = sitofp nsz i32 %i.cm to float           ; 2 uses
  %i.cr = sitofp nsz i32 %i.ck to float           ; 2 uses
  %i.cs = sext i32 %i.x to i64                    ; 6 uses
  %i.ct = extractelement <2 x i32> %i.v, i64 0    ; 4 uses
  %i.cu = sext i32 %i.ct to i64                   ; 6 uses
  br i1 %i.co, label %.preheader156.lr.ph.split.us.split.us, label %._crit_edge

.preheader156.lr.ph.split.us.split.us:            ; preds = %.preheader156.lr.ph
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !41
  %i.cx = icmp eq i32 %i.cw, 4
  %i.cy = sext i32 %i.f to i64                    ; 2 uses
  %i.cz = zext nneg i32 %i.d to i64               ; 8 uses
  %i.da = xor i64 %i.m, -1
  %i.db = add i64 %i.r, %i.da
  %i.dc = and i64 %i.db, 4294967295               ; 2 uses
  %i.dd = mul nsw i64 %i.dc, %i.cu
  %i.de = shl i64 %i.dd, 1
  %i.df = shl nsw i64 %i.z, 1                     ; 2 uses
  %i.dg = mul nsw i64 %i.dc, %i.cs
  %i.dh = shl i64 %i.dg, 1
  %i.di = xor i64 %i.m, -1
  %i.dj = add i64 %i.r, %i.di
  %i.dk = and i64 %i.dj, 4294967295               ; 2 uses
  %i.dl = mul nsw i64 %i.dk, %i.cu
  %i.dm = shl i64 %i.dl, 1
  %i.dn = shl nsw i64 %i.z, 1                     ; 2 uses
  %i.do = mul nsw i64 %i.dk, %i.cs
  %i.dp = shl i64 %i.do, 1
  %i.dq = insertelement <4 x ptr> poison, ptr %i.ap, i64 0
  %i.dr = shufflevector <4 x ptr> %i.dq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ds = insertelement <4 x ptr> poison, ptr %i.as, i64 0 ; 2 uses
  %i.dt = insertelement <4 x ptr> %i.ds, ptr %i.aa, i64 1
  %i.du = insertelement <4 x ptr> %i.dt, ptr %i.ad, i64 2
  %i.dv = insertelement <4 x ptr> %i.du, ptr %i.ag, i64 3
  %i.dw = insertelement <2 x ptr> poison, ptr %i.aa, i64 0
  %i.dx = insertelement <2 x ptr> %i.dw, ptr %i.ad, i64 1
  %i.dy = shufflevector <4 x ptr> %i.ds, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.dz = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ea = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> zeroinitializer
  %min.iters.check284 = icmp ugt i32 %i.d, 15
  %ident.check204.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check284, i1 %ident.check204.not, i1 false
  %i.eb = shl nuw nsw i64 %i.cz, 1
  %i.ec = add nsw i64 %i.eb, -2                   ; 2 uses
  %i.ed = add i64 %i.dm, %i.ec
  %i.ee = add i64 %i.ed, %i.dn
  %i.ef = add i64 %i.ee, 2                        ; 3 uses
  %scevgep207.a = getelementptr i8, ptr %i.al, i64 %i.ef ; 5 uses
  %scevgep208.a = getelementptr i8, ptr %i.ao, i64 %i.ef ; 2 uses
  %scevgep209.a = getelementptr i8, ptr %i.ar, i64 %i.ef ; 3 uses
  %i.eg = add i64 %i.dp, %i.ec
  %i.eh = add i64 %i.eg, %i.dn
  %i.ei = add i64 %i.eh, 2                        ; 3 uses
  %scevgep210.a = getelementptr i8, ptr %i.w, i64 %i.ei ; 3 uses
  %scevgep211.a = getelementptr i8, ptr %i.ac, i64 %i.ei ; 3 uses
  %scevgep212 = getelementptr i8, ptr %i.af, i64 %i.ei ; 3 uses
  %bound0213 = icmp ult ptr %i.am, %scevgep208.a
  %bound1214 = icmp ult ptr %i.ap, %scevgep207.a
  %found.conflict215 = and i1 %bound0213, %bound1214
  %bound0218 = icmp ult ptr %i.am, %scevgep209.a
  %bound1219 = icmp ult ptr %i.as, %scevgep207.a
  %found.conflict220 = and i1 %bound0218, %bound1219
  %bound0223 = icmp ult ptr %i.am, %scevgep210.a
  %bound1224 = icmp ult ptr %i.aa, %scevgep207.a
  %found.conflict225 = and i1 %bound0223, %bound1224
  %i.ej = or <8 x i32> %i.dz, %i.ea
  %bound0229 = icmp ult ptr %i.am, %scevgep211.a
  %bound1230 = icmp ult ptr %i.ad, %scevgep207.a
  %found.conflict231 = and i1 %bound0229, %bound1230
  %bound0235 = icmp ult ptr %i.am, %scevgep212
  %bound1236 = icmp ult ptr %i.ag, %scevgep207.a
  %found.conflict237 = and i1 %bound0235, %bound1236
  %i.ek = icmp slt <8 x i32> %i.ej, zeroinitializer
  %bound0277 = icmp ult ptr %i.as, %scevgep212
  %bound1278 = icmp ult ptr %i.ag, %scevgep209.a
  %stride.check221 = icmp slt i32 %i.ct, 0
  %i.el = insertelement <4 x ptr> poison, ptr %scevgep209.a, i64 0 ; 2 uses
  %i.em = insertelement <4 x ptr> %i.el, ptr %scevgep210.a, i64 1
  %i.en = insertelement <4 x ptr> %i.em, ptr %scevgep211.a, i64 2
  %i.eo = insertelement <4 x ptr> %i.en, ptr %scevgep212, i64 3
  %i.ep = icmp ult <4 x ptr> %i.dr, %i.eo
  %i.eq = insertelement <4 x ptr> poison, ptr %scevgep208.a, i64 0
  %i.er = shufflevector <4 x ptr> %i.eq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.es = icmp ult <4 x ptr> %i.dv, %i.er
  %i.et = insertelement <2 x ptr> poison, ptr %scevgep210.a, i64 0
  %i.eu = insertelement <2 x ptr> %i.et, ptr %scevgep211.a, i64 1
  %i.ev = icmp ult <2 x ptr> %i.dy, %i.eu
  %i.ew = shufflevector <4 x ptr> %i.el, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ex = icmp ult <2 x ptr> %i.dx, %i.ew
  %i.ey = insertelement <8 x i1> poison, i1 %bound0277, i64 6
  %i.ez = insertelement <8 x i1> %i.ey, i1 %stride.check221, i64 7
  %i.fa = shufflevector <4 x i1> %i.ep, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fb = shufflevector <8 x i1> %i.fa, <8 x i1> %i.ez, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fc = shufflevector <2 x i1> %i.ev, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fd = shufflevector <8 x i1> %i.fb, <8 x i1> %i.fc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fe = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1278, i64 6
  %i.ff = shufflevector <4 x i1> %i.es, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fg = shufflevector <8 x i1> %i.ff, <8 x i1> %i.fe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fh = shufflevector <2 x i1> %i.ex, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fi = shufflevector <8 x i1> %i.fg, <8 x i1> %i.fh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fj = and <8 x i1> %i.fd, %i.fi
  %i.fk = or i32 %i.x, %i.ct
  %i.fl = icmp slt i32 %i.fk, 0
  %rdx.op = or <8 x i1> %i.fj, %i.ek
  %i.fm = bitcast <8 x i1> %rdx.op to i8
  %i.fn = icmp ne i8 %i.fm, 0
  %op.rdx = or i1 %i.fn, %found.conflict220
  %op.rdx315.a = or i1 %found.conflict215, %found.conflict225
  %op.rdx316.a = or i1 %found.conflict231, %found.conflict237
  %op.rdx317.a = or i1 %op.rdx, %op.rdx315.a
  %op.rdx318.a = or i1 %op.rdx316.a, %i.fl
  %op.rdx319 = or i1 %op.rdx317.a, %op.rdx318.a
  %n.vec286 = and i64 %i.cz, 2147483640           ; 3 uses
  %broadcast.splat288 = shufflevector <2 x i32> %i.bz, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat290 = shufflevector <2 x float> %i.cd, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat292 = shufflevector <2 x float> %i.cp, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat294 = shufflevector <2 x i32> %i.bz, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat296 = shufflevector <2 x float> %i.cd, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat298 = shufflevector <2 x float> %i.cp, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert299 = insertelement <8 x i32> poison, i32 %i.cb, i64 0
  %broadcast.splat300 = shufflevector <8 x i32> %broadcast.splatinsert299, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert301 = insertelement <8 x float> poison, float %i.cf, i64 0
  %broadcast.splat302 = shufflevector <8 x float> %broadcast.splatinsert301, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert303 = insertelement <8 x float> poison, float %i.cq, i64 0
  %broadcast.splat304 = shufflevector <8 x float> %broadcast.splatinsert303, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n312 = icmp eq i64 %n.vec286, %i.cz
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond314 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.fo = shl nuw nsw i64 %i.cz, 1
  %i.fp = add nsw i64 %i.fo, -2                   ; 2 uses
  %i.fq = getelementptr i8, ptr %i.au, i64 %i.de
  %i.fr = getelementptr i8, ptr %i.fq, i64 %i.fp
  %i.fs = getelementptr i8, ptr %i.fr, i64 %i.df
  %scevgep = getelementptr i8, ptr %i.fs, i64 2
  %i.ft = getelementptr i8, ptr %i.ai, i64 %i.dh
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.fp
  %i.fv = getelementptr i8, ptr %i.fu, i64 %i.df
  %scevgep197 = getelementptr i8, ptr %i.fv, i64 2
  %bound0 = icmp ult ptr %i.av, %scevgep197
  %bound1 = icmp ult ptr %i.aj, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.fw = or i32 %i.x, %i.ct
  %i.fx = icmp slt i32 %i.fw, 0
  %i.fy = or i1 %found.conflict, %i.fx
  %n.vec = and i64 %i.cz, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert199 = insertelement <8 x float> poison, float %i.ch, i64 0
  %broadcast.splat200 = shufflevector <8 x float> %broadcast.splatinsert199, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert201 = insertelement <8 x float> poison, float %i.cr, i64 0
  %broadcast.splat202 = shufflevector <8 x float> %broadcast.splatinsert201, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.cz
  br label %.preheader156.us.us

.preheader156.us.us:                              ; preds = %.critedge.us.us, %.preheader156.lr.ph.split.us.split.us
  %.0125169.us.us = phi i32 [ %i.n, %.preheader156.lr.ph.split.us.split.us ], [ %i.jk, %.critedge.us.us ]
  %.0126168.us.us = phi ptr [ %i.av, %.preheader156.lr.ph.split.us.split.us ], [ %i.jj, %.critedge.us.us ] ; 3 uses
  %.0127167.us.us = phi ptr [ %i.as, %.preheader156.lr.ph.split.us.split.us ], [ %i.ji, %.critedge.us.us ] ; 3 uses
  %.0128166.us.us = phi ptr [ %i.ap, %.preheader156.lr.ph.split.us.split.us ], [ %i.jh, %.critedge.us.us ] ; 3 uses
  %.0129165.us.us = phi ptr [ %i.am, %.preheader156.lr.ph.split.us.split.us ], [ %i.jg, %.critedge.us.us ] ; 3 uses
  %.0130164.us.us = phi ptr [ %i.aj, %.preheader156.lr.ph.split.us.split.us ], [ %i.jf, %.critedge.us.us ] ; 3 uses
  %.0131163.us.us = phi ptr [ %i.ag, %.preheader156.lr.ph.split.us.split.us ], [ %i.je, %.critedge.us.us ] ; 3 uses
  %.0132162.us.us = phi ptr [ %i.ad, %.preheader156.lr.ph.split.us.split.us ], [ %i.jd, %.critedge.us.us ] ; 3 uses
  %.0133161.us.us = phi ptr [ %i.aa, %.preheader156.lr.ph.split.us.split.us ], [ %i.jc, %.critedge.us.us ] ; 3 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx319
  br i1 %brmerge, label %scalar.ph283.preheader, label %vector.body305

vector.body305:                                   ; preds = %.preheader156.us.us, %vector.body305
  %index306 = phi i64 [ %index.next310, %vector.body305 ], [ 0, %.preheader156.us.us ] ; 7 uses
  %i.fz = getelementptr inbounds [2 x i8], ptr %.0133161.us.us, i64 %index306
  %wide.load307.a = load <8 x i16>, ptr %i.fz, align 2, !tbaa !49, !alias.scope !135
  %i.ga = zext <8 x i16> %wide.load307.a to <8 x i32>
  %i.gb = getelementptr inbounds [2 x i8], ptr %.0132162.us.us, i64 %index306
  %wide.load308.a = load <8 x i16>, ptr %i.gb, align 2, !tbaa !49, !alias.scope !136
  %i.gc = zext <8 x i16> %wide.load308.a to <8 x i32>
  %i.gd = getelementptr inbounds [2 x i8], ptr %.0131163.us.us, i64 %index306
  %wide.load309 = load <8 x i16>, ptr %i.gd, align 2, !tbaa !49, !alias.scope !137
  %i.ge = zext <8 x i16> %wide.load309 to <8 x i32>
  %i.gf = sub nsw <8 x i32> %i.ga, %broadcast.splat288
  %i.gg = sitofp nsz <8 x i32> %i.gf to <8 x float>
  %i.gh = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gg, <8 x float> %broadcast.splat290, <8 x float> %broadcast.splat292)
  %i.gi = fptosi <8 x float> %i.gh to <8 x i32>   ; 3 uses
  %i.gj = icmp ult <8 x i32> %i.gi, splat (i32 65536)
  %i.gk = icmp sgt <8 x i32> %i.gi, splat (i32 -1)
  %i.gl = sext <8 x i1> %i.gk to <8 x i16>
  %i.gm = trunc nuw <8 x i32> %i.gi to <8 x i16>
  %i.gn = select <8 x i1> %i.gj, <8 x i16> %i.gm, <8 x i16> %i.gl
  %i.go = getelementptr inbounds [2 x i8], ptr %.0129165.us.us, i64 %index306
  store <8 x i16> %i.gn, ptr %i.go, align 2, !tbaa !49, !alias.scope !138, !noalias !139
  %i.gp = sub nsw <8 x i32> %i.gc, %broadcast.splat294
  %i.gq = sitofp nsz <8 x i32> %i.gp to <8 x float>
  %i.gr = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gq, <8 x float> %broadcast.splat296, <8 x float> %broadcast.splat298)
  %i.gs = fptosi <8 x float> %i.gr to <8 x i32>   ; 3 uses
  %i.gt = icmp ult <8 x i32> %i.gs, splat (i32 65536)
  %i.gu = icmp sgt <8 x i32> %i.gs, splat (i32 -1)
  %i.gv = sext <8 x i1> %i.gu to <8 x i16>
  %i.gw = trunc nuw <8 x i32> %i.gs to <8 x i16>
  %i.gx = select <8 x i1> %i.gt, <8 x i16> %i.gw, <8 x i16> %i.gv
  %i.gy = getelementptr inbounds [2 x i8], ptr %.0128166.us.us, i64 %index306
  store <8 x i16> %i.gx, ptr %i.gy, align 2, !tbaa !49, !alias.scope !140, !noalias !141
  %i.gz = sub nsw <8 x i32> %i.ge, %broadcast.splat300
  %i.ha = sitofp nsz <8 x i32> %i.gz to <8 x float>
  %i.hb = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ha, <8 x float> %broadcast.splat302, <8 x float> %broadcast.splat304)
  %i.hc = fptosi <8 x float> %i.hb to <8 x i32>   ; 3 uses
  %i.hd = icmp ult <8 x i32> %i.hc, splat (i32 65536)
  %i.he = icmp sgt <8 x i32> %i.hc, splat (i32 -1)
  %i.hf = sext <8 x i1> %i.he to <8 x i16>
  %i.hg = trunc nuw <8 x i32> %i.hc to <8 x i16>
  %i.hh = select <8 x i1> %i.hd, <8 x i16> %i.hg, <8 x i16> %i.hf
  %i.hi = getelementptr inbounds [2 x i8], ptr %.0127167.us.us, i64 %index306
  store <8 x i16> %i.hh, ptr %i.hi, align 2, !tbaa !49, !alias.scope !142, !noalias !143
  %index.next310 = add nuw i64 %index306, 8       ; 2 uses
  %i.hj = icmp eq i64 %index.next310, %n.vec286
  br i1 %i.hj, label %middle.block311, label %vector.body305, !llvm.loop !127

middle.block311:                                  ; preds = %vector.body305
  br i1 %cmp.n312, label %..preheader_crit_edge.us.us, label %scalar.ph283.preheader

scalar.ph283.preheader:                           ; preds = %.preheader156.us.us, %middle.block311
  %indvars.iv.ph = phi i64 [ %n.vec286, %middle.block311 ], [ 0, %.preheader156.us.us ]
  br label %scalar.ph283

scalar.ph283:                                     ; preds = %scalar.ph283.preheader, %scalar.ph283
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph283 ], [ %indvars.iv.ph, %scalar.ph283.preheader ] ; 7 uses
  %i.hk = getelementptr inbounds [2 x i8], ptr %.0133161.us.us, i64 %indvars.iv
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !49
  %i.hm = getelementptr inbounds [2 x i8], ptr %.0132162.us.us, i64 %indvars.iv
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !49
  %i.ho = getelementptr inbounds [2 x i8], ptr %.0131163.us.us, i64 %indvars.iv
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !49
  %i.hq = zext i16 %i.hp to i32
  %i.hr = getelementptr inbounds [2 x i8], ptr %.0129165.us.us, i64 %indvars.iv
  %i.hs = insertelement <2 x i16> poison, i16 %i.hl, i64 0
  %i.ht = insertelement <2 x i16> %i.hs, i16 %i.hn, i64 1
  %i.hu = zext <2 x i16> %i.ht to <2 x i32>
  %i.hv = sub nsw <2 x i32> %i.hu, %i.bz
  %i.hw = sitofp <2 x i32> %i.hv to <2 x float>
  %i.hx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hw, <2 x float> %i.cd, <2 x float> %i.cp)
  %i.hy = fptosi <2 x float> %i.hx to <2 x i32>   ; 3 uses
  %i.hz = extractelement <2 x i32> %i.hy, i64 0   ; 2 uses
  %isnotneg.i142.us.us = icmp sgt i32 %i.hz, -1
  %i.ia = sext i1 %isnotneg.i142.us.us to i16
  %i.ib = trunc nuw i32 %i.hz to i16
  %i.ic = icmp ult <2 x i32> %i.hy, splat (i32 65536) ; 2 uses
  %i.id = extractelement <2 x i1> %i.ic, i64 0
  %.0.i143.us.us = select i1 %i.id, i16 %i.ib, i16 %i.ia
  store i16 %.0.i143.us.us, ptr %i.hr, align 2, !tbaa !49
  %i.ie = extractelement <2 x i32> %i.hy, i64 1   ; 2 uses
  %isnotneg.i139.us.us = icmp sgt i32 %i.ie, -1
  %i.if = sext i1 %isnotneg.i139.us.us to i16
  %i.ig = trunc nuw i32 %i.ie to i16
  %i.ih = extractelement <2 x i1> %i.ic, i64 1
  %.0.i140.us.us = select i1 %i.ih, i16 %i.ig, i16 %i.if
  %i.ii = getelementptr inbounds [2 x i8], ptr %.0128166.us.us, i64 %indvars.iv
  store i16 %.0.i140.us.us, ptr %i.ii, align 2, !tbaa !49
  %i.ij = sub nsw i32 %i.hq, %i.cb
  %i.ik = sitofp nsz i32 %i.ij to float
  %i.il = tail call nsz float @llvm.fmuladd.f32(float %i.ik, float %i.cf, float %i.cq)
  %i.im = fptosi float %i.il to i32               ; 3 uses
  %.not.i135.us.us = icmp ult i32 %i.im, 65536
  %isnotneg.i136.us.us = icmp sgt i32 %i.im, -1
  %i.in = sext i1 %isnotneg.i136.us.us to i16
  %i.io = trunc nuw i32 %i.im to i16
  %.0.i137.us.us = select i1 %.not.i135.us.us, i16 %i.io, i16 %i.in
  %i.ip = getelementptr inbounds [2 x i8], ptr %.0127167.us.us, i64 %indvars.iv
  store i16 %.0.i137.us.us, ptr %i.ip, align 2, !tbaa !49
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.cy ; 2 uses
  %i.iq = icmp slt i64 %indvars.iv.next, %i.cz
  br i1 %i.iq, label %scalar.ph283, label %..preheader_crit_edge.us.us, !llvm.loop !128

.lr.ph159.split.us.us:                            ; preds = %.lr.ph159.split.us.us.preheader320, %.lr.ph159.split.us.us
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %.lr.ph159.split.us.us ], [ %indvars.iv190.ph, %.lr.ph159.split.us.us.preheader320 ] ; 3 uses
  %i.ir = getelementptr inbounds [2 x i8], ptr %.0130164.us.us, i64 %indvars.iv190
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !49
  %i.it = zext i16 %i.is to i32
  %i.iu = sub nsw i32 %i.it, %i.by
  %i.iv = sitofp nsz i32 %i.iu to float
  %i.iw = tail call nsz float @llvm.fmuladd.f32(float %i.iv, float %i.ch, float %i.cr)
  %i.ix = fptosi float %i.iw to i32               ; 3 uses
  %.not.i.us.us = icmp ult i32 %i.ix, 65536
  %isnotneg.i.us.us = icmp sgt i32 %i.ix, -1
  %i.iy = sext i1 %isnotneg.i.us.us to i16
  %i.iz = trunc nuw i32 %i.ix to i16
  %.0.i.us.us = select i1 %.not.i.us.us, i16 %i.iz, i16 %i.iy
  %i.ja = getelementptr inbounds [2 x i8], ptr %.0126168.us.us, i64 %indvars.iv190
  store i16 %.0.i.us.us, ptr %i.ja, align 2, !tbaa !49
  %indvars.iv.next191 = add nsw i64 %indvars.iv190, %i.cy ; 2 uses
  %i.jb = icmp slt i64 %indvars.iv.next191, %i.cz
  br i1 %i.jb, label %.lr.ph159.split.us.us, label %.critedge.us.us, !llvm.loop !129

.critedge.us.us:                                  ; preds = %.lr.ph159.split.us.us, %middle.block, %..preheader_crit_edge.us.us
  %i.jc = getelementptr inbounds [2 x i8], ptr %.0133161.us.us, i64 %i.cs
  %i.jd = getelementptr inbounds [2 x i8], ptr %.0132162.us.us, i64 %i.cs
  %i.je = getelementptr inbounds [2 x i8], ptr %.0131163.us.us, i64 %i.cs
  %i.jf = getelementptr inbounds [2 x i8], ptr %.0130164.us.us, i64 %i.cs
  %i.jg = getelementptr inbounds [2 x i8], ptr %.0129165.us.us, i64 %i.cu
  %i.jh = getelementptr inbounds [2 x i8], ptr %.0128166.us.us, i64 %i.cu
  %i.ji = getelementptr inbounds [2 x i8], ptr %.0127167.us.us, i64 %i.cu
  %i.jj = getelementptr inbounds [2 x i8], ptr %.0126168.us.us, i64 %i.cu
  %i.jk = add nsw i32 %.0125169.us.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.jk, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader156.us.us, !llvm.loop !130

..preheader_crit_edge.us.us:                      ; preds = %scalar.ph283, %middle.block311
  br i1 %i.cx, label %.lr.ph159.split.us.us.preheader, label %.critedge.us.us

.lr.ph159.split.us.us.preheader:                  ; preds = %..preheader_crit_edge.us.us
  %or.cond314.not = xor i1 %or.cond314, true
  %brmerge321 = select i1 %or.cond314.not, i1 true, i1 %i.fy
  br i1 %brmerge321, label %.lr.ph159.split.us.us.preheader320, label %vector.body

vector.body:                                      ; preds = %.lr.ph159.split.us.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph159.split.us.us.preheader ] ; 3 uses
  %i.jl = getelementptr inbounds [2 x i8], ptr %.0130164.us.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.jl, align 2, !tbaa !49, !alias.scope !144
  %i.jm = zext <8 x i16> %wide.load to <8 x i32>
  %i.jn = sub nsw <8 x i32> %i.jm, %broadcast.splat
  %i.jo = sitofp nsz <8 x i32> %i.jn to <8 x float>
  %i.jp = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jo, <8 x float> %broadcast.splat200, <8 x float> %broadcast.splat202)
  %i.jq = fptosi <8 x float> %i.jp to <8 x i32>   ; 3 uses
  %i.jr = icmp ult <8 x i32> %i.jq, splat (i32 65536)
  %i.js = icmp sgt <8 x i32> %i.jq, splat (i32 -1)
  %i.jt = sext <8 x i1> %i.js to <8 x i16>
  %i.ju = trunc nuw <8 x i32> %i.jq to <8 x i16>
  %i.jv = select <8 x i1> %i.jr, <8 x i16> %i.ju, <8 x i16> %i.jt
  %i.jw = getelementptr inbounds [2 x i8], ptr %.0126168.us.us, i64 %index
  store <8 x i16> %i.jv, ptr %i.jw, align 2, !tbaa !49, !alias.scope !145, !noalias !144
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jx = icmp eq i64 %index.next, %n.vec
  br i1 %i.jx, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us.us, label %.lr.ph159.split.us.us.preheader320

.lr.ph159.split.us.us.preheader320:               ; preds = %.lr.ph159.split.us.us.preheader, %middle.block
  %indvars.iv190.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph159.split.us.us.preheader ]
  br label %.lr.ph159.split.us.us

._crit_edge:                                      ; preds = %.critedge.us.us, %.preheader156.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_preserve_slice_16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 3 uses
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
  %i.u = load i32, ptr %i.t, align 4, !tbaa !36
  %i.v = ashr i32 %i.u, 1                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !35
  %i.y = ashr i32 %i.x, 1                         ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !38
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 9 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.af = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !52
  %i.ba = icmp eq i32 %i.az, 32                   ; 2 uses
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
  %i.ci = fptosi float %.in182 to i32             ; 2 uses
  %i.cj = fptosi float %.in180 to i32
  %i.ck = fptosi <2 x float> %i.cg to <2 x i32>
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !47
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !47
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !47 ; 2 uses
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
  %i.cz = sitofp nsz i32 %i.cs to float           ; 2 uses
  %i.da = sext i32 %i.v to i64                    ; 5 uses
  %i.db = sext i32 %i.y to i64                    ; 5 uses
  br i1 %i.cv, label %.preheader184.lr.ph.split.us, label %._crit_edge

.preheader184.lr.ph.split.us:                     ; preds = %.preheader184.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !50
  %i.df = sext i32 %i.f to i64                    ; 2 uses
  %i.dg = zext nneg i32 %i.d to i64               ; 5 uses
  %i.dh = load i32, ptr %i.dc, align 4, !tbaa !41
  %i.di = icmp eq i32 %i.dh, 4
  %i.dj = xor i64 %i.m, -1
  %i.dk = add i64 %i.r, %i.dj
  %i.dl = and i64 %i.dk, 4294967295               ; 2 uses
  %i.dm = mul nsw i64 %i.dl, %i.db
  %i.dn = shl i64 %i.dm, 1
  %i.do = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dp = mul nsw i64 %i.dl, %i.da
  %i.dq = shl i64 %i.dp, 1
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.dr = shl nuw nsw i64 %i.dg, 1
  %i.ds = add nsw i64 %i.dr, -2                   ; 2 uses
  %i.dt = getelementptr i8, ptr %i.aw, i64 %i.dn
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.ds
  %i.dv = getelementptr i8, ptr %i.du, i64 %i.do
  %scevgep = getelementptr i8, ptr %i.dv, i64 2
  %i.dw = getelementptr i8, ptr %i.ak, i64 %i.dq
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.ds
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.do
  %scevgep225 = getelementptr i8, ptr %i.dy, i64 2
  %bound0 = icmp ult ptr %i.ax, %scevgep225
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dz = or i32 %i.v, %i.y
  %i.ea = icmp slt i32 %i.dz, 0
  %i.eb = or i1 %found.conflict, %i.ea
  %n.vec = and i64 %i.dg, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <8 x float> poison, float %i.cq, i64 0
  %broadcast.splat228 = shufflevector <8 x float> %broadcast.splatinsert227, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert229 = insertelement <8 x float> poison, float %i.cz, i64 0
  %broadcast.splat230 = shufflevector <8 x float> %broadcast.splatinsert229, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.dg
  br label %.preheader184.us

.preheader184.us:                                 ; preds = %.critedge.us, %.preheader184.lr.ph.split.us
  %.0147197.us = phi i32 [ %i.n, %.preheader184.lr.ph.split.us ], [ %i.jq, %.critedge.us ]
  %.0148196.us = phi ptr [ %i.ax, %.preheader184.lr.ph.split.us ], [ %i.jp, %.critedge.us ] ; 3 uses
  %.0149195.us = phi ptr [ %i.au, %.preheader184.lr.ph.split.us ], [ %i.jo, %.critedge.us ] ; 2 uses
  %.0150194.us = phi ptr [ %i.ar, %.preheader184.lr.ph.split.us ], [ %i.jn, %.critedge.us ] ; 2 uses
  %.0151193.us = phi ptr [ %i.ao, %.preheader184.lr.ph.split.us ], [ %i.jm, %.critedge.us ] ; 2 uses
  %.0152192.us = phi ptr [ %i.al, %.preheader184.lr.ph.split.us ], [ %i.jl, %.critedge.us ] ; 3 uses
  %.0153191.us = phi ptr [ %i.ai, %.preheader184.lr.ph.split.us ], [ %i.jk, %.critedge.us ] ; 2 uses
  %.0154190.us = phi ptr [ %i.af, %.preheader184.lr.ph.split.us ], [ %i.jj, %.critedge.us ] ; 2 uses
  %.0155189.us = phi ptr [ %i.ac, %.preheader184.lr.ph.split.us ], [ %i.ji, %.critedge.us ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader184.us, %preserve_color.exit.thread.us
  %indvars.iv = phi i64 [ 0, %.preheader184.us ], [ %indvars.iv.next, %preserve_color.exit.thread.us ] ; 7 uses
  %i.ec = getelementptr inbounds [2 x i8], ptr %.0155189.us, i64 %indvars.iv
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !49 ; 2 uses
  %i.ee = zext i16 %i.ed to i32
  %i.ef = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %indvars.iv
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !49 ; 2 uses
  %i.eh = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %indvars.iv
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !49 ; 2 uses
  %i.ej = insertelement <2 x i16> poison, i16 %i.eg, i64 0
  %i.ek = insertelement <2 x i16> %i.ej, i16 %i.ei, i64 1
  %i.el = zext <2 x i16> %i.ek to <2 x i32>
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.em = load i32, ptr %i.cw, align 4, !tbaa !53
  %i.en = sitofp nsz i32 %i.em to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.eo = phi nsz float [ %i.en, %bb.f ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.ep = sub nsw i32 %i.ee, %i.cj
  %i.eq = sitofp nsz i32 %i.ep to float
  %i.er = tail call nsz float @llvm.fmuladd.f32(float %i.eq, float %i.cm, float %i.cx)
  %i.es = fptosi float %i.er to i32               ; 3 uses
  %i.et = sub nsw <2 x i32> %i.el, %i.ck
  %i.eu = sitofp <2 x i32> %i.et to <2 x float>
  %i.ev = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.co, <2 x float> %i.cy)
  %i.ew = fptosi <2 x float> %i.ev to <2 x i32>   ; 3 uses
  %i.ex = uitofp i16 %i.ed to float               ; 6 uses
  %i.ey = uitofp i16 %i.eg to float               ; 6 uses
  %i.ez = uitofp i16 %i.ei to float               ; 6 uses
  %i.fa = sitofp nsz i32 %i.es to float           ; 7 uses
  %i.fb = sitofp <2 x i32> %i.ew to <2 x float>   ; 13 uses
  switch i32 %i.de, label %preserve_color.exit.thread.us [
    i32 1, label %bb.m
    i32 2, label %bb.l
    i32 3, label %bb.k
    i32 4, label %bb.j
    i32 5, label %bb.i
    i32 6, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.fc = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.fa, i64 1
  %i.fe = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fg = fdiv nsz <2 x float> %i.fd, %i.ff       ; 3 uses
  %i.fh = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fi = insertelement <2 x float> %i.fh, float %i.ey, i64 0
  %i.fj = fdiv nsz <2 x float> %i.fi, %i.ff       ; 3 uses
  %i.fk = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.fl = fdiv nsz <2 x float> %i.fk, %i.ff       ; 3 uses
  %i.fm = fmul nsz <2 x float> %i.fg, %i.fg
  %i.fn = fmul nsz <2 x float> %i.fj, %i.fj
  %i.fo = fmul nsz <2 x float> %i.fj, %i.fn
  %i.fp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fg, <2 x float> %i.fo)
  %i.fq = fmul nsz <2 x float> %i.fl, %i.fl
  %i.fr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fl, <2 x float> %i.fp) ; 2 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 0
  %i.ft = tail call nsz float @cbrtf(float noundef %i.fs) #9
  %i.fu = extractelement <2 x float> %i.fr, i64 1
  %i.fv = tail call nsz float @cbrtf(float noundef %i.fu) #9
  %i.fw = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.fv, i64 1
  br label %preserve_color.exit.us

bb.i:                                             ; preds = %bb.g
  %i.fy = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.fa, i64 1
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
end_hunk_1
begin_hunk_2_@colorlevels_preserve_slice_16:bb.a
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
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load <2 x i32>, ptr %i.t, align 8, !tbaa !34 ; 4 uses
  %i.v = extractelement <2 x i32> %i.u, i64 1     ; 3 uses
  %i.w = sext i32 %i.v to i64                     ; 5 uses
  %i.x = extractelement <2 x i32> %i.u, i64 0     ; 3 uses
  %i.y = sext i32 %i.x to i64                     ; 5 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 10 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 %i.ab   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ab  ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.ab  ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ab
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.ab  ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.ab  ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 %i.ab  ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ab
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !52
  %i.ba = icmp eq i32 %i.az, 32
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.be = load <2 x float>, ptr %i.bb, align 4, !tbaa !47
  %i.bf = load <2 x float>, ptr %i.bd, align 4, !tbaa !47
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bh = load <2 x float>, ptr %i.bc, align 4, !tbaa !47
  %i.bi = load <2 x float>, ptr %i.bg, align 4, !tbaa !47
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bn = load <2 x i32>, ptr %i.bk, align 4, !tbaa !34
  %i.bo = sitofp <2 x i32> %i.bn to <2 x float>
  %i.bp = load <2 x i32>, ptr %i.bm, align 4, !tbaa !34
  %i.bq = sitofp <2 x i32> %i.bp to <2 x float>
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.bs = load <2 x i32>, ptr %i.bl, align 4, !tbaa !34
  %i.bt = load <2 x i32>, ptr %i.br, align 4, !tbaa !34
  %i.bu = shufflevector <2 x i32> %i.bs, <2 x i32> %i.bt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bv = sitofp <4 x i32> %i.bu to <4 x float>
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bw = phi <2 x float> [ %i.be, %bb.b ], [ %i.bo, %bb.c ]
  %i.bx = phi <2 x float> [ %i.bf, %bb.b ], [ %i.bq, %bb.c ]
  %i.by = phi <4 x float> [ %i.bj, %bb.b ], [ %i.bv, %bb.c ] ; 4 uses
  %i.bz = extractelement <4 x float> %i.by, i64 1
  %i.ca = fptosi float %i.bz to i32
  %i.cb = fptosi <2 x float> %i.bw to <2 x i32>   ; 5 uses
  %i.cc = extractelement <4 x float> %i.by, i64 0
  %i.cd = fptosi float %i.cc to i32               ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cf = load <2 x float>, ptr %i.ce, align 8, !tbaa !47 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !47 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !47
  %i.ck = icmp slt i32 %i.n, %i.s
  br i1 %i.ck, label %.preheader156.lr.ph, label %._crit_edge

.preheader156.lr.ph:                              ; preds = %bb.d
  %i.cl = extractelement <4 x float> %i.by, i64 3
  %i.cm = fptosi float %i.cl to i32
  %i.cn = extractelement <4 x float> %i.by, i64 2
  %i.co = fptosi float %i.cn to i32
  %i.cp = fptosi <2 x float> %i.bx to <2 x i32>
  %i.cq = icmp sgt i32 %i.d, 0
  %i.cr = sitofp <2 x i32> %i.cp to <2 x float>   ; 5 uses
  %i.cs = sitofp nsz i32 %i.co to float           ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.cu = sitofp nsz i32 %i.cm to float
  br i1 %i.cq, label %.preheader156.us.us.preheader, label %._crit_edge

.preheader156.us.us.preheader:                    ; preds = %.preheader156.lr.ph
  %i.cv = sext i32 %i.f to i64                    ; 2 uses
  %i.cw = zext nneg i32 %i.d to i64               ; 8 uses
  %i.cx = add nsw i64 %i.cw, -1                   ; 2 uses
  %i.cy = xor i64 %i.m, -1
  %i.cz = add i64 %i.r, %i.cy
  %i.da = and i64 %i.cz, 4294967295               ; 2 uses
  %i.db = mul nsw i64 %i.da, %i.y
  %i.dc = mul nsw i64 %i.da, %i.w
  %i.dd = insertelement <4 x ptr> poison, ptr %i.ar, i64 0
  %i.de = shufflevector <4 x ptr> %i.dd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.df = insertelement <4 x ptr> poison, ptr %i.au, i64 0 ; 2 uses
  %i.dg = insertelement <4 x ptr> %i.df, ptr %i.ac, i64 1
  %i.dh = insertelement <4 x ptr> %i.dg, ptr %i.af, i64 2
  %i.di = insertelement <4 x ptr> %i.dh, ptr %i.ai, i64 3
  %i.dj = insertelement <2 x ptr> poison, ptr %i.ac, i64 0
  %i.dk = insertelement <2 x ptr> %i.dj, ptr %i.af, i64 1
  %i.dl = shufflevector <4 x ptr> %i.df, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.dm = shufflevector <2 x i32> %i.u, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.dn = shufflevector <2 x i32> %i.u, <2 x i32> poison, <8 x i32> zeroinitializer
  %min.iters.check = icmp ugt i32 %i.d, 3
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.do = add i64 %i.cx, %i.db
  %i.dp = add i64 %i.do, %i.ab
  %i.dq = add i64 %i.dp, 1                        ; 3 uses
  %scevgep = getelementptr i8, ptr %i.an, i64 %i.dq ; 5 uses
  %scevgep178 = getelementptr i8, ptr %i.aq, i64 %i.dq ; 2 uses
  %scevgep179 = getelementptr i8, ptr %i.at, i64 %i.dq ; 3 uses
  %i.dr = add i64 %i.cx, %i.dc
  %i.ds = add i64 %i.dr, %i.ab
  %i.dt = add i64 %i.ds, 1                        ; 3 uses
  %scevgep180 = getelementptr i8, ptr %i.z, i64 %i.dt ; 3 uses
  %scevgep181 = getelementptr i8, ptr %i.ae, i64 %i.dt ; 3 uses
  %scevgep182 = getelementptr i8, ptr %i.ah, i64 %i.dt ; 3 uses
  %bound0 = icmp ult ptr %i.ao, %scevgep178
  %bound1 = icmp ult ptr %i.ar, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0184 = icmp ult ptr %i.ao, %scevgep179
  %bound1185 = icmp ult ptr %i.au, %scevgep
  %found.conflict186 = and i1 %bound0184, %bound1185
  %bound0189 = icmp ult ptr %i.ao, %scevgep180
  %bound1190 = icmp ult ptr %i.ac, %scevgep
  %found.conflict191 = and i1 %bound0189, %bound1190
  %i.du = or <8 x i32> %i.dm, %i.dn
  %bound0195 = icmp ult ptr %i.ao, %scevgep181
  %bound1196 = icmp ult ptr %i.af, %scevgep
  %found.conflict197 = and i1 %bound0195, %bound1196
  %bound0201 = icmp ult ptr %i.ao, %scevgep182
  %bound1202 = icmp ult ptr %i.ai, %scevgep
  %found.conflict203 = and i1 %bound0201, %bound1202
  %i.dv = icmp slt <8 x i32> %i.du, zeroinitializer
  %bound0243 = icmp ult ptr %i.au, %scevgep182
  %bound1244 = icmp ult ptr %i.ai, %scevgep179
  %stride.check187 = icmp slt i32 %i.x, 0
  %i.dw = insertelement <4 x ptr> poison, ptr %scevgep179, i64 0 ; 2 uses
  %i.dx = insertelement <4 x ptr> %i.dw, ptr %scevgep180, i64 1
  %i.dy = insertelement <4 x ptr> %i.dx, ptr %scevgep181, i64 2
  %i.dz = insertelement <4 x ptr> %i.dy, ptr %scevgep182, i64 3
  %i.ea = icmp ult <4 x ptr> %i.de, %i.dz
  %i.eb = insertelement <4 x ptr> poison, ptr %scevgep178, i64 0
  %i.ec = shufflevector <4 x ptr> %i.eb, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ed = icmp ult <4 x ptr> %i.di, %i.ec
  %i.ee = insertelement <2 x ptr> poison, ptr %scevgep180, i64 0
  %i.ef = insertelement <2 x ptr> %i.ee, ptr %scevgep181, i64 1
  %i.eg = icmp ult <2 x ptr> %i.dl, %i.ef
  %i.eh = shufflevector <4 x ptr> %i.dw, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ei = icmp ult <2 x ptr> %i.dk, %i.eh
  %i.ej = insertelement <8 x i1> poison, i1 %bound0243, i64 6
  %i.ek = insertelement <8 x i1> %i.ej, i1 %stride.check187, i64 7
  %i.el = shufflevector <4 x i1> %i.ea, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.em = shufflevector <8 x i1> %i.el, <8 x i1> %i.ek, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.en = shufflevector <2 x i1> %i.eg, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eo = shufflevector <8 x i1> %i.em, <8 x i1> %i.en, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.ep = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1244, i64 6
  %i.eq = shufflevector <4 x i1> %i.ed, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.er = shufflevector <8 x i1> %i.eq, <8 x i1> %i.ep, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.es = shufflevector <2 x i1> %i.ei, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.et = shufflevector <8 x i1> %i.er, <8 x i1> %i.es, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.eu = and <8 x i1> %i.eo, %i.et
  %i.ev = or i32 %i.v, %i.x
  %i.ew = icmp slt i32 %i.ev, 0
  %rdx.op = or <8 x i1> %i.eu, %i.dv
  %i.ex = bitcast <8 x i1> %rdx.op to i8
  %i.ey = icmp ne i8 %i.ex, 0
  %op.rdx = or i1 %i.ey, %found.conflict186
  %op.rdx294.a = or i1 %found.conflict, %found.conflict191
  %op.rdx295.a = or i1 %found.conflict197, %found.conflict203
  %op.rdx296.a = or i1 %op.rdx, %op.rdx294.a
  %op.rdx297.a = or i1 %op.rdx295.a, %i.ew
  %op.rdx298 = or i1 %op.rdx296.a, %op.rdx297.a
  %min.iters.check250 = icmp ult i32 %i.d, 16
  %i.ez = and i64 %i.cw, 12
  %n.vec = and i64 %i.cw, 2147483632              ; 4 uses
  %broadcast.splat = shufflevector <2 x i32> %i.cb, <2 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splat252 = shufflevector <2 x float> %i.cf, <2 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splat254 = shufflevector <2 x float> %i.cr, <2 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splat256 = shufflevector <2 x i32> %i.cb, <2 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat258 = shufflevector <2 x float> %i.cf, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat260 = shufflevector <2 x float> %i.cr, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert261 = insertelement <16 x i32> poison, i32 %i.cd, i64 0
  %broadcast.splat262 = shufflevector <16 x i32> %broadcast.splatinsert261, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert263 = insertelement <16 x float> poison, float %i.ch, i64 0
  %broadcast.splat264 = shufflevector <16 x float> %broadcast.splatinsert263, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert265 = insertelement <16 x float> poison, float %i.cs, i64 0
  %broadcast.splat266 = shufflevector <16 x float> %broadcast.splatinsert265, <16 x float> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.cw
  %min.epilog.iters.check = icmp eq i64 %i.ez, 0
  %n.vec269 = and i64 %i.cw, 2147483644           ; 3 uses
  %broadcast.splat271 = shufflevector <2 x i32> %i.cb, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat273 = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat275 = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat277 = shufflevector <2 x i32> %i.cb, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat279 = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat281 = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert282 = insertelement <4 x i32> poison, i32 %i.cd, i64 0
  %broadcast.splat283 = shufflevector <4 x i32> %broadcast.splatinsert282, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert284 = insertelement <4 x float> poison, float %i.ch, i64 0
  %broadcast.splat285 = shufflevector <4 x float> %broadcast.splatinsert284, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert286 = insertelement <4 x float> poison, float %i.cs, i64 0
  %broadcast.splat287 = shufflevector <4 x float> %broadcast.splatinsert286, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n293 = icmp eq i64 %n.vec269, %i.cw
  br label %iter.check

iter.check:                                       ; preds = %.preheader156.us.us.preheader, %.critedge.us.us
  %.0125169.us.us = phi i32 [ %i.jz, %.critedge.us.us ], [ %i.n, %.preheader156.us.us.preheader ]
  %.0126168.us.us = phi ptr [ %i.jy, %.critedge.us.us ], [ %i.ax, %.preheader156.us.us.preheader ] ; 2 uses
  %.0127167.us.us = phi ptr [ %i.jx, %.critedge.us.us ], [ %i.au, %.preheader156.us.us.preheader ] ; 4 uses
  %.0128166.us.us = phi ptr [ %i.jw, %.critedge.us.us ], [ %i.ar, %.preheader156.us.us.preheader ] ; 4 uses
  %.0129165.us.us = phi ptr [ %i.jv, %.critedge.us.us ], [ %i.ao, %.preheader156.us.us.preheader ] ; 4 uses
  %.0130164.us.us = phi ptr [ %i.ju, %.critedge.us.us ], [ %i.al, %.preheader156.us.us.preheader ] ; 2 uses
  %.0131163.us.us = phi ptr [ %i.jt, %.critedge.us.us ], [ %i.ai, %.preheader156.us.us.preheader ] ; 4 uses
  %.0132162.us.us = phi ptr [ %i.js, %.critedge.us.us ], [ %i.af, %.preheader156.us.us.preheader ] ; 4 uses
  %.0133161.us.us = phi ptr [ %i.jr, %.critedge.us.us ], [ %i.ac, %.preheader156.us.us.preheader ] ; 4 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx298
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check250, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 7 uses
  %i.fa = getelementptr inbounds i8, ptr %.0133161.us.us, i64 %index
  %wide.load = load <16 x i8>, ptr %i.fa, align 1, !tbaa !40, !alias.scope !167
  %i.fb = zext <16 x i8> %wide.load to <16 x i32>
  %i.fc = getelementptr inbounds i8, ptr %.0132162.us.us, i64 %index
  %wide.load267.a = load <16 x i8>, ptr %i.fc, align 1, !tbaa !40, !alias.scope !168
  %i.fd = zext <16 x i8> %wide.load267.a to <16 x i32>
  %i.fe = getelementptr inbounds i8, ptr %.0131163.us.us, i64 %index
  %wide.load268 = load <16 x i8>, ptr %i.fe, align 1, !tbaa !40, !alias.scope !169
  %i.ff = zext <16 x i8> %wide.load268 to <16 x i32>
  %i.fg = sub nsw <16 x i32> %i.fb, %broadcast.splat
  %i.fh = sitofp nsz <16 x i32> %i.fg to <16 x float>
  %i.fi = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.fh, <16 x float> %broadcast.splat252, <16 x float> %broadcast.splat254)
  %i.fj = fptosi <16 x float> %i.fi to <16 x i32> ; 3 uses
  %i.fk = icmp ult <16 x i32> %i.fj, splat (i32 256)
  %i.fl = icmp sgt <16 x i32> %i.fj, splat (i32 -1)
  %i.fm = sext <16 x i1> %i.fl to <16 x i8>
  %i.fn = trunc nuw <16 x i32> %i.fj to <16 x i8>
  %i.fo = select <16 x i1> %i.fk, <16 x i8> %i.fn, <16 x i8> %i.fm
  %i.fp = getelementptr inbounds i8, ptr %.0129165.us.us, i64 %index
  store <16 x i8> %i.fo, ptr %i.fp, align 1, !tbaa !40, !alias.scope !170, !noalias !171
  %i.fq = sub nsw <16 x i32> %i.fd, %broadcast.splat256
  %i.fr = sitofp nsz <16 x i32> %i.fq to <16 x float>
  %i.fs = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.fr, <16 x float> %broadcast.splat258, <16 x float> %broadcast.splat260)
  %i.ft = fptosi <16 x float> %i.fs to <16 x i32> ; 3 uses
  %i.fu = icmp ult <16 x i32> %i.ft, splat (i32 256)
  %i.fv = icmp sgt <16 x i32> %i.ft, splat (i32 -1)
  %i.fw = sext <16 x i1> %i.fv to <16 x i8>
  %i.fx = trunc nuw <16 x i32> %i.ft to <16 x i8>
  %i.fy = select <16 x i1> %i.fu, <16 x i8> %i.fx, <16 x i8> %i.fw
  %i.fz = getelementptr inbounds i8, ptr %.0128166.us.us, i64 %index
  store <16 x i8> %i.fy, ptr %i.fz, align 1, !tbaa !40, !alias.scope !172, !noalias !173
  %i.ga = sub nsw <16 x i32> %i.ff, %broadcast.splat262
  %i.gb = sitofp nsz <16 x i32> %i.ga to <16 x float>
  %i.gc = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.gb, <16 x float> %broadcast.splat264, <16 x float> %broadcast.splat266)
  %i.gd = fptosi <16 x float> %i.gc to <16 x i32> ; 3 uses
  %i.ge = icmp ult <16 x i32> %i.gd, splat (i32 256)
  %i.gf = icmp sgt <16 x i32> %i.gd, splat (i32 -1)
  %i.gg = sext <16 x i1> %i.gf to <16 x i8>
  %i.gh = trunc nuw <16 x i32> %i.gd to <16 x i8>
  %i.gi = select <16 x i1> %i.ge, <16 x i8> %i.gh, <16 x i8> %i.gg
  %i.gj = getelementptr inbounds i8, ptr %.0127167.us.us, i64 %index
  store <16 x i8> %i.gi, ptr %i.gj, align 1, !tbaa !40, !alias.scope !174, !noalias !175
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gk = icmp eq i64 %index.next, %n.vec
  br i1 %i.gk, label %middle.block, label %vector.body, !llvm.loop !162

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..preheader_crit_edge.us.us.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !54

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index288 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next292, %vec.epilog.vector.body ] ; 7 uses
  %i.gl = getelementptr inbounds i8, ptr %.0133161.us.us, i64 %index288
  %wide.load289.a = load <4 x i8>, ptr %i.gl, align 1, !tbaa !40, !alias.scope !167
  %i.gm = zext <4 x i8> %wide.load289.a to <4 x i32>
end_hunk_2
begin_hunk_3_@colorlevels_preserve_slice_8_planar:bb.a
  br label %preserve_color.exit.thread.us

preserve_color.exit.thread.us:                    ; preds = %bb.n, %preserve_color.exit.us, %bb.g
  %.0145.us = phi i32 [ %i.hk, %bb.n ], [ %i.dv, %preserve_color.exit.us ], [ %i.dv, %bb.g ] ; 3 uses
  %i.hp = phi <2 x i32> [ %i.ho, %bb.n ], [ %i.eb, %preserve_color.exit.us ], [ %i.eb, %bb.g ] ; 2 uses
  %.not.i164.us = icmp ult i32 %.0145.us, 256
  %isnotneg.i165.us = icmp sgt i32 %.0145.us, -1
  %i.hq = sext i1 %isnotneg.i165.us to i8
  %i.hr = trunc nuw i32 %.0145.us to i8
  %.0.i166.us = select i1 %.not.i164.us, i8 %i.hr, i8 %i.hq
  %i.hs = getelementptr inbounds i8, ptr %.0151193.us, i64 %indvars.iv
  store i8 %.0.i166.us, ptr %i.hs, align 1, !tbaa !40
  %i.ht = extractelement <2 x i32> %i.hp, i64 0   ; 3 uses
  %.not.i161.us = icmp ult i32 %i.ht, 256
  %isnotneg.i162.us = icmp sgt i32 %i.ht, -1
  %i.hu = sext i1 %isnotneg.i162.us to i8
  %i.hv = trunc nuw i32 %i.ht to i8
  %.0.i163.us = select i1 %.not.i161.us, i8 %i.hv, i8 %i.hu
  %i.hw = getelementptr inbounds i8, ptr %.0150194.us, i64 %indvars.iv
  store i8 %.0.i163.us, ptr %i.hw, align 1, !tbaa !40
  %i.hx = extractelement <2 x i32> %i.hp, i64 1   ; 3 uses
  %.not.i158.us = icmp ult i32 %i.hx, 256
  %isnotneg.i159.us = icmp sgt i32 %i.hx, -1
  %i.hy = sext i1 %isnotneg.i159.us to i8
  %i.hz = trunc nuw i32 %i.hx to i8
  %.0.i160.us = select i1 %.not.i158.us, i8 %i.hz, i8 %i.hy
  %i.ia = getelementptr inbounds i8, ptr %.0149195.us, i64 %indvars.iv
  store i8 %.0.i160.us, ptr %i.ia, align 1, !tbaa !40
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.dc ; 2 uses
  %i.ib = icmp slt i64 %indvars.iv.next, %i.dd
  br i1 %i.ib, label %bb.e, label %.lr.ph187.us, !llvm.loop !176

.lr.ph187.us:                                     ; preds = %preserve_color.exit.thread.us, %bb.o
  %indvars.iv199 = phi i64 [ %indvars.iv.next200, %bb.o ], [ 0, %preserve_color.exit.thread.us ] ; 3 uses
  %i.ic = load i32, ptr %i.da, align 4, !tbaa !41
  %i.id = icmp eq i32 %i.ic, 4
  br i1 %i.id, label %bb.o, label %.critedge.us

bb.o:                                             ; preds = %.lr.ph187.us
  %i.ie = getelementptr inbounds i8, ptr %.0152192.us, i64 %indvars.iv199
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !40
  %i.ig = zext i8 %i.if to i32
  %i.ih = sub nsw i32 %i.ig, %i.ci
  %i.ii = sitofp nsz i32 %i.ih to float
  %i.ij = tail call nsz float @llvm.fmuladd.f32(float %i.ii, float %i.cq, float %i.db)
  %i.ik = fptosi float %i.ij to i32               ; 3 uses
  %.not.i.us = icmp ult i32 %i.ik, 256
  %isnotneg.i.us = icmp sgt i32 %i.ik, -1
  %i.il = sext i1 %isnotneg.i.us to i8
  %i.im = trunc nuw i32 %i.ik to i8
  %.0.i.us = select i1 %.not.i.us, i8 %i.im, i8 %i.il
  %i.in = getelementptr inbounds i8, ptr %.0148196.us, i64 %indvars.iv199
  store i8 %.0.i.us, ptr %i.in, align 1, !tbaa !40
  %indvars.iv.next200 = add nsw i64 %indvars.iv199, %i.dc ; 2 uses
  %i.io = icmp slt i64 %indvars.iv.next200, %i.dd
  br i1 %i.io, label %.lr.ph187.us, label %.critedge.us, !llvm.loop !177

.critedge.us:                                     ; preds = %.lr.ph187.us, %bb.o
  %i.ip = getelementptr inbounds i8, ptr %.0155189.us, i64 %i.v
  %i.iq = getelementptr inbounds i8, ptr %.0154190.us, i64 %i.v
  %i.ir = getelementptr inbounds i8, ptr %.0153191.us, i64 %i.v
  %i.is = getelementptr inbounds i8, ptr %.0152192.us, i64 %i.v
  %i.it = getelementptr inbounds i8, ptr %.0151193.us, i64 %i.y
  %i.iu = getelementptr inbounds i8, ptr %.0150194.us, i64 %i.y
  %i.iv = getelementptr inbounds i8, ptr %.0149195.us, i64 %i.y
  %i.iw = getelementptr inbounds i8, ptr %.0148196.us, i64 %i.y
  %i.ix = add nsw i32 %.0147197.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ix, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader184.us, !llvm.loop !178

._crit_edge:                                      ; preds = %.critedge.us, %.preheader184.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_slice_9_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 3 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 3 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load <2 x i32>, ptr %i.t, align 8, !tbaa !34
  %i.v = ashr <2 x i32> %i.u, splat (i32 1)       ; 4 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.x = extractelement <2 x i32> %i.v, i64 1     ; 4 uses
  %i.y = mul i32 %i.x, %i.n
  %i.z = sext i32 %i.y to i64                     ; 10 uses
  %i.aa = getelementptr [2 x i8], ptr %i.w, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38 ; 2 uses
  %i.ad = getelementptr [2 x i8], ptr %i.ac, i64 %i.z ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38 ; 2 uses
  %i.ag = getelementptr [2 x i8], ptr %i.af, i64 %i.z ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38 ; 2 uses
  %i.aj = getelementptr [2 x i8], ptr %i.ai, i64 %i.z ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38 ; 2 uses
  %i.am = getelementptr [2 x i8], ptr %i.al, i64 %i.z ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !38 ; 2 uses
  %i.ap = getelementptr [2 x i8], ptr %i.ao, i64 %i.z ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38 ; 2 uses
  %i.as = getelementptr [2 x i8], ptr %i.ar, i64 %i.z ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.av = getelementptr [2 x i8], ptr %i.au, i64 %i.z ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !52
  %i.ay = icmp eq i32 %i.ax, 32
  br i1 %i.ay, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ba = load float, ptr %i.az, align 4, !tbaa !47
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !47
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bf = load float, ptr %i.be, align 4, !tbaa !47
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bh = load <2 x float>, ptr %i.bb, align 8, !tbaa !47
  %i.bi = load <2 x float>, ptr %i.bg, align 8, !tbaa !47
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !47
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !34
  %i.bn = sitofp nsz i32 %i.bm to float
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !34
  %i.br = sitofp nsz i32 %i.bq to float
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !34
  %i.bu = sitofp nsz i32 %i.bt to float
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bw = load <2 x i32>, ptr %i.bo, align 8, !tbaa !34
  %i.bx = sitofp <2 x i32> %i.bw to <2 x float>
  %i.by = load <2 x i32>, ptr %i.bv, align 8, !tbaa !34
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !34
  %i.cc = sitofp nsz i32 %i.cb to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in150 = phi float [ %i.bf, %bb.b ], [ %i.bu, %bb.c ]
  %.in152 = phi float [ %i.ba, %bb.b ], [ %i.bn, %bb.c ]
  %.in154 = phi float [ %i.bd, %bb.b ], [ %i.br, %bb.c ]
  %i.cd = phi nsz float [ %i.bk, %bb.b ], [ %i.cc, %bb.c ]
  %i.ce = phi <2 x float> [ %i.bh, %bb.b ], [ %i.bx, %bb.c ]
  %i.cf = phi <2 x float> [ %i.bi, %bb.b ], [ %i.bz, %bb.c ]
  %i.cg = fptosi float %.in154 to i32             ; 2 uses
  %i.ch = fptosi float %.in152 to i32             ; 2 uses
  %i.ci = fptosi <2 x float> %i.ce to <2 x i32>   ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !47 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.cm = load <2 x float>, ptr %i.cl, align 4, !tbaa !47 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.co = load float, ptr %i.cn, align 4, !tbaa !47 ; 2 uses
  %i.cp = icmp slt i32 %i.n, %i.s
  br i1 %i.cp, label %.preheader156.lr.ph, label %._crit_edge

.preheader156.lr.ph:                              ; preds = %bb.d
  %i.cq = fptosi float %i.cd to i32
  %i.cr = fptosi <2 x float> %i.cf to <2 x i32>
  %i.cs = fptosi float %.in150 to i32
  %i.ct = icmp sgt i32 %i.d, 0
  %i.cu = sitofp nsz i32 %i.cs to float           ; 2 uses
  %i.cv = sitofp <2 x i32> %i.cr to <2 x float>   ; 3 uses
  %i.cw = sitofp nsz i32 %i.cq to float           ; 2 uses
  %i.cx = sext i32 %i.x to i64                    ; 6 uses
  %i.cy = extractelement <2 x i32> %i.v, i64 0    ; 4 uses
  %i.cz = sext i32 %i.cy to i64                   ; 6 uses
  br i1 %i.ct, label %.preheader156.us.preheader, label %._crit_edge

.preheader156.us.preheader:                       ; preds = %.preheader156.lr.ph
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.db = sext i32 %i.f to i64                    ; 2 uses
  %i.dc = zext nneg i32 %i.d to i64               ; 8 uses
  %i.dd = load i32, ptr %i.da, align 4, !tbaa !41
  %i.de = icmp eq i32 %i.dd, 4
  %i.df = xor i64 %i.m, -1
  %i.dg = add i64 %i.r, %i.df
  %i.dh = and i64 %i.dg, 4294967295               ; 2 uses
  %i.di = mul nsw i64 %i.dh, %i.cz
  %i.dj = shl i64 %i.di, 1
  %i.dk = shl nsw i64 %i.z, 1                     ; 2 uses
  %i.dl = mul nsw i64 %i.dh, %i.cx
  %i.dm = shl i64 %i.dl, 1
  %i.dn = xor i64 %i.m, -1
  %i.do = add i64 %i.r, %i.dn
  %i.dp = and i64 %i.do, 4294967295               ; 2 uses
  %i.dq = mul nsw i64 %i.dp, %i.cz
  %i.dr = shl i64 %i.dq, 1
  %i.ds = shl nsw i64 %i.z, 1                     ; 2 uses
  %i.dt = mul nsw i64 %i.dp, %i.cx
  %i.du = shl i64 %i.dt, 1
  %i.dv = insertelement <4 x ptr> poison, ptr %i.ap, i64 0
  %i.dw = shufflevector <4 x ptr> %i.dv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dx = insertelement <4 x ptr> poison, ptr %i.as, i64 0 ; 2 uses
  %i.dy = insertelement <4 x ptr> %i.dx, ptr %i.aa, i64 1
  %i.dz = insertelement <4 x ptr> %i.dy, ptr %i.ad, i64 2
  %i.ea = insertelement <4 x ptr> %i.dz, ptr %i.ag, i64 3
  %i.eb = insertelement <2 x ptr> poison, ptr %i.aa, i64 0
  %i.ec = insertelement <2 x ptr> %i.eb, ptr %i.ad, i64 1
  %i.ed = shufflevector <4 x ptr> %i.dx, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ee = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ef = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> zeroinitializer
  %min.iters.check282 = icmp ugt i32 %i.d, 15
  %ident.check202.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check282, i1 %ident.check202.not, i1 false
  %i.eg = shl nuw nsw i64 %i.dc, 1
  %i.eh = add nsw i64 %i.eg, -2                   ; 2 uses
  %i.ei = add i64 %i.dr, %i.eh
  %i.ej = add i64 %i.ei, %i.ds
  %i.ek = add i64 %i.ej, 2                        ; 3 uses
  %scevgep205.a = getelementptr i8, ptr %i.al, i64 %i.ek ; 5 uses
  %scevgep206.a = getelementptr i8, ptr %i.ao, i64 %i.ek ; 2 uses
  %scevgep207.a = getelementptr i8, ptr %i.ar, i64 %i.ek ; 3 uses
  %i.el = add i64 %i.du, %i.eh
  %i.em = add i64 %i.el, %i.ds
  %i.en = add i64 %i.em, 2                        ; 3 uses
  %scevgep208.a = getelementptr i8, ptr %i.w, i64 %i.en ; 3 uses
  %scevgep209.a = getelementptr i8, ptr %i.ac, i64 %i.en ; 3 uses
  %scevgep210 = getelementptr i8, ptr %i.af, i64 %i.en ; 3 uses
  %bound0211 = icmp ult ptr %i.am, %scevgep206.a
  %bound1212 = icmp ult ptr %i.ap, %scevgep205.a
  %found.conflict213 = and i1 %bound0211, %bound1212
  %bound0216 = icmp ult ptr %i.am, %scevgep207.a
  %bound1217 = icmp ult ptr %i.as, %scevgep205.a
  %found.conflict218 = and i1 %bound0216, %bound1217
  %bound0221 = icmp ult ptr %i.am, %scevgep208.a
  %bound1222 = icmp ult ptr %i.aa, %scevgep205.a
  %found.conflict223 = and i1 %bound0221, %bound1222
  %i.eo = or <8 x i32> %i.ee, %i.ef
  %bound0227 = icmp ult ptr %i.am, %scevgep209.a
  %bound1228 = icmp ult ptr %i.ad, %scevgep205.a
  %found.conflict229 = and i1 %bound0227, %bound1228
  %bound0233 = icmp ult ptr %i.am, %scevgep210
  %bound1234 = icmp ult ptr %i.ag, %scevgep205.a
  %found.conflict235 = and i1 %bound0233, %bound1234
  %i.ep = icmp slt <8 x i32> %i.eo, zeroinitializer
  %bound0275 = icmp ult ptr %i.as, %scevgep210
  %bound1276 = icmp ult ptr %i.ag, %scevgep207.a
  %stride.check219 = icmp slt i32 %i.cy, 0
  %i.eq = insertelement <4 x ptr> poison, ptr %scevgep207.a, i64 0 ; 2 uses
  %i.er = insertelement <4 x ptr> %i.eq, ptr %scevgep208.a, i64 1
  %i.es = insertelement <4 x ptr> %i.er, ptr %scevgep209.a, i64 2
  %i.et = insertelement <4 x ptr> %i.es, ptr %scevgep210, i64 3
  %i.eu = icmp ult <4 x ptr> %i.dw, %i.et
  %i.ev = insertelement <4 x ptr> poison, ptr %scevgep206.a, i64 0
  %i.ew = shufflevector <4 x ptr> %i.ev, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ex = icmp ult <4 x ptr> %i.ea, %i.ew
  %i.ey = insertelement <2 x ptr> poison, ptr %scevgep208.a, i64 0
  %i.ez = insertelement <2 x ptr> %i.ey, ptr %scevgep209.a, i64 1
  %i.fa = icmp ult <2 x ptr> %i.ed, %i.ez
  %i.fb = shufflevector <4 x ptr> %i.eq, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.fc = icmp ult <2 x ptr> %i.ec, %i.fb
  %i.fd = insertelement <8 x i1> poison, i1 %bound0275, i64 6
  %i.fe = insertelement <8 x i1> %i.fd, i1 %stride.check219, i64 7
  %i.ff = shufflevector <4 x i1> %i.eu, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fg = shufflevector <8 x i1> %i.ff, <8 x i1> %i.fe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fh = shufflevector <2 x i1> %i.fa, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fi = shufflevector <8 x i1> %i.fg, <8 x i1> %i.fh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fj = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1276, i64 6
  %i.fk = shufflevector <4 x i1> %i.ex, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fl = shufflevector <8 x i1> %i.fk, <8 x i1> %i.fj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fm = shufflevector <2 x i1> %i.fc, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fn = shufflevector <8 x i1> %i.fl, <8 x i1> %i.fm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fo = and <8 x i1> %i.fi, %i.fn
  %i.fp = or i32 %i.x, %i.cy
  %i.fq = icmp slt i32 %i.fp, 0
  %rdx.op = or <8 x i1> %i.fo, %i.ep
  %i.fr = bitcast <8 x i1> %rdx.op to i8
  %i.fs = icmp ne i8 %i.fr, 0
  %op.rdx = or i1 %i.fs, %found.conflict218
  %op.rdx313.a = or i1 %found.conflict213, %found.conflict223
  %op.rdx314.a = or i1 %found.conflict229, %found.conflict235
  %op.rdx315.a = or i1 %op.rdx, %op.rdx313.a
  %op.rdx316.a = or i1 %op.rdx314.a, %i.fq
  %op.rdx317 = or i1 %op.rdx315.a, %op.rdx316.a
  %n.vec284 = and i64 %i.dc, 2147483640           ; 3 uses
  %broadcast.splatinsert285 = insertelement <8 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat286 = shufflevector <8 x i32> %broadcast.splatinsert285, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert287 = insertelement <8 x float> poison, float %i.ck, i64 0
  %broadcast.splat288 = shufflevector <8 x float> %broadcast.splatinsert287, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert289 = insertelement <8 x float> poison, float %i.cu, i64 0
  %broadcast.splat290 = shufflevector <8 x float> %broadcast.splatinsert289, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat292 = shufflevector <2 x i32> %i.ci, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat294 = shufflevector <2 x float> %i.cm, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat296 = shufflevector <2 x float> %i.cv, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat298 = shufflevector <2 x i32> %i.ci, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat300 = shufflevector <2 x float> %i.cm, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat302 = shufflevector <2 x float> %i.cv, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %cmp.n310 = icmp eq i64 %n.vec284, %i.dc
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond312 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.ft = shl nuw nsw i64 %i.dc, 1
  %i.fu = add nsw i64 %i.ft, -2                   ; 2 uses
  %i.fv = getelementptr i8, ptr %i.au, i64 %i.dj
  %i.fw = getelementptr i8, ptr %i.fv, i64 %i.fu
  %i.fx = getelementptr i8, ptr %i.fw, i64 %i.dk
  %scevgep = getelementptr i8, ptr %i.fx, i64 2
  %i.fy = getelementptr i8, ptr %i.ai, i64 %i.dm
  %i.fz = getelementptr i8, ptr %i.fy, i64 %i.fu
  %i.ga = getelementptr i8, ptr %i.fz, i64 %i.dk
  %scevgep195 = getelementptr i8, ptr %i.ga, i64 2
  %bound0 = icmp ult ptr %i.av, %scevgep195
  %bound1 = icmp ult ptr %i.aj, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.gb = or i32 %i.x, %i.cy
  %i.gc = icmp slt i32 %i.gb, 0
  %i.gd = or i1 %found.conflict, %i.gc
  %n.vec = and i64 %i.dc, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.cg, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert197 = insertelement <8 x float> poison, float %i.co, i64 0
  %broadcast.splat198 = shufflevector <8 x float> %broadcast.splatinsert197, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert199 = insertelement <8 x float> poison, float %i.cw, i64 0
  %broadcast.splat200 = shufflevector <8 x float> %broadcast.splatinsert199, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.dc
  br label %.preheader156.us

.preheader156.us:                                 ; preds = %.preheader156.us.preheader, %.critedge.us
  %.0125169.us = phi i32 [ %i.jh, %.critedge.us ], [ %i.n, %.preheader156.us.preheader ]
  %.0126168.us = phi ptr [ %i.jg, %.critedge.us ], [ %i.av, %.preheader156.us.preheader ] ; 3 uses
  %.0127167.us = phi ptr [ %i.jf, %.critedge.us ], [ %i.as, %.preheader156.us.preheader ] ; 3 uses
  %.0128166.us = phi ptr [ %i.je, %.critedge.us ], [ %i.ap, %.preheader156.us.preheader ] ; 3 uses
  %.0129165.us = phi ptr [ %i.jd, %.critedge.us ], [ %i.am, %.preheader156.us.preheader ] ; 3 uses
  %.0130164.us = phi ptr [ %i.jc, %.critedge.us ], [ %i.aj, %.preheader156.us.preheader ] ; 3 uses
  %.0131163.us = phi ptr [ %i.jb, %.critedge.us ], [ %i.ag, %.preheader156.us.preheader ] ; 3 uses
  %.0132162.us = phi ptr [ %i.ja, %.critedge.us ], [ %i.ad, %.preheader156.us.preheader ] ; 3 uses
  %.0133161.us = phi ptr [ %i.iz, %.critedge.us ], [ %i.aa, %.preheader156.us.preheader ] ; 3 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx317
  br i1 %brmerge, label %scalar.ph281.preheader, label %vector.body303

vector.body303:                                   ; preds = %.preheader156.us, %vector.body303
  %index304 = phi i64 [ %index.next308, %vector.body303 ], [ 0, %.preheader156.us ] ; 7 uses
  %i.ge = getelementptr inbounds [2 x i8], ptr %.0133161.us, i64 %index304
  %wide.load305.a = load <8 x i16>, ptr %i.ge, align 2, !tbaa !49, !alias.scope !194
  %i.gf = zext <8 x i16> %wide.load305.a to <8 x i32>
  %i.gg = getelementptr inbounds [2 x i8], ptr %.0132162.us, i64 %index304
  %wide.load306.a = load <8 x i16>, ptr %i.gg, align 2, !tbaa !49, !alias.scope !195
  %i.gh = zext <8 x i16> %wide.load306.a to <8 x i32>
  %i.gi = getelementptr inbounds [2 x i8], ptr %.0131163.us, i64 %index304
  %wide.load307 = load <8 x i16>, ptr %i.gi, align 2, !tbaa !49, !alias.scope !196
  %i.gj = zext <8 x i16> %wide.load307 to <8 x i32>
  %i.gk = sub nsw <8 x i32> %i.gf, %broadcast.splat286
  %i.gl = sitofp nsz <8 x i32> %i.gk to <8 x float>
  %i.gm = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gl, <8 x float> %broadcast.splat288, <8 x float> %broadcast.splat290)
  %i.gn = fptosi <8 x float> %i.gm to <8 x i32>
  %i.go = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gn, <8 x i32> zeroinitializer)
  %i.gp = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.go, <8 x i32> splat (i32 511))
  %i.gq = trunc nuw nsw <8 x i32> %i.gp to <8 x i16>
  %i.gr = getelementptr inbounds [2 x i8], ptr %.0129165.us, i64 %index304
  store <8 x i16> %i.gq, ptr %i.gr, align 2, !tbaa !49, !alias.scope !197, !noalias !198
  %i.gs = sub nsw <8 x i32> %i.gh, %broadcast.splat292
  %i.gt = sitofp nsz <8 x i32> %i.gs to <8 x float>
  %i.gu = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gt, <8 x float> %broadcast.splat294, <8 x float> %broadcast.splat296)
  %i.gv = fptosi <8 x float> %i.gu to <8 x i32>
  %i.gw = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gv, <8 x i32> zeroinitializer)
  %i.gx = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gw, <8 x i32> splat (i32 511))
  %i.gy = trunc nuw nsw <8 x i32> %i.gx to <8 x i16>
  %i.gz = getelementptr inbounds [2 x i8], ptr %.0128166.us, i64 %index304
  store <8 x i16> %i.gy, ptr %i.gz, align 2, !tbaa !49, !alias.scope !199, !noalias !200
  %i.ha = sub nsw <8 x i32> %i.gj, %broadcast.splat298
  %i.hb = sitofp nsz <8 x i32> %i.ha to <8 x float>
  %i.hc = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.hb, <8 x float> %broadcast.splat300, <8 x float> %broadcast.splat302)
  %i.hd = fptosi <8 x float> %i.hc to <8 x i32>
  %i.he = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.hd, <8 x i32> zeroinitializer)
  %i.hf = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.he, <8 x i32> splat (i32 511))
  %i.hg = trunc nuw nsw <8 x i32> %i.hf to <8 x i16>
  %i.hh = getelementptr inbounds [2 x i8], ptr %.0127167.us, i64 %index304
  store <8 x i16> %i.hg, ptr %i.hh, align 2, !tbaa !49, !alias.scope !201, !noalias !202
  %index.next308 = add nuw i64 %index304, 8       ; 2 uses
  %i.hi = icmp eq i64 %index.next308, %n.vec284
  br i1 %i.hi, label %middle.block309, label %vector.body303, !llvm.loop !186

middle.block309:                                  ; preds = %vector.body303
  br i1 %cmp.n310, label %.lr.ph159.us, label %scalar.ph281.preheader

scalar.ph281.preheader:                           ; preds = %.preheader156.us, %middle.block309
  %indvars.iv.ph = phi i64 [ %n.vec284, %middle.block309 ], [ 0, %.preheader156.us ]
  br label %scalar.ph281

scalar.ph281:                                     ; preds = %scalar.ph281.preheader, %scalar.ph281
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph281 ], [ %indvars.iv.ph, %scalar.ph281.preheader ] ; 7 uses
  %i.hj = getelementptr inbounds [2 x i8], ptr %.0133161.us, i64 %indvars.iv
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !49
  %i.hl = zext i16 %i.hk to i32
  %i.hm = getelementptr inbounds [2 x i8], ptr %.0132162.us, i64 %indvars.iv
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !49
  %i.ho = getelementptr inbounds [2 x i8], ptr %.0131163.us, i64 %indvars.iv
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !49
  %i.hq = sub nsw i32 %i.hl, %i.ch
  %i.hr = sitofp nsz i32 %i.hq to float
  %i.hs = tail call nsz float @llvm.fmuladd.f32(float %i.hr, float %i.ck, float %i.cu)
  %i.ht = fptosi float %i.hs to i32
  %i.hu = tail call i32 @llvm.smax.i32(i32 %i.ht, i32 0)
  %i.hv = tail call i32 @llvm.umin.i32(i32 %i.hu, i32 511)
  %i.hw = trunc nuw nsw i32 %i.hv to i16
  %i.hx = getelementptr inbounds [2 x i8], ptr %.0129165.us, i64 %indvars.iv
  store i16 %i.hw, ptr %i.hx, align 2, !tbaa !49
  %i.hy = getelementptr inbounds [2 x i8], ptr %.0128166.us, i64 %indvars.iv
  %i.hz = insertelement <2 x i16> poison, i16 %i.hn, i64 0
  %i.ia = insertelement <2 x i16> %i.hz, i16 %i.hp, i64 1
  %i.ib = zext <2 x i16> %i.ia to <2 x i32>
  %i.ic = sub nsw <2 x i32> %i.ib, %i.ci
  %i.id = sitofp <2 x i32> %i.ic to <2 x float>
  %i.ie = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.id, <2 x float> %i.cm, <2 x float> %i.cv)
  %i.if = fptosi <2 x float> %i.ie to <2 x i32>
  %i.ig = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.if, <2 x i32> zeroinitializer)
  %i.ih = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ig, <2 x i32> splat (i32 511))
  %i.ii = trunc nuw nsw <2 x i32> %i.ih to <2 x i16> ; 2 uses
  %i.ij = extractelement <2 x i16> %i.ii, i64 0
  store i16 %i.ij, ptr %i.hy, align 2, !tbaa !49
  %i.ik = getelementptr inbounds [2 x i8], ptr %.0127167.us, i64 %indvars.iv
  %i.il = extractelement <2 x i16> %i.ii, i64 1
  store i16 %i.il, ptr %i.ik, align 2, !tbaa !49
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.db ; 2 uses
  %i.im = icmp slt i64 %indvars.iv.next, %i.dc
  br i1 %i.im, label %scalar.ph281, label %.lr.ph159.us, !llvm.loop !187

.lr.ph159.split.us:                               ; preds = %.lr.ph159.split.us.preheader318, %.lr.ph159.split.us
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %.lr.ph159.split.us ], [ %indvars.iv188.ph, %.lr.ph159.split.us.preheader318 ] ; 3 uses
  %i.in = getelementptr inbounds [2 x i8], ptr %.0130164.us, i64 %indvars.iv188
  %i.io = load i16, ptr %i.in, align 2, !tbaa !49
  %i.ip = zext i16 %i.io to i32
  %i.iq = sub nsw i32 %i.ip, %i.cg
  %i.ir = sitofp nsz i32 %i.iq to float
  %i.is = tail call nsz float @llvm.fmuladd.f32(float %i.ir, float %i.co, float %i.cw)
  %i.it = fptosi float %i.is to i32
  %i.iu = tail call i32 @llvm.smax.i32(i32 %i.it, i32 0)
  %i.iv = tail call i32 @llvm.umin.i32(i32 %i.iu, i32 511)
  %i.iw = trunc nuw nsw i32 %i.iv to i16
  %i.ix = getelementptr inbounds [2 x i8], ptr %.0126168.us, i64 %indvars.iv188
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !49
  %indvars.iv.next189 = add nsw i64 %indvars.iv188, %i.db ; 2 uses
  %i.iy = icmp slt i64 %indvars.iv.next189, %i.dc
  br i1 %i.iy, label %.lr.ph159.split.us, label %.critedge.us, !llvm.loop !188

.critedge.us:                                     ; preds = %.lr.ph159.split.us, %middle.block, %.lr.ph159.us
  %i.iz = getelementptr inbounds [2 x i8], ptr %.0133161.us, i64 %i.cx
  %i.ja = getelementptr inbounds [2 x i8], ptr %.0132162.us, i64 %i.cx
  %i.jb = getelementptr inbounds [2 x i8], ptr %.0131163.us, i64 %i.cx
  %i.jc = getelementptr inbounds [2 x i8], ptr %.0130164.us, i64 %i.cx
  %i.jd = getelementptr inbounds [2 x i8], ptr %.0129165.us, i64 %i.cz
  %i.je = getelementptr inbounds [2 x i8], ptr %.0128166.us, i64 %i.cz
  %i.jf = getelementptr inbounds [2 x i8], ptr %.0127167.us, i64 %i.cz
  %i.jg = getelementptr inbounds [2 x i8], ptr %.0126168.us, i64 %i.cz
  %i.jh = add nsw i32 %.0125169.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.jh, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader156.us, !llvm.loop !189

.lr.ph159.us:                                     ; preds = %scalar.ph281, %middle.block309
  br i1 %i.de, label %.lr.ph159.split.us.preheader, label %.critedge.us

.lr.ph159.split.us.preheader:                     ; preds = %.lr.ph159.us
  %or.cond312.not = xor i1 %or.cond312, true
  %brmerge319 = select i1 %or.cond312.not, i1 true, i1 %i.gd
  br i1 %brmerge319, label %.lr.ph159.split.us.preheader318, label %vector.body

vector.body:                                      ; preds = %.lr.ph159.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph159.split.us.preheader ] ; 3 uses
  %i.ji = getelementptr inbounds [2 x i8], ptr %.0130164.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ji, align 2, !tbaa !49, !alias.scope !203
  %i.jj = zext <8 x i16> %wide.load to <8 x i32>
  %i.jk = sub nsw <8 x i32> %i.jj, %broadcast.splat
  %i.jl = sitofp nsz <8 x i32> %i.jk to <8 x float>
  %i.jm = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jl, <8 x float> %broadcast.splat198, <8 x float> %broadcast.splat200)
  %i.jn = fptosi <8 x float> %i.jm to <8 x i32>
  %i.jo = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jn, <8 x i32> zeroinitializer)
  %i.jp = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.jo, <8 x i32> splat (i32 511))
  %i.jq = trunc nuw nsw <8 x i32> %i.jp to <8 x i16>
  %i.jr = getelementptr inbounds [2 x i8], ptr %.0126168.us, i64 %index
  store <8 x i16> %i.jq, ptr %i.jr, align 2, !tbaa !49, !alias.scope !204, !noalias !203
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.js = icmp eq i64 %index.next, %n.vec
  br i1 %i.js, label %middle.block, label %vector.body, !llvm.loop !193

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us, label %.lr.ph159.split.us.preheader318

.lr.ph159.split.us.preheader318:                  ; preds = %.lr.ph159.split.us.preheader, %middle.block
  %indvars.iv188.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph159.split.us.preheader ]
  br label %.lr.ph159.split.us

._crit_edge:                                      ; preds = %.critedge.us, %.preheader156.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_preserve_slice_9_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 3 uses
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
  %i.u = load i32, ptr %i.t, align 4, !tbaa !36
  %i.v = ashr i32 %i.u, 1                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !35
  %i.y = ashr i32 %i.x, 1                         ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !38
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 9 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.af = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !52
  %i.ba = icmp eq i32 %i.az, 32                   ; 2 uses
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
  %i.ci = fptosi float %.in182 to i32             ; 2 uses
  %i.cj = fptosi float %.in180 to i32
  %i.ck = fptosi <2 x float> %i.cg to <2 x i32>
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !47
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !47
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !47 ; 2 uses
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
  %i.cz = sitofp nsz i32 %i.cs to float           ; 2 uses
  %i.da = sext i32 %i.v to i64                    ; 5 uses
  %i.db = sext i32 %i.y to i64                    ; 5 uses
  br i1 %i.cv, label %.preheader184.lr.ph.split.us, label %._crit_edge

.preheader184.lr.ph.split.us:                     ; preds = %.preheader184.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !50
  %i.df = sext i32 %i.f to i64                    ; 2 uses
  %i.dg = zext nneg i32 %i.d to i64               ; 5 uses
  %i.dh = load i32, ptr %i.dc, align 4, !tbaa !41
  %i.di = icmp eq i32 %i.dh, 4
  %i.dj = xor i64 %i.m, -1
  %i.dk = add i64 %i.r, %i.dj
  %i.dl = and i64 %i.dk, 4294967295               ; 2 uses
  %i.dm = mul nsw i64 %i.dl, %i.db
  %i.dn = shl i64 %i.dm, 1
  %i.do = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dp = mul nsw i64 %i.dl, %i.da
  %i.dq = shl i64 %i.dp, 1
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.dr = shl nuw nsw i64 %i.dg, 1
  %i.ds = add nsw i64 %i.dr, -2                   ; 2 uses
  %i.dt = getelementptr i8, ptr %i.aw, i64 %i.dn
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.ds
  %i.dv = getelementptr i8, ptr %i.du, i64 %i.do
  %scevgep = getelementptr i8, ptr %i.dv, i64 2
  %i.dw = getelementptr i8, ptr %i.ak, i64 %i.dq
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.ds
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.do
  %scevgep223 = getelementptr i8, ptr %i.dy, i64 2
  %bound0 = icmp ult ptr %i.ax, %scevgep223
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dz = or i32 %i.v, %i.y
  %i.ea = icmp slt i32 %i.dz, 0
  %i.eb = or i1 %found.conflict, %i.ea
  %n.vec = and i64 %i.dg, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert225 = insertelement <8 x float> poison, float %i.cq, i64 0
  %broadcast.splat226 = shufflevector <8 x float> %broadcast.splatinsert225, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <8 x float> poison, float %i.cz, i64 0
  %broadcast.splat228 = shufflevector <8 x float> %broadcast.splatinsert227, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.dg
  br label %.preheader184.us

.preheader184.us:                                 ; preds = %.critedge.us, %.preheader184.lr.ph.split.us
  %.0147197.us = phi i32 [ %i.n, %.preheader184.lr.ph.split.us ], [ %i.jt, %.critedge.us ]
  %.0148196.us = phi ptr [ %i.ax, %.preheader184.lr.ph.split.us ], [ %i.js, %.critedge.us ] ; 3 uses
  %.0149195.us = phi ptr [ %i.au, %.preheader184.lr.ph.split.us ], [ %i.jr, %.critedge.us ] ; 2 uses
  %.0150194.us = phi ptr [ %i.ar, %.preheader184.lr.ph.split.us ], [ %i.jq, %.critedge.us ] ; 2 uses
  %.0151193.us = phi ptr [ %i.ao, %.preheader184.lr.ph.split.us ], [ %i.jp, %.critedge.us ] ; 2 uses
  %.0152192.us = phi ptr [ %i.al, %.preheader184.lr.ph.split.us ], [ %i.jo, %.critedge.us ] ; 3 uses
  %.0153191.us = phi ptr [ %i.ai, %.preheader184.lr.ph.split.us ], [ %i.jn, %.critedge.us ] ; 2 uses
  %.0154190.us = phi ptr [ %i.af, %.preheader184.lr.ph.split.us ], [ %i.jm, %.critedge.us ] ; 2 uses
  %.0155189.us = phi ptr [ %i.ac, %.preheader184.lr.ph.split.us ], [ %i.jl, %.critedge.us ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader184.us, %preserve_color.exit.thread.us
  %indvars.iv = phi i64 [ 0, %.preheader184.us ], [ %indvars.iv.next, %preserve_color.exit.thread.us ] ; 7 uses
  %i.ec = getelementptr inbounds [2 x i8], ptr %.0155189.us, i64 %indvars.iv
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !49 ; 2 uses
  %i.ee = zext i16 %i.ed to i32
  %i.ef = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %indvars.iv
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !49 ; 2 uses
  %i.eh = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %indvars.iv
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !49 ; 2 uses
  %i.ej = insertelement <2 x i16> poison, i16 %i.eg, i64 0
  %i.ek = insertelement <2 x i16> %i.ej, i16 %i.ei, i64 1
  %i.el = zext <2 x i16> %i.ek to <2 x i32>
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.em = load i32, ptr %i.cw, align 4, !tbaa !53
  %i.en = sitofp nsz i32 %i.em to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.eo = phi nsz float [ %i.en, %bb.f ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.ep = sub nsw i32 %i.ee, %i.cj
  %i.eq = sitofp nsz i32 %i.ep to float
  %i.er = tail call nsz float @llvm.fmuladd.f32(float %i.eq, float %i.cm, float %i.cx)
  %i.es = fptosi float %i.er to i32               ; 3 uses
  %i.et = sub nsw <2 x i32> %i.el, %i.ck
  %i.eu = sitofp <2 x i32> %i.et to <2 x float>
  %i.ev = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.co, <2 x float> %i.cy)
  %i.ew = fptosi <2 x float> %i.ev to <2 x i32>   ; 3 uses
  %i.ex = uitofp i16 %i.ed to float               ; 6 uses
  %i.ey = uitofp i16 %i.eg to float               ; 6 uses
  %i.ez = uitofp i16 %i.ei to float               ; 6 uses
  %i.fa = sitofp nsz i32 %i.es to float           ; 7 uses
  %i.fb = sitofp <2 x i32> %i.ew to <2 x float>   ; 13 uses
  switch i32 %i.de, label %preserve_color.exit.thread.us [
    i32 1, label %bb.m
    i32 2, label %bb.l
    i32 3, label %bb.k
    i32 4, label %bb.j
    i32 5, label %bb.i
    i32 6, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.fc = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.fa, i64 1
  %i.fe = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fg = fdiv nsz <2 x float> %i.fd, %i.ff       ; 3 uses
  %i.fh = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fi = insertelement <2 x float> %i.fh, float %i.ey, i64 0
  %i.fj = fdiv nsz <2 x float> %i.fi, %i.ff       ; 3 uses
  %i.fk = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.fl = fdiv nsz <2 x float> %i.fk, %i.ff       ; 3 uses
  %i.fm = fmul nsz <2 x float> %i.fg, %i.fg
  %i.fn = fmul nsz <2 x float> %i.fj, %i.fj
  %i.fo = fmul nsz <2 x float> %i.fj, %i.fn
  %i.fp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fg, <2 x float> %i.fo)
  %i.fq = fmul nsz <2 x float> %i.fl, %i.fl
  %i.fr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fl, <2 x float> %i.fp) ; 2 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 0
  %i.ft = tail call nsz float @cbrtf(float noundef %i.fs) #9
  %i.fu = extractelement <2 x float> %i.fr, i64 1
  %i.fv = tail call nsz float @cbrtf(float noundef %i.fu) #9
  %i.fw = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.fv, i64 1
  br label %preserve_color.exit.us

bb.i:                                             ; preds = %bb.g
  %i.fy = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.fa, i64 1
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
  %.0145.us = phi i32 [ %i.ie, %bb.n ], [ %i.es, %preserve_color.exit.us ], [ %i.es, %bb.g ]
  %i.ij = phi <2 x i32> [ %i.ii, %bb.n ], [ %i.ew, %preserve_color.exit.us ], [ %i.ew, %bb.g ] ; 2 uses
  %i.ik = tail call i32 @llvm.smax.i32(i32 %.0145.us, i32 0)
  %i.il = tail call i32 @llvm.umin.i32(i32 %i.ik, i32 511)
  %i.im = trunc nuw nsw i32 %i.il to i16
  %i.in = getelementptr inbounds [2 x i8], ptr %.0151193.us, i64 %indvars.iv
  store i16 %i.im, ptr %i.in, align 2, !tbaa !49
  %i.io = extractelement <2 x i32> %i.ij, i64 0
  %i.ip = tail call i32 @llvm.smax.i32(i32 %i.io, i32 0)
  %i.iq = tail call i32 @llvm.umin.i32(i32 %i.ip, i32 511)
end_hunk_3
begin_hunk_4_@colorlevels_preserve_slice_9_planar:bb.a
  %i.ix = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %indvars.iv
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !49
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.df ; 2 uses
  %i.iy = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.iy, label %bb.e, label %.lr.ph187.us, !llvm.loop !205

.lr.ph187.split.us:                               ; preds = %.lr.ph187.split.us.preheader229, %.lr.ph187.split.us
  %indvars.iv216 = phi i64 [ %indvars.iv.next217, %.lr.ph187.split.us ], [ %indvars.iv216.ph, %.lr.ph187.split.us.preheader229 ] ; 3 uses
  %i.iz = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %indvars.iv216
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !49
  %i.jb = zext i16 %i.ja to i32
  %i.jc = sub nsw i32 %i.jb, %i.ci
  %i.jd = sitofp nsz i32 %i.jc to float
  %i.je = tail call nsz float @llvm.fmuladd.f32(float %i.jd, float %i.cq, float %i.cz)
  %i.jf = fptosi float %i.je to i32
  %i.jg = tail call i32 @llvm.smax.i32(i32 %i.jf, i32 0)
  %i.jh = tail call i32 @llvm.umin.i32(i32 %i.jg, i32 511)
  %i.ji = trunc nuw nsw i32 %i.jh to i16
  %i.jj = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %indvars.iv216
  store i16 %i.ji, ptr %i.jj, align 2, !tbaa !49
  %indvars.iv.next217 = add nsw i64 %indvars.iv216, %i.df ; 2 uses
  %i.jk = icmp slt i64 %indvars.iv.next217, %i.dg
  br i1 %i.jk, label %.lr.ph187.split.us, label %.critedge.us, !llvm.loop !206

.critedge.us:                                     ; preds = %.lr.ph187.split.us, %middle.block, %.lr.ph187.us
  %i.jl = getelementptr inbounds [2 x i8], ptr %.0155189.us, i64 %i.da
  %i.jm = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %i.da
  %i.jn = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %i.da
  %i.jo = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %i.da
  %i.jp = getelementptr inbounds [2 x i8], ptr %.0151193.us, i64 %i.db
  %i.jq = getelementptr inbounds [2 x i8], ptr %.0150194.us, i64 %i.db
  %i.jr = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %i.db
  %i.js = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %i.db
  %i.jt = add nsw i32 %.0147197.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.jt, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader184.us, !llvm.loop !207

.lr.ph187.us:                                     ; preds = %preserve_color.exit.thread.us
  br i1 %i.di, label %.lr.ph187.split.us.preheader, label %.critedge.us

.lr.ph187.split.us.preheader:                     ; preds = %.lr.ph187.us
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.eb
  br i1 %brmerge, label %.lr.ph187.split.us.preheader229, label %vector.body

vector.body:                                      ; preds = %.lr.ph187.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph187.split.us.preheader ] ; 3 uses
  %i.ju = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ju, align 2, !tbaa !49, !alias.scope !212
  %i.jv = zext <8 x i16> %wide.load to <8 x i32>
  %i.jw = sub nsw <8 x i32> %i.jv, %broadcast.splat
  %i.jx = sitofp nsz <8 x i32> %i.jw to <8 x float>
  %i.jy = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jx, <8 x float> %broadcast.splat226, <8 x float> %broadcast.splat228)
  %i.jz = fptosi <8 x float> %i.jy to <8 x i32>
  %i.ka = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jz, <8 x i32> zeroinitializer)
  %i.kb = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ka, <8 x i32> splat (i32 511))
  %i.kc = trunc nuw nsw <8 x i32> %i.kb to <8 x i16>
  %i.kd = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %index
  store <8 x i16> %i.kc, ptr %i.kd, align 2, !tbaa !49, !alias.scope !213, !noalias !212
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ke = icmp eq i64 %index.next, %n.vec
  br i1 %i.ke, label %middle.block, label %vector.body, !llvm.loop !211

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us, label %.lr.ph187.split.us.preheader229

.lr.ph187.split.us.preheader229:                  ; preds = %.lr.ph187.split.us.preheader, %middle.block
  %indvars.iv216.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph187.split.us.preheader ]
  br label %.lr.ph187.split.us

._crit_edge:                                      ; preds = %.critedge.us, %.preheader184.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_slice_10_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 3 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 3 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load <2 x i32>, ptr %i.t, align 8, !tbaa !34
  %i.v = ashr <2 x i32> %i.u, splat (i32 1)       ; 4 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.x = extractelement <2 x i32> %i.v, i64 1     ; 4 uses
  %i.y = mul i32 %i.x, %i.n
  %i.z = sext i32 %i.y to i64                     ; 10 uses
  %i.aa = getelementptr [2 x i8], ptr %i.w, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38 ; 2 uses
  %i.ad = getelementptr [2 x i8], ptr %i.ac, i64 %i.z ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38 ; 2 uses
  %i.ag = getelementptr [2 x i8], ptr %i.af, i64 %i.z ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38 ; 2 uses
  %i.aj = getelementptr [2 x i8], ptr %i.ai, i64 %i.z ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38 ; 2 uses
  %i.am = getelementptr [2 x i8], ptr %i.al, i64 %i.z ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !38 ; 2 uses
  %i.ap = getelementptr [2 x i8], ptr %i.ao, i64 %i.z ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38 ; 2 uses
  %i.as = getelementptr [2 x i8], ptr %i.ar, i64 %i.z ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.av = getelementptr [2 x i8], ptr %i.au, i64 %i.z ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !52
  %i.ay = icmp eq i32 %i.ax, 32
  br i1 %i.ay, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ba = load float, ptr %i.az, align 4, !tbaa !47
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !47
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bf = load float, ptr %i.be, align 4, !tbaa !47
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bh = load <2 x float>, ptr %i.bb, align 8, !tbaa !47
  %i.bi = load <2 x float>, ptr %i.bg, align 8, !tbaa !47
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !47
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !34
  %i.bn = sitofp nsz i32 %i.bm to float
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !34
  %i.br = sitofp nsz i32 %i.bq to float
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !34
  %i.bu = sitofp nsz i32 %i.bt to float
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bw = load <2 x i32>, ptr %i.bo, align 8, !tbaa !34
  %i.bx = sitofp <2 x i32> %i.bw to <2 x float>
  %i.by = load <2 x i32>, ptr %i.bv, align 8, !tbaa !34
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !34
  %i.cc = sitofp nsz i32 %i.cb to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in150 = phi float [ %i.bf, %bb.b ], [ %i.bu, %bb.c ]
  %.in152 = phi float [ %i.ba, %bb.b ], [ %i.bn, %bb.c ]
  %.in154 = phi float [ %i.bd, %bb.b ], [ %i.br, %bb.c ]
  %i.cd = phi nsz float [ %i.bk, %bb.b ], [ %i.cc, %bb.c ]
  %i.ce = phi <2 x float> [ %i.bh, %bb.b ], [ %i.bx, %bb.c ]
  %i.cf = phi <2 x float> [ %i.bi, %bb.b ], [ %i.bz, %bb.c ]
  %i.cg = fptosi float %.in154 to i32             ; 2 uses
  %i.ch = fptosi float %.in152 to i32             ; 2 uses
  %i.ci = fptosi <2 x float> %i.ce to <2 x i32>   ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !47 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.cm = load <2 x float>, ptr %i.cl, align 4, !tbaa !47 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.co = load float, ptr %i.cn, align 4, !tbaa !47 ; 2 uses
  %i.cp = icmp slt i32 %i.n, %i.s
  br i1 %i.cp, label %.preheader156.lr.ph, label %._crit_edge

.preheader156.lr.ph:                              ; preds = %bb.d
  %i.cq = fptosi float %i.cd to i32
  %i.cr = fptosi <2 x float> %i.cf to <2 x i32>
  %i.cs = fptosi float %.in150 to i32
  %i.ct = icmp sgt i32 %i.d, 0
  %i.cu = sitofp nsz i32 %i.cs to float           ; 2 uses
  %i.cv = sitofp <2 x i32> %i.cr to <2 x float>   ; 3 uses
  %i.cw = sitofp nsz i32 %i.cq to float           ; 2 uses
  %i.cx = sext i32 %i.x to i64                    ; 6 uses
  %i.cy = extractelement <2 x i32> %i.v, i64 0    ; 4 uses
  %i.cz = sext i32 %i.cy to i64                   ; 6 uses
  br i1 %i.ct, label %.preheader156.us.preheader, label %._crit_edge

.preheader156.us.preheader:                       ; preds = %.preheader156.lr.ph
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.db = sext i32 %i.f to i64                    ; 2 uses
  %i.dc = zext nneg i32 %i.d to i64               ; 8 uses
  %i.dd = load i32, ptr %i.da, align 4, !tbaa !41
  %i.de = icmp eq i32 %i.dd, 4
  %i.df = xor i64 %i.m, -1
  %i.dg = add i64 %i.r, %i.df
  %i.dh = and i64 %i.dg, 4294967295               ; 2 uses
  %i.di = mul nsw i64 %i.dh, %i.cz
  %i.dj = shl i64 %i.di, 1
  %i.dk = shl nsw i64 %i.z, 1                     ; 2 uses
  %i.dl = mul nsw i64 %i.dh, %i.cx
  %i.dm = shl i64 %i.dl, 1
  %i.dn = xor i64 %i.m, -1
  %i.do = add i64 %i.r, %i.dn
  %i.dp = and i64 %i.do, 4294967295               ; 2 uses
  %i.dq = mul nsw i64 %i.dp, %i.cz
  %i.dr = shl i64 %i.dq, 1
  %i.ds = shl nsw i64 %i.z, 1                     ; 2 uses
  %i.dt = mul nsw i64 %i.dp, %i.cx
  %i.du = shl i64 %i.dt, 1
  %i.dv = insertelement <4 x ptr> poison, ptr %i.ap, i64 0
  %i.dw = shufflevector <4 x ptr> %i.dv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dx = insertelement <4 x ptr> poison, ptr %i.as, i64 0 ; 2 uses
  %i.dy = insertelement <4 x ptr> %i.dx, ptr %i.aa, i64 1
  %i.dz = insertelement <4 x ptr> %i.dy, ptr %i.ad, i64 2
  %i.ea = insertelement <4 x ptr> %i.dz, ptr %i.ag, i64 3
  %i.eb = insertelement <2 x ptr> poison, ptr %i.aa, i64 0
  %i.ec = insertelement <2 x ptr> %i.eb, ptr %i.ad, i64 1
  %i.ed = shufflevector <4 x ptr> %i.dx, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ee = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ef = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> zeroinitializer
  %min.iters.check282 = icmp ugt i32 %i.d, 15
  %ident.check202.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check282, i1 %ident.check202.not, i1 false
  %i.eg = shl nuw nsw i64 %i.dc, 1
  %i.eh = add nsw i64 %i.eg, -2                   ; 2 uses
  %i.ei = add i64 %i.dr, %i.eh
  %i.ej = add i64 %i.ei, %i.ds
  %i.ek = add i64 %i.ej, 2                        ; 3 uses
  %scevgep205.a = getelementptr i8, ptr %i.al, i64 %i.ek ; 5 uses
  %scevgep206.a = getelementptr i8, ptr %i.ao, i64 %i.ek ; 2 uses
  %scevgep207.a = getelementptr i8, ptr %i.ar, i64 %i.ek ; 3 uses
  %i.el = add i64 %i.du, %i.eh
  %i.em = add i64 %i.el, %i.ds
  %i.en = add i64 %i.em, 2                        ; 3 uses
  %scevgep208.a = getelementptr i8, ptr %i.w, i64 %i.en ; 3 uses
  %scevgep209.a = getelementptr i8, ptr %i.ac, i64 %i.en ; 3 uses
  %scevgep210 = getelementptr i8, ptr %i.af, i64 %i.en ; 3 uses
  %bound0211 = icmp ult ptr %i.am, %scevgep206.a
  %bound1212 = icmp ult ptr %i.ap, %scevgep205.a
  %found.conflict213 = and i1 %bound0211, %bound1212
  %bound0216 = icmp ult ptr %i.am, %scevgep207.a
  %bound1217 = icmp ult ptr %i.as, %scevgep205.a
  %found.conflict218 = and i1 %bound0216, %bound1217
  %bound0221 = icmp ult ptr %i.am, %scevgep208.a
  %bound1222 = icmp ult ptr %i.aa, %scevgep205.a
  %found.conflict223 = and i1 %bound0221, %bound1222
  %i.eo = or <8 x i32> %i.ee, %i.ef
  %bound0227 = icmp ult ptr %i.am, %scevgep209.a
  %bound1228 = icmp ult ptr %i.ad, %scevgep205.a
  %found.conflict229 = and i1 %bound0227, %bound1228
  %bound0233 = icmp ult ptr %i.am, %scevgep210
  %bound1234 = icmp ult ptr %i.ag, %scevgep205.a
  %found.conflict235 = and i1 %bound0233, %bound1234
  %i.ep = icmp slt <8 x i32> %i.eo, zeroinitializer
  %bound0275 = icmp ult ptr %i.as, %scevgep210
  %bound1276 = icmp ult ptr %i.ag, %scevgep207.a
  %stride.check219 = icmp slt i32 %i.cy, 0
  %i.eq = insertelement <4 x ptr> poison, ptr %scevgep207.a, i64 0 ; 2 uses
  %i.er = insertelement <4 x ptr> %i.eq, ptr %scevgep208.a, i64 1
  %i.es = insertelement <4 x ptr> %i.er, ptr %scevgep209.a, i64 2
  %i.et = insertelement <4 x ptr> %i.es, ptr %scevgep210, i64 3
  %i.eu = icmp ult <4 x ptr> %i.dw, %i.et
  %i.ev = insertelement <4 x ptr> poison, ptr %scevgep206.a, i64 0
  %i.ew = shufflevector <4 x ptr> %i.ev, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ex = icmp ult <4 x ptr> %i.ea, %i.ew
  %i.ey = insertelement <2 x ptr> poison, ptr %scevgep208.a, i64 0
  %i.ez = insertelement <2 x ptr> %i.ey, ptr %scevgep209.a, i64 1
  %i.fa = icmp ult <2 x ptr> %i.ed, %i.ez
  %i.fb = shufflevector <4 x ptr> %i.eq, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.fc = icmp ult <2 x ptr> %i.ec, %i.fb
  %i.fd = insertelement <8 x i1> poison, i1 %bound0275, i64 6
  %i.fe = insertelement <8 x i1> %i.fd, i1 %stride.check219, i64 7
  %i.ff = shufflevector <4 x i1> %i.eu, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fg = shufflevector <8 x i1> %i.ff, <8 x i1> %i.fe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fh = shufflevector <2 x i1> %i.fa, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fi = shufflevector <8 x i1> %i.fg, <8 x i1> %i.fh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fj = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1276, i64 6
  %i.fk = shufflevector <4 x i1> %i.ex, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fl = shufflevector <8 x i1> %i.fk, <8 x i1> %i.fj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fm = shufflevector <2 x i1> %i.fc, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fn = shufflevector <8 x i1> %i.fl, <8 x i1> %i.fm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fo = and <8 x i1> %i.fi, %i.fn
  %i.fp = or i32 %i.x, %i.cy
  %i.fq = icmp slt i32 %i.fp, 0
  %rdx.op = or <8 x i1> %i.fo, %i.ep
  %i.fr = bitcast <8 x i1> %rdx.op to i8
  %i.fs = icmp ne i8 %i.fr, 0
  %op.rdx = or i1 %i.fs, %found.conflict218
  %op.rdx313.a = or i1 %found.conflict213, %found.conflict223
  %op.rdx314.a = or i1 %found.conflict229, %found.conflict235
  %op.rdx315.a = or i1 %op.rdx, %op.rdx313.a
  %op.rdx316.a = or i1 %op.rdx314.a, %i.fq
  %op.rdx317 = or i1 %op.rdx315.a, %op.rdx316.a
  %n.vec284 = and i64 %i.dc, 2147483640           ; 3 uses
  %broadcast.splatinsert285 = insertelement <8 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat286 = shufflevector <8 x i32> %broadcast.splatinsert285, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert287 = insertelement <8 x float> poison, float %i.ck, i64 0
  %broadcast.splat288 = shufflevector <8 x float> %broadcast.splatinsert287, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert289 = insertelement <8 x float> poison, float %i.cu, i64 0
  %broadcast.splat290 = shufflevector <8 x float> %broadcast.splatinsert289, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat292 = shufflevector <2 x i32> %i.ci, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat294 = shufflevector <2 x float> %i.cm, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat296 = shufflevector <2 x float> %i.cv, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat298 = shufflevector <2 x i32> %i.ci, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat300 = shufflevector <2 x float> %i.cm, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat302 = shufflevector <2 x float> %i.cv, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %cmp.n310 = icmp eq i64 %n.vec284, %i.dc
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond312 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.ft = shl nuw nsw i64 %i.dc, 1
  %i.fu = add nsw i64 %i.ft, -2                   ; 2 uses
  %i.fv = getelementptr i8, ptr %i.au, i64 %i.dj
  %i.fw = getelementptr i8, ptr %i.fv, i64 %i.fu
  %i.fx = getelementptr i8, ptr %i.fw, i64 %i.dk
  %scevgep = getelementptr i8, ptr %i.fx, i64 2
  %i.fy = getelementptr i8, ptr %i.ai, i64 %i.dm
  %i.fz = getelementptr i8, ptr %i.fy, i64 %i.fu
  %i.ga = getelementptr i8, ptr %i.fz, i64 %i.dk
  %scevgep195 = getelementptr i8, ptr %i.ga, i64 2
  %bound0 = icmp ult ptr %i.av, %scevgep195
  %bound1 = icmp ult ptr %i.aj, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.gb = or i32 %i.x, %i.cy
  %i.gc = icmp slt i32 %i.gb, 0
  %i.gd = or i1 %found.conflict, %i.gc
  %n.vec = and i64 %i.dc, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.cg, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert197 = insertelement <8 x float> poison, float %i.co, i64 0
  %broadcast.splat198 = shufflevector <8 x float> %broadcast.splatinsert197, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert199 = insertelement <8 x float> poison, float %i.cw, i64 0
  %broadcast.splat200 = shufflevector <8 x float> %broadcast.splatinsert199, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.dc
  br label %.preheader156.us

.preheader156.us:                                 ; preds = %.preheader156.us.preheader, %.critedge.us
  %.0125169.us = phi i32 [ %i.jh, %.critedge.us ], [ %i.n, %.preheader156.us.preheader ]
  %.0126168.us = phi ptr [ %i.jg, %.critedge.us ], [ %i.av, %.preheader156.us.preheader ] ; 3 uses
  %.0127167.us = phi ptr [ %i.jf, %.critedge.us ], [ %i.as, %.preheader156.us.preheader ] ; 3 uses
  %.0128166.us = phi ptr [ %i.je, %.critedge.us ], [ %i.ap, %.preheader156.us.preheader ] ; 3 uses
  %.0129165.us = phi ptr [ %i.jd, %.critedge.us ], [ %i.am, %.preheader156.us.preheader ] ; 3 uses
  %.0130164.us = phi ptr [ %i.jc, %.critedge.us ], [ %i.aj, %.preheader156.us.preheader ] ; 3 uses
  %.0131163.us = phi ptr [ %i.jb, %.critedge.us ], [ %i.ag, %.preheader156.us.preheader ] ; 3 uses
  %.0132162.us = phi ptr [ %i.ja, %.critedge.us ], [ %i.ad, %.preheader156.us.preheader ] ; 3 uses
  %.0133161.us = phi ptr [ %i.iz, %.critedge.us ], [ %i.aa, %.preheader156.us.preheader ] ; 3 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx317
  br i1 %brmerge, label %scalar.ph281.preheader, label %vector.body303

vector.body303:                                   ; preds = %.preheader156.us, %vector.body303
  %index304 = phi i64 [ %index.next308, %vector.body303 ], [ 0, %.preheader156.us ] ; 7 uses
  %i.ge = getelementptr inbounds [2 x i8], ptr %.0133161.us, i64 %index304
  %wide.load305.a = load <8 x i16>, ptr %i.ge, align 2, !tbaa !49, !alias.scope !229
  %i.gf = zext <8 x i16> %wide.load305.a to <8 x i32>
  %i.gg = getelementptr inbounds [2 x i8], ptr %.0132162.us, i64 %index304
  %wide.load306.a = load <8 x i16>, ptr %i.gg, align 2, !tbaa !49, !alias.scope !230
  %i.gh = zext <8 x i16> %wide.load306.a to <8 x i32>
  %i.gi = getelementptr inbounds [2 x i8], ptr %.0131163.us, i64 %index304
  %wide.load307 = load <8 x i16>, ptr %i.gi, align 2, !tbaa !49, !alias.scope !231
  %i.gj = zext <8 x i16> %wide.load307 to <8 x i32>
  %i.gk = sub nsw <8 x i32> %i.gf, %broadcast.splat286
  %i.gl = sitofp nsz <8 x i32> %i.gk to <8 x float>
  %i.gm = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gl, <8 x float> %broadcast.splat288, <8 x float> %broadcast.splat290)
  %i.gn = fptosi <8 x float> %i.gm to <8 x i32>
  %i.go = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gn, <8 x i32> zeroinitializer)
  %i.gp = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.go, <8 x i32> splat (i32 1023))
  %i.gq = trunc nuw nsw <8 x i32> %i.gp to <8 x i16>
  %i.gr = getelementptr inbounds [2 x i8], ptr %.0129165.us, i64 %index304
  store <8 x i16> %i.gq, ptr %i.gr, align 2, !tbaa !49, !alias.scope !232, !noalias !233
  %i.gs = sub nsw <8 x i32> %i.gh, %broadcast.splat292
  %i.gt = sitofp nsz <8 x i32> %i.gs to <8 x float>
  %i.gu = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gt, <8 x float> %broadcast.splat294, <8 x float> %broadcast.splat296)
  %i.gv = fptosi <8 x float> %i.gu to <8 x i32>
  %i.gw = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gv, <8 x i32> zeroinitializer)
  %i.gx = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gw, <8 x i32> splat (i32 1023))
  %i.gy = trunc nuw nsw <8 x i32> %i.gx to <8 x i16>
  %i.gz = getelementptr inbounds [2 x i8], ptr %.0128166.us, i64 %index304
  store <8 x i16> %i.gy, ptr %i.gz, align 2, !tbaa !49, !alias.scope !234, !noalias !235
  %i.ha = sub nsw <8 x i32> %i.gj, %broadcast.splat298
  %i.hb = sitofp nsz <8 x i32> %i.ha to <8 x float>
  %i.hc = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.hb, <8 x float> %broadcast.splat300, <8 x float> %broadcast.splat302)
  %i.hd = fptosi <8 x float> %i.hc to <8 x i32>
  %i.he = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.hd, <8 x i32> zeroinitializer)
  %i.hf = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.he, <8 x i32> splat (i32 1023))
  %i.hg = trunc nuw nsw <8 x i32> %i.hf to <8 x i16>
  %i.hh = getelementptr inbounds [2 x i8], ptr %.0127167.us, i64 %index304
  store <8 x i16> %i.hg, ptr %i.hh, align 2, !tbaa !49, !alias.scope !236, !noalias !237
  %index.next308 = add nuw i64 %index304, 8       ; 2 uses
  %i.hi = icmp eq i64 %index.next308, %n.vec284
  br i1 %i.hi, label %middle.block309, label %vector.body303, !llvm.loop !221

middle.block309:                                  ; preds = %vector.body303
  br i1 %cmp.n310, label %.lr.ph159.us, label %scalar.ph281.preheader

scalar.ph281.preheader:                           ; preds = %.preheader156.us, %middle.block309
  %indvars.iv.ph = phi i64 [ %n.vec284, %middle.block309 ], [ 0, %.preheader156.us ]
  br label %scalar.ph281

scalar.ph281:                                     ; preds = %scalar.ph281.preheader, %scalar.ph281
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph281 ], [ %indvars.iv.ph, %scalar.ph281.preheader ] ; 7 uses
  %i.hj = getelementptr inbounds [2 x i8], ptr %.0133161.us, i64 %indvars.iv
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !49
  %i.hl = zext i16 %i.hk to i32
  %i.hm = getelementptr inbounds [2 x i8], ptr %.0132162.us, i64 %indvars.iv
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !49
  %i.ho = getelementptr inbounds [2 x i8], ptr %.0131163.us, i64 %indvars.iv
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !49
  %i.hq = sub nsw i32 %i.hl, %i.ch
  %i.hr = sitofp nsz i32 %i.hq to float
  %i.hs = tail call nsz float @llvm.fmuladd.f32(float %i.hr, float %i.ck, float %i.cu)
  %i.ht = fptosi float %i.hs to i32
  %i.hu = tail call i32 @llvm.smax.i32(i32 %i.ht, i32 0)
  %i.hv = tail call i32 @llvm.umin.i32(i32 %i.hu, i32 1023)
  %i.hw = trunc nuw nsw i32 %i.hv to i16
  %i.hx = getelementptr inbounds [2 x i8], ptr %.0129165.us, i64 %indvars.iv
  store i16 %i.hw, ptr %i.hx, align 2, !tbaa !49
  %i.hy = getelementptr inbounds [2 x i8], ptr %.0128166.us, i64 %indvars.iv
  %i.hz = insertelement <2 x i16> poison, i16 %i.hn, i64 0
  %i.ia = insertelement <2 x i16> %i.hz, i16 %i.hp, i64 1
  %i.ib = zext <2 x i16> %i.ia to <2 x i32>
  %i.ic = sub nsw <2 x i32> %i.ib, %i.ci
  %i.id = sitofp <2 x i32> %i.ic to <2 x float>
  %i.ie = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.id, <2 x float> %i.cm, <2 x float> %i.cv)
  %i.if = fptosi <2 x float> %i.ie to <2 x i32>
  %i.ig = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.if, <2 x i32> zeroinitializer)
  %i.ih = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ig, <2 x i32> splat (i32 1023))
  %i.ii = trunc nuw nsw <2 x i32> %i.ih to <2 x i16> ; 2 uses
  %i.ij = extractelement <2 x i16> %i.ii, i64 0
  store i16 %i.ij, ptr %i.hy, align 2, !tbaa !49
  %i.ik = getelementptr inbounds [2 x i8], ptr %.0127167.us, i64 %indvars.iv
  %i.il = extractelement <2 x i16> %i.ii, i64 1
  store i16 %i.il, ptr %i.ik, align 2, !tbaa !49
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.db ; 2 uses
  %i.im = icmp slt i64 %indvars.iv.next, %i.dc
  br i1 %i.im, label %scalar.ph281, label %.lr.ph159.us, !llvm.loop !222

.lr.ph159.split.us:                               ; preds = %.lr.ph159.split.us.preheader318, %.lr.ph159.split.us
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %.lr.ph159.split.us ], [ %indvars.iv188.ph, %.lr.ph159.split.us.preheader318 ] ; 3 uses
  %i.in = getelementptr inbounds [2 x i8], ptr %.0130164.us, i64 %indvars.iv188
  %i.io = load i16, ptr %i.in, align 2, !tbaa !49
  %i.ip = zext i16 %i.io to i32
  %i.iq = sub nsw i32 %i.ip, %i.cg
  %i.ir = sitofp nsz i32 %i.iq to float
  %i.is = tail call nsz float @llvm.fmuladd.f32(float %i.ir, float %i.co, float %i.cw)
  %i.it = fptosi float %i.is to i32
  %i.iu = tail call i32 @llvm.smax.i32(i32 %i.it, i32 0)
  %i.iv = tail call i32 @llvm.umin.i32(i32 %i.iu, i32 1023)
  %i.iw = trunc nuw nsw i32 %i.iv to i16
  %i.ix = getelementptr inbounds [2 x i8], ptr %.0126168.us, i64 %indvars.iv188
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !49
  %indvars.iv.next189 = add nsw i64 %indvars.iv188, %i.db ; 2 uses
  %i.iy = icmp slt i64 %indvars.iv.next189, %i.dc
  br i1 %i.iy, label %.lr.ph159.split.us, label %.critedge.us, !llvm.loop !223

.critedge.us:                                     ; preds = %.lr.ph159.split.us, %middle.block, %.lr.ph159.us
  %i.iz = getelementptr inbounds [2 x i8], ptr %.0133161.us, i64 %i.cx
  %i.ja = getelementptr inbounds [2 x i8], ptr %.0132162.us, i64 %i.cx
  %i.jb = getelementptr inbounds [2 x i8], ptr %.0131163.us, i64 %i.cx
  %i.jc = getelementptr inbounds [2 x i8], ptr %.0130164.us, i64 %i.cx
  %i.jd = getelementptr inbounds [2 x i8], ptr %.0129165.us, i64 %i.cz
  %i.je = getelementptr inbounds [2 x i8], ptr %.0128166.us, i64 %i.cz
  %i.jf = getelementptr inbounds [2 x i8], ptr %.0127167.us, i64 %i.cz
  %i.jg = getelementptr inbounds [2 x i8], ptr %.0126168.us, i64 %i.cz
  %i.jh = add nsw i32 %.0125169.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.jh, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader156.us, !llvm.loop !224

.lr.ph159.us:                                     ; preds = %scalar.ph281, %middle.block309
  br i1 %i.de, label %.lr.ph159.split.us.preheader, label %.critedge.us

.lr.ph159.split.us.preheader:                     ; preds = %.lr.ph159.us
  %or.cond312.not = xor i1 %or.cond312, true
  %brmerge319 = select i1 %or.cond312.not, i1 true, i1 %i.gd
  br i1 %brmerge319, label %.lr.ph159.split.us.preheader318, label %vector.body

vector.body:                                      ; preds = %.lr.ph159.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph159.split.us.preheader ] ; 3 uses
  %i.ji = getelementptr inbounds [2 x i8], ptr %.0130164.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ji, align 2, !tbaa !49, !alias.scope !238
  %i.jj = zext <8 x i16> %wide.load to <8 x i32>
  %i.jk = sub nsw <8 x i32> %i.jj, %broadcast.splat
  %i.jl = sitofp nsz <8 x i32> %i.jk to <8 x float>
  %i.jm = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jl, <8 x float> %broadcast.splat198, <8 x float> %broadcast.splat200)
  %i.jn = fptosi <8 x float> %i.jm to <8 x i32>
  %i.jo = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jn, <8 x i32> zeroinitializer)
  %i.jp = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.jo, <8 x i32> splat (i32 1023))
  %i.jq = trunc nuw nsw <8 x i32> %i.jp to <8 x i16>
  %i.jr = getelementptr inbounds [2 x i8], ptr %.0126168.us, i64 %index
  store <8 x i16> %i.jq, ptr %i.jr, align 2, !tbaa !49, !alias.scope !239, !noalias !238
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.js = icmp eq i64 %index.next, %n.vec
  br i1 %i.js, label %middle.block, label %vector.body, !llvm.loop !228

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us, label %.lr.ph159.split.us.preheader318

.lr.ph159.split.us.preheader318:                  ; preds = %.lr.ph159.split.us.preheader, %middle.block
  %indvars.iv188.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph159.split.us.preheader ]
  br label %.lr.ph159.split.us

._crit_edge:                                      ; preds = %.critedge.us, %.preheader156.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_preserve_slice_10_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 3 uses
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
  %i.u = load i32, ptr %i.t, align 4, !tbaa !36
  %i.v = ashr i32 %i.u, 1                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !35
  %i.y = ashr i32 %i.x, 1                         ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !38
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 9 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.af = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !52
  %i.ba = icmp eq i32 %i.az, 32                   ; 2 uses
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
  %i.ci = fptosi float %.in182 to i32             ; 2 uses
  %i.cj = fptosi float %.in180 to i32
  %i.ck = fptosi <2 x float> %i.cg to <2 x i32>
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !47
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !47
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !47 ; 2 uses
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
  %i.cz = sitofp nsz i32 %i.cs to float           ; 2 uses
  %i.da = sext i32 %i.v to i64                    ; 5 uses
  %i.db = sext i32 %i.y to i64                    ; 5 uses
  br i1 %i.cv, label %.preheader184.lr.ph.split.us, label %._crit_edge

.preheader184.lr.ph.split.us:                     ; preds = %.preheader184.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !50
  %i.df = sext i32 %i.f to i64                    ; 2 uses
  %i.dg = zext nneg i32 %i.d to i64               ; 5 uses
  %i.dh = load i32, ptr %i.dc, align 4, !tbaa !41
  %i.di = icmp eq i32 %i.dh, 4
  %i.dj = xor i64 %i.m, -1
  %i.dk = add i64 %i.r, %i.dj
  %i.dl = and i64 %i.dk, 4294967295               ; 2 uses
  %i.dm = mul nsw i64 %i.dl, %i.db
  %i.dn = shl i64 %i.dm, 1
  %i.do = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dp = mul nsw i64 %i.dl, %i.da
  %i.dq = shl i64 %i.dp, 1
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.dr = shl nuw nsw i64 %i.dg, 1
  %i.ds = add nsw i64 %i.dr, -2                   ; 2 uses
  %i.dt = getelementptr i8, ptr %i.aw, i64 %i.dn
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.ds
  %i.dv = getelementptr i8, ptr %i.du, i64 %i.do
  %scevgep = getelementptr i8, ptr %i.dv, i64 2
  %i.dw = getelementptr i8, ptr %i.ak, i64 %i.dq
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.ds
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.do
  %scevgep223 = getelementptr i8, ptr %i.dy, i64 2
  %bound0 = icmp ult ptr %i.ax, %scevgep223
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dz = or i32 %i.v, %i.y
  %i.ea = icmp slt i32 %i.dz, 0
  %i.eb = or i1 %found.conflict, %i.ea
  %n.vec = and i64 %i.dg, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert225 = insertelement <8 x float> poison, float %i.cq, i64 0
  %broadcast.splat226 = shufflevector <8 x float> %broadcast.splatinsert225, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <8 x float> poison, float %i.cz, i64 0
  %broadcast.splat228 = shufflevector <8 x float> %broadcast.splatinsert227, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.dg
  br label %.preheader184.us

.preheader184.us:                                 ; preds = %.critedge.us, %.preheader184.lr.ph.split.us
  %.0147197.us = phi i32 [ %i.n, %.preheader184.lr.ph.split.us ], [ %i.jt, %.critedge.us ]
  %.0148196.us = phi ptr [ %i.ax, %.preheader184.lr.ph.split.us ], [ %i.js, %.critedge.us ] ; 3 uses
  %.0149195.us = phi ptr [ %i.au, %.preheader184.lr.ph.split.us ], [ %i.jr, %.critedge.us ] ; 2 uses
  %.0150194.us = phi ptr [ %i.ar, %.preheader184.lr.ph.split.us ], [ %i.jq, %.critedge.us ] ; 2 uses
  %.0151193.us = phi ptr [ %i.ao, %.preheader184.lr.ph.split.us ], [ %i.jp, %.critedge.us ] ; 2 uses
  %.0152192.us = phi ptr [ %i.al, %.preheader184.lr.ph.split.us ], [ %i.jo, %.critedge.us ] ; 3 uses
  %.0153191.us = phi ptr [ %i.ai, %.preheader184.lr.ph.split.us ], [ %i.jn, %.critedge.us ] ; 2 uses
  %.0154190.us = phi ptr [ %i.af, %.preheader184.lr.ph.split.us ], [ %i.jm, %.critedge.us ] ; 2 uses
  %.0155189.us = phi ptr [ %i.ac, %.preheader184.lr.ph.split.us ], [ %i.jl, %.critedge.us ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader184.us, %preserve_color.exit.thread.us
  %indvars.iv = phi i64 [ 0, %.preheader184.us ], [ %indvars.iv.next, %preserve_color.exit.thread.us ] ; 7 uses
  %i.ec = getelementptr inbounds [2 x i8], ptr %.0155189.us, i64 %indvars.iv
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !49 ; 2 uses
  %i.ee = zext i16 %i.ed to i32
  %i.ef = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %indvars.iv
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !49 ; 2 uses
  %i.eh = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %indvars.iv
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !49 ; 2 uses
  %i.ej = insertelement <2 x i16> poison, i16 %i.eg, i64 0
  %i.ek = insertelement <2 x i16> %i.ej, i16 %i.ei, i64 1
  %i.el = zext <2 x i16> %i.ek to <2 x i32>
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.em = load i32, ptr %i.cw, align 4, !tbaa !53
  %i.en = sitofp nsz i32 %i.em to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.eo = phi nsz float [ %i.en, %bb.f ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.ep = sub nsw i32 %i.ee, %i.cj
  %i.eq = sitofp nsz i32 %i.ep to float
  %i.er = tail call nsz float @llvm.fmuladd.f32(float %i.eq, float %i.cm, float %i.cx)
  %i.es = fptosi float %i.er to i32               ; 3 uses
  %i.et = sub nsw <2 x i32> %i.el, %i.ck
  %i.eu = sitofp <2 x i32> %i.et to <2 x float>
  %i.ev = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.co, <2 x float> %i.cy)
  %i.ew = fptosi <2 x float> %i.ev to <2 x i32>   ; 3 uses
  %i.ex = uitofp i16 %i.ed to float               ; 6 uses
  %i.ey = uitofp i16 %i.eg to float               ; 6 uses
  %i.ez = uitofp i16 %i.ei to float               ; 6 uses
  %i.fa = sitofp nsz i32 %i.es to float           ; 7 uses
  %i.fb = sitofp <2 x i32> %i.ew to <2 x float>   ; 13 uses
  switch i32 %i.de, label %preserve_color.exit.thread.us [
    i32 1, label %bb.m
    i32 2, label %bb.l
    i32 3, label %bb.k
    i32 4, label %bb.j
    i32 5, label %bb.i
    i32 6, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.fc = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.fa, i64 1
  %i.fe = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fg = fdiv nsz <2 x float> %i.fd, %i.ff       ; 3 uses
  %i.fh = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fi = insertelement <2 x float> %i.fh, float %i.ey, i64 0
  %i.fj = fdiv nsz <2 x float> %i.fi, %i.ff       ; 3 uses
  %i.fk = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.fl = fdiv nsz <2 x float> %i.fk, %i.ff       ; 3 uses
  %i.fm = fmul nsz <2 x float> %i.fg, %i.fg
  %i.fn = fmul nsz <2 x float> %i.fj, %i.fj
  %i.fo = fmul nsz <2 x float> %i.fj, %i.fn
  %i.fp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fg, <2 x float> %i.fo)
  %i.fq = fmul nsz <2 x float> %i.fl, %i.fl
  %i.fr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fl, <2 x float> %i.fp) ; 2 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 0
  %i.ft = tail call nsz float @cbrtf(float noundef %i.fs) #9
  %i.fu = extractelement <2 x float> %i.fr, i64 1
  %i.fv = tail call nsz float @cbrtf(float noundef %i.fu) #9
  %i.fw = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.fv, i64 1
  br label %preserve_color.exit.us

bb.i:                                             ; preds = %bb.g
  %i.fy = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.fa, i64 1
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
  %.0145.us = phi i32 [ %i.ie, %bb.n ], [ %i.es, %preserve_color.exit.us ], [ %i.es, %bb.g ]
  %i.ij = phi <2 x i32> [ %i.ii, %bb.n ], [ %i.ew, %preserve_color.exit.us ], [ %i.ew, %bb.g ] ; 2 uses
  %i.ik = tail call i32 @llvm.smax.i32(i32 %.0145.us, i32 0)
  %i.il = tail call i32 @llvm.umin.i32(i32 %i.ik, i32 1023)
  %i.im = trunc nuw nsw i32 %i.il to i16
  %i.in = getelementptr inbounds [2 x i8], ptr %.0151193.us, i64 %indvars.iv
  store i16 %i.im, ptr %i.in, align 2, !tbaa !49
  %i.io = extractelement <2 x i32> %i.ij, i64 0
  %i.ip = tail call i32 @llvm.smax.i32(i32 %i.io, i32 0)
  %i.iq = tail call i32 @llvm.umin.i32(i32 %i.ip, i32 1023)
end_hunk_4
begin_hunk_5_@colorlevels_preserve_slice_10_planar:bb.a
  %i.ix = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %indvars.iv
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !49
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.df ; 2 uses
  %i.iy = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.iy, label %bb.e, label %.lr.ph187.us, !llvm.loop !240

.lr.ph187.split.us:                               ; preds = %.lr.ph187.split.us.preheader229, %.lr.ph187.split.us
  %indvars.iv216 = phi i64 [ %indvars.iv.next217, %.lr.ph187.split.us ], [ %indvars.iv216.ph, %.lr.ph187.split.us.preheader229 ] ; 3 uses
  %i.iz = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %indvars.iv216
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !49
  %i.jb = zext i16 %i.ja to i32
  %i.jc = sub nsw i32 %i.jb, %i.ci
  %i.jd = sitofp nsz i32 %i.jc to float
  %i.je = tail call nsz float @llvm.fmuladd.f32(float %i.jd, float %i.cq, float %i.cz)
  %i.jf = fptosi float %i.je to i32
  %i.jg = tail call i32 @llvm.smax.i32(i32 %i.jf, i32 0)
  %i.jh = tail call i32 @llvm.umin.i32(i32 %i.jg, i32 1023)
  %i.ji = trunc nuw nsw i32 %i.jh to i16
  %i.jj = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %indvars.iv216
  store i16 %i.ji, ptr %i.jj, align 2, !tbaa !49
  %indvars.iv.next217 = add nsw i64 %indvars.iv216, %i.df ; 2 uses
  %i.jk = icmp slt i64 %indvars.iv.next217, %i.dg
  br i1 %i.jk, label %.lr.ph187.split.us, label %.critedge.us, !llvm.loop !241

.critedge.us:                                     ; preds = %.lr.ph187.split.us, %middle.block, %.lr.ph187.us
  %i.jl = getelementptr inbounds [2 x i8], ptr %.0155189.us, i64 %i.da
  %i.jm = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %i.da
  %i.jn = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %i.da
  %i.jo = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %i.da
  %i.jp = getelementptr inbounds [2 x i8], ptr %.0151193.us, i64 %i.db
  %i.jq = getelementptr inbounds [2 x i8], ptr %.0150194.us, i64 %i.db
  %i.jr = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %i.db
  %i.js = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %i.db
  %i.jt = add nsw i32 %.0147197.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.jt, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader184.us, !llvm.loop !242

.lr.ph187.us:                                     ; preds = %preserve_color.exit.thread.us
  br i1 %i.di, label %.lr.ph187.split.us.preheader, label %.critedge.us

.lr.ph187.split.us.preheader:                     ; preds = %.lr.ph187.us
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.eb
  br i1 %brmerge, label %.lr.ph187.split.us.preheader229, label %vector.body

vector.body:                                      ; preds = %.lr.ph187.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph187.split.us.preheader ] ; 3 uses
  %i.ju = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ju, align 2, !tbaa !49, !alias.scope !247
  %i.jv = zext <8 x i16> %wide.load to <8 x i32>
  %i.jw = sub nsw <8 x i32> %i.jv, %broadcast.splat
  %i.jx = sitofp nsz <8 x i32> %i.jw to <8 x float>
  %i.jy = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jx, <8 x float> %broadcast.splat226, <8 x float> %broadcast.splat228)
  %i.jz = fptosi <8 x float> %i.jy to <8 x i32>
  %i.ka = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jz, <8 x i32> zeroinitializer)
  %i.kb = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ka, <8 x i32> splat (i32 1023))
  %i.kc = trunc nuw nsw <8 x i32> %i.kb to <8 x i16>
  %i.kd = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %index
  store <8 x i16> %i.kc, ptr %i.kd, align 2, !tbaa !49, !alias.scope !248, !noalias !247
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ke = icmp eq i64 %index.next, %n.vec
  br i1 %i.ke, label %middle.block, label %vector.body, !llvm.loop !246

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us, label %.lr.ph187.split.us.preheader229

.lr.ph187.split.us.preheader229:                  ; preds = %.lr.ph187.split.us.preheader, %middle.block
  %indvars.iv216.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph187.split.us.preheader ]
  br label %.lr.ph187.split.us

._crit_edge:                                      ; preds = %.critedge.us, %.preheader184.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_slice_12_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 3 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 3 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load <2 x i32>, ptr %i.t, align 8, !tbaa !34
  %i.v = ashr <2 x i32> %i.u, splat (i32 1)       ; 4 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.x = extractelement <2 x i32> %i.v, i64 1     ; 4 uses
  %i.y = mul i32 %i.x, %i.n
  %i.z = sext i32 %i.y to i64                     ; 10 uses
  %i.aa = getelementptr [2 x i8], ptr %i.w, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38 ; 2 uses
  %i.ad = getelementptr [2 x i8], ptr %i.ac, i64 %i.z ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38 ; 2 uses
  %i.ag = getelementptr [2 x i8], ptr %i.af, i64 %i.z ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38 ; 2 uses
  %i.aj = getelementptr [2 x i8], ptr %i.ai, i64 %i.z ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38 ; 2 uses
  %i.am = getelementptr [2 x i8], ptr %i.al, i64 %i.z ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !38 ; 2 uses
  %i.ap = getelementptr [2 x i8], ptr %i.ao, i64 %i.z ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38 ; 2 uses
  %i.as = getelementptr [2 x i8], ptr %i.ar, i64 %i.z ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.av = getelementptr [2 x i8], ptr %i.au, i64 %i.z ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !52
  %i.ay = icmp eq i32 %i.ax, 32
  br i1 %i.ay, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ba = load float, ptr %i.az, align 4, !tbaa !47
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !47
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bf = load float, ptr %i.be, align 4, !tbaa !47
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bh = load <2 x float>, ptr %i.bb, align 8, !tbaa !47
  %i.bi = load <2 x float>, ptr %i.bg, align 8, !tbaa !47
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !47
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !34
  %i.bn = sitofp nsz i32 %i.bm to float
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !34
  %i.br = sitofp nsz i32 %i.bq to float
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !34
  %i.bu = sitofp nsz i32 %i.bt to float
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bw = load <2 x i32>, ptr %i.bo, align 8, !tbaa !34
  %i.bx = sitofp <2 x i32> %i.bw to <2 x float>
  %i.by = load <2 x i32>, ptr %i.bv, align 8, !tbaa !34
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !34
  %i.cc = sitofp nsz i32 %i.cb to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in150 = phi float [ %i.bf, %bb.b ], [ %i.bu, %bb.c ]
  %.in152 = phi float [ %i.ba, %bb.b ], [ %i.bn, %bb.c ]
  %.in154 = phi float [ %i.bd, %bb.b ], [ %i.br, %bb.c ]
  %i.cd = phi nsz float [ %i.bk, %bb.b ], [ %i.cc, %bb.c ]
  %i.ce = phi <2 x float> [ %i.bh, %bb.b ], [ %i.bx, %bb.c ]
  %i.cf = phi <2 x float> [ %i.bi, %bb.b ], [ %i.bz, %bb.c ]
  %i.cg = fptosi float %.in154 to i32             ; 2 uses
  %i.ch = fptosi float %.in152 to i32             ; 2 uses
  %i.ci = fptosi <2 x float> %i.ce to <2 x i32>   ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !47 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.cm = load <2 x float>, ptr %i.cl, align 4, !tbaa !47 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.co = load float, ptr %i.cn, align 4, !tbaa !47 ; 2 uses
  %i.cp = icmp slt i32 %i.n, %i.s
  br i1 %i.cp, label %.preheader156.lr.ph, label %._crit_edge

.preheader156.lr.ph:                              ; preds = %bb.d
  %i.cq = fptosi float %i.cd to i32
  %i.cr = fptosi <2 x float> %i.cf to <2 x i32>
  %i.cs = fptosi float %.in150 to i32
  %i.ct = icmp sgt i32 %i.d, 0
  %i.cu = sitofp nsz i32 %i.cs to float           ; 2 uses
  %i.cv = sitofp <2 x i32> %i.cr to <2 x float>   ; 3 uses
  %i.cw = sitofp nsz i32 %i.cq to float           ; 2 uses
  %i.cx = sext i32 %i.x to i64                    ; 6 uses
  %i.cy = extractelement <2 x i32> %i.v, i64 0    ; 4 uses
  %i.cz = sext i32 %i.cy to i64                   ; 6 uses
  br i1 %i.ct, label %.preheader156.us.preheader, label %._crit_edge

.preheader156.us.preheader:                       ; preds = %.preheader156.lr.ph
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.db = sext i32 %i.f to i64                    ; 2 uses
  %i.dc = zext nneg i32 %i.d to i64               ; 8 uses
  %i.dd = load i32, ptr %i.da, align 4, !tbaa !41
  %i.de = icmp eq i32 %i.dd, 4
  %i.df = xor i64 %i.m, -1
  %i.dg = add i64 %i.r, %i.df
  %i.dh = and i64 %i.dg, 4294967295               ; 2 uses
  %i.di = mul nsw i64 %i.dh, %i.cz
  %i.dj = shl i64 %i.di, 1
  %i.dk = shl nsw i64 %i.z, 1                     ; 2 uses
  %i.dl = mul nsw i64 %i.dh, %i.cx
  %i.dm = shl i64 %i.dl, 1
  %i.dn = xor i64 %i.m, -1
  %i.do = add i64 %i.r, %i.dn
  %i.dp = and i64 %i.do, 4294967295               ; 2 uses
  %i.dq = mul nsw i64 %i.dp, %i.cz
  %i.dr = shl i64 %i.dq, 1
  %i.ds = shl nsw i64 %i.z, 1                     ; 2 uses
  %i.dt = mul nsw i64 %i.dp, %i.cx
  %i.du = shl i64 %i.dt, 1
  %i.dv = insertelement <4 x ptr> poison, ptr %i.ap, i64 0
  %i.dw = shufflevector <4 x ptr> %i.dv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dx = insertelement <4 x ptr> poison, ptr %i.as, i64 0 ; 2 uses
  %i.dy = insertelement <4 x ptr> %i.dx, ptr %i.aa, i64 1
  %i.dz = insertelement <4 x ptr> %i.dy, ptr %i.ad, i64 2
  %i.ea = insertelement <4 x ptr> %i.dz, ptr %i.ag, i64 3
  %i.eb = insertelement <2 x ptr> poison, ptr %i.aa, i64 0
  %i.ec = insertelement <2 x ptr> %i.eb, ptr %i.ad, i64 1
  %i.ed = shufflevector <4 x ptr> %i.dx, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ee = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ef = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> zeroinitializer
  %min.iters.check282 = icmp ugt i32 %i.d, 15
  %ident.check202.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check282, i1 %ident.check202.not, i1 false
  %i.eg = shl nuw nsw i64 %i.dc, 1
  %i.eh = add nsw i64 %i.eg, -2                   ; 2 uses
  %i.ei = add i64 %i.dr, %i.eh
  %i.ej = add i64 %i.ei, %i.ds
  %i.ek = add i64 %i.ej, 2                        ; 3 uses
  %scevgep205.a = getelementptr i8, ptr %i.al, i64 %i.ek ; 5 uses
  %scevgep206.a = getelementptr i8, ptr %i.ao, i64 %i.ek ; 2 uses
  %scevgep207.a = getelementptr i8, ptr %i.ar, i64 %i.ek ; 3 uses
  %i.el = add i64 %i.du, %i.eh
  %i.em = add i64 %i.el, %i.ds
  %i.en = add i64 %i.em, 2                        ; 3 uses
  %scevgep208.a = getelementptr i8, ptr %i.w, i64 %i.en ; 3 uses
  %scevgep209.a = getelementptr i8, ptr %i.ac, i64 %i.en ; 3 uses
  %scevgep210 = getelementptr i8, ptr %i.af, i64 %i.en ; 3 uses
  %bound0211 = icmp ult ptr %i.am, %scevgep206.a
  %bound1212 = icmp ult ptr %i.ap, %scevgep205.a
  %found.conflict213 = and i1 %bound0211, %bound1212
  %bound0216 = icmp ult ptr %i.am, %scevgep207.a
  %bound1217 = icmp ult ptr %i.as, %scevgep205.a
  %found.conflict218 = and i1 %bound0216, %bound1217
  %bound0221 = icmp ult ptr %i.am, %scevgep208.a
  %bound1222 = icmp ult ptr %i.aa, %scevgep205.a
  %found.conflict223 = and i1 %bound0221, %bound1222
  %i.eo = or <8 x i32> %i.ee, %i.ef
  %bound0227 = icmp ult ptr %i.am, %scevgep209.a
  %bound1228 = icmp ult ptr %i.ad, %scevgep205.a
  %found.conflict229 = and i1 %bound0227, %bound1228
  %bound0233 = icmp ult ptr %i.am, %scevgep210
  %bound1234 = icmp ult ptr %i.ag, %scevgep205.a
  %found.conflict235 = and i1 %bound0233, %bound1234
  %i.ep = icmp slt <8 x i32> %i.eo, zeroinitializer
  %bound0275 = icmp ult ptr %i.as, %scevgep210
  %bound1276 = icmp ult ptr %i.ag, %scevgep207.a
  %stride.check219 = icmp slt i32 %i.cy, 0
  %i.eq = insertelement <4 x ptr> poison, ptr %scevgep207.a, i64 0 ; 2 uses
  %i.er = insertelement <4 x ptr> %i.eq, ptr %scevgep208.a, i64 1
  %i.es = insertelement <4 x ptr> %i.er, ptr %scevgep209.a, i64 2
  %i.et = insertelement <4 x ptr> %i.es, ptr %scevgep210, i64 3
  %i.eu = icmp ult <4 x ptr> %i.dw, %i.et
  %i.ev = insertelement <4 x ptr> poison, ptr %scevgep206.a, i64 0
  %i.ew = shufflevector <4 x ptr> %i.ev, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ex = icmp ult <4 x ptr> %i.ea, %i.ew
  %i.ey = insertelement <2 x ptr> poison, ptr %scevgep208.a, i64 0
  %i.ez = insertelement <2 x ptr> %i.ey, ptr %scevgep209.a, i64 1
  %i.fa = icmp ult <2 x ptr> %i.ed, %i.ez
  %i.fb = shufflevector <4 x ptr> %i.eq, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.fc = icmp ult <2 x ptr> %i.ec, %i.fb
  %i.fd = insertelement <8 x i1> poison, i1 %bound0275, i64 6
  %i.fe = insertelement <8 x i1> %i.fd, i1 %stride.check219, i64 7
  %i.ff = shufflevector <4 x i1> %i.eu, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fg = shufflevector <8 x i1> %i.ff, <8 x i1> %i.fe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fh = shufflevector <2 x i1> %i.fa, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fi = shufflevector <8 x i1> %i.fg, <8 x i1> %i.fh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fj = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1276, i64 6
  %i.fk = shufflevector <4 x i1> %i.ex, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fl = shufflevector <8 x i1> %i.fk, <8 x i1> %i.fj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fm = shufflevector <2 x i1> %i.fc, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fn = shufflevector <8 x i1> %i.fl, <8 x i1> %i.fm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fo = and <8 x i1> %i.fi, %i.fn
  %i.fp = or i32 %i.x, %i.cy
  %i.fq = icmp slt i32 %i.fp, 0
  %rdx.op = or <8 x i1> %i.fo, %i.ep
  %i.fr = bitcast <8 x i1> %rdx.op to i8
  %i.fs = icmp ne i8 %i.fr, 0
  %op.rdx = or i1 %i.fs, %found.conflict218
  %op.rdx313.a = or i1 %found.conflict213, %found.conflict223
  %op.rdx314.a = or i1 %found.conflict229, %found.conflict235
  %op.rdx315.a = or i1 %op.rdx, %op.rdx313.a
  %op.rdx316.a = or i1 %op.rdx314.a, %i.fq
  %op.rdx317 = or i1 %op.rdx315.a, %op.rdx316.a
  %n.vec284 = and i64 %i.dc, 2147483640           ; 3 uses
  %broadcast.splatinsert285 = insertelement <8 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat286 = shufflevector <8 x i32> %broadcast.splatinsert285, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert287 = insertelement <8 x float> poison, float %i.ck, i64 0
  %broadcast.splat288 = shufflevector <8 x float> %broadcast.splatinsert287, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert289 = insertelement <8 x float> poison, float %i.cu, i64 0
  %broadcast.splat290 = shufflevector <8 x float> %broadcast.splatinsert289, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat292 = shufflevector <2 x i32> %i.ci, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat294 = shufflevector <2 x float> %i.cm, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat296 = shufflevector <2 x float> %i.cv, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat298 = shufflevector <2 x i32> %i.ci, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat300 = shufflevector <2 x float> %i.cm, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat302 = shufflevector <2 x float> %i.cv, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %cmp.n310 = icmp eq i64 %n.vec284, %i.dc
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond312 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.ft = shl nuw nsw i64 %i.dc, 1
  %i.fu = add nsw i64 %i.ft, -2                   ; 2 uses
  %i.fv = getelementptr i8, ptr %i.au, i64 %i.dj
  %i.fw = getelementptr i8, ptr %i.fv, i64 %i.fu
  %i.fx = getelementptr i8, ptr %i.fw, i64 %i.dk
  %scevgep = getelementptr i8, ptr %i.fx, i64 2
  %i.fy = getelementptr i8, ptr %i.ai, i64 %i.dm
  %i.fz = getelementptr i8, ptr %i.fy, i64 %i.fu
  %i.ga = getelementptr i8, ptr %i.fz, i64 %i.dk
  %scevgep195 = getelementptr i8, ptr %i.ga, i64 2
  %bound0 = icmp ult ptr %i.av, %scevgep195
  %bound1 = icmp ult ptr %i.aj, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.gb = or i32 %i.x, %i.cy
  %i.gc = icmp slt i32 %i.gb, 0
  %i.gd = or i1 %found.conflict, %i.gc
  %n.vec = and i64 %i.dc, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.cg, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert197 = insertelement <8 x float> poison, float %i.co, i64 0
  %broadcast.splat198 = shufflevector <8 x float> %broadcast.splatinsert197, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert199 = insertelement <8 x float> poison, float %i.cw, i64 0
  %broadcast.splat200 = shufflevector <8 x float> %broadcast.splatinsert199, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.dc
  br label %.preheader156.us

.preheader156.us:                                 ; preds = %.preheader156.us.preheader, %.critedge.us
  %.0125169.us = phi i32 [ %i.jh, %.critedge.us ], [ %i.n, %.preheader156.us.preheader ]
  %.0126168.us = phi ptr [ %i.jg, %.critedge.us ], [ %i.av, %.preheader156.us.preheader ] ; 3 uses
  %.0127167.us = phi ptr [ %i.jf, %.critedge.us ], [ %i.as, %.preheader156.us.preheader ] ; 3 uses
  %.0128166.us = phi ptr [ %i.je, %.critedge.us ], [ %i.ap, %.preheader156.us.preheader ] ; 3 uses
  %.0129165.us = phi ptr [ %i.jd, %.critedge.us ], [ %i.am, %.preheader156.us.preheader ] ; 3 uses
  %.0130164.us = phi ptr [ %i.jc, %.critedge.us ], [ %i.aj, %.preheader156.us.preheader ] ; 3 uses
  %.0131163.us = phi ptr [ %i.jb, %.critedge.us ], [ %i.ag, %.preheader156.us.preheader ] ; 3 uses
  %.0132162.us = phi ptr [ %i.ja, %.critedge.us ], [ %i.ad, %.preheader156.us.preheader ] ; 3 uses
  %.0133161.us = phi ptr [ %i.iz, %.critedge.us ], [ %i.aa, %.preheader156.us.preheader ] ; 3 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx317
  br i1 %brmerge, label %scalar.ph281.preheader, label %vector.body303

vector.body303:                                   ; preds = %.preheader156.us, %vector.body303
  %index304 = phi i64 [ %index.next308, %vector.body303 ], [ 0, %.preheader156.us ] ; 7 uses
  %i.ge = getelementptr inbounds [2 x i8], ptr %.0133161.us, i64 %index304
  %wide.load305.a = load <8 x i16>, ptr %i.ge, align 2, !tbaa !49, !alias.scope !264
  %i.gf = zext <8 x i16> %wide.load305.a to <8 x i32>
  %i.gg = getelementptr inbounds [2 x i8], ptr %.0132162.us, i64 %index304
  %wide.load306.a = load <8 x i16>, ptr %i.gg, align 2, !tbaa !49, !alias.scope !265
  %i.gh = zext <8 x i16> %wide.load306.a to <8 x i32>
  %i.gi = getelementptr inbounds [2 x i8], ptr %.0131163.us, i64 %index304
  %wide.load307 = load <8 x i16>, ptr %i.gi, align 2, !tbaa !49, !alias.scope !266
  %i.gj = zext <8 x i16> %wide.load307 to <8 x i32>
  %i.gk = sub nsw <8 x i32> %i.gf, %broadcast.splat286
  %i.gl = sitofp nsz <8 x i32> %i.gk to <8 x float>
  %i.gm = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gl, <8 x float> %broadcast.splat288, <8 x float> %broadcast.splat290)
  %i.gn = fptosi <8 x float> %i.gm to <8 x i32>
  %i.go = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gn, <8 x i32> zeroinitializer)
  %i.gp = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.go, <8 x i32> splat (i32 4095))
  %i.gq = trunc nuw nsw <8 x i32> %i.gp to <8 x i16>
  %i.gr = getelementptr inbounds [2 x i8], ptr %.0129165.us, i64 %index304
  store <8 x i16> %i.gq, ptr %i.gr, align 2, !tbaa !49, !alias.scope !267, !noalias !268
  %i.gs = sub nsw <8 x i32> %i.gh, %broadcast.splat292
  %i.gt = sitofp nsz <8 x i32> %i.gs to <8 x float>
  %i.gu = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gt, <8 x float> %broadcast.splat294, <8 x float> %broadcast.splat296)
  %i.gv = fptosi <8 x float> %i.gu to <8 x i32>
  %i.gw = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gv, <8 x i32> zeroinitializer)
  %i.gx = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gw, <8 x i32> splat (i32 4095))
  %i.gy = trunc nuw nsw <8 x i32> %i.gx to <8 x i16>
  %i.gz = getelementptr inbounds [2 x i8], ptr %.0128166.us, i64 %index304
  store <8 x i16> %i.gy, ptr %i.gz, align 2, !tbaa !49, !alias.scope !269, !noalias !270
  %i.ha = sub nsw <8 x i32> %i.gj, %broadcast.splat298
  %i.hb = sitofp nsz <8 x i32> %i.ha to <8 x float>
  %i.hc = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.hb, <8 x float> %broadcast.splat300, <8 x float> %broadcast.splat302)
  %i.hd = fptosi <8 x float> %i.hc to <8 x i32>
  %i.he = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.hd, <8 x i32> zeroinitializer)
  %i.hf = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.he, <8 x i32> splat (i32 4095))
  %i.hg = trunc nuw nsw <8 x i32> %i.hf to <8 x i16>
  %i.hh = getelementptr inbounds [2 x i8], ptr %.0127167.us, i64 %index304
  store <8 x i16> %i.hg, ptr %i.hh, align 2, !tbaa !49, !alias.scope !271, !noalias !272
  %index.next308 = add nuw i64 %index304, 8       ; 2 uses
  %i.hi = icmp eq i64 %index.next308, %n.vec284
  br i1 %i.hi, label %middle.block309, label %vector.body303, !llvm.loop !256

middle.block309:                                  ; preds = %vector.body303
  br i1 %cmp.n310, label %.lr.ph159.us, label %scalar.ph281.preheader

scalar.ph281.preheader:                           ; preds = %.preheader156.us, %middle.block309
  %indvars.iv.ph = phi i64 [ %n.vec284, %middle.block309 ], [ 0, %.preheader156.us ]
  br label %scalar.ph281

scalar.ph281:                                     ; preds = %scalar.ph281.preheader, %scalar.ph281
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph281 ], [ %indvars.iv.ph, %scalar.ph281.preheader ] ; 7 uses
  %i.hj = getelementptr inbounds [2 x i8], ptr %.0133161.us, i64 %indvars.iv
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !49
  %i.hl = zext i16 %i.hk to i32
  %i.hm = getelementptr inbounds [2 x i8], ptr %.0132162.us, i64 %indvars.iv
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !49
  %i.ho = getelementptr inbounds [2 x i8], ptr %.0131163.us, i64 %indvars.iv
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !49
  %i.hq = sub nsw i32 %i.hl, %i.ch
  %i.hr = sitofp nsz i32 %i.hq to float
  %i.hs = tail call nsz float @llvm.fmuladd.f32(float %i.hr, float %i.ck, float %i.cu)
  %i.ht = fptosi float %i.hs to i32
  %i.hu = tail call i32 @llvm.smax.i32(i32 %i.ht, i32 0)
  %i.hv = tail call i32 @llvm.umin.i32(i32 %i.hu, i32 4095)
  %i.hw = trunc nuw nsw i32 %i.hv to i16
  %i.hx = getelementptr inbounds [2 x i8], ptr %.0129165.us, i64 %indvars.iv
  store i16 %i.hw, ptr %i.hx, align 2, !tbaa !49
  %i.hy = getelementptr inbounds [2 x i8], ptr %.0128166.us, i64 %indvars.iv
  %i.hz = insertelement <2 x i16> poison, i16 %i.hn, i64 0
  %i.ia = insertelement <2 x i16> %i.hz, i16 %i.hp, i64 1
  %i.ib = zext <2 x i16> %i.ia to <2 x i32>
  %i.ic = sub nsw <2 x i32> %i.ib, %i.ci
  %i.id = sitofp <2 x i32> %i.ic to <2 x float>
  %i.ie = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.id, <2 x float> %i.cm, <2 x float> %i.cv)
  %i.if = fptosi <2 x float> %i.ie to <2 x i32>
  %i.ig = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.if, <2 x i32> zeroinitializer)
  %i.ih = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ig, <2 x i32> splat (i32 4095))
  %i.ii = trunc nuw nsw <2 x i32> %i.ih to <2 x i16> ; 2 uses
  %i.ij = extractelement <2 x i16> %i.ii, i64 0
  store i16 %i.ij, ptr %i.hy, align 2, !tbaa !49
  %i.ik = getelementptr inbounds [2 x i8], ptr %.0127167.us, i64 %indvars.iv
  %i.il = extractelement <2 x i16> %i.ii, i64 1
  store i16 %i.il, ptr %i.ik, align 2, !tbaa !49
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.db ; 2 uses
  %i.im = icmp slt i64 %indvars.iv.next, %i.dc
  br i1 %i.im, label %scalar.ph281, label %.lr.ph159.us, !llvm.loop !257

.lr.ph159.split.us:                               ; preds = %.lr.ph159.split.us.preheader318, %.lr.ph159.split.us
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %.lr.ph159.split.us ], [ %indvars.iv188.ph, %.lr.ph159.split.us.preheader318 ] ; 3 uses
  %i.in = getelementptr inbounds [2 x i8], ptr %.0130164.us, i64 %indvars.iv188
  %i.io = load i16, ptr %i.in, align 2, !tbaa !49
  %i.ip = zext i16 %i.io to i32
  %i.iq = sub nsw i32 %i.ip, %i.cg
  %i.ir = sitofp nsz i32 %i.iq to float
  %i.is = tail call nsz float @llvm.fmuladd.f32(float %i.ir, float %i.co, float %i.cw)
  %i.it = fptosi float %i.is to i32
  %i.iu = tail call i32 @llvm.smax.i32(i32 %i.it, i32 0)
  %i.iv = tail call i32 @llvm.umin.i32(i32 %i.iu, i32 4095)
  %i.iw = trunc nuw nsw i32 %i.iv to i16
  %i.ix = getelementptr inbounds [2 x i8], ptr %.0126168.us, i64 %indvars.iv188
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !49
  %indvars.iv.next189 = add nsw i64 %indvars.iv188, %i.db ; 2 uses
  %i.iy = icmp slt i64 %indvars.iv.next189, %i.dc
  br i1 %i.iy, label %.lr.ph159.split.us, label %.critedge.us, !llvm.loop !258

.critedge.us:                                     ; preds = %.lr.ph159.split.us, %middle.block, %.lr.ph159.us
  %i.iz = getelementptr inbounds [2 x i8], ptr %.0133161.us, i64 %i.cx
  %i.ja = getelementptr inbounds [2 x i8], ptr %.0132162.us, i64 %i.cx
  %i.jb = getelementptr inbounds [2 x i8], ptr %.0131163.us, i64 %i.cx
  %i.jc = getelementptr inbounds [2 x i8], ptr %.0130164.us, i64 %i.cx
  %i.jd = getelementptr inbounds [2 x i8], ptr %.0129165.us, i64 %i.cz
  %i.je = getelementptr inbounds [2 x i8], ptr %.0128166.us, i64 %i.cz
  %i.jf = getelementptr inbounds [2 x i8], ptr %.0127167.us, i64 %i.cz
  %i.jg = getelementptr inbounds [2 x i8], ptr %.0126168.us, i64 %i.cz
  %i.jh = add nsw i32 %.0125169.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.jh, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader156.us, !llvm.loop !259

.lr.ph159.us:                                     ; preds = %scalar.ph281, %middle.block309
  br i1 %i.de, label %.lr.ph159.split.us.preheader, label %.critedge.us

.lr.ph159.split.us.preheader:                     ; preds = %.lr.ph159.us
  %or.cond312.not = xor i1 %or.cond312, true
  %brmerge319 = select i1 %or.cond312.not, i1 true, i1 %i.gd
  br i1 %brmerge319, label %.lr.ph159.split.us.preheader318, label %vector.body

vector.body:                                      ; preds = %.lr.ph159.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph159.split.us.preheader ] ; 3 uses
  %i.ji = getelementptr inbounds [2 x i8], ptr %.0130164.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ji, align 2, !tbaa !49, !alias.scope !273
  %i.jj = zext <8 x i16> %wide.load to <8 x i32>
  %i.jk = sub nsw <8 x i32> %i.jj, %broadcast.splat
  %i.jl = sitofp nsz <8 x i32> %i.jk to <8 x float>
  %i.jm = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jl, <8 x float> %broadcast.splat198, <8 x float> %broadcast.splat200)
  %i.jn = fptosi <8 x float> %i.jm to <8 x i32>
  %i.jo = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jn, <8 x i32> zeroinitializer)
  %i.jp = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.jo, <8 x i32> splat (i32 4095))
  %i.jq = trunc nuw nsw <8 x i32> %i.jp to <8 x i16>
  %i.jr = getelementptr inbounds [2 x i8], ptr %.0126168.us, i64 %index
  store <8 x i16> %i.jq, ptr %i.jr, align 2, !tbaa !49, !alias.scope !274, !noalias !273
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.js = icmp eq i64 %index.next, %n.vec
  br i1 %i.js, label %middle.block, label %vector.body, !llvm.loop !263

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us, label %.lr.ph159.split.us.preheader318

.lr.ph159.split.us.preheader318:                  ; preds = %.lr.ph159.split.us.preheader, %middle.block
  %indvars.iv188.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph159.split.us.preheader ]
  br label %.lr.ph159.split.us

._crit_edge:                                      ; preds = %.critedge.us, %.preheader156.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_preserve_slice_12_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 3 uses
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
  %i.u = load i32, ptr %i.t, align 4, !tbaa !36
  %i.v = ashr i32 %i.u, 1                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !35
  %i.y = ashr i32 %i.x, 1                         ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !38
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 9 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.af = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !52
  %i.ba = icmp eq i32 %i.az, 32                   ; 2 uses
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
  %i.ci = fptosi float %.in182 to i32             ; 2 uses
  %i.cj = fptosi float %.in180 to i32
  %i.ck = fptosi <2 x float> %i.cg to <2 x i32>
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !47
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !47
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !47 ; 2 uses
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
  %i.cz = sitofp nsz i32 %i.cs to float           ; 2 uses
  %i.da = sext i32 %i.v to i64                    ; 5 uses
  %i.db = sext i32 %i.y to i64                    ; 5 uses
  br i1 %i.cv, label %.preheader184.lr.ph.split.us, label %._crit_edge

.preheader184.lr.ph.split.us:                     ; preds = %.preheader184.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !50
  %i.df = sext i32 %i.f to i64                    ; 2 uses
  %i.dg = zext nneg i32 %i.d to i64               ; 5 uses
  %i.dh = load i32, ptr %i.dc, align 4, !tbaa !41
  %i.di = icmp eq i32 %i.dh, 4
  %i.dj = xor i64 %i.m, -1
  %i.dk = add i64 %i.r, %i.dj
  %i.dl = and i64 %i.dk, 4294967295               ; 2 uses
  %i.dm = mul nsw i64 %i.dl, %i.db
  %i.dn = shl i64 %i.dm, 1
  %i.do = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dp = mul nsw i64 %i.dl, %i.da
  %i.dq = shl i64 %i.dp, 1
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.dr = shl nuw nsw i64 %i.dg, 1
  %i.ds = add nsw i64 %i.dr, -2                   ; 2 uses
  %i.dt = getelementptr i8, ptr %i.aw, i64 %i.dn
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.ds
  %i.dv = getelementptr i8, ptr %i.du, i64 %i.do
  %scevgep = getelementptr i8, ptr %i.dv, i64 2
  %i.dw = getelementptr i8, ptr %i.ak, i64 %i.dq
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.ds
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.do
  %scevgep223 = getelementptr i8, ptr %i.dy, i64 2
  %bound0 = icmp ult ptr %i.ax, %scevgep223
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dz = or i32 %i.v, %i.y
  %i.ea = icmp slt i32 %i.dz, 0
  %i.eb = or i1 %found.conflict, %i.ea
  %n.vec = and i64 %i.dg, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert225 = insertelement <8 x float> poison, float %i.cq, i64 0
  %broadcast.splat226 = shufflevector <8 x float> %broadcast.splatinsert225, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <8 x float> poison, float %i.cz, i64 0
  %broadcast.splat228 = shufflevector <8 x float> %broadcast.splatinsert227, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.dg
  br label %.preheader184.us

.preheader184.us:                                 ; preds = %.critedge.us, %.preheader184.lr.ph.split.us
  %.0147197.us = phi i32 [ %i.n, %.preheader184.lr.ph.split.us ], [ %i.jt, %.critedge.us ]
  %.0148196.us = phi ptr [ %i.ax, %.preheader184.lr.ph.split.us ], [ %i.js, %.critedge.us ] ; 3 uses
  %.0149195.us = phi ptr [ %i.au, %.preheader184.lr.ph.split.us ], [ %i.jr, %.critedge.us ] ; 2 uses
  %.0150194.us = phi ptr [ %i.ar, %.preheader184.lr.ph.split.us ], [ %i.jq, %.critedge.us ] ; 2 uses
  %.0151193.us = phi ptr [ %i.ao, %.preheader184.lr.ph.split.us ], [ %i.jp, %.critedge.us ] ; 2 uses
  %.0152192.us = phi ptr [ %i.al, %.preheader184.lr.ph.split.us ], [ %i.jo, %.critedge.us ] ; 3 uses
  %.0153191.us = phi ptr [ %i.ai, %.preheader184.lr.ph.split.us ], [ %i.jn, %.critedge.us ] ; 2 uses
  %.0154190.us = phi ptr [ %i.af, %.preheader184.lr.ph.split.us ], [ %i.jm, %.critedge.us ] ; 2 uses
  %.0155189.us = phi ptr [ %i.ac, %.preheader184.lr.ph.split.us ], [ %i.jl, %.critedge.us ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader184.us, %preserve_color.exit.thread.us
  %indvars.iv = phi i64 [ 0, %.preheader184.us ], [ %indvars.iv.next, %preserve_color.exit.thread.us ] ; 7 uses
  %i.ec = getelementptr inbounds [2 x i8], ptr %.0155189.us, i64 %indvars.iv
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !49 ; 2 uses
  %i.ee = zext i16 %i.ed to i32
  %i.ef = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %indvars.iv
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !49 ; 2 uses
  %i.eh = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %indvars.iv
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !49 ; 2 uses
  %i.ej = insertelement <2 x i16> poison, i16 %i.eg, i64 0
  %i.ek = insertelement <2 x i16> %i.ej, i16 %i.ei, i64 1
  %i.el = zext <2 x i16> %i.ek to <2 x i32>
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.em = load i32, ptr %i.cw, align 4, !tbaa !53
  %i.en = sitofp nsz i32 %i.em to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.eo = phi nsz float [ %i.en, %bb.f ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.ep = sub nsw i32 %i.ee, %i.cj
  %i.eq = sitofp nsz i32 %i.ep to float
  %i.er = tail call nsz float @llvm.fmuladd.f32(float %i.eq, float %i.cm, float %i.cx)
  %i.es = fptosi float %i.er to i32               ; 3 uses
  %i.et = sub nsw <2 x i32> %i.el, %i.ck
  %i.eu = sitofp <2 x i32> %i.et to <2 x float>
  %i.ev = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.co, <2 x float> %i.cy)
  %i.ew = fptosi <2 x float> %i.ev to <2 x i32>   ; 3 uses
  %i.ex = uitofp i16 %i.ed to float               ; 6 uses
  %i.ey = uitofp i16 %i.eg to float               ; 6 uses
  %i.ez = uitofp i16 %i.ei to float               ; 6 uses
  %i.fa = sitofp nsz i32 %i.es to float           ; 7 uses
  %i.fb = sitofp <2 x i32> %i.ew to <2 x float>   ; 13 uses
  switch i32 %i.de, label %preserve_color.exit.thread.us [
    i32 1, label %bb.m
    i32 2, label %bb.l
    i32 3, label %bb.k
    i32 4, label %bb.j
    i32 5, label %bb.i
    i32 6, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.fc = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.fa, i64 1
  %i.fe = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fg = fdiv nsz <2 x float> %i.fd, %i.ff       ; 3 uses
  %i.fh = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fi = insertelement <2 x float> %i.fh, float %i.ey, i64 0
  %i.fj = fdiv nsz <2 x float> %i.fi, %i.ff       ; 3 uses
  %i.fk = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.fl = fdiv nsz <2 x float> %i.fk, %i.ff       ; 3 uses
  %i.fm = fmul nsz <2 x float> %i.fg, %i.fg
  %i.fn = fmul nsz <2 x float> %i.fj, %i.fj
  %i.fo = fmul nsz <2 x float> %i.fj, %i.fn
  %i.fp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fg, <2 x float> %i.fo)
  %i.fq = fmul nsz <2 x float> %i.fl, %i.fl
  %i.fr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fl, <2 x float> %i.fp) ; 2 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 0
  %i.ft = tail call nsz float @cbrtf(float noundef %i.fs) #9
  %i.fu = extractelement <2 x float> %i.fr, i64 1
  %i.fv = tail call nsz float @cbrtf(float noundef %i.fu) #9
  %i.fw = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.fv, i64 1
  br label %preserve_color.exit.us

bb.i:                                             ; preds = %bb.g
  %i.fy = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.fa, i64 1
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
  %.0145.us = phi i32 [ %i.ie, %bb.n ], [ %i.es, %preserve_color.exit.us ], [ %i.es, %bb.g ]
  %i.ij = phi <2 x i32> [ %i.ii, %bb.n ], [ %i.ew, %preserve_color.exit.us ], [ %i.ew, %bb.g ] ; 2 uses
  %i.ik = tail call i32 @llvm.smax.i32(i32 %.0145.us, i32 0)
  %i.il = tail call i32 @llvm.umin.i32(i32 %i.ik, i32 4095)
  %i.im = trunc nuw nsw i32 %i.il to i16
  %i.in = getelementptr inbounds [2 x i8], ptr %.0151193.us, i64 %indvars.iv
  store i16 %i.im, ptr %i.in, align 2, !tbaa !49
  %i.io = extractelement <2 x i32> %i.ij, i64 0
  %i.ip = tail call i32 @llvm.smax.i32(i32 %i.io, i32 0)
  %i.iq = tail call i32 @llvm.umin.i32(i32 %i.ip, i32 4095)
end_hunk_5
begin_hunk_6_@colorlevels_preserve_slice_12_planar:bb.a
  %i.ix = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %indvars.iv
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !49
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.df ; 2 uses
  %i.iy = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.iy, label %bb.e, label %.lr.ph187.us, !llvm.loop !275

.lr.ph187.split.us:                               ; preds = %.lr.ph187.split.us.preheader229, %.lr.ph187.split.us
  %indvars.iv216 = phi i64 [ %indvars.iv.next217, %.lr.ph187.split.us ], [ %indvars.iv216.ph, %.lr.ph187.split.us.preheader229 ] ; 3 uses
  %i.iz = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %indvars.iv216
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !49
  %i.jb = zext i16 %i.ja to i32
  %i.jc = sub nsw i32 %i.jb, %i.ci
  %i.jd = sitofp nsz i32 %i.jc to float
  %i.je = tail call nsz float @llvm.fmuladd.f32(float %i.jd, float %i.cq, float %i.cz)
  %i.jf = fptosi float %i.je to i32
  %i.jg = tail call i32 @llvm.smax.i32(i32 %i.jf, i32 0)
  %i.jh = tail call i32 @llvm.umin.i32(i32 %i.jg, i32 4095)
  %i.ji = trunc nuw nsw i32 %i.jh to i16
  %i.jj = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %indvars.iv216
  store i16 %i.ji, ptr %i.jj, align 2, !tbaa !49
  %indvars.iv.next217 = add nsw i64 %indvars.iv216, %i.df ; 2 uses
  %i.jk = icmp slt i64 %indvars.iv.next217, %i.dg
  br i1 %i.jk, label %.lr.ph187.split.us, label %.critedge.us, !llvm.loop !276

.critedge.us:                                     ; preds = %.lr.ph187.split.us, %middle.block, %.lr.ph187.us
  %i.jl = getelementptr inbounds [2 x i8], ptr %.0155189.us, i64 %i.da
  %i.jm = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %i.da
  %i.jn = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %i.da
  %i.jo = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %i.da
  %i.jp = getelementptr inbounds [2 x i8], ptr %.0151193.us, i64 %i.db
  %i.jq = getelementptr inbounds [2 x i8], ptr %.0150194.us, i64 %i.db
  %i.jr = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %i.db
  %i.js = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %i.db
  %i.jt = add nsw i32 %.0147197.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.jt, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader184.us, !llvm.loop !277

.lr.ph187.us:                                     ; preds = %preserve_color.exit.thread.us
  br i1 %i.di, label %.lr.ph187.split.us.preheader, label %.critedge.us

.lr.ph187.split.us.preheader:                     ; preds = %.lr.ph187.us
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.eb
  br i1 %brmerge, label %.lr.ph187.split.us.preheader229, label %vector.body

vector.body:                                      ; preds = %.lr.ph187.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph187.split.us.preheader ] ; 3 uses
  %i.ju = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ju, align 2, !tbaa !49, !alias.scope !282
  %i.jv = zext <8 x i16> %wide.load to <8 x i32>
  %i.jw = sub nsw <8 x i32> %i.jv, %broadcast.splat
  %i.jx = sitofp nsz <8 x i32> %i.jw to <8 x float>
  %i.jy = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jx, <8 x float> %broadcast.splat226, <8 x float> %broadcast.splat228)
  %i.jz = fptosi <8 x float> %i.jy to <8 x i32>
  %i.ka = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jz, <8 x i32> zeroinitializer)
  %i.kb = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ka, <8 x i32> splat (i32 4095))
  %i.kc = trunc nuw nsw <8 x i32> %i.kb to <8 x i16>
  %i.kd = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %index
  store <8 x i16> %i.kc, ptr %i.kd, align 2, !tbaa !49, !alias.scope !283, !noalias !282
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ke = icmp eq i64 %index.next, %n.vec
  br i1 %i.ke, label %middle.block, label %vector.body, !llvm.loop !281

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us, label %.lr.ph187.split.us.preheader229

.lr.ph187.split.us.preheader229:                  ; preds = %.lr.ph187.split.us.preheader, %middle.block
  %indvars.iv216.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph187.split.us.preheader ]
  br label %.lr.ph187.split.us

._crit_edge:                                      ; preds = %.critedge.us, %.preheader184.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_slice_14_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 3 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 3 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load <2 x i32>, ptr %i.t, align 8, !tbaa !34
  %i.v = ashr <2 x i32> %i.u, splat (i32 1)       ; 4 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.x = extractelement <2 x i32> %i.v, i64 1     ; 4 uses
  %i.y = mul i32 %i.x, %i.n
  %i.z = sext i32 %i.y to i64                     ; 10 uses
  %i.aa = getelementptr [2 x i8], ptr %i.w, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38 ; 2 uses
  %i.ad = getelementptr [2 x i8], ptr %i.ac, i64 %i.z ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38 ; 2 uses
  %i.ag = getelementptr [2 x i8], ptr %i.af, i64 %i.z ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38 ; 2 uses
  %i.aj = getelementptr [2 x i8], ptr %i.ai, i64 %i.z ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38 ; 2 uses
  %i.am = getelementptr [2 x i8], ptr %i.al, i64 %i.z ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !38 ; 2 uses
  %i.ap = getelementptr [2 x i8], ptr %i.ao, i64 %i.z ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38 ; 2 uses
  %i.as = getelementptr [2 x i8], ptr %i.ar, i64 %i.z ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.av = getelementptr [2 x i8], ptr %i.au, i64 %i.z ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !52
  %i.ay = icmp eq i32 %i.ax, 32
  br i1 %i.ay, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ba = load float, ptr %i.az, align 4, !tbaa !47
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !47
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bf = load float, ptr %i.be, align 4, !tbaa !47
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bh = load <2 x float>, ptr %i.bb, align 8, !tbaa !47
  %i.bi = load <2 x float>, ptr %i.bg, align 8, !tbaa !47
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !47
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !34
  %i.bn = sitofp nsz i32 %i.bm to float
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !34
  %i.br = sitofp nsz i32 %i.bq to float
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !34
  %i.bu = sitofp nsz i32 %i.bt to float
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bw = load <2 x i32>, ptr %i.bo, align 8, !tbaa !34
  %i.bx = sitofp <2 x i32> %i.bw to <2 x float>
  %i.by = load <2 x i32>, ptr %i.bv, align 8, !tbaa !34
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !34
  %i.cc = sitofp nsz i32 %i.cb to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in150 = phi float [ %i.bf, %bb.b ], [ %i.bu, %bb.c ]
  %.in152 = phi float [ %i.ba, %bb.b ], [ %i.bn, %bb.c ]
  %.in154 = phi float [ %i.bd, %bb.b ], [ %i.br, %bb.c ]
  %i.cd = phi nsz float [ %i.bk, %bb.b ], [ %i.cc, %bb.c ]
  %i.ce = phi <2 x float> [ %i.bh, %bb.b ], [ %i.bx, %bb.c ]
  %i.cf = phi <2 x float> [ %i.bi, %bb.b ], [ %i.bz, %bb.c ]
  %i.cg = fptosi float %.in154 to i32             ; 2 uses
  %i.ch = fptosi float %.in152 to i32             ; 2 uses
  %i.ci = fptosi <2 x float> %i.ce to <2 x i32>   ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !47 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.cm = load <2 x float>, ptr %i.cl, align 4, !tbaa !47 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.co = load float, ptr %i.cn, align 4, !tbaa !47 ; 2 uses
  %i.cp = icmp slt i32 %i.n, %i.s
  br i1 %i.cp, label %.preheader156.lr.ph, label %._crit_edge

.preheader156.lr.ph:                              ; preds = %bb.d
  %i.cq = fptosi float %i.cd to i32
  %i.cr = fptosi <2 x float> %i.cf to <2 x i32>
  %i.cs = fptosi float %.in150 to i32
  %i.ct = icmp sgt i32 %i.d, 0
  %i.cu = sitofp nsz i32 %i.cs to float           ; 2 uses
  %i.cv = sitofp <2 x i32> %i.cr to <2 x float>   ; 3 uses
  %i.cw = sitofp nsz i32 %i.cq to float           ; 2 uses
  %i.cx = sext i32 %i.x to i64                    ; 6 uses
  %i.cy = extractelement <2 x i32> %i.v, i64 0    ; 4 uses
  %i.cz = sext i32 %i.cy to i64                   ; 6 uses
  br i1 %i.ct, label %.preheader156.us.preheader, label %._crit_edge

.preheader156.us.preheader:                       ; preds = %.preheader156.lr.ph
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.db = sext i32 %i.f to i64                    ; 2 uses
  %i.dc = zext nneg i32 %i.d to i64               ; 8 uses
  %i.dd = load i32, ptr %i.da, align 4, !tbaa !41
  %i.de = icmp eq i32 %i.dd, 4
  %i.df = xor i64 %i.m, -1
  %i.dg = add i64 %i.r, %i.df
  %i.dh = and i64 %i.dg, 4294967295               ; 2 uses
  %i.di = mul nsw i64 %i.dh, %i.cz
  %i.dj = shl i64 %i.di, 1
  %i.dk = shl nsw i64 %i.z, 1                     ; 2 uses
  %i.dl = mul nsw i64 %i.dh, %i.cx
  %i.dm = shl i64 %i.dl, 1
  %i.dn = xor i64 %i.m, -1
  %i.do = add i64 %i.r, %i.dn
  %i.dp = and i64 %i.do, 4294967295               ; 2 uses
  %i.dq = mul nsw i64 %i.dp, %i.cz
  %i.dr = shl i64 %i.dq, 1
  %i.ds = shl nsw i64 %i.z, 1                     ; 2 uses
  %i.dt = mul nsw i64 %i.dp, %i.cx
  %i.du = shl i64 %i.dt, 1
  %i.dv = insertelement <4 x ptr> poison, ptr %i.ap, i64 0
  %i.dw = shufflevector <4 x ptr> %i.dv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dx = insertelement <4 x ptr> poison, ptr %i.as, i64 0 ; 2 uses
  %i.dy = insertelement <4 x ptr> %i.dx, ptr %i.aa, i64 1
  %i.dz = insertelement <4 x ptr> %i.dy, ptr %i.ad, i64 2
  %i.ea = insertelement <4 x ptr> %i.dz, ptr %i.ag, i64 3
  %i.eb = insertelement <2 x ptr> poison, ptr %i.aa, i64 0
  %i.ec = insertelement <2 x ptr> %i.eb, ptr %i.ad, i64 1
  %i.ed = shufflevector <4 x ptr> %i.dx, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ee = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ef = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> zeroinitializer
  %min.iters.check282 = icmp ugt i32 %i.d, 15
  %ident.check202.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check282, i1 %ident.check202.not, i1 false
  %i.eg = shl nuw nsw i64 %i.dc, 1
  %i.eh = add nsw i64 %i.eg, -2                   ; 2 uses
  %i.ei = add i64 %i.dr, %i.eh
  %i.ej = add i64 %i.ei, %i.ds
  %i.ek = add i64 %i.ej, 2                        ; 3 uses
  %scevgep205.a = getelementptr i8, ptr %i.al, i64 %i.ek ; 5 uses
  %scevgep206.a = getelementptr i8, ptr %i.ao, i64 %i.ek ; 2 uses
  %scevgep207.a = getelementptr i8, ptr %i.ar, i64 %i.ek ; 3 uses
  %i.el = add i64 %i.du, %i.eh
  %i.em = add i64 %i.el, %i.ds
  %i.en = add i64 %i.em, 2                        ; 3 uses
  %scevgep208.a = getelementptr i8, ptr %i.w, i64 %i.en ; 3 uses
  %scevgep209.a = getelementptr i8, ptr %i.ac, i64 %i.en ; 3 uses
  %scevgep210 = getelementptr i8, ptr %i.af, i64 %i.en ; 3 uses
  %bound0211 = icmp ult ptr %i.am, %scevgep206.a
  %bound1212 = icmp ult ptr %i.ap, %scevgep205.a
  %found.conflict213 = and i1 %bound0211, %bound1212
  %bound0216 = icmp ult ptr %i.am, %scevgep207.a
  %bound1217 = icmp ult ptr %i.as, %scevgep205.a
  %found.conflict218 = and i1 %bound0216, %bound1217
  %bound0221 = icmp ult ptr %i.am, %scevgep208.a
  %bound1222 = icmp ult ptr %i.aa, %scevgep205.a
  %found.conflict223 = and i1 %bound0221, %bound1222
  %i.eo = or <8 x i32> %i.ee, %i.ef
  %bound0227 = icmp ult ptr %i.am, %scevgep209.a
  %bound1228 = icmp ult ptr %i.ad, %scevgep205.a
  %found.conflict229 = and i1 %bound0227, %bound1228
  %bound0233 = icmp ult ptr %i.am, %scevgep210
  %bound1234 = icmp ult ptr %i.ag, %scevgep205.a
  %found.conflict235 = and i1 %bound0233, %bound1234
  %i.ep = icmp slt <8 x i32> %i.eo, zeroinitializer
  %bound0275 = icmp ult ptr %i.as, %scevgep210
  %bound1276 = icmp ult ptr %i.ag, %scevgep207.a
  %stride.check219 = icmp slt i32 %i.cy, 0
  %i.eq = insertelement <4 x ptr> poison, ptr %scevgep207.a, i64 0 ; 2 uses
  %i.er = insertelement <4 x ptr> %i.eq, ptr %scevgep208.a, i64 1
  %i.es = insertelement <4 x ptr> %i.er, ptr %scevgep209.a, i64 2
  %i.et = insertelement <4 x ptr> %i.es, ptr %scevgep210, i64 3
  %i.eu = icmp ult <4 x ptr> %i.dw, %i.et
  %i.ev = insertelement <4 x ptr> poison, ptr %scevgep206.a, i64 0
  %i.ew = shufflevector <4 x ptr> %i.ev, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ex = icmp ult <4 x ptr> %i.ea, %i.ew
  %i.ey = insertelement <2 x ptr> poison, ptr %scevgep208.a, i64 0
  %i.ez = insertelement <2 x ptr> %i.ey, ptr %scevgep209.a, i64 1
  %i.fa = icmp ult <2 x ptr> %i.ed, %i.ez
  %i.fb = shufflevector <4 x ptr> %i.eq, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.fc = icmp ult <2 x ptr> %i.ec, %i.fb
  %i.fd = insertelement <8 x i1> poison, i1 %bound0275, i64 6
  %i.fe = insertelement <8 x i1> %i.fd, i1 %stride.check219, i64 7
  %i.ff = shufflevector <4 x i1> %i.eu, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fg = shufflevector <8 x i1> %i.ff, <8 x i1> %i.fe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fh = shufflevector <2 x i1> %i.fa, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fi = shufflevector <8 x i1> %i.fg, <8 x i1> %i.fh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fj = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1276, i64 6
  %i.fk = shufflevector <4 x i1> %i.ex, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fl = shufflevector <8 x i1> %i.fk, <8 x i1> %i.fj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fm = shufflevector <2 x i1> %i.fc, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fn = shufflevector <8 x i1> %i.fl, <8 x i1> %i.fm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fo = and <8 x i1> %i.fi, %i.fn
  %i.fp = or i32 %i.x, %i.cy
  %i.fq = icmp slt i32 %i.fp, 0
  %rdx.op = or <8 x i1> %i.fo, %i.ep
  %i.fr = bitcast <8 x i1> %rdx.op to i8
  %i.fs = icmp ne i8 %i.fr, 0
  %op.rdx = or i1 %i.fs, %found.conflict218
  %op.rdx313.a = or i1 %found.conflict213, %found.conflict223
  %op.rdx314.a = or i1 %found.conflict229, %found.conflict235
  %op.rdx315.a = or i1 %op.rdx, %op.rdx313.a
  %op.rdx316.a = or i1 %op.rdx314.a, %i.fq
  %op.rdx317 = or i1 %op.rdx315.a, %op.rdx316.a
  %n.vec284 = and i64 %i.dc, 2147483640           ; 3 uses
  %broadcast.splatinsert285 = insertelement <8 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat286 = shufflevector <8 x i32> %broadcast.splatinsert285, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert287 = insertelement <8 x float> poison, float %i.ck, i64 0
  %broadcast.splat288 = shufflevector <8 x float> %broadcast.splatinsert287, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert289 = insertelement <8 x float> poison, float %i.cu, i64 0
  %broadcast.splat290 = shufflevector <8 x float> %broadcast.splatinsert289, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat292 = shufflevector <2 x i32> %i.ci, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat294 = shufflevector <2 x float> %i.cm, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat296 = shufflevector <2 x float> %i.cv, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat298 = shufflevector <2 x i32> %i.ci, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat300 = shufflevector <2 x float> %i.cm, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat302 = shufflevector <2 x float> %i.cv, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %cmp.n310 = icmp eq i64 %n.vec284, %i.dc
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond312 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.ft = shl nuw nsw i64 %i.dc, 1
  %i.fu = add nsw i64 %i.ft, -2                   ; 2 uses
  %i.fv = getelementptr i8, ptr %i.au, i64 %i.dj
  %i.fw = getelementptr i8, ptr %i.fv, i64 %i.fu
  %i.fx = getelementptr i8, ptr %i.fw, i64 %i.dk
  %scevgep = getelementptr i8, ptr %i.fx, i64 2
  %i.fy = getelementptr i8, ptr %i.ai, i64 %i.dm
  %i.fz = getelementptr i8, ptr %i.fy, i64 %i.fu
  %i.ga = getelementptr i8, ptr %i.fz, i64 %i.dk
  %scevgep195 = getelementptr i8, ptr %i.ga, i64 2
  %bound0 = icmp ult ptr %i.av, %scevgep195
  %bound1 = icmp ult ptr %i.aj, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.gb = or i32 %i.x, %i.cy
  %i.gc = icmp slt i32 %i.gb, 0
  %i.gd = or i1 %found.conflict, %i.gc
  %n.vec = and i64 %i.dc, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.cg, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert197 = insertelement <8 x float> poison, float %i.co, i64 0
  %broadcast.splat198 = shufflevector <8 x float> %broadcast.splatinsert197, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert199 = insertelement <8 x float> poison, float %i.cw, i64 0
  %broadcast.splat200 = shufflevector <8 x float> %broadcast.splatinsert199, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.dc
  br label %.preheader156.us

.preheader156.us:                                 ; preds = %.preheader156.us.preheader, %.critedge.us
  %.0125169.us = phi i32 [ %i.jh, %.critedge.us ], [ %i.n, %.preheader156.us.preheader ]
  %.0126168.us = phi ptr [ %i.jg, %.critedge.us ], [ %i.av, %.preheader156.us.preheader ] ; 3 uses
  %.0127167.us = phi ptr [ %i.jf, %.critedge.us ], [ %i.as, %.preheader156.us.preheader ] ; 3 uses
  %.0128166.us = phi ptr [ %i.je, %.critedge.us ], [ %i.ap, %.preheader156.us.preheader ] ; 3 uses
  %.0129165.us = phi ptr [ %i.jd, %.critedge.us ], [ %i.am, %.preheader156.us.preheader ] ; 3 uses
  %.0130164.us = phi ptr [ %i.jc, %.critedge.us ], [ %i.aj, %.preheader156.us.preheader ] ; 3 uses
  %.0131163.us = phi ptr [ %i.jb, %.critedge.us ], [ %i.ag, %.preheader156.us.preheader ] ; 3 uses
  %.0132162.us = phi ptr [ %i.ja, %.critedge.us ], [ %i.ad, %.preheader156.us.preheader ] ; 3 uses
  %.0133161.us = phi ptr [ %i.iz, %.critedge.us ], [ %i.aa, %.preheader156.us.preheader ] ; 3 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx317
  br i1 %brmerge, label %scalar.ph281.preheader, label %vector.body303

vector.body303:                                   ; preds = %.preheader156.us, %vector.body303
  %index304 = phi i64 [ %index.next308, %vector.body303 ], [ 0, %.preheader156.us ] ; 7 uses
  %i.ge = getelementptr inbounds [2 x i8], ptr %.0133161.us, i64 %index304
  %wide.load305.a = load <8 x i16>, ptr %i.ge, align 2, !tbaa !49, !alias.scope !299
  %i.gf = zext <8 x i16> %wide.load305.a to <8 x i32>
  %i.gg = getelementptr inbounds [2 x i8], ptr %.0132162.us, i64 %index304
  %wide.load306.a = load <8 x i16>, ptr %i.gg, align 2, !tbaa !49, !alias.scope !300
  %i.gh = zext <8 x i16> %wide.load306.a to <8 x i32>
  %i.gi = getelementptr inbounds [2 x i8], ptr %.0131163.us, i64 %index304
  %wide.load307 = load <8 x i16>, ptr %i.gi, align 2, !tbaa !49, !alias.scope !301
  %i.gj = zext <8 x i16> %wide.load307 to <8 x i32>
  %i.gk = sub nsw <8 x i32> %i.gf, %broadcast.splat286
  %i.gl = sitofp nsz <8 x i32> %i.gk to <8 x float>
  %i.gm = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gl, <8 x float> %broadcast.splat288, <8 x float> %broadcast.splat290)
  %i.gn = fptosi <8 x float> %i.gm to <8 x i32>
  %i.go = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gn, <8 x i32> zeroinitializer)
  %i.gp = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.go, <8 x i32> splat (i32 16383))
  %i.gq = trunc nuw nsw <8 x i32> %i.gp to <8 x i16>
  %i.gr = getelementptr inbounds [2 x i8], ptr %.0129165.us, i64 %index304
  store <8 x i16> %i.gq, ptr %i.gr, align 2, !tbaa !49, !alias.scope !302, !noalias !303
  %i.gs = sub nsw <8 x i32> %i.gh, %broadcast.splat292
  %i.gt = sitofp nsz <8 x i32> %i.gs to <8 x float>
  %i.gu = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gt, <8 x float> %broadcast.splat294, <8 x float> %broadcast.splat296)
  %i.gv = fptosi <8 x float> %i.gu to <8 x i32>
  %i.gw = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gv, <8 x i32> zeroinitializer)
  %i.gx = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gw, <8 x i32> splat (i32 16383))
  %i.gy = trunc nuw nsw <8 x i32> %i.gx to <8 x i16>
  %i.gz = getelementptr inbounds [2 x i8], ptr %.0128166.us, i64 %index304
  store <8 x i16> %i.gy, ptr %i.gz, align 2, !tbaa !49, !alias.scope !304, !noalias !305
  %i.ha = sub nsw <8 x i32> %i.gj, %broadcast.splat298
  %i.hb = sitofp nsz <8 x i32> %i.ha to <8 x float>
  %i.hc = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.hb, <8 x float> %broadcast.splat300, <8 x float> %broadcast.splat302)
  %i.hd = fptosi <8 x float> %i.hc to <8 x i32>
  %i.he = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.hd, <8 x i32> zeroinitializer)
  %i.hf = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.he, <8 x i32> splat (i32 16383))
  %i.hg = trunc nuw nsw <8 x i32> %i.hf to <8 x i16>
  %i.hh = getelementptr inbounds [2 x i8], ptr %.0127167.us, i64 %index304
  store <8 x i16> %i.hg, ptr %i.hh, align 2, !tbaa !49, !alias.scope !306, !noalias !307
  %index.next308 = add nuw i64 %index304, 8       ; 2 uses
  %i.hi = icmp eq i64 %index.next308, %n.vec284
  br i1 %i.hi, label %middle.block309, label %vector.body303, !llvm.loop !291

middle.block309:                                  ; preds = %vector.body303
  br i1 %cmp.n310, label %.lr.ph159.us, label %scalar.ph281.preheader

scalar.ph281.preheader:                           ; preds = %.preheader156.us, %middle.block309
  %indvars.iv.ph = phi i64 [ %n.vec284, %middle.block309 ], [ 0, %.preheader156.us ]
  br label %scalar.ph281

scalar.ph281:                                     ; preds = %scalar.ph281.preheader, %scalar.ph281
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph281 ], [ %indvars.iv.ph, %scalar.ph281.preheader ] ; 7 uses
  %i.hj = getelementptr inbounds [2 x i8], ptr %.0133161.us, i64 %indvars.iv
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !49
  %i.hl = zext i16 %i.hk to i32
  %i.hm = getelementptr inbounds [2 x i8], ptr %.0132162.us, i64 %indvars.iv
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !49
  %i.ho = getelementptr inbounds [2 x i8], ptr %.0131163.us, i64 %indvars.iv
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !49
  %i.hq = sub nsw i32 %i.hl, %i.ch
  %i.hr = sitofp nsz i32 %i.hq to float
  %i.hs = tail call nsz float @llvm.fmuladd.f32(float %i.hr, float %i.ck, float %i.cu)
  %i.ht = fptosi float %i.hs to i32
  %i.hu = tail call i32 @llvm.smax.i32(i32 %i.ht, i32 0)
  %i.hv = tail call i32 @llvm.umin.i32(i32 %i.hu, i32 16383)
  %i.hw = trunc nuw nsw i32 %i.hv to i16
  %i.hx = getelementptr inbounds [2 x i8], ptr %.0129165.us, i64 %indvars.iv
  store i16 %i.hw, ptr %i.hx, align 2, !tbaa !49
  %i.hy = getelementptr inbounds [2 x i8], ptr %.0128166.us, i64 %indvars.iv
  %i.hz = insertelement <2 x i16> poison, i16 %i.hn, i64 0
  %i.ia = insertelement <2 x i16> %i.hz, i16 %i.hp, i64 1
  %i.ib = zext <2 x i16> %i.ia to <2 x i32>
  %i.ic = sub nsw <2 x i32> %i.ib, %i.ci
  %i.id = sitofp <2 x i32> %i.ic to <2 x float>
  %i.ie = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.id, <2 x float> %i.cm, <2 x float> %i.cv)
  %i.if = fptosi <2 x float> %i.ie to <2 x i32>
  %i.ig = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.if, <2 x i32> zeroinitializer)
  %i.ih = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ig, <2 x i32> splat (i32 16383))
  %i.ii = trunc nuw nsw <2 x i32> %i.ih to <2 x i16> ; 2 uses
  %i.ij = extractelement <2 x i16> %i.ii, i64 0
  store i16 %i.ij, ptr %i.hy, align 2, !tbaa !49
  %i.ik = getelementptr inbounds [2 x i8], ptr %.0127167.us, i64 %indvars.iv
  %i.il = extractelement <2 x i16> %i.ii, i64 1
  store i16 %i.il, ptr %i.ik, align 2, !tbaa !49
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.db ; 2 uses
  %i.im = icmp slt i64 %indvars.iv.next, %i.dc
  br i1 %i.im, label %scalar.ph281, label %.lr.ph159.us, !llvm.loop !292

.lr.ph159.split.us:                               ; preds = %.lr.ph159.split.us.preheader318, %.lr.ph159.split.us
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %.lr.ph159.split.us ], [ %indvars.iv188.ph, %.lr.ph159.split.us.preheader318 ] ; 3 uses
  %i.in = getelementptr inbounds [2 x i8], ptr %.0130164.us, i64 %indvars.iv188
  %i.io = load i16, ptr %i.in, align 2, !tbaa !49
  %i.ip = zext i16 %i.io to i32
  %i.iq = sub nsw i32 %i.ip, %i.cg
  %i.ir = sitofp nsz i32 %i.iq to float
  %i.is = tail call nsz float @llvm.fmuladd.f32(float %i.ir, float %i.co, float %i.cw)
  %i.it = fptosi float %i.is to i32
  %i.iu = tail call i32 @llvm.smax.i32(i32 %i.it, i32 0)
  %i.iv = tail call i32 @llvm.umin.i32(i32 %i.iu, i32 16383)
  %i.iw = trunc nuw nsw i32 %i.iv to i16
  %i.ix = getelementptr inbounds [2 x i8], ptr %.0126168.us, i64 %indvars.iv188
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !49
  %indvars.iv.next189 = add nsw i64 %indvars.iv188, %i.db ; 2 uses
  %i.iy = icmp slt i64 %indvars.iv.next189, %i.dc
  br i1 %i.iy, label %.lr.ph159.split.us, label %.critedge.us, !llvm.loop !293

.critedge.us:                                     ; preds = %.lr.ph159.split.us, %middle.block, %.lr.ph159.us
  %i.iz = getelementptr inbounds [2 x i8], ptr %.0133161.us, i64 %i.cx
  %i.ja = getelementptr inbounds [2 x i8], ptr %.0132162.us, i64 %i.cx
  %i.jb = getelementptr inbounds [2 x i8], ptr %.0131163.us, i64 %i.cx
  %i.jc = getelementptr inbounds [2 x i8], ptr %.0130164.us, i64 %i.cx
  %i.jd = getelementptr inbounds [2 x i8], ptr %.0129165.us, i64 %i.cz
  %i.je = getelementptr inbounds [2 x i8], ptr %.0128166.us, i64 %i.cz
  %i.jf = getelementptr inbounds [2 x i8], ptr %.0127167.us, i64 %i.cz
  %i.jg = getelementptr inbounds [2 x i8], ptr %.0126168.us, i64 %i.cz
  %i.jh = add nsw i32 %.0125169.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.jh, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader156.us, !llvm.loop !294

.lr.ph159.us:                                     ; preds = %scalar.ph281, %middle.block309
  br i1 %i.de, label %.lr.ph159.split.us.preheader, label %.critedge.us

.lr.ph159.split.us.preheader:                     ; preds = %.lr.ph159.us
  %or.cond312.not = xor i1 %or.cond312, true
  %brmerge319 = select i1 %or.cond312.not, i1 true, i1 %i.gd
  br i1 %brmerge319, label %.lr.ph159.split.us.preheader318, label %vector.body

vector.body:                                      ; preds = %.lr.ph159.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph159.split.us.preheader ] ; 3 uses
  %i.ji = getelementptr inbounds [2 x i8], ptr %.0130164.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ji, align 2, !tbaa !49, !alias.scope !308
  %i.jj = zext <8 x i16> %wide.load to <8 x i32>
  %i.jk = sub nsw <8 x i32> %i.jj, %broadcast.splat
  %i.jl = sitofp nsz <8 x i32> %i.jk to <8 x float>
  %i.jm = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jl, <8 x float> %broadcast.splat198, <8 x float> %broadcast.splat200)
  %i.jn = fptosi <8 x float> %i.jm to <8 x i32>
  %i.jo = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jn, <8 x i32> zeroinitializer)
  %i.jp = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.jo, <8 x i32> splat (i32 16383))
  %i.jq = trunc nuw nsw <8 x i32> %i.jp to <8 x i16>
  %i.jr = getelementptr inbounds [2 x i8], ptr %.0126168.us, i64 %index
  store <8 x i16> %i.jq, ptr %i.jr, align 2, !tbaa !49, !alias.scope !309, !noalias !308
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.js = icmp eq i64 %index.next, %n.vec
  br i1 %i.js, label %middle.block, label %vector.body, !llvm.loop !298

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us, label %.lr.ph159.split.us.preheader318

.lr.ph159.split.us.preheader318:                  ; preds = %.lr.ph159.split.us.preheader, %middle.block
  %indvars.iv188.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph159.split.us.preheader ]
  br label %.lr.ph159.split.us

._crit_edge:                                      ; preds = %.critedge.us, %.preheader156.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_preserve_slice_14_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 3 uses
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
  %i.u = load i32, ptr %i.t, align 4, !tbaa !36
  %i.v = ashr i32 %i.u, 1                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !35
  %i.y = ashr i32 %i.x, 1                         ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !38
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 9 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.af = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !52
  %i.ba = icmp eq i32 %i.az, 32                   ; 2 uses
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
  %i.ci = fptosi float %.in182 to i32             ; 2 uses
  %i.cj = fptosi float %.in180 to i32
  %i.ck = fptosi <2 x float> %i.cg to <2 x i32>
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !47
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !47
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !47 ; 2 uses
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
  %i.cz = sitofp nsz i32 %i.cs to float           ; 2 uses
  %i.da = sext i32 %i.v to i64                    ; 5 uses
  %i.db = sext i32 %i.y to i64                    ; 5 uses
  br i1 %i.cv, label %.preheader184.lr.ph.split.us, label %._crit_edge

.preheader184.lr.ph.split.us:                     ; preds = %.preheader184.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !50
  %i.df = sext i32 %i.f to i64                    ; 2 uses
  %i.dg = zext nneg i32 %i.d to i64               ; 5 uses
  %i.dh = load i32, ptr %i.dc, align 4, !tbaa !41
  %i.di = icmp eq i32 %i.dh, 4
  %i.dj = xor i64 %i.m, -1
  %i.dk = add i64 %i.r, %i.dj
  %i.dl = and i64 %i.dk, 4294967295               ; 2 uses
  %i.dm = mul nsw i64 %i.dl, %i.db
  %i.dn = shl i64 %i.dm, 1
  %i.do = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dp = mul nsw i64 %i.dl, %i.da
  %i.dq = shl i64 %i.dp, 1
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.dr = shl nuw nsw i64 %i.dg, 1
  %i.ds = add nsw i64 %i.dr, -2                   ; 2 uses
  %i.dt = getelementptr i8, ptr %i.aw, i64 %i.dn
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.ds
  %i.dv = getelementptr i8, ptr %i.du, i64 %i.do
  %scevgep = getelementptr i8, ptr %i.dv, i64 2
  %i.dw = getelementptr i8, ptr %i.ak, i64 %i.dq
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.ds
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.do
  %scevgep223 = getelementptr i8, ptr %i.dy, i64 2
  %bound0 = icmp ult ptr %i.ax, %scevgep223
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dz = or i32 %i.v, %i.y
  %i.ea = icmp slt i32 %i.dz, 0
  %i.eb = or i1 %found.conflict, %i.ea
  %n.vec = and i64 %i.dg, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert225 = insertelement <8 x float> poison, float %i.cq, i64 0
  %broadcast.splat226 = shufflevector <8 x float> %broadcast.splatinsert225, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <8 x float> poison, float %i.cz, i64 0
  %broadcast.splat228 = shufflevector <8 x float> %broadcast.splatinsert227, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.dg
  br label %.preheader184.us

.preheader184.us:                                 ; preds = %.critedge.us, %.preheader184.lr.ph.split.us
  %.0147197.us = phi i32 [ %i.n, %.preheader184.lr.ph.split.us ], [ %i.jt, %.critedge.us ]
  %.0148196.us = phi ptr [ %i.ax, %.preheader184.lr.ph.split.us ], [ %i.js, %.critedge.us ] ; 3 uses
  %.0149195.us = phi ptr [ %i.au, %.preheader184.lr.ph.split.us ], [ %i.jr, %.critedge.us ] ; 2 uses
  %.0150194.us = phi ptr [ %i.ar, %.preheader184.lr.ph.split.us ], [ %i.jq, %.critedge.us ] ; 2 uses
  %.0151193.us = phi ptr [ %i.ao, %.preheader184.lr.ph.split.us ], [ %i.jp, %.critedge.us ] ; 2 uses
  %.0152192.us = phi ptr [ %i.al, %.preheader184.lr.ph.split.us ], [ %i.jo, %.critedge.us ] ; 3 uses
  %.0153191.us = phi ptr [ %i.ai, %.preheader184.lr.ph.split.us ], [ %i.jn, %.critedge.us ] ; 2 uses
  %.0154190.us = phi ptr [ %i.af, %.preheader184.lr.ph.split.us ], [ %i.jm, %.critedge.us ] ; 2 uses
  %.0155189.us = phi ptr [ %i.ac, %.preheader184.lr.ph.split.us ], [ %i.jl, %.critedge.us ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader184.us, %preserve_color.exit.thread.us
  %indvars.iv = phi i64 [ 0, %.preheader184.us ], [ %indvars.iv.next, %preserve_color.exit.thread.us ] ; 7 uses
  %i.ec = getelementptr inbounds [2 x i8], ptr %.0155189.us, i64 %indvars.iv
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !49 ; 2 uses
  %i.ee = zext i16 %i.ed to i32
  %i.ef = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %indvars.iv
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !49 ; 2 uses
  %i.eh = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %indvars.iv
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !49 ; 2 uses
  %i.ej = insertelement <2 x i16> poison, i16 %i.eg, i64 0
  %i.ek = insertelement <2 x i16> %i.ej, i16 %i.ei, i64 1
  %i.el = zext <2 x i16> %i.ek to <2 x i32>
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.em = load i32, ptr %i.cw, align 4, !tbaa !53
  %i.en = sitofp nsz i32 %i.em to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.eo = phi nsz float [ %i.en, %bb.f ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.ep = sub nsw i32 %i.ee, %i.cj
  %i.eq = sitofp nsz i32 %i.ep to float
  %i.er = tail call nsz float @llvm.fmuladd.f32(float %i.eq, float %i.cm, float %i.cx)
  %i.es = fptosi float %i.er to i32               ; 3 uses
  %i.et = sub nsw <2 x i32> %i.el, %i.ck
  %i.eu = sitofp <2 x i32> %i.et to <2 x float>
  %i.ev = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.co, <2 x float> %i.cy)
  %i.ew = fptosi <2 x float> %i.ev to <2 x i32>   ; 3 uses
  %i.ex = uitofp i16 %i.ed to float               ; 6 uses
  %i.ey = uitofp i16 %i.eg to float               ; 6 uses
  %i.ez = uitofp i16 %i.ei to float               ; 6 uses
  %i.fa = sitofp nsz i32 %i.es to float           ; 7 uses
  %i.fb = sitofp <2 x i32> %i.ew to <2 x float>   ; 13 uses
  switch i32 %i.de, label %preserve_color.exit.thread.us [
    i32 1, label %bb.m
    i32 2, label %bb.l
    i32 3, label %bb.k
    i32 4, label %bb.j
    i32 5, label %bb.i
    i32 6, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.fc = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.fa, i64 1
  %i.fe = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fg = fdiv nsz <2 x float> %i.fd, %i.ff       ; 3 uses
  %i.fh = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fi = insertelement <2 x float> %i.fh, float %i.ey, i64 0
  %i.fj = fdiv nsz <2 x float> %i.fi, %i.ff       ; 3 uses
  %i.fk = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.fl = fdiv nsz <2 x float> %i.fk, %i.ff       ; 3 uses
  %i.fm = fmul nsz <2 x float> %i.fg, %i.fg
  %i.fn = fmul nsz <2 x float> %i.fj, %i.fj
  %i.fo = fmul nsz <2 x float> %i.fj, %i.fn
  %i.fp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fg, <2 x float> %i.fo)
  %i.fq = fmul nsz <2 x float> %i.fl, %i.fl
  %i.fr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fl, <2 x float> %i.fp) ; 2 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 0
  %i.ft = tail call nsz float @cbrtf(float noundef %i.fs) #9
  %i.fu = extractelement <2 x float> %i.fr, i64 1
  %i.fv = tail call nsz float @cbrtf(float noundef %i.fu) #9
  %i.fw = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.fv, i64 1
  br label %preserve_color.exit.us

bb.i:                                             ; preds = %bb.g
  %i.fy = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.fa, i64 1
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
  %.0145.us = phi i32 [ %i.ie, %bb.n ], [ %i.es, %preserve_color.exit.us ], [ %i.es, %bb.g ]
  %i.ij = phi <2 x i32> [ %i.ii, %bb.n ], [ %i.ew, %preserve_color.exit.us ], [ %i.ew, %bb.g ] ; 2 uses
  %i.ik = tail call i32 @llvm.smax.i32(i32 %.0145.us, i32 0)
  %i.il = tail call i32 @llvm.umin.i32(i32 %i.ik, i32 16383)
  %i.im = trunc nuw nsw i32 %i.il to i16
  %i.in = getelementptr inbounds [2 x i8], ptr %.0151193.us, i64 %indvars.iv
  store i16 %i.im, ptr %i.in, align 2, !tbaa !49
  %i.io = extractelement <2 x i32> %i.ij, i64 0
  %i.ip = tail call i32 @llvm.smax.i32(i32 %i.io, i32 0)
  %i.iq = tail call i32 @llvm.umin.i32(i32 %i.ip, i32 16383)
end_hunk_6
begin_hunk_7_@colorlevels_preserve_slice_14_planar:bb.a
  %i.is = getelementptr inbounds [2 x i8], ptr %.0150194.us, i64 %indvars.iv
  store i16 %i.ir, ptr %i.is, align 2, !tbaa !49
  %i.it = extractelement <2 x i32> %i.ij, i64 1
  %i.iu = tail call i32 @llvm.smax.i32(i32 %i.it, i32 0)
  %i.iv = tail call i32 @llvm.umin.i32(i32 %i.iu, i32 16383)
  %i.iw = trunc nuw nsw i32 %i.iv to i16
  %i.ix = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %indvars.iv
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !49
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.df ; 2 uses
  %i.iy = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.iy, label %bb.e, label %.lr.ph187.us, !llvm.loop !310

.lr.ph187.split.us:                               ; preds = %.lr.ph187.split.us.preheader229, %.lr.ph187.split.us
  %indvars.iv216 = phi i64 [ %indvars.iv.next217, %.lr.ph187.split.us ], [ %indvars.iv216.ph, %.lr.ph187.split.us.preheader229 ] ; 3 uses
  %i.iz = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %indvars.iv216
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !49
  %i.jb = zext i16 %i.ja to i32
  %i.jc = sub nsw i32 %i.jb, %i.ci
  %i.jd = sitofp nsz i32 %i.jc to float
  %i.je = tail call nsz float @llvm.fmuladd.f32(float %i.jd, float %i.cq, float %i.cz)
  %i.jf = fptosi float %i.je to i32
  %i.jg = tail call i32 @llvm.smax.i32(i32 %i.jf, i32 0)
  %i.jh = tail call i32 @llvm.umin.i32(i32 %i.jg, i32 16383)
  %i.ji = trunc nuw nsw i32 %i.jh to i16
  %i.jj = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %indvars.iv216
  store i16 %i.ji, ptr %i.jj, align 2, !tbaa !49
  %indvars.iv.next217 = add nsw i64 %indvars.iv216, %i.df ; 2 uses
  %i.jk = icmp slt i64 %indvars.iv.next217, %i.dg
  br i1 %i.jk, label %.lr.ph187.split.us, label %.critedge.us, !llvm.loop !311

.critedge.us:                                     ; preds = %.lr.ph187.split.us, %middle.block, %.lr.ph187.us
  %i.jl = getelementptr inbounds [2 x i8], ptr %.0155189.us, i64 %i.da
  %i.jm = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %i.da
  %i.jn = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %i.da
  %i.jo = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %i.da
  %i.jp = getelementptr inbounds [2 x i8], ptr %.0151193.us, i64 %i.db
  %i.jq = getelementptr inbounds [2 x i8], ptr %.0150194.us, i64 %i.db
  %i.jr = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %i.db
  %i.js = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %i.db
  %i.jt = add nsw i32 %.0147197.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.jt, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader184.us, !llvm.loop !312

.lr.ph187.us:                                     ; preds = %preserve_color.exit.thread.us
  br i1 %i.di, label %.lr.ph187.split.us.preheader, label %.critedge.us

.lr.ph187.split.us.preheader:                     ; preds = %.lr.ph187.us
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.eb
  br i1 %brmerge, label %.lr.ph187.split.us.preheader229, label %vector.body

vector.body:                                      ; preds = %.lr.ph187.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph187.split.us.preheader ] ; 3 uses
  %i.ju = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ju, align 2, !tbaa !49, !alias.scope !317
  %i.jv = zext <8 x i16> %wide.load to <8 x i32>
  %i.jw = sub nsw <8 x i32> %i.jv, %broadcast.splat
  %i.jx = sitofp nsz <8 x i32> %i.jw to <8 x float>
  %i.jy = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jx, <8 x float> %broadcast.splat226, <8 x float> %broadcast.splat228)
  %i.jz = fptosi <8 x float> %i.jy to <8 x i32>
  %i.ka = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jz, <8 x i32> zeroinitializer)
  %i.kb = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ka, <8 x i32> splat (i32 16383))
  %i.kc = trunc nuw nsw <8 x i32> %i.kb to <8 x i16>
  %i.kd = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %index
  store <8 x i16> %i.kc, ptr %i.kd, align 2, !tbaa !49, !alias.scope !318, !noalias !317
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ke = icmp eq i64 %index.next, %n.vec
  br i1 %i.ke, label %middle.block, label %vector.body, !llvm.loop !316

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us, label %.lr.ph187.split.us.preheader229

.lr.ph187.split.us.preheader229:                  ; preds = %.lr.ph187.split.us.preheader, %middle.block
  %indvars.iv216.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph187.split.us.preheader ]
  br label %.lr.ph187.split.us

._crit_edge:                                      ; preds = %.critedge.us, %.preheader184.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_slice_16_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 3 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 3 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load <2 x i32>, ptr %i.t, align 8, !tbaa !34
  %i.v = ashr <2 x i32> %i.u, splat (i32 1)       ; 4 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.x = extractelement <2 x i32> %i.v, i64 1     ; 4 uses
  %i.y = mul i32 %i.x, %i.n
  %i.z = sext i32 %i.y to i64                     ; 10 uses
  %i.aa = getelementptr [2 x i8], ptr %i.w, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38 ; 2 uses
  %i.ad = getelementptr [2 x i8], ptr %i.ac, i64 %i.z ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38 ; 2 uses
  %i.ag = getelementptr [2 x i8], ptr %i.af, i64 %i.z ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38 ; 2 uses
  %i.aj = getelementptr [2 x i8], ptr %i.ai, i64 %i.z ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38 ; 2 uses
  %i.am = getelementptr [2 x i8], ptr %i.al, i64 %i.z ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !38 ; 2 uses
  %i.ap = getelementptr [2 x i8], ptr %i.ao, i64 %i.z ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38 ; 2 uses
  %i.as = getelementptr [2 x i8], ptr %i.ar, i64 %i.z ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.av = getelementptr [2 x i8], ptr %i.au, i64 %i.z ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !52
  %i.ay = icmp eq i32 %i.ax, 32
  br i1 %i.ay, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bc = load <2 x float>, ptr %i.az, align 4, !tbaa !47
  %i.bd = load <2 x float>, ptr %i.bb, align 4, !tbaa !47
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bf = load <2 x float>, ptr %i.ba, align 4, !tbaa !47
  %i.bg = load <2 x float>, ptr %i.be, align 4, !tbaa !47
  %i.bh = shufflevector <2 x float> %i.bf, <2 x float> %i.bg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bl = load <2 x i32>, ptr %i.bi, align 4, !tbaa !34
  %i.bm = sitofp <2 x i32> %i.bl to <2 x float>
  %i.bn = load <2 x i32>, ptr %i.bk, align 4, !tbaa !34
  %i.bo = sitofp <2 x i32> %i.bn to <2 x float>
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.bq = load <2 x i32>, ptr %i.bj, align 4, !tbaa !34
  %i.br = load <2 x i32>, ptr %i.bp, align 4, !tbaa !34
  %i.bs = shufflevector <2 x i32> %i.bq, <2 x i32> %i.br, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bt = sitofp <4 x i32> %i.bs to <4 x float>
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bu = phi <2 x float> [ %i.bc, %bb.b ], [ %i.bm, %bb.c ]
  %i.bv = phi <2 x float> [ %i.bd, %bb.b ], [ %i.bo, %bb.c ]
  %i.bw = phi <4 x float> [ %i.bh, %bb.b ], [ %i.bt, %bb.c ] ; 4 uses
  %i.bx = extractelement <4 x float> %i.bw, i64 1
  %i.by = fptosi float %i.bx to i32               ; 2 uses
  %i.bz = fptosi <2 x float> %i.bu to <2 x i32>   ; 3 uses
  %i.ca = extractelement <4 x float> %i.bw, i64 0
  %i.cb = fptosi float %i.ca to i32               ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cd = load <2 x float>, ptr %i.cc, align 8, !tbaa !47 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !47 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !47 ; 2 uses
  %i.ci = icmp slt i32 %i.n, %i.s
  br i1 %i.ci, label %.preheader156.lr.ph, label %._crit_edge

.preheader156.lr.ph:                              ; preds = %bb.d
  %i.cj = extractelement <4 x float> %i.bw, i64 3
  %i.ck = fptosi float %i.cj to i32
  %i.cl = extractelement <4 x float> %i.bw, i64 2
  %i.cm = fptosi float %i.cl to i32
  %i.cn = fptosi <2 x float> %i.bv to <2 x i32>
  %i.co = icmp sgt i32 %i.d, 0
  %i.cp = sitofp <2 x i32> %i.cn to <2 x float>   ; 3 uses
  %i.cq = sitofp nsz i32 %i.cm to float           ; 2 uses
  %i.cr = sitofp nsz i32 %i.ck to float           ; 2 uses
  %i.cs = sext i32 %i.x to i64                    ; 6 uses
  %i.ct = extractelement <2 x i32> %i.v, i64 0    ; 4 uses
  %i.cu = sext i32 %i.ct to i64                   ; 6 uses
  br i1 %i.co, label %.preheader156.lr.ph.split.us.split.us, label %._crit_edge

.preheader156.lr.ph.split.us.split.us:            ; preds = %.preheader156.lr.ph
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !41
  %i.cx = icmp eq i32 %i.cw, 4
  %i.cy = sext i32 %i.f to i64                    ; 2 uses
  %i.cz = zext nneg i32 %i.d to i64               ; 8 uses
  %i.da = xor i64 %i.m, -1
  %i.db = add i64 %i.r, %i.da
  %i.dc = and i64 %i.db, 4294967295               ; 2 uses
  %i.dd = mul nsw i64 %i.dc, %i.cu
  %i.de = shl i64 %i.dd, 1
  %i.df = shl nsw i64 %i.z, 1                     ; 2 uses
  %i.dg = mul nsw i64 %i.dc, %i.cs
  %i.dh = shl i64 %i.dg, 1
  %i.di = xor i64 %i.m, -1
  %i.dj = add i64 %i.r, %i.di
  %i.dk = and i64 %i.dj, 4294967295               ; 2 uses
  %i.dl = mul nsw i64 %i.dk, %i.cu
  %i.dm = shl i64 %i.dl, 1
  %i.dn = shl nsw i64 %i.z, 1                     ; 2 uses
  %i.do = mul nsw i64 %i.dk, %i.cs
  %i.dp = shl i64 %i.do, 1
  %i.dq = insertelement <4 x ptr> poison, ptr %i.ap, i64 0
  %i.dr = shufflevector <4 x ptr> %i.dq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ds = insertelement <4 x ptr> poison, ptr %i.as, i64 0 ; 2 uses
  %i.dt = insertelement <4 x ptr> %i.ds, ptr %i.aa, i64 1
  %i.du = insertelement <4 x ptr> %i.dt, ptr %i.ad, i64 2
  %i.dv = insertelement <4 x ptr> %i.du, ptr %i.ag, i64 3
  %i.dw = insertelement <2 x ptr> poison, ptr %i.aa, i64 0
  %i.dx = insertelement <2 x ptr> %i.dw, ptr %i.ad, i64 1
  %i.dy = shufflevector <4 x ptr> %i.ds, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.dz = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ea = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> zeroinitializer
  %min.iters.check284 = icmp ugt i32 %i.d, 15
  %ident.check204.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check284, i1 %ident.check204.not, i1 false
  %i.eb = shl nuw nsw i64 %i.cz, 1
  %i.ec = add nsw i64 %i.eb, -2                   ; 2 uses
  %i.ed = add i64 %i.dm, %i.ec
  %i.ee = add i64 %i.ed, %i.dn
  %i.ef = add i64 %i.ee, 2                        ; 3 uses
  %scevgep207.a = getelementptr i8, ptr %i.al, i64 %i.ef ; 5 uses
  %scevgep208.a = getelementptr i8, ptr %i.ao, i64 %i.ef ; 2 uses
  %scevgep209.a = getelementptr i8, ptr %i.ar, i64 %i.ef ; 3 uses
  %i.eg = add i64 %i.dp, %i.ec
  %i.eh = add i64 %i.eg, %i.dn
  %i.ei = add i64 %i.eh, 2                        ; 3 uses
  %scevgep210.a = getelementptr i8, ptr %i.w, i64 %i.ei ; 3 uses
  %scevgep211.a = getelementptr i8, ptr %i.ac, i64 %i.ei ; 3 uses
  %scevgep212 = getelementptr i8, ptr %i.af, i64 %i.ei ; 3 uses
  %bound0213 = icmp ult ptr %i.am, %scevgep208.a
  %bound1214 = icmp ult ptr %i.ap, %scevgep207.a
  %found.conflict215 = and i1 %bound0213, %bound1214
  %bound0218 = icmp ult ptr %i.am, %scevgep209.a
  %bound1219 = icmp ult ptr %i.as, %scevgep207.a
  %found.conflict220 = and i1 %bound0218, %bound1219
  %bound0223 = icmp ult ptr %i.am, %scevgep210.a
  %bound1224 = icmp ult ptr %i.aa, %scevgep207.a
  %found.conflict225 = and i1 %bound0223, %bound1224
  %i.ej = or <8 x i32> %i.dz, %i.ea
  %bound0229 = icmp ult ptr %i.am, %scevgep211.a
  %bound1230 = icmp ult ptr %i.ad, %scevgep207.a
  %found.conflict231 = and i1 %bound0229, %bound1230
  %bound0235 = icmp ult ptr %i.am, %scevgep212
  %bound1236 = icmp ult ptr %i.ag, %scevgep207.a
  %found.conflict237 = and i1 %bound0235, %bound1236
  %i.ek = icmp slt <8 x i32> %i.ej, zeroinitializer
  %bound0277 = icmp ult ptr %i.as, %scevgep212
  %bound1278 = icmp ult ptr %i.ag, %scevgep209.a
  %stride.check221 = icmp slt i32 %i.ct, 0
  %i.el = insertelement <4 x ptr> poison, ptr %scevgep209.a, i64 0 ; 2 uses
  %i.em = insertelement <4 x ptr> %i.el, ptr %scevgep210.a, i64 1
  %i.en = insertelement <4 x ptr> %i.em, ptr %scevgep211.a, i64 2
  %i.eo = insertelement <4 x ptr> %i.en, ptr %scevgep212, i64 3
  %i.ep = icmp ult <4 x ptr> %i.dr, %i.eo
  %i.eq = insertelement <4 x ptr> poison, ptr %scevgep208.a, i64 0
  %i.er = shufflevector <4 x ptr> %i.eq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.es = icmp ult <4 x ptr> %i.dv, %i.er
  %i.et = insertelement <2 x ptr> poison, ptr %scevgep210.a, i64 0
  %i.eu = insertelement <2 x ptr> %i.et, ptr %scevgep211.a, i64 1
  %i.ev = icmp ult <2 x ptr> %i.dy, %i.eu
  %i.ew = shufflevector <4 x ptr> %i.el, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.ex = icmp ult <2 x ptr> %i.dx, %i.ew
  %i.ey = insertelement <8 x i1> poison, i1 %bound0277, i64 6
  %i.ez = insertelement <8 x i1> %i.ey, i1 %stride.check221, i64 7
  %i.fa = shufflevector <4 x i1> %i.ep, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fb = shufflevector <8 x i1> %i.fa, <8 x i1> %i.ez, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fc = shufflevector <2 x i1> %i.ev, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fd = shufflevector <8 x i1> %i.fb, <8 x i1> %i.fc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fe = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1278, i64 6
  %i.ff = shufflevector <4 x i1> %i.es, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fg = shufflevector <8 x i1> %i.ff, <8 x i1> %i.fe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fh = shufflevector <2 x i1> %i.ex, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fi = shufflevector <8 x i1> %i.fg, <8 x i1> %i.fh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fj = and <8 x i1> %i.fd, %i.fi
  %i.fk = or i32 %i.x, %i.ct
  %i.fl = icmp slt i32 %i.fk, 0
  %rdx.op = or <8 x i1> %i.fj, %i.ek
  %i.fm = bitcast <8 x i1> %rdx.op to i8
  %i.fn = icmp ne i8 %i.fm, 0
  %op.rdx = or i1 %i.fn, %found.conflict220
  %op.rdx315.a = or i1 %found.conflict215, %found.conflict225
  %op.rdx316.a = or i1 %found.conflict231, %found.conflict237
  %op.rdx317.a = or i1 %op.rdx, %op.rdx315.a
  %op.rdx318.a = or i1 %op.rdx316.a, %i.fl
  %op.rdx319 = or i1 %op.rdx317.a, %op.rdx318.a
  %n.vec286 = and i64 %i.cz, 2147483640           ; 3 uses
  %broadcast.splat288 = shufflevector <2 x i32> %i.bz, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat290 = shufflevector <2 x float> %i.cd, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat292 = shufflevector <2 x float> %i.cp, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat294 = shufflevector <2 x i32> %i.bz, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat296 = shufflevector <2 x float> %i.cd, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat298 = shufflevector <2 x float> %i.cp, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert299 = insertelement <8 x i32> poison, i32 %i.cb, i64 0
  %broadcast.splat300 = shufflevector <8 x i32> %broadcast.splatinsert299, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert301 = insertelement <8 x float> poison, float %i.cf, i64 0
  %broadcast.splat302 = shufflevector <8 x float> %broadcast.splatinsert301, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert303 = insertelement <8 x float> poison, float %i.cq, i64 0
  %broadcast.splat304 = shufflevector <8 x float> %broadcast.splatinsert303, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n312 = icmp eq i64 %n.vec286, %i.cz
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond314 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.fo = shl nuw nsw i64 %i.cz, 1
  %i.fp = add nsw i64 %i.fo, -2                   ; 2 uses
  %i.fq = getelementptr i8, ptr %i.au, i64 %i.de
  %i.fr = getelementptr i8, ptr %i.fq, i64 %i.fp
  %i.fs = getelementptr i8, ptr %i.fr, i64 %i.df
  %scevgep = getelementptr i8, ptr %i.fs, i64 2
  %i.ft = getelementptr i8, ptr %i.ai, i64 %i.dh
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.fp
  %i.fv = getelementptr i8, ptr %i.fu, i64 %i.df
  %scevgep197 = getelementptr i8, ptr %i.fv, i64 2
  %bound0 = icmp ult ptr %i.av, %scevgep197
  %bound1 = icmp ult ptr %i.aj, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.fw = or i32 %i.x, %i.ct
  %i.fx = icmp slt i32 %i.fw, 0
  %i.fy = or i1 %found.conflict, %i.fx
  %n.vec = and i64 %i.cz, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert199 = insertelement <8 x float> poison, float %i.ch, i64 0
  %broadcast.splat200 = shufflevector <8 x float> %broadcast.splatinsert199, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert201 = insertelement <8 x float> poison, float %i.cr, i64 0
  %broadcast.splat202 = shufflevector <8 x float> %broadcast.splatinsert201, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.cz
  br label %.preheader156.us.us

.preheader156.us.us:                              ; preds = %.critedge.us.us, %.preheader156.lr.ph.split.us.split.us
  %.0125169.us.us = phi i32 [ %i.n, %.preheader156.lr.ph.split.us.split.us ], [ %i.jk, %.critedge.us.us ]
  %.0126168.us.us = phi ptr [ %i.av, %.preheader156.lr.ph.split.us.split.us ], [ %i.jj, %.critedge.us.us ] ; 3 uses
  %.0127167.us.us = phi ptr [ %i.as, %.preheader156.lr.ph.split.us.split.us ], [ %i.ji, %.critedge.us.us ] ; 3 uses
  %.0128166.us.us = phi ptr [ %i.ap, %.preheader156.lr.ph.split.us.split.us ], [ %i.jh, %.critedge.us.us ] ; 3 uses
  %.0129165.us.us = phi ptr [ %i.am, %.preheader156.lr.ph.split.us.split.us ], [ %i.jg, %.critedge.us.us ] ; 3 uses
  %.0130164.us.us = phi ptr [ %i.aj, %.preheader156.lr.ph.split.us.split.us ], [ %i.jf, %.critedge.us.us ] ; 3 uses
  %.0131163.us.us = phi ptr [ %i.ag, %.preheader156.lr.ph.split.us.split.us ], [ %i.je, %.critedge.us.us ] ; 3 uses
  %.0132162.us.us = phi ptr [ %i.ad, %.preheader156.lr.ph.split.us.split.us ], [ %i.jd, %.critedge.us.us ] ; 3 uses
  %.0133161.us.us = phi ptr [ %i.aa, %.preheader156.lr.ph.split.us.split.us ], [ %i.jc, %.critedge.us.us ] ; 3 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx319
  br i1 %brmerge, label %scalar.ph283.preheader, label %vector.body305

vector.body305:                                   ; preds = %.preheader156.us.us, %vector.body305
  %index306 = phi i64 [ %index.next310, %vector.body305 ], [ 0, %.preheader156.us.us ] ; 7 uses
  %i.fz = getelementptr inbounds [2 x i8], ptr %.0133161.us.us, i64 %index306
  %wide.load307.a = load <8 x i16>, ptr %i.fz, align 2, !tbaa !49, !alias.scope !334
  %i.ga = zext <8 x i16> %wide.load307.a to <8 x i32>
  %i.gb = getelementptr inbounds [2 x i8], ptr %.0132162.us.us, i64 %index306
  %wide.load308.a = load <8 x i16>, ptr %i.gb, align 2, !tbaa !49, !alias.scope !335
  %i.gc = zext <8 x i16> %wide.load308.a to <8 x i32>
  %i.gd = getelementptr inbounds [2 x i8], ptr %.0131163.us.us, i64 %index306
  %wide.load309 = load <8 x i16>, ptr %i.gd, align 2, !tbaa !49, !alias.scope !336
  %i.ge = zext <8 x i16> %wide.load309 to <8 x i32>
  %i.gf = sub nsw <8 x i32> %i.ga, %broadcast.splat288
  %i.gg = sitofp nsz <8 x i32> %i.gf to <8 x float>
  %i.gh = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gg, <8 x float> %broadcast.splat290, <8 x float> %broadcast.splat292)
  %i.gi = fptosi <8 x float> %i.gh to <8 x i32>   ; 3 uses
  %i.gj = icmp ult <8 x i32> %i.gi, splat (i32 65536)
  %i.gk = icmp sgt <8 x i32> %i.gi, splat (i32 -1)
  %i.gl = sext <8 x i1> %i.gk to <8 x i16>
  %i.gm = trunc nuw <8 x i32> %i.gi to <8 x i16>
  %i.gn = select <8 x i1> %i.gj, <8 x i16> %i.gm, <8 x i16> %i.gl
  %i.go = getelementptr inbounds [2 x i8], ptr %.0129165.us.us, i64 %index306
  store <8 x i16> %i.gn, ptr %i.go, align 2, !tbaa !49, !alias.scope !337, !noalias !338
  %i.gp = sub nsw <8 x i32> %i.gc, %broadcast.splat294
  %i.gq = sitofp nsz <8 x i32> %i.gp to <8 x float>
  %i.gr = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.gq, <8 x float> %broadcast.splat296, <8 x float> %broadcast.splat298)
  %i.gs = fptosi <8 x float> %i.gr to <8 x i32>   ; 3 uses
  %i.gt = icmp ult <8 x i32> %i.gs, splat (i32 65536)
  %i.gu = icmp sgt <8 x i32> %i.gs, splat (i32 -1)
  %i.gv = sext <8 x i1> %i.gu to <8 x i16>
  %i.gw = trunc nuw <8 x i32> %i.gs to <8 x i16>
  %i.gx = select <8 x i1> %i.gt, <8 x i16> %i.gw, <8 x i16> %i.gv
  %i.gy = getelementptr inbounds [2 x i8], ptr %.0128166.us.us, i64 %index306
  store <8 x i16> %i.gx, ptr %i.gy, align 2, !tbaa !49, !alias.scope !339, !noalias !340
  %i.gz = sub nsw <8 x i32> %i.ge, %broadcast.splat300
  %i.ha = sitofp nsz <8 x i32> %i.gz to <8 x float>
  %i.hb = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ha, <8 x float> %broadcast.splat302, <8 x float> %broadcast.splat304)
  %i.hc = fptosi <8 x float> %i.hb to <8 x i32>   ; 3 uses
  %i.hd = icmp ult <8 x i32> %i.hc, splat (i32 65536)
  %i.he = icmp sgt <8 x i32> %i.hc, splat (i32 -1)
  %i.hf = sext <8 x i1> %i.he to <8 x i16>
  %i.hg = trunc nuw <8 x i32> %i.hc to <8 x i16>
  %i.hh = select <8 x i1> %i.hd, <8 x i16> %i.hg, <8 x i16> %i.hf
  %i.hi = getelementptr inbounds [2 x i8], ptr %.0127167.us.us, i64 %index306
  store <8 x i16> %i.hh, ptr %i.hi, align 2, !tbaa !49, !alias.scope !341, !noalias !342
  %index.next310 = add nuw i64 %index306, 8       ; 2 uses
  %i.hj = icmp eq i64 %index.next310, %n.vec286
  br i1 %i.hj, label %middle.block311, label %vector.body305, !llvm.loop !326

middle.block311:                                  ; preds = %vector.body305
  br i1 %cmp.n312, label %..preheader_crit_edge.us.us, label %scalar.ph283.preheader

scalar.ph283.preheader:                           ; preds = %.preheader156.us.us, %middle.block311
  %indvars.iv.ph = phi i64 [ %n.vec286, %middle.block311 ], [ 0, %.preheader156.us.us ]
  br label %scalar.ph283

scalar.ph283:                                     ; preds = %scalar.ph283.preheader, %scalar.ph283
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph283 ], [ %indvars.iv.ph, %scalar.ph283.preheader ] ; 7 uses
  %i.hk = getelementptr inbounds [2 x i8], ptr %.0133161.us.us, i64 %indvars.iv
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !49
  %i.hm = getelementptr inbounds [2 x i8], ptr %.0132162.us.us, i64 %indvars.iv
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !49
  %i.ho = getelementptr inbounds [2 x i8], ptr %.0131163.us.us, i64 %indvars.iv
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !49
  %i.hq = zext i16 %i.hp to i32
  %i.hr = getelementptr inbounds [2 x i8], ptr %.0129165.us.us, i64 %indvars.iv
  %i.hs = insertelement <2 x i16> poison, i16 %i.hl, i64 0
  %i.ht = insertelement <2 x i16> %i.hs, i16 %i.hn, i64 1
  %i.hu = zext <2 x i16> %i.ht to <2 x i32>
  %i.hv = sub nsw <2 x i32> %i.hu, %i.bz
  %i.hw = sitofp <2 x i32> %i.hv to <2 x float>
  %i.hx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hw, <2 x float> %i.cd, <2 x float> %i.cp)
  %i.hy = fptosi <2 x float> %i.hx to <2 x i32>   ; 3 uses
  %i.hz = extractelement <2 x i32> %i.hy, i64 0   ; 2 uses
  %isnotneg.i142.us.us = icmp sgt i32 %i.hz, -1
  %i.ia = sext i1 %isnotneg.i142.us.us to i16
  %i.ib = trunc nuw i32 %i.hz to i16
  %i.ic = icmp ult <2 x i32> %i.hy, splat (i32 65536) ; 2 uses
  %i.id = extractelement <2 x i1> %i.ic, i64 0
  %.0.i143.us.us = select i1 %i.id, i16 %i.ib, i16 %i.ia
  store i16 %.0.i143.us.us, ptr %i.hr, align 2, !tbaa !49
  %i.ie = extractelement <2 x i32> %i.hy, i64 1   ; 2 uses
  %isnotneg.i139.us.us = icmp sgt i32 %i.ie, -1
  %i.if = sext i1 %isnotneg.i139.us.us to i16
  %i.ig = trunc nuw i32 %i.ie to i16
  %i.ih = extractelement <2 x i1> %i.ic, i64 1
  %.0.i140.us.us = select i1 %i.ih, i16 %i.ig, i16 %i.if
  %i.ii = getelementptr inbounds [2 x i8], ptr %.0128166.us.us, i64 %indvars.iv
  store i16 %.0.i140.us.us, ptr %i.ii, align 2, !tbaa !49
  %i.ij = sub nsw i32 %i.hq, %i.cb
  %i.ik = sitofp nsz i32 %i.ij to float
  %i.il = tail call nsz float @llvm.fmuladd.f32(float %i.ik, float %i.cf, float %i.cq)
  %i.im = fptosi float %i.il to i32               ; 3 uses
  %.not.i135.us.us = icmp ult i32 %i.im, 65536
  %isnotneg.i136.us.us = icmp sgt i32 %i.im, -1
  %i.in = sext i1 %isnotneg.i136.us.us to i16
  %i.io = trunc nuw i32 %i.im to i16
  %.0.i137.us.us = select i1 %.not.i135.us.us, i16 %i.io, i16 %i.in
  %i.ip = getelementptr inbounds [2 x i8], ptr %.0127167.us.us, i64 %indvars.iv
  store i16 %.0.i137.us.us, ptr %i.ip, align 2, !tbaa !49
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.cy ; 2 uses
  %i.iq = icmp slt i64 %indvars.iv.next, %i.cz
  br i1 %i.iq, label %scalar.ph283, label %..preheader_crit_edge.us.us, !llvm.loop !327

.lr.ph159.split.us.us:                            ; preds = %.lr.ph159.split.us.us.preheader320, %.lr.ph159.split.us.us
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %.lr.ph159.split.us.us ], [ %indvars.iv190.ph, %.lr.ph159.split.us.us.preheader320 ] ; 3 uses
  %i.ir = getelementptr inbounds [2 x i8], ptr %.0130164.us.us, i64 %indvars.iv190
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !49
  %i.it = zext i16 %i.is to i32
  %i.iu = sub nsw i32 %i.it, %i.by
  %i.iv = sitofp nsz i32 %i.iu to float
  %i.iw = tail call nsz float @llvm.fmuladd.f32(float %i.iv, float %i.ch, float %i.cr)
  %i.ix = fptosi float %i.iw to i32               ; 3 uses
  %.not.i.us.us = icmp ult i32 %i.ix, 65536
  %isnotneg.i.us.us = icmp sgt i32 %i.ix, -1
  %i.iy = sext i1 %isnotneg.i.us.us to i16
  %i.iz = trunc nuw i32 %i.ix to i16
  %.0.i.us.us = select i1 %.not.i.us.us, i16 %i.iz, i16 %i.iy
  %i.ja = getelementptr inbounds [2 x i8], ptr %.0126168.us.us, i64 %indvars.iv190
  store i16 %.0.i.us.us, ptr %i.ja, align 2, !tbaa !49
  %indvars.iv.next191 = add nsw i64 %indvars.iv190, %i.cy ; 2 uses
  %i.jb = icmp slt i64 %indvars.iv.next191, %i.cz
  br i1 %i.jb, label %.lr.ph159.split.us.us, label %.critedge.us.us, !llvm.loop !328

.critedge.us.us:                                  ; preds = %.lr.ph159.split.us.us, %middle.block, %..preheader_crit_edge.us.us
  %i.jc = getelementptr inbounds [2 x i8], ptr %.0133161.us.us, i64 %i.cs
  %i.jd = getelementptr inbounds [2 x i8], ptr %.0132162.us.us, i64 %i.cs
  %i.je = getelementptr inbounds [2 x i8], ptr %.0131163.us.us, i64 %i.cs
  %i.jf = getelementptr inbounds [2 x i8], ptr %.0130164.us.us, i64 %i.cs
  %i.jg = getelementptr inbounds [2 x i8], ptr %.0129165.us.us, i64 %i.cu
  %i.jh = getelementptr inbounds [2 x i8], ptr %.0128166.us.us, i64 %i.cu
  %i.ji = getelementptr inbounds [2 x i8], ptr %.0127167.us.us, i64 %i.cu
  %i.jj = getelementptr inbounds [2 x i8], ptr %.0126168.us.us, i64 %i.cu
  %i.jk = add nsw i32 %.0125169.us.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.jk, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader156.us.us, !llvm.loop !329

..preheader_crit_edge.us.us:                      ; preds = %scalar.ph283, %middle.block311
  br i1 %i.cx, label %.lr.ph159.split.us.us.preheader, label %.critedge.us.us

.lr.ph159.split.us.us.preheader:                  ; preds = %..preheader_crit_edge.us.us
  %or.cond314.not = xor i1 %or.cond314, true
  %brmerge321 = select i1 %or.cond314.not, i1 true, i1 %i.fy
  br i1 %brmerge321, label %.lr.ph159.split.us.us.preheader320, label %vector.body

vector.body:                                      ; preds = %.lr.ph159.split.us.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph159.split.us.us.preheader ] ; 3 uses
  %i.jl = getelementptr inbounds [2 x i8], ptr %.0130164.us.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.jl, align 2, !tbaa !49, !alias.scope !343
  %i.jm = zext <8 x i16> %wide.load to <8 x i32>
  %i.jn = sub nsw <8 x i32> %i.jm, %broadcast.splat
  %i.jo = sitofp nsz <8 x i32> %i.jn to <8 x float>
  %i.jp = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jo, <8 x float> %broadcast.splat200, <8 x float> %broadcast.splat202)
  %i.jq = fptosi <8 x float> %i.jp to <8 x i32>   ; 3 uses
  %i.jr = icmp ult <8 x i32> %i.jq, splat (i32 65536)
  %i.js = icmp sgt <8 x i32> %i.jq, splat (i32 -1)
  %i.jt = sext <8 x i1> %i.js to <8 x i16>
  %i.ju = trunc nuw <8 x i32> %i.jq to <8 x i16>
  %i.jv = select <8 x i1> %i.jr, <8 x i16> %i.ju, <8 x i16> %i.jt
  %i.jw = getelementptr inbounds [2 x i8], ptr %.0126168.us.us, i64 %index
  store <8 x i16> %i.jv, ptr %i.jw, align 2, !tbaa !49, !alias.scope !344, !noalias !343
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jx = icmp eq i64 %index.next, %n.vec
  br i1 %i.jx, label %middle.block, label %vector.body, !llvm.loop !333

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us.us, label %.lr.ph159.split.us.us.preheader320

.lr.ph159.split.us.us.preheader320:               ; preds = %.lr.ph159.split.us.us.preheader, %middle.block
  %indvars.iv190.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph159.split.us.us.preheader ]
  br label %.lr.ph159.split.us.us

._crit_edge:                                      ; preds = %.critedge.us.us, %.preheader156.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_preserve_slice_16_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 3 uses
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
  %i.u = load i32, ptr %i.t, align 4, !tbaa !36
  %i.v = ashr i32 %i.u, 1                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !35
  %i.y = ashr i32 %i.x, 1                         ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !38
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 9 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.af = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !52
  %i.ba = icmp eq i32 %i.az, 32                   ; 2 uses
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
  %i.ci = fptosi float %.in182 to i32             ; 2 uses
  %i.cj = fptosi float %.in180 to i32
  %i.ck = fptosi <2 x float> %i.cg to <2 x i32>
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !47
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !47
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !47 ; 2 uses
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
  %i.cz = sitofp nsz i32 %i.cs to float           ; 2 uses
  %i.da = sext i32 %i.v to i64                    ; 5 uses
  %i.db = sext i32 %i.y to i64                    ; 5 uses
  br i1 %i.cv, label %.preheader184.lr.ph.split.us, label %._crit_edge

.preheader184.lr.ph.split.us:                     ; preds = %.preheader184.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !50
  %i.df = sext i32 %i.f to i64                    ; 2 uses
  %i.dg = zext nneg i32 %i.d to i64               ; 5 uses
  %i.dh = load i32, ptr %i.dc, align 4, !tbaa !41
  %i.di = icmp eq i32 %i.dh, 4
  %i.dj = xor i64 %i.m, -1
  %i.dk = add i64 %i.r, %i.dj
  %i.dl = and i64 %i.dk, 4294967295               ; 2 uses
  %i.dm = mul nsw i64 %i.dl, %i.db
  %i.dn = shl i64 %i.dm, 1
  %i.do = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dp = mul nsw i64 %i.dl, %i.da
  %i.dq = shl i64 %i.dp, 1
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.dr = shl nuw nsw i64 %i.dg, 1
  %i.ds = add nsw i64 %i.dr, -2                   ; 2 uses
  %i.dt = getelementptr i8, ptr %i.aw, i64 %i.dn
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.ds
  %i.dv = getelementptr i8, ptr %i.du, i64 %i.do
  %scevgep = getelementptr i8, ptr %i.dv, i64 2
  %i.dw = getelementptr i8, ptr %i.ak, i64 %i.dq
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.ds
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.do
  %scevgep225 = getelementptr i8, ptr %i.dy, i64 2
  %bound0 = icmp ult ptr %i.ax, %scevgep225
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dz = or i32 %i.v, %i.y
  %i.ea = icmp slt i32 %i.dz, 0
  %i.eb = or i1 %found.conflict, %i.ea
  %n.vec = and i64 %i.dg, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <8 x float> poison, float %i.cq, i64 0
  %broadcast.splat228 = shufflevector <8 x float> %broadcast.splatinsert227, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert229 = insertelement <8 x float> poison, float %i.cz, i64 0
  %broadcast.splat230 = shufflevector <8 x float> %broadcast.splatinsert229, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.dg
  br label %.preheader184.us

.preheader184.us:                                 ; preds = %.critedge.us, %.preheader184.lr.ph.split.us
  %.0147197.us = phi i32 [ %i.n, %.preheader184.lr.ph.split.us ], [ %i.jq, %.critedge.us ]
  %.0148196.us = phi ptr [ %i.ax, %.preheader184.lr.ph.split.us ], [ %i.jp, %.critedge.us ] ; 3 uses
  %.0149195.us = phi ptr [ %i.au, %.preheader184.lr.ph.split.us ], [ %i.jo, %.critedge.us ] ; 2 uses
  %.0150194.us = phi ptr [ %i.ar, %.preheader184.lr.ph.split.us ], [ %i.jn, %.critedge.us ] ; 2 uses
  %.0151193.us = phi ptr [ %i.ao, %.preheader184.lr.ph.split.us ], [ %i.jm, %.critedge.us ] ; 2 uses
  %.0152192.us = phi ptr [ %i.al, %.preheader184.lr.ph.split.us ], [ %i.jl, %.critedge.us ] ; 3 uses
  %.0153191.us = phi ptr [ %i.ai, %.preheader184.lr.ph.split.us ], [ %i.jk, %.critedge.us ] ; 2 uses
  %.0154190.us = phi ptr [ %i.af, %.preheader184.lr.ph.split.us ], [ %i.jj, %.critedge.us ] ; 2 uses
  %.0155189.us = phi ptr [ %i.ac, %.preheader184.lr.ph.split.us ], [ %i.ji, %.critedge.us ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader184.us, %preserve_color.exit.thread.us
  %indvars.iv = phi i64 [ 0, %.preheader184.us ], [ %indvars.iv.next, %preserve_color.exit.thread.us ] ; 7 uses
  %i.ec = getelementptr inbounds [2 x i8], ptr %.0155189.us, i64 %indvars.iv
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !49 ; 2 uses
  %i.ee = zext i16 %i.ed to i32
  %i.ef = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %indvars.iv
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !49 ; 2 uses
  %i.eh = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %indvars.iv
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !49 ; 2 uses
  %i.ej = insertelement <2 x i16> poison, i16 %i.eg, i64 0
  %i.ek = insertelement <2 x i16> %i.ej, i16 %i.ei, i64 1
  %i.el = zext <2 x i16> %i.ek to <2 x i32>
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.em = load i32, ptr %i.cw, align 4, !tbaa !53
  %i.en = sitofp nsz i32 %i.em to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.eo = phi nsz float [ %i.en, %bb.f ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.ep = sub nsw i32 %i.ee, %i.cj
  %i.eq = sitofp nsz i32 %i.ep to float
  %i.er = tail call nsz float @llvm.fmuladd.f32(float %i.eq, float %i.cm, float %i.cx)
  %i.es = fptosi float %i.er to i32               ; 3 uses
  %i.et = sub nsw <2 x i32> %i.el, %i.ck
  %i.eu = sitofp <2 x i32> %i.et to <2 x float>
  %i.ev = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.co, <2 x float> %i.cy)
  %i.ew = fptosi <2 x float> %i.ev to <2 x i32>   ; 3 uses
  %i.ex = uitofp i16 %i.ed to float               ; 6 uses
  %i.ey = uitofp i16 %i.eg to float               ; 6 uses
  %i.ez = uitofp i16 %i.ei to float               ; 6 uses
  %i.fa = sitofp nsz i32 %i.es to float           ; 7 uses
  %i.fb = sitofp <2 x i32> %i.ew to <2 x float>   ; 13 uses
  switch i32 %i.de, label %preserve_color.exit.thread.us [
    i32 1, label %bb.m
    i32 2, label %bb.l
    i32 3, label %bb.k
    i32 4, label %bb.j
    i32 5, label %bb.i
    i32 6, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.fc = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.fa, i64 1
  %i.fe = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fg = fdiv nsz <2 x float> %i.fd, %i.ff       ; 3 uses
  %i.fh = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fi = insertelement <2 x float> %i.fh, float %i.ey, i64 0
  %i.fj = fdiv nsz <2 x float> %i.fi, %i.ff       ; 3 uses
  %i.fk = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.fl = fdiv nsz <2 x float> %i.fk, %i.ff       ; 3 uses
  %i.fm = fmul nsz <2 x float> %i.fg, %i.fg
  %i.fn = fmul nsz <2 x float> %i.fj, %i.fj
  %i.fo = fmul nsz <2 x float> %i.fj, %i.fn
  %i.fp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fg, <2 x float> %i.fo)
  %i.fq = fmul nsz <2 x float> %i.fl, %i.fl
  %i.fr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fl, <2 x float> %i.fp) ; 2 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 0
  %i.ft = tail call nsz float @cbrtf(float noundef %i.fs) #9
  %i.fu = extractelement <2 x float> %i.fr, i64 1
  %i.fv = tail call nsz float @cbrtf(float noundef %i.fu) #9
  %i.fw = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.fv, i64 1
  br label %preserve_color.exit.us

bb.i:                                             ; preds = %bb.g
  %i.fy = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.fa, i64 1
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
end_hunk_7
begin_hunk_8_@colorlevels_preserve_slice_16_planar:bb.a
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
  br i1 %i.iw, label %bb.e, label %.lr.ph187.us, !llvm.loop !345

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
  br i1 %i.jh, label %.lr.ph187.split.us, label %.critedge.us, !llvm.loop !346

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
  br i1 %exitcond.not, label %._crit_edge, label %.preheader184.us, !llvm.loop !347

.lr.ph187.us:                                     ; preds = %preserve_color.exit.thread.us
  br i1 %i.di, label %.lr.ph187.split.us.preheader, label %.critedge.us

.lr.ph187.split.us.preheader:                     ; preds = %.lr.ph187.us
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.eb
  br i1 %brmerge, label %.lr.ph187.split.us.preheader231, label %vector.body

vector.body:                                      ; preds = %.lr.ph187.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph187.split.us.preheader ] ; 3 uses
  %i.jr = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.jr, align 2, !tbaa !49, !alias.scope !352
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
  store <8 x i16> %i.kb, ptr %i.kc, align 2, !tbaa !49, !alias.scope !353, !noalias !352
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kd = icmp eq i64 %index.next, %n.vec
  br i1 %i.kd, label %middle.block, label %vector.body, !llvm.loop !351

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us, label %.lr.ph187.split.us.preheader231

.lr.ph187.split.us.preheader231:                  ; preds = %.lr.ph187.split.us.preheader, %middle.block
  %indvars.iv218.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph187.split.us.preheader ]
  br label %.lr.ph187.split.us

._crit_edge:                                      ; preds = %.critedge.us, %.preheader184.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_slice_32_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 3 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 3 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load <2 x i32>, ptr %i.t, align 8, !tbaa !34
  %i.v = ashr <2 x i32> %i.u, splat (i32 2)       ; 4 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.x = extractelement <2 x i32> %i.v, i64 1     ; 4 uses
  %i.y = mul i32 %i.x, %i.n
  %i.z = sext i32 %i.y to i64                     ; 10 uses
  %i.aa = getelementptr [4 x i8], ptr %i.w, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38 ; 2 uses
  %i.ad = getelementptr [4 x i8], ptr %i.ac, i64 %i.z ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38 ; 2 uses
  %i.ag = getelementptr [4 x i8], ptr %i.af, i64 %i.z ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38 ; 2 uses
  %i.aj = getelementptr [4 x i8], ptr %i.ai, i64 %i.z ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38 ; 2 uses
  %i.am = getelementptr [4 x i8], ptr %i.al, i64 %i.z ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !38 ; 2 uses
  %i.ap = getelementptr [4 x i8], ptr %i.ao, i64 %i.z ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38 ; 2 uses
  %i.as = getelementptr [4 x i8], ptr %i.ar, i64 %i.z ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %i.z ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !52
  %i.ay = icmp eq i32 %i.ax, 32
  br i1 %i.ay, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ba = load float, ptr %i.az, align 4, !tbaa !47
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bd = load <2 x float>, ptr %i.bc, align 8, !tbaa !47
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bf = load <2 x float>, ptr %i.bb, align 8, !tbaa !47
  %i.bg = load <2 x float>, ptr %i.be, align 8, !tbaa !47
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bi = load float, ptr %i.bh, align 8, !tbaa !47
  %i.bj = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 0, i32 poison>
  %i.bk = insertelement <4 x float> %i.bj, float %i.ba, i64 0
  %i.bl = insertelement <4 x float> %i.bk, float %i.bi, i64 3
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !34
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bq = load <2 x i32>, ptr %i.bp, align 8, !tbaa !34
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bs = load <2 x i32>, ptr %i.bo, align 8, !tbaa !34
  %i.bt = sitofp <2 x i32> %i.bs to <2 x float>
  %i.bu = load <2 x i32>, ptr %i.br, align 8, !tbaa !34
  %i.bv = sitofp <2 x i32> %i.bu to <2 x float>
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !34
  %i.by = shufflevector <2 x i32> %i.bq, <2 x i32> poison, <4 x i32> <i32 poison, i32 1, i32 0, i32 poison>
  %i.bz = insertelement <4 x i32> %i.by, i32 %i.bn, i64 0
  %i.ca = insertelement <4 x i32> %i.bz, i32 %i.bx, i64 3
  %i.cb = sitofp <4 x i32> %i.ca to <4 x float>
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cc = phi <2 x float> [ %i.bf, %bb.b ], [ %i.bt, %bb.c ] ; 3 uses
  %i.cd = phi <2 x float> [ %i.bg, %bb.b ], [ %i.bv, %bb.c ] ; 3 uses
  %i.ce = phi <4 x float> [ %i.bl, %bb.b ], [ %i.cb, %bb.c ] ; 8 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !47 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ci = load <2 x float>, ptr %i.ch, align 4, !tbaa !47 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !47 ; 2 uses
  %i.cl = icmp slt i32 %i.n, %i.s
  br i1 %i.cl, label %.preheader141.lr.ph, label %._crit_edge

.preheader141.lr.ph:                              ; preds = %bb.d
  %i.cm = icmp sgt i32 %i.d, 0
  %i.cn = sext i32 %i.x to i64                    ; 6 uses
  %i.co = extractelement <2 x i32> %i.v, i64 0    ; 4 uses
  %i.cp = sext i32 %i.co to i64                   ; 6 uses
  br i1 %i.cm, label %.preheader141.lr.ph.split.us.split.us, label %._crit_edge

.preheader141.lr.ph.split.us.split.us:            ; preds = %.preheader141.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !41
  %i.cs = icmp eq i32 %i.cr, 4
  %i.ct = sext i32 %i.f to i64                    ; 2 uses
  %i.cu = zext nneg i32 %i.d to i64               ; 8 uses
  %i.cv = xor i64 %i.m, -1
  %i.cw = add i64 %i.r, %i.cv
  %i.cx = and i64 %i.cw, 4294967295               ; 2 uses
  %i.cy = mul nsw i64 %i.cx, %i.cp
  %i.cz = shl i64 %i.cy, 2
  %i.da = shl nsw i64 %i.z, 2                     ; 2 uses
  %i.db = mul nsw i64 %i.cx, %i.cn
  %i.dc = shl i64 %i.db, 2
  %i.dd = xor i64 %i.m, -1
  %i.de = add i64 %i.r, %i.dd
  %i.df = and i64 %i.de, 4294967295               ; 2 uses
  %i.dg = mul nsw i64 %i.df, %i.cp
  %i.dh = shl i64 %i.dg, 2
  %i.di = shl nsw i64 %i.z, 2                     ; 2 uses
  %i.dj = mul nsw i64 %i.df, %i.cn
  %i.dk = shl i64 %i.dj, 2
  %i.dl = insertelement <4 x ptr> poison, ptr %i.ap, i64 0
  %i.dm = shufflevector <4 x ptr> %i.dl, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dn = insertelement <4 x ptr> poison, ptr %i.as, i64 0 ; 2 uses
  %i.do = insertelement <4 x ptr> %i.dn, ptr %i.aa, i64 1
  %i.dp = insertelement <4 x ptr> %i.do, ptr %i.ad, i64 2
  %i.dq = insertelement <4 x ptr> %i.dp, ptr %i.ag, i64 3
  %i.dr = insertelement <2 x ptr> poison, ptr %i.aa, i64 0
  %i.ds = insertelement <2 x ptr> %i.dr, ptr %i.ad, i64 1
  %i.dt = shufflevector <4 x ptr> %i.dn, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.du = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.dv = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> zeroinitializer
  %min.iters.check267 = icmp ugt i32 %i.d, 19
  %ident.check187.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check267, i1 %ident.check187.not, i1 false
  %i.dw = shl nuw nsw i64 %i.cu, 2
  %i.dx = add nsw i64 %i.dw, -4                   ; 2 uses
  %i.dy = add i64 %i.dh, %i.dx
  %i.dz = add i64 %i.dy, %i.di
  %i.ea = add i64 %i.dz, 4                        ; 3 uses
  %scevgep190.a = getelementptr i8, ptr %i.al, i64 %i.ea ; 5 uses
  %scevgep191.a = getelementptr i8, ptr %i.ao, i64 %i.ea ; 2 uses
  %scevgep192.a = getelementptr i8, ptr %i.ar, i64 %i.ea ; 3 uses
  %i.eb = add i64 %i.dk, %i.dx
  %i.ec = add i64 %i.eb, %i.di
  %i.ed = add i64 %i.ec, 4                        ; 3 uses
  %scevgep193.a = getelementptr i8, ptr %i.w, i64 %i.ed ; 3 uses
  %scevgep194.a = getelementptr i8, ptr %i.ac, i64 %i.ed ; 3 uses
  %scevgep195 = getelementptr i8, ptr %i.af, i64 %i.ed ; 3 uses
  %bound0196 = icmp ult ptr %i.am, %scevgep191.a
  %bound1197 = icmp ult ptr %i.ap, %scevgep190.a
  %found.conflict198 = and i1 %bound0196, %bound1197
  %bound0201 = icmp ult ptr %i.am, %scevgep192.a
  %bound1202 = icmp ult ptr %i.as, %scevgep190.a
  %found.conflict203 = and i1 %bound0201, %bound1202
  %bound0206 = icmp ult ptr %i.am, %scevgep193.a
  %bound1207 = icmp ult ptr %i.aa, %scevgep190.a
  %found.conflict208 = and i1 %bound0206, %bound1207
  %i.ee = or <8 x i32> %i.du, %i.dv
  %bound0212 = icmp ult ptr %i.am, %scevgep194.a
  %bound1213 = icmp ult ptr %i.ad, %scevgep190.a
  %found.conflict214 = and i1 %bound0212, %bound1213
  %bound0218 = icmp ult ptr %i.am, %scevgep195
  %bound1219 = icmp ult ptr %i.ag, %scevgep190.a
  %found.conflict220 = and i1 %bound0218, %bound1219
  %i.ef = icmp slt <8 x i32> %i.ee, zeroinitializer
  %bound0260 = icmp ult ptr %i.as, %scevgep195
  %bound1261 = icmp ult ptr %i.ag, %scevgep192.a
  %stride.check204 = icmp slt i32 %i.co, 0
  %i.eg = insertelement <4 x ptr> poison, ptr %scevgep192.a, i64 0 ; 2 uses
  %i.eh = insertelement <4 x ptr> %i.eg, ptr %scevgep193.a, i64 1
  %i.ei = insertelement <4 x ptr> %i.eh, ptr %scevgep194.a, i64 2
  %i.ej = insertelement <4 x ptr> %i.ei, ptr %scevgep195, i64 3
  %i.ek = icmp ult <4 x ptr> %i.dm, %i.ej
  %i.el = insertelement <4 x ptr> poison, ptr %scevgep191.a, i64 0
  %i.em = shufflevector <4 x ptr> %i.el, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.en = icmp ult <4 x ptr> %i.dq, %i.em
  %i.eo = insertelement <2 x ptr> poison, ptr %scevgep193.a, i64 0
  %i.ep = insertelement <2 x ptr> %i.eo, ptr %scevgep194.a, i64 1
  %i.eq = icmp ult <2 x ptr> %i.dt, %i.ep
  %i.er = shufflevector <4 x ptr> %i.eg, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.es = icmp ult <2 x ptr> %i.ds, %i.er
  %i.et = insertelement <8 x i1> poison, i1 %bound0260, i64 6
  %i.eu = insertelement <8 x i1> %i.et, i1 %stride.check204, i64 7
  %i.ev = shufflevector <4 x i1> %i.ek, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ew = shufflevector <8 x i1> %i.ev, <8 x i1> %i.eu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.ex = shufflevector <2 x i1> %i.eq, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ey = shufflevector <8 x i1> %i.ew, <8 x i1> %i.ex, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.ez = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1261, i64 6
  %i.fa = shufflevector <4 x i1> %i.en, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fb = shufflevector <8 x i1> %i.fa, <8 x i1> %i.ez, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.fc = shufflevector <2 x i1> %i.es, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fd = shufflevector <8 x i1> %i.fb, <8 x i1> %i.fc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.fe = and <8 x i1> %i.ey, %i.fd
  %i.ff = or i32 %i.x, %i.co
  %i.fg = icmp slt i32 %i.ff, 0
  %rdx.op = or <8 x i1> %i.fe, %i.ef
  %i.fh = bitcast <8 x i1> %rdx.op to i8
  %i.fi = icmp ne i8 %i.fh, 0
  %op.rdx = or i1 %i.fi, %found.conflict203
  %op.rdx298.a = or i1 %found.conflict198, %found.conflict208
  %op.rdx299.a = or i1 %found.conflict214, %found.conflict220
  %op.rdx300.a = or i1 %op.rdx, %op.rdx298.a
  %op.rdx301.a = or i1 %op.rdx299.a, %i.fg
  %op.rdx302 = or i1 %op.rdx300.a, %op.rdx301.a
  %n.vec269 = and i64 %i.cu, 2147483644           ; 3 uses
  %broadcast.splat271 = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert272 = insertelement <4 x float> poison, float %i.cg, i64 0
  %broadcast.splat273 = shufflevector <4 x float> %broadcast.splatinsert272, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat275 = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat277 = shufflevector <2 x float> %i.cc, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat279 = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat281 = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat283 = shufflevector <2 x float> %i.cc, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat285 = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat287 = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %cmp.n295 = icmp eq i64 %n.vec269, %i.cu
  %i.fj = extractelement <4 x float> %i.ce, i64 0
  %i.fk = extractelement <4 x float> %i.ce, i64 1
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond297 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.fl = shl nuw nsw i64 %i.cu, 2
  %i.fm = add nsw i64 %i.fl, -4                   ; 2 uses
  %i.fn = getelementptr i8, ptr %i.au, i64 %i.cz
  %i.fo = getelementptr i8, ptr %i.fn, i64 %i.fm
  %i.fp = getelementptr i8, ptr %i.fo, i64 %i.da
  %scevgep = getelementptr i8, ptr %i.fp, i64 4
  %i.fq = getelementptr i8, ptr %i.ai, i64 %i.dc
  %i.fr = getelementptr i8, ptr %i.fq, i64 %i.fm
  %i.fs = getelementptr i8, ptr %i.fr, i64 %i.da
  %scevgep179 = getelementptr i8, ptr %i.fs, i64 4
  %bound0 = icmp ult ptr %i.av, %scevgep179
  %bound1 = icmp ult ptr %i.aj, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.ft = or i32 %i.x, %i.co
  %i.fu = icmp slt i32 %i.ft, 0
  %i.fv = or i1 %found.conflict, %i.fu
  %n.vec = and i64 %i.cu, 2147483640              ; 3 uses
  %broadcast.splat = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %broadcast.splatinsert181 = insertelement <4 x float> poison, float %i.ck, i64 0
  %broadcast.splat182 = shufflevector <4 x float> %broadcast.splatinsert181, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat184 = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cu
  %i.fw = extractelement <4 x float> %i.ce, i64 2
  %i.fx = extractelement <4 x float> %i.ce, i64 3
  br label %.preheader141.us.us

.preheader141.us.us:                              ; preds = %.critedge.us.us, %.preheader141.lr.ph.split.us.split.us
  %.0125154.us.us = phi i32 [ %i.n, %.preheader141.lr.ph.split.us.split.us ], [ %i.hr, %.critedge.us.us ]
  %.0126153.us.us = phi ptr [ %i.av, %.preheader141.lr.ph.split.us.split.us ], [ %i.hq, %.critedge.us.us ] ; 3 uses
  %.0127152.us.us = phi ptr [ %i.as, %.preheader141.lr.ph.split.us.split.us ], [ %i.hp, %.critedge.us.us ] ; 3 uses
  %.0128151.us.us = phi ptr [ %i.ap, %.preheader141.lr.ph.split.us.split.us ], [ %i.ho, %.critedge.us.us ] ; 3 uses
  %.0129150.us.us = phi ptr [ %i.am, %.preheader141.lr.ph.split.us.split.us ], [ %i.hn, %.critedge.us.us ] ; 3 uses
  %.0130149.us.us = phi ptr [ %i.aj, %.preheader141.lr.ph.split.us.split.us ], [ %i.hm, %.critedge.us.us ] ; 3 uses
  %.0131148.us.us = phi ptr [ %i.ag, %.preheader141.lr.ph.split.us.split.us ], [ %i.hl, %.critedge.us.us ] ; 3 uses
  %.0132147.us.us = phi ptr [ %i.ad, %.preheader141.lr.ph.split.us.split.us ], [ %i.hk, %.critedge.us.us ] ; 3 uses
  %.0133146.us.us = phi ptr [ %i.aa, %.preheader141.lr.ph.split.us.split.us ], [ %i.hj, %.critedge.us.us ] ; 3 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx302
  br i1 %brmerge, label %scalar.ph266.preheader, label %vector.body288

vector.body288:                                   ; preds = %.preheader141.us.us, %vector.body288
  %index289 = phi i64 [ %index.next293, %vector.body288 ], [ 0, %.preheader141.us.us ] ; 7 uses
  %i.fy = getelementptr inbounds [4 x i8], ptr %.0133146.us.us, i64 %index289
  %wide.load290.a = load <4 x float>, ptr %i.fy, align 4, !tbaa !47, !alias.scope !369
  %i.fz = getelementptr inbounds [4 x i8], ptr %.0132147.us.us, i64 %index289
  %wide.load291.a = load <4 x float>, ptr %i.fz, align 4, !tbaa !47, !alias.scope !370
  %i.ga = getelementptr inbounds [4 x i8], ptr %.0131148.us.us, i64 %index289
  %wide.load292 = load <4 x float>, ptr %i.ga, align 4, !tbaa !47, !alias.scope !371
  %i.gb = fsub nsz <4 x float> %wide.load290.a, %broadcast.splat271
  %i.gc = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gb, <4 x float> %broadcast.splat273, <4 x float> %broadcast.splat275)
  %i.gd = getelementptr inbounds [4 x i8], ptr %.0129150.us.us, i64 %index289
  store <4 x float> %i.gc, ptr %i.gd, align 4, !tbaa !47, !alias.scope !372, !noalias !373
  %i.ge = fsub nsz <4 x float> %wide.load291.a, %broadcast.splat277
  %i.gf = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ge, <4 x float> %broadcast.splat279, <4 x float> %broadcast.splat281)
  %i.gg = getelementptr inbounds [4 x i8], ptr %.0128151.us.us, i64 %index289
  store <4 x float> %i.gf, ptr %i.gg, align 4, !tbaa !47, !alias.scope !374, !noalias !375
  %i.gh = fsub nsz <4 x float> %wide.load292, %broadcast.splat283
  %i.gi = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gh, <4 x float> %broadcast.splat285, <4 x float> %broadcast.splat287)
  %i.gj = getelementptr inbounds [4 x i8], ptr %.0127152.us.us, i64 %index289
  store <4 x float> %i.gi, ptr %i.gj, align 4, !tbaa !47, !alias.scope !376, !noalias !377
  %index.next293 = add nuw i64 %index289, 4       ; 2 uses
  %i.gk = icmp eq i64 %index.next293, %n.vec269
  br i1 %i.gk, label %middle.block294, label %vector.body288, !llvm.loop !361

middle.block294:                                  ; preds = %vector.body288
  br i1 %cmp.n295, label %..preheader_crit_edge.us.us, label %scalar.ph266.preheader

scalar.ph266.preheader:                           ; preds = %.preheader141.us.us, %middle.block294
  %indvars.iv.ph = phi i64 [ %n.vec269, %middle.block294 ], [ 0, %.preheader141.us.us ]
  br label %scalar.ph266

scalar.ph266:                                     ; preds = %scalar.ph266.preheader, %scalar.ph266
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph266 ], [ %indvars.iv.ph, %scalar.ph266.preheader ] ; 7 uses
  %i.gl = getelementptr inbounds [4 x i8], ptr %.0133146.us.us, i64 %indvars.iv
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !47
  %i.gn = getelementptr inbounds [4 x i8], ptr %.0132147.us.us, i64 %indvars.iv
  %i.go = load float, ptr %i.gn, align 4, !tbaa !47
  %i.gp = getelementptr inbounds [4 x i8], ptr %.0131148.us.us, i64 %indvars.iv
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !47
  %i.gr = fsub nsz float %i.gm, %i.fj
  %i.gs = tail call nsz float @llvm.fmuladd.f32(float %i.gr, float %i.cg, float %i.fk)
  %i.gt = getelementptr inbounds [4 x i8], ptr %.0129150.us.us, i64 %indvars.iv
  store float %i.gs, ptr %i.gt, align 4, !tbaa !47
  %i.gu = getelementptr inbounds [4 x i8], ptr %.0128151.us.us, i64 %indvars.iv
  %i.gv = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gw = insertelement <2 x float> %i.gv, float %i.gq, i64 1
  %i.gx = fsub nsz <2 x float> %i.gw, %i.cc
  %i.gy = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gx, <2 x float> %i.ci, <2 x float> %i.cd) ; 2 uses
  %i.gz = extractelement <2 x float> %i.gy, i64 0
  store float %i.gz, ptr %i.gu, align 4, !tbaa !47
  %i.ha = getelementptr inbounds [4 x i8], ptr %.0127152.us.us, i64 %indvars.iv
  %i.hb = extractelement <2 x float> %i.gy, i64 1
  store float %i.hb, ptr %i.ha, align 4, !tbaa !47
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.ct ; 2 uses
  %i.hc = icmp slt i64 %indvars.iv.next, %i.cu
  br i1 %i.hc, label %scalar.ph266, label %..preheader_crit_edge.us.us, !llvm.loop !362

.lr.ph144.split.us.us:                            ; preds = %.lr.ph144.split.us.us.preheader303, %.lr.ph144.split.us.us
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %.lr.ph144.split.us.us ], [ %indvars.iv172.ph, %.lr.ph144.split.us.us.preheader303 ] ; 3 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %.0130149.us.us, i64 %indvars.iv172
  %i.he = load float, ptr %i.hd, align 4, !tbaa !47
  %i.hf = fsub nsz float %i.he, %i.fw
  %i.hg = tail call nsz float @llvm.fmuladd.f32(float %i.hf, float %i.ck, float %i.fx)
  %i.hh = getelementptr inbounds [4 x i8], ptr %.0126153.us.us, i64 %indvars.iv172
  store float %i.hg, ptr %i.hh, align 4, !tbaa !47
  %indvars.iv.next173 = add nsw i64 %indvars.iv172, %i.ct ; 2 uses
  %i.hi = icmp slt i64 %indvars.iv.next173, %i.cu
  br i1 %i.hi, label %.lr.ph144.split.us.us, label %.critedge.us.us, !llvm.loop !363

.critedge.us.us:                                  ; preds = %.lr.ph144.split.us.us, %middle.block, %..preheader_crit_edge.us.us
  %i.hj = getelementptr inbounds [4 x i8], ptr %.0133146.us.us, i64 %i.cn
  %i.hk = getelementptr inbounds [4 x i8], ptr %.0132147.us.us, i64 %i.cn
  %i.hl = getelementptr inbounds [4 x i8], ptr %.0131148.us.us, i64 %i.cn
  %i.hm = getelementptr inbounds [4 x i8], ptr %.0130149.us.us, i64 %i.cn
  %i.hn = getelementptr inbounds [4 x i8], ptr %.0129150.us.us, i64 %i.cp
  %i.ho = getelementptr inbounds [4 x i8], ptr %.0128151.us.us, i64 %i.cp
  %i.hp = getelementptr inbounds [4 x i8], ptr %.0127152.us.us, i64 %i.cp
  %i.hq = getelementptr inbounds [4 x i8], ptr %.0126153.us.us, i64 %i.cp
  %i.hr = add nsw i32 %.0125154.us.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.hr, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader141.us.us, !llvm.loop !364

..preheader_crit_edge.us.us:                      ; preds = %scalar.ph266, %middle.block294
  br i1 %i.cs, label %.lr.ph144.split.us.us.preheader, label %.critedge.us.us

.lr.ph144.split.us.us.preheader:                  ; preds = %..preheader_crit_edge.us.us
  %or.cond297.not = xor i1 %or.cond297, true
  %brmerge304 = select i1 %or.cond297.not, i1 true, i1 %i.fv
  br i1 %brmerge304, label %.lr.ph144.split.us.us.preheader303, label %vector.body

vector.body:                                      ; preds = %.lr.ph144.split.us.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph144.split.us.us.preheader ] ; 3 uses
  %i.hs = getelementptr inbounds [4 x i8], ptr %.0130149.us.us, i64 %index ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %wide.load = load <4 x float>, ptr %i.hs, align 4, !tbaa !47, !alias.scope !378
  %wide.load185 = load <4 x float>, ptr %i.ht, align 4, !tbaa !47, !alias.scope !378
  %i.hu = fsub nsz <4 x float> %wide.load, %broadcast.splat
  %i.hv = fsub nsz <4 x float> %wide.load185, %broadcast.splat
  %i.hw = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hu, <4 x float> %broadcast.splat182, <4 x float> %broadcast.splat184)
  %i.hx = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hv, <4 x float> %broadcast.splat182, <4 x float> %broadcast.splat184)
  %i.hy = getelementptr inbounds [4 x i8], ptr %.0126153.us.us, i64 %index ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  store <4 x float> %i.hw, ptr %i.hy, align 4, !tbaa !47, !alias.scope !379, !noalias !378
  store <4 x float> %i.hx, ptr %i.hz, align 4, !tbaa !47, !alias.scope !379, !noalias !378
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ia = icmp eq i64 %index.next, %n.vec
  br i1 %i.ia, label %middle.block, label %vector.body, !llvm.loop !368

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us.us, label %.lr.ph144.split.us.us.preheader303

.lr.ph144.split.us.us.preheader303:               ; preds = %.lr.ph144.split.us.us.preheader, %middle.block
  %indvars.iv172.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph144.split.us.us.preheader ]
  br label %.lr.ph144.split.us.us

._crit_edge:                                      ; preds = %.critedge.us.us, %.preheader141.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_preserve_slice_32_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 3 uses
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
  %i.u = load i32, ptr %i.t, align 4, !tbaa !36
  %i.v = ashr i32 %i.u, 2                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !35
  %i.y = ashr i32 %i.x, 2                         ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !38
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 9 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %i.al = getelementptr [4 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38 ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !52
  %i.ba = icmp eq i32 %i.az, 32                   ; 2 uses
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
  %i.cf = phi float [ %i.bh, %bb.b ], [ %i.bw, %bb.c ]
  %i.cg = phi float [ %i.bc, %bb.b ], [ %i.bp, %bb.c ]
  %i.ch = phi float [ %i.bf, %bb.b ], [ %i.bt, %bb.c ] ; 2 uses
  %i.ci = phi nsz float [ %i.bm, %bb.b ], [ %i.ce, %bb.c ] ; 2 uses
  %i.cj = phi <2 x float> [ %i.bj, %bb.b ], [ %i.bz, %bb.c ]
  %i.ck = phi <2 x float> [ %i.bk, %bb.b ], [ %i.cb, %bb.c ]
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !47
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !47
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !47 ; 2 uses
  %i.cr = icmp slt i32 %i.n, %i.s
  br i1 %i.cr, label %.preheader169.lr.ph, label %._crit_edge

.preheader169.lr.ph:                              ; preds = %bb.d
  %i.cs = icmp sgt i32 %i.d, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.cu = sext i32 %i.v to i64                    ; 5 uses
  %i.cv = sext i32 %i.y to i64                    ; 5 uses
  br i1 %i.cs, label %.preheader169.lr.ph.split.us, label %._crit_edge

.preheader169.lr.ph.split.us:                     ; preds = %.preheader169.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !50
  %i.cz = sext i32 %i.f to i64                    ; 2 uses
  %i.da = zext nneg i32 %i.d to i64               ; 5 uses
  %i.db = load i32, ptr %i.cw, align 4, !tbaa !41
  %i.dc = icmp eq i32 %i.db, 4
  %i.dd = xor i64 %i.m, -1
  %i.de = add i64 %i.r, %i.dd
  %i.df = and i64 %i.de, 4294967295               ; 2 uses
  %i.dg = mul nsw i64 %i.df, %i.cv
  %i.dh = shl i64 %i.dg, 2
  %i.di = shl nsw i64 %i.ab, 2                    ; 2 uses
  %i.dj = mul nsw i64 %i.df, %i.cu
  %i.dk = shl i64 %i.dj, 2
  %i.dl = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.cm, i64 1
  %i.dm = insertelement <2 x float> poison, float %i.cf, i64 1
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.dn = shl nuw nsw i64 %i.da, 2
  %i.do = add nsw i64 %i.dn, -4                   ; 2 uses
  %i.dp = getelementptr i8, ptr %i.aw, i64 %i.dh
  %i.dq = getelementptr i8, ptr %i.dp, i64 %i.do
  %i.dr = getelementptr i8, ptr %i.dq, i64 %i.di
  %scevgep = getelementptr i8, ptr %i.dr, i64 4
  %i.ds = getelementptr i8, ptr %i.ak, i64 %i.dk
  %i.dt = getelementptr i8, ptr %i.ds, i64 %i.do
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.di
  %scevgep207 = getelementptr i8, ptr %i.du, i64 4
  %bound0 = icmp ult ptr %i.ax, %scevgep207
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dv = or i32 %i.v, %i.y
  %i.dw = icmp slt i32 %i.dv, 0
  %i.dx = or i1 %found.conflict, %i.dw
  %n.vec = and i64 %i.da, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ch, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert209 = insertelement <4 x float> poison, float %i.cq, i64 0
  %broadcast.splat210 = shufflevector <4 x float> %broadcast.splatinsert209, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert211 = insertelement <4 x float> poison, float %i.ci, i64 0
  %broadcast.splat212 = shufflevector <4 x float> %broadcast.splatinsert211, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.da
  br label %.preheader169.us

.preheader169.us:                                 ; preds = %.critedge.us, %.preheader169.lr.ph.split.us
  %.0147182.us = phi i32 [ %i.n, %.preheader169.lr.ph.split.us ], [ %i.if, %.critedge.us ]
  %.0148181.us = phi ptr [ %i.ax, %.preheader169.lr.ph.split.us ], [ %i.ie, %.critedge.us ] ; 3 uses
  %.0149180.us = phi ptr [ %i.au, %.preheader169.lr.ph.split.us ], [ %i.id, %.critedge.us ] ; 2 uses
  %.0150179.us = phi ptr [ %i.ar, %.preheader169.lr.ph.split.us ], [ %i.ic, %.critedge.us ] ; 2 uses
  %.0151178.us = phi ptr [ %i.ao, %.preheader169.lr.ph.split.us ], [ %i.ib, %.critedge.us ] ; 2 uses
  %.0152177.us = phi ptr [ %i.al, %.preheader169.lr.ph.split.us ], [ %i.ia, %.critedge.us ] ; 3 uses
  %.0153176.us = phi ptr [ %i.ai, %.preheader169.lr.ph.split.us ], [ %i.hz, %.critedge.us ] ; 2 uses
  %.0154175.us = phi ptr [ %i.af, %.preheader169.lr.ph.split.us ], [ %i.hy, %.critedge.us ] ; 2 uses
  %.0155174.us = phi ptr [ %i.ac, %.preheader169.lr.ph.split.us ], [ %i.hx, %.critedge.us ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader169.us, %preserve_color.exit.thread.us
  %indvars.iv = phi i64 [ 0, %.preheader169.us ], [ %indvars.iv.next, %preserve_color.exit.thread.us ] ; 7 uses
  %i.dy = getelementptr inbounds [4 x i8], ptr %.0155174.us, i64 %indvars.iv
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !47 ; 3 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %.0154175.us, i64 %indvars.iv
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !47 ; 7 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %.0153176.us, i64 %indvars.iv
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !47 ; 7 uses
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ee = load i32, ptr %i.ct, align 4, !tbaa !53
  %i.ef = sitofp nsz i32 %i.ee to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.eg = phi nsz float [ %i.ef, %bb.f ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.eh = fsub nsz float %i.dz, %i.cg
  %i.ei = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.eh, i64 1
  %i.ej = insertelement <2 x float> %i.dm, float %i.dz, i64 0
  %i.ek = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.dl, <2 x float> %i.ej) ; 10 uses
  %i.el = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.em = insertelement <2 x float> %i.el, float %i.ed, i64 1
  %i.en = fsub nsz <2 x float> %i.em, %i.cj
  %i.eo = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.co, <2 x float> %i.ck) ; 15 uses
  %i.ep = extractelement <2 x float> %i.ek, i64 1 ; 3 uses
  switch i32 %i.cy, label %preserve_color.exit.thread.us [
    i32 1, label %bb.m
    i32 2, label %bb.l
    i32 3, label %bb.k
    i32 4, label %bb.j
    i32 5, label %bb.i
    i32 6, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.eq = insertelement <2 x float> %i.ek, float %i.dz, i64 0
  %i.er = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.et = fdiv nsz <2 x float> %i.eq, %i.es       ; 3 uses
  %i.eu = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ev = insertelement <2 x float> %i.eu, float %i.eb, i64 0
  %i.ew = fdiv nsz <2 x float> %i.ev, %i.es       ; 3 uses
  %i.ex = insertelement <2 x float> %i.eo, float %i.ed, i64 0
  %i.ey = fdiv nsz <2 x float> %i.ex, %i.es       ; 3 uses
  %i.ez = fmul nsz <2 x float> %i.et, %i.et
  %i.fa = fmul nsz <2 x float> %i.ew, %i.ew
  %i.fb = fmul nsz <2 x float> %i.ew, %i.fa
  %i.fc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.et, <2 x float> %i.fb)
  %i.fd = fmul nsz <2 x float> %i.ey, %i.ey
  %i.fe = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.ey, <2 x float> %i.fc) ; 2 uses
  %i.ff = extractelement <2 x float> %i.fe, i64 0
  %i.fg = tail call nsz float @cbrtf(float noundef %i.ff) #9
  %i.fh = extractelement <2 x float> %i.fe, i64 1
  %i.fi = tail call nsz float @cbrtf(float noundef %i.fh) #9
  %i.fj = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fk = insertelement <2 x float> %i.fj, float %i.fi, i64 1
  br label %preserve_color.exit.us

bb.i:                                             ; preds = %bb.g
  %i.fl = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.fm = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fn = fdiv nsz <2 x float> %i.ek, %i.fm       ; 2 uses
  %i.fo = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fp = insertelement <2 x float> %i.fo, float %i.eb, i64 0
  %i.fq = fdiv nsz <2 x float> %i.fp, %i.fm       ; 2 uses
  %i.fr = insertelement <2 x float> %i.eo, float %i.ed, i64 0
  %i.fs = fdiv nsz <2 x float> %i.fr, %i.fm       ; 2 uses
  %i.ft = fmul nsz <2 x float> %i.fq, %i.fq
  %i.fu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.fn, <2 x float> %i.ft)
  %i.fv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fs, <2 x float> %i.fs, <2 x float> %i.fu)
  %i.fw = tail call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.fv)
  br label %preserve_color.exit.us

bb.j:                                             ; preds = %bb.g
  %i.fx = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fy = insertelement <2 x float> %i.fx, float %i.eb, i64 0
  %i.fz = fadd nsz <2 x float> %i.ek, %i.fy
  %i.ga = insertelement <2 x float> %i.eo, float %i.ed, i64 0
  %i.gb = fadd nsz <2 x float> %i.fz, %i.ga
  br label %preserve_color.exit.us

bb.k:                                             ; preds = %bb.g
  %i.gc = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gd = insertelement <2 x float> %i.gc, float %i.eb, i64 0
  %i.ge = fadd nsz <2 x float> %i.ek, %i.gd
  %i.gf = insertelement <2 x float> %i.eo, float %i.ed, i64 0
  %i.gg = fadd nsz <2 x float> %i.ge, %i.gf
  %i.gh = fadd nsz <2 x float> %i.gg, splat (float 1.000000e+00)
  %i.gi = fdiv nsz <2 x float> %i.gh, splat (float 3.000000e+00)
  br label %preserve_color.exit.us

bb.l:                                             ; preds = %bb.g
  %i.gj = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gk = insertelement <2 x float> %i.gj, float %i.eb, i64 0 ; 2 uses
  %i.gl = fcmp nsz ogt <2 x float> %i.ek, %i.gk
  %i.gm = select <2 x i1> %i.gl, <2 x float> %i.ek, <2 x float> %i.gk ; 2 uses
  %i.gn = insertelement <2 x float> %i.eo, float %i.ed, i64 0 ; 2 uses
  %i.go = fcmp nsz ogt <2 x float> %i.gm, %i.gn
  %i.gp = select <2 x i1> %i.go, <2 x float> %i.gm, <2 x float> %i.gn
  br label %preserve_color.exit.us

bb.m:                                             ; preds = %bb.g
  %i.gq = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gr = insertelement <2 x float> %i.gq, float %i.eb, i64 0 ; 3 uses
  %i.gs = fcmp nsz ogt <2 x float> %i.ek, %i.gr   ; 2 uses
  %i.gt = select <2 x i1> %i.gs, <2 x float> %i.ek, <2 x float> %i.gr ; 2 uses
  %i.gu = insertelement <2 x float> %i.eo, float %i.ed, i64 0 ; 4 uses
  %i.gv = fcmp nsz ogt <2 x float> %i.gt, %i.gu
  %i.gw = select <2 x i1> %i.gv, <2 x float> %i.gt, <2 x float> %i.gu
  %i.gx = select <2 x i1> %i.gs, <2 x float> %i.gr, <2 x float> %i.ek ; 2 uses
  %i.gy = fcmp nsz ogt <2 x float> %i.gx, %i.gu
  %i.gz = select <2 x i1> %i.gy, <2 x float> %i.gu, <2 x float> %i.gx
  %i.ha = fadd nsz <2 x float> %i.gw, %i.gz
  br label %preserve_color.exit.us

preserve_color.exit.us:                           ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.hb = phi <2 x float> [ %i.fk, %bb.h ], [ %i.ha, %bb.m ], [ %i.gp, %bb.l ], [ %i.gi, %bb.k ], [ %i.gb, %bb.j ], [ %i.fw, %bb.i ] ; 2 uses
  %i.hc = extractelement <2 x float> %i.hb, i64 1 ; 2 uses
  %i.hd = fcmp nsz ogt float %i.hc, 0.000000e+00
  br i1 %i.hd, label %bb.n, label %preserve_color.exit.thread.us

bb.n:                                             ; preds = %preserve_color.exit.us
  %i.he = extractelement <2 x float> %i.hb, i64 0
  %i.hf = fdiv nsz float %i.he, %i.hc             ; 2 uses
  %i.hg = fmul nsz float %i.ep, %i.hf
  %i.hh = insertelement <2 x float> poison, float %i.hf, i64 0
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = fmul nsz <2 x float> %i.eo, %i.hi
  br label %preserve_color.exit.thread.us

preserve_color.exit.thread.us:                    ; preds = %bb.n, %preserve_color.exit.us, %bb.g
  %.0145.us = phi nsz float [ %i.hg, %bb.n ], [ %i.ep, %preserve_color.exit.us ], [ %i.ep, %bb.g ]
  %i.hk = phi <2 x float> [ %i.hj, %bb.n ], [ %i.eo, %preserve_color.exit.us ], [ %i.eo, %bb.g ] ; 2 uses
  %i.hl = getelementptr inbounds [4 x i8], ptr %.0151178.us, i64 %indvars.iv
  store float %.0145.us, ptr %i.hl, align 4, !tbaa !47
  %i.hm = getelementptr inbounds [4 x i8], ptr %.0150179.us, i64 %indvars.iv
  %i.hn = extractelement <2 x float> %i.hk, i64 0
  store float %i.hn, ptr %i.hm, align 4, !tbaa !47
  %i.ho = getelementptr inbounds [4 x i8], ptr %.0149180.us, i64 %indvars.iv
  %i.hp = extractelement <2 x float> %i.hk, i64 1
  store float %i.hp, ptr %i.ho, align 4, !tbaa !47
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.cz ; 2 uses
  %i.hq = icmp slt i64 %indvars.iv.next, %i.da
  br i1 %i.hq, label %bb.e, label %.lr.ph172.us, !llvm.loop !380

.lr.ph172.split.us:                               ; preds = %.lr.ph172.split.us.preheader214, %.lr.ph172.split.us
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %.lr.ph172.split.us ], [ %indvars.iv200.ph, %.lr.ph172.split.us.preheader214 ] ; 3 uses
  %i.hr = getelementptr inbounds [4 x i8], ptr %.0152177.us, i64 %indvars.iv200
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !47
  %i.ht = fsub nsz float %i.hs, %i.ch
  %i.hu = tail call nsz float @llvm.fmuladd.f32(float %i.ht, float %i.cq, float %i.ci)
  %i.hv = getelementptr inbounds [4 x i8], ptr %.0148181.us, i64 %indvars.iv200
  store float %i.hu, ptr %i.hv, align 4, !tbaa !47
  %indvars.iv.next201 = add nsw i64 %indvars.iv200, %i.cz ; 2 uses
  %i.hw = icmp slt i64 %indvars.iv.next201, %i.da
  br i1 %i.hw, label %.lr.ph172.split.us, label %.critedge.us, !llvm.loop !381

.critedge.us:                                     ; preds = %.lr.ph172.split.us, %middle.block, %.lr.ph172.us
  %i.hx = getelementptr inbounds [4 x i8], ptr %.0155174.us, i64 %i.cu
  %i.hy = getelementptr inbounds [4 x i8], ptr %.0154175.us, i64 %i.cu
  %i.hz = getelementptr inbounds [4 x i8], ptr %.0153176.us, i64 %i.cu
  %i.ia = getelementptr inbounds [4 x i8], ptr %.0152177.us, i64 %i.cu
  %i.ib = getelementptr inbounds [4 x i8], ptr %.0151178.us, i64 %i.cv
  %i.ic = getelementptr inbounds [4 x i8], ptr %.0150179.us, i64 %i.cv
  %i.id = getelementptr inbounds [4 x i8], ptr %.0149180.us, i64 %i.cv
  %i.ie = getelementptr inbounds [4 x i8], ptr %.0148181.us, i64 %i.cv
  %i.if = add nsw i32 %.0147182.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.if, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader169.us, !llvm.loop !382

.lr.ph172.us:                                     ; preds = %preserve_color.exit.thread.us
  br i1 %i.dc, label %.lr.ph172.split.us.preheader, label %.critedge.us

.lr.ph172.split.us.preheader:                     ; preds = %.lr.ph172.us
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.dx
  br i1 %brmerge, label %.lr.ph172.split.us.preheader214, label %vector.body

vector.body:                                      ; preds = %.lr.ph172.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph172.split.us.preheader ] ; 3 uses
  %i.ig = getelementptr inbounds [4 x i8], ptr %.0152177.us, i64 %index ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %wide.load = load <4 x float>, ptr %i.ig, align 4, !tbaa !47, !alias.scope !387
  %wide.load213 = load <4 x float>, ptr %i.ih, align 4, !tbaa !47, !alias.scope !387
  %i.ii = fsub nsz <4 x float> %wide.load, %broadcast.splat
  %i.ij = fsub nsz <4 x float> %wide.load213, %broadcast.splat
  %i.ik = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ii, <4 x float> %broadcast.splat210, <4 x float> %broadcast.splat212)
  %i.il = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ij, <4 x float> %broadcast.splat210, <4 x float> %broadcast.splat212)
  %i.im = getelementptr inbounds [4 x i8], ptr %.0148181.us, i64 %index ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store <4 x float> %i.ik, ptr %i.im, align 4, !tbaa !47, !alias.scope !388, !noalias !387
  store <4 x float> %i.il, ptr %i.in, align 4, !tbaa !47, !alias.scope !388, !noalias !387
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.io = icmp eq i64 %index.next, %n.vec
  br i1 %i.io, label %middle.block, label %vector.body, !llvm.loop !386

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us, label %.lr.ph172.split.us.preheader214

.lr.ph172.split.us.preheader214:                  ; preds = %.lr.ph172.split.us.preheader, %middle.block
  %indvars.iv200.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph172.split.us.preheader ]
  br label %.lr.ph172.split.us

._crit_edge:                                      ; preds = %.critedge.us, %.preheader169.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @cbrtf(float noundef) local_unnamed_addr #6

declare ptr @av_default_item_name(ptr noundef) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmin.v4f32(<4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umin.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fmuladd.v16f32(<16 x float>, <16 x float>, <16 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #3

attributes #0 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!11 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!12 = !{!"AVRational", !6, i64 0, !6, i64 4}
!13 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!16 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!17 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!18 = !{!"AVFilterFormatsConfig", !16, i64 0, !16, i64 8, !17, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!19 = !{!"AVFilterLink", !10, i64 0, !11, i64 8, !10, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !12, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !13, i64 72, !12, i64 96, !15, i64 104, !6, i64 112, !6, i64 116, !18, i64 120, !18, i64 168}
!20 = !{!19, !10, i64 16}
!21 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!22 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!23 = !{!"p1 omnipotent char", !9, i64 0}
!24 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!25 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!26 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!27 = !{!"AVFilterContext", !21, i64 0, !22, i64 8, !23, i64 16, !11, i64 24, !24, i64 32, !6, i64 40, !11, i64 48, !24, i64 56, !6, i64 64, !9, i64 72, !25, i64 80, !6, i64 88, !6, i64 92, !23, i64 96, !6, i64 104, !26, i64 112, !6, i64 120}
!28 = !{!27, !9, i64 72}
!29 = !{!"ColorLevelsContext", !21, i64 0, !5, i64 8, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !5, i64 164, !6, i64 168, !5, i64 176}
!30 = !{!29, !6, i64 160}
!31 = !{!19, !6, i64 40}
!32 = !{!"ThreadData", !5, i64 0, !5, i64 32, !6, i64 64, !6, i64 68, !5, i64 72, !6, i64 88, !5, i64 92, !5, i64 108, !5, i64 124, !5, i64 140}
!33 = !{!32, !6, i64 88}
!34 = !{!6, !6, i64 0}
!35 = !{!32, !6, i64 64}
!36 = !{!32, !6, i64 68}
!37 = !{!29, !6, i64 152}
!38 = !{!23, !23, i64 0}
!39 = !{!29, !6, i64 156}
!40 = !{!5, !5, i64 0}
!41 = !{!29, !6, i64 140}
!42 = !{!29, !6, i64 168}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!"float", !5, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"short", !5, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!29, !6, i64 136}
!51 = !{!9, !9, i64 0}
!52 = !{!29, !6, i64 144}
!53 = !{!29, !6, i64 148}
!54 = !{!"branch_weights", i32 4, i32 12}
!55 = distinct !{!55, !43, !44, !45}
!56 = distinct !{!56, !43, !44}
!57 = distinct !{!57, !43}
!58 = distinct !{!58, !43, !44, !45}
!59 = distinct !{!59, !43, !44}
!60 = distinct !{!60, !43}
!61 = distinct !{!61, !43}
!62 = distinct !{!62, !43, !44, !45}
!63 = distinct !{!63, !43, !44}
!64 = distinct !{!64, !43}
!65 = distinct !{!65, !43, !44, !45}
!66 = distinct !{!66, !43, !44}
!67 = distinct !{!67, !43}
!68 = distinct !{!68, !43}
!69 = distinct !{!69, !43, !44, !45}
!70 = distinct !{!70, !43, !44}
!71 = distinct !{!71, !43}
!72 = distinct !{!72, !43, !44, !45}
!73 = distinct !{!73, !43, !44}
!74 = distinct !{!74, !43}
!75 = distinct !{!75, !43}
!76 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!77 = !{!76, !76, i64 0}
!78 = !{!27, !24, i64 56}
!79 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!19, !6, i64 44}
!82 = !{!"double", !5, i64 0}
!83 = !{!82, !82, i64 0}
!84 = !{!"Range", !82, i64 0, !82, i64 8, !82, i64 16, !82, i64 24}
!85 = !{!84, !82, i64 0}
!86 = !{!84, !82, i64 8}
!87 = !{!84, !82, i64 16}
!88 = !{!84, !82, i64 24}
!89 = !{!19, !6, i64 36}
!90 = !{!"long", !5, i64 0}
!91 = !{!"AVPixFmtDescriptor", !23, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !90, i64 16, !5, i64 24, !23, i64 104}
!92 = !{!91, !5, i64 8}
!93 = !{!91, !90, i64 16}
!94 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!95 = !{!94, !6, i64 16}
!96 = distinct !{!96, !"LVerDomain"}
!97 = distinct !{!97, !96}
!98 = distinct !{!98, !96}
!99 = distinct !{!99, !96}
!100 = distinct !{!100, !96}
!101 = distinct !{!101, !96}
!102 = distinct !{!102, !96}
!103 = distinct !{!103, !43, !44, !45}
!104 = distinct !{!104, !43, !44, !45}
!105 = distinct !{!105, !43, !44}
!106 = distinct !{!106, !43}
!107 = distinct !{!107, !43}
!108 = !{!97}
!109 = !{!98}
!110 = !{!99}
!111 = !{!100}
!112 = !{!102, !101, !97, !98, !99}
!113 = !{!102}
!114 = !{!101, !97, !98, !99}
!115 = !{!101}
!116 = !{!97, !98, !99}
!117 = distinct !{!117, !43}
!118 = distinct !{!118, !43}
!119 = distinct !{!119, !43}
!120 = distinct !{!120, !"LVerDomain"}
!121 = distinct !{!121, !120}
!122 = distinct !{!122, !120}
!123 = distinct !{!123, !120}
!124 = distinct !{!124, !120}
!125 = distinct !{!125, !120}
!126 = distinct !{!126, !120}
!127 = distinct !{!127, !43, !44, !45}
!128 = distinct !{!128, !43, !44}
!129 = distinct !{!129, !43, !44}
!130 = distinct !{!130, !43}
!131 = distinct !{!131, !"LVerDomain"}
!132 = distinct !{!132, !131}
!133 = distinct !{!133, !131}
!134 = distinct !{!134, !43, !44, !45}
end_hunk_8
